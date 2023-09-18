Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2547A4B91
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Sep 2023 17:18:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1E6F3614EE;
	Mon, 18 Sep 2023 15:18:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1E6F3614EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695050326;
	bh=7XBJo2sUUWPc3hTo+1j0puZKK79NkP4p7mHL4M5SxNc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qg1XQUEcg7iJa0dqzfbZ6+R66a6Xm49XcmOi3p2JItnNl1lHbwqmJoLAoC1xfMgvI
	 MCnsbwtuy8+oaKIUyKEvALfLqAYY6fES3SNCRCFYKADzUWGFjEv9t0yKwZP8xnDoH5
	 6hJOKuiyDL28MNddUQxy9HdPKoPuhHzjWnwzfSkuZ4oCHXihMgPE0mp1VbveSluiQq
	 0dnVXbHicBOVEQZ5Sbpmhk4JFm020Mp0zipgg1ePK+O06+Hrw4YE2T3IHk7xkqDBMl
	 53A7v7toyFYH3kuf0ucm0+mcwsjb0aUyKaUCZA/JYqWNR6cI8CW2EfDXAcCrP3ZEkT
	 P0Yvd65g9vv4w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZWzONHNYhrSR; Mon, 18 Sep 2023 15:18:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0D4ED614DA;
	Mon, 18 Sep 2023 15:18:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0D4ED614DA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6BDD31BF312
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 13:18:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 51919403C7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 13:18:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 51919403C7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7qr1d9wdgjpG for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Sep 2023 13:18:50 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 58A7B40357
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 13:18:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 58A7B40357
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="446112786"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="446112786"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 06:11:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="811341486"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="811341486"
Received: from nprotaso-mobl1.ccr.corp.intel.com (HELO
 ijarvine-mobl2.ger.corp.intel.com) ([10.252.49.156])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 06:11:37 -0700
From: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
To: linux-pci@vger.kernel.org, Bjorn Helgaas <helgaas@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Lukas Wunner <lukas@wunner.de>, "Rafael J . Wysocki" <rafael@kernel.org>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Emmanuel Grumbach <emmanuel.grumbach@intel.com>,
 linux-kernel@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>
Date: Mon, 18 Sep 2023 16:10:52 +0300
Message-Id: <20230918131103.24119-3-ilpo.jarvinen@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230918131103.24119-1-ilpo.jarvinen@linux.intel.com>
References: <20230918131103.24119-1-ilpo.jarvinen@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 18 Sep 2023 15:18:32 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695043130; x=1726579130;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GntG1C/Of1kw8Cak4jvrKOjbZB9Dh17vQJmAQuf8VNA=;
 b=eL7u45zipEtku7/bGnBSatSBQ5a8u5ddZm98SipC4RNsAzG1FoH/oy/b
 xxjmVRgdiegzUv3BtAxZ0Vl6PHUFiy8A5ptOuUzUHgy0suKVB1sdLD7It
 rpWxL9sGPkyZ9ZA6WASs+9mPddL3bMkml6Fer2aMU45bJpQ8L0S4Qj3oQ
 AGAPwX/2F0bocIFZh6DIIePdSFCQKKlV85U3vrRFgUm93O6jDErwvy/W7
 2ocB03i6vuKsTuyXDEsgB6dIDt1ctY5flYRyFDFYHVAQG6EVe7uOrTewF
 MjHQjLjWapm0oUkUX6zJrhVtxGL8JLMFqsVMWn3NCWWGCFnB0Kpgan/If
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eL7u45zi
Subject: [Intel-wired-lan] [PATCH v2 02/13] PCI/ASPM: Improve
 pci_set_default_link_state() kerneldoc
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
Cc: ath12k@lists.infradead.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 linux-bluetooth@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 linux-mediatek@lists.infradead.org, ath11k@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rdma@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SW1wcm92ZSBwY2lfc2V0X2RlZmF1bHRfbGlua19zdGF0ZSgpIGRvY3VtZW50YXRpb246CgotIE5v
dGUgdGhlIGxpbmsgc3RhdGUgbWF5IGdldCBjaGFuZ2VkIGlmIHRoZSBkZWZhdWx0IHBvbGljeSBp
cyBpbiB1c2UKLSBCZXR0ZXIgZm9sbG93IGtlcm5lbGRvYyBmb3JtYXR0aW5nIGd1aWRlbGluZXMg
KHNlcGFyYXRlIGRlc2NyaXB0aW9uCiAgYmxvY2sgYW5kIHJldHVybiBlbnRyaWVzKQoKU2lnbmVk
LW9mZi1ieTogSWxwbyBKw6RydmluZW4gPGlscG8uamFydmluZW5AbGludXguaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvcGNpL3BjaWUvYXNwbS5jIHwgMTYgKysrKysrKysrKy0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9wY2kvcGNpZS9hc3BtLmMgYi9kcml2ZXJzL3BjaS9wY2llL2FzcG0uYwppbmRleCBm
YzkwOWUyMDM2NWYuLjg2MGJjOTQ5NzRlYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9wY2kvcGNpZS9h
c3BtLmMKKysrIGIvZHJpdmVycy9wY2kvcGNpZS9hc3BtLmMKQEAgLTExMDIsMTQgKzExMDIsMTgg
QEAgaW50IHBjaV9kaXNhYmxlX2xpbmtfc3RhdGUoc3RydWN0IHBjaV9kZXYgKnBkZXYsIGludCBz
dGF0ZSkKIEVYUE9SVF9TWU1CT0wocGNpX2Rpc2FibGVfbGlua19zdGF0ZSk7CiAKIC8qKgotICog
cGNpX3NldF9kZWZhdWx0X2xpbmtfc3RhdGUgLSBDbGVhciBhbmQgc2V0IHRoZSBkZWZhdWx0IGRl
dmljZSBsaW5rIHN0YXRlIHNvCi0gKiB0aGF0IHRoZSBsaW5rIG1heSBiZSBhbGxvd2VkIHRvIGVu
dGVyIHRoZSBzcGVjaWZpZWQgc3RhdGVzLiBOb3RlIHRoYXQgaWYgdGhlCi0gKiBCSU9TIGRpZG4n
dCBncmFudCBBU1BNIGNvbnRyb2wgdG8gdGhlIE9TLCB0aGlzIGRvZXMgbm90aGluZyBiZWNhdXNl
IHdlIGNhbid0Ci0gKiB0b3VjaCB0aGUgTE5LQ1RMIHJlZ2lzdGVyLiBBbHNvIG5vdGUgdGhhdCB0
aGlzIGRvZXMgbm90IGVuYWJsZSBzdGF0ZXMKLSAqIGRpc2FibGVkIGJ5IHBjaV9kaXNhYmxlX2xp
bmtfc3RhdGUoKS4gUmV0dXJuIDAgb3IgYSBuZWdhdGl2ZSBlcnJuby4KLSAqCisgKiBwY2lfc2V0
X2RlZmF1bHRfbGlua19zdGF0ZSAtIFNldCB0aGUgZGVmYXVsdCBkZXZpY2UgbGluayBzdGF0ZQog
ICogQHBkZXY6IFBDSSBkZXZpY2UKICAqIEBzdGF0ZTogTWFzayBvZiBBU1BNIGxpbmsgc3RhdGVz
IHRvIGVuYWJsZQorICoKKyAqIFNldCB0aGUgZGVmYXVsdCBkZXZpY2UgbGluayBzdGF0ZSBzbyB0
aGF0IHRoZSBsaW5rIG1heSBiZSBhbGxvd2VkIHRvCisgKiBlbnRlciB0aGUgc3BlY2lmaWVkIHN0
YXRlcy4gSWYgdGhlIGRlZmF1bHQgcG9saWN5IGlzIGluIHVzZSwgdGhlIGxpbmsKKyAqIHN0YXRl
IG1heSBhbHNvIGJlIHVwZGF0ZWQgdG8gcmVmbGVjdCB0aGUgbmV3IGRlZmF1bHQgbGluayBzdGF0
ZS4gTm90ZQorICogdGhhdCBpZiB0aGUgQklPUyBkaWRuJ3QgZ3JhbnQgQVNQTSBjb250cm9sIHRv
IHRoZSBPUywgdGhpcyBkb2VzIG5vdGhpbmcKKyAqIGJlY2F1c2Ugd2UgY2FuJ3QgdG91Y2ggdGhl
IExOS0NUTCByZWdpc3Rlci4gQWxzbyBub3RlIHRoYXQgdGhpcyBkb2VzIG5vdAorICogZW5hYmxl
IHN0YXRlcyBkaXNhYmxlZCBieSBwY2lfZGlzYWJsZV9saW5rX3N0YXRlKCkuCisgKgorICogUmV0
dXJuOiAwIG9yIGEgbmVnYXRpdmUgZXJybm8uCiAgKi8KIGludCBwY2lfc2V0X2RlZmF1bHRfbGlu
a19zdGF0ZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwgaW50IHN0YXRlKQogewotLSAKMi4zMC4yCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJl
ZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlz
dHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
