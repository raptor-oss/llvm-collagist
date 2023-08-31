<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
  <meta name="viewport" content="width=device-width,initial-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>boost/algorithm/string/trim.hpp - 1.83.0</title>  <link rel="icon" href="/favicon.ico" type="image/ico" />
  <link rel="stylesheet" type="text/css" href="/style-v2/section-doc.css" />
  <!--[if IE 7]> <style type="text/css"> body { behavior: url(/style-v2/csshover3.htc); } </style> <![endif]-->

</head>

<body>
  <div id="heading">
    <div class="heading-inner">
  <div class="heading-placard"></div>

  <h1 class="heading-title">
  <a href="/">
  <img src="/gfx/space.png" alt= "Boost C++ Libraries" class="heading-logo" />
  <span class="heading-boost">Boost</span>
  <span class="heading-cpplibraries">C++ Libraries</span>
  </a></h1>

  <p class="heading-quote">
  <q>...one of the most highly
  regarded and expertly designed C++ library projects in the
  world.</q> <span class="heading-attribution">&mdash; <a href=
  "https://herbsutter.com" class="external">Herb Sutter</a> and <a href=
  "http://en.wikipedia.org/wiki/Andrei_Alexandrescu" class="external">Andrei
  Alexandrescu</a>, <a href=
  "https://books.google.com/books/about/C++_Coding_Standards.html?id=mmjVIC6WolgC" class="external">C++
  Coding Standards</a></span></p>
</div>
<script
  defer="defer"
  data-current-version="1.83.0"
  src="/common/boost-gecko/main.f43e3be2.js"
></script>
  </div>
  
  <div id="body">
    <div id="body-inner">
      <div id="content">
        <div class="section" id="docs">
          <div class="section-0">
            <div class="section-body">
              <h3>boost/algorithm/string/trim.hpp</h3>
<pre>
//  Boost string_algo library trim.hpp header file  ---------------------------//

//  Copyright Pavol Droba 2002-2003.
//
// Distributed under the Boost Software License, Version 1.0.
//    (See accompanying file LICENSE_1_0.txt or copy at
//          <a href="http://www.boost.org/LICENSE_1_0.txt">http://www.boost.org/LICENSE_1_0.txt</a>)

//  See <a href="http://www.boost.org/">http://www.boost.org/</a> for updates, documentation, and revision history.

#ifndef BOOST_STRING_TRIM_HPP
#define BOOST_STRING_TRIM_HPP

#include &lt;<a href="../../../boost/algorithm/string/config.hpp">boost/algorithm/string/config.hpp</a>&gt;

#include &lt;<a href="../../../boost/range/begin.hpp">boost/range/begin.hpp</a>&gt;
#include &lt;<a href="../../../boost/range/end.hpp">boost/range/end.hpp</a>&gt;
#include &lt;<a href="../../../boost/range/const_iterator.hpp">boost/range/const_iterator.hpp</a>&gt;
#include &lt;<a href="../../../boost/range/as_literal.hpp">boost/range/as_literal.hpp</a>&gt;
#include &lt;<a href="../../../boost/range/iterator_range_core.hpp">boost/range/iterator_range_core.hpp</a>&gt;

#include &lt;<a href="../../../boost/algorithm/string/detail/trim.hpp">boost/algorithm/string/detail/trim.hpp</a>&gt;
#include &lt;<a href="../../../boost/algorithm/string/classification.hpp">boost/algorithm/string/classification.hpp</a>&gt;
#include &lt;locale&gt;

/*! \file
    Defines trim algorithms.
    Trim algorithms are used to remove trailing and leading spaces from a 
    sequence (string). Space is recognized using given locales.

    Parametric (\c _if) variants use a predicate (functor) to select which characters
    are to be trimmed.. 
    Functions take a selection predicate as a parameter, which is used to determine 
    whether a character is a space. Common predicates are provided in classification.hpp header.

*/

namespace boost {
    namespace algorithm {

    //  left trim  -----------------------------------------------//


        //! Left trim - parametric
        /*!
            Remove all leading spaces from the input. 
            The supplied predicate is used to determine which characters are considered spaces.
            The result is a trimmed copy of the input. It is returned as a sequence 
            or copied to the output iterator

            \param Output An output iterator to which the result will be copied
            \param Input An input range
            \param IsSpace A unary predicate identifying spaces
            \return 
                An output iterator pointing just after the last inserted character or
                a copy of the input

               \note The second variant of this function provides the strong exception-safety guarantee
        */
        template&lt;typename OutputIteratorT, typename RangeT, typename PredicateT&gt;
        inline OutputIteratorT trim_left_copy_if( 
            OutputIteratorT Output,
            const RangeT&amp; Input,
            PredicateT IsSpace)
        {
            iterator_range&lt;BOOST_STRING_TYPENAME range_const_iterator&lt;RangeT&gt;::type&gt; lit_range(::boost::as_literal(Input));

            std::copy( 
                ::boost::algorithm::detail::trim_begin( 
                    ::boost::begin(lit_range), 
                    ::boost::end(lit_range), 
                    IsSpace ),
                ::boost::end(lit_range),
                Output);

            return Output;
        }

        //! Left trim - parametric
        /*!
            \overload
        */
        template&lt;typename SequenceT, typename PredicateT&gt;
        inline SequenceT trim_left_copy_if(const SequenceT&amp; Input, PredicateT IsSpace)
        {
            return SequenceT( 
                ::boost::algorithm::detail::trim_begin( 
                    ::boost::begin(Input), 
                    ::boost::end(Input), 
                    IsSpace ),
                ::boost::end(Input));
        }

        //! Left trim - parametric
        /*!
            Remove all leading spaces from the input. 
            The result is a trimmed copy of the input.

            \param Input An input sequence
            \param Loc a locale used for 'space' classification
            \return A trimmed copy of the input

            \note This function provides the strong exception-safety guarantee
        */
        template&lt;typename SequenceT&gt;
        inline SequenceT trim_left_copy(const SequenceT&amp; Input, const std::locale&amp; Loc=std::locale())
        {
            return            
                ::boost::algorithm::trim_left_copy_if(
                    Input, 
                    is_space(Loc));
        }

        //! Left trim
        /*!
            Remove all leading spaces from the input. The supplied predicate is 
            used to determine which characters are considered spaces.
            The input sequence is modified in-place.

            \param Input An input sequence
            \param IsSpace A unary predicate identifying spaces
        */
        template&lt;typename SequenceT, typename PredicateT&gt;
        inline void trim_left_if(SequenceT&amp; Input, PredicateT IsSpace)
        {
            Input.erase( 
                ::boost::begin(Input),
                ::boost::algorithm::detail::trim_begin( 
                    ::boost::begin(Input), 
                    ::boost::end(Input), 
                    IsSpace));
        }

        //! Left trim
        /*!
            Remove all leading spaces from the input.
            The Input sequence is modified in-place.

            \param Input An input sequence
            \param Loc A locale used for 'space' classification
        */
        template&lt;typename SequenceT&gt;
        inline void trim_left(SequenceT&amp; Input, const std::locale&amp; Loc=std::locale())
        {
            ::boost::algorithm::trim_left_if( 
                Input, 
                is_space(Loc));
        }

    //  right trim  -----------------------------------------------//

        //! Right trim - parametric
        /*!
            Remove all trailing spaces from the input.             
            The supplied predicate is used to determine which characters are considered spaces.
            The result is a trimmed copy of the input. It is returned as a sequence 
            or copied to the output iterator

            \param Output An output iterator to which the result will be copied
            \param Input An input range
            \param IsSpace A unary predicate identifying spaces
            \return 
                An output iterator pointing just after the last inserted character or
                a copy of the input

             \note The second variant of this function provides the strong exception-safety guarantee
        */
        template&lt;typename OutputIteratorT, typename RangeT, typename PredicateT&gt;
        inline OutputIteratorT trim_right_copy_if( 
            OutputIteratorT Output,
            const RangeT&amp; Input,
            PredicateT IsSpace )
        {
            iterator_range&lt;BOOST_STRING_TYPENAME range_const_iterator&lt;RangeT&gt;::type&gt; lit_range(::boost::as_literal(Input));
         
            std::copy( 
                ::boost::begin(lit_range),
                ::boost::algorithm::detail::trim_end( 
                    ::boost::begin(lit_range), 
                    ::boost::end(lit_range), 
                    IsSpace ),
                Output );

            return Output;
        }

        //! Right trim - parametric
        /*!
            \overload
         */
        template&lt;typename SequenceT, typename PredicateT&gt;
        inline SequenceT trim_right_copy_if(const SequenceT&amp; Input, PredicateT IsSpace)
        {
            return SequenceT( 
                ::boost::begin(Input),
                ::boost::algorithm::detail::trim_end( 
                    ::boost::begin(Input), 
                    ::boost::end(Input), 
                    IsSpace)
                );
        }

        //! Right trim
        /*!
            Remove all trailing spaces from the input. 
            The result is a trimmed copy of the input

            \param Input An input sequence
            \param Loc A locale used for 'space' classification
            \return A trimmed copy of the input

            \note This function provides the strong exception-safety guarantee
        */
        template&lt;typename SequenceT&gt;
        inline SequenceT trim_right_copy(const SequenceT&amp; Input, const std::locale&amp; Loc=std::locale())
        {
            return 
                ::boost::algorithm::trim_right_copy_if( 
                    Input, 
                    is_space(Loc));
        }

            
        //! Right trim - parametric
        /*!
            Remove all trailing spaces from the input.
            The supplied predicate is used to determine which characters are considered spaces.
            The input sequence is modified in-place.

            \param Input An input sequence
            \param IsSpace A unary predicate identifying spaces
        */
        template&lt;typename SequenceT, typename PredicateT&gt;
        inline void trim_right_if(SequenceT&amp; Input, PredicateT IsSpace)
        {
            Input.erase(
                ::boost::algorithm::detail::trim_end( 
                    ::boost::begin(Input), 
                    ::boost::end(Input), 
                    IsSpace ),
                ::boost::end(Input)
                );
        }


        //! Right trim
        /*!
            Remove all trailing spaces from the input. 
            The input sequence is modified in-place.

            \param Input An input sequence
            \param Loc A locale used for 'space' classification
        */
        template&lt;typename SequenceT&gt;
        inline void trim_right(SequenceT&amp; Input, const std::locale&amp; Loc=std::locale())
        {
            ::boost::algorithm::trim_right_if(
                Input, 
                is_space(Loc) );
        }

    //  both side trim  -----------------------------------------------//

        //! Trim - parametric
        /*!
            Remove all trailing and leading spaces from the input. 
            The supplied predicate is used to determine which characters are considered spaces.
            The result is a trimmed copy of the input. It is returned as a sequence 
            or copied to the output iterator

            \param Output An output iterator to which the result will be copied
            \param Input An input range
            \param IsSpace A unary predicate identifying spaces
            \return 
                An output iterator pointing just after the last inserted character or
                a copy of the input

             \note The second variant of this function provides the strong exception-safety guarantee
        */
        template&lt;typename OutputIteratorT, typename RangeT, typename PredicateT&gt;
        inline OutputIteratorT trim_copy_if( 
            OutputIteratorT Output,
            const RangeT&amp; Input,
            PredicateT IsSpace)
        {
            iterator_range&lt;BOOST_STRING_TYPENAME range_const_iterator&lt;RangeT&gt;::type&gt; lit_range(::boost::as_literal(Input));

            BOOST_STRING_TYPENAME 
                range_const_iterator&lt;RangeT&gt;::type TrimEnd=
                ::boost::algorithm::detail::trim_end( 
                    ::boost::begin(lit_range), 
                    ::boost::end(lit_range), 
                    IsSpace);

            std::copy( 
                detail::trim_begin( 
                    ::boost::begin(lit_range), TrimEnd, IsSpace),
                TrimEnd,
                Output
                );

            return Output;
        }

        //! Trim - parametric
        /*!
            \overload
         */
        template&lt;typename SequenceT, typename PredicateT&gt;
        inline SequenceT trim_copy_if(const SequenceT&amp; Input, PredicateT IsSpace)
        {
            BOOST_STRING_TYPENAME 
                range_const_iterator&lt;SequenceT&gt;::type TrimEnd=
                    ::boost::algorithm::detail::trim_end( 
                        ::boost::begin(Input), 
                        ::boost::end(Input), 
                        IsSpace);

            return SequenceT( 
                detail::trim_begin( 
                    ::boost::begin(Input), 
                    TrimEnd, 
                    IsSpace),
                TrimEnd
                );
        }

        //! Trim
        /*!
            Remove all leading and trailing spaces from the input. 
            The result is a trimmed copy of the input

            \param Input An input sequence
            \param Loc A locale used for 'space' classification
            \return A trimmed copy of the input

            \note This function provides the strong exception-safety guarantee
        */
        template&lt;typename SequenceT&gt;
        inline SequenceT trim_copy( const SequenceT&amp; Input, const std::locale&amp; Loc=std::locale() )
        {
            return
                ::boost::algorithm::trim_copy_if(
                    Input, 
                    is_space(Loc) );
        }
     
        //! Trim
        /*!
            Remove all leading and trailing spaces from the input. 
            The supplied predicate is used to determine which characters are considered spaces.
            The input sequence is modified in-place.

            \param Input An input sequence
            \param IsSpace A unary predicate identifying spaces
        */
        template&lt;typename SequenceT, typename PredicateT&gt;
        inline void trim_if(SequenceT&amp; Input, PredicateT IsSpace)
        {
            ::boost::algorithm::trim_right_if( Input, IsSpace );
            ::boost::algorithm::trim_left_if( Input, IsSpace );
        }

        //! Trim
        /*!
            Remove all leading and trailing spaces from the input. 
            The input sequence is modified in-place.

            \param Input An input sequence
            \param Loc A locale used for 'space' classification
        */
        template&lt;typename SequenceT&gt;
        inline void trim(SequenceT&amp; Input, const std::locale&amp; Loc=std::locale())
        {
            ::boost::algorithm::trim_if(
                Input, 
                is_space( Loc ) );
        }

    } // namespace algorithm 

    // pull names to the boost namespace
    using algorithm::trim_left;
    using algorithm::trim_left_if;
    using algorithm::trim_left_copy;
    using algorithm::trim_left_copy_if;
    using algorithm::trim_right;
    using algorithm::trim_right_if;
    using algorithm::trim_right_copy;
    using algorithm::trim_right_copy_if;
    using algorithm::trim;
    using algorithm::trim_if;
    using algorithm::trim_copy;
    using algorithm::trim_copy_if;

} // namespace boost

#endif  // BOOST_STRING_TRIM_HPP
</pre>
            </div>
          </div>
        </div>
      </div>

      <div class="clear"></div>
    </div>
  </div>

  <div id="footer">
    <div id="footer-left">
      <div id="revised">
        <p>Revised $Date$</p>
      </div>

      <div id="copyright">
        <p>Copyright Beman Dawes, David Abrahams, 1998-2005.</p>

        <p>Copyright Rene Rivera 2004-2008.</p>
      </div>  <div id="license">
    <p>Distributed under the <a href="/LICENSE_1_0.txt" class=
    "internal">Boost Software License, Version 1.0</a>.</p>
  </div>
    </div>

    <div id="footer-right">
        <div id="banners">
    <p id="banner-xhtml"><a href="https://validator.w3.org/check?uri=referer"
    class="external">XHTML 1.0</a></p>

    <p id="banner-css"><a href=
    "https://jigsaw.w3.org/css-validator/check/referer" class=
    "external">CSS</a></p>

    <p id="banner-osi"><a href=
    "https://opensource.org/docs/definition.php" class="external">OSI
    Certified</a></p>
  </div>
    </div>

    <div class="clear"></div>
  </div>
</body>
</html>
