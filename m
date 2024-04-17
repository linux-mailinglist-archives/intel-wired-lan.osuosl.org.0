Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B5A0C8A8926
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Apr 2024 18:44:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6F7AF4034E;
	Wed, 17 Apr 2024 16:44:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SwrVAOU5atMb; Wed, 17 Apr 2024 16:44:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 576444047D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713372296;
	bh=CyMcKO9dOPXXamBoWVURQeffySZdPEtBtwyXU7nHsvI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=GmgH/OBx3Vijz0hjd1rhVYoT0P7vqCLKKNsVJ11pNN6N9jAXBzqUCWNynlBn11bIb
	 4PWSfnvf8PMDvQqIui5imbtzNezPNQJj8VHnyBRw8ka6onI4xiHP3ZEbr7dqCPquZ4
	 qj1bO/SLYw04vywlrlM54CRjN/bi4Qy6iOjWI619GWbPTzkybMPc/XEZ0L1SjSP9+K
	 gQLwLOhOj2JumNh6DD6QamSxYl/ywcdU+CGoG8OicbvJvFoAUXCItePMQy++mSE8jP
	 3aLiHR//+fJMEztYKdK01nO25hwALpS4Brz9WCTeYe6QCGQX2IaSTErmd5r6GJ9nWS
	 J7s2Nda87A7Ow==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 576444047D;
	Wed, 17 Apr 2024 16:44:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D6E2D1BF29F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Apr 2024 16:44:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C2075403B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Apr 2024 16:44:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Lw8Bw5gltizB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Apr 2024 16:44:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E7AB240114
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E7AB240114
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E7AB240114
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Apr 2024 16:44:52 +0000 (UTC)
X-CSE-ConnectionGUID: m5yXdZdWQ1SMgp1tzXlYKw==
X-CSE-MsgGUID: qj5AKR+cR5W181JMf7wb5Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="12660676"
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="12660676"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 09:44:52 -0700
X-CSE-ConnectionGUID: Z3FiP38xTB+LCWel3nh7MA==
X-CSE-MsgGUID: vWV9BssUSGSRNwqzeCi3OA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="27470610"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by orviesa004.jf.intel.com with ESMTP; 17 Apr 2024 09:44:50 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 17 Apr 2024 18:39:04 +0200
Message-ID: <20240417164410.850175-14-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713372293; x=1744908293;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=y3RtqdXbPhw0XqC4j6k8eguD/9SDmXsvmBp473qqfas=;
 b=V1PRBH1aRpRitHATipYRL9tyNBsW2Nzd5f6M+jFg7aPRA6GG+RrVhsTM
 NzMhAPO+Cg+/tbJXX3TKtDzKNdvZIoKR0CwWOfobW+K/BRAKfquQeKgue
 /zV/VGT0FNJKegEBHr9dmbSmOA+YcXvjQWof9NsUA9J9Z/cbRtjRydkCP
 vk+cxs2+pfkAGaYmso9jXmfzWKz5s0xyOQdjt75B9l1v9k6v0XBg/6RCH
 6bNOqWGg7ReJI7KzCJBhjgyBW04o8Ubs95ax7J8gB4qiSp6KHcedb/E0P
 0eG8g7X2aFBhLvt4WGU8MBvup1Ic8S7UGNTAhplXBK6d8zd6lHEw/VsPv
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=V1PRBH1a
Subject: [Intel-wired-lan] [PATCH v9 iwl-next 00/12] Introduce ETH56G PHY
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

V8 -> V9: Fixed kernel-doc warnings by adding missing summaries and return codes
          in all patches

V7 -> V8: Changes in:
          - ice: Move CGU block
          - ice: Introduce ETH56G PHY model for E825C products

V6 -> V7: Changes in:
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

 drivers/net/ethernet/intel/ice/ice.h          |   27 +-
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |    2 +
 drivers/net/ethernet/intel/ice/ice_cgu_regs.h |   77 +-
 drivers/net/ethernet/intel/ice/ice_common.c   |   65 +-
 drivers/net/ethernet/intel/ice/ice_common.h   |    2 +
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |    4 +
 drivers/net/ethernet/intel/ice/ice_ptp.c      |  270 +-
 drivers/net/ethernet/intel/ice/ice_ptp.h      |    1 +
 .../net/ethernet/intel/ice/ice_ptp_consts.h   |  402 ++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 3306 ++++++++++++++---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  295 +-
 drivers/net/ethernet/intel/ice/ice_sbq_cmd.h  |   10 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   60 +-
 13 files changed, 3864 insertions(+), 657 deletions(-)


base-commit: ca2791b2bf030090c5d10868fa79ab97de34f57f
-- 
2.43.0

