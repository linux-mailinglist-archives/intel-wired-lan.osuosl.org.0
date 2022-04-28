Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 24DCE512E0E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Apr 2022 10:17:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BDF084090D;
	Thu, 28 Apr 2022 08:17:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id czdpMl8XDQtB; Thu, 28 Apr 2022 08:17:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 61DBD40902;
	Thu, 28 Apr 2022 08:17:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EE21A1BF59A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Apr 2022 08:17:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D6014400D7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Apr 2022 08:17:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nqOCicDS6tOD for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Apr 2022 08:17:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 236144058E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Apr 2022 08:17:07 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aeb1b.dynamic.kabel-deutschland.de
 [95.90.235.27])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id E34EB61EA1923;
 Thu, 28 Apr 2022 10:17:03 +0200 (CEST)
Message-ID: <e5f0f6a7-1c10-e445-be34-5ae9c3f5d4df@molgen.mpg.de>
Date: Thu, 28 Apr 2022 10:17:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Jedzej Jagielski <jedrzej.jagielski@intel.com>
References: <20220428075735.926715-1-jedrzej.jagielski@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220428075735.926715-1-jedrzej.jagielski@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix adding ADq filter to
 TC0
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBKZWR6ZWosIGRlYXIgR3J6ZWdvcnosCgoKVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoLgoK
QW0gMjguMDQuMjIgdW0gMDk6NTcgc2NocmllYiBKZWR6ZWogSmFnaWVsc2tpOgo+IEZyb206IEdy
emVnb3J6IFN6Y3p1cmVrIDxncnplZ29yenguc3pjenVyZWtAaW50ZWwuY29tPgo+IAo+IFByb2Nl
ZHVyZSBvZiBjb25maWd1cmUgdGMgZmxvd2VyIGZpbHRlcnMgZXJyb25lb3VzbHkgYWxsb3cgdG8g
Y3JlYXRlCgphbGxvdypzKgoKPiBmaWx0ZXJzIG9uIFRDMCB3aGVyZSB1bmZpbHRlcmVkIHBhY2tl
dHMgYXJlIGFsc28gZGlyZWN0ZWQgYnkgZGVmYXVsdC4KPiBJc3N1ZSB3YXMgY2F1c2VkIGJ5IGlu
c3VmZmljaWVudCBjaGVja3Mgb2YgaHdfdGMgcGFyYW1ldGVyIHNwZWNpZnkKCuKAoiAgIHMvb2Yv
aWYvPwrigKIgICAqaXMqIGNhdXNlZAoKPiBhIGhhcmR3YXJlIHRyYWZmaWMgY2xhc3MgdG8gcGFz
cyBtYXRjaGluZyBwYWNrZXRzIG9uIHRvLgoKUGxlYXNlIGFkZCBhIGJsYW5rIGxpbmUgYmV0d2Vl
biBwYXJhZ3JhcGhzLgoKPiBGaXggY2hlY2tpbmcgaHdfdGMgcGFyYW1ldGVyIHdoaWNoIGJsb2Nr
cyBjcmVhdGlvbiBvZiBmaWx0ZXJzIG9uIFRDMC4KPiBQcmV2aW91c2x5IGl0IHdhcyBwb3NzaWJs
ZSB0byBjcmVhdGUgdGMgZmxvd2VyIGZpbHRlcnMgb24gVEMwLgoKVGhlIGxhc3Qgc2VudGVuY2Ug
aXMgcmVkdW5kYW50IHdoZW4gcmVhZGluZyB0aGUgd2hvbGUgY29tbWl0IG1lc3NhZ2UuCgo+IAo+
IEZpeGVzOiAyZjRiNDExYTNkNjcgKCJpNDBlOiBFbmFibGUgY2xvdWQgZmlsdGVycyB2aWEgdGMt
Zmxvd2VyIikKPiBTaWduZWQtb2ZmLWJ5OiBHcnplZ29yeiBTemN6dXJlayA8Z3J6ZWdvcnp4LnN6
Y3p1cmVrQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBKZWRyemVqIEphZ2llbHNraSA8amVk
cnplai5qYWdpZWxza2lAaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaTQwZS9pNDBlX21haW4uYyB8IDUgKysrKysKPiAgIDEgZmlsZSBjaGFuZ2VkLCA1IGlu
c2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aTQwZS9pNDBlX21haW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9t
YWluLmMKPiBpbmRleCAxZTA3NGE2NDYyZDQuLmEwZDVkNjk2Y2RjMSAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jCj4gKysrIGIvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21haW4uYwo+IEBAIC04NTM3LDYgKzg1Mzcs
MTEgQEAgc3RhdGljIGludCBpNDBlX2NvbmZpZ3VyZV9jbHNmbG93ZXIoc3RydWN0IGk0MGVfdnNp
ICp2c2ksCj4gICAJCXJldHVybiAtRU9QTk9UU1VQUDsKPiAgIAl9Cj4gICAKPiArCWlmICghdGMp
IHsKPiArCQlkZXZfZXJyKCZwZi0+cGRldi0+ZGV2LCAiVW5hYmxlIHRvIGFkZCBmaWx0ZXIgYmVj
YXVzZSBvZiBpbnZhbGlkIGRlc3RpbmF0aW9uIik7Cj4gKwkJcmV0dXJuIC1FSU5WQUw7CgpIb3cg
Y2FuIGFuIGludmFsaWQgZGVzdGluYXRpb24gYmUgcGFzc2VkIGF0IGFsbD8gU2hvdWxkIHRoYXQg
YmUgV0FSTl9PTiAKdG8gZGVidWcgdGhpcz8KCj4gKwl9Cj4gKwo+ICAgCWlmICh0ZXN0X2JpdChf
X0k0MEVfUkVTRVRfUkVDT1ZFUllfUEVORElORywgcGYtPnN0YXRlKSB8fAo+ICAgCSAgICB0ZXN0
X2JpdChfX0k0MEVfUkVTRVRfSU5UUl9SRUNFSVZFRCwgcGYtPnN0YXRlKSkKPiAgIAkJcmV0dXJu
IC1FQlVTWTsKCgpLaW5kIHJlZ2FyZHMsCgpQYXVsCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwt
d2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
