/*
 * The MIT License (MIT)
 *
 * Copyright (c) 2016 CNES
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */
#ifndef __COM_INSTANCEBOOLEANPAIR_H_INCLUDED__
#define __COM_INSTANCEBOOLEANPAIR_H_INCLUDED__

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus


// fields accessors for composite com_instancebooleanpair
mal_long_t com_instancebooleanpair_get_id(com_instancebooleanpair_t * self);
void com_instancebooleanpair_set_id(com_instancebooleanpair_t * self, mal_long_t f_id);
mal_boolean_t com_instancebooleanpair_get_value(com_instancebooleanpair_t * self);
void com_instancebooleanpair_set_value(com_instancebooleanpair_t * self, mal_boolean_t f_value);

// default constructor
com_instancebooleanpair_t * com_instancebooleanpair_new(void);

// encoding functions related to transport malbinary
int com_instancebooleanpair_add_encoding_length_malbinary(com_instancebooleanpair_t * self, mal_encoder_t * encoder, void * cursor);
int com_instancebooleanpair_encode_malbinary(com_instancebooleanpair_t * self, mal_encoder_t * encoder, void * cursor);
int com_instancebooleanpair_decode_malbinary(com_instancebooleanpair_t * self, mal_decoder_t * decoder, void * cursor);

// destructor
void com_instancebooleanpair_destroy(com_instancebooleanpair_t ** self_p);

// test function
void com_instancebooleanpair_test(bool verbose);

#ifdef __cplusplus
}
#endif // __cplusplus

#endif // __COM_INSTANCEBOOLEANPAIR_H_INCLUDED__
