Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 199C26CF6D0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Mar 2023 01:19:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AB46A61497;
	Wed, 29 Mar 2023 23:19:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB46A61497
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680131965;
	bh=ci45m4K6CIDWr/vjKfYuj5kU6sHIj8TwKkfsTvAX6xY=;
	h=Date:In-Reply-To:References:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dwztPkpSG1YcVyus7n50RHep/X3+mZs9euo+cDWaNHMgI09QVYTZ9kk38Ft+RnNYN
	 ymDEM6kkEp9zA0ZMkpmMf6VV9o8A3+fB0dM+nox/UyBolWc3o5OcdFG/rfhOn4q6xd
	 MB6ip/BsCVeFGm5qc1Cbwhl+5Uclg+Q7/QAZcW9WgeGjcmyYPOUU4bDxPPdZivI0l0
	 llG01ZQl58BelnEWdBjBG3VCJ3J0HjsObme72631+LfJ2ODyu2kjbsDCrRhOYCoMvX
	 T0giO+XC+8/Y9QoK8Q3zn2Pp0ukEIptZrlgbrgzMw8clOmGhToWKE4Hp0r7D5OWQWb
	 eEuyhNbZTZUUw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jg1iLN0XzH2X; Wed, 29 Mar 2023 23:19:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5B71D60BF2;
	Wed, 29 Mar 2023 23:19:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5B71D60BF2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0CC081BF20D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 23:19:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E580A81FD5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 23:19:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E580A81FD5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yMcgtJjhiwwv for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Mar 2023 23:19:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5087081FC4
Received: from mail-pj1-x104a.google.com (mail-pj1-x104a.google.com
 [IPv6:2607:f8b0:4864:20::104a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5087081FC4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 23:19:17 +0000 (UTC)
Received: by mail-pj1-x104a.google.com with SMTP id
 b8-20020a17090a488800b0023d1bf65c7eso4617639pjh.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 16:19:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680131956;
 h=content-transfer-encoding:cc:to:from:subject:message-id:references
 :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
 :date:message-id:reply-to;
 bh=gihxk+7No2scFLMLBpp+6wyoNPNP1GnRy6PfH0IiWEM=;
 b=OOF+I10KVXHGqoxeNewJemMZVTZx55JDkGIGj7KxO0qudJFZLSxkLNx4Ehg8ra2qWp
 sxORQCluP5Slbp0wZASLobYYdJL1nX8/DUAftBpfKK/6ymR+fQqL8TndBFoD4TgdslzN
 DM315F25cwmrVRJjvf/v6a6jNq2AnwrrRi0A9Ylj8YFKgrwVzqnrI8cY5ZdK1d2dz9OP
 owL3/PzDwdLNR7mCQEFO19Jp3Xz7zCmvEeEKygxoe7qZIczLKCtimi3logYBv4drXcWs
 dHb3rLfcf+uXPskgV2bXzDFE78/psScsBvmApgQvNZUM4UWdqmyMZzT8hldJovSFnPuy
 c2Xw==
X-Gm-Message-State: AAQBX9eQRKQzjKQ8ifGicoUG0fVcnNguV8V1m12VhpbwUsP1C5o6xeeX
 BbSLX6Ogj0eGyM3GhtEnkfDUFpE=
X-Google-Smtp-Source: AKy350ZVTSK9qGKwnEiYmz1DKrOYDBf7pVA2Lq3qWisrqZK/uAWx9h3eARPGxDMmvPCESi7n/Ardgkw=
X-Received: from sdf.c.googlers.com ([fda3:e722:ac3:cc00:7f:e700:c0a8:5935])
 (user=sdf job=sendgmr) by 2002:a05:6a00:a09:b0:625:dc5b:9d1d with SMTP id
 p9-20020a056a000a0900b00625dc5b9d1dmr11263039pfh.0.1680131956699; Wed, 29 Mar
 2023 16:19:16 -0700 (PDT)
Date: Wed, 29 Mar 2023 16:19:15 -0700
In-Reply-To: <b9e5077f-fbc4-8904-74a8-cda94d91cfbf@redhat.com>
Mime-Version: 1.0
References: <168003451121.3027256.13000250073816770554.stgit@firesoul>
 <168003455815.3027256.7575362149566382055.stgit@firesoul>
 <ZCNjHAY81gS02FVW@google.com>
 <811724e2-cdd6-15fe-b176-9dfcdbd98bad@redhat.com>
 <ZCRy2f170FQ+fXsp@google.com>
 <b9e5077f-fbc4-8904-74a8-cda94d91cfbf@redhat.com>
Message-ID: <ZCTHc6Dp4RMi1YZ6@google.com>
From: Stanislav Fomichev <sdf@google.com>
To: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20210112; t=1680131956;
 h=content-transfer-encoding:cc:to:from:subject:message-id:references
 :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
 :reply-to;
 bh=gihxk+7No2scFLMLBpp+6wyoNPNP1GnRy6PfH0IiWEM=;
 b=Tr9XXbhuifWlXfUlhy27lp7/3dU3BTkeG87rqjP79pDAydC7BA/vng0N1y0arfOkXL
 NH2arXYY0PaMGLhSGBLOh/COvPilLQ0BDMxkMgAmWqJJsMRbB3jGCYmJHcAex8WjhIYC
 xgs43qaUYx0Frwsk+E2SetSLamNfnzLABUPW1YD1TvUTzhK+8EhBW/5Hbr6g3yToPb+f
 JHwQ2v7RGe0CcQuqvidLMbUux/0XvTIu5oS1ICrf8I9LBsSgaDvYYs1OeIddbDCM1oYE
 ekBP2ocRhXD/Za0wl8ps8NW+42jdMKg+IAjxowEqREPiokx6mUI/wPx8o9yrV2Y2aZhn
 1npg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20210112 header.b=Tr9XXbhu
Subject: Re: [Intel-wired-lan] [PATCH bpf RFC 1/4] xdp: rss hash types
 representation
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
Cc: xdp-hints@xdp-project.net, martin.lau@kernel.org, daniel@iogearbox.net,
 larysa.zaremba@intel.com, netdev@vger.kernel.org, john.fastabend@gmail.com,
 ast@kernel.org, jesse.brandeburg@intel.com, kuba@kernel.org,
 edumazet@google.com, pabeni@redhat.com, yoong.siang.song@intel.com,
 brouer@redhat.com, boon.leong.ong@intel.com, anthony.l.nguyen@intel.com,
 bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org, davem@davemloft.net,
 hawk@kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMDMvMjksIEplc3BlciBEYW5nYWFyZCBCcm91ZXIgd3JvdGU6DQoNCj4gT24gMjkvMDMvMjAy
MyAxOS4xOCwgU3RhbmlzbGF2IEZvbWljaGV2IHdyb3RlOg0KPiA+IE9uIDAzLzI5LCBKZXNwZXIg
RGFuZ2FhcmQgQnJvdWVyIHdyb3RlOg0KPiA+DQo+ID4gPiBPbiAyOC8wMy8yMDIzIDIzLjU4LCBT
dGFuaXNsYXYgRm9taWNoZXYgd3JvdGU6DQo+ID4gPiA+IE9uIDAzLzI4LCBKZXNwZXIgRGFuZ2Fh
cmQgQnJvdWVyIHdyb3RlOg0KPiA+ID4gPiA+IFRoZSBSU1MgaGFzaCB0eXBlIHNwZWNpZmllcyB3
aGF0IHBvcnRpb24gb2YgcGFja2V0IGRhdGEgTklDICANCj4gaGFyZHdhcmUgdXNlZA0KPiA+ID4g
PiA+IHdoZW4gY2FsY3VsYXRpbmcgUlNTIGhhc2ggdmFsdWUuIFRoZSBSU1MgdHlwZXMgYXJlIGZv
Y3VzZWQgb24gIA0KPiBJbnRlcm5ldA0KPiA+ID4gPiA+IHRyYWZmaWMgcHJvdG9jb2xzIGF0IE9T
SSBsYXllcnMgTDMgYW5kIEw0LiBMMiAoZS5nLiBBUlApIG9mdGVuICANCj4gZ2V0IGhhc2gNCj4g
PiA+ID4gPiB2YWx1ZSB6ZXJvIGFuZCBubyBSU1MgdHlwZS4gRm9yIEwzIGZvY3VzZWQgb24gSVB2
NCB2cy4gSVB2NiwgYW5kICANCj4gTDQNCj4gPiA+ID4gPiBwcmltYXJpbHkgVENQIHZzIFVEUCwg
YnV0IHNvbWUgaGFyZHdhcmUgc3VwcG9ydHMgU0NUUC4NCj4gPiA+ID4NCj4gPiA+ID4gPiBIYXJk
d2FyZSBSU1MgdHlwZXMgYXJlIGRpZmZlcmVudGx5IGVuY29kZWQgZm9yIGVhY2ggaGFyZHdhcmUg
TklDLiAgDQo+IE1vc3QNCj4gPiA+ID4gPiBoYXJkd2FyZSByZXByZXNlbnQgUlNTIGhhc2ggdHlw
ZSBhcyBhIG51bWJlci4gRGV0ZXJtaW5pbmcgTDMgdnMgIA0KPiBMNCBvZnRlbg0KPiA+ID4gPiA+
IHJlcXVpcmVzIGEgbWFwcGluZyB0YWJsZSBhcyB0aGVyZSBvZnRlbiBpc24ndCBhIHBhdHRlcm4g
b3Igc29ydGluZw0KPiA+ID4gPiA+IGFjY29yZGluZyB0byBJU08gbGF5ZXIuDQo+ID4gPiA+DQo+
ID4gPiA+ID4gVGhlIHBhdGNoIGludHJvZHVjZSBhIFhEUCBSU1MgaGFzaCB0eXBlICh4ZHBfcnNz
X2hhc2hfdHlwZSkgdGhhdCAgDQo+IGNhbiBib3RoDQo+ID4gPiA+ID4gYmUgc2VlbiBhcyBhIG51
bWJlciB0aGF0IGlzIG9yZGVyZWQgYWNjb3JkaW5nIGJ5IElTTyBsYXllciwgYW5kICANCj4gY2Fu
IGJlIGJpdA0KPiA+ID4gPiA+IG1hc2tlZCB0byBzZXBhcmF0ZSBJUHY0IGFuZCBJUHY2IHR5cGVz
IGZvciBMNCBwcm90b2NvbHMuIFJvb20gaXMgIA0KPiBhdmFpbGFibGUNCj4gPiA+ID4gPiBmb3Ig
ZXh0ZW5kaW5nIGxhdGVyIHdoaWxlIGtlZXBpbmcgdGhlc2UgcHJvcGVydGllcy4gVGhpcyBtYXBz
IGFuZCAgDQo+IHVuaWZpZXMNCj4gPiA+ID4gPiBkaWZmZXJlbmNlIHRvIGhhcmR3YXJlIHNwZWNp
ZmljIGhhc2hlcy4NCj4gPiA+ID4NCj4gPiA+ID4gTG9va3MgZ29vZCBvdmVyYWxsLiBBbnkgcmVh
c29uIHdlJ3JlIG1ha2luZyB0aGlzIHNwZWNpZmljIGxheW91dD8NCj4gPg0KPiA+ID4gT25lIGlt
cG9ydGFudCBnb2FsIGlzIHRvIGhhdmUgYSBzaW1wbGUvZmFzdCB3YXkgdG8gZGV0ZXJtaW5pbmcg
TDMgdnMgIA0KPiBMNCwNCj4gPiA+IGJlY2F1c2UgYSBMNCBoYXNoIGNhbiBiZSB1c2VkIGZvciBm
bG93IGhhbmRsaW5nIChlLmcuIGxvYWQtYmFsYW5jaW5nKS4NCj4gPg0KPiA+ID4gV2UgYmVsb3cg
bGF5b3V0IHlvdSBjYW46DQo+ID4NCj4gPiA+IMKgIGlmIChyc3NfdHlwZSAmIFhEUF9SU1NfVFlQ
RV9MNF9NQVNLKQ0KPiA+ID4gwqDCoMKgwqBib29sIGh3X2hhc2hfZG9fTEIgPSB0cnVlOw0KPiA+
DQo+ID4gPiBPciB1c2luZyBpdCBhcyBhIG51bWJlcjoNCj4gPg0KPiA+ID4gwqAgaWYgKHJzc190
eXBlID4gWERQX1JTU19UWVBFX0w0KQ0KPiA+ID4gwqDCoMKgwqBib29sIGh3X2hhc2hfZG9fTEIg
PSB0cnVlOw0KPiA+DQo+ID4gV2h5IGlzIGl0IHN0cmljdGx5IGJldHRlciB0aGVuIHRoZSBmb2xs
b3dpbmc/DQo+ID4NCj4gPiBpZiAocnNzX3R5cGUgJiAoVFlQRV9VRFAgfCBUWVBFX1RDUCB8IFRZ
UEVfU0NUUCkpIHt9DQo+ID4NCg0KPiBTZWUgVjIgSSBkcm9wcGVkIHRoZSBpZGVhIG9mIHRoaXMg
YmVpbmcgYSBudW1iZXIgKHRoYXQgaWRlYSB3YXMgbm90IGENCj4gZ29vZCBpZGVhKS4NCg0K8J+R
jQ0KDQo+ID4gSWYgd2UgYWRkIHNvbWUgbmV3IEw0IGZvcm1hdCwgdGhlIGJwZiBwcm9ncmFtcyBj
YW4gYmUgdXBkYXRlZCB0byBzdXBwb3J0DQo+ID4gaXQ/DQo+ID4NCj4gPiA+IEknbSB2ZXJ5IG9w
ZW4gdG8gY2hhbmdlcyB0byBteSAic3BlY2lmaWMiIGxheW91dC7CoCBJIGFtIGluIGRvdWJ0IGlm
DQo+ID4gPiB1c2luZyBpdCBhcyBhIG51bWJlciBpcyB0aGUgcmlnaHQgYXBwcm9hY2ggYW5kIHdv
cnRoIHRoZSB0cm91YmxlLg0KPiA+DQo+ID4gPiA+IFdoeSBub3Qgc2ltcGx5IHRoZSBmb2xsb3dp
bmc/DQo+ID4gPiA+DQo+ID4gPiA+IGVudW0gew0KPiA+ID4gPsKgIO+/ve+/ve+/ve+/vVhEUF9S
U1NfVFlQRV9OT05FID0gMCwNCj4gPiA+ID7CoCDvv73vv73vv73vv71YRFBfUlNTX1RZUEVfSVBW
NCA9IEJJVCgwKSwNCj4gPiA+ID7CoCDvv73vv73vv73vv71YRFBfUlNTX1RZUEVfSVBWNiA9IEJJ
VCgxKSwNCj4gPiA+ID7CoCDvv73vv73vv73vv70vKiBJUHY2IHdpdGggZXh0ZW5zaW9uIGhlYWRl
ci4gKi8NCj4gPiA+ID7CoCDvv73vv73vv73vv70vKiBsZXQncyBub3RlIF5eXiBpdCBpbiB0aGUg
VUFQST8gKi8NCj4gPiA+ID7CoCDvv73vv73vv73vv71YRFBfUlNTX1RZUEVfSVBWNl9FWCA9IEJJ
VCgyKSwNCj4gPiA+ID7CoCDvv73vv73vv73vv71YRFBfUlNTX1RZUEVfVURQID0gQklUKDMpLA0K
PiA+ID4gPsKgIO+/ve+/ve+/ve+/vVhEUF9SU1NfVFlQRV9UQ1AgPSBCSVQoNCksDQo+ID4gPiA+
wqAg77+977+977+977+9WERQX1JTU19UWVBFX1NDVFAgPSBCSVQoNSksDQo+ID4NCj4gPiA+IFdl
IGtub3cgdGhlc2UgYml0cyBmb3IgVURQLCBUQ1AsIFNDVFAgKGFuZCBJUFNFQykgYXJlIGV4Y2x1
c2l2ZSwgdGhleQ0KPiA+ID4gY2Fubm90IGJlIHNldCBhdCB0aGUgc2FtZSB0aW1lLCBlLmcuIGFz
IGEgcGFja2V0IGNhbm5vdCBib3RoIGJlIFVEUCAgDQo+IGFuZA0KPiA+ID4gVENQLsKgIFRodXMs
IHVzaW5nIHRoZXNlIGJpdHMgYXMgYSBudW1iZXIgbWFrZSBzZW5zZSB0byBtZSwgYW5kIGlzIG1v
cmUNCj4gPiA+IGNvbXBhY3QuDQo+ID4NCj4gPiBbLi5dDQo+ID4NCj4gPiA+IFRoaXMgQklUKCkg
YXBwcm9hY2ggYWxzbyBoYXZlIHRoZSBpc3N1ZSBvZiBleHRlbmRpbmcgaXQgbGF0ZXIgKGZvcndh
cmQNCj4gPiA+IGNvbXBhdGliaWxpdHkpLsKgIEFzIG1lbnRpb25lZCBhIGNvbW1vbiB0YXNrIHdp
bGwgYmUgdG8gY2hlY2sgaWYNCj4gPiA+IGhhc2gtdHlwZSBpcyBhIEw0IHR5cGUuwqAgU2VlIG1s
eDUgW3BhdGNoIDQvNF0gbmVlZGVkIHRvIGV4dGVuZCB3aXRoDQo+ID4gPiBJUFNFQy4gTm90aWNl
IGhvdyBteSBYRFBfUlNTX1RZUEVfTDRfTUFTSyBjb3ZlcnMgYWxsIHRoZSBiaXRzIHRoYXQgIA0K
PiB0aGlzDQo+ID4gPiBjYW4gYmUgZXh0ZW5kZWQgd2l0aCBuZXcgTDQgdHlwZXMsIHN1Y2ggdGhh
dCBleGlzdGluZyBwcm9ncyB3aWxsIHN0aWxsDQo+ID4gPiB3b3JrIGNoZWNraW5nIGZvciBMNCBj
aGVjay7CoCBJdCBjYW4gb2YtY2F1c2UgYmUgc29sdmVkIGluIHRoZSBzYW1lIHdheQ0KPiA+ID4g
Zm9yIHRoaXMgQklUKCkgYXBwcm9hY2ggYnkgcmVzZXJ2aW5nIHNvbWUgYml0cyB1cGZyb250IGlu
IGEgbWFzay4NCj4gPg0KPiA+IFdlJ3JlIHVzaW5nIDYgYml0cyBvdXQgb2YgNjQsIHdlIHNob3Vs
ZCBiZSBnb29kIGZvciBhd2hpbGU/IElmIHRoZXJlDQo+ID4gaXMgZXZlciBhIGZvcndhcmQgY29t
cGF0aWJpbGl0eSBpc3N1ZSwgd2UgY2FuIGFsd2F5cyBjb21lIHVwIHdpdGgNCj4gPiBhIG5ldyBr
ZnVuYy4NCg0KPiBJIHdhbnQvbmVlZCBzdG9yZSB0aGUgUlNTLXR5cGUgaW4gdGhlIHhkcF9mcmFt
ZSwgZm9yIFhEUF9SRURJUkVDVCBhbmQNCj4gU0tCIHVzZS1jYXNlcy4gIFRodXMsIEkgZG9uJ3Qg
d2FudCB0byB1c2UgNjQtYml0LzgtYnl0ZXMsIGFzIHhkcF9mcmFtZQ0KPiBzaXplIGlzIGxpbWl0
ZWQgKGdpdmVuIGl0IHJlZHVjZXMgaGVhZHJvb20gZXhwYW5zaW9uKS4NCg0KPiA+DQo+ID4gT25l
IG90aGVyIHJlbGF0ZWQgcXVlc3Rpb24gSSBoYXZlIGlzOiBzaG91bGQgd2UgZXhwb3J0IHRoZSB0
eXBlDQo+ID4gb3ZlciBzb21lIGFkZGl0aW9uYWwgbmV3IGtmdW5jIGFyZ3VtZW50PyAoaW5zdGVh
ZCBvZiBhYnVzaW5nIHRoZSByZXR1cm4NCj4gPiB0eXBlKQ0KDQo+IEdvb2QgcXVlc3Rpb24uIEkg
d2FzIGFsc28gd29uZGVyaW5nIGlmIGl0IHdvdWxkbid0IGJlIGJldHRlciB0byBhZGQNCj4gYW5v
dGhlciBrZnVuYyBhcmd1bWVudCB3aXRoIHRoZSByc3NfaGFzaF90eXBlPw0KDQo+IFRoYXQgd2ls
bCBjaGFuZ2UgdGhlIGNhbGwgc2lnbmF0dXJlLCBzbyB0aGF0IHdpbGwgbm90IGJlIGVhc3kgdG8g
aGFuZGxlDQo+IGJldHdlZW4ga2VybmVsIHJlbGVhc2VzLg0KDQpBZ3JlZSB3aXRoIFRva2Ugb24g
YSBzZXBhcmF0ZSB0aHJlYWQ7IG1pZ2h0IG5vdCBiZSB0b28gbGF0ZSB0byBmaXQgaXQNCmludG8g
YW4gcmMuLg0KDQo+ID4gTWF5YmUgdGhhdCB3aWxsIGxldCB1cyBkcm9wIHRoZSBleHBsaWNpdCBC
VEZfVFlQRV9FTUlUIGFzIHdlbGw/DQoNCj4gU3VyZSwgaWYgd2UgZGVmaW5lIGl0IGFzIGFuIGFy
Z3VtZW50LCB0aGVuIGl0IHdpbGwgYXV0b21hdGljYWxseQ0KPiBleHBvcnRlZCBhcyBCVEYuDQoN
Cj4gPiA+ID4gfQ0KPiA+ID4gPg0KPiA+ID4gPiBBbmQgdGhlbiB1c2luZyBYRFBfUlNTX1RZUEVf
SVBWNHxYRFBfUlNTX1RZUEVfVURQIHZzDQo+ID4gPiA+IFhEUF9SU1NfVFlQRV9JUFY2fFhYWCA/
DQo+ID4NCj4gPiA+IERvIG5vdGljZSwgdGhhdCBJIGFscmVhZHkgZG9lcyBzb21lIGxldmVsIG9m
IG9yJ2luZyAoInwiKSBpbiB0aGlzDQo+ID4gPiBwcm9wb3NhbC7CoCBUaGUgbWFpbiBkaWZmZXJl
bmNlIGlzIHRoYXQgSSBoaWRlIHRoaXMgZnJvbSB0aGUgZHJpdmVyLCAgDQo+IGFuZA0KPiA+ID4g
a2luZCBvZiBwcmUtY29tYmluZSB0aGUgdmFsaWQgY29tYmluYXRpb24gKGVudW0ncykgZHJpdmVy
cyBjYW4gc2VsZWN0DQo+ID4gPiBmcm9tLiBJIGRvIGdldCB0aGUgcG9pbnQsIGFuZCBJIHRoaW5r
IEkgd2lsbCBjb21lIHVwIHdpdGggYSBjb21iaW5lZA0KPiA+ID4gc29sdXRpb24gYmFzZWQgb24g
eW91ciBpbnB1dC4NCj4gPg0KPiA+DQo+ID4gPiBUaGUgUlNTIGhhc2hpbmcgdHlwZXMgYW5kIGNv
bWJpbmF0aW9ucyBjb21lcyBmcm9tIE0kIHN0YW5kYXJkczoNCj4gPiA+IMKgIFsxXSAgDQo+IGh0
dHBzOi8vbGVhcm4ubWljcm9zb2Z0LmNvbS9lbi11cy93aW5kb3dzLWhhcmR3YXJlL2RyaXZlcnMv
bmV0d29yay9yc3MtaGFzaGluZy10eXBlcyNpcHY0LWhhc2gtdHlwZS1jb21iaW5hdGlvbnMNCj4g
Pg0KPiA+IE15IG1haW4gY29uY2VybiBoZXJlIGlzIHRoYXQgd2UncmUgb3Zlci1jb21wbGljYXRp
bmcgaXQgd2l0aCB0aGUgbWFza3MNCj4gPiBhbmQgdGhlIGZvcm1hdC4gV2l0aCB0aGUgZXhwbGlj
aXQgYml0cyB3ZSBjYW4gZWFzaWx5IG1hcCB0byB0aGF0DQo+ID4gc3BlYyB5b3UgbWVudGlvbi4N
Cg0KPiBTZWUgaWYgeW91IGxpa2UgbXkgUkZDLVYyIHByb3Bvc2FsIGJldHRlci4NCj4gSXQgc2hv
dWxkIGdvIG1vcmUgaW4geW91ciBkaXJlY3Rpb24uDQoNClllYWgsIEkgbGlrZSBpdCBiZXR0ZXIu
IEJ0dywgd2h5IGhhdmUgYSBzZXBhcmF0ZSBiaXQgZm9yIFhEUF9SU1NfQklUX0VYPw0KQW55IHJl
YXNvbiBpdCdzIG5vdCBhIFhEUF9SU1NfTDNfSVBWNl9FWCB3aXRoaW4gWERQX1JTU19MM19NQVNL
Pw0KDQpBbmQgdGhlIGZvbGxvd2luZyBwYXJ0IHNlZW1zIGxpa2UgYSBsZWZ0b3ZlciBmcm9tIHRo
ZSBlYXJsaWVyIHZlcnNpb246DQoNCisvKiBGb3IgcGFydGl0aW9uaW5nIG9mIHhkcF9yc3NfaGFz
aF90eXBlICovDQorI2RlZmluZSBSU1NfTDMJCUdFTk1BU0soMiwwKSAvKiAzLWJpdHMgPSB2YWx1
ZXMgYmV0d2VlbiAxLTcgKi8NCisjZGVmaW5lIEw0X0JJVAkJQklUKDMpICAgICAgIC8qIDEtYml0
IC0gTDQgaW5kaWNhdGlvbiAqLw0KKyNkZWZpbmUgUlNTX0w0X0lQVjQJR0VOTUFTSyg2LDQpIC8q
IDMtYml0cyAqLw0KKyNkZWZpbmUgUlNTX0w0X0lQVjYJR0VOTUFTSyg5LDcpIC8qIDMtYml0cyAq
Lw0KKyNkZWZpbmUgUlNTX0w0CQlHRU5NQVNLKDksMykgLyogPSA3LWJpdHMgLSBjb3ZlcmluZyBM
NCBJUFY0K0lQVjYgKi8NCisjZGVmaW5lIEw0X0lQVjZfRVhfQklUCUJJVCg5KSAgICAgICAvKiAx
LWJpdCAtIEw0IElQdjYgd2l0aCBFeHRlbnNpb24gaGRyICANCiovDQorCQkJCSAgICAgLyogMTEt
Yml0cyBpbiB0b3RhbCAqLw0KDQo+ID4gRm9yIGV4YW1wbGUsIGZvciBmb3J3YXJkIGNvbXBhdCwg
SSdtIG5vdCBzdXJlIHdlIGNhbiBhc3N1bWUgdGhhdCB0aGUgIA0KPiBwZW9wbGUNCj4gPiB3aWxs
IGRvOg0KPiA+ICDCoMKgwqDCoCJyc3NfdHlwZSAmIFhEUF9SU1NfVFlQRV9MNF9NQVNLIg0KPiA+
IGluc3RlYWQgb2Ygc29tZXRoaW5nIGxpa2U6DQo+ID4gIMKgwqDCoMKgInJzc190eXBlICYgKFhE
UF9SU1NfVFlQRV9MNF9JUFY0X1RDUHxYRFBfUlNTX1RZUEVfTDRfSVBWNF9VRFApIg0KPiA+DQoN
Cj4gVGhpcyBjb2RlIGlzIGFsbG93ZWQgaW4gVjIgYW5kIHNob3VsZCBiZS4gSXQgaXMgYSBjaG9p
Y2Ugb2YNCj4gQlBGLXByb2dyYW1tZXIgaW4gbGluZS0yIHRvIG5vdCBiZSBmb3J3YXJkIGNvbXBh
dGlibGUgd2l0aCBuZXdlciBMNCB0eXBlcy4NCg0KPiA+ID4gPiA+IFRoaXMgcHJvcG9zYWwgY2hh
bmdlIHRoZSBrZnVuYyBBUEkgYnBmX3hkcF9tZXRhZGF0YV9yeF9oYXNoKCkgdG8gICANCj4gcmV0
dXJuDQo+ID4gPiA+ID4gdGhpcyBSU1MgaGFzaCB0eXBlIG9uIHN1Y2Nlc3MuDQoNCj4gVGhpcyBp
cyB0aGUgcmVhbCBxdWVzdGlvbiAoYXMgYWxzbyByYWlzZWQgYWJvdmUpLi4uDQo+IFNob3VsZCB3
ZSB1c2UgcmV0dXJuIHZhbHVlIG9yIGFkZCBhbiBhcmd1bWVudCBmb3IgdHlwZT8NCg0KTGV0J3Mg
Zml4IHRoZSBwcm90b3R5cGUgd2hpbGUgaXQncyBzdGlsbCBlYXJseSBpbiB0aGUgcmM/DQpNYXli
ZSBhbHNvIGV4dGVuZCB0aGUgdGVzdHMgdG8gZHJvcC9kZWNvZGUvdmVyaWZ5IHRoZSBtYXNrPw0K
DQo+IC0tSmVzcGVyDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9z
bC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2ly
ZWQtbGFuCg==
