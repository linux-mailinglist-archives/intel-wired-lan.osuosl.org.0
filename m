Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 868287D4F0F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Oct 2023 13:42:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 11E554ED55;
	Tue, 24 Oct 2023 11:42:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 11E554ED55
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698147758;
	bh=Ujxm+cEEs5ko09d2H1XxvLIykzVd6yEjzOcPXG0inxU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TCMfgfeCd2Io8tUHNXFx2i/wuv32oTFl63D6oXFavLmFE2IsGvx0ycZutJ9no4I4X
	 iwHt6FDC/PpzxmPXM4G2y+MmwAT7QFMh92aTb9dr26chcKaEQ/9NGOHTYOE2/ycUi4
	 pjskcn4RHM62IBiRuAdBmLzIz2QRmRvWIpYhrgZIQwN9z/NwJ7N1uztyyBEnm2P7p/
	 QPZPIQupMu/sawWiVSlNZ/lpRmhnePMM8JoIvETMW5VVSRMdz0Qiritl+hPYPILS+8
	 GeMHRuYvy8rwnn0e/97881e/j3ccnyA1yvEmOWKQnNr+KNAw7gi3OG561KV8KX1R64
	 MIMgTs1aSfRkg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VZskDX5A2oDm; Tue, 24 Oct 2023 11:42:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BBA604ED1D;
	Tue, 24 Oct 2023 11:42:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BBA604ED1D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2EFA21BF311
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 11:42:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EBE788483E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 11:42:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EBE788483E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fU6d6eWPIi-i for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Oct 2023 11:42:30 +0000 (UTC)
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2A4BF8483C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 11:42:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2A4BF8483C
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 386F261E5FE03;
 Tue, 24 Oct 2023 13:41:55 +0200 (CEST)
Message-ID: <71c02ebc-77f0-4b7d-9a1c-b2ed638f2757@molgen.mpg.de>
Date: Tue, 24 Oct 2023 13:41:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Pawel Chmielewski <pawel.chmielewski@intel.com>,
 Liang-min Wang <liang-min.wang@intel.com>
References: <20231024112912.1811594-1-pawel.chmielewski@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20231024112912.1811594-1-pawel.chmielewski@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Reset VF on Tx MDD event
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
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 lukasz.czapnik@intel.com, intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBQYXdlbCwgZGVhciBMaWFuZy1taW4sCgoKQW0gMjQuMTAuMjMgdW0gMTM6Mjkgc2Nocmll
YiBQYXdlbCBDaG1pZWxld3NraToKPiBGcm9tOiBMaWFuZy1taW4gV2FuZyA8bGlhbmctbWluLndh
bmdAaW50ZWwuY29tPgoKU2hvdWxkIG1pbiBzdGFydCB3aXRoIGEgY2FwaXRhbCBsZXR0ZXIgTGlh
bmctTWluPwoKPiBJbiBjYXNlcyB3aGVuIFZGIHNlbmRzIG1hbGZvcm1lZCBwYWNrZXRzIHRoYXQg
YXJlIGNsYXNzaWZpZWQgYXMgbWFsaWNpb3VzLAo+IHNvbWV0aW1lcyBpdCBjYXVzZXMgVHggcXVl
dWUgdG8gZnJlZXplLiBUaGlzIGZyb3plbiBxdWV1ZSBjYW4gYmUgc3R1Y2sKPiBmb3Igc2V2ZXJh
bCBtaW51dGVzIGJlaW5nIHVudXNhYmxlLgoKRGlkIHlvdSBhbmFseXplIHRoZSBjYXVzZSBmb3Ig
dGhpcy4gV2h5IGRvZXMgaXQgZnJlZXplIG9ubHkgc29tZXRpbWVzPyAKQXJlIHlvdSBhYmxlIHRv
IHJlcHJvZHVjZSBpdD8KCj4gV2hlbiBNREQgZXZlbnQgb2NjdXJzLCBwZXJmb3JtIGdyYWNlZnVs
IFZGIHJlc2V0IHRvIHF1aWNrbHkgYnJpbmcgVkYKPiBiYWNrIHRvIG9wZXJhdGlvbmFsIHN0YXRl
LgoKSeKAmWQgc3BlbGwgb3V0IE1hbGljaW91cyBEcml2ZXIgRGV0ZWN0aW9uLgoKUGxlYXNlIG1l
bnRpb24sIHRoYXQgYSBuZXcgbG9nIG1lc3NhZ2UgaXMgYWRkZWQuCgo+IFNpZ25lZC1vZmYtYnk6
IExpYW5nLW1pbiBXYW5nIDxsaWFuZy1taW4ud2FuZ0BpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1i
eTogUGF3ZWwgQ2htaWVsZXdza2kgPHBhd2VsLmNobWllbGV3c2tpQGludGVsLmNvbT4KPiBSZXZp
ZXdlZC1ieTogTWljaGFsIFN3aWF0a293c2tpIDxtaWNoYWwuc3dpYXRrb3dza2lAbGludXguaW50
ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWlu
LmMgfCAxNCArKysrKysrKysrKystLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMo
KyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfbWFpbi5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV9tYWluLmMKPiBpbmRleCA2NjA5NWU5YjA5NGUuLmNmOWZkMWYxNjhmNyAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21haW4uYwo+ICsrKyBiL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jCj4gQEAgLTE4MzYsOCArMTgzNiwx
MyBAQCBzdGF0aWMgdm9pZCBpY2VfaGFuZGxlX21kZF9ldmVudChzdHJ1Y3QgaWNlX3BmICpwZikK
PiAgIAkJCXZmLT5tZGRfdHhfZXZlbnRzLmNvdW50Kys7Cj4gICAJCQlzZXRfYml0KElDRV9NRERf
VkZfUFJJTlRfUEVORElORywgcGYtPnN0YXRlKTsKPiAgIAkJCWlmIChuZXRpZl9tc2dfdHhfZXJy
KHBmKSkKPiAtCQkJCWRldl9pbmZvKGRldiwgIk1hbGljaW91cyBEcml2ZXIgRGV0ZWN0aW9uIGV2
ZW50IFRYX1RDTEFOIGRldGVjdGVkIG9uIFZGICVkXG4iLAo+ICsJCQkJZGV2X2luZm8oZGV2LAo+
ICsJCQkJCSAiTWFsaWNpb3VzIERyaXZlciBEZXRlY3Rpb24gZXZlbnQgVFhfVENMQU4gZGV0ZWN0
ZWQgb24gVkYgJWRcbiIsCj4gICAJCQkJCSB2Zi0+dmZfaWQpOwoKSeKAmWQgcmVmcmFpbiBmcm9t
IGZvcm1hdHRpbmcgY2hhbmdlcy4KCj4gKwkJCWRldl9pbmZvKGRldiwKPiArCQkJCSAiUEYtdG8t
VkYgcmVzZXQgb24gVkYgJWQgZHVlIHRvIFR4IE1ERCBUWF9UQ0xBTiBldmVudFxuIiwKPiArCQkJ
CSB2Zi0+dmZfaWQpOwo+ICsJCQlpY2VfcmVzZXRfdmYodmYsIElDRV9WRl9SRVNFVF9OT1RJRlkp
Owo+ICAgCQl9Cj4gICAKPiAgIAkJcmVnID0gcmQzMihodywgVlBfTURFVF9UWF9URFBVKHZmLT52
Zl9pZCkpOwo+IEBAIC0xODQ2LDggKzE4NTEsMTMgQEAgc3RhdGljIHZvaWQgaWNlX2hhbmRsZV9t
ZGRfZXZlbnQoc3RydWN0IGljZV9wZiAqcGYpCj4gICAJCQl2Zi0+bWRkX3R4X2V2ZW50cy5jb3Vu
dCsrOwo+ICAgCQkJc2V0X2JpdChJQ0VfTUREX1ZGX1BSSU5UX1BFTkRJTkcsIHBmLT5zdGF0ZSk7
Cj4gICAJCQlpZiAobmV0aWZfbXNnX3R4X2VycihwZikpCj4gLQkJCQlkZXZfaW5mbyhkZXYsICJN
YWxpY2lvdXMgRHJpdmVyIERldGVjdGlvbiBldmVudCBUWF9URFBVIGRldGVjdGVkIG9uIFZGICVk
XG4iLAo+ICsJCQkJZGV2X2luZm8oZGV2LAo+ICsJCQkJCSAiTWFsaWNpb3VzIERyaXZlciBEZXRl
Y3Rpb24gZXZlbnQgVFhfVERQVSBkZXRlY3RlZCBvbiBWRiAlZFxuIiwKPiAgIAkJCQkJIHZmLT52
Zl9pZCk7Cj4gKwkJCWRldl9pbmZvKGRldiwKPiArCQkJCSAiUEYtdG8tVkYgcmVzZXQgb24gVkYg
JWQgZHVlIHRvIFR4IE1ERCBUWF9UQ0xBTiBldmVudFxuIiwKPiArCQkJCSB2Zi0+dmZfaWQpOwo+
ICsJCQlpY2VfcmVzZXRfdmYodmYsIElDRV9WRl9SRVNFVF9OT1RJRlkpOwo+ICAgCQl9Cj4gICAK
PiAgIAkJcmVnID0gcmQzMihodywgVlBfTURFVF9SWCh2Zi0+dmZfaWQpKTsKCkl0IGxvb2sgbGlr
ZSwgYSBwYXRjaCBjb3VsZCBiZSBhZGRlZCBhaGVhZCB0byBmYWN0b3IgdGhlc2UgcGFydHMgaW4g
YSAKc2VwYXJhdGUgZnVuY3Rpb24uCgoKS2luZCByZWdhcmRzLAoKUGF1bApfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGlu
ZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
