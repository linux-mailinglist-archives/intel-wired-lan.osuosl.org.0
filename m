Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8895455036
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Nov 2021 23:17:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E36D5414C2;
	Wed, 17 Nov 2021 22:17:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H0-RBdozSKV4; Wed, 17 Nov 2021 22:17:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C1D484149B;
	Wed, 17 Nov 2021 22:17:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8F8E41BF2FA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Nov 2021 22:17:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7D90140965
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Nov 2021 22:17:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5qiC-cd-8m4p for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Nov 2021 22:17:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A323740988
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Nov 2021 22:17:16 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aeac0.dynamic.kabel-deutschland.de
 [95.90.234.192])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 8A52861E6478B;
 Wed, 17 Nov 2021 23:17:13 +0100 (CET)
Message-ID: <b06891ed-4e46-d37f-70a3-391026ed7a4d@molgen.mpg.de>
Date: Wed, 17 Nov 2021 23:17:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-US
To: Tony Nguyen <anthony.l.nguyen@intel.com>
References: <20211117221038.70579-1-anthony.l.nguyen@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20211117221038.70579-1-anthony.l.nguyen@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Removed unused
 ICE_FLOW_SEG_HDRS_L2_MASK
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

RGVhciBUb255LAoKCkFtIDE3LjExLjIxIHVtIDIzOjEwIHNjaHJpZWIgVG9ueSBOZ3V5ZW46Cj4g
SUNFX0ZMT1dfU0VHX0hEUlNfTDJfTUFTSyBpcyBub3QgYmVpbmcgdXNlZDsgcmVtb3ZlIHRoZSBk
ZWZpbmUuCgpOaXQ6IEl04oCZZCBiZSBncmVhdCBpZiB5b3UgdXNlZCBpbXBlcmF0aXZlIG1vb2Qg
KHByZXNlbnQgdGVuc2UpIGluIHRoZSAKc3VtbWFyeTogUmVtb3ZlIHVudXNlZCDigKYuCgo+IFJl
cG9ydGVkLWJ5OiBKZXNzZSBCcmFuZGVidXJnIDxqZXNzZS5icmFuZGVidXJnQGludGVsLmNvbT4K
PiBTaWduZWQtb2ZmLWJ5OiBUb255IE5ndXllbiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+
Cj4gLS0tCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2Zsb3cuYyB8IDIg
LS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2Zsb3cuYyBiL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2VfZmxvdy5jCj4gaW5kZXggMmJmZTlkOWQ3ZWRjLi5lZjEwZjA5
NDEyMzEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9m
bG93LmMKPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2Zsb3cuYwo+
IEBAIC02MDksOCArNjA5LDYgQEAgc3RydWN0IGljZV9mbG93X3Byb2ZfcGFyYW1zIHsKPiAgIAlJ
Q0VfRkxPV19TRUdfSERSX0VTUCB8IElDRV9GTE9XX1NFR19IRFJfQUggfCBcCj4gICAJSUNFX0ZM
T1dfU0VHX0hEUl9OQVRfVF9FU1ApCj4gICAKPiAtI2RlZmluZSBJQ0VfRkxPV19TRUdfSERSU19M
Ml9NQVNLCVwKPiAtCShJQ0VfRkxPV19TRUdfSERSX0VUSCB8IElDRV9GTE9XX1NFR19IRFJfVkxB
TikKPiAgICNkZWZpbmUgSUNFX0ZMT1dfU0VHX0hEUlNfTDNfTUFTSwlcCj4gICAJKElDRV9GTE9X
X1NFR19IRFJfSVBWNCB8IElDRV9GTE9XX1NFR19IRFJfSVBWNiB8IElDRV9GTE9XX1NFR19IRFJf
QVJQKQo+ICAgI2RlZmluZSBJQ0VfRkxPV19TRUdfSERSU19MNF9NQVNLCVwKPiAKCkFja2VkLWJ5
OiBQYXVsIE1lbnplbCA8cG1lbnplbEBtb2xnZW4ubXBnLmRlPgoKCktpbmQgcmVnYXJkcywKClBh
dWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
d2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczov
L2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
