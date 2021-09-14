//Generated by FigmaQML

import QtGraphicalEffects 1.14
import QtQuick 2.14
import QtQuick.Shapes 1.14
Rectangle {
    id: figma_501_584
    objectName:"icon/30/bkt"
    x:339
    y:75
    width:30
    height:30
    color: "transparent"
    clip: false 
    property Component delegate_501_575:     Shape {
        id: figma_501_575
        objectName:"back_action"
        x:0
        y:0
        width:30
        height:30
        ShapePath {
            strokeColor: "transparent"
            strokeWidth:1
            fillColor:"transparent"
            id: svgpath_figma_501_575
        }
    }
    property Item i_delegate_501_575
    property matrix4x4 delegate_501_575_transform: Qt.matrix4x4(Nan,Nan,Nan,Nan,Nan,Nan,Nan,Nan,Nan,Nan,Nan,Nan,Nan,Nan,Nan,Nan,)
    onDelegate_501_575_transformChanged: {if(i_delegate_501_575 && i_delegate_501_575.transform != delegate_501_575_transform) i_delegate_501_575.transform = delegate_501_575_transform;}
    property real delegate_501_575_x: NaN
    onDelegate_501_575_xChanged: {if(i_delegate_501_575 && i_delegate_501_575.x != delegate_501_575_x) i_delegate_501_575.x = delegate_501_575_x;}
    property real delegate_501_575_y: NaN
    onDelegate_501_575_yChanged: {if(i_delegate_501_575 && i_delegate_501_575.y != delegate_501_575_y) i_delegate_501_575.y = delegate_501_575_y;}
    property real delegate_501_575_width: NaN
    onDelegate_501_575_widthChanged: {if(i_delegate_501_575 && i_delegate_501_575.width != delegate_501_575_width) i_delegate_501_575.width = delegate_501_575_width;}
    property real delegate_501_575_height: NaN
    onDelegate_501_575_heightChanged: {if(i_delegate_501_575 && i_delegate_501_575.height != delegate_501_575_height) i_delegate_501_575.height = delegate_501_575_height;}
    property Component delegate_501_582:     Shape {
        id: figma_501_582
        objectName:"left"
        x:9
        y:5
        width:3
        height:20
        ShapePath {
            joinStyle: ShapePath.MiterJoin
            strokeColor: "#ffffffff"
            strokeWidth:2
            fillColor:"transparent"
            id: svgpath_figma_501_582
            fillRule: ShapePath.WindingFill
            PathSvg {
                path: "M3.8 0.6C4.13137 0.158172 4.04183 -0.468629 3.6 -0.8C3.15817 -1.13137 2.53137 -1.04183 2.2 -0.6L3.8 0.6ZM2.2 20.6C2.53137 21.0418 3.15817 21.1314 3.6 20.8C4.04183 20.4686 4.13137 19.8418 3.8 19.4L2.2 20.6ZM3 0C2.2 -0.6 2.19978 -0.599703 2.19954 -0.599391C2.19945 -0.599266 2.1992 -0.598938 2.19902 -0.598689C2.19865 -0.59819 2.19823 -0.597629 2.19776 -0.597007C2.19683 -0.595762 2.19572 -0.59427 2.19444 -0.592532C2.19186 -0.589055 2.18857 -0.584594 2.18459 -0.579155C2.17662 -0.568278 2.16589 -0.55349 2.15258 -0.534851C2.12595 -0.497578 2.08899 -0.444883 2.04317 -0.377254C1.95157 -0.242032 1.82444 -0.0468889 1.67376 0.204254C1.37259 0.706197 0.976041 1.43398 0.580855 2.35608C-0.208662 4.19829 -1 6.8334 -1 10L1 10C1 7.1666 1.70866 4.80171 2.41915 3.14392C2.77396 2.31602 3.12741 1.6688 3.38874 1.23325C3.51931 1.01564 3.62655 0.851407 3.69901 0.744442C3.73523 0.690976 3.76272 0.651875 3.78004 0.627625C3.7887 0.615502 3.79482 0.607097 3.7982 0.60247C3.7999 0.600158 3.80091 0.59879 3.80122 0.598376C3.80137 0.598168 3.80135 0.5982 3.80114 0.59847C3.80104 0.598605 3.8009 0.5988 3.80071 0.599055C3.80061 0.599182 3.80044 0.599419 3.80039 0.599483C3.8002 0.599734 3.8 0.6 3 0ZM-1 10C-1 13.1666 -0.208662 15.8017 0.580855 17.6439C0.976041 18.566 1.37259 19.2938 1.67376 19.7957C1.82444 20.0469 1.95157 20.242 2.04317 20.3773C2.08899 20.4449 2.12595 20.4976 2.15258 20.5349C2.16589 20.5535 2.17662 20.5683 2.18459 20.5792C2.18857 20.5846 2.19186 20.5891 2.19444 20.5925C2.19572 20.5943 2.19683 20.5958 2.19776 20.597C2.19823 20.5976 2.19865 20.5982 2.19902 20.5987C2.1992 20.5989 2.19945 20.5993 2.19954 20.5994C2.19978 20.5997 2.2 20.6 3 20C3.8 19.4 3.8002 19.4003 3.80039 19.4005C3.80044 19.4006 3.80061 19.4008 3.80071 19.4009C3.8009 19.4012 3.80104 19.4014 3.80114 19.4015C3.80135 19.4018 3.80137 19.4018 3.80122 19.4016C3.80091 19.4012 3.7999 19.3998 3.7982 19.3975C3.79482 19.3929 3.7887 19.3845 3.78004 19.3724C3.76272 19.3481 3.73523 19.309 3.69901 19.2556C3.62655 19.1486 3.51931 18.9844 3.38874 18.7668C3.12741 18.3312 2.77396 17.684 2.41915 16.8561C1.70866 15.1983 1 12.8334 1 10L-1 10Z"
            } 
        }
    }
    property Item i_delegate_501_582
    property matrix4x4 delegate_501_582_transform: Qt.matrix4x4(Nan,Nan,Nan,Nan,Nan,Nan,Nan,Nan,Nan,Nan,Nan,Nan,Nan,Nan,Nan,Nan,)
    onDelegate_501_582_transformChanged: {if(i_delegate_501_582 && i_delegate_501_582.transform != delegate_501_582_transform) i_delegate_501_582.transform = delegate_501_582_transform;}
    property real delegate_501_582_x: NaN
    onDelegate_501_582_xChanged: {if(i_delegate_501_582 && i_delegate_501_582.x != delegate_501_582_x) i_delegate_501_582.x = delegate_501_582_x;}
    property real delegate_501_582_y: NaN
    onDelegate_501_582_yChanged: {if(i_delegate_501_582 && i_delegate_501_582.y != delegate_501_582_y) i_delegate_501_582.y = delegate_501_582_y;}
    property real delegate_501_582_width: NaN
    onDelegate_501_582_widthChanged: {if(i_delegate_501_582 && i_delegate_501_582.width != delegate_501_582_width) i_delegate_501_582.width = delegate_501_582_width;}
    property real delegate_501_582_height: NaN
    onDelegate_501_582_heightChanged: {if(i_delegate_501_582 && i_delegate_501_582.height != delegate_501_582_height) i_delegate_501_582.height = delegate_501_582_height;}
    property Component delegate_501_583:     Shape {
        id: figma_501_583
        objectName:"right"
        transform: Matrix4x4 {
            matrix: Qt.matrix4x4(
            -1, 8.74228e-08, 21, 0,
            -8.74228e-08, -1, 25, 0,
            0, 0, 1, 0,
            0, 0, 0, 1)
        }
        x:21
        y:25
        width:3
        height:20
        ShapePath {
            joinStyle: ShapePath.MiterJoin
            strokeColor: "#ffffffff"
            strokeWidth:2
            fillColor:"transparent"
            id: svgpath_figma_501_583
            fillRule: ShapePath.WindingFill
            PathSvg {
                path: "M3.8 0.6C4.13137 0.158172 4.04183 -0.468629 3.6 -0.8C3.15817 -1.13137 2.53137 -1.04183 2.2 -0.6L3.8 0.6ZM2.2 20.6C2.53137 21.0418 3.15817 21.1314 3.6 20.8C4.04183 20.4686 4.13137 19.8418 3.8 19.4L2.2 20.6ZM3 0C2.2 -0.6 2.19978 -0.599703 2.19954 -0.599391C2.19945 -0.599266 2.1992 -0.598938 2.19902 -0.598689C2.19865 -0.59819 2.19823 -0.597629 2.19776 -0.597007C2.19683 -0.595762 2.19572 -0.59427 2.19444 -0.592532C2.19186 -0.589055 2.18857 -0.584594 2.18459 -0.579155C2.17662 -0.568278 2.16589 -0.55349 2.15258 -0.534851C2.12595 -0.497578 2.08899 -0.444883 2.04317 -0.377254C1.95157 -0.242032 1.82444 -0.0468889 1.67376 0.204254C1.37259 0.706197 0.976041 1.43398 0.580855 2.35608C-0.208662 4.19829 -1 6.8334 -1 10L1 10C1 7.1666 1.70866 4.80171 2.41915 3.14392C2.77396 2.31602 3.12741 1.6688 3.38874 1.23325C3.51931 1.01564 3.62655 0.851407 3.69901 0.744442C3.73523 0.690976 3.76272 0.651875 3.78004 0.627625C3.7887 0.615502 3.79482 0.607097 3.7982 0.60247C3.7999 0.600158 3.80091 0.59879 3.80122 0.598376C3.80137 0.598168 3.80135 0.5982 3.80114 0.59847C3.80104 0.598605 3.8009 0.5988 3.80071 0.599055C3.80061 0.599182 3.80044 0.599419 3.80039 0.599483C3.8002 0.599734 3.8 0.6 3 0ZM-1 10C-1 13.1666 -0.208662 15.8017 0.580855 17.6439C0.976041 18.566 1.37259 19.2938 1.67376 19.7957C1.82444 20.0469 1.95157 20.242 2.04317 20.3773C2.08899 20.4449 2.12595 20.4976 2.15258 20.5349C2.16589 20.5535 2.17662 20.5683 2.18459 20.5792C2.18857 20.5846 2.19186 20.5891 2.19444 20.5925C2.19572 20.5943 2.19683 20.5958 2.19776 20.597C2.19823 20.5976 2.19865 20.5982 2.19902 20.5987C2.1992 20.5989 2.19945 20.5993 2.19954 20.5994C2.19978 20.5997 2.2 20.6 3 20C3.8 19.4 3.8002 19.4003 3.80039 19.4005C3.80044 19.4006 3.80061 19.4008 3.80071 19.4009C3.8009 19.4012 3.80104 19.4014 3.80114 19.4015C3.80135 19.4018 3.80137 19.4018 3.80122 19.4016C3.80091 19.4012 3.7999 19.3998 3.7982 19.3975C3.79482 19.3929 3.7887 19.3845 3.78004 19.3724C3.76272 19.3481 3.73523 19.309 3.69901 19.2556C3.62655 19.1486 3.51931 18.9844 3.38874 18.7668C3.12741 18.3312 2.77396 17.684 2.41915 16.8561C1.70866 15.1983 1 12.8334 1 10L-1 10Z"
            } 
        }
    }
    property Item i_delegate_501_583
    property matrix4x4 delegate_501_583_transform: Qt.matrix4x4(Nan,Nan,Nan,Nan,Nan,Nan,Nan,Nan,Nan,Nan,Nan,Nan,Nan,Nan,Nan,Nan,)
    onDelegate_501_583_transformChanged: {if(i_delegate_501_583 && i_delegate_501_583.transform != delegate_501_583_transform) i_delegate_501_583.transform = delegate_501_583_transform;}
    property real delegate_501_583_x: NaN
    onDelegate_501_583_xChanged: {if(i_delegate_501_583 && i_delegate_501_583.x != delegate_501_583_x) i_delegate_501_583.x = delegate_501_583_x;}
    property real delegate_501_583_y: NaN
    onDelegate_501_583_yChanged: {if(i_delegate_501_583 && i_delegate_501_583.y != delegate_501_583_y) i_delegate_501_583.y = delegate_501_583_y;}
    property real delegate_501_583_width: NaN
    onDelegate_501_583_widthChanged: {if(i_delegate_501_583 && i_delegate_501_583.width != delegate_501_583_width) i_delegate_501_583.width = delegate_501_583_width;}
    property real delegate_501_583_height: NaN
    onDelegate_501_583_heightChanged: {if(i_delegate_501_583 && i_delegate_501_583.height != delegate_501_583_height) i_delegate_501_583.height = delegate_501_583_height;}
    Component.onCompleted: {
        const o_delegate_501_575 = {}
        if(!isNaN(delegate_501_575_transform.m11)) o_delegate_501_575['transform'] = delegate_501_575_transform;
        if(!isNaN(delegate_501_575_x)) o_delegate_501_575['x'] = delegate_501_575_x;
        if(!isNaN(delegate_501_575_y)) o_delegate_501_575['y'] = delegate_501_575_y;
        if(!isNaN(delegate_501_575_width)) o_delegate_501_575['width'] = delegate_501_575_width;
        if(!isNaN(delegate_501_575_height)) o_delegate_501_575['height'] = delegate_501_575_height;
        i_delegate_501_575 = delegate_501_575.createObject(this, o_delegate_501_575)
        delegate_501_575_x = Qt.binding(()=>i_delegate_501_575.x)
        delegate_501_575_y = Qt.binding(()=>i_delegate_501_575.y)
        delegate_501_575_width = Qt.binding(()=>i_delegate_501_575.width)
        delegate_501_575_height = Qt.binding(()=>i_delegate_501_575.height)
        const o_delegate_501_582 = {}
        if(!isNaN(delegate_501_582_transform.m11)) o_delegate_501_582['transform'] = delegate_501_582_transform;
        if(!isNaN(delegate_501_582_x)) o_delegate_501_582['x'] = delegate_501_582_x;
        if(!isNaN(delegate_501_582_y)) o_delegate_501_582['y'] = delegate_501_582_y;
        if(!isNaN(delegate_501_582_width)) o_delegate_501_582['width'] = delegate_501_582_width;
        if(!isNaN(delegate_501_582_height)) o_delegate_501_582['height'] = delegate_501_582_height;
        i_delegate_501_582 = delegate_501_582.createObject(this, o_delegate_501_582)
        delegate_501_582_x = Qt.binding(()=>i_delegate_501_582.x)
        delegate_501_582_y = Qt.binding(()=>i_delegate_501_582.y)
        delegate_501_582_width = Qt.binding(()=>i_delegate_501_582.width)
        delegate_501_582_height = Qt.binding(()=>i_delegate_501_582.height)
        const o_delegate_501_583 = {}
        if(!isNaN(delegate_501_583_transform.m11)) o_delegate_501_583['transform'] = delegate_501_583_transform;
        if(!isNaN(delegate_501_583_x)) o_delegate_501_583['x'] = delegate_501_583_x;
        if(!isNaN(delegate_501_583_y)) o_delegate_501_583['y'] = delegate_501_583_y;
        if(!isNaN(delegate_501_583_width)) o_delegate_501_583['width'] = delegate_501_583_width;
        if(!isNaN(delegate_501_583_height)) o_delegate_501_583['height'] = delegate_501_583_height;
        i_delegate_501_583 = delegate_501_583.createObject(this, o_delegate_501_583)
        delegate_501_583_x = Qt.binding(()=>i_delegate_501_583.x)
        delegate_501_583_y = Qt.binding(()=>i_delegate_501_583.y)
        delegate_501_583_width = Qt.binding(()=>i_delegate_501_583.width)
        delegate_501_583_height = Qt.binding(()=>i_delegate_501_583.height)
    }
}
