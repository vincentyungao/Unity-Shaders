Shader "Custom/TwoTexturesMultiplyDiffuse" {
	Properties {
		_Color ("Main Color", Color) = (1,1,1,1)
		_MainTex ("Base (RGB)", 2D) = "white" {}
		_MainTex2 ("Tex2 (RGB)", 2D) = "white" {}
	}
	SubShader {
		Pass {
			Material {
				Diffuse[_Color]
			}
			Lighting On
			SetTexture [_MainTex] {
				Combine texture * primary 
			}
			SetTexture [_MainTex2] {
				Combine texture * previous DOUBLE
			}
		}
	} 
}
