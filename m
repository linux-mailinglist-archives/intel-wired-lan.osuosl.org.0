Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4DF146BD99
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Dec 2021 15:27:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9ABB04058F;
	Tue,  7 Dec 2021 14:27:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J41BNrFeORNq; Tue,  7 Dec 2021 14:27:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 815F84056D;
	Tue,  7 Dec 2021 14:27:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 229821BF304
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Dec 2021 14:27:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 11AB541C12
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Dec 2021 14:27:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0-s9dn0L2aOO for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Dec 2021 14:27:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7421D41C10
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Dec 2021 14:27:44 +0000 (UTC)
Received: from [192.168.0.3] (ip5f5aea86.dynamic.kabel-deutschland.de
 [95.90.234.134])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id ACCA761E6478B;
 Tue,  7 Dec 2021 15:27:42 +0100 (CET)
Message-ID: <3ad83995-d7c7-facd-47e3-3275fbab245b@molgen.mpg.de>
Date: Tue, 7 Dec 2021 15:27:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Content-Language: en-US
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
References: <20211124124136.1776-1-shiraz.saleem@intel.com>
 <20211124124136.1776-2-shiraz.saleem@intel.com>
 <6f95e1de-6c35-76e5-eb83-68b60dc55c05@molgen.mpg.de>
 <42f45779-a6e1-9033-376d-4dae36261873@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <42f45779-a6e1-9033-376d-4dae36261873@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH 2/2] net/ice: Remove unused enum
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
Cc: Parav Pandit <parav@nvidia.com>, Shiraz Saleem <shiraz.saleem@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBKZXNzZSwKCgpBbSAyOS4xMS4yMSB1bSAyMjozMSBzY2hyaWViIEplc3NlIEJyYW5kZWJ1
cmc6Cj4gT24gMTEvMjQvMjAyMSA0OjQ3IEFNLCBQYXVsIE1lbnplbCB3cm90ZToKCj4+IEFtIDI0
LjExLjIxIHVtIDEzOjQxIHNjaHJpZWIgU2hpcmF6IFNhbGVlbToKPj4+IEZyb206ICJTaGlyYXog
U2FsZWVtIiA8c2hpcmF6LnNhbGVlbUBpbnRlbC5jb20+Cj4+Pgo+Pj4gUmVtb3ZlIGljZV9kZXZs
aW5rX3BhcmFtX2lkIGVudW0gYXMgaXRzIG5vdCB1c2VkLgo+Pgo+PiBQbGVhc2UgYWRkIHRoZSBu
YW1lIGBpY2VfZGV2bGlua19wYXJhbV9pZGAgdG8gdGhlIGNvbW1pdCBtZXNzYWdlIHN1bW1hcnku
Cj4gCj4gSGkgUGF1bCwgSSBkb24ndCB0aGluayB0aGF0IGlzIG5lY2Vzc2FyeSwgaXMgdGhpcyBq
dXN0IHBlcnNvbmFsIAo+IHByZWZlcmVuY2Ugb3IgYXJlIHlvdSBmb2xsb3dpbmcgc29tZSBzdHls
ZSBndWlkZWxpbmUgdGhhdCBJIGRvbid0IGtub3cgCj4gYWJvdXQgb3IgbWF5YmUganVzdCBkb24n
dCByZW1lbWJlcj8KPiAKPiBJJ2QgYXJndWUgdGhhdCB0aGUgc3ViamVjdCBsaW5lIGhhcyBhIGRp
ZmZlcmVudCBidWcsIGl0IHNob3VsZCBiZToKPiBbUEFUQ0ggbmV0LW5leHRdIGljZTogUmVtb3Zl
IHVudXNlZCBlbnVtCj4gCj4gQnV0IEkgc2VlIG5vIHJlYXNvbiB0byBhZGQgdGhlIGxvbmcgc3Ry
aW5nIG9mIHRoZSBhY3R1YWwgZW51bSByZW1vdmVkIHRvIAo+IHRoZSBzdWJqZWN0LgoKUmVhZGlu
ZyB0aHJvdWdoIGBnaXQgbG9nIC0tb25lbGluZWAsIHdoaWNoIGlzIGFsc28gdXNlZCBpbiB0aGUg
CmFubm91bmNlbWVudCBlbWFpbHMsIHRoZSBsaW5lCgo+IGljZTogUmVtb3ZlIHVudXNlZCBlbnVt
Cgp3b3VsZCBtYWtlIG1lIG5lZWQgdG8gbG9vayBpbnRvIHRoZSBjb21taXQgdG8gZmluZCBvdXQg
aWYgc29tZXRoaW5nIArigJxpbXBvcnRhbnTigJ0gd2FzIHJlbW92ZWQuIFVzaW5nCgo+IGljZTog
UmVtb3ZlIHVudXNlZCBlbnVtIGljZV9kZXZsaW5rX3BhcmFtX2lkCgp3b3VsZCBtYWtlIHRoYXQg
dW5uZWNlc3NhcnkgZm9yIG1lLgoKCktpbmQgcmVnYXJkcywKClBhdWwKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcg
bGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
