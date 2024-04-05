Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 59FBE899A37
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Apr 2024 12:07:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C3F9482204;
	Fri,  5 Apr 2024 10:07:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 76UbEkLGPC2F; Fri,  5 Apr 2024 10:07:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F2A4C82214
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712311622;
	bh=ngqHIn4+OjIcfhy6AZ/BPGb4EQeme4pAoUZd4TQrojo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=PTUcOgaisBsp6HZEyLKP2AJvYyX6NsulfawGWYsB/Ryck4R+77g+v25yHFc4uuSwt
	 vsCzBMoBfPVH7lN7vPBdJ35MUyKkkuGKjTsJl8cXpS/mWj8fas4I8ItomLvCW5Wrob
	 Veswp9RcksszeJVYLr84P0m041aeHgsl9rlR//8sTVp7TAB3PeEYoAee8HMWhaVmh1
	 +t0ho8fnmu5i5uvJkxnS+d78gZebGYGRSHqTB/YxA8T/L8PQKz97OOcB21IyAmfyCo
	 33/MfmdH5l6exCFOC/ah4d+1SqRXkFqeDPMRHuvGo5FF6jpvgUuL2p9OmeN+KmEqFT
	 f83v5TePQfFBg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F2A4C82214;
	Fri,  5 Apr 2024 10:07:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0315C1BF385
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 10:06:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E9DD282214
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 10:06:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sQfc2mu4cNIS for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Apr 2024 10:06:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 65A6382204
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 65A6382204
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 65A6382204
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 10:06:58 +0000 (UTC)
X-CSE-ConnectionGUID: 0oGnnliARVaKBUF6OvAIiA==
X-CSE-MsgGUID: zU6vdSzYQI+BLGRDJ/8YqQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="7493920"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; 
   d="scan'208";a="7493920"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 03:06:57 -0700
X-CSE-ConnectionGUID: hArtSAm8Su2qSmrc5hebDQ==
X-CSE-MsgGUID: U+yr5OLdQkyd/p384kIrzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="19536083"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by orviesa007.jf.intel.com with ESMTP; 05 Apr 2024 03:06:56 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  5 Apr 2024 11:57:12 +0200
Message-ID: <20240405100648.144756-14-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712311618; x=1743847618;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SoyjNGlki52gHtWEtTa0V4mjRrOqn9ZjWpMmSIycJ1c=;
 b=lNqtCY2Dpun/8Yywxssxa9qrk7GHCvaxzpT5ZQ3k3497QVTdQQQtr8As
 fYTVNdXex8EO4E9uIyNc8OpFOpQdKkC262T2ZZfTp0aXmbfwTJBg+7EaK
 bOsmF3OP75NH7hL0EvVXT6eXITFHofEvwqkMQRh3GSZDNiDkzKq0isMQP
 +jvmvU/jSQDlDQeyrAAwiAMtO4ppTQb/xxCRh4zk/24bkYatlG9itlbXR
 2Nk2y1AtXoc6/A4mOYBDTHIUtGAyaeMS2UboKnmmytl/3XLs8KR2/VfMq
 UE9DvlyZLNbhCkF84csM6Jdm4iT4ryW6jceADBqMbbE/OLOj7KJWCM2BY
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lNqtCY2D
Subject: [Intel-wired-lan] [PATCH v6 iwl-next 00/12] Introduce ETH56G PHY
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
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 3595 +++++++++++++----
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  290 +-
 drivers/net/ethernet/intel/ice/ice_sbq_cmd.h  |   10 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   60 +-
 13 files changed, 3874 insertions(+), 914 deletions(-)


base-commit: 0a3074e5b4b523fb60f4ae9fb32bb180ea1fb6ef
-- 
2.43.0

