/* Copyright (c) 2016 PaddlePaddle Authors. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License. */

#include "paddle/fluid/operators/cast_op.h"
#include "paddle/fluid/platform/float16.h"

namespace ops = paddle::operators;

REGISTER_OP_CUDA_KERNEL(
    cast, ops::CastOpKernel<paddle::platform::CUDADeviceContext, float>,
    ops::CastOpKernel<paddle::platform::CUDADeviceContext, double>,
    ops::CastOpKernel<paddle::platform::CUDADeviceContext, int>,
    ops::CastOpKernel<paddle::platform::CUDADeviceContext, int64_t>,
    ops::CastOpKernel<paddle::platform::CUDADeviceContext, bool>,
    ops::CastOpKernel<paddle::platform::CUDADeviceContext, uint8_t>,
    ops::CastOpKernel<paddle::platform::CUDADeviceContext,
                      paddle::platform::float16>,
    ops::CastOpKernel<paddle::platform::CUDADeviceContext,
                      paddle::platform::complex64>,
    ops::CastOpKernel<paddle::platform::CUDADeviceContext,
                      paddle::platform::complex128>);
