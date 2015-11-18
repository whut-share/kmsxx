%module(directors="1") pykms
%{
#include "kms++.h"

#include "kmstest.h"

using namespace kms;
%}

%include "std_string.i"
%include "stdint.i"
%include "std_vector.i"

%feature("director") PageFlipHandlerBase;

%include "decls.h"
%include "drmobject.h"
%include "atomicreq.h"
%include "crtc.h"
%include "card.h"
%include "property.h"
%include "framebuffer.h"
%include "dumbframebuffer.h"
%include "plane.h"
%include "connector.h"
%include "encoder.h"
%include "pagefliphandler.h"
%include "videomode.h"

%include "kmstest.h"

%template(ConnectorVector) std::vector<kms::Connector*>;
%template(CrtcVector) std::vector<kms::Crtc*>;
%template(EncoderVector) std::vector<kms::Encoder*>;
%template(PlaneVector) std::vector<kms::Plane*>;
