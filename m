Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 758D4673B7E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jan 2023 15:16:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DDED660F3C;
	Thu, 19 Jan 2023 14:15:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DDED660F3C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674137758;
	bh=UC3vPPvRdb07eg+CqMtxFYVuiWMxC9XJ0H6liZx6pWI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QB4OEr+M+ZI20QvJaDbmZuQR+8vU5J+uiZg+u1Wz1QRwI0CRZGm8x4E+6MG/seROE
	 4mzGASYwkwqyb/Twe+NTBPW5O9JaOLwgRY5bZwYBcutqGKAtMu+LcCPYGtUM0a40mV
	 3VX5Qkth92TLxgFMoKsefLR856GTC8Q/0mBVO17u1nIrOlEQCMHy56EOIHRfHfTS1X
	 ISamLlugw9ogDB0yBsjVwzaP84rGa/TM0axHpuhiVzvRnbt1CaUcSvTP9vSrRd99b8
	 spBKCWWJaVf67og3XDMAU5QWAzG6B7o5z8vdPuxPOs80m/fC2PgfHiCYXDzG2DjO9X
	 M+KgLHQ3Mykcg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4KZua-_PH5uk; Thu, 19 Jan 2023 14:15:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CD86D60F35;
	Thu, 19 Jan 2023 14:15:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CD86D60F35
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A35AF1BF372
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 14:15:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7D4BB60F35
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 14:15:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7D4BB60F35
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l4cxpXS2iw8C for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Jan 2023 14:15:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8098E60EF2
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8098E60EF2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 14:15:51 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5ae989.dynamic.kabel-deutschland.de
 [95.90.233.137])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 14DBB61CC40F9;
 Thu, 19 Jan 2023 15:15:48 +0100 (CET)
Message-ID: <53168857-3dd4-17fe-67cb-15ab0c005ca5@molgen.mpg.de>
Date: Thu, 19 Jan 2023 15:15:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
To: Sasha Neftin <sasha.neftin@intel.com>
References: <bff5f4d7-bb85-e3fa-b8b1-76d1b8e0133a@molgen.mpg.de>
 <9505bc04-edbd-ab64-bc95-a06150bbba38@intel.com>
 <20e6d930-c50f-45b7-f98e-3d11c35a09d1@molgen.mpg.de>
 <9a5af9c0-e58a-250c-b030-05e3b73035b9@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <9a5af9c0-e58a-250c-b030-05e3b73035b9@intel.com>
Subject: Re: [Intel-wired-lan] I218-LM uses > 1 W with low traffic
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
Cc: Devora Fuxbrumer <devora.fuxbrumer@intel.com>,
 Dima Ruinskiy <dima.ruinskiy@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBTYXNoYSwKCgpBbSAxNC4wNC4yMiB1bSAwOTowNyBzY2hyaWViIE5lZnRpbiwgU2FzaGE6
Cj4gT24gNC83LzIwMjIgMTg6NTgsIFBhdWwgTWVuemVsIHdyb3RlOgoKPj4gQW0gMDcuMDQuMjIg
dW0gMTM6MDMgc2NocmllYiBOZWZ0aW4sIFNhc2hhOgo+Pj4gT24gNC82LzIwMjIgMTM6MDksIFBh
dWwgTWVuemVsIHdyb3RlOgo+Pgo+Pj4+IE9uIGEgRGVsbCBMYXRpdHVkZSBFNzI1MCB3aXRoIERl
YmlhbiBzaWQvdW5zdGFibGUsIFBvd2VyVE9QIDIuMTQgCj4+Pj4gcmVwb3J0cyB0aGUgbmV0d29y
ayBkZXZpY2UgdXNlcyBvdmVyIDEuNSBXYXR0LCB3aGljaCBpcyBhbG1vc3QgdGVuIAo+Pj4+IHBl
cmNlbnQgb2YgdGhlIHdob2xlIHN5c3RlbS4KPj4+Pgo+Pj4+IMKgwqDCoMKgwqDCoCAxLjYyIFfC
oMKgwqAgNDM1LDkgcGt0cy9zwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIERldmljZSBO
ZXR6d2Vya3NjaG5pdHRzdGVsbGU6IGVubzEgKGUxMDAwZSkKPj4+Pgo+Pj4+IMKgwqDCoMKgICQg
bHNwY2kgLW5uIHwgZ3JlcCBFdGhlcgo+Pj4+IMKgwqDCoMKgIDAwOjE5LjAgRXRoZXJuZXQgY29u
dHJvbGxlciBbMDIwMF06IEludGVsIENvcnBvcmF0aW9uIEV0aGVybmV0IENvbm5lY3Rpb24gKDMp
IEkyMTgtTE0gWzgwODY6MTVhMl0gKHJldiAwMykKPj4+PiDCoMKgwqDCoCAkIHVuYW1lIC1hCj4+
Pj4gwqDCoMKgwqAgTGludXggZXJzYXR6IDUuMTcuMC10cnVuay1hbWQ2NCAjMSBTTVAgUFJFRU1Q
VCBEZWJpYW4gNS4xNy4xLTF+ZXhwMSAoMjAyMi0wMy0yOSkgeDg2XzY0IEdOVS9MaW51eAo+Pj4+
Cj4+Pj4gwqBGcm9tIGF0b3A6Cj4+Pj4KPj4+PiDCoMKgwqDCoCBORVQgfMKgIGVubzHCoMKgwqDC
oMKgIDAlIHzCoCBwY2tpwqDCoMKgIDI0MjEgfMKgIHBja2/CoMKgwqAgMjE5NCB8wqAgc3AgMTAw
MCBNYnBzIHzCoCBzaSAxNTAxIEticHPCoCB8IHNvwqAgMTQwIEticHPCoCB8IGVycmnCoMKgwqDC
oMKgwqAgMMKgIHwgZXJyb8KgwqDCoMKgwqDCoCAwIHwgZHJwbyDCoMKgwqDCoMKgIDDCoCB8Cj4+
Pj4KPj4+PiBTbyBJIHJlY2VpdmUgMS41IE1icHMsIGFuZCBzZW5kIDAuMTQgTWJwcy4KPj4+Pgo+
Pj4+IElzIHN1Y2ggaGlnaCBlbmVyZ3kgdXNhZ2UgZXhwZWN0ZWQgb2YgdGhlIG5ldHdvcmsgaGFy
ZHdhcmU/Cj4+Cj4+PiBJdCBpcyBub3QgdGhlIHBvd2VyIGNvbnN1bXB0aW9uIHdlIGV4cGVjdGVk
LkhvdyBkbyB5b3UgbWVhc3VyZSBpdD8gCj4+PiAoYXMgSSBrbm93IHBvd2VydG9wIGRvZXMgbm90
IHNob3cgaXQpCj4+Cj4+IE9uIG15IHN5c3RlbSwgUG93ZXJUT1Agc2hvd3MgaXQuIFRob3VnaCBt
YXliZSBpdOKAmXMgYSBidWcgaW4gUG93ZXJUT1DigJlzIAo+PiBwb3dlciB1c2FnZSBlc3RpbWF0
aW9uIGFsZ29yaXRobS4gTm8gaWRlYS4gQXQgbGVhc3Qgd2l0aCBubyBuZXR3b3JrIAo+PiBjYWJs
ZSBjb25uZWN0ZWQsIGl0IHNob3dzIHplcm8gV2F0dHMgYmVpbmcgdXNlZC4KPj4KPj4gwqDCoMKg
wqDCoMKgwqDCoCAwIG1XwqDCoMKgwqDCoCAwLDAgcGt0cy9zwqAgTmV0endlcmtzY2huaXR0c3Rl
bGxlOiBlbm8xIChlMTAwMGUpCj4+Cj4+Cj4+PiBXZSB3aWxsIHRyeSB0byBmaW5kIG91dCBhYm91
dCBwb3dlciBjb25zdW1wdGlvbi4KPj4KPj4gVGhhbmsgeW91IHZlcnkgbXVjaC4KPiAKPiBUaGUg
cG93ZXIgY29uc3VtcHRpb24gZHVyaW5nIG5vcm1hbCBvcGVyYXRpb24gbW9kZSBleHBlY3RlZCB0
byBiZSB+NjAwbVcuCgpXaXRoIExpbnV4IDYuMS40IEkgc3RpbGwgc2VlIGhpZ2ggcG93ZXIgdXNh
Z2U6CgogICAgICAgNC4wMSBXICAgICAyNiwwIHBrdHMvcyAgICAgICAgICAgICAgICBEZXZpY2Ug
Ck5ldHp3ZXJrc2Nobml0dHN0ZWxsZTogZW5vMSAoZTEwMDBlKQoKRGlzY29ubmVjdGluZyB0aGUg
Y2FibGUsIGl0IHN0aWxsIHNob3dzIGhpZ2ggdXNhZ2U6CgogICAgICAgNS4zNCBXICAgICAgMCww
IHBrdHMvcyAgICAgICAgICAgICAgICBEZXZpY2UgCk5ldHp3ZXJrc2Nobml0dHN0ZWxsZTogZW5v
MSAoZTEwMDBlKQoKV2VyZSB5b3UgYWJsZSB0byByZXByb2R1Y2UgaXQgb24geW91ciB0ZXN0IHN5
c3RlbXM/CgoKS2luZCByZWdhcmRzLAoKUGF1bApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdp
cmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLXdpcmVkLWxhbgo=
