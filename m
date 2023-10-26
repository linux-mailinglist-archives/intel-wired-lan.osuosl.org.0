Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A63857D8337
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Oct 2023 14:58:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0603683D7A;
	Thu, 26 Oct 2023 12:58:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0603683D7A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698325118;
	bh=LsfWyVahrBd1wYt9Z9JPxSDnRQUAPZhQ3BYob4nL4O4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=1LuHlT90f1ooeK+eKJ0PLH9xOh5yEWHk+GpF2t2RD1dSQt09UEsQcXlUmx0RSV2xT
	 IaH0y96UC/oCx+FOHQg9pi2qkVZRKAOinBn9twSuXgBzA2L9l9RCXHplOgOKQ5F+uc
	 mj9hXiVjLY3129J2PP0k6gM2RDMX8AwuxD1gw/qUE+3G/Y36BIXs9/djwU+acB4JGv
	 FYw/0axjRwFC85srtmyYRTfeO9ZsJwRrmzLfhPq02U1pWcqMpcpqUKUu5So/UnpKLW
	 h1kXtuC/O7Fx1Pjs3hcArZp4otmn0evQinOKDHeTFxicel6sZ2pnv86fQ3HP2YEDMA
	 M8h8d/+9ft+BQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SGYCesvj7ysn; Thu, 26 Oct 2023 12:58:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 977B883D75;
	Thu, 26 Oct 2023 12:58:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 977B883D75
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D975E1BF3C2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 12:58:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B2ED542C78
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 12:58:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B2ED542C78
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SNhSNQDI8fu1 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Oct 2023 12:58:28 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CD1D141F8B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 12:58:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD1D141F8B
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="366880636"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="366880636"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 05:58:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="824987207"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="824987207"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga008.fm.intel.com with ESMTP; 26 Oct 2023 05:58:23 -0700
Received: from pkitszel-desk.intel.com (abenbenx-mobl.ger.corp.intel.com
 [10.255.195.50])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id CAEFD41E45;
 Thu, 26 Oct 2023 13:58:20 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 26 Oct 2023 14:58:12 +0200
Message-Id: <20231026125814.35826-1-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698325108; x=1729861108;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=x8wVRuHmEpEKIht3PvEEnJE4LOlV9KvzOm/DWz89+PA=;
 b=RY9jqCnsWIrNrIyQ7cUMYM4XT6czlcL447bRvHrbzrTc3GaZowHmU8PY
 SZ6t/MhQ2UITJNbHBskUT9U+iNafMKyDcYJzk1dLPuT2xqXTQSdmFJYru
 y6NWSfksgVmWTA63bO5dnywmPidvdw9dwz85t6jx49WQNH2ulNkPBVCCV
 C1DNqNzxQRrCYOvbSVH78NzmBUKWiLdusiWcz6uHUdWMGVYVdxn7ZuSZe
 mp83vc2h4w1ewndNUNO7VC4qoLcOlmkdjmxeClzNAiwqYYwzuuVCqiCtO
 G6OWVUZLNEk5QVU8O/M0UxPjpobM76LHHf6n+GabTsZfUhohfLJWbjW3n
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RY9jqCns
Subject: [Intel-wired-lan] [linux-firmware 1/3] ice: update ice DDP package
 to 1.3.35.0
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Lukasz Czapnik <lukasz.czapnik@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Priya Limaye <priya.limaye@intel.com>, Shekhar Deb <shekhar.deb@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Changelog since 1.3.30.0:
- Parser is updated to set abort flag for malicious SCTP packets;
- Flexi MD4 and Flexi MD5 in RXDID22 of Flex descriptor is being used to
  describe rule id matched in the Switch;
- Updated the Protocol IDs that are being set when receiving MAC_IPV6
  type packets that have a VLAN or MPLS header present;
- other fixes.

Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 WHENCE                                        |   6 +++---
 .../{ice-1.3.30.0.pkg => ice-1.3.35.0.pkg}    | Bin 692660 -> 692776 bytes
 2 files changed, 3 insertions(+), 3 deletions(-)
 rename intel/ice/ddp/{ice-1.3.30.0.pkg => ice-1.3.35.0.pkg} (88%)

diff --git a/WHENCE b/WHENCE
index c06f5d802e34..1d3ef9a50910 100644
--- a/WHENCE
+++ b/WHENCE
@@ -5935,8 +5935,8 @@ Licence: Redistributable. See LICENSE.amlogic_vdec for details.
 
 Driver: ice - Intel(R) Ethernet Connection E800 Series
 
-File: intel/ice/ddp/ice-1.3.30.0.pkg
-Link: intel/ice/ddp/ice.pkg -> ice-1.3.30.0.pkg
+File: intel/ice/ddp/ice-1.3.35.0.pkg
+Link: intel/ice/ddp/ice.pkg -> ice-1.3.35.0.pkg
 File: intel/ice/ddp-lag/ice_lag-1.3.1.0.pkg
 
 License: Redistributable. See LICENSE.ice for details
@@ -6689,4 +6689,4 @@ Version: date = 38.01, number = 0xa914
 
 Licence: Redistributable. See LICENSE.amlogic for details
 
---------------------------------------------------------------------------
\ No newline at end of file
+--------------------------------------------------------------------------
diff --git a/intel/ice/ddp/ice-1.3.30.0.pkg b/intel/ice/ddp/ice-1.3.35.0.pkg
similarity index 88%
rename from intel/ice/ddp/ice-1.3.30.0.pkg
rename to intel/ice/ddp/ice-1.3.35.0.pkg
index 454a2a6ea1930c0abcce83b1f2bf7a58061fa3b6..fc3e8ebc640f57f1171d7c81edd20eaabc50a9e8 100644
GIT binary patch
delta 14591
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
J9Xu(f{{cfn_`?7I

delta 10887
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
Ol<sGYtp(DdihltIwU3Gb


base-commit: 4ee017565113f5326661886dd7b7786359c77a5e
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
