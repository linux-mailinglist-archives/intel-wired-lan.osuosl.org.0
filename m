Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 996597F5E88
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Nov 2023 12:58:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 881C24090E;
	Thu, 23 Nov 2023 11:58:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 881C24090E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700740686;
	bh=cut7X6y2zjvptG8hkvhkgxwX6HSJRqqe/mcMkgFfNXs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6AUu5saQCOjkY+XpeJV61sZzdSmFzd1r0BgUJR0j7G2v+kJgEmEQyLqnqZfyyhr3U
	 7w8SeXWN5gZtPbYJyZ+bpgw3VcwzyYSnh4QSYuDxSMG7EEbqYHo8LJfc/r4uYv0R+u
	 ZaZx+8ynnEk17atKm/YnBhW/+O6tSRIVTrGvtvTyRFG8FK/wfp5FrGxBrAUD2MLeRa
	 WkEppZNrOq8SXKdn0G8KIIuEvT1BucI7JBNgEK7zrCTbhAHYLXUfb9TiiVy/Oa40j4
	 qRkyAtJyY4LIDPebk+tjmGHpOmEBxzyquOGmood4AQ7NEDWbnf5jHqE++1ydm0JnNo
	 f9Sjm15I9I/jQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sDLymokLQ0KM; Thu, 23 Nov 2023 11:58:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 43F8040855;
	Thu, 23 Nov 2023 11:58:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 43F8040855
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CBCCA1BF5DF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Nov 2023 11:57:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A369E415BF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Nov 2023 11:57:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A369E415BF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RUjPiowwXnqu for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Nov 2023 11:57:59 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CEFEA40198
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Nov 2023 11:57:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CEFEA40198
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id C4A4EB82BE6;
 Thu, 23 Nov 2023 11:57:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 014FAC433C8;
 Thu, 23 Nov 2023 11:57:52 +0000 (UTC)
Date: Thu, 23 Nov 2023 11:57:50 +0000
From: Simon Horman <horms@kernel.org>
To: Ilpo =?utf-8?B?SsOkcnZpbmVu?= <ilpo.jarvinen@linux.intel.com>
Message-ID: <20231123115750.GB6339@kernel.org>
References: <20231121123428.20907-1-ilpo.jarvinen@linux.intel.com>
 <20231121123428.20907-3-ilpo.jarvinen@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231121123428.20907-3-ilpo.jarvinen@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1700740675;
 bh=wl9oNNHOLEXop5o0ArpCVRXBXQS6LvZBy1Xs2D72YlQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RBtfNhqgVf2DOEg6I9Ifs5PmN+q9wsTnGe+qHhbeEJKlV8I3wzrxM4I2f5G51Q6I2
 rYG1IMBn7OTW+y1uEZcyfOUd+/AcRqbZEM3uigEqI97iQgNZLWzo1Bb6wlbzq0C9An
 xoPhMmQyKzAEvEbnekNqT89fst8W1GZVYnGv/8DFHntwaOie+yuRdTkDp9dN7MDmo/
 D62Pp6nSt3IQLkaCFiWQT153LIol6TSYcPB5GtiWGB2g5qINJ6P9Y7QELDfkOtUrwh
 M6CxD1zlgZX6MhtInT6OppoHdLT6VcWlTPaN3dz1G6jojeO1ku1/qcFbqRqy+q2xSf
 ysgI+NwGKBteA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=RBtfNhqg
Subject: Re: [Intel-wired-lan] [PATCH v4 2/3] e1000e: Use PCI_EXP_LNKSTA_NLW
 & FIELD_GET() instead of custom defines/code
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
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCBOb3YgMjEsIDIwMjMgYXQgMDI6MzQ6MjdQTSArMDIwMCwgSWxwbyBKw6RydmluZW4g
d3JvdGU6Cj4gZTEwMDBlIGhhcyBvd24gY29weSBvZiBQQ0kgTmVnb3RpYXRlZCBMaW5rIFdpZHRo
IGZpZWxkIGRlZmluZXMuIFVzZSB0aGUKPiBvbmVzIGZyb20gaW5jbHVkZS91YXBpL2xpbnV4L3Bj
aV9yZWdzLmggaW5zdGVhZCBvZiB0aGUgY3VzdG9tIG9uZXMgYW5kCj4gcmVtb3ZlIHRoZSBjdXN0
b20gb25lcyBhbmQgY29udmVydCB0byBGSUVMRF9HRVQoKS4KPiAKPiBTdWdnZXN0ZWQtYnk6IEpv
bmF0aGFuIENhbWVyb24gPEpvbmF0aGFuLkNhbWVyb25AaHVhd2VpLmNvbT4KPiBTaWduZWQtb2Zm
LWJ5OiBJbHBvIErDpHJ2aW5lbiA8aWxwby5qYXJ2aW5lbkBsaW51eC5pbnRlbC5jb20+Cj4gUmV2
aWV3ZWQtYnk6IEpvbmF0aGFuIENhbWVyb24gPEpvbmF0aGFuLkNhbWVyb25AaHVhd2VpLmNvbT4K
ClJldmlld2VkLWJ5OiBTaW1vbiBIb3JtYW4gPGhvcm1zQGtlcm5lbC5vcmc+CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFp
bGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3Ns
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
