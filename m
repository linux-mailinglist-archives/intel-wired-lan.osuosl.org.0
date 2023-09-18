Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B7967A4B9A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Sep 2023 17:19:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B23A361508;
	Mon, 18 Sep 2023 15:19:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B23A361508
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695050358;
	bh=l5Th022SwIVu21w4qDMGo6jj8VLZWWanH9HFcm4d+5s=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Lroi2plgN3wrUhinuyjS9g1HA6Ax2842CzzxAUOUaxTjT1qbizhg/Fe/uSc1OGb23
	 5bTpIXJWLHhAjm7BZhiB6ENQJb4hTCYSeVEOdVDML9aXH+pnkGlmneIRSNnPfIGsBq
	 dIBK1LuEt3mfnyFrNzb1sO2f/J8z1gQeokfy83Yuhy1lXcLe3RlEC085wDqnzqGkmJ
	 GgD4DiKPmwPOfm86cESRvwvdunuDYrnEPOtkLXi6MwzfklGritEqlvCLtuKpS4SLz2
	 RcXdkMnqbJQbPnC6pfWR6D6cKRlUhqldlLkZ41TwD5QxbZyrlESHM49du/mROroWLt
	 C2Hey0GGYIF1A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YjSI5PrdveIX; Mon, 18 Sep 2023 15:19:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9A29C614E5;
	Mon, 18 Sep 2023 15:19:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A29C614E5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2ED431BF312
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 13:20:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 14B9181DD8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 13:20:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 14B9181DD8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id psEpdg9KER7C for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Sep 2023 13:20:26 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CC0CE81F0E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 13:20:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CC0CE81F0E
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="446113532"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="446113532"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 06:13:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="811342781"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="811342781"
Received: from nprotaso-mobl1.ccr.corp.intel.com (HELO
 ijarvine-mobl2.ger.corp.intel.com) ([10.252.49.156])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 06:13:17 -0700
From: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
To: linux-pci@vger.kernel.org, Bjorn Helgaas <helgaas@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Lukas Wunner <lukas@wunner.de>, "Rafael J . Wysocki" <rafael@kernel.org>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Emmanuel Grumbach <emmanuel.grumbach@intel.com>,
 linux-kernel@vger.kernel.org, Kalle Valo <kvalo@kernel.org>,
 Jeff Johnson <quic_jjohnson@quicinc.com>, ath11k@lists.infradead.org,
 linux-wireless@vger.kernel.org
Date: Mon, 18 Sep 2023 16:11:00 +0300
Message-Id: <20230918131103.24119-11-ilpo.jarvinen@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230918131103.24119-1-ilpo.jarvinen@linux.intel.com>
References: <20230918131103.24119-1-ilpo.jarvinen@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 18 Sep 2023 15:18:32 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695043226; x=1726579226;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TVpIxZltjnz+Zaq4u2l7j7EaR5dq+4x3KCuX5f2+zQ8=;
 b=Xsa4ER5KErnJaQkrvVvZnnn4OJWum/dZen3E81ogsbkYkTLzN1pq+3pA
 xzcGmK1QiS9nMGiyTNgzyorJVq/WMCS72fsvu/7/PNkN/s1fztsq5KeTP
 tRadZ1OTfRolLtZNaogNHVdrE6meV/bBbhVJ5NPrlCMdVHm0GCTqu3lPI
 ohU7NqhVoJO1jURB4P6pcBSwiqrRiFKqur5yrpk9z1tlPDa7QQEzWEJF2
 dVNiysbi0uequZs+LyUZ7SNNuRt/QG0zmXqv1OpclCsNWaV2rybxx8Ztd
 wzfw0iaXWYi+UmvKWmIpZ3wMMMfqE1VIP1G7T76ISddZZjODpeWWhmsH2
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Xsa4ER5K
Subject: [Intel-wired-lan] [PATCH v2 10/13] wifi: ath11k: Use
 pci_disable/enable_link_state()
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
 ath10k@lists.infradead.org, linux-bluetooth@vger.kernel.org,
 linux-mediatek@lists.infradead.org,
 =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, linux-arm-kernel@lists.infradead.org,
 linux-rdma@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

YXRoMTFrIGRyaXZlciBhZGp1c3RzIEFTUE0gc3RhdGUgaXRzZWxmIHdoaWNoIGxlYXZlcyBBU1BN
IHNlcnZpY2UKZHJpdmVyIGluIFBDSSBjb3JlIHVuYXdhcmUgb2YgdGhlIGxpbmsgc3RhdGUgY2hh
bmdlcyB0aGUgZHJpdmVyCmltcGxlbWVudGVkLgoKQ2FsbCBwY2lfZGlzYWJsZV9saW5rX3N0YXRl
KCkgYW5kIHBjaV9lbmFibGVfbGlua19zdGF0ZSgpIGluc3RlYWQgb2YKYWRqdXN0aW5nIEFTUE1D
IGZpZWxkIGluIExOS0NUTCBkaXJlY3RseSBpbiB0aGUgZHJpdmVyIGFuZCBsZXQgUENJIGNvcmUK
aGFuZGxlIHRoZSBBU1BNIHN0YXRlIG1hbmFnZW1lbnQuCgpTaWduZWQtb2ZmLWJ5OiBJbHBvIErD
pHJ2aW5lbiA8aWxwby5qYXJ2aW5lbkBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9uZXQv
d2lyZWxlc3MvYXRoL2F0aDExay9wY2kuYyB8IDEwICsrKy0tLS0tLS0KIDEgZmlsZSBjaGFuZ2Vk
LCAzIGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9u
ZXQvd2lyZWxlc3MvYXRoL2F0aDExay9wY2kuYyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9h
dGgxMWsvcGNpLmMKaW5kZXggYTVhYTE4NTdlYzE0Li43NjRjZGY3NGIwZTkgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMWsvcGNpLmMKKysrIGIvZHJpdmVycy9uZXQv
d2lyZWxlc3MvYXRoL2F0aDExay9wY2kuYwpAQCAtNTgyLDE5ICs1ODIsMTUgQEAgc3RhdGljIHZv
aWQgYXRoMTFrX3BjaV9hc3BtX2Rpc2FibGUoc3RydWN0IGF0aDExa19wY2kgKmFiX3BjaSkKIAkJ
ICAgdTE2X2dldF9iaXRzKGFiX3BjaS0+bGlua19jdGwsIFBDSV9FWFBfTE5LQ1RMX0FTUE1fTDEp
KTsKIAogCS8qIGRpc2FibGUgTDBzIGFuZCBMMSAqLwotCXBjaWVfY2FwYWJpbGl0eV9jbGVhcl93
b3JkKGFiX3BjaS0+cGRldiwgUENJX0VYUF9MTktDVEwsCi0JCQkJICAgUENJX0VYUF9MTktDVExf
QVNQTUMpOwotCisJcGNpX2Rpc2FibGVfbGlua19zdGF0ZShhYl9wY2ktPnBkZXYsIFBDSUVfTElO
S19TVEFURV9MMFMgfCBQQ0lFX0xJTktfU1RBVEVfTDEpOwogCXNldF9iaXQoQVRIMTFLX1BDSV9B
U1BNX1JFU1RPUkUsICZhYl9wY2ktPmZsYWdzKTsKIH0KIAogc3RhdGljIHZvaWQgYXRoMTFrX3Bj
aV9hc3BtX3Jlc3RvcmUoc3RydWN0IGF0aDExa19wY2kgKmFiX3BjaSkKIHsKIAlpZiAodGVzdF9h
bmRfY2xlYXJfYml0KEFUSDExS19QQ0lfQVNQTV9SRVNUT1JFLCAmYWJfcGNpLT5mbGFncykpCi0J
CXBjaWVfY2FwYWJpbGl0eV9jbGVhcl9hbmRfc2V0X3dvcmQoYWJfcGNpLT5wZGV2LCBQQ0lfRVhQ
X0xOS0NUTCwKLQkJCQkJCSAgIFBDSV9FWFBfTE5LQ1RMX0FTUE1DLAotCQkJCQkJICAgYWJfcGNp
LT5saW5rX2N0bCAmCi0JCQkJCQkgICBQQ0lfRVhQX0xOS0NUTF9BU1BNQyk7CisJCXBjaV9lbmFi
bGVfbGlua19zdGF0ZShhYl9wY2ktPnBkZXYsIGFiX3BjaS0+bGlua19jdGwgJgorCQkJCSAgICAg
IChQQ0lFX0xJTktfU1RBVEVfTDBTIHwgUENJRV9MSU5LX1NUQVRFX0wxKSk7CiB9CiAKIHN0YXRp
YyBpbnQgYXRoMTFrX3BjaV9wb3dlcl91cChzdHJ1Y3QgYXRoMTFrX2Jhc2UgKmFiKQotLSAKMi4z
MC4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBz
Oi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
