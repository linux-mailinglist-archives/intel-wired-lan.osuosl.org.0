Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 612492FBC5C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Jan 2021 17:26:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1DC1B85882;
	Tue, 19 Jan 2021 16:26:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1yYGn9U4bG3O; Tue, 19 Jan 2021 16:26:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7CE0485EF2;
	Tue, 19 Jan 2021 16:26:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3F8611BF576
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 16:26:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3ADA185450
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 16:26:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2Z2x-ek_xV41 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Jan 2021 16:26:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A3B0B853E5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 16:26:34 +0000 (UTC)
IronPort-SDR: ODYEiB5a4GWTWFVKYdYevoXvzXFLrtbNcKh6l7q1YQQLCkBLEQ2M3jur622gEaF5NGsbY1dXma
 5+1MjYmJ5nSw==
X-IronPort-AV: E=McAfee;i="6000,8403,9869"; a="179042160"
X-IronPort-AV: E=Sophos;i="5.79,359,1602572400"; d="scan'208";a="179042160"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2021 08:26:33 -0800
IronPort-SDR: rtO75/41voOOAphLoNa5+fAdNNKX4+BEi7n8b3UJtuXF6JcNnUengElpr4QnNYJ+XC+FJHj+pa
 GvwayobywxaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,359,1602572400"; d="scan'208";a="365859613"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by orsmga002.jf.intel.com with ESMTP; 19 Jan 2021 08:26:32 -0800
Date: Tue, 19 Jan 2021 17:17:15 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Brian Topping <brian.topping@gmail.com>
Message-ID: <20210119161715.GA22141@ranger.igk.intel.com>
References: <7F3D0A12-F9FE-4386-9D35-D1C89BD84227@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7F3D0A12-F9FE-4386-9D35-D1C89BD84227@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] ixgbe limits on core count
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCBKYW4gMTgsIDIwMjEgYXQgMDQ6MTk6MjNBTSAtMDcwMCwgQnJpYW4gVG9wcGluZyB3
cm90ZToKPiBIZWxsbyBleHBlcnRzISAKPiAKPiBJ4oCZbSBzZXR0aW5nIHVwIGEgbWFjaGluZSB3
aXRoIHR3byBFNS0yNjk2IHYzIENQVXMgdXNpbmcgWERQIG9uIGtlcm5lbAo+IDUuMTAuNi0wNTEw
MDYtZ2VuZXJpYyBhbmQgcnVubmluZyBpbnRvIHRoZSBjb25zdHJhaW50IGF0Cj4gaHR0cHM6Ly9n
aXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0
L3RyZWUvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfbWFpbi5jI24xMDEz
Ngo+IDxodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2
YWxkcy9saW51eC5naXQvdHJlZS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdi
ZV9tYWluLmMjbjEwMTM2Pi4gCj4gCgpIaSBCcmlhbiwKd2UncmUgYXdhcmUgb2YgdGhpcyBpc3N1
ZSwgdGhhbmtzIGZvciBicmluZ2luZyB0aGlzIHVwLiBXZSBwbGFuIHRvIGFkZHJlc3MKdGhpcyBp
biBzb21lIG5lYXIgZnV0dXJlLgoKPiBBbnkgYWR2aWNlIHdoYXQgdGhlIG1vc3QgcHJhY3RpY2Fs
IGxvbmcgdGVybSBzb2x1dGlvbiBpcz8KPiAKPiBTaG9ydCB0ZXJtLCBJIGNhbiBkaWFsIGJhY2sg
dGhlIG51bWJlciBvZiB1c2FibGUgY29yZXMuIEkgaGF2ZW7igJl0IGR1Zwo+IGludG8gdGhlIGJp
dHMgdG8gdW5kZXJzdGFuZCBpZiB0aGlzIGNvbnN0cmFpbnQgaXMgYmFzZWQgb24gaGFyZHdhcmUK
PiBsaW1pdHMgb24gdGhlIGNhcmQgb3IgdGhpcyB3YXMgYSBjaG9pY2UgdGhhdCB3YXMgbWFkZSB3
aGVuIHByb2Nlc3NvcnMKPiBoYWQgZmV3ZXIgY29yZXMuCgppeGdiZSBoYXMgb25seSAxMjggVHgg
SFcgcXVldWVzIEFGQUlLLCBzbyBjdXJyZW50bHkgd2UgaGF2ZSBhIGNoZWNrCmFnYWluc3QgY3B1
IGNvdW50IGFuZCBkbyBub3QgbG9hZCBYRFAgZm9yIGNhc2Ugd2hlbiBtYWNoaW5lIGhhcyBtb3Jl
IHRoYW4KNjQgY3B1cyBhcyBYRFAgbmVlZHMgdG8gaGF2ZSBhIGRlZGljYXRlZCBIVyBUeCBxdWV1
ZSBzbyB0aGF0IGl0IGlzIGZ1bGx5Cm9wZXJhdGlvbmFsLgoKSSB0aGluayB0aGF0IHNvbHV0aW9u
IChvciB3b3JrYXJvdW5kLCBub3Qgc3VyZSBob3cgdG8gcmVsYXRlIHRvIHRoYXQpIGlzCnBpY2tp
bmcgd2hhdCBpcyBsZWZ0IGluIHRlcm1zIG9mIEhXIFR4IHJlc291cmNlcyBhbmQgYXNzaWduaW5n
IGl0IHRvIFhEUC4KCklmIHNlbmRpbmcgaGFwcGVucyBvbiBhIGNwdSBuciA3MDoKCmNwdV9uciA9
IDcwCmNwdV9jbnQgPSA3MjsKeGRwX3R4X2NudCA9IDU2OwoKdGhlbiB3ZSBwaWNrIChjcHVfbnIg
JSB4ZHBfdHhfY250KSArIGNwdV9jbnQgPSAoNzAgJSA1NikgKyA3MiA9IDg2IEhXIFR4CnF1ZXVl
LiBBdCB0aGUgc2FtZSB0aW1lLCBzYW1lIHF1ZXVlIGNvdWxkIGJlIGFjY2Vzc2VkIGZyb20gY3B1
IDE0IGlmIEkgYW0Kbm90IG1pc3Rha2VuLCBzbyB0aGlzIGJyaW5ncyB0aGUgbmVlZCBmb3IgbG9j
a2luZy4gV2Ugd291bGQgYmUgZGV0ZWN0aW5nCnN1Y2ggY29uZmlndXJhdGlvbiBhdCB0aGUgdGlt
ZSB3aGVuIFhEUCBwcm9nIGlzIGJlaW5nIGxvYWRlZCBvbnRvCmludGVyZmFjZSBhbmQgcGlja2lu
ZyB0aGF0ICdmYWxsYmFjaycgbW9kZS4gRm9yIDwgNjQgY3B1IG1hY2hpbmVzLCBjdXJyZW50CnNj
aGVtZSB3aWxsIGJlIHBpY2tlZCBzbyB3ZSB3b3VsZG4ndCBiZSBodXJ0aW5nIHBlcmZvcm1hbmNl
IHZpYSB1bm5lZWRlZApsb2NrIGFjcXVpcmluZyBmb3Igc3VjaCBzeXN0ZW1zLgoKTWFjaWVqCgo+
IAo+IFRoYW5rcyBraW5kbHkhCj4gCj4gQnJpYW4KCj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0Cj4g
SW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKPiBodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwt
d2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
