Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E027588B3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Jul 2023 00:47:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EC16B60C15;
	Tue, 18 Jul 2023 22:47:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EC16B60C15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689720427;
	bh=5vUXF0dcJMGpDtkARch/swg6Ma7YZHuid4J6rc6oPa0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ufh4TSbnwyFgGcR9A7G7nfPCUspMS0auZG+pzCqHyjnyYGglWKj/G90qG+epiGO37
	 BPuvdpbQ8PUA9T+TYeFLO5gvNZ/9MFNN9HrIG7sKiVbYBe1eznMYjhsQSeHeWOZNXk
	 +DGpiHDwkvEO+UT4kZXAef9K+aRXITAxOoTKldDXMN/8IHPQpc3Tot1RlQdO6Vynex
	 g3zPkVU2NNEH2ac66w1nMfgtGory/iQi7PTNvJ/n7LjQqM9WLtXEvR663DARhu5Dc/
	 IG059c4fZhzCgbBv76v9t3oa1MTla2JzaM3K0t25FqUZ+SPKHUP0H6O0p44518BD8a
	 3TqKwwLEXGCjw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ahw3m-Wg8XCv; Tue, 18 Jul 2023 22:47:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BD72060BB5;
	Tue, 18 Jul 2023 22:47:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BD72060BB5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C2E011BF2CA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 22:47:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 980C540503
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 22:47:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 980C540503
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QpaPXY5U09RI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Jul 2023 22:46:59 +0000 (UTC)
X-Greylist: delayed 558 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 18 Jul 2023 22:46:58 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C0F6640253
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C0F6640253
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 22:46:58 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5ae953.dynamic.kabel-deutschland.de
 [95.90.233.83])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 13B7361E5FE37;
 Wed, 19 Jul 2023 00:37:20 +0200 (CEST)
Message-ID: <0221c4b6-096b-c8fb-2b83-cdfbab668589@molgen.mpg.de>
Date: Wed, 19 Jul 2023 00:37:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: Sasha Neftin <sasha.neftin@intel.com>
References: <20230717171927.78516-1-sasha.neftin@intel.com>
 <80bfadb3-5af3-0100-30bb-c5008660d5a5@molgen.mpg.de>
 <af05bc6d-adf3-a0d1-534d-976f99e96d58@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <af05bc6d-adf3-a0d1-534d-976f99e96d58@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/1] igc: Correct the short
 interval between PTM requests.
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
Cc: Michael Edri <michael.edri@intel.com>, linux-pci@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

W0NjOiArVmluaWNpdXNdCgpEZWFyIFNhc2hhLAoKCkFtIDE4LjA3LjIzIHVtIDE4OjE1IHNjaHJp
ZWIgTmVmdGluLCBTYXNoYToKPiBPbiA3LzE3LzIwMjMgMjA6MzIsIFBhdWwgTWVuemVsIHdyb3Rl
Ogo+PiBbQ2M6ICtsaW51eC1wY2lAdmdlci5rZXJuZWwub3JnXQoKW+KApl0KCj4+IE1heWJlIGJl
IG1vcmUgc3BlY2lmaWMgaW4gdGhlIGNvbW1pdCBtZXNzYWdlIHN1bW1hcnkuIE1heWJlOgo+Pgo+
PiBpZ2M6IERlY3JlYXNlIFBUTSBzaG9ydCBpbnRlcnZhbCBmcm9tIDEwIHVzIHRvIDEgdXMKPiAK
PiBHb29kLgo+IAo+PiBBbSAxNy4wNy4yMyB1bSAxOToxOSBzY2hyaWViIFNhc2hhIE5lZnRpbjoK
Pj4+IFdpdGggdGhlIDEwdXMgaW50ZXJ2YWwsIHdlIHdlcmUgc2VlaW5nIFBUTSB0cmFuc2FjdGlv
bnMgdGFraW5nIGFyb3VuZCAxMnVzLgo+Pj4gV2l0aCB0aGUgMXVzIGludGVydmFsLCBQVE0gZGlh
bG9ncyB0b29rIGFyb3VuZCAydXMuIENoZWNrZWQgd2l0aCB0aGUKPj4+IFBDSWUgc25pZmZlci4K
Pj4KPj4gT24gd2hhdCBib2FyZCwgYW5kIHdpdGggd2hhdCBkZXZpY2UgYW5kIHdoYXQgZmlybXdh
cmUgdmVyc2lvbnM/Cj4gCj4gQW55IHdpdGggdGhlIFBUTSBzdXBwb3J0LiBIVyBmZWF0dXJlIGFu
ZCBub3QgZGVwZW5kZW50IG9uIHRoZSBmaXJtd2FyZS4KClN0aWxsIHlvdSB0ZXN0ZWQgaXQuIEl0
4oCZcyBhbHdheXMgYmVuZWZpY2lhbCB0byBhdCBsZWFzdCBkZW5vdGUgb25lIG9mIAp0aGUgc3lz
dGVtcyB3aXRoIGFsbCB0aGUgZGV0YWlscy4gRXNwZWNpYWxseSBhcyBpdCBzaG91bGRu4oCZdCBj
b3N0IHlvdSAKbW9yZSB0aGFuIGEgbWludXRlIHRvIGFkZCB0aGVzZSBkZXRhaWxzLgoKPj4+IEZp
eGVzOiBhOTBlYzg0ODM3MzIgKCJpZ2M6IEFkZCBzdXBwb3J0IGZvciBQVFAgZ2V0Y3Jvc3N0c3Rh
bXAoKSIpCj4+PiBTdWdnZXN0ZWQtYnk6IFZpbmljaXVzIENvc3RhIEdvbWVzIDx2aW5pY2l1cy5n
b21lc0BpbnRlbC5jb20+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBTYXNoYSBOZWZ0aW4gPHNhc2hhLm5l
ZnRpbkBpbnRlbC5jb20+Cj4+PiAtLS0KPj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2lnYy9pZ2NfZGVmaW5lcy5oIHwgMiArLQo+Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2lnYy9pZ2NfZGVmaW5lcy5oIAo+Pj4gYi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pZ2MvaWdjX2RlZmluZXMuaAo+Pj4gaW5kZXggNDRhNTA3MDI5OTQ2Li5jMzcyMmY1
MjRlYTcgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdj
X2RlZmluZXMuaAo+Pj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19k
ZWZpbmVzLmgKPj4+IEBAIC01NDksNyArNTQ5LDcgQEAKPj4+IMKgICNkZWZpbmUgSUdDX1BUTV9D
VFJMX1NIUlRfQ1lDKHVzZWMpwqDCoMKgICgoKHVzZWMpICYgMHgyZikgPDwgMikKPj4+IMKgICNk
ZWZpbmUgSUdDX1BUTV9DVFJMX1BUTV9UTyh1c2VjKcKgwqDCoCAoKCh1c2VjKSAmIDB4ZmYpIDw8
IDgpCj4+PiAtI2RlZmluZSBJR0NfUFRNX1NIT1JUX0NZQ19ERUZBVUxUwqDCoMKgIDEwwqAgLyog
RGVmYXVsdCBTaG9ydC9pbnRlcnJ1cHRlZCBjeWNsZSBpbnRlcnZhbCAqLwo+Pj4gKyNkZWZpbmUg
SUdDX1BUTV9TSE9SVF9DWUNfREVGQVVMVMKgwqDCoCAxwqDCoCAvKiBEZWZhdWx0IHNob3J0IGN5
Y2xlIAo+Pj4gaW50ZXJ2YWwgKi8KPj4KPj4gV2h5IGlzIHRoZSBjb21tZW50IHVwZGF0ZWQ/Cj4g
Cj4gSW50ZXJ2YWwsIG5vdCBpbnRlcnJ1cHQuLi4KClNvcnJ5LCBJIGRvIG5vdCB1bmRlcnN0YW5k
IHlvdXIgYW5zd2VyLiBJdOKAmWQgYmUgZ3JlYXQsIGlmIHlvdSBlbGFib3JhdGVkLgoKPj4+IMKg
ICNkZWZpbmUgSUdDX1BUTV9DWUNfVElNRV9ERUZBVUxUwqDCoMKgIDXCoMKgIC8qIERlZmF1bHQg
UFRNIGN5Y2xlIHRpbWUgKi8KPj4+IMKgICNkZWZpbmUgSUdDX1BUTV9USU1FT1VUX0RFRkFVTFTC
oMKgwqDCoMKgwqDCoCAyNTUgLyogRGVmYXVsdCB0aW1lb3V0IGZvciBQVE0gZXJyb3JzICovCgoK
S2luZCByZWdhcmRzLAoKUGF1bApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBv
c3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LXdpcmVkLWxhbgo=
