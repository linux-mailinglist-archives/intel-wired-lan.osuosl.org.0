Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 47A0189BDE5
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Apr 2024 13:18:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CBF4F401B8;
	Mon,  8 Apr 2024 11:18:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GLpo96FGKqta; Mon,  8 Apr 2024 11:18:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 108A040113
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712575104;
	bh=qNcAU9hJ0d6kKDTfUlZki+DreeG4YQAFzqcZUmbBeiU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Z0jfvxaR3IOxl/q2w1Cx9uajQbBH4UT2lhpvc4tJ6S+x6tFocm7XZaw2dy14mkV4k
	 DQnrsxtcIOvLXOWgH59v2uzxxhQhY6bhoM+xm8EaCaOSaw1HXNBIEWYG69uQatqvP1
	 59XnSv5GgpaFs+w6C1cGuya/93wV9U0UDtfYsAhZ4ykvSEDtDw+A6lGBg6v9TT7W4s
	 Xz+wWvNr7ngVC6pHuinCEhQJjB4DPGH2INeP7m6T+F5JGmdpIeFbmkSH1LcOR5tKP9
	 VtxHWAaaRQqkrb++1rQB6SBP7ot0BmK810X8W9FrNEFk3J6yYahisAzuxHX3kVs2k9
	 fSL/W794RPnTA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 108A040113;
	Mon,  8 Apr 2024 11:18:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DCDFC1BF340
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 11:18:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C7F5781BC2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 11:18:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d7CXB51ytfrP for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Apr 2024 11:18:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8CC4A81B3E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8CC4A81B3E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8CC4A81B3E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 11:18:19 +0000 (UTC)
X-CSE-ConnectionGUID: Y1XfnV47SiCiezPDm1BrMA==
X-CSE-MsgGUID: yxa2qysUT6GnjW8mg0F8xg==
X-IronPort-AV: E=McAfee;i="6600,9927,11037"; a="18988517"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="18988517"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 04:18:19 -0700
X-CSE-ConnectionGUID: yyloKoNDQOmifP5SRRu2iA==
X-CSE-MsgGUID: cA+pxOSXSlav9QKxdelNtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="19904875"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by fmviesa009.fm.intel.com with ESMTP; 08 Apr 2024 04:18:17 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  8 Apr 2024 13:07:21 +0200
Message-ID: <20240408111814.404583-14-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712575101; x=1744111101;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dQPBce9GX9FJrilfHJ6ellVM2ibschBaLtiITZVazNM=;
 b=HUdHuBztipauHcU0Vnp2P77SgPUM2IVGG/P91K9ps77hlzLKlj9Yi6ct
 cJyuso9ogVTGbLXqol87lftAi7sKt6Y0bVLbOPKh6FHU9gZalg0Ia6gCZ
 n3Oe6D5KN+fEKEV8MDut85BYo50UEoE2T32uhVYy8X1m0hxcjmr0Gi1Lc
 ZHW3WxTYh4IKtFncaGnHR3QJkLz6BEM9m9Tw0E+l4o8pO+MVqp/KhrqeI
 52jLDQ859GmF7+JLu0Tc6l2smlr+IPJpqJ+xG7Bx5YuGT9ULQSDqlzHK7
 Fu/NTmse1WPqyJqDnWFs2wwwlJiF4caDDcyik9rhdUNsdpAQKEyeJh1jQ
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HUdHuBzt
Subject: [Intel-wired-lan] [PATCH v7 iwl-next 00/12] Introduce ETH56G PHY
 model for E825C products
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
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 anthony.l.nguyen@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

E825C products have a different PHY model than E822, E823 and E810 products.
This PHY is ETH56G and its support is necessary to have functional PTP stack
for E825C products.

Grzegorz Nitka (2):
  ice: Add NAC Topology device capability parser
  ice: Adjust PTP init for 2x50G E825C devices

Jacob Keller (2):
  ice: Introduce helper to get tmr_cmd_reg values
  ice: Introduce ice_get_base_incval() helper

Karol Kolacinski (4):
  ice: Introduce ice_ptp_hw struct
  ice: Add PHY OFFSET_READY register clearing
  ice: Change CGU regs struct to anonymous
  ice: Support 2XNAC configuration using auxbus

Michal Michalik (1):
  ice: Add support for E825-C TS PLL handling

Sergey Temerkhanov (3):
  ice: Implement Tx interrupt enablement functions
  ice: Move CGU block
  ice: Introduce ETH56G PHY model for E825C products

V5 -> V6: Changes in:
          - ice: Move CGU block

V5 -> V6: Changes in:
          - ice: Implement Tx interrupt enablement functions
          - ice: Move CGU block

V4 -> V5: Changes in:
          - ice: Introduce ice_ptp_hw struct
          - ice: Introduce helper to get tmr_cmd_reg values
          - ice: Introduce ice_get_base_incval() helper
          - ice: Introduce ETH56G PHY model for E825C products
          - ice: Add support for E825-C TS PLL handling
          - ice: Adjust PTP init for 2x50G E825C devices

V1 -> V4: Changes in:
          - ice: Introduce ETH56G PHY model for E825C products

 drivers/net/ethernet/intel/ice/ice.h          |   23 +-
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |    1 +
 drivers/net/ethernet/intel/ice/ice_cgu_regs.h |   77 +-
 drivers/net/ethernet/intel/ice/ice_common.c   |   58 +-
 drivers/net/ethernet/intel/ice/ice_common.h   |    2 +
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |    4 +
 drivers/net/ethernet/intel/ice/ice_ptp.c      |  265 +-
 drivers/net/ethernet/intel/ice/ice_ptp.h      |    1 +
 .../net/ethernet/intel/ice/ice_ptp_consts.h   |  402 ++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 3594 +++++++++++++----
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  290 +-
 drivers/net/ethernet/intel/ice/ice_sbq_cmd.h  |   10 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   60 +-
 13 files changed, 3873 insertions(+), 914 deletions(-)


base-commit: c6f2492cda380a8bce00f61c3a4272401fbb9043
-- 
2.43.0

