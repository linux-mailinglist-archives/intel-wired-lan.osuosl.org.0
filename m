Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B8651EC1E
	for <lists+intel-wired-lan@lfdr.de>; Sun,  8 May 2022 10:09:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9E704827C6;
	Sun,  8 May 2022 08:09:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BKHeKALuDI3g; Sun,  8 May 2022 08:09:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B4A7F827A1;
	Sun,  8 May 2022 08:09:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1DFE71BF2CA
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 May 2022 08:09:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 111A0827A9
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 May 2022 08:09:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Di6L9K17kVp8 for <intel-wired-lan@lists.osuosl.org>;
 Sun,  8 May 2022 08:09:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F017C827A1
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 May 2022 08:09:01 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aed42.dynamic.kabel-deutschland.de
 [95.90.237.66])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 7465C61E6478B;
 Sun,  8 May 2022 10:08:58 +0200 (CEST)
Message-ID: <0e56824a-4a9e-c843-a7e0-d6e89dce1175@molgen.mpg.de>
Date: Sun, 8 May 2022 10:08:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Sasha Neftin <sasha.neftin@intel.com>
References: <20220508070905.1878172-1-sasha.neftin@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220508070905.1878172-1-sasha.neftin@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH v2 1/1] e1000e: Enable GPT clock
 before sending message to CSME
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
Cc: Kai-Heng Feng <kai.heng.feng@canonical.com>,
 Dima Ruinskiy <dima.ruinskiy@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBTYXNoYSwKCgpBbSAwOC4wNS4yMiB1bSAwOTowOSBzY2hyaWViIFNhc2hhIE5lZnRpbjoK
PiBPbiBjb3Jwb3JhdGUgKENTTUUpIEFETCBzeXN0ZW1zLCB0aGUgRXRoZXJuZXQgQ29udHJvbGxl
ciBtYXkgc3RvcCB3b3JraW5nCj4gKCJIVyB1bml0IGhhbmciKSBhZnRlciBleGl0aW5nIGZyb20g
dGhlIHMwaXggc3RhdGUuIFRoZSByZWFzb24gaXMgdGhhdAo+IENTTUUgbWlzc2VzIHRoZSBtZXNz
YWdlIHNlbnQgYnkgdGhlIGhvc3QuCgpXaGF0IG1lc3NhZ2UgZXhhY3RseSBieSB0aGUgd2F5PwoK
PiBFbmFibGluZyB0aGUgZHluYW1pYyBHUFQgY2xvY2sgc29sdmVzIHRoaXMgcHJvYmxlbS4gVGhp
cyBjbG9jayBpcwo+IGNsZWFyZWQgdXBvbiBIVyBpbml0aWFsaXphdGlvbi4K4oCcRW5hYmxpbmfi
gJ0gc291bmRzIGxpa2UgaXTigJlzIG5vdCBydW5uaW5nIGJlZm9yZS4gQnV0IHJlYWRpbmcgdGhl
IGNvbW1lbnQsIAppdOKAmXMgcnVubmluZy4gQ291bGQgeW91IG1ha2UgdGhhdCBtb3JlIGNsZWFy
IHBsZWFzZT8gVGhlIEdQVCBjbG9jayBpcyAKcnVubmluZyB3aGVuIGluIFMwaXg/CgpMYXN0bHks
IGlzIHRoYXQgYSBDU01FIGZpcm13YXJlIGJ1ZyBhbmQgd2hhdCBDU01FIGZpcm13YXJlIHZlcnNp
b24gd2FzIGl0PwoKPiBGaXhlczogM2U1NWQyMzE3MTZlICgiZTEwMDBlOiBBZGQgaGFuZHNoYWtl
IHdpdGggdGhlIENTTUUgdG8gc3VwcG9ydCBTMGl4IikKPiBCdWd6aWxsYTogaHR0cHM6Ly9idWd6
aWxsYS5rZXJuZWwub3JnL3Nob3dfYnVnLmNnaT9pZD0yMTQ4MjEKPiBSZXZpZXdlZC1ieTogRGlt
YSBSdWluc2tpeSA8ZGltYS5ydWluc2tpeUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogU2Fz
aGEgTmVmdGluIDxzYXNoYS5uZWZ0aW5AaW50ZWwuY29tPgo+IC0tLQo+IHYyOgo+IENvcnJlY3Qg
Y29tbWl0IG1lc3NhZ2UgYW5kIG1pbm9yIGZpeCBpbiBjb21tZW50Lgo+ICAgZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jIHwgNCArKysrCj4gICAxIGZpbGUgY2hhbmdl
ZCwgNCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2UxMDAwZS9uZXRkZXYuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAw
ZS9uZXRkZXYuYwo+IGluZGV4IGZhMDZmNjhjOGM4MC4uYzY0MTAyYjI5ODYyIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9uZXRkZXYuYwo+ICsrKyBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9uZXRkZXYuYwo+IEBAIC02NDk0LDYgKzY0
OTQsMTAgQEAgc3RhdGljIHZvaWQgZTEwMDBlX3MwaXhfZXhpdF9mbG93KHN0cnVjdCBlMTAwMF9h
ZGFwdGVyICphZGFwdGVyKQo+ICAgCj4gICAJaWYgKGVyMzIoRldTTSkgJiBFMTAwMF9JQ0hfRldT
TV9GV19WQUxJRCAmJgo+ICAgCSAgICBody0+bWFjLnR5cGUgPj0gZTEwMDBfcGNoX2FkcCkgewo+
ICsJCS8qIEtlZXAgdGhlIEdQVCBjbG9jayBlbmFibGVkIGZvciBDU01FICovCj4gKwkJbWFjX2Rh
dGEgPSBlcjMyKEZFWFROVk0pOwo+ICsJCW1hY19kYXRhIHw9IEJJVCgzKTsKPiArCQlldzMyKEZF
WFROVk0sIG1hY19kYXRhKTsKPiAgIAkJLyogUmVxdWVzdCBNRSB1bmNvbmZpZ3VyZSB0aGUgZGV2
aWNlIGZyb20gUzBpeCAqLwo+ICAgCQltYWNfZGF0YSA9IGVyMzIoSDJNRSk7Cj4gICAJCW1hY19k
YXRhICY9IH5FMTAwMF9IMk1FX1NUQVJUX0RQRzsKCgpLaW5kIHJlZ2FyZHMsCgpQYXVsCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxh
biBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5v
c3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
