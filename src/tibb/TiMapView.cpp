/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2013 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#include "TiMapView.h"
#include "TiGenericFunctionObject.h"
#include "NativeMapViewObject.h"
#include "NativeAnnotationObject.h"

TiMapView::TiMapView()
    : TiUIBase("View")
{
}

TiMapView::~TiMapView()
{
}

TiMapView* TiMapView::createMapView(NativeObjectFactory* nativeObjectFactory)
{
	TiMapView* obj = new TiMapView;
    obj->setNativeObjectFactory(nativeObjectFactory);
    obj->initializeTiObject(NULL);
    return obj;
}

void TiMapView::onCreateStaticMembers()
{
    TiUIBase::onCreateStaticMembers();
    TiGenericFunctionObject::addGenericFunctionToParent(this, "selectAnnotation", this, _selectAnnotation);
    TiGenericFunctionObject::addGenericFunctionToParent(this, "removeAnnotation", this, _removeAnnotation);
    TiGenericFunctionObject::addGenericFunctionToParent(this, "addAnnotation", this, _addAnnotation);

}


void TiMapView::initializeTiObject(TiObject* parentContext)
{
    if (!isInitialized())
    {
        TiUIBase::initializeTiObject(parentContext);
        NativeObject* obj = getNativeObjectFactory()->createNativeObject(N_TYPE_MAPVIEW, this);
        setNativeObject(obj);
        obj->release();
    }
}

Handle<Value> TiMapView::_selectAnnotation(void* userContext, TiObject*, const Arguments& args) {
	HandleScope handleScope;
	TiMapView* obj = (TiMapView*) userContext;
	NativeMapViewObject* nativeMapViewObject = (NativeMapViewObject*) obj->getNativeObject();
	TiObject* tiObj = TiObject::getTiObjectFromJsObject(args[0]);

	NativeAnnotationObject* annotation = dynamic_cast<NativeAnnotationObject*>(tiObj->getNativeObject());

	if(annotation)
	{
		TiObject o;
		Local<Object> JSObj = Object::New();
		JSObj->Set(String::New("latitude"), Number::New(annotation->latitude));
		JSObj->Set(String::New("longitude"), Number::New(annotation->longitude));
		o.setValue(JSObj);
		nativeMapViewObject->setRegion(&o);
		annotation->showBubble = true;
		nativeMapViewObject->updateMap();
	}

	return Undefined();

}
Handle<Value> TiMapView::_removeAnnotation(void* userContext, TiObject*, const Arguments& args) {
	HandleScope handleScope;
	TiMapView* obj = (TiMapView*) userContext;
	NativeMapViewObject* nativeMapViewObject = (NativeMapViewObject*) obj->getNativeObject();

	TiObject* tiObj = TiObject::getTiObjectFromJsObject(args[0]);
	NativeObject* annotation = (NativeObject*)tiObj->getNativeObject();

	nativeMapViewObject->removeAnnotation(annotation);

	return Undefined();
}

Handle<Value> TiMapView::_addAnnotation(void* userContext, TiObject*, const Arguments& args) {
	HandleScope handleScope;
	TiMapView* obj = (TiMapView*) userContext;
	NativeMapViewObject* nativeMapViewObject = (NativeMapViewObject*) obj->getNativeObject();

	TiObject* tiObj = TiObject::getTiObjectFromJsObject(args[0]);
	NativeObject* annotation = (NativeObject*)tiObj->getNativeObject();

	nativeMapViewObject->addAnnotation(annotation);

	return Undefined();
}
