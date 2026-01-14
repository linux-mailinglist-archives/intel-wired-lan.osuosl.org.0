Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F0745D1CCAA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jan 2026 08:19:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 52DC2808AC;
	Wed, 14 Jan 2026 07:19:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XccGXrOQBlSM; Wed, 14 Jan 2026 07:19:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BDD32808CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768375161;
	bh=w2JQbYike37s8pXtIOzlkR0AUFRs7qVn2gHkmKt7qwQ=;
	h=To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=GafB82tMMuDo69sozGu94tz+sqiQAYJajBUbPaz1IPZDTb0GnkdPS2cEgSKupgJ09
	 UmyRnCxv1j4zmG3Zd2oCk2KFo447Q50eN/s1w78bZycpUuyHmRQIwQLX08qjcR3grE
	 31PukNWirPq8n4twq4pDrOKzqYNZvdyjAcJyBmiOf7isnQMDhn0R+HbJehthyBohg5
	 gZ8KGGPlzmy1TfDQTt59209LQ1qRBC17cTx5bpQZdxZgAhVWjKC0hYy6Vnc7ItJ1kk
	 rWu6GtzfiyRSLkeyySsBFla4WpNSK2Vfm/Yovhao6iFUV3SvbBMK/UeUgImCiM7HlA
	 iBLBTGbfceVdA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BDD32808CA;
	Wed, 14 Jan 2026 07:19:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4A9381C3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jan 2026 07:19:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3C1BF42D07
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jan 2026 07:19:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 78UZCKCkN7aL for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jan 2026 07:19:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=160.53.250.24;
 helo=gwsmtp.ge.ch; envelope-from=jeremie.wenger@edu.ge.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 11A1642D06
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 11A1642D06
Received: from gwsmtp.ge.ch (smtpsw24.ge.ch [160.53.250.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 11A1642D06
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jan 2026 07:19:16 +0000 (UTC)
To: Jakub Kicinski <kuba@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Przemek
 Kitszel" <przemyslaw.kitszel@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>
Thread-Index: AQHcgKY4vqPf4k7m6ECp9OMR6mOttLVJlHgAgAdTJwCAAGBwmA==
Date: Wed, 14 Jan 2026 07:19:12 +0000
Message-ID: <33854287fd02403093ff9f7dfa6412f1@edu.ge.ch>
References: <c8bd43a3053047dba7999102920d37c9@edu.ge.ch>
 <01412a4684684995ac35b4d6dba75853@edu.ge.ch>,
 <20260113182400.723e34a1@kernel.org>
In-Reply-To: <20260113182400.723e34a1@kernel.org>
Accept-Language: fr-CH, en-US
Content-Language: fr-CH
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-FEAS-BEC-Info: WlpIGw0aAQkEARIJHAEHBlJSCRoLAAEeDUhZUEhYSFhIWUhZXkguLUVaIy48WlpbWFhYWFldSFpcSAINGg0FAQ1GHw0GDw0aKA0MHUYPDUYLAEhZSFpaSAYNHAwNHigeDw0aRgMNGgYNBEYHGg9IWEhaSFlbSFlYRllcXUZQXkZZX1lIUEhYSFhIXEhYSFhIWEhaXkgJBhwABwYRRgRGBg8dEQ0GKAEGHA0ERgsHBUhYSFtaSAEGHA0ERR8BGg0MRQQJBigEARscG0YHGx0HGwRGBxoPSFhIWV1IAx0KCSgDDRoGDQRGBxoPSFhIWlBIBAEGHRBFAw0aBg0EKB4PDRpGAw0aBg0ERgcaD0hY
X-SM-outgoing: yes
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; d=edu.ge.ch;
 s=GVA21; c=relaxed/relaxed; 
 h=from:to:cc:subject:date:message-id:references:content-type:mime-version;
 bh=w2JQbYike37s8pXtIOzlkR0AUFRs7qVn2gHkmKt7qwQ=;
 b=BSOkvRFZne7MtqSHfq5YpBfAyUZBw9Qd+E4GqSyhMykUN+IGqE4DDimvX6xz+0MLEo4VPOrPm4CW
 VZbNVeUbyvtmhRJ9KLSYLaACI/iiMfLFyprvpulp//u7PJE5+NCtZCys3T+Kiau5uvjo6pqYEpMS
 IC4Qtw0XXQxeebXmSBHO6uPlwZe2PQ0c3bPGpWgUDYmyirOVIxf+D0xCdJNkA8OhunWvHkHMQJiN
 lId/zbivqy35RWPWepd5PUw6aDMoavlxagvK7Ht1a+w6D4H1VI9Krw3DGRjDkzRvZ4DtjrnJiBbU
 AP3d7HpXEqAwvVYQQfweopTQaApfTPPGVCSUrA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=edu.ge.ch
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=edu.ge.ch header.i=@edu.ge.ch header.a=rsa-sha256
 header.s=GVA21 header.b=BSOkvRFZ
Subject: Re: [Intel-wired-lan] [REGRESSION] e1000e: RX stops after link
 down/up on Intel 8086:550a since v6.12.43 (fixed by suspend/resume)
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
From: "Wenger Jeremie \(EDU\) via Intel-wired-lan" <intel-wired-lan@osuosl.org>
Reply-To: "Wenger Jeremie \(EDU\)" <jeremie.wenger@edu.ge.ch>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VGhhbmtzIGZvciB0aGUgcmVwb3J0LCBJJ20gYWRkaW5nIHRoZSByZWxldmFudCBwZW9wbGUgdG8g
Q0Mgbm93Lg0KUGxlYXNlIHRyeSB0byBjb25zdWx0IHRoZSBNQUlOVEFJTkVSUyBmaWxlIG5leHQg
dGltZSAnY2F1c2UgbmV0d29ya2luZw0KaXMgYSBiaXQgdG9vIGJpZyBmb3IgdGhlIHJpZ2h0IHBl
b3BsZSB0byBhbHdheXMgbm90aWNlIHJlcG9ydHMuDQoNCk15IGJlc3QgZ3Vlc3MgYmVsb3cuLg0K
DQpPbiBGcmksIDkgSmFuIDIwMjYgMDk6NDA6MzQgKzAwMDAgV2VuZ2VyIEplcmVtaWUgKEVEVSkg
d3JvdGU6DQo+IEhlbGxvLA0KPg0KPiBJIHdvdWxkIGxpa2UgdG8gcmVwb3J0IGEgcmVncmVzc2lv
biBpbiB0aGUgZTEwMDBlIGRyaXZlciBhZmZlY3RpbmcgYW4gSW50ZWwgaW50ZWdyYXRlZCBFdGhl
cm5ldCBjb250cm9sbGVyLg0KPg0KPiBIYXJkd2FyZToNCj4gSW50ZWwgRXRoZXJuZXQgY29udHJv
bGxlcsKgIFs4MDg2OjU1MGFdDQo+IERyaXZlcjogZTEwMDBlDQo+DQo+IFN1bW1hcnk6DQo+IC0g
Ulggc3RvcHMgd29ya2luZyBhZnRlciBhbiBFdGhlcm5ldCBsaW5rIGRvd24vdXAgKHVucGx1Zy9y
ZXBsdWcgY2FibGUpLg0KPiAtIFRYIHN0aWxsIHdvcmtzLiBBIHN5c3RlbSBzdXNwZW5kL3Jlc3Vt
ZSByZWxpYWJseSByZXN0b3JlcyBSWC4NCj4NCj4gUmVncmVzc2lvbiByYW5nZToNCj4gLSBXb3Jr
aW5nOiB2Ni4xMi4yMg0KPiAtIEJyb2tlbjogdjYuMTIuNDMgLi4gdjYuMTguMyAodGVzdGVkIG9u
IERlYmlhbiAxMiBiYWNrcG9ydHMsIERlYmlhbiAxMywgRGViaWFuIHNpZCkuIHY2LjE4LjMgaXMg
dGhlIG1vc3QgcmVjZW50IGtlcm5lbCB0ZXN0ZWQgc28gZmFyLCBzbyB0aGUgcmVncmVzc2lvbiBp
cyBsaWtlbHkgc3RpbGwgcHJlc2VudCBpbiBuZXdlciBrZXJuZWxzLg0KDQpKdWRnaW5nIGJ5IHRo
ZSByYW5nZSBzZWVtcyBsaWtlIGl0IGhhcyB0byBiZSBlZmFhZjM0NGJjMjkxN2NiDQpXb3VsZCB5
b3UgYmUgYWJsZSB0byB0cnkgYnVpbGRpbmcgYSBrZXJuZWwgd2l0aCB0aGF0IGNvbW1pdCByZXZl
cnRlZD8NCg0KDQoNCkhpLA0KDQpUaGFua3MgZm9yIGxvb2tpbmcgaW50byB0aGlzLg0KDQpKdXN0
IHRvIHByb3ZpZGUgc29tZSBhZGRpdGlvbmFsIGNvbnRleHQgYW5kIGhlbHAgYXZvaWQgZHVwbGlj
YXRlZCB3b3JrOg0KdGhlIGlzc3VlIGhhcyBhbHNvIGJlZW4gZGlzY3Vzc2VkIG9uIG5ldGRldkB2
Z2VyLmtlcm5lbC5vcmcsIGFuZCBJIHdhcyBwb2ludGVkIHRvIGEgZml4IHRoYXQgbGFuZGVkIGlu
IG1haW5saW5lLg0KDQpJIHRlc3RlZCB0aGUgaXNzdWUgd2l0aCBMaW51eCA2LjE5ICg2LjE5fnJj
NC0xfmV4cDEpLCBhbmQgdGhlIHByb2JsZW0gaXMgZnVsbHkgcmVzb2x2ZWQgdGhlcmU6IFJYIGNv
cnJlY3RseSByZWNvdmVycyBhZnRlciBhIGxpbmsgZG93bi91cCB3aXRob3V0IHJlcXVpcmluZyBh
IHN1c3BlbmQvcmVzdW1lIGN5Y2xlLg0KDQpUaGlzIGJlaGF2aW9yIGNoYW5nZSBhcHBlYXJzIHRv
IGJlIGR1ZSB0byBjb21taXQ6DQozYzdiZjVhZjIxOTYwODdmMzk0ZjkwOTliNTNlMzc1Njk2MzZi
MjU5DQoNCkdpdmVuIHRoYXQgY3VycmVudCBtYWlubGluZSB3b3JrcyBhcyBleHBlY3RlZCwgSSBk
aWQgbm90IGF0dGVtcHQgcmV2ZXJ0aW5nIGVmYWFmMzQ0YmMyOTE3Y2IuIEkgYWxzbyBhc2tlZCBv
biBuZXRkZXYgd2hldGhlciBhIGJhY2twb3J0IG9mIHRoZSBhYm92ZSBmaXggdG8gc3RhYmxlIGtl
cm5lbHMgd291bGQgYmUgYXBwcm9wcmlhdGUuDQoNClBsZWFzZSBsZXQgbWUga25vdyBpZiB5b3Ug
c3RpbGwgdGhpbmsgYSB0YXJnZXRlZCByZXZlcnQgdGVzdCB3b3VsZCBiZSB1c2VmdWwuDQoNCkJl
c3QgcmVnYXJkcywNCkrDqXLDqW1pZQ0KDQoNCj4gU3ltcHRvbXM6DQo+IC0gTGluayBpcyBkZXRl
Y3RlZCAoMUdicHMsIGZ1bGwgZHVwbGV4KS4NCj4gLSBESENQIERJU0NPVkVSIGZyYW1lcyBhcmUg
dHJhbnNtaXR0ZWQgKGNvbmZpcm1lZCB2aWEgZXh0ZXJuYWwgcGFja2V0IGNhcHR1cmUpLg0KPiAt
IE5vIHBhY2tldHMgYXJlIHJlY2VpdmVkIChubyBESENQIE9GRkVSLCBSWCBhcHBlYXJzIGRlYWQp
Lg0KPiAtIEJvb3Rpbmcgd2l0aCB0aGUgY2FibGUgcGx1Z2dlZCB3b3Jrcy4NCj4gLSBUaGUgaXNz
dWUgaXMgdHJpZ2dlcmVkIG9ubHkgYWZ0ZXIgdW5wbHVnZ2luZyBhbmQgcmVwbHVnZ2luZyB0aGUg
Y2FibGUuDQo+IC0gQSBzdXNwZW5kL3Jlc3VtZSBjeWNsZSByZXN0b3JlcyBSWCBpbW1lZGlhdGVs
eS4NCj4gLSBVc2luZyBhIFVTQiBFdGhlcm5ldCBhZGFwdGVyIChyODE1Mikgb24gdGhlIHNhbWUg
bmV0d29yayB3b3JrcyBjb3JyZWN0bHkuDQo+DQo+IFJlcHJvZHVjdGlvbiBzdGVwczoNCj4gLSBC
b290IHdpdGggRXRoZXJuZXQgY2FibGUgcGx1Z2dlZC4NCj4gLSBWZXJpZnkgbmV0d29yayBjb25u
ZWN0aXZpdHkgd29ya3MuDQo+IC0gVW5wbHVnIHRoZSBFdGhlcm5ldCBjYWJsZS4NCj4gLSBQbHVn
IHRoZSBFdGhlcm5ldCBjYWJsZSBiYWNrIGluLg0KPiAtIE9ic2VydmUgdGhhdCBSWCBubyBsb25n
ZXIgd29ya3MgKG5vIERIQ1AgT0ZGRVIpLg0KPiAtIFN1c3BlbmQvcmVzdW1lIHRoZSBzeXN0ZW0g
4oaSIFJYIHdvcmtzIGFnYWluLg0KPg0KPiBUaGlzIHN1Z2dlc3RzIHRoYXQgdGhlIFBIWSBvciBS
WCBwYXRoIGlzIG5vdCBjb3JyZWN0bHkgcmVpbml0aWFsaXplZCBvbiBsaW5rIHVwIGFmdGVyIGEg
bGluayBkb3duIGV2ZW50LCB3aGlsZSB0aGUgcmVzdW1lIHBhdGggcGVyZm9ybXMgYSBtb3JlIGNv
bXBsZXRlIHJlc2V0Lg0KPg0KPiBJIGNhbiBwcm92aWRlIGFkZGl0aW9uYWwgbG9ncywgZXRodG9v
bCBzdGF0aXN0aWNzLCBvciB0ZXN0IHBhdGNoZXMgaWYgbmVlZGVkLg0KPg0KPg0KPiBCZXN0IHJl
Z2FyZHMsDQo+DQo+IErDqXLDqW1pZSBXZW5nZXINCiAgICA=
