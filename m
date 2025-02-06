Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB40A2AC51
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Feb 2025 16:19:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 331D44267C;
	Thu,  6 Feb 2025 15:19:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9e0E0XI-J7eE; Thu,  6 Feb 2025 15:19:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F52342679
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738855171;
	bh=Wmzjrmn6hGrNwmNfBx4uVw+V95f3vNpcXe7xTFA4Yi4=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=toZAsW9W+a2hPCYO6HhIcBQOtAn8AxfW4sdkNUa5QhyJkM+NpcGUMOsJFBRrjV8Oa
	 SOg0rXudV9PG3igX60QrvsfvRUH8QGIFLq6CVupdL+DQRr205OZs/xMotqu51+1Iv/
	 liW6OQlR7sEM3Hi+APdx+7fIMift6/YjpffUGEi9YCVsYEC6v/kNlz8wxephCxshF+
	 eT4bNVoi5TeUmMD0Bq5qAFtAJlAmcDjIWT7c2b08Vvn0CnFDtsGKmo+gTwSoiTJvBg
	 PhJZVdrXY7u5g66DHlKHlPhO6xcvhM16kHxiW+jhvw+yV4ibPeRFM3o/gwxnCZxAU4
	 weBA0LrMBfEVw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0F52342679;
	Thu,  6 Feb 2025 15:19:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id F2AFEE2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 15:19:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DE773403B8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 15:19:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tXBimTM7NJj9 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Feb 2025 15:19:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B0D8940382
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B0D8940382
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B0D8940382
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 15:19:26 +0000 (UTC)
X-CSE-ConnectionGUID: JCVdFfaLQIyueJN98bZliw==
X-CSE-MsgGUID: UBZ0A/f2Tiix3Q5zN8H7Pw==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39360275"
X-IronPort-AV: E=Sophos;i="6.13,264,1732608000"; d="scan'208";a="39360275"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2025 07:19:24 -0800
X-CSE-ConnectionGUID: CSgwnmqzT1aFstRjP3BMIQ==
X-CSE-MsgGUID: 8PziVqBUR0O3DqSf+FGKSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="115858259"
Received: from aservou-mobl.ger.corp.intel.com (HELO
 vbox-pkwap.ger.corp.intel.com) ([10.246.20.218])
 by fmviesa005.fm.intel.com with ESMTP; 06 Feb 2025 07:19:23 -0800
From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 Dan Carpenter <dan.carpenter@linaro.org>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Thu,  6 Feb 2025 16:19:20 +0100
Message-ID: <20250206151920.20292-1-piotr.kwapulinski@intel.com>
X-Mailer: git-send-email 2.43.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738855165; x=1770391165;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=goeTczSqW+i3xRmN3VUqgf3U0YfiCV4vdRbYGUjVccI=;
 b=OANrR6BMFP5n+TV1jL4FetFI5HOF5WXfHqi40acD3vAbsPGM4U6t2+Pg
 5jvHQj9SL1AVuQQ71gFc6tZmkCIC7k5r1fHtYiaGfWVox8VrDH1Iq3Zfr
 EuSPqD2YaJOSr24iZtnCktfvxQZQwZJCw9tkmIOCmHX5ID/o3a3HnXByR
 6BXKyyNoEF7DLDVbNseD8X8wDfXVM2b0TZFD4ynuQ8EB0eQwN9y3ftSfr
 mmiHWa3+j3MvpsPQ1y5BQFiwVe4TQ27QU88h9UMg8R/E7bg2/ify9l0DQ
 lvWln7Ctyc2ZG7Q/YstrC0pmUS0YeqPdTZwgtM5Tm+SKV6v/aG0I6sZV/
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OANrR6BM
Subject: [Intel-wired-lan] [PATCH iwl-net] ixgbe: fix media cage present
 detection for E610 device
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The commit 23c0e5a16bcc ("ixgbe: Add link management support for E610
device") introduced incorrect checking of media cage presence for E610
device. Fix it.

Fixes: 23c0e5a16bcc ("ixgbe: Add link management support for E610 device")
Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
Closes: https://lore.kernel.org/all/e7d73b32-f12a-49d1-8b60-1ef83359ec13@stanley.mountain/
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index 683c668..cb07ecd 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -1122,7 +1122,7 @@ static bool ixgbe_is_media_cage_present(struct ixgbe_hw *hw)
 	 * returns error (ENOENT), then no cage present. If no cage present then
 	 * connection type is backplane or BASE-T.
 	 */
-	return ixgbe_aci_get_netlist_node(hw, cmd, NULL, NULL);
+	return !ixgbe_aci_get_netlist_node(hw, cmd, NULL, NULL);
 }
 
 /**
-- 
2.43.0

