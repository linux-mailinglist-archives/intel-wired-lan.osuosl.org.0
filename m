Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F024D7DCFD3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Oct 2023 16:00:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 386316148B;
	Tue, 31 Oct 2023 15:00:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 386316148B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698764420;
	bh=3SirSkeOMzfGC/WTST/+Pv84x0bmT+vS8cJU4NAZ9K8=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gpeZ46Amy4o7xK1sWqaudtpLE9U6HOIKL1lcDEX+QTui6JWbWHpIBZ9M+nkfjg4vE
	 PUqKlKSLqwbEtSbHNi5Uu4cvtQFZxvpSRgqB5dCsrXLSgO6STEZVyzk1iPwJ716VXV
	 1mwvJcEMRqiu3PmRzWppYm7LMa04wcyUYeEKcU4fDS54AqvtSrzhvyeXt27nLkNUBJ
	 GPHvD5TRMCPR+l+deGA+1gXliDOsCWktd/IZchSfsIBPI2QA2nMoechTUzaDcAn5sX
	 90ATQtoN+aT29JWbU73jz09CAjgl8bCDBJIgLgRGHmyQE5mHBdJY5xr/Hy9BuDrkaw
	 UjAXdHlbOQyhw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Dd4u1AY30dN5; Tue, 31 Oct 2023 15:00:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D822A61486;
	Tue, 31 Oct 2023 15:00:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D822A61486
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4D5C61BF31A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 15:00:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 259D9408BB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 15:00:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 259D9408BB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bfv7igvO_ups for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Oct 2023 15:00:13 +0000 (UTC)
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com
 [IPv6:2607:f8b0:4864:20::52a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1D968408D6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 15:00:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1D968408D6
Received: by mail-pg1-x52a.google.com with SMTP id
 41be03b00d2f7-5ac865d1358so4270540a12.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 08:00:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698764412; x=1699369212;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=fpUa0c0ro2tLbbAgAvEyUhNQOLHcv6VqwMFHwh6wE9s=;
 b=Ctuima9qxrHyAcgYXw8n6CMPmy25CQ2/+/JsuAAz/0c5OQj6OhsIQdBOa5nIt3DtoS
 weBM1j++xQyOZeSPf869XSD+YOVE6+xBstWLh25zNFQ7xcnNpvd+WgzeQJgKsSEeNU2Y
 Gg+uzVctcmivN+qEoSUX9v/fI4UL00tZxAysF5JUaIDrVhoqvf22/BqezZpc2Rt1T9Bx
 osBMBKDtZOREMm8bmUh1/pu9eplqY2qQZc/3LkvAwRrCl71ycxB3IXqdbdx+wdV646KA
 +G7Moyqns+RlTk8snK7VbFLb90OFO80Gw8M1Z0tU5tUDCYSJbRkT4Yzc4KBkL6Su1Llb
 XR4w==
X-Gm-Message-State: AOJu0Yy65TCgCQfiD+wXdqlf5gCS5qRw+ifM1qCEGSa+3MPhL9lFeqvq
 FkjaromD1f++vdAdAll+NL526FNsnHnsVnkXBxI=
X-Google-Smtp-Source: AGHT+IFjc/sxR3TCJRREmly4thmkk546QuSy1uQX1ftXCq3d3xvNCegoaYqO9f6wJkoRnH26cjKeRQrvqP7WTZcP3H4=
X-Received: by 2002:a17:90a:62c3:b0:280:85a:b425 with SMTP id
 k3-20020a17090a62c300b00280085ab425mr8949115pjs.49.1698764412260; Tue, 31 Oct
 2023 08:00:12 -0700 (PDT)
MIME-Version: 1.0
References: <20231016154937.41224-1-ahmed.zaki@intel.com>
 <14feb89d-7b4a-40c5-8983-5ef331953224@intel.com>
 <CAKgT0UfcT5cEDRBzCxU9UrQzbBEgFt89vJZjz8Tow=yAfEYERw@mail.gmail.com>
 <20231016163059.23799429@kernel.org>
 <CAKgT0Udyvmxap_F+yFJZiY44sKi+_zOjUjbVYO=TqeW4p0hxrA@mail.gmail.com>
 <20231017131727.78e96449@kernel.org>
 <CAKgT0Ud4PX1Y6GO9rW+Nvr_y862Cbv3Fpn+YX4wFHEos9rugJA@mail.gmail.com>
 <20231017173448.3f1c35aa@kernel.org>
 <CAKgT0Udz+YdkmtO2Gbhr7CccHtBbTpKich4er3qQXY-b2inUoA@mail.gmail.com>
 <20231018165020.55cc4a79@kernel.org>
 <45c6ab9f-50f6-4e9e-a035-060a4491bded@intel.com>
 <20231020153316.1c152c80@kernel.org>
 <c2c0dbe8-eee5-4e87-a115-7424ba06d21b@intel.com>
 <20231020164917.69d5cd44@kernel.org>
 <f6ab0dc1-b5d5-4fff-9ee2-69d21388d4ca@intel.com>
 <89e63967-46c4-49fe-87bc-331c7c2f6aab@nvidia.com>
 <e644840d-7f3d-4e3c-9e0f-6d958ec865e0@intel.com>
 <e471519b-b253-4121-9eec-f7f05948c258@nvidia.com>
 <a2a1164f-1492-43d1-9667-5917d0ececcb@intel.com>
 <d097e7d3-5e16-44ba-aa92-dfb7fbedc600@nvidia.com>
In-Reply-To: <d097e7d3-5e16-44ba-aa92-dfb7fbedc600@nvidia.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Tue, 31 Oct 2023 07:59:35 -0700
Message-ID: <CAKgT0UdObrDUGKMC7Tneqc4j3tU1jxRugoEB=u63drHhxOeKyw@mail.gmail.com>
To: Gal Pressman <gal@nvidia.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1698764412; x=1699369212; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=fpUa0c0ro2tLbbAgAvEyUhNQOLHcv6VqwMFHwh6wE9s=;
 b=mpKwiyYmTRSIyZZ7xXf3oBfnmXnU4RdJBYhJVvGz4863OM0iRLogUOzvN11nSAZFIm
 bug+wT0wwgfnchnLDcLF6/sqUStnUvn2Ww50kAcxPRn/PkmbLv0DcTDOZCxFE2pjA2sE
 bMEuf7Wx1ayLyjI5fArGZOxN3sajlQSjTeUc0Hpplas/WuVio/cR6cmZLTwG4PYzBWsz
 9EKmTfPczglaBgyTkNtnQTuXnA5eEWRyQNw5XSz4J/ry9IAU699asUX9cH5DbdBrlgiW
 8x2LYXdOEBeU9B8W38Kz6JG/F+JD0jH/agkYkkAmuBlT6fX78A04fmdR/63XQpvprS5U
 CY7Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=mpKwiyYm
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/6] net: ethtool: allow
 symmetric-xor RSS hash for any flow type
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: mkubecek@suse.cz, andrew@lunn.ch, willemdebruijn.kernel@gmail.com,
 pabeni@redhat.com, Wojciech Drewek <wojciech.drewek@intel.com>, corbet@lwn.net,
 netdev@vger.kernel.org, linux-doc@vger.kernel.org,
 Ahmed Zaki <ahmed.zaki@intel.com>, jesse.brandeburg@intel.com,
 edumazet@google.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 vladimir.oltean@nxp.com, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCBPY3QgMzEsIDIwMjMgYXQgNTowMeKAr0FNIEdhbCBQcmVzc21hbiA8Z2FsQG52aWRp
YS5jb20+IHdyb3RlOgo+Cj4gT24gMjkvMTAvMjAyMyAxODo1OSwgQWhtZWQgWmFraSB3cm90ZToK
PiA+Cj4gPgo+ID4gT24gMjAyMy0xMC0yOSAwNjo0OCwgR2FsIFByZXNzbWFuIHdyb3RlOgo+ID4+
IE9uIDI5LzEwLzIwMjMgMTQ6NDIsIEFobWVkIFpha2kgd3JvdGU6Cj4gPj4+Cj4gPj4+Cj4gPj4+
IE9uIDIwMjMtMTAtMjkgMDY6MjUsIEdhbCBQcmVzc21hbiB3cm90ZToKPiA+Pj4+IE9uIDIxLzEw
LzIwMjMgMzowMCwgQWhtZWQgWmFraSB3cm90ZToKPiA+Pj4+Pgo+ID4+Pj4+Cj4gPj4+Pj4gT24g
MjAyMy0xMC0yMCAxNzo0OSwgSmFrdWIgS2ljaW5za2kgd3JvdGU6Cj4gPj4+Pj4+IE9uIEZyaSwg
MjAgT2N0IDIwMjMgMTc6MTQ6MTEgLTA2MDAgQWhtZWQgWmFraSB3cm90ZToKPiA+Pj4+Pj4+IEkg
cmVwbGllZCB0byB0aGF0IGhlcmU6Cj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4gaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvYWxsL2FmYjRhMDZmLWNmYmEtNDdiYS1hZGIzLTA5YmVhN2NiNWYwMEBpbnRlbC5j
b20vCj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4gSSBhbSBraW5kIG9mIGNvbmZ1c2VkIG5vdyBzbyBwbGVh
c2UgYmVhciB3aXRoIG1lLiBldGh0b29sIGVpdGhlcgo+ID4+Pj4+Pj4gc2VuZHMKPiA+Pj4+Pj4+
ICJldGh0b29sX3J4ZmgiIG9yICJldGh0b29sX3J4bmZjIi4gQUZBSUsgImV0aHRvb2xfcnhmaCIg
aXMgdGhlCj4gPj4+Pj4+PiBpbnRlcmZhY2UKPiA+Pj4+Pj4+IGZvciAiZXRodG9vbCAtWCIgd2hp
Y2ggaXMgdXNlZCB0byBzZXQgdGhlIFJTUyBhbGdvcml0aG0uIEJ1dCB3ZQo+ID4+Pj4+Pj4ga2lu
ZCBvZgo+ID4+Pj4+Pj4gYWdyZWVkIHRvIGdvIHdpdGggImV0aHRvb2wgLVV8LU4iIGZvciBzeW1t
ZXRyaWMteG9yLCBhbmQgdGhhdCB1c2VzCj4gPj4+Pj4+PiAiZXRodG9vbF9yeG5mYyIgKGFzIGlt
cGxlbWVudGVkIGluIHRoaXMgc2VyaWVzKS4KPiA+Pj4+Pj4KPiA+Pj4+Pj4gSSBoYXZlIG5vIHN0
cm9uZyBwcmVmZXJlbmNlLiBTb3VuZHMgbGlrZSBBbGV4IHByZWZlcnMgdG8ga2VlcCBpdAo+ID4+
Pj4+PiBjbG9zZXIKPiA+Pj4+Pj4gdG8gYWxnbywgd2hpY2ggaXMgImV0aHRvb2xfcnhmaCIuCj4g
Pj4+Pj4+Cj4gPj4+Pj4+PiBEbyB5b3UgbWVhbiB1c2UgImV0aHRvb2xfcnhmaCIgaW5zdGVhZCBv
ZiAiZXRodG9vbF9yeG5mYyI/IGhvdyB3b3VsZAo+ID4+Pj4+Pj4gdGhhdCB3b3JrIG9uIHRoZSBl
dGh0b29sIHVzZXIgaW50ZXJmYWNlPwo+ID4+Pj4+Pgo+ID4+Pj4+PiBJIGRvbid0IGtub3cgd2hh
dCB5b3UncmUgYXNraW5nIG9mIHVzLiBJZiB5b3UgZmluZCB0aGUgY29kZSB0bwo+ID4+Pj4+PiBj
b25mdXNpbmcKPiA+Pj4+Pj4gbWF5YmUgc29tZW9uZSBhdCBJbnRlbCBjYW4gaGVscCB5b3UgOnwK
PiA+Pj4+Pgo+ID4+Pj4+IFRoZSBjb2RlIGlzIHN0cmFpZ2h0Zm9yd2FyZC4gSSBhbSBjb25mdXNl
ZCBieSB0aGUgcmVxdWlyZW1lbnRzOiBkb24ndAo+ID4+Pj4+IGFkZCBhIG5ldyBhbGdvcml0aG0g
YnV0IHVzZSAiZXRodG9vbF9yeGZoIi4KPiA+Pj4+Pgo+ID4+Pj4+IEknbGwgc2VlIGlmIEkgY2Fu
IGdldCBtb3JlIGhlbHAsIG1heSBiZSBJIGFtIG1pc3Npbmcgc29tZXRoaW5nLgo+ID4+Pj4+Cj4g
Pj4+Pgo+ID4+Pj4gV2hhdCB3YXMgdGhlIGRlY2lzaW9uIGhlcmU/Cj4gPj4+PiBJcyB0aGlzIGdv
aW5nIHRvIGJlIGV4cG9zZWQgdGhyb3VnaCBldGh0b29sIC1OIG9yIC1YPwo+ID4+Pgo+ID4+PiBJ
IGFtIHdvcmtpbmcgb24gYSBuZXcgdmVyc2lvbiB0aGF0IHVzZXMgImV0aHRvb2xfcnhmaCIgdG8g
c2V0IHRoZQo+ID4+PiBzeW1tZXRyaWMteG9yLiBUaGUgdXNlciB3aWxsIHNldCBwZXItZGV2aWNl
IHZpYToKPiA+Pj4KPiA+Pj4gZXRodG9vbCAtWCBldGgwIGhmdW5jIHRvZXBsaXR6IHN5bW1ldHJp
Yy14b3IKPiA+Pj4KPiA+Pj4gdGhlbiBzcGVjaWZ5IHRoZSBwZXItZmxvdyB0eXBlIFJTUyBmaWVs
ZHMgYXMgdXN1YWw6Cj4gPj4+Cj4gPj4+IGV0aHRvb2wgLU58LVUgZXRoMCByeC1mbG93LWhhc2gg
PGZsb3dfdHlwZT4gc3xkfGZ8bgo+ID4+Pgo+ID4+PiBUaGUgZG93bnNpZGUgaXMgdGhhdCBhbGwg
Zmxvdy10eXBlcyB3aWxsIGhhdmUgdG8gYmUgZWl0aGVyIHN5bW1ldHJpYyBvcgo+ID4+PiBhc3lt
bWV0cmljLgo+ID4+Cj4gPj4gV2h5IGFyZSB3ZSBtYWtpbmcgdGhlIGludGVyZmFjZSBsZXNzIGZs
ZXhpYmxlIHRoYW4gaXQgY2FuIGJlIHdpdGggLU4/Cj4gPgo+ID4gQWxleGFuZGVyIER1eWNrIHBy
ZWZlcnMgdG8gaW1wbGVtZW50IHRoZSAic3ltbWV0cmljLXhvciIgaW50ZXJmYWNlIGFzIGFuCj4g
PiBhbGdvcml0aG0gb3IgZXh0ZW5zaW9uIChwbGVhc2UgcmVmZXIgdG8gcHJldmlvdXMgbWVzc2Fn
ZXMpLCBidXQgZXRodG9vbAo+ID4gZG9lcyBub3QgcHJvdmlkZSBmbG93dHlwZS9SU1MgZmllbGRz
IHNldHRpbmcgdmlhICItWCIuIFRoZSBhYm92ZSB3YXMgdGhlCj4gPiBiZXN0IHNvbHV0aW9uIHRo
YXQgd2UgKGF0IEludGVsKSBjb3VsZCB0aGluayBvZi4KPgo+IE9LLCBpdCdzIGEgd2VpcmQgd2Un
cmUgZGVsaWJlcmF0ZWx5IGxpbWl0aW5nIG91ciBpbnRlcmZhY2UsIGdpdmVuCj4gdGhlcmUncyBh
bHJlYWR5IGhhcmR3YXJlIHRoYXQgc3VwcG9ydHMgY29udHJvbGxpbmcgc3ltbWV0cmljIGhhc2hp
bmcgcGVyCj4gZmxvdyB0eXBlLgo+Cj4gSSBzYXcgeW91IG1lbnRpb25lZCB0aGUgd2F5IGljZSBo
YXJkd2FyZSBpbXBsZW1lbnRzIHN5bW1ldHJpYy14b3IKPiBzb21ld2hlcmUsIGl0IGRlZmluaXRl
bHkgbmVlZHMgdG8gYmUgYWRkZWQgc29tZXdoZXJlIGluIG91cgo+IGRvY3VtZW50YXRpb24gdG8g
cHJldmVudCBjb25mdXNpb24uCj4gbWx4NSBoYXJkd2FyZSBhbHNvIGRvZXMgc3ltbWV0cmljIGhh
c2hpbmcgd2l0aCB4b3IsIGJ1dCBub3QgZXhhY3RseSBhcwo+IHlvdSBkZXNjcmliZWQsIHdlIG5l
ZWQgdGhlIGFsZ29yaXRobSB0byBiZSBjbGVhci4KCkl0IGlzIHByZWNpc2VseSBiZWNhdXNlIG9m
IHRoZSB3YXkgdGhlIHN5bW1ldHJpYy14b3IgaW1wbGVtZW50cyBpdAp0aGF0IEkgc3VnZ2VzdGVk
IHRoYXQgdGhleSBjaGFuZ2UgdGhlIGFsZ28gdHlwZSBpbnN0ZWFkIG9mIHRoZSBpbnB1dApmaWVs
ZHMuCgpJbnN0ZWFkIG9mIGRvaW5nIHNvbWV0aGluZyBzdWNoIGFzIHJlYXJyYW5naW5nIHRoZSBp
bnB1dHMsIHdoYXQgdGhleQpkbyBpcyBzdGFydCBYT1JpbmcgdGhlbSB0b2dldGhlciBhbmQgdGhl
biB1c2luZyB0aG9zZSB2YWx1ZXMgZm9yIGJvdGgKdGhlIHNvdXJjZSBhbmQgZGVzdGluYXRpb24g
cG9ydHMuIEl0IHdvdWxkIGJlIG9uZSB0aGluZyBpZiB0aGV5CnN3YXBwZWQgdGhlbSwgYnV0IGlu
c3RlYWQgdGhleSBkZXN0cm95IHRoZSBlbnRyb3B5IHByb3ZpZGVkIGJ5IFhPUmluZwp0aGUgdmFs
dWVzIHRvZ2V0aGVyIGFuZCB0aGVuIGRvdWJsaW5nIHRoZW0gdXAgaW4gdGhlIHNvdXJjZSBhbmQK
ZGVzdGluYXRpb24gZmllbGRzLiBUaGUgcmVzdWx0IGlzIHRoZSBoYXNoIHZhbHVlIGJlY29tZXMg
cHJlZGljdGFibGUKaW4gdGhhdCBvbmNlIHlvdSBrbm93IHRoZSB0YXJnZXQgeW91IGp1c3QgaGF2
ZSB0byBvZmZzZXQgdGhlIHNvdXJjZQphbmQgZGVzdGluYXRpb24gcG9ydC9JUCBieSB0aGUgc2Ft
ZSBhbW91bnQgc28gdGhhdCB0aGV5IGhhc2ggb3V0IHRvCnRoZSBzYW1lIHZhbHVlcywgYW5kIGFz
IGEgcmVzdWx0IGl0IHdvdWxkIG1ha2UgRERvUyBhdHRhY2tzIGJhc2VkIG9uCnRoZSBSU1MgaGFz
aCBtdWNoIGVhc2llci4KCldoZXJlIEkgZHJhdyB0aGUgbGluZSBpbiB0aGlzIGlzIGlmIHdlIHN0
YXJ0IGxvc2luZyBlbnRyb3B5IHdpdGhvdXQKZXhwbGljaXRseSByZW1vdmluZyB0aGUgdmFsdWUg
dGhlbiBpdCBpcyBwYXJ0IG9mIHRoZSBhbGdvLCB3aGVyZWFzIGlmCml0IGlzIHNvbWV0aGluZyBz
dWNoIGFzIHBsYWNlbWVudCBvciB1cyBleHBsaWNpdGx5IHNheWluZyB3ZSBkb24ndAp3YW50IGNl
cnRhaW4gZmllbGRzIGluIHRoZXJlIHRoZW4gaXQgd291bGQgYmUgcGFydCBvZiB0aGUgaW5wdXQu
CkFkZGluZyBmaWVsZHMgdG8gdGhlIGlucHV0IHNob3VsZCBpbmNyZWFzZSBvciBhdCBsZWFzdCBt
YWludGFpbiB0aGUKZW50cm9weSBpcyBteSBwb2ludCBvZiB2aWV3LgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBs
aXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
