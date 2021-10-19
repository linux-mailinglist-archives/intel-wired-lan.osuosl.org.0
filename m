Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 209C6433EC2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Oct 2021 20:49:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 78D4E82BBC;
	Tue, 19 Oct 2021 18:49:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Afs3VolKRK5j; Tue, 19 Oct 2021 18:49:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8C348824EF;
	Tue, 19 Oct 2021 18:49:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6FA8C1BF388
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Oct 2021 18:49:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 56E6640134
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Oct 2021 18:49:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id reGYytWD9t0n for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Oct 2021 18:49:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8C4E3400E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Oct 2021 18:49:24 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5ae920.dynamic.kabel-deutschland.de
 [95.90.233.32])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 1BA9861E5FE00;
 Tue, 19 Oct 2021 20:49:22 +0200 (CEST)
To: Anthony L Nguyen <anthony.l.nguyen@intel.com>
References: <20211019152758.58277-1-anthony.l.nguyen@intel.com>
 <c2e59ebe-4a7b-b2d7-f15d-759ad26c006b@molgen.mpg.de>
 <1494d7bcbed00caff6f6391512dd8db5256d3770.camel@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <bb9307c2-58d4-362e-dafb-a6d3c1afd587@molgen.mpg.de>
Date: Tue, 19 Oct 2021 20:49:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <1494d7bcbed00caff6f6391512dd8db5256d3770.camel@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Add missing device ids
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

RGVhciBUb255LAoKCkFtIDE5LjEwLjIxIHVtIDE5OjUzIHNjaHJpZWIgTmd1eWVuLCBBbnRob255
IEw6Cj4gT24gVHVlLCAyMDIxLTEwLTE5IGF0IDE4OjI0ICswMjAwLCBQYXVsIE1lbnplbCB3cm90
ZToKCj4+IEFtIDE5LjEwLjIxIHVtIDE3OjI3IHNjaHJpZWIgVG9ueSBOZ3V5ZW46Cgpb4oCmXQoK
Pj4+IEFzIHBhcnQgb2Ygc3VwcG9ydCBmb3IgRTgxMCBYWFYgZGV2aWNlcywgc29tZSBkZXZpY2Ug
aWRzIHdlcmUgPgo+Pj4gaW5hZHZlcnRlbnRseSBsZWZ0IG91dC4gQWRkIHRob3NlIG1pc3Npbmcg
aWRzLgo+PiBQbGVhc2UgbWVudGlvbiB0aGUgc291cmNlIG9mIHRoZXNlIElEcy4KPiAKPiBJJ20g
bm90IHN1cmUgSSBnZXQgdGhpcyBjb21tZW50LiBUaGVzZSBhcmUgdGhlIElEcyBmb3IgdGhlIE5J
QyBpdHNlbGYuCgpTb3JyeSwgZm9yIGJlaW5nIHVuY2xlYXIuIEkgbWVhbnQsIHlvdSBwcm9iYWJs
eSBkaWRu4oCZdCBnZXQgdGhlIGhhcmR3YXJlIAphbmQgcmVhZCBvdXQgdGhlIElEcyB1c2luZyBg
bHNwY2lgIG9yIHNvLCBidXQgbG9va2VkIGluIHNvbWUgCnNwZWNpZmljYXRpb24sIHdoYXQgSURz
IGFyZSB1c2VkIGZvciB0aGUgaGFyZHdhcmU/CgoKS2luZCByZWdhcmRzLAoKUGF1bApfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4g
bWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1
b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
