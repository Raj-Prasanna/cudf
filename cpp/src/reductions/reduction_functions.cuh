/*
 * Copyright (c) 2019, NVIDIA CORPORATION.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#ifndef CUDF_REDUCTION_FUNCTIONS_CUH
#define CUDF_REDUCTION_FUNCTIONS_CUH

#include "reduction.cuh"

namespace cudf {
namespace reductions {

void sum(gdf_column const& col, gdf_scalar& scalar, cudaStream_t stream=0);
void min(gdf_column const& col, gdf_scalar& scalar, cudaStream_t stream=0);
void max(gdf_column const& col, gdf_scalar& scalar, cudaStream_t stream=0);
void product(gdf_column const& col, gdf_scalar& scalar, cudaStream_t stream=0);
void sum_of_squares(gdf_column const& col, gdf_scalar& scalar, cudaStream_t stream=0);

void mean(gdf_column const& col, gdf_scalar& scalar, cudaStream_t stream=0);
void variance(gdf_column const& col, gdf_scalar& scalar, gdf_size_type ddof, cudaStream_t stream=0);
void standard_deviation(gdf_column const& col, gdf_scalar& scalar, gdf_size_type ddof, cudaStream_t stream=0);

} // namespace reductions
} // namespace cudf
#endif
