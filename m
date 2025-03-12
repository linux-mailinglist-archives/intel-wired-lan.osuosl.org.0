Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D34EA5E79E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Mar 2025 23:41:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8F22F606E5;
	Wed, 12 Mar 2025 22:41:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HZuGAPuWk-lO; Wed, 12 Mar 2025 22:41:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5D15360753
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741819282;
	bh=7DHy57CpyOxSr6hI4XZcYB+GF56qgoUeRs1OWO3ngOk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=B+C5/hwXllaZH+IQ/8vrAGYArTM/75LgRyR7olhyqoiBNPQqtzjVVa2B5ySMFdx9W
	 C67MBlClJWaWK446ZicM5mpEtBXEgwF/4dtckCBnqLIJV6kl9JCBx5EZWsdulYRXvB
	 edmcU8piQpj4LrR0EyXdu/BuT4SA8UqU1oGeOheRPNmUYosBbNtozw3rTU8Q9Wr+t0
	 FO1wTqS9AoTsx5/viqvuLQdB7feMQqWgeoakcGzX/WO2tnqQ9W68pZaOFHrT6SL+bO
	 138ZHDGnJAGXmdDySXfUeBiW4PQ3k/bNByAV1xd+tctJCax4F/yQQYqsBo9sgns8hE
	 /UuF3ewFjdkDQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5D15360753;
	Wed, 12 Mar 2025 22:41:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 48EE11E1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 22:41:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 257ED408E4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 22:41:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UiQHIL24Njoz for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Mar 2025 22:41:20 +0000 (UTC)
X-Greylist: delayed 5091 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 12 Mar 2025 22:41:18 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2FADF40883
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2FADF40883
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2001:df5:b000:5::4;
 helo=gate2.alliedtelesis.co.nz;
 envelope-from=hamish.martin@alliedtelesis.co.nz; receiver=<UNKNOWN> 
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz
 [IPv6:2001:df5:b000:5::4])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2FADF40883
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 22:41:17 +0000 (UTC)
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id A99562C012B;
 Thu, 13 Mar 2025 11:41:12 +1300 (NZDT)
Received: from svr-chch-ex2.atlnz.lc (Not Verified[2001:df5:b000:bc8::76]) by
 svr-chch-seg1.atlnz.lc with Trustwave SEG (v8, 2, 6, 11305)
 id <B67d20d880000>; Thu, 13 Mar 2025 11:41:12 +1300
Received: from svr-chch-ex2.atlnz.lc (2001:df5:b000:bc8:f753:6de:11c0:a008) by
 svr-chch-ex2.atlnz.lc (2001:df5:b000:bc8:f753:6de:11c0:a008) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 13 Mar 2025 11:41:12 +1300
Received: from svr-chch-ex2.atlnz.lc ([fe80::a9eb:c9b7:8b52:9567]) by
 svr-chch-ex2.atlnz.lc ([fe80::a9eb:c9b7:8b52:9567%15]) with mapi id
 15.02.1544.014; Thu, 13 Mar 2025 11:41:12 +1300
From: Hamish Martin <Hamish.Martin@alliedtelesis.co.nz>
To: "andrew@lunn.ch" <andrew@lunn.ch>
CC: "przemyslaw.kitszel@intel.com" <przemyslaw.kitszel@intel.com>,
 "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [PATCH net] igb: Prevent IPCFGN write resetting autoneg
 advertisement register
Thread-Index: AQHbkv4NyugObaZ6WE6A62N1bqpTJrNunxEAgACJA4CAABNUAIAABGMA
Date: Wed, 12 Mar 2025 22:41:12 +0000
Message-ID: <7d3012e870248ae3db4cde78983455d3ee52eebe.camel@alliedtelesis.co.nz>
References: <20250312032251.2259794-1-hamish.martin@alliedtelesis.co.nz>
 <eae8e09c-f571-4016-b11d-88611a2b368f@lunn.ch>
 <9455a623aaeb08999eec9202459d266f22432c00.camel@alliedtelesis.co.nz>
 <0486c877-cbb4-411b-9bd6-9b10306c47a6@lunn.ch>
In-Reply-To: <0486c877-cbb4-411b-9bd6-9b10306c47a6@lunn.ch>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.33.24.10]
Content-Type: text/plain; charset="utf-8"
Content-ID: <FB72F08C9C216C4C8A5CF7CF464FE2E5@alliedtelesis.co.nz>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-SEG-SpamProfiler-Analysis: v=2.4 cv=ccpxrWDM c=1 sm=1 tr=0 ts=67d20d88
 a=Xf/6aR1Nyvzi7BryhOrcLQ==:117 a=xqWC_Br6kY4A:10 a=G-b9TgLbWs4A:10
 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=ErtXPwngb1x9mck47YQA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-SEG-SpamProfiler-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=alliedtelesis.co.nz; 
 s=mail181024; t=1741819272;
 bh=7DHy57CpyOxSr6hI4XZcYB+GF56qgoUeRs1OWO3ngOk=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=Q8ZqBJZsCPKSrzgNWkDN8IE2N+r/hWMR8Rp9Z7obz8O2GN7VxMAKr37wxDWR8Gsbr
 szHJf+IVfDZAQ1YY9cTTaCmr6fQnsTWY9WKZ1tuDkfmRtKOWyQm4mJCkZJCQbnmbDS
 B/k8ygYNWytzzwvvStiuvAEjHl2z7iIWNHKli9iyilSTg+JKL6HCKfn48O63ClGowf
 4XhckthbsZTi/tDSVeuzFgBT9DS+BgRROcez3jkKWqID+eqTNpAPcg4m9ixfLJPkt+
 703VWiUVhSu0Zf0F9i9yxT1Pq/2XITVEQxAxYd0TWmwhJSJNIr4m8nQEBl2to0jtam
 Y1ow+4NiRTXVg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=alliedtelesis.co.nz
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz
 header.a=rsa-sha256 header.s=mail181024 header.b=Q8ZqBJZs
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

T24gV2VkLCAyMDI1LTAzLTEyIGF0IDIzOjI1ICswMTAwLCBBbmRyZXcgTHVubiB3cm90ZToNCj4g
PiBIaSBBbmRyZXcsDQo+ID4gDQo+ID4gVGhhbmtzIGZvciB5b3VyIGZlZWRiYWNrLiBJJ2xsIHRy
eSBhbmQgZ2l2ZSBtb3JlIGRldGFpbCBhYm91dA0KPiA+IHdoYXQncw0KPiA+IGhhcHBlbmluZyB3
aXRoIGEgY29uY3JldGUgZXhhbXBsZS4NCj4gPiANCj4gPiBJZiB3ZSBzdGFydCB3aXRoIHRoZSBk
ZXZpY2UgaW4gYSBzdGF0ZSB3aGVyZSBpdCBpcyBhZHZlcnRpc2luZzoNCj4gPiAxMDAwQmFzZVQg
RnVsbA0KPiA+IDEwMGJhc2VUIEZ1bGwNCj4gPiAxMDBiYXNlVCBIYWxmDQo+ID4gMTBiYXNlVCBG
dWxsDQo+ID4gMTBiYXNlVCBIYWxmDQo+ID4gSSBzZWUgdGhlIGZvbGxvd2luZyBzZXR0aW5ncyBp
biB0aGUgYXV0b25lZyByZWxhdGVkIHJlZ2lzdGVyczoNCj4gPiAwLjQgPSAweDBkZTEgKFBIWV9B
VVRPTkVHX0FEVikNCj4gPiAwLjkgPSAweDAyMDAgKFBIWV8xMDAwVF9DVFJMKQ0KPiA+IA0KPiA+
IEVFRSBpcyBkaXNhYmxlZC4NCj4gPiANCj4gPiBJZiBJIHRoZW4gYWRqdXN0IHRoZSBhZHZlcnRp
c2VtZW50IHRvIG9ubHkgYWR2ZXJ0aXNlIDEwMDBCYXNlVCBGdWxsDQo+ID4gYW5kDQo+ID4gMTAw
YmFzZVQgRnVsbCB3aXRoOg0KPiA+ICMgZXRodG9vbCAtcyBldGgwIGFkdmVydGlzZSAweDI4DQo+
ID4gSSBzZWUgdGhlIGZvbGxvd2luZyB3cml0ZXMgdG8gdGhlIHJlZ2lzdGVyczoNCj4gPiAxLiBJ
biBpZ2JfcGh5X3NldHVwX2F1dG9uZWcoKSBQSFlfQVVUT05FR19BRFYgaXMgd3JpdHRlbiB3aXRo
DQo+ID4gMHgwMTAxDQo+ID4gKHRoZSBjb3JyZWN0IHZhbHVlKQ0KPiA+IDIuIExhdGVyIGluIGln
Yl9waHlfc2V0dXBfYXV0b25lZygpIFBIWV8xMDAwVF9DVFJMIGlzIHdyaXR0ZW4gd2l0aA0KPiA+
IDB4MDIwMCAoY29ycmVjdCkNCj4gPiAzLiBBdXRvbmVnIGdldHMgcmVzdGFydGVkIGluIGlnYl9j
b3BwZXJfbGlua19hdXRvbmVnKCkgd2l0aA0KPiA+IFBIWV9DT05UUk9MDQo+ID4gKDAuMCkgYmVp
bmcgd3JpdHRlbiB3aXRoIDB4MTM0MA0KPiA+IChldmVyeXRoaW5nIGxvb2tzIGZpbmUgdXAgdW50
aWwgaGVyZSkNCj4gPiA0LiBOb3cgd2UgcmVhY2ggaWdiX3NldF9lZWVfaTM1MCgpLiBIZXJlIHdl
IHJlYWQgaW4gSVBDTkZHIGFuZCBpdA0KPiA+IGhhcw0KPiA+IHZhbHVlIDB4Zi4gRUVFIGlzIGRp
c2FibGVkIHNvIHdlIGhpdCB0aGUgJ2Vsc2UnIGNhc2UgYW5kIHJlbW92ZQ0KPiA+IEUxMDAwX0lQ
Q05GR19FRUVfMUdfQU4gYW5kIEUxMDAwX0lQQ05GR19FRUVfMTAwTV9BTiBmcm9tIHRoZQ0KPiA+
ICdpcGNuZmcnDQo+ID4gdmFsdWUuIFdlIHRoZW4gd3JpdGUgdGhpcyBiYWNrIGFzIDB4My4gQXQg
dGhpcyBwb2ludCwgaWYgeW91IHJlLQ0KPiA+IHJlYWQNCj4gPiBQSFlfQVVUT05FR19BRFYgeW91
IHdpbGwgc2VlIGl0J3MgY29udGVudHMgaGFzIGJlZW4gcmVzZXQgdG8NCj4gPiAweDBkZTEuDQo+
IA0KPiBUaGFua3MgZm9yIHRoZSBhZGRpdGlvbmFsIGRldGFpbHMuIFRoZXNlIHNob3VsZCBnbyBp
bnRvIHRoZSBjb21taXQNCj4gbWVzc2FnZS4NCk9LLCBJJ2xsIHVwZGF0ZSBpbnRvIGEgdjIgYXQg
c29tZSBwb2ludC4NCg0KPiANCj4gPiBJZiB5b3UgcnVuIHRoZSBzYW1lIGV4YW1wbGUgYWJvdmUg
YnV0IHdpdGggRUVFIGVuYWJsZWQgKGV0aHRvb2wgLS0NCj4gPiBzZXQtDQo+ID4gZWVlIGV0aDAg
ZWVlIG9uOyBldGh0b29sIC1zIGV0aDAgYWR2ZXJ0aXNlIDB4MjgpIHRoZSBpc3N1ZSBpcyBub3QN
Cj4gPiBzZWVuLg0KPiA+IEluIHRoaXMgY2FzZSB0aGUgY29udGVudHMgb2YgSVBDTkZHIGFyZSB3
cml0dGVuIGJhY2sgdW5tb2RpZmllZCBhcw0KPiA+IDB4Zi4NCj4gPiBUaGlzIHNlZW1zIGltcG9y
dGFudCB0byBhdm9pZCB0aGUgYnVnLg0KPiANCj4gWWVzLCBpdCBkb2VzIHNlZW0gbGlrZSB0aGUg
UEhZIGlzIGJyb2tlbi4NCj4gDQo+ID4gDQo+ID4gSXQgc2VlbXMgdGhhdCBhbnkgY2FzZSB3aGVy
ZSBFRUUgaXMgZGlzYWJsZWQgd2lsbCBsZWFkIHRvIHRoZQ0KPiA+IHVuZGVzaXJhYmxlIGJlaGF2
aW91ciB3aGVyZSB0aGUgY29udGVudHMgb2YgUEhZX0FVVE9ORUdfQURWIGlzDQo+ID4gcmVzZXQg
dG8NCj4gPiAweDBkZTEuIFRoZSBrZXkgdHJpZ2dlciBmb3IgdGhpcyBhcHBlYXJzIHRvIGJlIGNo
YW5nZXMgdG8gZWl0aGVyIG9yDQo+ID4gYm90aCBvZiBFRUVfMTAwTV9BTiBhbmQgRUVFXzFHX0FO
IGluIElQQ05GRy4gVGhlIGRhdGFzaGVldCBkb2VzDQo+ID4gbm90ZQ0KPiA+IHRoYXQgIkNoYW5n
aW5nIHZhbHVlIG9mIGJpdCBjYXVzZXMgbGluayBkcm9wIGFuZCByZS1uZWdvdGlhdGlvbiINCj4g
DQo+IFdoaWNoIGlzIHdoYXQgeW91IHdvdWxkIGV4cGVjdCwgc2luY2UgRUVFIGlzIG5lZ290aWF0
ZWQuIEJ1dA0KPiBpbXBsaWNpdGx5IGNoYW5naW5nIHRoZSBsaW5rIG1vZGVzIGFkdmVydGlzZWQg
aXMgbm90IHdoYXQgeW91IHdvdWxkDQo+IGV4cGVjdC4NCj4gDQo+IEJ5IHRoZSB3YXksIHdoYXQg
UEhZIGlzIHRoaXM/IEkgZG9uJ3QgcmVtZW1iZXIgc2VlaW5nIGFueSBlcnJhdGEgZm9yDQo+IExp
bnV4IFBIWSBkcml2ZXJzIHJlc2VtYmxpbmcgdGhpcy4NClRoZSBwaHkgaXMgaTIxMC4gSSd2ZSBh
bHNvIGNoZWNrZWQgZXJyYXRhIGFuZCBzZWUgbm90aGluZyBldmVuIHZhZ3VlbHkNCnJlbGF0ZWQg
dG8gdGhpcyBiZWhhdmlvdXIuDQoNCj4gDQo+ID4gV2hhdCdzIHlvdXIgb3BpbmlvbiBvbiB0aGF0
IGxlc3MgaW52YXNpdmUgZml4IChpLmUgcmVtb3ZlICJpcGNuZmcNCj4gPiAmPQ0KPiA+IH4oRTEw
MDBfSVBDTkZHX0VFRV8xR19BTiB8IEUxMDAwX0lQQ05GR19FRUVfMTAwTV9BTik7IiApPyBJcyBp
dA0KPiA+IHN1ZmZpY2llbnQgdG8gcmVseSBvbiB0aGUgRUVFUiBzZXR0aW5ncyB0byBjb250cm9s
IGRpc2FibGluZyBFRUUNCj4gPiB3aXRoDQo+ID4gdGhlIElQQ05GRyByZWdpc3RlciBzdGlsbCBz
ZXQgdG8gYWR2ZXJ0aXNlIHRob3NlIG1vZGVzPw0KPiANCj4gSSBhY3R1YWxseSB0aGluayB5b3Ug
bmVlZCB0byBkbyBtb3JlIHRlc3RpbmcuIEFzc3VtaW5nIHRoZSBQSFkgaXMgbm90DQo+IGV2ZW4g
bW9yZSBicm9rZW4gdGhhbiB3ZSB0aGluaywgaXQgc2hvdWxkIG5vdCBtYXR0ZXIgaWYgaXQgYWR2
ZXJ0aXNlcw0KPiBFRUUgbW9kZSBmb3IgbGluayBtb2RlcyB3aGljaCBhcmUgbm90IGFkdmVydGlz
ZWQuIFRoZSBsaW5rIHBhcnRuZXINCj4gc2hvdWxkIGlnbm9yZSB0aGVtLiBJdCB3b3VsZCBiZSBn
b29kIGlmIHlvdSB0ZXN0ZWQgb3V0IHZhcmlvdXMgRUVFDQo+IGNvbWJpbmF0aW9ucyBmcm9tIGJv
dGggbGluayBwYXJ0bmVycyBzaWRlcy4NCk9LLCBJJ2xsIGRvIHNvbWUgbW9yZSB0ZXN0aW5nIG9m
IHRoaXMgYWx0ZXJuYXRlIHBvdGVudGlhbCBmaXggYXJvdW5kDQpFRUUgYmVoYXZpb3VyIGFzIHlv
dSBzdWdnZXN0Lg0KDQo+IA0KPiBIb3dldmVyLCBzZXR0aW5nIEVFRSBhZHZlcnRpc2VtZW50IGFu
ZCB0aGVuIGFsd2F5cyBzZXR0aW5nIGxpbmsgbW9kZQ0KPiBhZHZlcnRpc2VtZW50IGRvZXMgc2Vl
bSBsaWtlIGEgZ29vZCB3b3JrYXJvdW5kLiBJdCB3b3VsZCBob3dldmVyIGJlDQo+IGdvb2QgdG8g
Z2V0IHNvbWUgc29ydCBvZiBmZWVkYmFjayBmcm9tIHRoZSBQSFkgc2lsaWNvbiB2ZW5kb3IgYWJv
dXQNCj4gdGhpcyBvZGQgYmVoYXZpb3VyLg0KWWVzLCBJJ20gaG9waW5nIFRvbnkgTmd1eWVuIGFu
ZC9vciBQcnplbWVrIEtpdHN6ZWwgZnJvbSBJbnRlbCBtaWdodCBiZQ0KYWJsZSB0byBzaGVkIG1v
cmUgbGlnaHQgb24gdGhlIHVuZGVybHlpbmcgcHJvYmxlbS4gSSdsbCB3YWl0IGZvciB0aGVtDQpv
ciBhbnlvbmUgZWxzZSB0byB3ZWlnaCBpbi4NCg0KVGhhbmtzLA0KSGFtaXNoIE0NCg0K
