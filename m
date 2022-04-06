Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF0D4F5523
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Apr 2022 07:34:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B7511610A4;
	Wed,  6 Apr 2022 05:34:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PIuCaR6o7qn5; Wed,  6 Apr 2022 05:34:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B573860AD7;
	Wed,  6 Apr 2022 05:34:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2D5B21BF9C6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Apr 2022 05:34:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 19CA6408F3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Apr 2022 05:34:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xyqXIoWn0TuX for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Apr 2022 05:34:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C4E13408F0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Apr 2022 05:34:40 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aef4f.dynamic.kabel-deutschland.de
 [95.90.239.79])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 99D2261E64846;
 Wed,  6 Apr 2022 07:34:37 +0200 (CEST)
Message-ID: <f0402937-8594-6ecb-c4f9-c6605dd73d77@molgen.mpg.de>
Date: Wed, 6 Apr 2022 07:34:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Sasha Neftin <sasha.neftin@intel.com>
References: <20220405155601.1443799-1-sasha.neftin@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220405155601.1443799-1-sasha.neftin@intel.com>
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

RGVhciBTYXNoYSwKCgpUaGFuayB5b3UgZm9yIHlvdXIgcGF0Y2guCgpBbSAwNS4wNC4yMiB1bSAx
Nzo1NiBzY2hyaWViIFNhc2hhIE5lZnRpbjoKPiBXaGVuIHdlIGRlY29kZSB0aGUgbGF0ZW5jeSBh
bmQgdGhlIG1heF9sYXRlbmN5IHUxNiB2YWx1ZSBkb2VzIG5vdCBmaWxsCj4gdGhlIHJlcXVpcmVk
IHNpemUKCkRvIHlvdSBtZWFuIOKAnGZpdCBpbnRv4oCdIG9yIOKAnGlzIHRvbyBzbWFsbCBmb3Ig
dGhlIHJlcXVpcmVkIHNpemXigJ0/Cgo+IGFuZCBjb3VsZCBsZWFkIHRvIHRoZSB3cm9uZyBMVFIg
cmVwcmVzZW50YXRpb24uCgpNYXliZSBnaXZlIGFuIGV4YW1wbGUgb2YgdmFsdWVzIGxlYWRpbmcg
dG8gaW5jb3JyZWN0IGJlaGF2aW9yPwoKPiBSZXBsYWNlIHRoZSB1MTYgdHlwZSB3aXRoIHRoZSB1
MzIgdHlwZSBhbmQgYWxsb3cgY29ycmVjdGVkIExUUgo+IHJlcHJlc2VudGF0aW9uLgoKTWF5YmU6
IEluY3JlYXNlIHRoZSB2YXJpYWJsZSBzaXplIGZyb20gdTE2IHRvIHUzMiwgc28gdGhlIGRlY29k
ZWQgCmxhdGVuY3kgY2FuIGJlIHJlcHJlc2VudGVkLiBXaHkgYXJlIDMyIGJpdCBlbm91Z2g/IFdo
eSBub3QgNjQgYml0PwoKUGxlYXNlIHVzZSA3NSBjaGFyYWN0ZXJzIHBlciBsaW5lLgoKPiBGaXhl
czogNDRhMTNhNWQ5OWM3ICgiZTEwMDBlOiBGaXggdGhlIG1heCBzbm9vcC9uby1zbm9vcCBsYXRl
bmN5IGZvciAxME0iKQo+IFJlcG9ydGVkLWJ5OiBKYW1lcyBIdXRjaGluc29uIDxqYWh1dGNoaW5z
b245OUBnb29nbGVtYWlsLmNvbT4KPiBMaW5rOiBodHRwczovL2J1Z3ppbGxhLmtlcm5lbC5vcmcv
c2hvd19idWcuY2dpP2lkPTIxNTY4OQo+IFN1Z2dlc3RlZC1ieTogRGltYSBSdWluc2tpeSA8ZGlt
YS5ydWluc2tpeUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogU2FzaGEgTmVmdGluIDxzYXNo
YS5uZWZ0aW5AaW50ZWwuY29tPgoKQWRkCgpUZXN0ZWQtYnk6IEphbWVzIEh1dGNoaW5zb24gPGph
aHV0Y2hpbnNvbjk5QGdvb2dsZW1haWwuY29tPiAoSTIxOS1WIChyZXYgCjMwKSkKCj4gLS0tCj4g
djI6IGFkZGVkIGxpbmsgdGFnCj4gCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAw
MGUvaWNoOGxhbi5jIHwgNCArKy0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCsp
LCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9lMTAwMGUvaWNoOGxhbi5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBl
L2ljaDhsYW4uYwo+IGluZGV4IGQ2MGUyMDE2ZDAzYy4uZTZjOGU2ZDUyMzRmIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmMKPiArKysgYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNoOGxhbi5jCj4gQEAgLTEwMDksOCAr
MTAwOSw4IEBAIHN0YXRpYyBzMzIgZTEwMDBfcGxhdGZvcm1fcG1fcGNoX2xwdChzdHJ1Y3QgZTEw
MDBfaHcgKmh3LCBib29sIGxpbmspCj4gICB7Cj4gICAJdTMyIHJlZyA9IGxpbmsgPDwgKEUxMDAw
X0xUUlZfUkVRX1NISUZUICsgRTEwMDBfTFRSVl9OT1NOT09QX1NISUZUKSB8Cj4gICAJICAgIGxp
bmsgPDwgRTEwMDBfTFRSVl9SRVFfU0hJRlQgfCBFMTAwMF9MVFJWX1NFTkQ7Cj4gLQl1MTYgbWF4
X2x0cl9lbmNfZCA9IDA7CS8qIG1heGltdW0gTFRSIGRlY29kZWQgYnkgcGxhdGZvcm0gKi8KPiAt
CXUxNiBsYXRfZW5jX2QgPSAwOwkvKiBsYXRlbmN5IGRlY29kZWQgKi8KPiArCXUzMiBtYXhfbHRy
X2VuY19kID0gMDsJLyogbWF4aW11bSBMVFIgZGVjb2RlZCBieSBwbGF0Zm9ybSAqLwo+ICsJdTMy
IGxhdF9lbmNfZCA9IDA7CS8qIGxhdGVuY3kgZGVjb2RlZCAqLwo+ICAgCXUxNiBsYXRfZW5jID0g
MDsJLyogbGF0ZW5jeSBlbmNvZGVkICovCj4gICAKPiAgIAlpZiAobGluaykgewoKVGhlIGRpZmYg
bG9va3MgZ29vZC4KCgpLaW5kIHJlZ2FyZHMsCgpQYXVsCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50
ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
