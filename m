Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8798726664C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Sep 2020 19:25:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2DFE187921;
	Fri, 11 Sep 2020 17:25:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6T3-ONbCwZlS; Fri, 11 Sep 2020 17:25:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AD3D887923;
	Fri, 11 Sep 2020 17:25:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EB2F21BF3CA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 17:25:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E618487AB2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 17:25:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fswGEjbTo5fe for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Sep 2020 17:25:25 +0000 (UTC)
X-Greylist: delayed 00:08:17 by SQLgrey-1.7.6
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com
 [148.163.129.52])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4B2D1879A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 17:25:25 +0000 (UTC)
Received: from dispatch1-us1.ppe-hosted.com (localhost.localdomain [127.0.0.1])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 D78382EEE83
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 17:17:08 +0000 (UTC)
Received: from mx1-us1.ppe-hosted.com (unknown [10.7.65.62])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 B64C2600F8; Fri, 11 Sep 2020 17:17:07 +0000 (UTC)
Received: from us4-mdac16-8.ut7.mdlocal (unknown [10.7.65.76])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id B0B4E8009B; 
 Fri, 11 Sep 2020 17:17:07 +0000 (UTC)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.7.66.37])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 3BD12280081;
 Fri, 11 Sep 2020 17:17:07 +0000 (UTC)
Received: from webmail.solarflare.com (uk.solarflare.com [193.34.186.16])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id D5F71B4008F;
 Fri, 11 Sep 2020 17:17:06 +0000 (UTC)
Received: from [10.17.20.203] (10.17.20.203) by ukex01.SolarFlarecom.com
 (10.17.10.4) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Fri, 11 Sep
 2020 18:17:01 +0100
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, <netdev@vger.kernel.org>
References: <20200911012337.14015-1-jesse.brandeburg@intel.com>
 <20200911012337.14015-7-jesse.brandeburg@intel.com>
From: Edward Cree <ecree@solarflare.com>
Message-ID: <5bcd5f6f-d0c1-b9c4-d5f6-4de845ee1ec7@solarflare.com>
Date: Fri, 11 Sep 2020 18:16:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200911012337.14015-7-jesse.brandeburg@intel.com>
Content-Language: en-GB
X-Originating-IP: [10.17.20.203]
X-ClientProxiedBy: ocex03.SolarFlarecom.com (10.20.40.36) To
 ukex01.SolarFlarecom.com (10.17.10.4)
X-TM-AS-Product-Ver: SMEX-12.5.0.1300-8.6.1012-25660.000
X-TM-AS-Result: No-4.123400-8.000000-10
X-TMASE-MatchedRID: zGP2F0O7j/vmLzc6AOD8DfHkpkyUphL9Rf40pT7Zmv7IPbn2oQhptVcB
 fjjXtvYam2VgmZOOf8V3j1jxhRfPxmm3SnkbLZr6qjZ865FPtpoxXH/dlhvLvzbOtNwwSGVOa3A
 6hcNu8nDq92GZEhpKAfhQCrII02E2lMpYDVQkkeg1VHP4fCovgtGOcAfHKa6u0KxsbaNnoupYRh
 FlJ0Kcr8GQZIKgJv1mHDzDwZlZOvCkFfZTffnkWZ4CIKY/Hg3AcmfM3DjaQLHEQdG7H66TyJ8TM
 nmE+d0ZQlaRmWoGI8vtP3FMG2qpQ/ZCvZhvkwJc+v0C+90s8ayaSPrO4scCc4KjMEMZCDJbJqj8
 +Mqtx6wwAhdFK3lkQsl7u4mtdYPD1DXsKeBNv04EqZlWBkJWd7MZNZFdSWvHG2wlTHLNY1JWXGv
 UUmKP2w==
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--4.123400-8.000000
X-TMASE-Version: SMEX-12.5.0.1300-8.6.1012-25660.000
X-MDID: 1599844627-bZViuQwv02hp
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v1 06/11]
 drivers/net/ethernet: clean up unused assignments
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

T24gMTEvMDkvMjAyMCAwMjoyMywgSmVzc2UgQnJhbmRlYnVyZyB3cm90ZToKPiBBcyBwYXJ0IG9m
IHRoZSBXPTEgY29tcGxpYXRpb24gc2VyaWVzLCB0aGVzZSBsaW5lcyBhbGwgY3JlYXRlZAo+IHdh
cm5pbmdzIGFib3V0IHVudXNlZCB2YXJpYWJsZXMgdGhhdCB3ZXJlIGFzc2lnbmVkIGEgdmFsdWUu
IE1vc3QKPiBvZiB0aGVtIGFyZSBmcm9tIHJlZ2lzdGVyIHJlYWRzLCBidXQgc29tZSBhcmUganVz
dCBwaWNraW5nIHVwCj4gYSByZXR1cm4gdmFsdWUgZnJvbSBhIGZ1bmN0aW9uIGFuZCBuZXZlciBk
b2luZyBhbnl0aGluZyB3aXRoIGl0Lgo+Cj4gVGhlIHJlZ2lzdGVyIHJlYWRzIHNob3VsZCBiZSBP
SywgYmVjYXVzZSB0aGUgY3VycmVudAo+IGltcGxlbWVudGF0aW9uIG9mIHJlYWRsIGFuZCBmcmll
bmRzIHdpbGwgYWx3YXlzIGV4ZWN1dGUgZXZlbgo+IHdpdGhvdXQgYW4gbHZhbHVlLgo+Cj4gV2hl
biBpdCBtYWtlcyBzZW5zZSwganVzdCByZW1vdmUgdGhlIGx2YWx1ZSBhc3NpZ25tZW50IGFuZCB0
aGUKPiBsb2NhbC4gT3RoZXIgdGltZXMsIGp1c3QgcmVtb3ZlIHRoZSBvZmZlbmRpbmcgY29kZSwg
YW5kCj4gb2NjYXNpb25hbGx5LCBqdXN0IG1hcmsgdGhlIHZhcmlhYmxlIGFzIG1heWJlIHVudXNl
ZCBzaW5jZSBpdAo+IGNvdWxkIGJlIHVzZWQgaW4gYW4gaWZkZWYgb3IgZGVidWcgc2NlbmFyaW8u
Cj4KPiBPbmx5IGNvbXBpbGUgdGVzdGVkIHdpdGggVz0xIGFuZCBhbiBhbGx5ZXNjb25maWcgd2l0
aCBhbGwgdGhlCj4gbmV0d29yayBkcml2ZXJzIHR1cm5lZCBpbnRvIG1vZHVsZXMgKHRvIHRyeSB0
byB0ZXN0IGFsbCBvcHRpb25zKS4KPgo+IFNpZ25lZC1vZmYtYnk6IEplc3NlIEJyYW5kZWJ1cmcg
PGplc3NlLmJyYW5kZWJ1cmdAaW50ZWwuY29tPgpGb3IgdGhlIHNmYy9mYWxjb24gcGFydDoKQWNr
ZWQtYnk6IEVkd2FyZCBDcmVlIDxlY3JlZUBzb2xhcmZsYXJlLmNvbT4KKGl0J3Mgbm90IHRoZSBz
YW1lIGFzIHRoZSBzb2x1dGlvbiBJIHdlbnQgd2l0aCBmb3IgdGhldmVyeQrCoHNpbWlsYXIgY29k
ZSBpbiB0aGUgU2llbmEgZHJpdmVyICguLi9mYXJjaC5jKSwgYnV0IGl0IGxvb2tzCsKgcmVhc29u
YWJsZSBlbm91Z2gpLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wu
b3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVk
LWxhbgo=
