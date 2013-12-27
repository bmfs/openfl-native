package openfl.display;

import flash.Lib;

class Shader{

	public var __handle:Dynamic;

	public function new(inVertSource:String, inFragSource:String)
	{
		__handle = lime_shader_create(inVertSource, inFragSource);
	}

	public function setUniformValue(name:String, value:Dynamic)
	{
		lime_shader_set_uniform(__handle, name, value);
	}

	private static var lime_shader_create = Lib.load("lime", "lime_shader_create", 2);
	private static var lime_shader_set_uniform = Lib.load("lime", "lime_shader_set_uniform", 3);
}
