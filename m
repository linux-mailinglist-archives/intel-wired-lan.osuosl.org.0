Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 884613A2526
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Jun 2021 09:16:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DF1A783C87;
	Thu, 10 Jun 2021 07:16:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ie0zHii0uNMe; Thu, 10 Jun 2021 07:16:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1057383C7A;
	Thu, 10 Jun 2021 07:16:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 428FF1BF475
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jun 2021 07:16:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 30C7D83C7A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jun 2021 07:16:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jZlM4gJnAxvo for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Jun 2021 07:16:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D31CD83C79
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jun 2021 07:16:26 +0000 (UTC)
Received: from [192.168.0.7] (ip5f5aef16.dynamic.kabel-deutschland.de
 [95.90.239.22])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id C14AC61E646D4;
 Thu, 10 Jun 2021 09:16:23 +0200 (CEST)
To: intel-wired-lan@lists.osuosl.org
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <83875924-20ef-a7f1-9a31-011411a31f51@molgen.mpg.de>
Date: Thu, 10 Jun 2021 09:16:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
Content-Language: en-US
Subject: [Intel-wired-lan] Date/Time issues with patches sent from Intel
 folks
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
Cc: =?UTF-8?Q?J=c4=99drzej_Jagielski?= <jedrzej.jagielski@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBMaW51eCBmb2xrLAoKClNpbmNlIG92ZXIgYSB5ZWFyLCBwYXRjaGVzIHNlbnQgZnJvbSBJ
bnRlbCBkZXZlbG9wZXJzIHRvIHRoZSBtYWlsaW5nIApsaXN0IG9mdGVuIGhhdmUgYSBkYXRlIGZy
b20gdGhlIGZ1dHVyZSwgbWVzc2luZyB1cCBwZW9wbGXigJlzIGluYm94ZXMsIAp3aGVyZSBzb3J0
aW5nIGFmdGVyIGRhdGUgaXMgdXNlZC4KCkkgcmFpc2VkIGl0IHNldmVyYWwgdGltZXMsIGJ1dCBp
dCBrZWVwcyBoYXBwZW5pbmcuIEl0IGxvb2tzIGxpa2UgaXTigJlzIApmcm9tIGRldmVsb3BlcnMg
aW4gb2ZmaWNlcyBpbiBQb2xhbmQuIEl04oCZZCBiZSBhd2Vzb21lIGlmIHlvdSBmaXhlZCB5b3Vy
IAppbmZyYXN0cnVjdHVyZSwgc28gdGhhdCBhbGwgc3lzdGVtcyB1c2UgdGhlIGNvcnJlY3QgdGlt
ZS4KCiAgICAgUmVjZWl2ZWQ6IGZyb20gYW1saW4tMDE4LTIxOC5pZ2suaW50ZWwuY29tIChbMTAu
MTAyLjE4LjIxOF0pCiAgICAgIGJ5IG9yc21nYTAwMS5qZi5pbnRlbC5jb20gd2l0aCBFU01UUDsg
MDkgSnVuIDIwMjEgMjM6NDU6MTkgLTA3MDAKICAgICBb4oCmXQogICAgIERhdGU6IEZyaSwgMTEg
SnVuIDIwMjEgMjI6NDI6MTcgKzAwMDAKICAgICBb4oCmXQogICAgIFgtTWFpbGVyOiBnaXQtc2Vu
ZC1lbWFpbCAyLjI3LjAKCgpLaW5kIHJlZ2FyZHMsCgpQYXVsCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QK
SW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
