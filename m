Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93961898423
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Apr 2024 11:35:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C85FB41B6D;
	Thu,  4 Apr 2024 09:35:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SY380GaU_14U; Thu,  4 Apr 2024 09:35:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ED26F41B71
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712223323;
	bh=/RzrGxU+RnAg/4I4pNBCENJ2KuaHAaSacOIH6QT130A=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=K+aEVHRkM+xcwg0r0voLDFM0nFiD2Ce7hVJ5zuyiVlzWnXVm7RfSEXBCcPjea+GrY
	 vR21zP7HoBaJVRa2ihUMW7MTbkoUDztjvWMlMAJOGhgBnyYK127uaAbIDlTaMMaBF0
	 rOLeSRH8Y25P4gLmZs5BcEjmCL64Kqorp/DJzBIuSXwfNrdujMDZhvZsTZ4F8ezV+N
	 CARw8F7u0RjvjMtxt01abyjN/KSitk8IrowuN6sRjl+m4oyUF71OJGE2F00aD8//20
	 JeUQsl1lwoiP3v3ac6Ts9rrw4qNv9Jg5rYywLh9t5p8OoBUR2hYkGlcX1Q0C6dOVcx
	 8tE1Xjkjp/ISA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id ED26F41B71;
	Thu,  4 Apr 2024 09:35:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BF53B1BF3D5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 09:35:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A4E9B60869
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 09:35:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9v51gO64bM7v for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Apr 2024 09:35:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A09FC606EA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A09FC606EA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A09FC606EA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 09:35:19 +0000 (UTC)
X-CSE-ConnectionGUID: H3iZWpPNRAGPlJkL6zAR8w==
X-CSE-MsgGUID: daE9zpXAR7aq1PY/6nVnQA==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="29966571"
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="29966571"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 02:22:44 -0700
X-CSE-ConnectionGUID: obZfBmr2TEqevBkAqZwoPw==
X-CSE-MsgGUID: fOZgO6YQQ+y2faJSBZFnaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="56180695"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by orviesa001.jf.intel.com with ESMTP; 04 Apr 2024 02:22:42 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  4 Apr 2024 11:09:48 +0200
Message-ID: <20240404092238.26975-14-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712223319; x=1743759319;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=804h/wJ3Vn2oUveeLzbpox++xlV4ieOC7u4DPiWV3T0=;
 b=RJyhZxo/50cDtCm2dfecVg7oTKiADPbmICzihk7yyCS4i4irz+d3XaXD
 PxctMC7C8nJc3wuRWNrjKW3FboY68xC0iG/SQBuXuFj0EZliRwX/e5lMA
 q8ix1tOERnqGzvzl8CDYCtwWDQgf3NAjPnY4ul3YKylonj5UvO9lquZEs
 8Ym84xJvX24lvRswqRL/oeJrPi1STbRbdyESV9SjArZnQqi8A2pLM48AN
 7+PnjoZ5eVBtbZ2+vzG/1ydY3KMEGki17Kx3Sx+v4OGATfMM2Fzxg4cgq
 FoouPUzvy7lZIaX+/LzlTioTE0B9y4w8YhUuhab46YXNBcwle93GtvCP8
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RJyhZxo/
Subject: [Intel-wired-lan] [PATCH v5 iwl-next 00/12] Introduce ETH56G PHY
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
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 3647 +++++++++++++----
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  286 +-
 drivers/net/ethernet/intel/ice/ice_sbq_cmd.h  |   10 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   60 +-
 13 files changed, 3900 insertions(+), 936 deletions(-)


base-commit: e4c417070c4f5e3f78e2b568d81d3861004ced3a
-- 
2.43.0

