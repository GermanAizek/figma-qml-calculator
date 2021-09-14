//Generated by FigmaQML

import QtGraphicalEffects 1.15
import QtQuick 2.15
import QtQuick.Shapes 1.15
Rectangle {
    id: figma_501_460
    objectName:"icon/30/multiplication"
    x:144
    y:75
    width:30
    height:30
    color: "transparent"
    clip: false 
    property Component delegate_501_456:     Shape {
        id: figma_501_456
        objectName:"back_action"
        x:0
        y:0
        width:30
        height:30
        ShapePath {
            strokeColor: "transparent"
            strokeWidth:1
            fillColor:"transparent"
            id: svgpath_figma_501_456
        }
    }
    property Item i_delegate_501_456
    property matrix4x4 delegate_501_456_transform: Qt.matrix4x4(Nan,Nan,Nan,Nan,Nan,Nan,Nan,Nan,Nan,Nan,Nan,Nan,Nan,Nan,Nan,Nan,)
    onDelegate_501_456_transformChanged: {if(i_delegate_501_456 && i_delegate_501_456.transform != delegate_501_456_transform) i_delegate_501_456.transform = delegate_501_456_transform;}
    property real delegate_501_456_x: NaN
    onDelegate_501_456_xChanged: {if(i_delegate_501_456 && i_delegate_501_456.x != delegate_501_456_x) i_delegate_501_456.x = delegate_501_456_x;}
    property real delegate_501_456_y: NaN
    onDelegate_501_456_yChanged: {if(i_delegate_501_456 && i_delegate_501_456.y != delegate_501_456_y) i_delegate_501_456.y = delegate_501_456_y;}
    property real delegate_501_456_width: NaN
    onDelegate_501_456_widthChanged: {if(i_delegate_501_456 && i_delegate_501_456.width != delegate_501_456_width) i_delegate_501_456.width = delegate_501_456_width;}
    property real delegate_501_456_height: NaN
    onDelegate_501_456_heightChanged: {if(i_delegate_501_456 && i_delegate_501_456.height != delegate_501_456_height) i_delegate_501_456.height = delegate_501_456_height;}
    property Component delegate_501_457:     Rectangle {
        id: figma_501_457
        objectName:"multiplication"
        transform: Matrix4x4 {
            matrix: Qt.matrix4x4(
            0.707107, -0.707107, 15, 0,
            0.707107, 0.707107, 1.56497, 0,
            0, 0, 1, 0,
            0, 0, 0, 1)
        }
        x:15
        y:1
        width:19
        height:19
        color: "transparent"
        clip: false 
        Shape {
            id: figma_501_458
            objectName:"Vector 175"
            x:9
            y:0
            width:0
            height:19
            ShapePath {
                joinStyle: ShapePath.MiterJoin
                strokeColor: "#ffffffff"
                strokeWidth:2
                fillColor:"transparent"
                id: svgpath_figma_501_458
                fillRule: ShapePath.WindingFill
                PathSvg {
                    path: "M1 0C1 -0.552285 0.552285 -1 0 -1C-0.552285 -1 -1 -0.552285 -1 0L1 0ZM-1 19C-1 19.5523 -0.552285 20 0 20C0.552285 20 1 19.5523 1 19L-1 19ZM-1 0L-1 19L1 19L1 0L-1 0Z"
                } 
            }
        }
        Shape {
            id: figma_501_459
            objectName:"Vector 176"
            transform: Matrix4x4 {
                matrix: Qt.matrix4x4(
                -4.37114e-08, -1, 19, 0,
                1, -4.37114e-08, 9.5, 0,
                0, 0, 1, 0,
                0, 0, 0, 1)
            }
            x:19
            y:9
            width:0
            height:19
            ShapePath {
                joinStyle: ShapePath.MiterJoin
                strokeColor: "#ffffffff"
                strokeWidth:2
                fillColor:"transparent"
                id: svgpath_figma_501_459
                fillRule: ShapePath.WindingFill
                PathSvg {
                    path: "M1 0C1 -0.552285 0.552285 -1 0 -1C-0.552285 -1 -1 -0.552285 -1 0L1 0ZM-1 19C-1 19.5523 -0.552285 20 0 20C0.552285 20 1 19.5523 1 19L-1 19ZM-1 0L-1 19L1 19L1 0L-1 0Z"
                } 
            }
        }
    }
    property Item i_delegate_501_457
    property matrix4x4 delegate_501_457_transform: Qt.matrix4x4(Nan,Nan,Nan,Nan,Nan,Nan,Nan,Nan,Nan,Nan,Nan,Nan,Nan,Nan,Nan,Nan,)
    onDelegate_501_457_transformChanged: {if(i_delegate_501_457 && i_delegate_501_457.transform != delegate_501_457_transform) i_delegate_501_457.transform = delegate_501_457_transform;}
    property real delegate_501_457_x: NaN
    onDelegate_501_457_xChanged: {if(i_delegate_501_457 && i_delegate_501_457.x != delegate_501_457_x) i_delegate_501_457.x = delegate_501_457_x;}
    property real delegate_501_457_y: NaN
    onDelegate_501_457_yChanged: {if(i_delegate_501_457 && i_delegate_501_457.y != delegate_501_457_y) i_delegate_501_457.y = delegate_501_457_y;}
    property real delegate_501_457_width: NaN
    onDelegate_501_457_widthChanged: {if(i_delegate_501_457 && i_delegate_501_457.width != delegate_501_457_width) i_delegate_501_457.width = delegate_501_457_width;}
    property real delegate_501_457_height: NaN
    onDelegate_501_457_heightChanged: {if(i_delegate_501_457 && i_delegate_501_457.height != delegate_501_457_height) i_delegate_501_457.height = delegate_501_457_height;}
    Component.onCompleted: {
        const o_delegate_501_456 = {}
        if(!isNaN(delegate_501_456_transform.m11)) o_delegate_501_456['transform'] = delegate_501_456_transform;
        if(!isNaN(delegate_501_456_x)) o_delegate_501_456['x'] = delegate_501_456_x;
        if(!isNaN(delegate_501_456_y)) o_delegate_501_456['y'] = delegate_501_456_y;
        if(!isNaN(delegate_501_456_width)) o_delegate_501_456['width'] = delegate_501_456_width;
        if(!isNaN(delegate_501_456_height)) o_delegate_501_456['height'] = delegate_501_456_height;
        i_delegate_501_456 = delegate_501_456.createObject(this, o_delegate_501_456)
        delegate_501_456_x = Qt.binding(()=>i_delegate_501_456.x)
        delegate_501_456_y = Qt.binding(()=>i_delegate_501_456.y)
        delegate_501_456_width = Qt.binding(()=>i_delegate_501_456.width)
        delegate_501_456_height = Qt.binding(()=>i_delegate_501_456.height)
        const o_delegate_501_457 = {}
        if(!isNaN(delegate_501_457_transform.m11)) o_delegate_501_457['transform'] = delegate_501_457_transform;
        if(!isNaN(delegate_501_457_x)) o_delegate_501_457['x'] = delegate_501_457_x;
        if(!isNaN(delegate_501_457_y)) o_delegate_501_457['y'] = delegate_501_457_y;
        if(!isNaN(delegate_501_457_width)) o_delegate_501_457['width'] = delegate_501_457_width;
        if(!isNaN(delegate_501_457_height)) o_delegate_501_457['height'] = delegate_501_457_height;
        i_delegate_501_457 = delegate_501_457.createObject(this, o_delegate_501_457)
        delegate_501_457_x = Qt.binding(()=>i_delegate_501_457.x)
        delegate_501_457_y = Qt.binding(()=>i_delegate_501_457.y)
        delegate_501_457_width = Qt.binding(()=>i_delegate_501_457.width)
        delegate_501_457_height = Qt.binding(()=>i_delegate_501_457.height)
    }
}