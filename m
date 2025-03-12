Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B56F8A5E688
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Mar 2025 22:24:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2CC114122E;
	Wed, 12 Mar 2025 21:24:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DoKI9ZktWwTa; Wed, 12 Mar 2025 21:24:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF15241233
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741814665;
	bh=95gP9x0gIV+8tJ7PSqJMluc3pg6aBPayZJybf6IhrNk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LTyqkptW/2YrIQfKE3XQMWxIPzqObYIL3Hw90psWbBQ8/WnJ3X9UDXPU615bRY4IQ
	 rF9Pa4t1dm7p8RP3+v+ieC9wx8kDH+HXFuQSAEKSrtH7k5xl4sWuPACDjXwiXMQjIC
	 ZeQuPKGB8QX30HaBxUf+aPQI8WrJ69EbySqFpYZuoUJfYWVX6njwCOVmg3aqqJPGDS
	 5WRubTg/15sJOdcNzzHpDJDeWcnFWcoMD3YwMRCtZHWeGj+Ee6kgaczqL4I6LKbXWy
	 Dqz3EOdDWoeDDjuBXLesgKsT4JjhhtZ6GThEarDB7FV93h6CqC1zraFyjWr/BQUanz
	 TmsWBTjQ53XdA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF15241233;
	Wed, 12 Mar 2025 21:24:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id E9C931E1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 21:24:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CDF5E60827
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 21:24:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QFV-_9Q4_yhY for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Mar 2025 21:24:22 +0000 (UTC)
X-Greylist: delayed 477 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 12 Mar 2025 21:24:21 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 859A0607E9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 859A0607E9
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=202.36.163.20;
 helo=gate2.alliedtelesis.co.nz;
 envelope-from=hamish.martin@alliedtelesis.co.nz; receiver=<UNKNOWN> 
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz
 [202.36.163.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 859A0607E9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 21:24:20 +0000 (UTC)
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 403432C00BF;
 Thu, 13 Mar 2025 10:16:20 +1300 (NZDT)
Received: from svr-chch-ex2.atlnz.lc (Not Verified[2001:df5:b000:bc8::76]) by
 svr-chch-seg1.atlnz.lc with Trustwave SEG (v8, 2, 6, 11305)
 id <B67d1f9a40000>; Thu, 13 Mar 2025 10:16:20 +1300
Received: from svr-chch-ex2.atlnz.lc (2001:df5:b000:bc8:f753:6de:11c0:a008) by
 svr-chch-ex2.atlnz.lc (2001:df5:b000:bc8:f753:6de:11c0:a008) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 13 Mar 2025 10:16:20 +1300
Received: from svr-chch-ex2.atlnz.lc ([fe80::a9eb:c9b7:8b52:9567]) by
 svr-chch-ex2.atlnz.lc ([fe80::a9eb:c9b7:8b52:9567%15]) with mapi id
 15.02.1544.014; Thu, 13 Mar 2025 10:16:19 +1300
From: Hamish Martin <Hamish.Martin@alliedtelesis.co.nz>
To: "andrew@lunn.ch" <andrew@lunn.ch>
CC: "przemyslaw.kitszel@intel.com" <przemyslaw.kitszel@intel.com>,
 "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [PATCH net] igb: Prevent IPCFGN write resetting autoneg
 advertisement register
Thread-Index: AQHbkv4NyugObaZ6WE6A62N1bqpTJrNunxEAgACJA4A=
Date: Wed, 12 Mar 2025 21:16:19 +0000
Message-ID: <9455a623aaeb08999eec9202459d266f22432c00.camel@alliedtelesis.co.nz>
References: <20250312032251.2259794-1-hamish.martin@alliedtelesis.co.nz>
 <eae8e09c-f571-4016-b11d-88611a2b368f@lunn.ch>
In-Reply-To: <eae8e09c-f571-4016-b11d-88611a2b368f@lunn.ch>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.33.24.10]
Content-Type: text/plain; charset="utf-8"
Content-ID: <6AE8EE968141F6499BC26C45B57FF850@alliedtelesis.co.nz>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-SEG-SpamProfiler-Analysis: v=2.4 cv=ccpxrWDM c=1 sm=1 tr=0 ts=67d1f9a4
 a=Xf/6aR1Nyvzi7BryhOrcLQ==:117 a=xqWC_Br6kY4A:10 a=G-b9TgLbWs4A:10
 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=6JeRrGpNqYz-meT2EE4A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-SEG-SpamProfiler-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=alliedtelesis.co.nz; 
 s=mail181024; t=1741814180;
 bh=95gP9x0gIV+8tJ7PSqJMluc3pg6aBPayZJybf6IhrNk=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=JU85+wX6+L3EkydojvbWvyHxMJTNC9e+yw08ygnDLN8nlaGNHZdxFWlDcwNJzOmE4
 Odz0yxJ0JM+apBwiFwEXyKLC9v9YH78AEwjvqTi+qNbQ02Zdf6ztzyeK13zlK3XUyS
 ITevG0gFzpfPbC+1LXP/tAKPETl0mwJpmZdRFwh77l9X/AydmlgrmfeAfXNAMxqZrn
 6S9jw58f/C7VTsKg7VFKE9+s8HdcC3L4FBCMKU6bmFBdNS1jUrcQMg/5Fb6u4ou9Vt
 0fAIMQJnLdUf0utI32KkA7L0APItZYwvXpU5NgtY4DJSJfZLTL+YwCQColH3bo5nzo
 ++pnLV4ba7NQA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=alliedtelesis.co.nz
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz
 header.a=rsa-sha256 header.s=mail181024 header.b=JU85+wX6
Subject: Re: [Intel-wired-lan] [PATCH net] igb: Prevent IPCFGN write
 resetting autoneg advertisement register
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

T24gV2VkLCAyMDI1LTAzLTEyIGF0IDE0OjA1ICswMTAwLCBBbmRyZXcgTHVubiB3cm90ZToNCj4g
T24gV2VkLCBNYXIgMTIsIDIwMjUgYXQgMDQ6MjI6NTBQTSArMTMwMCwgSGFtaXNoIE1hcnRpbiB3
cm90ZToNCj4gPiBBbiBpc3N1ZSBpcyBvYnNlcnZlZCBvbiB0aGUgaTIxMCB3aGVuIGF1dG9uZWdv
dGlhdGlvbiBhZHZlcnRpc2VtZW50DQo+ID4gaXMgc2V0DQo+ID4gdG8gYSBzcGVjaWZpYyBzdWJz
ZXQgb2YgdGhlIHN1cHBvcnRlZCBzcGVlZHMgYnV0IHRoZSByZXF1ZXN0ZWQNCj4gPiBzZXR0aW5n
cw0KPiA+IGFyZSBub3QgY29ycmVjdGx5IHNldCBpbiB0aGUgQ29wcGVyIEF1dG8tTmVnb3RpYXRp
b24gQWR2ZXJ0aXNlbWVudA0KPiA+IFJlZ2lzdGVyDQo+ID4gKFBhZ2UgMCwgUmVnaXN0ZXIgNCku
DQo+ID4gSW5pdGlhbGx5LCB0aGUgYWR2ZXJ0aXNlbWVudCByZWdpc3RlciBpcyBjb3JyZWN0bHkg
c2V0IGJ5IHRoZQ0KPiA+IGRyaXZlciBjb2RlDQo+ID4gKGluIGlnYl9waHlfc2V0dXBfYXV0b25l
ZygpKSBidXQgdGhpcyByZWdpc3RlcidzIGNvbnRlbnRzIGFyZQ0KPiA+IG1vZGlmaWVkIGFzIGEN
Cj4gPiByZXN1bHQgb2YgYSBsYXRlciB3cml0ZSB0byB0aGUgSVBDTkZHIHJlZ2lzdGVyIGluDQo+
ID4gaWdiX3NldF9lZWVfaTM1MCgpLiBJdCBpcw0KPiA+IHVuY2xlYXIgd2hhdCB0aGUgbWVjaGFu
aXNtIGlzIGZvciB0aGUgd3JpdGUgb2YgdGhlIElQQ05GRyByZWdpc3Rlcg0KPiA+IHRvIGxlYWQN
Cj4gPiB0byB0aGUgY2hhbmdlIGluIHRoZSBhdXRvbmVnIGFkdmVydGlzZW1lbnQgcmVnaXN0ZXIu
DQo+ID4gVGhlIGlzc3VlIGNhbiBiZSBvYnNlcnZlZCBieSwgZm9yIGV4YW1wbGUsIHJlc3RyaWN0
aW5nIHRoZQ0KPiA+IGFkdmVydGlzZWQgc3BlZWQNCj4gPiB0byBqdXN0IDEwTUZ1bGwuIFRoZSBl
eHBlY3RlZCByZXN1bHQgd291bGQgYmUgdGhhdCB0aGUgbGluayB3b3VsZA0KPiA+IGNvbWUgdXAN
Cj4gPiBhdCAxME1GdWxsLCBidXQgYWN0dWFsbHkgdGhlIHBoeSBlbmRzIHVwIGFkdmVydGlzaW5n
IGEgZnVsbCBzdWl0ZQ0KPiA+IG9mIHNwZWVkcw0KPiA+IGFuZCB0aGUgbGluayB3aWxsIGNvbWUg
dXAgYXQgMTAwTUZ1bGwuDQo+ID4gDQo+ID4gVGhlIHByb2JsZW0gaXMgYXZvaWRlZCBieSBlbnN1
cmluZyB0aGF0IHRoZSB3cml0ZSB0byB0aGUgSVBDTkZHDQo+ID4gcmVnaXN0ZXINCj4gPiBvY2N1
cnMgYmVmb3JlIHRoZSB3cml0ZSB0byB0aGUgYXV0b25lZyBhZHZlcnRpc2VtZW50IHJlZ2lzdGVy
Lg0KPiANCj4gV2hlbiB5b3Ugc2V0IHRoZSBhZHZlcnRpc2VtZW50IGZvciBvbmx5IDEwQmFzZVQg
RnVsbCwgd2hhdCBFRUUNCj4gc2V0dGluZ3MgYXJlIGFwcGxpZWQ/IEl0IGNvdWxkIGJlIHRoYXQg
Y2FsbGluZyBpZ2Jfc2V0X2VlZV9pMzUwKCkgdG8NCj4gYWR2ZXJ0aXNlIEVFRSBmb3IgMTAwQmFz
ZVQgRnVsbCBhbmQgMTAwMEJhc2VUIEZ1bGwsIHdoaWxlIG9ubHkNCj4gYWR2ZXJ0aXNpbmcgbGlu
ayBtb2RlIDEwQmFzZVQgY2F1c2VzIHRoZSBjaGFuZ2UgdG8gdGhlIGF1dG9uZWcNCj4gcmVnaXN0
ZXIuDQo+IA0KPiBQbGVhc2UgdHJ5IG9ubHkgYWR2ZXJ0aXNpbmcgRUVFIG1vZGVzIHdoaWNoIGZp
dCB3aXRoIHRoZSBiYXNpYyBsaW5rDQo+IG1vZGUgYWR2ZXJ0aXNpbmcuDQo+IA0KPiDCoMKgwqDC
oCBBbmRyZXcNCkhpIEFuZHJldywNCg0KVGhhbmtzIGZvciB5b3VyIGZlZWRiYWNrLiBJJ2xsIHRy
eSBhbmQgZ2l2ZSBtb3JlIGRldGFpbCBhYm91dCB3aGF0J3MNCmhhcHBlbmluZyB3aXRoIGEgY29u
Y3JldGUgZXhhbXBsZS4NCg0KSWYgd2Ugc3RhcnQgd2l0aCB0aGUgZGV2aWNlIGluIGEgc3RhdGUg
d2hlcmUgaXQgaXMgYWR2ZXJ0aXNpbmc6DQoxMDAwQmFzZVQgRnVsbA0KMTAwYmFzZVQgRnVsbA0K
MTAwYmFzZVQgSGFsZg0KMTBiYXNlVCBGdWxsDQoxMGJhc2VUIEhhbGYNCkkgc2VlIHRoZSBmb2xs
b3dpbmcgc2V0dGluZ3MgaW4gdGhlIGF1dG9uZWcgcmVsYXRlZCByZWdpc3RlcnM6DQowLjQgPSAw
eDBkZTEgKFBIWV9BVVRPTkVHX0FEVikNCjAuOSA9IDB4MDIwMCAoUEhZXzEwMDBUX0NUUkwpDQoN
CkVFRSBpcyBkaXNhYmxlZC4NCg0KSWYgSSB0aGVuIGFkanVzdCB0aGUgYWR2ZXJ0aXNlbWVudCB0
byBvbmx5IGFkdmVydGlzZSAxMDAwQmFzZVQgRnVsbCBhbmQNCjEwMGJhc2VUIEZ1bGwgd2l0aDoN
CiMgZXRodG9vbCAtcyBldGgwIGFkdmVydGlzZSAweDI4DQpJIHNlZSB0aGUgZm9sbG93aW5nIHdy
aXRlcyB0byB0aGUgcmVnaXN0ZXJzOg0KMS4gSW4gaWdiX3BoeV9zZXR1cF9hdXRvbmVnKCkgUEhZ
X0FVVE9ORUdfQURWIGlzIHdyaXR0ZW4gd2l0aCAweDAxMDENCih0aGUgY29ycmVjdCB2YWx1ZSkN
CjIuIExhdGVyIGluIGlnYl9waHlfc2V0dXBfYXV0b25lZygpIFBIWV8xMDAwVF9DVFJMIGlzIHdy
aXR0ZW4gd2l0aA0KMHgwMjAwIChjb3JyZWN0KQ0KMy4gQXV0b25lZyBnZXRzIHJlc3RhcnRlZCBp
biBpZ2JfY29wcGVyX2xpbmtfYXV0b25lZygpIHdpdGggUEhZX0NPTlRST0wNCigwLjApIGJlaW5n
IHdyaXR0ZW4gd2l0aCAweDEzNDANCihldmVyeXRoaW5nIGxvb2tzIGZpbmUgdXAgdW50aWwgaGVy
ZSkNCjQuIE5vdyB3ZSByZWFjaCBpZ2Jfc2V0X2VlZV9pMzUwKCkuIEhlcmUgd2UgcmVhZCBpbiBJ
UENORkcgYW5kIGl0IGhhcw0KdmFsdWUgMHhmLiBFRUUgaXMgZGlzYWJsZWQgc28gd2UgaGl0IHRo
ZSAnZWxzZScgY2FzZSBhbmQgcmVtb3ZlDQpFMTAwMF9JUENORkdfRUVFXzFHX0FOIGFuZCBFMTAw
MF9JUENORkdfRUVFXzEwME1fQU4gZnJvbSB0aGUgJ2lwY25mZycNCnZhbHVlLiBXZSB0aGVuIHdy
aXRlIHRoaXMgYmFjayBhcyAweDMuIEF0IHRoaXMgcG9pbnQsIGlmIHlvdSByZS1yZWFkDQpQSFlf
QVVUT05FR19BRFYgeW91IHdpbGwgc2VlIGl0J3MgY29udGVudHMgaGFzIGJlZW4gcmVzZXQgdG8g
MHgwZGUxLg0KDQpJZiB5b3UgcnVuIHRoZSBzYW1lIGV4YW1wbGUgYWJvdmUgYnV0IHdpdGggRUVF
IGVuYWJsZWQgKGV0aHRvb2wgLS1zZXQtDQplZWUgZXRoMCBlZWUgb247IGV0aHRvb2wgLXMgZXRo
MCBhZHZlcnRpc2UgMHgyOCkgdGhlIGlzc3VlIGlzIG5vdCBzZWVuLg0KSW4gdGhpcyBjYXNlIHRo
ZSBjb250ZW50cyBvZiBJUENORkcgYXJlIHdyaXR0ZW4gYmFjayB1bm1vZGlmaWVkIGFzIDB4Zi4N
ClRoaXMgc2VlbXMgaW1wb3J0YW50IHRvIGF2b2lkIHRoZSBidWcuDQoNCkl0IHNlZW1zIHRoYXQg
YW55IGNhc2Ugd2hlcmUgRUVFIGlzIGRpc2FibGVkIHdpbGwgbGVhZCB0byB0aGUNCnVuZGVzaXJh
YmxlIGJlaGF2aW91ciB3aGVyZSB0aGUgY29udGVudHMgb2YgUEhZX0FVVE9ORUdfQURWIGlzIHJl
c2V0IHRvDQoweDBkZTEuIFRoZSBrZXkgdHJpZ2dlciBmb3IgdGhpcyBhcHBlYXJzIHRvIGJlIGNo
YW5nZXMgdG8gZWl0aGVyIG9yDQpib3RoIG9mIEVFRV8xMDBNX0FOIGFuZCBFRUVfMUdfQU4gaW4g
SVBDTkZHLiBUaGUgZGF0YXNoZWV0IGRvZXMgbm90ZQ0KdGhhdCAiQ2hhbmdpbmcgdmFsdWUgb2Yg
Yml0IGNhdXNlcyBsaW5rIGRyb3AgYW5kIHJlLW5lZ290aWF0aW9uIiAtIHdoYXQNCkkgc2VlIGlz
IGEgbG90IG1vcmUgdGhhbiB0aGF0IGJ1dCB0aGVyZSBkb2VzIGF0IGxlYXN0IHNlZW0gdG8gYmUg
c29tZQ0KYWNrbm93bGVkZ2VtZW50IG9mIGEgcG9zc2libGUgbGluayB0byB0aGUgaXNzdWUgSSBz
ZWUuDQoNCkl0IHNlZW1zIHRoZSBpbnRlbnQgb2YgdGhlIGNvZGUgaW4gdGhlIGVsc2UgY2FzZSB0
aGF0IG1vZGlmaWVzIElQQ05GRw0KaXMgdG8gbWFrZSBFRUUgcmVhbGx5IHJlYWxseSAib2ZmIi4g
QnV0IHBlcmhhcHMgd2UgY291bGQganVzdCBhdm9pZA0KYWx0ZXJpbmcgSVBDTkZHIGFsdG9nZXRo
ZXIgaW4gdGhlIEVFRSBkaXNhYmxlZCBjYXNlIGFuZCByZWx5IG9uDQpjb250cm9sbGluZyBFRUUg
d2l0aCB0aGUgRUVFUiByZWdpc3RlciBvbmx5PyBJZiBJIG1ha2UgdGhhdCBjaGFuZ2UNCmluc3Rl
YWQgbXkgaXNzdWVzIGdvIGF3YXkuDQoNCldoYXQncyB5b3VyIG9waW5pb24gb24gdGhhdCBsZXNz
IGludmFzaXZlIGZpeCAoaS5lIHJlbW92ZSAiaXBjbmZnICY9DQp+KEUxMDAwX0lQQ05GR19FRUVf
MUdfQU4gfCBFMTAwMF9JUENORkdfRUVFXzEwME1fQU4pOyIgKT8gSXMgaXQNCnN1ZmZpY2llbnQg
dG8gcmVseSBvbiB0aGUgRUVFUiBzZXR0aW5ncyB0byBjb250cm9sIGRpc2FibGluZyBFRUUgd2l0
aA0KdGhlIElQQ05GRyByZWdpc3RlciBzdGlsbCBzZXQgdG8gYWR2ZXJ0aXNlIHRob3NlIG1vZGVz
Pw0KDQpUaGFua3MsDQpIYW1pc2ggTQ0KDQo=
