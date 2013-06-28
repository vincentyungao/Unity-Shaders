Shader "Custom/SingleTextureDiffuse" {
	Properties {
		_Color ("Main color", Color) = (1,1,1,1)
		_MainTex ("Base (RGB)", 2D) = "white" {}
	}
	SubShader {
		Pass {
			Material {
				Diffuse[_Color]
			}
			Lighting On
			SetTexture[_MainTex] {
				Combine texture * primary DOUBLE, texture * constant
			}
		}
	} 
}
