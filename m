Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E6A6B54EC4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Sep 2025 15:07:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4576060DFA;
	Fri, 12 Sep 2025 13:07:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Tw0LlG0ElCfN; Fri, 12 Sep 2025 13:07:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A56B061017
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757682464;
	bh=AhN3kcAG8s569E8YZrQ3IpCqcZPTOWGxuTdywrZKkkQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FiCwEVS75APcGVOB95y2y308s9Ag3agLUsujEJlPNt8z5Op/t44y8ikHV3lLm2QuV
	 kD0kUQpijUyIxUKt2xqanUqn/KFlqMJGtkQafviZWteKm4jXWRwJHu+9WJM7SXyUhD
	 3Ihf0PEKTpgCHnJPb0f9LeTAGVSPEIy+Uney9nQYMssEfr5UEusfWdK2pWl3wF0XXf
	 adbvwlqYj8xvmbjTBG35z2y7J2nItOiX0hk3iTM504Ccnp1+9XGMDIxO4LmeIXroap
	 GJj5kKb0ImRgu+Xe7Y1eeUMXfUzZeO8W1HtNlSakt7Y6Tifge6K21Bl7MCW04xcfkW
	 w2oCSjFm6mRLA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A56B061017;
	Fri, 12 Sep 2025 13:07:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 36AA512D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 13:07:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1D7428127F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 13:07:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yKusksEyc-lH for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Sep 2025 13:07:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=35.158.23.94;
 helo=fra-out-008.esa.eu-central-1.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=343cc6bfb=farbere@amazon.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BBCE4811BE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BBCE4811BE
Received: from fra-out-008.esa.eu-central-1.outbound.mail-perimeter.amazon.com
 (fra-out-008.esa.eu-central-1.outbound.mail-perimeter.amazon.com
 [35.158.23.94])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BBCE4811BE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 13:07:40 +0000 (UTC)
X-CSE-ConnectionGUID: 1aNlGU+5Rf6yIjIrkLsmtA==
X-CSE-MsgGUID: 8ilwknIVRdeG8d/0rLfTWQ==
X-IronPort-AV: E=Sophos;i="6.18,259,1751241600"; 
   d="scan'208";a="2023068"
Received: from ip-10-6-11-83.eu-central-1.compute.internal (HELO
 smtpout.naws.eu-central-1.prod.farcaster.email.amazon.dev) ([10.6.11.83])
 by internal-fra-out-008.esa.eu-central-1.outbound.mail-perimeter.amazon.com
 with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Sep 2025 13:07:37 +0000
Received: from EX19MTAEUA002.ant.amazon.com [54.240.197.232:28668]
 by smtpin.naws.eu-central-1.prod.farcaster.email.amazon.dev [10.0.20.211:2525]
 with esmtp (Farcaster)
 id f101f8c5-b944-4295-b7d2-10d8943975ce; Fri, 12 Sep 2025 13:07:37 +0000 (UTC)
X-Farcaster-Flow-ID: f101f8c5-b944-4295-b7d2-10d8943975ce
Received: from EX19D018EUA004.ant.amazon.com (10.252.50.85) by
 EX19MTAEUA002.ant.amazon.com (10.252.50.124) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Fri, 12 Sep 2025 13:07:36 +0000
Received: from EX19D018EUA004.ant.amazon.com (10.252.50.85) by
 EX19D018EUA004.ant.amazon.com (10.252.50.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Fri, 12 Sep 2025 13:07:35 +0000
Received: from EX19D018EUA004.ant.amazon.com ([fe80::e53:84f8:3456:a97d]) by
 EX19D018EUA004.ant.amazon.com ([fe80::e53:84f8:3456:a97d%3]) with mapi id
 15.02.2562.020; Fri, 12 Sep 2025 13:07:35 +0000
From: "Farber, Eliav" <farbere@amazon.com>
To: Greg KH <gregkh@linuxfoundation.org>
CC: "jesse.brandeburg@intel.com" <jesse.brandeburg@intel.com>,
 "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 "davem@davemloft.net" <davem@davemloft.net>, "kuba@kernel.org"
 <kuba@kernel.org>, "vitaly.lifshits@intel.com" <vitaly.lifshits@intel.com>,
 "post@mikaelkw.online" <post@mikaelkw.online>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Chocron,
 Jonathan" <jonnyc@amazon.com>, "stable@vger.kernel.org"
 <stable@vger.kernel.org>, "Farber, Eliav" <farbere@amazon.com>
Thread-Topic: [PATCH 5.10.y] e1000e: fix EEPROM length types for overflow
 checks
Thread-Index: AQHcI+Y14Hz9ZqTtuk67HsScGeoBbw==
Date: Fri, 12 Sep 2025 13:07:35 +0000
Message-ID: <5614ed5db9bd412cb43a78ad656eb433@amazon.com>
References: <20250910173138.8307-1-farbere@amazon.com>
 <2025091131-tractor-almost-6987@gregkh>
 <f524c24888924a999c3bb90de0099b78@amazon.com>
 <2025091122-obsolete-earthen-8c9b@gregkh>
In-Reply-To: <2025091122-obsolete-earthen-8c9b@gregkh>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.85.143.179]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1757682461; x=1789218461;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AhN3kcAG8s569E8YZrQ3IpCqcZPTOWGxuTdywrZKkkQ=;
 b=MqtMph4pf1fHNBSyfm7PAXhOrZQWx5+vxeV00CWdVRXT/p7EYRAALze+
 HEq/JMuWai0DCgwA853DSOZXrfJn/rFU2OLSKMOSv63D0geGJk/lAPzMh
 uaUcIoL0ufJJborWv6oXWxo0rkAnUj7GPoFngSMrDTAgJDnopzEOk4tNx
 vUB4D3pr0B+U4sRkhJN3DzqTfAKVpdR91LX8XSKvBeEQTy0Bx+U2ym/58
 ZiPJJOWZJb6VvoAQIdjuNB7/wR17EWz3WpvG204A2wD/j6P1nGsErjODo
 jXmMH7t4xQtvPLP6KPmxLK1R6ro0jvFG2vdjUXEi/gM8ujP4uwrd9CDFX
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=MqtMph4p
Subject: Re: [Intel-wired-lan] [PATCH 5.10.y] e1000e: fix EEPROM length
 types for overflow checks
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiBPbiBUaHUsIFNlcCAxMSwgMjAyNSBhdCAwNjoxMzozM0FNICswMDAwLCBGYXJiZXIsIEVsaWF2
IHdyb3RlOg0KPiA+ID4gT24gV2VkLCBTZXAgMTAsIDIwMjUgYXQgMDU6MzE6MzhQTSArMDAwMCwg
RWxpYXYgRmFyYmVyIHdyb3RlOg0KPiA+ID4+IEZpeCBhIGNvbXBpbGF0aW9uIGZhaWx1cmUgd2hl
biB3YXJuaW5ncyBhcmUgdHJlYXRlZCBhcyBlcnJvcnM6DQo+ID4gPj4NCj4gPiA+PiBkcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvZXRodG9vbC5jOiBJbiBmdW5jdGlvbiDigJhlMTAw
MF9zZXRfZWVwcm9t4oCZOg0KPiA+ID4+IC4vaW5jbHVkZS9saW51eC9vdmVyZmxvdy5oOjcxOjE1
OiBlcnJvcjogY29tcGFyaXNvbiBvZiBkaXN0aW5jdCBwb2ludGVyIHR5cGVzIGxhY2tzIGEgY2Fz
dCBbLVdlcnJvcl0NCj4gPiA+PiAgICA3MSB8ICAodm9pZCkgKCZfX2EgPT0gX19kKTsgICBcDQo+
ID4gPj4gICAgICAgfCAgICAgICAgICAgICAgIF5+DQo+ID4gPj4gZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvZTEwMDBlL2V0aHRvb2wuYzo1ODI6Njogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1h
Y3JvIOKAmGNoZWNrX2FkZF9vdmVyZmxvd+KAmQ0KPiA+ID4+ICAgNTgyIHwgIGlmIChjaGVja19h
ZGRfb3ZlcmZsb3coZWVwcm9tLT5vZmZzZXQsIGVlcHJvbS0+bGVuLCAmdG90YWxfbGVuKSB8fA0K
PiA+ID4+ICAgICAgIHwgICAgICBefn5+fn5+fn5+fn5+fn5+fn4NCj4gPiA+Pg0KPiA+ID4+IFRv
IGZpeCB0aGlzLCBjaGFuZ2UgdG90YWxfbGVuIGFuZCBtYXhfbGVuIGZyb20gc2l6ZV90IHRvIHUz
MiBpbg0KPiA+ID4+IGUxMDAwX3NldF9lZXByb20oKS4NCj4gPiA+PiBUaGUgY2hlY2tfYWRkX292
ZXJmbG93KCkgaGVscGVyIHJlcXVpcmVzIHRoYXQgdGhlIGZpcnN0IHR3byBvcGVyYW5kcw0KPiA+
ID4+IGFuZCB0aGUgcG9pbnRlciB0byB0aGUgcmVzdWx0ICh0aGlyZCBvcGVyYW5kKSBhbGwgaGF2
ZSB0aGUgc2FtZSB0eXBlLg0KPiA+ID4+IE9uIDY0LWJpdCBidWlsZHMsIHVzaW5nIHNpemVfdCBj
YXVzZWQgYSBtaXNtYXRjaCB3aXRoIHRoZSB1MzIgZmllbGRzDQo+ID4gPj4gZWVwcm9tLT5vZmZz
ZXQgYW5kIGVlcHJvbS0+bGVuLCBsZWFkaW5nIHRvIHR5cGUgY2hlY2sgZmFpbHVyZXMuDQo+ID4g
Pj4NCj4gPiA+PiBGaXhlczogY2U4ODI5ZDNkNDRiICgiZTEwMDBlOiBmaXggaGVhcCBvdmVyZmxv
dyBpbiBlMTAwMF9zZXRfZWVwcm9tIikNCj4gPiA+PiBTaWduZWQtb2ZmLWJ5OiBFbGlhdiBGYXJi
ZXIgPGZhcmJlcmVAYW1hem9uLmNvbT4NCj4gPiA+PiAtLS0NCj4gPiA+PiAgZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2V0aHRvb2wuYyB8IDIgKy0NCj4gPiA+PiAgMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4gPj4NCj4gPiA+PiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2V0aHRvb2wuYw0KPiA+
ID4+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2V0aHRvb2wuYw0KPiA+ID4+
IGluZGV4IDRhY2E4NTQ3ODNlMi4uNTg0Mzc4MjkxZjNmIDEwMDY0NA0KPiA+ID4+IC0tLSBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9ldGh0b29sLmMNCj4gPiA+PiArKysgYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvZXRodG9vbC5jDQo+ID4gPj4gQEAgLTU1
OSw3ICs1NTksNyBAQCBzdGF0aWMgaW50IGUxMDAwX3NldF9lZXByb20oc3RydWN0IG5ldF9kZXZp
Y2UNCj4gPiA+PiAqbmV0ZGV2LCAgew0KPiA+ID4+ICAgICAgIHN0cnVjdCBlMTAwMF9hZGFwdGVy
ICphZGFwdGVyID0gbmV0ZGV2X3ByaXYobmV0ZGV2KTsNCj4gPiA+PiAgICAgICBzdHJ1Y3QgZTEw
MDBfaHcgKmh3ID0gJmFkYXB0ZXItPmh3Ow0KPiA+ID4+IC0gICAgIHNpemVfdCB0b3RhbF9sZW4s
IG1heF9sZW47DQo+ID4gPj4gKyAgICAgdTMyIHRvdGFsX2xlbiwgbWF4X2xlbjsNCj4gPiA+PiAg
ICAgICB1MTYgKmVlcHJvbV9idWZmOw0KPiA+ID4+ICAgICAgIGludCByZXRfdmFsID0gMDsNCj4g
PiA+PiAgICAgICBpbnQgZmlyc3Rfd29yZDsNCj4gPiA+PiAtLQ0KPiA+ID4+IDIuNDcuMw0KPiA+
ID4+DQo+ID4gPg0KPiA+ID4gV2h5IGlzIHRoaXMgbm90IG5lZWRlZCBpbiBMaW51cydzIHRyZWU/
DQo+ID4gS2VybmVsIDUuMTAuMjQzIGVuZm9yY2VzIHRoZSBzYW1lIHR5cGUsIGJ1dCB0aGlzIGVu
Zm9yY2VtZW50IGlzDQo+ID4gYWJzZW50IGZyb20gNS4xNS4xOTIgYW5kIGxhdGVyOg0KPiA+IC8q
DQo+ID4gICogRm9yIHNpbXBsaWNpdHkgYW5kIGNvZGUgaHlnaWVuZSwgdGhlIGZhbGxiYWNrIGNv
ZGUgYmVsb3cgaW5zaXN0cyBvbg0KPiA+ICAqIGEsIGIgYW5kICpkIGhhdmluZyB0aGUgc2FtZSB0
eXBlIChzaW1pbGFyIHRvIHRoZSBtaW4oKSBhbmQgbWF4KCkNCj4gPiAgKiBtYWNyb3MpLCB3aGVy
ZWFzIGdjYydzIHR5cGUtZ2VuZXJpYyBvdmVyZmxvdyBjaGVja2VycyBhY2NlcHQNCj4gPiAgKiBk
aWZmZXJlbnQgdHlwZXMuIEhlbmNlIHdlIGRvbid0IGp1c3QgbWFrZSBjaGVja19hZGRfb3ZlcmZs
b3cgYW4NCj4gPiAgKiBhbGlhcyBmb3IgX19idWlsdGluX2FkZF9vdmVyZmxvdywgYnV0IGFkZCB0
eXBlIGNoZWNrcyBzaW1pbGFyIHRvDQo+ID4gICogYmVsb3cuDQo+ID4gICovDQo+ID4gI2RlZmlu
ZSBjaGVja19hZGRfb3ZlcmZsb3coYSwgYiwgZCkgX19tdXN0X2NoZWNrX292ZXJmbG93KCh7ICBc
DQo+DQo+IFllYWgsIHRoZSBtaW4oKSBidWlsZCB3YXJuaW5nIG1lc3MgaXMgc2xvd2x5IHByb3Bh
Z2F0aW5nIGJhY2sgdG8gb2xkZXINCj4ga2VybmVscyBvdmVyIHRpbWUgYXMgd2UgdGFrZSB0aGVz
ZSB0eXBlcyBvZiBmaXhlcyBiYWNrd2FyZHMuICBJIGNvdW50IDMNCj4gc3VjaCBuZXcgd2Fybmlu
Z3MgaW4gdGhlIG5ldyA1LjEwIHJlbGVhc2UsIG5vdCBqdXN0IHRoaXMgc2luZ2xlIG9uZS4NCj4N
Cj4gT3ZlcmFsbCwgaG93IGFib3V0IGZpeGluZyB0aGlzIHVwIHNvIGl0IGRvZXNuJ3QgaGFwcGVu
IGFueW1vcmUgYnkNCj4gYmFja3BvcnRpbmcgdGhlIG1pbigpIGxvZ2ljIGluc3RlYWQ/ICBUaGF0
IHNob3VsZCBzb2x2ZSB0aGlzIGJ1aWxkDQo+IHdhcm5pbmcsIGFuZCBrZWVwIGl0IGZyb20gaGFw
cGVuaW5nIGFnYWluIGluIHRoZSBmdXR1cmU/ICBJIGRpZCB0aGF0IGZvcg0KPiBuZXdlciBrZXJu
ZWwgYnJhbmNoZXMsIGJ1dCBuZXZlciBnb3QgYXJvdW5kIHRvIGl0IGZvciB0aGVzZS4NCg0KSSBk
aWQgYmFja3BvcnRpbmcgb2YgNCBjb21taXRzIHRvIGJyaW5nIGluY2x1ZGUvbGludXgvb3ZlcmZs
b3cuaCBpbg0KbGluZSB3aXRoIHY1LjE1LjE5MyBpbiBvcmRlciB0byBwdWxsIGNvbW1pdCAxZDFh
YzgyNDRjMjIgKCJvdmVyZmxvdzoNCkFsbG93IG1peGVkIHR5cGUgYXJndW1lbnRzIikuDQpJJ2xs
IGFsc28gY2hlY2sgd2hhdCBjYW4gYmUgZG9uZSBmb3IgaW5jbHVkZS9saW51eC9taW5tYXguaC4N
Cg0KLS0tDQpSZWdhcmRzLCBFbGlhdg0K
