Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 053BC6FF590
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 May 2023 17:10:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B3A8042C7F;
	Thu, 11 May 2023 15:10:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B3A8042C7F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683817839;
	bh=nXuTYnYJ4KSB5p/3YH9Cd8Lf3csChm9ZmTuGHkhwcSE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZsvQCpwhCqDQOoxhEhaRXmVp1IyBczco/XuUjYbc7vLp/O7SkRbk2LDGqC8lQL/HE
	 XM9iqmVgAKH9D7UMy8aNSwCOurz7EYrcC2bVQdU92SmJJAlNgGbO8YFfNMF9bhYWCy
	 dwhHWREXqeHcTKA8sFybQVQmvPZe2Mh2MjS01ZGhCN0WbVaDNXYFT7pCX0EbG4c5Hc
	 GJ9Om4FQbCT2wsYTfJzn3Bz965CwcYUgxmRGlIVaUkV2oJoPtPtesaTyBspYJf08Kl
	 uusjnGzka6MUB0jv4Lqhqk9+SxGBS3aj+eSbi0Q0OicNqesfRu/Yd4RWwhwCeHoY69
	 Thm+gmAHXYjUw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jMoVzGe_RI_F; Thu, 11 May 2023 15:10:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A3E5842C75;
	Thu, 11 May 2023 15:10:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A3E5842C75
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 08C761BF86C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 May 2023 13:15:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E254660BFE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 May 2023 13:15:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E254660BFE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G1MJRvXfPJTb for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 May 2023 13:15:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3C00060BC8
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3C00060BC8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 May 2023 13:15:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="378619463"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="378619463"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 06:15:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="650169748"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="650169748"
Received: from jsanche3-mobl1.ger.corp.intel.com (HELO
 ijarvine-MOBL2.ger.corp.intel.com) ([10.252.39.112])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 06:15:15 -0700
From: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
To: linux-pci@vger.kernel.org, Bjorn Helgaas <helgaas@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Lukas Wunner <lukas@wunner.de>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Thu, 11 May 2023 16:14:31 +0300
Message-Id: <20230511131441.45704-8-ilpo.jarvinen@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230511131441.45704-1-ilpo.jarvinen@linux.intel.com>
References: <20230511131441.45704-1-ilpo.jarvinen@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 11 May 2023 15:10:34 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683810928; x=1715346928;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=W5cLSAaV+r+1ItVRXAcJDtR+e/em1mtYJ7N6Iy6IoQc=;
 b=fgWXRBUFc6FKkdHbTFIpVdoz+8tU93NPzXhgmq3BTZwBvZ71uDlszDFf
 27MR5buWKhRtI4IbiBjQzXvWoM0LExp87ftsqaKW6PD3d1Z9XNHu0KuKj
 ItwC5mdNDIK9lUEyR3uk/C6doDtDvUn9hRI4H+hHl7T9VEOtHkmUSNQk5
 J36BKLg1Piele0mqA87Jd8SW/eia6NZsKdJW7cz9OlHEWW6cn9h0N5Cts
 4xuz8Uwj3r+IrPV6WkPJ/jIEKGZMwjPDP264UHB1jamN9WYN9mtym2ezW
 E0vgecb/RiYzmI4nbYVMrbYMYYLsGGuX2FCqVJhDFOrDBuJXmLZo+mlzZ
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fgWXRBUF
Subject: [Intel-wired-lan] [PATCH 07/17] e1000e: Use
 pcie_lnkctl_clear_and_set() for changing LNKCTL
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
Cc: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RG9uJ3QgYXNzdW1lIHRoYXQgb25seSB0aGUgZHJpdmVyIHdvdWxkIGJlIGFjY2Vzc2luZyBMTktD
VEwuIEFTUE0KcG9saWN5IGNoYW5nZXMgY2FuIHRyaWdnZXIgd3JpdGUgdG8gTE5LQ1RMIG91dHNp
ZGUgb2YgZHJpdmVyJ3MgY29udHJvbC4KQW5kIGluIHRoZSBjYXNlIG9mIHVwc3RyZWFtIChwYXJl
bnQpLCB0aGUgZHJpdmVyIGRvZXMgbm90IGV2ZW4gb3duIHRoZQpkZXZpY2UgaXQncyBjaGFuZ2lu
ZyBMTktDVEwgZm9yLgoKVXNlIHBjaWVfbG5rY3RsX2NsZWFyX2FuZF9zZXQoKSB3aGljaCBkb2Vz
IHByb3BlciBsb2NraW5nIHRvIGF2b2lkCmxvc2luZyBjb25jdXJyZW50IHVwZGF0ZXMgdG8gdGhl
IHJlZ2lzdGVyIHZhbHVlLgoKU3VnZ2VzdGVkLWJ5OiBMdWthcyBXdW5uZXIgPGx1a2FzQHd1bm5l
ci5kZT4KU2lnbmVkLW9mZi1ieTogSWxwbyBKw6RydmluZW4gPGlscG8uamFydmluZW5AbGludXgu
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9uZXRkZXYu
YyB8IDYgKystLS0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9uZXRk
ZXYuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9uZXRkZXYuYwppbmRleCBi
ZDdlZjU5YjFmMmUuLjI5ZDUwYWViMmMzZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2UxMDAwZS9uZXRkZXYuYwpAQCAtNjgyOSwxMSArNjgyOSw5IEBAIHN0YXRpYyB2b2lkIF9fZTEw
MDBlX2Rpc2FibGVfYXNwbShzdHJ1Y3QgcGNpX2RldiAqcGRldiwgdTE2IHN0YXRlLCBpbnQgbG9j
a2VkKQogCS8qIEJvdGggZGV2aWNlIGFuZCBwYXJlbnQgc2hvdWxkIGhhdmUgdGhlIHNhbWUgQVNQ
TSBzZXR0aW5nLgogCSAqIERpc2FibGUgQVNQTSBpbiBkb3duc3RyZWFtIGNvbXBvbmVudCBmaXJz
dCBhbmQgdGhlbiB1cHN0cmVhbS4KIAkgKi8KLQlwY2llX2NhcGFiaWxpdHlfY2xlYXJfd29yZChw
ZGV2LCBQQ0lfRVhQX0xOS0NUTCwgYXNwbV9kaXNfbWFzayk7Ci0KKwlwY2llX2xua2N0bF9jbGVh
cl9hbmRfc2V0KHBkZXYsIGFzcG1fZGlzX21hc2ssIDApOwogCWlmIChwYXJlbnQpCi0JCXBjaWVf
Y2FwYWJpbGl0eV9jbGVhcl93b3JkKHBhcmVudCwgUENJX0VYUF9MTktDVEwsCi0JCQkJCSAgIGFz
cG1fZGlzX21hc2spOworCQlwY2llX2xua2N0bF9jbGVhcl9hbmRfc2V0KHBhcmVudCwgYXNwbV9k
aXNfbWFzaywgMCk7CiB9CiAKIC8qKgotLSAKMi4zMC4yCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0Cklu
dGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
