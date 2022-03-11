Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BA62A4D69E2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Mar 2022 22:45:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 36FB1847FA;
	Fri, 11 Mar 2022 21:45:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A88uyCQfJZ7B; Fri, 11 Mar 2022 21:45:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 412CB840C7;
	Fri, 11 Mar 2022 21:45:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B179A1BF38E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Mar 2022 21:45:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9E68F840C7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Mar 2022 21:45:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xdBy9pAkhhVE for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Mar 2022 21:45:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0E10A81D16
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Mar 2022 21:45:09 +0000 (UTC)
Received: from [192.168.0.3] (ip5f5aef8b.dynamic.kabel-deutschland.de
 [95.90.239.139])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 33F0761EA1928;
 Fri, 11 Mar 2022 22:45:06 +0100 (CET)
Message-ID: <a9c44b4f-ef51-4e0e-2db2-04c9e4b154fb@molgen.mpg.de>
Date: Fri, 11 Mar 2022 22:45:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Content-Language: en-US
To: Arjun Anantharam <arjun.anantharam@intel.com>
References: <20220311185025.2243-1-arjun.anantharam@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220311185025.2243-1-arjun.anantharam@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH linux-firmware v2] ice: update ice DDP
 comms package to 1.3.31.0
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
Cc: guruprasad.kudukolly.rao@intel.com, intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBBcmp1biwKCgpBbSAxMS4wMy4yMiB1bSAxOTo1MCBzY2hyaWViIEFyanVuIEFuYW50aGFy
YW06Cj4gVXBkYXRlIGljZSBERFAgY29tbXMgcGFja2FnZSBmaWxlIHRvIHRoZSBsYXRlc3QgdmVy
c2lvbjogMS4zLjMxLjAKPiAKPiBIaWdobGlnaHQgb2YgY2hhbmdlcyBzaW5jZSAxLjMuMjAuMDoK
PiAKPiAtQWRkZWQgU2VwYXJhdGUgUGFja2FnZSBUeXBlIEdyb3VwIGZvciBvdXRlciBJUHY0IGFu
ZCBJUHY2Cj4gdHVubmVsIHBhY2tldAo+IC1BZGRlZCBHVFBVIFNDVFAgcHR5cGVzIHRvIFBUR3Mg
bWFwcGluZwo+IC1BZGRlZCBNdWx0aWNhc3Qgc3VwcG9ydCBpbiBGbG93IERpcmVjdG9yCj4gLUFk
ZGVkIHByb2ZpbGVzIGZvciBHVFBVIGV4dGVuc2lvbiBoZWFkZXIKClRoYW5rIHlvdSBmb3IgZXh0
ZW5kaW5nIHRoZSBjb21taXQgbWVzc2FnZS4KClR3byBuaXRzOiBJdOKAmWQgYmUgZ3JlYXQgaWYg
eW91IGFkZGVkIGEgc3BhY2UgYWZ0ZXIgdGhlIChidWxsZXQpIGh5cGhlbiwgCmFuZCB1c2VkIGlt
cGVyYXRpdmUgbW9vZDoKCi0gQWRkIFNlcGFyYXRlIFBhY2thZ2UgVHlwZSBHcm91cCDigKYKCj4g
U2lnbmVkLW9mZi1ieTogQXJqdW4gQW5hbnRoYXJhbSA8YXJqdW4uYW5hbnRoYXJhbUBpbnRlbC5j
b20+Cgpb4oCmXQoKVGhlIHJlc3QgbG9va3MgZ29vZC4KCgpLaW5kIHJlZ2FyZHMsCgpQYXVsCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVk
LWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0
cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
