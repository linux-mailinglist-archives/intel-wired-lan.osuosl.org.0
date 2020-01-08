Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EBEEE134F96
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jan 2020 23:47:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7CF4C864DA;
	Wed,  8 Jan 2020 22:47:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hMC+XR5l1NST; Wed,  8 Jan 2020 22:47:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B44C286969;
	Wed,  8 Jan 2020 22:47:23 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E0E381BF3DD
 for <intel-wired-lan@osuosl.org>; Wed,  8 Jan 2020 22:47:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D79D885A2E
 for <intel-wired-lan@osuosl.org>; Wed,  8 Jan 2020 22:47:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VjS7qr9046UM for <intel-wired-lan@osuosl.org>;
 Wed,  8 Jan 2020 22:47:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 51EDC859F8
 for <intel-wired-lan@osuosl.org>; Wed,  8 Jan 2020 22:47:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 14:47:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,411,1571727600"; d="scan'208";a="211690086"
Received: from jekeller-mobl.amr.corp.intel.com (HELO [134.134.177.84])
 ([134.134.177.84])
 by orsmga007.jf.intel.com with ESMTP; 08 Jan 2020 14:47:20 -0800
To: intel-wired-lan@osuosl.org
References: <20191125142452.21819-1-radoslawx.tyl@intel.com>
 <7e9bbd9b-ee05-b207-a472-77d03c3ee6ac@molgen.mpg.de>
 <CAKgT0UexoZWiF7Z745O3FkA+A+f-E31DhD5mGXjweXecrRJtgw@mail.gmail.com>
 <ff7c1cc5-3bec-3ce7-f584-6fb1ef1f9cbe@gmail.com>
From: Jacob Keller <jacob.e.keller@intel.com>
Organization: Intel Corporation
Message-ID: <35f3bcec-6685-d6c3-8842-09fc1729dd57@intel.com>
Date: Wed, 8 Jan 2020 14:47:20 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <ff7c1cc5-3bec-3ce7-f584-6fb1ef1f9cbe@gmail.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v2] ixgbevf: Remove limit of 10
 entries for unicast filter list
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAxMS8yNS8yMDE5IDExOjE0IEFNLCBHcmVnb3J5IFJvc2Ugd3JvdGU6Cj4gCj4gSXQncyB0
b3VnaCB0byByZWNhbGwgZXhhY3RseSB3aGF0IG15IHRoaW5raW5nIHdhcyAtIDggeWVhcnMgaXMg
YSBsb25nIAo+IHRpbWUuwqAgSG93ZXZlciwgSSB0aGluayB5b3UncmUKPiByaWdodCB0aGF0IHRo
aXMgaXMgYWJvdXQgcmVzb3VyY2Ugc2hhcmluZyBhbmQgbm90IGFsbG93aW5nIGFueSBzaW5nbGUg
VkYgCj4gdG8gY29uc3VtZSBhbGwgdGhlIHJlbWFpbmluZwo+IFJBUiBlbnRyaWVzLsKgIFRlbiBl
bnRyaWVzIHNlZW1zIGFyYml0cmFyeSBidXQgSSBkbyByZWNhbGwgYXQgdGhlIHRpbWUgYSAKPiBj
b21tb24gdGVzdCBzZXR1cCB3YXMgd2l0aAo+IDQgVkZzLsKgIEFsc28sIHdlIG5lZWRlZCB0byBy
ZXNlcnZlIFJBUiBlbnRyaWVzIGZvciB0aGUgUEYgdG9vIElJUkMuCj4gCj4gTWF5YmUgU2liYWkg
Y2FuIHJlY2FsbCwgSSBkb24ndCBrbm93IGlmIHNoZSdzIHN0aWxsIGF0IEludGVsIGJ1dCBtYXli
ZSAKPiBhc2sgaGVyIGFzIHdlbGwuCj4gCj4gU29ycnkgSSBjb3VsZG4ndCBiZSBtb3JlIGhlbHAu
Cj4gCj4gUmVnYXJkcywKPiAKPiAtIEdyZWcKClJpZ2h0LiBUaGlzIGlzIHdoYXQgSSB3b3VsZCBo
YXZlIHRob3VnaHQgYXMgd2VsbC4gQnkgbm90IGxpbWl0aW5nLCB3ZQpwb3RlbnRpYWxseSBhbGxv
dyBvbmUgVkYgdG8gaG9nIGFsbCBvZiB0aGUgcmVzb3VyY2VzLgoKSXQncyBwbGF1c2libGUgdGhh
dCB0aGlzIGxpbWl0IG91Z2h0IHRvIGJlIGNvbmZpZ3VyYWJsZSBpbnN0ZWFkIG9mCnN0YXRpYy4g
VGhpcyB3YXksIGEgc3lzdGVtIGFkbWluaXN0cmF0b3IgY291bGQgY2hhbmdlIHRoZSBsaW1pdCBv
biB0aGUKUEYgYW5kIGVuYWJsZSBtb3JlIGVudHJpZXMgdGhhbiB0aGUgc3RhdGljIGxpbWl0IG9m
IDEwLgoKVGhhdCBvYnZpb3VzbHkgcmVxdWlyZXMgbW9yZSBwbHVtYmluZyBpbiBwbGFjZSB0byBy
ZXByZXNlbnQgdGhlIGxpbWl0CmFuZCBmaW5kIGFuIGFkZXF1YXRlIHdheSBvZiBpbmZvcm1pbmcg
dGhlIFBGIHN5c3RlbSBhZG1pbmlzdHJhdG9yLi4uCgpUaGFua3MsCkpha2UKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxp
bmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
