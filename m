Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E870380BA1C
	for <lists+intel-wired-lan@lfdr.de>; Sun, 10 Dec 2023 11:10:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 98AD96105F;
	Sun, 10 Dec 2023 10:10:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 98AD96105F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702203019;
	bh=ADWraa4k6eG9yRfXT8esIb4uBfUGVf3puQ/Hyk4wQeA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RQbWWmn8wTXMbORw3Ju9WFLny+A9HvxmgfvnBZEisbuwPTCFVmu/26qaA1cEm87xY
	 kgmSADnDQziN6HDZQPnH3zUaP/YGsFMyQE54yr5h7QVp9gjffW0pDCJ0tibpa6wnNl
	 IeJeoTCdd6m5vafNfE/JwleGhGinOFb/o5JNR2S1zdvTDI8OFrGviprzRCIjDWY1hv
	 LQgeVY0jiaVCRZF0Z2qqKtjcScdrvZPNOb+81h+9tC+0GzHWea4Hpwi/Y064YZgnZB
	 xpvNJVflVuX+CJqSEsDtI9Gq98d0dtDpL8cFLipSDRtMhceKmJaAwfSzfmfKvkPrV+
	 LMJhAp4M8bbhw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pt_DTUQc6Oh4; Sun, 10 Dec 2023 10:10:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F4BD60ACA;
	Sun, 10 Dec 2023 10:10:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7F4BD60ACA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E1AEC1BF5AA
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 Dec 2023 10:10:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BD7FE405F1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 Dec 2023 10:10:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BD7FE405F1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qKINevkSrtk4 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 10 Dec 2023 10:10:12 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D9F37404AE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 Dec 2023 10:10:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D9F37404AE
X-IronPort-AV: E=McAfee;i="6600,9927,10919"; a="384957270"
X-IronPort-AV: E=Sophos;i="6.04,265,1695711600"; d="scan'208";a="384957270"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2023 02:10:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10919"; a="722391237"
X-IronPort-AV: E=Sophos;i="6.04,265,1695711600"; d="scan'208";a="722391237"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.251.181.21])
 ([10.251.181.21])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2023 02:10:06 -0800
Message-ID: <b75fb89e-2016-49fa-912f-6121976c294b@linux.intel.com>
Date: Sun, 10 Dec 2023 12:10:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, netdev@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 linux-kernel@vger.kernel.org
References: <20231121123428.20907-1-ilpo.jarvinen@linux.intel.com>
 <20231121123428.20907-3-ilpo.jarvinen@linux.intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20231121123428.20907-3-ilpo.jarvinen@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702203012; x=1733739012;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=5FnYIJIbR+wsxAQWvfQ77OzwqLrChyDizMkLcyyll9A=;
 b=WiMEF0bjHcfyv3Az2m4rl6vuTbS1CWUvDNIjK/MUncR2X2o2NGPjjEfJ
 t171Vz0CLyhcfuzTxqIHSCAiNDl6JWMunv95sfjoGdbIZNd73/0PYg0Gr
 /goIjsYQjvzrXxKnpkCxGN104eTdFZFak2g5+5OfV6bi4Gp/bFHD4kw6l
 gstNYmSb6Qbtge7sTtycwmO38BXDEdIdy75R8KfN60Sc50Y8FmQyUEElJ
 1Xm985Yhcye4X3OF2do795mHWhG/zZUVoFJecdqFRcVe+B+UkMIOLWLqw
 GtkE5HhYEhQ+XbRcd82ZrUfic0tvLC1Tb9RYZ66WT2U7ew3FfXgKfLIIm
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WiMEF0bj
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTEvMjEvMjAyMyAxNDozNCwgSWxwbyBKw6RydmluZW4gd3JvdGU6Cj4gZTEwMDBlIGhhcyBv
d24gY29weSBvZiBQQ0kgTmVnb3RpYXRlZCBMaW5rIFdpZHRoIGZpZWxkIGRlZmluZXMuIFVzZSB0
aGUKPiBvbmVzIGZyb20gaW5jbHVkZS91YXBpL2xpbnV4L3BjaV9yZWdzLmggaW5zdGVhZCBvZiB0
aGUgY3VzdG9tIG9uZXMgYW5kCj4gcmVtb3ZlIHRoZSBjdXN0b20gb25lcyBhbmQgY29udmVydCB0
byBGSUVMRF9HRVQoKS4KPiAKPiBTdWdnZXN0ZWQtYnk6IEpvbmF0aGFuIENhbWVyb24gPEpvbmF0
aGFuLkNhbWVyb25AaHVhd2VpLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBJbHBvIErDpHJ2aW5lbiA8
aWxwby5qYXJ2aW5lbkBsaW51eC5pbnRlbC5jb20+Cj4gUmV2aWV3ZWQtYnk6IEpvbmF0aGFuIENh
bWVyb24gPEpvbmF0aGFuLkNhbWVyb25AaHVhd2VpLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2UxMDAwZS9kZWZpbmVzLmggfCAyIC0tCj4gICBkcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9lMTAwMGUvbWFjLmMgICAgIHwgNyArKysrLS0tCj4gICAyIGZpbGVzIGNo
YW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCgpUZXN0ZWQtYnk6IE5hYW1h
IE1laXIgPG5hYW1heC5tZWlyQGxpbnV4LmludGVsLmNvbT4KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJ
bnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
