Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0DFA28853
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Feb 2025 11:43:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2680F4178F;
	Wed,  5 Feb 2025 10:43:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xp_j9ZuSo-2i; Wed,  5 Feb 2025 10:43:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 161EA4176E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738752200;
	bh=2HcGkihW8DIgKsNznnUM0PyYCpd7X5TMTuTGOxF5MHU=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=W9WeZVhSOGyxAreUfww+y12MVMiEkp/dsL1q+GsulOsSxVbH7H2zLhdnOL7dqD6jf
	 fNo1oWDXYvGqP6U8s6lnJ6P/y7kZT4VUndW1L1jWKhIMq3VPCQHoZxpApC1sN2ZvIj
	 a+8YDVlW1T0XXOPtLIFZu+o90W/MsrQJKYvXJ9GGPyrvn6PZvv5VR4NgPdM6xBxaHV
	 S0W3yFTHGqNln9eXPFoLBvLo7dESj9vXLYNrYNVpv6AlI7qA/Q2Tio457wLZgQ+LPp
	 SQVLVvCEOlqCBDfgBLv237J+IvornQN9Vdj9aEhvKIdlOm05nv2AMLfz2JLSa7IyJr
	 DdvJ0DJoHAjlw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 161EA4176E;
	Wed,  5 Feb 2025 10:43:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 927A812A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 10:43:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 806FD40C53
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 10:43:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jrzzCeCKtPwr for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Feb 2025 10:43:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5338340BD0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5338340BD0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5338340BD0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 10:43:16 +0000 (UTC)
X-CSE-ConnectionGUID: 5f/vkCXHRKKNNop8Cam+wQ==
X-CSE-MsgGUID: bEHS0j47Te2rzOdtNfnUGw==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39453189"
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="39453189"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 02:43:16 -0800
X-CSE-ConnectionGUID: F2mt01+/Rc+vMCUx0oi0pQ==
X-CSE-MsgGUID: cVvQEpvDT5GIYb/7SfZTPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116061698"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa005.jf.intel.com with ESMTP; 05 Feb 2025 02:43:12 -0800
Received: from pkitszel-desk.tendawifi.com (unknown [10.245.246.222])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 2A8A22FC63;
 Wed,  5 Feb 2025 10:43:10 +0000 (GMT)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: netdev@vger.kernel.org, Konrad Knitter <konrad.knitter@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Qiuxu Zhuo <qiuxu.zhuo@intel.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Kees Cook <kees@kernel.org>, Nick Desaulniers <nick.desaulniers@gmail.com>
Date: Wed,  5 Feb 2025 11:42:12 +0100
Message-ID: <20250205104252.30464-2-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738752196; x=1770288196;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4Ag5ibDA/QpCTvAlojzppiuL7T6KCryqcE51LrTwlJE=;
 b=FgtdGvGYMT0IrhSMQxeO2elC0OnTUOY2qrW3F/Z2IS6vlp+YSilnlr40
 sgv/k0Ly1p4/zx0+tOe6mIsiZvQ7jsq3eaDB25UZEWGGXNe7oM293A98p
 kJIApMAvdlyVi7c+QardYT/ecc7xhDu5v+qy9yytDgD6aYSi1sjgb4cnA
 vdx97VxSOE63xc25yypTps6RsTlYJnG6qrcci23ihbXhEdlD2ntpYq4Am
 STpQAFIX3QjukufxZ75eIThv171AED5eff66+iXEOqVUJFKJS4PX2QFuE
 phKMpTpE2lCKcr39YAZwcAL4m6WSjOY4f6ZUsib+rtgcWA6J/j35BZdiY
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FgtdGvGY
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: health.c: fix compilation on
 gcc 7.5
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

GCC 7 is not as good as GCC 8+ in telling what is a compile-time const,
and thus could be used for static storage. So we could not use variables
for that, no matter how much "const" keyword is sprinkled around.

Excerpt from the report:
My GCC is: gcc (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0.

  CC [M]  drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.o
drivers/net/ethernet/intel/ice/devlink/health.c:35:3: error: initializer element is not constant
   ice_common_port_solutions, {ice_port_number_label}},
   ^~~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ice/devlink/health.c:35:3: note: (near initialization for 'ice_health_status_lookup[0].solution')
drivers/net/ethernet/intel/ice/devlink/health.c:35:31: error: initializer element is not constant
   ice_common_port_solutions, {ice_port_number_label}},
                               ^~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ice/devlink/health.c:35:31: note: (near initialization for 'ice_health_status_lookup[0].data_label[0]')
drivers/net/ethernet/intel/ice/devlink/health.c:37:46: error: initializer element is not constant
   "Change or replace the module or cable.", {ice_port_number_label}},
                                              ^~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ice/devlink/health.c:37:46: note: (near initialization for 'ice_health_status_lookup[1].data_label[0]')
drivers/net/ethernet/intel/ice/devlink/health.c:39:3: error: initializer element is not constant
   ice_common_port_solutions, {ice_port_number_label}},
   ^~~~~~~~~~~~~~~~~~~~~~~~~

Fixes: 85d6164ec56d ("ice: add fw and port health reporters")
Reported-by: Qiuxu Zhuo <qiuxu.zhuo@intel.com>
Closes: https://lore.kernel.org/netdev/CY8PR11MB7134BF7A46D71E50D25FA7A989F72@CY8PR11MB7134.namprd11.prod.outlook.com
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
I would really like to bump min gcc to 8.5 (RH 8 family),
instead of supporting old Ubuntu. However SLES 15 is also stuck with gcc 7.5 :(

CC: Linus Torvalds <torvalds@linux-foundation.org>
CC: Kees Cook <kees@kernel.org>
CC: Nick Desaulniers <nick.desaulniers@gmail.com>
---
 drivers/net/ethernet/intel/ice/devlink/health.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/devlink/health.c b/drivers/net/ethernet/intel/ice/devlink/health.c
index ea40f7941259..4bc546bafad1 100644
--- a/drivers/net/ethernet/intel/ice/devlink/health.c
+++ b/drivers/net/ethernet/intel/ice/devlink/health.c
@@ -23,12 +23,12 @@ struct ice_health_status {
  * For instance, Health Code 0x1002 is triggered when the command fails.
  * Such codes should be disregarded by the end-user.
  * The below lookup requires to be sorted by code.
+ * #defines instead of proper const strings are used due to gcc 7 limitation.
  */
 
-static const char *const ice_common_port_solutions =
-	"Check your cable connection. Change or replace the module or cable. Manually set speed and duplex.";
-static const char *const ice_port_number_label = "Port Number";
-static const char *const ice_update_nvm_solution = "Update to the latest NVM image.";
+#define ice_common_port_solutions	"Check your cable connection. Change or replace the module or cable. Manually set speed and duplex."
+#define ice_port_number_label		"Port Number"
+#define ice_update_nvm_solution		"Update to the latest NVM image."
 
 static const struct ice_health_status ice_health_status_lookup[] = {
 	{ICE_AQC_HEALTH_STATUS_ERR_UNKNOWN_MOD_STRICT, "An unsupported module was detected.",

base-commit: 4241a702e0d0c2ca9364cfac08dbf134264962de
-- 
2.46.0

