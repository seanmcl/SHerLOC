"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "quantized_add"}> ({
    %0 = "stablehlo.constant"() <{value = dense<[1.000000e+00, 2.000000e+00]> : tensor<2xf32>}> : () -> tensor<2xf32>
    %1 = "stablehlo.constant"() <{value = dense<[3.000000e+00, 4.000000e+00]> : tensor<2xf32>}> : () -> tensor<2xf32>
    %2 = "stablehlo.uniform_quantize"(%0) : (tensor<2xf32>) -> tensor<2x!quant.uniform<i8:f32, 1.000000e-01:-30>>
    %3 = "stablehlo.uniform_quantize"(%1) : (tensor<2xf32>) -> tensor<2x!quant.uniform<i8:f32, 5.000000e-01:-20>>
    %4 = "stablehlo.add"(%2, %3) : (tensor<2x!quant.uniform<i8:f32, 1.000000e-01:-30>>, tensor<2x!quant.uniform<i8:f32, 5.000000e-01:-20>>) -> tensor<2x!quant.uniform<i8:f32, 5.000000e-01:-20>>
    %5 = "stablehlo.bitcast_convert"(%4) : (tensor<2x!quant.uniform<i8:f32, 5.000000e-01:-20>>) -> tensor<2xi8>
    "check.expect_eq_const"(%5) <{value = dense<[-12, -8]> : tensor<2xi8>}> : (tensor<2xi8>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

