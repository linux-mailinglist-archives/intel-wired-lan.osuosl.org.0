Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6454032B5DE
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Mar 2021 09:08:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BE319400AE;
	Wed,  3 Mar 2021 08:08:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qIPOtJNz6NeB; Wed,  3 Mar 2021 08:08:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B5DBB400A9;
	Wed,  3 Mar 2021 08:08:27 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2317A1BF4DB
 for <intel-wired-lan@osuosl.org>; Wed,  3 Mar 2021 08:08:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1F42483A40
 for <intel-wired-lan@osuosl.org>; Wed,  3 Mar 2021 08:08:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aZSd9SH2wTdj for <intel-wired-lan@osuosl.org>;
 Wed,  3 Mar 2021 08:08:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1EEF18378C
 for <intel-wired-lan@osuosl.org>; Wed,  3 Mar 2021 08:08:21 +0000 (UTC)
IronPort-SDR: tSuEXs56Sneva/5dyd41AVD/twfp5vgttba1butx+W4KfRGCQXRwcBW1eMciiQv+HSX7ir1gqY
 8Nse+4fmLbkQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9911"; a="251184982"
X-IronPort-AV: E=Sophos;i="5.81,219,1610438400"; d="scan'208";a="251184982"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2021 00:08:20 -0800
IronPort-SDR: sO9RPzVGYXBTCtGNjUUsG2yD2/bFSVAiO70W4xOezmH+Rp5Q+4vjEi1gzfV3j+m5I3BUHseTV9
 Iopn91hu7Plg==
X-IronPort-AV: E=Sophos;i="5.81,219,1610438400"; d="scan'208";a="407131194"
Received: from dfuxbrux-desk.ger.corp.intel.com (HELO [10.12.48.255])
 ([10.12.48.255])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2021 00:08:19 -0800
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 intel-wired-lan@osuosl.org
References: <20210219163648.14581-1-muhammad.husaini.zulkifli@intel.com>
From: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <25ceda96-4835-0bec-e3b9-e5bf5edd6adf@linux.intel.com>
Date: Wed, 3 Mar 2021 10:08:17 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210219163648.14581-1-muhammad.husaini.zulkifli@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net v1 0/2] igc: Fix Pause Frame
 Advertising
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
Cc: mallikarjuna.chilakala@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTkvMDIvMjAyMSAxODozNiwgTXVoYW1tYWQgSHVzYWluaSBadWxraWZsaSB3cm90ZToKPiBI
aSwKPiAKPiBLaW5kbHkgaGVscCB0byByZXZpZXcgYmVsb3cgcGF0Y2hlcy4KPiAKPiBTdW1tYXJ5
IG9mIGVhY2ggcGF0Y2hlcyBhcyBwZXIgYmVsb3c6Cj4gUGF0Y2ggMTogVG8gZml4ICJBZHZlcnRp
c2VkIHBhdXNlIGZyYW1lIHVzZSIgYWR2ZXJ0aXNpbmcgd2hlbiB0eCBhbmQgcnggYXJlIGluIG9m
ZiBzdGF0ZSB3aXRoIEF1dG9OZWdvdGlhdGUgb2ZmLgo+IFBhdGNoIDI6IFRvIGZpeCAiU3VwcG9y
dGVkIHBhdXNlIGZyYW1lIHVzZSIgb3V0cHV0IHZpYSBldGh0b29sIHdoZXJlIHRoZSBiaXQgaXMg
bm90IHNldC4KPiAKPiBUZXN0ZWQgd2l0aCBJbnRlbMKuIEV0aGVybmV0IENvbnRyb2xsZXIgSTIy
NShSZXY0KS4KPiAKPiBUaGFua3MuCj4gCj4gTXVoYW1tYWQgSHVzYWluaSBadWxraWZsaSAoMik6
Cj4gICAgaWdjOiBGaXggUGF1c2UgRnJhbWUgQWR2ZXJ0aXNpbmcKPiAgICBpZ2M6IEZpeCBTdXBw
b3J0ZWQgUGF1c2UgRnJhbWUgTGluayBTZXR0aW5nCj4gCj4gICBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pZ2MvaWdjX2V0aHRvb2wuYyB8IDcgKysrKy0tLQo+ICAgMSBmaWxlIGNoYW5nZWQs
IDQgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiAKPiAtLQo+IDIuMTcuMQo+IAo+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtd2ly
ZWQtbGFuIG1haWxpbmcgbGlzdAo+IEludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCj4gaHR0cHM6
Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCj4gClRl
c3RlZC1ieTogRHZvcmEgRnV4YnJ1bWVyIDxkdm9yYXguZnV4YnJ1bWVyQGxpbnV4LmludGVsLmNv
bT4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
d2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczov
L2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
