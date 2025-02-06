Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1A9A2B51B
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Feb 2025 23:31:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 38DA684998;
	Thu,  6 Feb 2025 22:31:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 58D43pJ_ohr3; Thu,  6 Feb 2025 22:31:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1F0FF8499B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738881083;
	bh=V6iHLiENgkgYssEEWMk3ig4//twgUhfcOfYFYmbaDho=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ckcKzO4AxjyWcgp92/F2rTX8KCDXOryVT4dDs76SHmEBI/F3K+r8LOaqmIiiSNrGE
	 ju1MJC3odkMT454TVYX4kXgUWs/kuFFcraEfSrL5egso0gtruUs2lXcO6JfIPu0NnY
	 2c2LjIAFqJxAlD5DZBiZVNjdJDEsHo5Nlj/VL/87HSJ/t3oaTKsTSkUBR/ZCxVpAoO
	 3zcX0cdaAbHWlT1gG/xfIhYuGkdX/CI5egq8C+bF1FHee0dyAj++5bPTZoVYODRWR7
	 iA02/3brq/yeEZKcPrGA6KooVvPD+NQqo7MJU4SM22MSw9JLRdCGXzNuN/gtS9yOg8
	 dOwnCwTY8cvEQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F0FF8499B;
	Thu,  6 Feb 2025 22:31:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 11CEFC5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 22:31:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4C50E4293E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 22:31:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kyDxxlv-PjEo for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Feb 2025 22:31:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2AF7D4294A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2AF7D4294A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2AF7D4294A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 22:31:17 +0000 (UTC)
X-CSE-ConnectionGUID: aqelXEyMQpSRlVBRwLhPlw==
X-CSE-MsgGUID: Ec2SvyjWRzmQYO7HoX2xbg==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="43171995"
X-IronPort-AV: E=Sophos;i="6.13,265,1732608000"; d="scan'208";a="43171995"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2025 14:31:17 -0800
X-CSE-ConnectionGUID: yIGMdLlGTSuLLfHFPfW1cA==
X-CSE-MsgGUID: 6JK31nweSsqve/vgMqcdVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,265,1732608000"; d="scan'208";a="142225830"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa002.jf.intel.com with ESMTP; 06 Feb 2025 14:31:13 -0800
Received: from pkitszel-desk.tendawifi.com (unknown [10.245.246.89])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 7179F32ECF;
 Thu,  6 Feb 2025 22:31:11 +0000 (GMT)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: netdev@vger.kernel.org, Konrad Knitter <konrad.knitter@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Qiuxu Zhuo <qiuxu.zhuo@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Simon Horman <horms@kernel.org>, Kees Cook <kees@kernel.org>,
 Jiri Slaby <jirislaby@kernel.org>
Date: Thu,  6 Feb 2025 23:30:23 +0100
Message-ID: <20250206223101.6469-2-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738881077; x=1770417077;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=j5ZtwIwU7O/j1tNyCDeA8aSk+vuKi3hBGS+SQSjbZ50=;
 b=lGt4n6LTbNwE+RwbkGaUeuFZZ8kyfR7vKUjBnJWCC2ombUt2KvSu9h3A
 1w5OFLE8Xzp8J2RTkPFezNAgCMBj/RNd0sgfM7BM/mH/Bifargoc3H7wn
 vCyW58jl+PE4sQLjnxLzGEH36s60Tkv9IUoYkcQKLJNUneJBd1bukvRsZ
 S57NQADlOqLkWVxkDMZjVhJzIJqcPV2Ym7TKNRpIdnrgCdD/0mbZUbb0T
 LYCQIaICfnNimbUeGEFGCiUB3BVUucLkKpo87Ze24OmPzGnMEWM59ttbW
 S6M5LiXntpuNob9CaYdrfvpbs255jltjrW4lPM4gGjxuUC4S7iSgl+T3a
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lGt4n6LT
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: health.c: fix compilation
 on gcc 7.5
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

GCC 7 is not as good as GCC 8+ in telling what is a compile-time
const, and thus could be used for static storage.
Fortunately keeping strings as const arrays is enough to make old
gcc happy.

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
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Suggested-by: Simon Horman <horms@kernel.org>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
v2: use static const char[] instead of #define - Simon
    +added RB tag from Michal, but not adding TB tag from Qiuxu

v1:
 https://lore.kernel.org/netdev/20250205104252.30464-2-przemyslaw.kitszel@intel.com

CC: Kees Cook <kees@kernel.org>
CC: Jiri Slaby <jirislaby@kernel.org>
---
 drivers/net/ethernet/intel/ice/devlink/health.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/devlink/health.c b/drivers/net/ethernet/intel/ice/devlink/health.c
index ea40f7941259..19c3d37aa768 100644
--- a/drivers/net/ethernet/intel/ice/devlink/health.c
+++ b/drivers/net/ethernet/intel/ice/devlink/health.c
@@ -25,10 +25,10 @@ struct ice_health_status {
  * The below lookup requires to be sorted by code.
  */
 
-static const char *const ice_common_port_solutions =
+static const char ice_common_port_solutions[] =
 	"Check your cable connection. Change or replace the module or cable. Manually set speed and duplex.";
-static const char *const ice_port_number_label = "Port Number";
-static const char *const ice_update_nvm_solution = "Update to the latest NVM image.";
+static const char ice_port_number_label[] = "Port Number";
+static const char ice_update_nvm_solution[] = "Update to the latest NVM image.";
 
 static const struct ice_health_status ice_health_status_lookup[] = {
 	{ICE_AQC_HEALTH_STATUS_ERR_UNKNOWN_MOD_STRICT, "An unsupported module was detected.",

base-commit: 4241a702e0d0c2ca9364cfac08dbf134264962de
-- 
2.46.0

