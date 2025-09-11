Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A69B52888
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Sep 2025 08:13:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E460B41916;
	Thu, 11 Sep 2025 06:13:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PmIdTAN6mSa9; Thu, 11 Sep 2025 06:13:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 58EBE41F0E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757571228;
	bh=Rd/zyPwRxZk0R7aXyuI7LZNuG4ltnWdMo8eFSAGvums=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rTqP3K2ket2qNQuTO+2r7kk21d8e60GTDpOXT3hjqJ/c0jGfupIh02TVJYe1CJ/k1
	 AYU/Ogp/RAWPnUSUjgIwOb+IsZRlKGiJNlkmi5MXEIIY5//uBKFuav/WvJ37QQpsBa
	 BU3DKjtbMk1vVuqCm0AwZreuTYrfVyiaYhjx6TkcVcLmIq1spG/tv0fGwK2Gu/5qDi
	 8JXCnohEcXpsW+qroFkivY9tei5/gDoA0seW5ydsarHUpq/lsyvFgInxH64qo4/rj9
	 ItOLyochaoIeWFXWDXbUpItJ2+RQ3LFsfweUjwUrUidzIeyHB8e+LkgPEsEKmlNQtH
	 77KYbNDqqCBTg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 58EBE41F0E;
	Thu, 11 Sep 2025 06:13:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3AA81443
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 06:13:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3214041638
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 06:13:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4q_j4cfXMeJA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Sep 2025 06:13:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=3.64.237.68;
 helo=fra-out-009.esa.eu-central-1.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=342e4b4af=farbere@amazon.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C9A0F41635
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C9A0F41635
Received: from fra-out-009.esa.eu-central-1.outbound.mail-perimeter.amazon.com
 (fra-out-009.esa.eu-central-1.outbound.mail-perimeter.amazon.com
 [3.64.237.68])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C9A0F41635
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 06:13:45 +0000 (UTC)
X-CSE-ConnectionGUID: LFQOPYTPQFKMfvgYTj0Q/A==
X-CSE-MsgGUID: vTdcenLPSNiInKJXfGztSw==
X-IronPort-AV: E=Sophos;i="6.18,256,1751241600"; 
   d="scan'208";a="1838185"
Thread-Topic: [PATCH 5.10.y] e1000e: fix EEPROM length types for overflow
 checks
Received: from ip-10-6-11-83.eu-central-1.compute.internal (HELO
 smtpout.naws.eu-central-1.prod.farcaster.email.amazon.dev) ([10.6.11.83])
 by internal-fra-out-009.esa.eu-central-1.outbound.mail-perimeter.amazon.com
 with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Sep 2025 06:13:34 +0000
Received: from EX19MTAEUA002.ant.amazon.com [54.240.197.232:1748]
 by smtpin.naws.eu-central-1.prod.farcaster.email.amazon.dev [10.0.14.93:2525]
 with esmtp (Farcaster)
 id 1011adb8-4646-4d00-906a-0b591a6b3797; Thu, 11 Sep 2025 06:13:34 +0000 (UTC)
X-Farcaster-Flow-ID: 1011adb8-4646-4d00-906a-0b591a6b3797
Received: from EX19D018EUA004.ant.amazon.com (10.252.50.85) by
 EX19MTAEUA002.ant.amazon.com (10.252.50.124) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Thu, 11 Sep 2025 06:13:34 +0000
Received: from EX19D018EUA004.ant.amazon.com (10.252.50.85) by
 EX19D018EUA004.ant.amazon.com (10.252.50.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Thu, 11 Sep 2025 06:13:33 +0000
Received: from EX19D018EUA004.ant.amazon.com ([fe80::e53:84f8:3456:a97d]) by
 EX19D018EUA004.ant.amazon.com ([fe80::e53:84f8:3456:a97d%3]) with mapi id
 15.02.2562.020; Thu, 11 Sep 2025 06:13:33 +0000
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
Thread-Index: AQHcInjMD5K1PZTplE6DLl3oGc4tIbSNe74AgAAD8ZA=
Date: Thu, 11 Sep 2025 06:13:33 +0000
Message-ID: <f524c24888924a999c3bb90de0099b78@amazon.com>
References: <20250910173138.8307-1-farbere@amazon.com>
 <2025091131-tractor-almost-6987@gregkh>
In-Reply-To: <2025091131-tractor-almost-6987@gregkh>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.85.143.172]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1757571226; x=1789107226;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=Rd/zyPwRxZk0R7aXyuI7LZNuG4ltnWdMo8eFSAGvums=;
 b=On5D7A9MfIXAThoa9OMI0AzqK4i6Nx+X+vZi8POqwgfMkcFm25orrwn2
 UBRYs9inxPdYxBrOBvvUHkCBtc1iKcw9yV+e/4L0h0zq65nJVaurBSVLZ
 OYbtPhDDAVqwV8u3HF1pLEtPETk0QtdJgZrc/oFOFS7GQm+l5QjYs3ZtM
 7I6kTZ/0Fmil0Vct3d456EC3PRgqW5I2IZ7imN46A1PsdfWU3Zn+KcCpH
 mX8TfQLqObfXwSfCIJ4y/Gvd26WwLqt7bCaUdAfZNfNx9kPeHoukvFaJb
 E3Rwl5vo9MK5up5fU4El7/HJj6xHK1jZfkWgadKMa0ElZcRcaKZHD4lAS
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=On5D7A9M
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

PiBPbiBXZWQsIFNlcCAxMCwgMjAyNSBhdCAwNTozMTozOFBNICswMDAwLCBFbGlhdiBGYXJiZXIg
d3JvdGU6DQo+PiBGaXggYSBjb21waWxhdGlvbiBmYWlsdXJlIHdoZW4gd2FybmluZ3MgYXJlIHRy
ZWF0ZWQgYXMgZXJyb3JzOg0KPj4NCj4+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAw
ZS9ldGh0b29sLmM6IEluIGZ1bmN0aW9uIOKAmGUxMDAwX3NldF9lZXByb23igJk6DQo+PiAuL2lu
Y2x1ZGUvbGludXgvb3ZlcmZsb3cuaDo3MToxNTogZXJyb3I6IGNvbXBhcmlzb24gb2YgZGlzdGlu
Y3QgcG9pbnRlciB0eXBlcyBsYWNrcyBhIGNhc3QgWy1XZXJyb3JdDQo+PiAgICA3MSB8ICAodm9p
ZCkgKCZfX2EgPT0gX19kKTsgICBcDQo+PiAgICAgICB8ICAgICAgICAgICAgICAgXn4NCj4+IGRy
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9ldGh0b29sLmM6NTgyOjY6IG5vdGU6IGlu
IGV4cGFuc2lvbiBvZiBtYWNybyDigJhjaGVja19hZGRfb3ZlcmZsb3figJkNCj4+ICAgNTgyIHwg
IGlmIChjaGVja19hZGRfb3ZlcmZsb3coZWVwcm9tLT5vZmZzZXQsIGVlcHJvbS0+bGVuLCAmdG90
YWxfbGVuKSB8fA0KPj4gICAgICAgfCAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fg0KPj4NCj4+IFRv
IGZpeCB0aGlzLCBjaGFuZ2UgdG90YWxfbGVuIGFuZCBtYXhfbGVuIGZyb20gc2l6ZV90IHRvIHUz
MiBpbiANCj4+IGUxMDAwX3NldF9lZXByb20oKS4NCj4+IFRoZSBjaGVja19hZGRfb3ZlcmZsb3co
KSBoZWxwZXIgcmVxdWlyZXMgdGhhdCB0aGUgZmlyc3QgdHdvIG9wZXJhbmRzIA0KPj4gYW5kIHRo
ZSBwb2ludGVyIHRvIHRoZSByZXN1bHQgKHRoaXJkIG9wZXJhbmQpIGFsbCBoYXZlIHRoZSBzYW1l
IHR5cGUuDQo+PiBPbiA2NC1iaXQgYnVpbGRzLCB1c2luZyBzaXplX3QgY2F1c2VkIGEgbWlzbWF0
Y2ggd2l0aCB0aGUgdTMyIGZpZWxkcw0KPj4gZWVwcm9tLT5vZmZzZXQgYW5kIGVlcHJvbS0+bGVu
LCBsZWFkaW5nIHRvIHR5cGUgY2hlY2sgZmFpbHVyZXMuDQo+Pg0KPj4gRml4ZXM6IGNlODgyOWQz
ZDQ0YiAoImUxMDAwZTogZml4IGhlYXAgb3ZlcmZsb3cgaW4gZTEwMDBfc2V0X2VlcHJvbSIpDQo+
PiBTaWduZWQtb2ZmLWJ5OiBFbGlhdiBGYXJiZXIgPGZhcmJlcmVAYW1hem9uLmNvbT4NCj4+IC0t
LQ0KPj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9ldGh0b29sLmMgfCAyICst
DQo+PiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+Pg0K
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9ldGh0b29s
LmMgDQo+PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9ldGh0b29sLmMNCj4+
IGluZGV4IDRhY2E4NTQ3ODNlMi4uNTg0Mzc4MjkxZjNmIDEwMDY0NA0KPj4gLS0tIGEvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2V0aHRvb2wuYw0KPj4gKysrIGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2V0aHRvb2wuYw0KPj4gQEAgLTU1OSw3ICs1NTksNyBA
QCBzdGF0aWMgaW50IGUxMDAwX3NldF9lZXByb20oc3RydWN0IG5ldF9kZXZpY2UgDQo+PiAqbmV0
ZGV2LCAgew0KPj4gICAgICAgc3RydWN0IGUxMDAwX2FkYXB0ZXIgKmFkYXB0ZXIgPSBuZXRkZXZf
cHJpdihuZXRkZXYpOw0KPj4gICAgICAgc3RydWN0IGUxMDAwX2h3ICpodyA9ICZhZGFwdGVyLT5o
dzsNCj4+IC0gICAgIHNpemVfdCB0b3RhbF9sZW4sIG1heF9sZW47DQo+PiArICAgICB1MzIgdG90
YWxfbGVuLCBtYXhfbGVuOw0KPj4gICAgICAgdTE2ICplZXByb21fYnVmZjsNCj4+ICAgICAgIGlu
dCByZXRfdmFsID0gMDsNCj4+ICAgICAgIGludCBmaXJzdF93b3JkOw0KPj4gLS0NCj4+IDIuNDcu
Mw0KPj4NCj4NCj4gV2h5IGlzIHRoaXMgbm90IG5lZWRlZCBpbiBMaW51cydzIHRyZWU/DQpLZXJu
ZWwgNS4xMC4yNDMgZW5mb3JjZXMgdGhlIHNhbWUgdHlwZSwgYnV0IHRoaXMgZW5mb3JjZW1lbnQg
aXMNCmFic2VudCBmcm9tIDUuMTUuMTkyIGFuZCBsYXRlcjoNCi8qDQogKiBGb3Igc2ltcGxpY2l0
eSBhbmQgY29kZSBoeWdpZW5lLCB0aGUgZmFsbGJhY2sgY29kZSBiZWxvdyBpbnNpc3RzIG9uDQog
KiBhLCBiIGFuZCAqZCBoYXZpbmcgdGhlIHNhbWUgdHlwZSAoc2ltaWxhciB0byB0aGUgbWluKCkg
YW5kIG1heCgpDQogKiBtYWNyb3MpLCB3aGVyZWFzIGdjYydzIHR5cGUtZ2VuZXJpYyBvdmVyZmxv
dyBjaGVja2VycyBhY2NlcHQNCiAqIGRpZmZlcmVudCB0eXBlcy4gSGVuY2Ugd2UgZG9uJ3QganVz
dCBtYWtlIGNoZWNrX2FkZF9vdmVyZmxvdyBhbg0KICogYWxpYXMgZm9yIF9fYnVpbHRpbl9hZGRf
b3ZlcmZsb3csIGJ1dCBhZGQgdHlwZSBjaGVja3Mgc2ltaWxhciB0bw0KICogYmVsb3cuDQogKi8N
CiNkZWZpbmUgY2hlY2tfYWRkX292ZXJmbG93KGEsIGIsIGQpIF9fbXVzdF9jaGVja19vdmVyZmxv
dygoewlcDQogDQo+IEFsc28sIHdoeSBpcyBpdCBub3QgY2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5v
cmc/DQpBZGRlZCB0byBjYy4NCg0KLS0tDQpSZWdhcmRzLCBFbGlhdg0K
