module @jit_f attributes {jax.uses_shape_polymorphism = false, mhlo.num_partitions = 1 : i32, mhlo.num_replicas = 1 : i32} {
  func.func public @main() -> (tensor<i32> {jax.result_info = "[0]", mhlo.layout_mode = "default"}, tensor<f32> {jax.result_info = "[1]", mhlo.layout_mode = "default"}, tensor<i1> {jax.result_info = "[2]", mhlo.layout_mode = "default"}, tensor<4x4xf32> {jax.result_info = "[3]", mhlo.layout_mode = "default"}) {
    %cst = stablehlo.constant dense<0.000000e+00> : tensor<4x4xf32>
    %c = stablehlo.constant dense<4> : tensor<i32>
    %cst_0 = stablehlo.constant dense<5.300000e+00> : tensor<f32>
    %c_1 = stablehlo.constant dense<true> : tensor<i1>
    return %c, %cst_0, %c_1, %cst : tensor<i32>, tensor<f32>, tensor<i1>, tensor<4x4xf32>
  }
}
