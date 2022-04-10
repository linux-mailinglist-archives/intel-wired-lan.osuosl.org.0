Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C8F34FAD21
	for <lists+intel-wired-lan@lfdr.de>; Sun, 10 Apr 2022 12:10:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A06438415C;
	Sun, 10 Apr 2022 10:10:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WpbUxPLZ1ev7; Sun, 10 Apr 2022 10:10:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9672384128;
	Sun, 10 Apr 2022 10:10:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 976C61BF681
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 Apr 2022 10:10:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 86AE34169B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 Apr 2022 10:10:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id knPoYsH2Rkam for <intel-wired-lan@lists.osuosl.org>;
 Sun, 10 Apr 2022 10:10:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2B15D4167A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 Apr 2022 10:10:16 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5ae8e3.dynamic.kabel-deutschland.de
 [95.90.232.227])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 9ECF561EA1923;
 Sun, 10 Apr 2022 12:10:12 +0200 (CEST)
Message-ID: <a2d025d5-dd85-8816-8c0f-1cd873dce529@molgen.mpg.de>
Date: Sun, 10 Apr 2022 12:10:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Sasha Neftin <sasha.neftin@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
References: <20220405155601.1443799-1-sasha.neftin@intel.com>
 <f0402937-8594-6ecb-c4f9-c6605dd73d77@molgen.mpg.de>
 <46988714-070b-fca0-efe8-52004649976a@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <46988714-070b-fca0-efe8-52004649976a@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH v2 1/1] e1000e: Fix possible overflow
 in LTR decoding
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
Cc: James Hutchinson <jahutchinson99@googlemail.com>,
 Dima Ruinskiy <dima.ruinskiy@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBTYXNoYSwgZGVhciBUb255LAoKCkFtIDA2LjA0LjIyIHVtIDE2OjMzIHNjaHJpZWIgTmVm
dGluLCBTYXNoYToKPiBPbiA0LzYvMjAyMiAwODozNCwgUGF1bCBNZW56ZWwgd3JvdGU6Cgo+PiBU
aGFuayB5b3UgZm9yIHlvdXIgcGF0Y2guCj4+Cj4+IEFtIDA1LjA0LjIyIHVtIDE3OjU2IHNjaHJp
ZWIgU2FzaGEgTmVmdGluOgo+Pj4gV2hlbiB3ZSBkZWNvZGUgdGhlIGxhdGVuY3kgYW5kIHRoZSBt
YXhfbGF0ZW5jeSB1MTYgdmFsdWUgZG9lcyBub3QgZmlsbAo+Pj4gdGhlIHJlcXVpcmVkIHNpemUK
Pj4KPj4gRG8geW91IG1lYW4g4oCcZml0IGludG/igJ0gb3Ig4oCcaXMgdG9vIHNtYWxsIGZvciB0
aGUgcmVxdWlyZWQgc2l6ZeKAnT8KClRvbnksIEkgc2F3IHlvdSBjb21taXR0ZWQgdGhpcyBwYXRj
aCBbMV0uIElzIGl0IHN0aWxsIHBvc3NpYmxlIHRvIGZpeCAKdGhlIHdvcmRpbmc/Cgo+Pj4gYW5k
IGNvdWxkIGxlYWQgdG8gdGhlIHdyb25nIExUUiByZXByZXNlbnRhdGlvbi4KPj4KPj4gTWF5YmUg
Z2l2ZSBhbiBleGFtcGxlIG9mIHZhbHVlcyBsZWFkaW5nIHRvIGluY29ycmVjdCBiZWhhdmlvcj8K
Pj4KPj4+IFJlcGxhY2UgdGhlIHUxNiB0eXBlIHdpdGggdGhlIHUzMiB0eXBlIGFuZCBhbGxvdyBj
b3JyZWN0ZWQgTFRSCj4+PiByZXByZXNlbnRhdGlvbi4KPj4KPj4gTWF5YmU6IEluY3JlYXNlIHRo
ZSB2YXJpYWJsZSBzaXplIGZyb20gdTE2IHRvIHUzMiwgc28gdGhlIGRlY29kZWQgCj4+IGxhdGVu
Y3kgY2FuIGJlIHJlcHJlc2VudGVkLiBXaHkgYXJlIDMyIGJpdCBlbm91Z2g/IFdoeSBub3QgNjQg
Yml0Pwo+IEhlbGxvIFBhdWwsCj4gU2NhbGluZyByZXByZXNlbnRlZCBhczoKPiBzY2FsZSAwIC0g
McKgwqDCoMKgwqDCoMKgwqAgKDJeKDUqMCkpID0gMl4wCj4gc2NhbGUgMSAtIDMywqDCoMKgwqDC
oMKgwqAgKDJeKDUgKjEpKT0gMl41Cj4gc2NhbGUgMiAtIDEwMjTCoMKgwqDCoMKgICgyXig1ICoy
KSkgPTJeMTAKPiBzY2FsZSAzIC0gMzI3NjjCoMKgwqDCoCAoMl4oNSAqMykpID0yXjE1Cj4gc2Nh
bGUgNCDigJMgMTA0ODU3NsKgwqAgKDJeKDUgKjQpKSA9IDJeMjAKPiBzY2FsZSA1IOKAkyAzMzU1
NDQzMsKgICgyXig1ICo0KSkgPSAyXjI1Cj4gc2NhbGUgNCBhbmQgc2NhbGUgNSByZXF1aXJlZCAy
MCBhbmQgMjUgYml0cyByZXNwZWN0aXZlbHkuCj4gc2NhbGUgNiByZXNlcnZlZC4KClRoaXMgd291
bGQgaGF2ZSBiZWVuIG5pY2UgaW4gdGhlIGNvbW1pdCBtZXNzYWdlLgoKPj4gUGxlYXNlIHVzZSA3
NSBjaGFyYWN0ZXJzIHBlciBsaW5lLgo+Pgo+Pj4gRml4ZXM6IDQ0YTEzYTVkOTljNyAoImUxMDAw
ZTogRml4IHRoZSBtYXggc25vb3Avbm8tc25vb3AgbGF0ZW5jeSBmb3IgCj4+PiAxME0iKQo+Pj4g
UmVwb3J0ZWQtYnk6IEphbWVzIEh1dGNoaW5zb24gPGphaHV0Y2hpbnNvbjk5QGdvb2dsZW1haWwu
Y29tPgo+Pj4gTGluazogaHR0cHM6Ly9idWd6aWxsYS5rZXJuZWwub3JnL3Nob3dfYnVnLmNnaT9p
ZD0yMTU2ODkKPj4+IFN1Z2dlc3RlZC1ieTogRGltYSBSdWluc2tpeSA8ZGltYS5ydWluc2tpeUBp
bnRlbC5jb20+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBTYXNoYSBOZWZ0aW4gPHNhc2hhLm5lZnRpbkBp
bnRlbC5jb20+Cj4+Cj4+IEFkZAo+Pgo+PiBUZXN0ZWQtYnk6IEphbWVzIEh1dGNoaW5zb24gPGph
aHV0Y2hpbnNvbjk5QGdvb2dsZW1haWwuY29tPiAoSTIxOS1WIChyZXYgMzApKQo+IEkgd2lsbCBs
ZXQgSmFtZXMgYWRkIHRoaXMgdGFnLgo+Pgo+Pj4gLS0tCj4+PiB2MjogYWRkZWQgbGluayB0YWcK
Pj4+Cj4+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNoOGxhbi5jIHwg
NCArKy0tCj4+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAw
MGUvaWNoOGxhbi5jIAo+Pj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNo
OGxhbi5jCj4+PiBpbmRleCBkNjBlMjAxNmQwM2MuLmU2YzhlNmQ1MjM0ZiAxMDA2NDQKPj4+IC0t
LSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmMKPj4+ICsrKyBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmMKPj4+IEBAIC0xMDA5
LDggKzEwMDksOCBAQCBzdGF0aWMgczMyIGUxMDAwX3BsYXRmb3JtX3BtX3BjaF9scHQoc3RydWN0
IAo+Pj4gZTEwMDBfaHcgKmh3LCBib29sIGxpbmspCj4+PiDCoCB7Cj4+PiDCoMKgwqDCoMKgIHUz
MiByZWcgPSBsaW5rIDw8IChFMTAwMF9MVFJWX1JFUV9TSElGVCArIEUxMDAwX0xUUlZfTk9TTk9P
UF9TSElGVCkgfAo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIGxpbmsgPDwgRTEwMDBfTFRSVl9SRVFf
U0hJRlQgfCBFMTAwMF9MVFJWX1NFTkQ7Cj4+PiAtwqDCoMKgIHUxNiBtYXhfbHRyX2VuY19kID0g
MDvCoMKgwqAgLyogbWF4aW11bSBMVFIgZGVjb2RlZCBieSBwbGF0Zm9ybSAqLwo+Pj4gLcKgwqDC
oCB1MTYgbGF0X2VuY19kID0gMDvCoMKgwqAgLyogbGF0ZW5jeSBkZWNvZGVkICovCj4+PiArwqDC
oMKgIHUzMiBtYXhfbHRyX2VuY19kID0gMDvCoMKgwqAgLyogbWF4aW11bSBMVFIgZGVjb2RlZCBi
eSBwbGF0Zm9ybSAqLwo+Pj4gK8KgwqDCoCB1MzIgbGF0X2VuY19kID0gMDvCoMKgwqAgLyogbGF0
ZW5jeSBkZWNvZGVkICovCj4+PiDCoMKgwqDCoMKgIHUxNiBsYXRfZW5jID0gMDvCoMKgwqAgLyog
bGF0ZW5jeSBlbmNvZGVkICovCj4+PiDCoMKgwqDCoMKgIGlmIChsaW5rKSB7Cj4+Cj4+IFRoZSBk
aWZmIGxvb2tzIGdvb2QuCj4gVGhhbmtzCgoKS2luZCByZWdhcmRzLAoKUGF1bAoKClsxXTogCmh0
dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RuZ3V5L25leHQt
cXVldWUuZ2l0L2NvbW1pdC8/aD1kZXYtcXVldWUmaWQ9N2RkMTIxYjhkNTczNTc4MGI2YTcwZGI3
MzVkNDRiM2U1Yjg1NjEzMApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vv
c2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdp
cmVkLWxhbgo=
