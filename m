Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 046377D833A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Oct 2023 14:58:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3344983D7F;
	Thu, 26 Oct 2023 12:58:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3344983D7F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698325128;
	bh=tCA2y4ZIbVPVbvTiSE5XXKdIQSRq42tpUZu/e+gnYzo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nblHfrQdAEAYO6j0MrUDelzWzPxp1PqiZXIzqx2rrDTwgqFfsAU4bXuFVTvMRPkH8
	 sEnkQL9QFjW6wpwJcMrH/FkhphQqhnHxjkNq5kIS6474A735tzWczERrBeiEEgoS3m
	 8+lfZJH7hqmI6+FZOLCfawe9eUbBH82kr6ioWz9haVJJJwLjAzh4NLUJEdl3hKZyV0
	 JEHyvyVfepgQlo62Js4XVTttsmJMVZ8nvB2b98msifuTBL33Dm6gpEbKuA65l/Fe0y
	 NWcWwFGYfvXntcTMxHcLqb2tXuz7mWxyTG5S5H596cS4QyushGuf7YwvjKTo4ckCI/
	 dNW77Fq09ehhw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uuznOg7c1Upq; Thu, 26 Oct 2023 12:58:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9871A83D70;
	Thu, 26 Oct 2023 12:58:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9871A83D70
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 995E61BF3C2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 12:58:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6FD4B42C6D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 12:58:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6FD4B42C6D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2AOpj5b52UdP for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Oct 2023 12:58:31 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 74D4E41F8B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 12:58:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 74D4E41F8B
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="366880647"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="366880647"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 05:58:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="824987220"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="824987220"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga008.fm.intel.com with ESMTP; 26 Oct 2023 05:58:28 -0700
Received: from pkitszel-desk.intel.com (abenbenx-mobl.ger.corp.intel.com
 [10.255.195.50])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 8710E41E56;
 Thu, 26 Oct 2023 13:58:25 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 26 Oct 2023 14:58:14 +0200
Message-Id: <20231026125814.35826-3-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20231026125814.35826-1-przemyslaw.kitszel@intel.com>
References: <20231026125814.35826-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698325111; x=1729861111;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nXPsIxvhyRkInITgHV+gar/7HNIFDEdzhNeKsFrZLcs=;
 b=F/QpQKAoeErs9ZsYry0hlt6gx3BymnxEUhzMcqz9B4KlwQ/Jni56KqJe
 xlqjwX0xAZ3pKDpaTkLICwwmvjqGvyr7zt4KYK7PUpymxsxozmTjLxxdl
 Y2LmrGZWU9uORhPyYmckxJdkeRLHnMQLNzvBs4h4J0sdwIqWOBjTPeOpZ
 dogSeYG2hBqJpiDku9I3thncDhRNijVVa662YAGeyMhJQ+ZNT9qjcdxVj
 EAaUp88wXX47SEG0Xd4VFoUGlXxJetQ9zUsMpNClro1nueo49EusEU+ff
 lxJ0BmOjggJn8EiLBY/410iw4XSPL85cYQQ2I3SMvRjDipF18B47G8aua
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=F/QpQKAo
Subject: [Intel-wired-lan] [linux-firmware 3/3] ice: update ice DDP
 wireless_edge package to 1.3.13.0
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

Changelog since 1.3.10.0:
- Fixed an issue in which all packets with SCTP header were not being
  received;
- Flexi MD4 and Flexi MD5 in RXDID22 of Flex descriptor is being used to
  describe rule id matched in the Switch;
- Parser is updated to set abort flag for malicious SCTP packets;
- Updated the Protocol IDs that are being set when receiving MAC_IPV6 type
  packets that have a VLAN or MPLS header present;
- more bugfixes.

Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 WHENCE                                        |   2 +-
 ...0.0.pkg => ice_wireless_edge-1.3.13.0.pkg} | Bin 725428 -> 737832 bytes
 2 files changed, 1 insertion(+), 1 deletion(-)
 rename intel/ice/ddp-wireless_edge/{ice_wireless_edge-1.3.10.0.pkg => ice_wireless_edge-1.3.13.0.pkg} (88%)

diff --git a/WHENCE b/WHENCE
index d5d49d710b97..35abcef23364 100644
--- a/WHENCE
+++ b/WHENCE
@@ -5942,7 +5942,7 @@ File: intel/ice/ddp-lag/ice_lag-1.3.1.0.pkg
 License: Redistributable. See LICENSE.ice for details
 
 File: intel/ice/ddp-comms/ice_comms-1.3.45.0.pkg
-File: intel/ice/ddp-wireless_edge/ice_wireless_edge-1.3.10.0.pkg
+File: intel/ice/ddp-wireless_edge/ice_wireless_edge-1.3.13.0.pkg
 
 License: Redistributable. See LICENSE.ice_enhanced for details
 
diff --git a/intel/ice/ddp-wireless_edge/ice_wireless_edge-1.3.10.0.pkg b/intel/ice/ddp-wireless_edge/ice_wireless_edge-1.3.13.0.pkg
similarity index 88%
rename from intel/ice/ddp-wireless_edge/ice_wireless_edge-1.3.10.0.pkg
rename to intel/ice/ddp-wireless_edge/ice_wireless_edge-1.3.13.0.pkg
index 535433ddab1d4c82f4ce874141368030f5cc0509..07b87eddde79b41db3f847ab4a25aa7956c672d1 100644
GIT binary patch
delta 15329
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

delta 9197
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

-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
