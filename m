Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E93DB141E25
	for <lists+intel-wired-lan@lfdr.de>; Sun, 19 Jan 2020 14:23:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8BBA020005;
	Sun, 19 Jan 2020 13:23:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V8Kxz8MPhnnA; Sun, 19 Jan 2020 13:23:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E5520203E5;
	Sun, 19 Jan 2020 13:23:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E97291BF5A4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Jan 2020 13:23:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DE59285593
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Jan 2020 13:23:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H97BdnzioQlu for <intel-wired-lan@lists.osuosl.org>;
 Sun, 19 Jan 2020 13:23:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 61E16853E5
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Jan 2020 13:23:17 +0000 (UTC)
Received: from [192.168.0.4] (ip5f5af129.dynamic.kabel-deutschland.de
 [95.90.241.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id D029B2000C132;
 Sun, 19 Jan 2020 14:23:13 +0100 (CET)
To: Sasha Neftin <sasha.neftin@intel.com>
References: <20200119115713.12710-1-sasha.neftin@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <3fcb7594-9e43-5dab-0684-9792ec846619@molgen.mpg.de>
Date: Sun, 19 Jan 2020 14:23:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200119115713.12710-1-sasha.neftin@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v3] e1000e: Add support for Alder Lake
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

RGVhciBTYXNoYSwKCgpBbSAxOS4wMS4yMCB1bSAxMjo1NyBzY2hyaWViIFNhc2hhIE5lZnRpbjoK
PiBBZGQgZGV2aWNlcyBJRCdzIGZvciB0aGUgbmV4dCBMT00gZ2VuZXJhdGlvbnMgdGhhdCB3aWxs
IGJlCj4gYXZhaWxhYmxlIG9uIHRoZSBuZXh0IEludGVsIENsaWVudCBwbGF0Zm9ybSAoQWxkZXIg
TGFrZSkKPiBUaGlzIHBhdGNoIHByb3ZpZGVzIHRoZSBpbml0aWFsIHN1cHBvcnQgZm9yIHRoZXNl
IGRldmljZXMKPiAKPiB2MS0+djI6Cj4gQWRkcmVzcyBjb21tdW5pdHkgY29tbWVudHMKPiB2Mi0+
djM6Cj4gRml4IG1pbm9yIHR5cG8KCuKApiBhbmQgYmFjayBvdXQgZmFsbC10aHJvdWdoIGNoYW5n
ZSAobm8gbmVlZCBmb3IgdjQpCgo+IFNpZ25lZC1vZmYtYnk6IFNhc2hhIE5lZnRpbiA8c2FzaGEu
bmVmdGluQGludGVsLmNvbT4KClJldmlld2VkLWJ5OiBQYXVsIE1lbnplbCA8cG1lbnplbEBtb2xn
ZW4ubXBnLmRlPgoKCktpbmQgcmVnYXJkcywKClBhdWwKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRl
bC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
