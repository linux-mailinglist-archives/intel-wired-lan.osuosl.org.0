Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 79658A83FC9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Apr 2025 12:01:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB353402FB;
	Thu, 10 Apr 2025 10:01:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M7z4i91v1h-F; Thu, 10 Apr 2025 10:01:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C0B264030E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744279288;
	bh=kC7p7ZL6AhmEE/dwyeLDEHGHxVn091hGqc55HynbEMQ=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=jRF3o3C6bLOTklPvuEuTSkOmiziUsIYVR5DjR7+sTtyo39As1CNOoNq4MZLlkSgLc
	 eLfKNn2trYzULgMx0e2EvppoadhrsKVAdJE95JOvLNB12bVl8BlAUq9cRQLS7liHbB
	 MS2uptQjdB4jd0UCcIbmZcy9B+mJHEz5PWlXWrsFCqy2a3Zyow5kwwJBAExubI0NK2
	 wWkMaWlyGd3w6p+YpMffKbO20dH6JcqZlwnck7lmgi1dXSDkAydaMi8ZH+bKw7503K
	 O70ER+eEFYPVkjVWw2+QxaeafDoXwdq1eRPcV7XwULzh5qU+nuBc7+kvTGxm16sdmr
	 L3W4NuqpJVdxQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C0B264030E;
	Thu, 10 Apr 2025 10:01:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 348E6108
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 10:01:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 312834027C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 10:01:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 164ZaYEGX7Oz for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Apr 2025 10:01:26 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 514DE4012E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 514DE4012E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 514DE4012E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 10:01:25 +0000 (UTC)
X-CSE-ConnectionGUID: b3mlzihZRDacgVUIfOmVCw==
X-CSE-MsgGUID: nJgDMVzWSWKlD5eGeV45hA==
X-IronPort-AV: E=McAfee;i="6700,10204,11399"; a="63183891"
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="63183891"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 03:01:25 -0700
X-CSE-ConnectionGUID: fDn6aBozQHOtS34ZIGmU3A==
X-CSE-MsgGUID: QQ0M3ULeQxyOhrsZXF1DyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="159819662"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa001.fm.intel.com with ESMTP; 10 Apr 2025 03:01:22 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, aleksander.lobakin@intel.com,
 przemyslaw.kitszel@intel.com, piotr.kwapulinski@intel.com,
 aleksandr.loktionov@intel.com, jedrzej.jagielski@intel.com,
 larysa.zaremba@intel.com, anthony.l.nguyen@intel.com
Date: Thu, 10 Apr 2025 12:01:13 +0200
Message-ID: <20250410100121.2353754-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744279286; x=1775815286;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XNZZWi4qt/f22D58kpuzCFxRuFwV6flPdgUwzFNz0RY=;
 b=hWKf6zFq8Y8N+bkX1dDrWEfUamsUJd0vQfCYVgI5e5Kyo/zfIPVrzsDl
 mDtG4nuyRhPhR30bKP39eqO4ikpWp+CXzZKqWh6Ua75Q6jHSuQj9kfbGm
 OGdRcfRu7IX4uzSboeKmXtOT++LvntiGS3GtEUgQW28XC1RXmO0+Q/K17
 vuzbpFTSO82xO58resEc3to1YrUyjzePKECmouN9bGhIGlpuv08/0Qqya
 60wADs0Yy2kC8NpH0mB82Uj9G2cQBuQMUaoRs+2R+nlHib4x0dxDI9CGm
 SH0Mqd7UR8/X5M8sUWW1DrnXJ5cvGBmMGSsZRNUT2g4nM6hwShtU0dPri
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hWKf6zFq
Subject: [Intel-wired-lan] [iwl-next v2 0/8] libie: commonize adminq
 structure
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

Hi,

It is a prework to allow reusing some specific Intel code (eq. fwlog).

Move common *_aq_desc structure to libie header and changing
it in ice, ixgbe, i40e and iavf.

Only generic adminq commands can be easily moved to common header, as
rest is slightly different. Format remains the same. It will be better
to correctly move it when it will be needed to commonize other part of
the code.

Move *_aq_str() to new libie module (libie_adminq) and use it across
drivers. The functions are exactly the same in each driver. Some more
adminq helpers/functions can be moved to libie_adminq when needed.

v1 --> v2: [1]
 * add short descriptions in kdoc (patch 1, 5)
 * handle all error types in switch to allow clean build (patch 3)

[1] https://lore.kernel.org/netdev/20250312062426.2544608-1-michal.swiatkowski@linux.intel.com/

Michal Swiatkowski (8):
  ice, libie: move generic adminq descriptors to lib
  ixgbe: use libie adminq descriptors
  i40e: use libie adminq descriptors
  iavf: use libie adminq descriptors
  libie: add adminq helper for converting err to str
  ice: use libie_aq_str
  iavf: use libie_aq_str
  i40e: use libie_aq_str

 drivers/net/ethernet/intel/Kconfig            |   3 +
 drivers/net/ethernet/intel/libie/Kconfig      |   6 +
 drivers/net/ethernet/intel/libie/Makefile     |   4 +
 drivers/net/ethernet/intel/i40e/i40e_adminq.h |  12 +-
 .../net/ethernet/intel/i40e/i40e_adminq_cmd.h | 155 +---
 .../net/ethernet/intel/i40e/i40e_prototype.h  |  15 +-
 drivers/net/ethernet/intel/i40e/i40e_type.h   |   6 +-
 drivers/net/ethernet/intel/iavf/iavf_adminq.h |  12 +-
 .../net/ethernet/intel/iavf/iavf_adminq_cmd.h |  83 +-
 .../net/ethernet/intel/iavf/iavf_prototype.h  |   3 +-
 drivers/net/ethernet/intel/iavf/iavf_type.h   |   2 +-
 drivers/net/ethernet/intel/ice/ice.h          |   1 -
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 269 +------
 drivers/net/ethernet/intel/ice/ice_common.h   |   6 +-
 drivers/net/ethernet/intel/ice/ice_controlq.h |   8 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |  12 +-
 .../ethernet/intel/ixgbe/ixgbe_type_e610.h    | 226 +-----
 include/linux/net/intel/libie/adminq.h        | 306 ++++++++
 drivers/net/ethernet/intel/i40e/i40e_adminq.c |  68 +-
 drivers/net/ethernet/intel/i40e/i40e_client.c |   7 +-
 drivers/net/ethernet/intel/i40e/i40e_common.c | 730 ++++++++----------
 drivers/net/ethernet/intel/i40e/i40e_dcb.c    |  10 +-
 drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c |   8 +-
 .../net/ethernet/intel/i40e/i40e_debugfs.c    |  46 +-
 .../net/ethernet/intel/i40e/i40e_ethtool.c    |  36 +-
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 240 +++---
 drivers/net/ethernet/intel/i40e/i40e_nvm.c    |  18 +-
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |  27 +-
 drivers/net/ethernet/intel/iavf/iavf_adminq.c |  62 +-
 drivers/net/ethernet/intel/iavf/iavf_common.c | 110 +--
 drivers/net/ethernet/intel/iavf/iavf_main.c   |   5 +-
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |   2 +-
 .../net/ethernet/intel/ice/devlink/devlink.c  |  10 +-
 .../net/ethernet/intel/ice/devlink/health.c   |   6 +-
 drivers/net/ethernet/intel/ice/ice_common.c   | 388 +++++-----
 drivers/net/ethernet/intel/ice/ice_controlq.c |  53 +-
 drivers/net/ethernet/intel/ice/ice_dcb.c      |  36 +-
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |   2 +-
 drivers/net/ethernet/intel/ice/ice_ddp.c      |  47 +-
 drivers/net/ethernet/intel/ice/ice_dpll.c     |  20 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  12 +-
 .../net/ethernet/intel/ice/ice_fw_update.c    |  38 +-
 drivers/net/ethernet/intel/ice/ice_fwlog.c    |  16 +-
 drivers/net/ethernet/intel/ice/ice_lag.c      |   4 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      |  10 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |  63 +-
 drivers/net/ethernet/intel/ice/ice_nvm.c      |  38 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |  20 +-
 drivers/net/ethernet/intel/ice/ice_sched.c    |  18 +-
 drivers/net/ethernet/intel/ice/ice_sriov.c    |   4 +-
 drivers/net/ethernet/intel/ice/ice_switch.c   |  55 +-
 drivers/net/ethernet/intel/ice/ice_vf_mbx.c   |   6 +-
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |   6 +-
 .../net/ethernet/intel/ice/ice_vlan_mode.c    |   6 +-
 .../net/ethernet/intel/ice/ice_vsi_vlan_lib.c |  24 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 272 +++----
 .../ethernet/intel/ixgbe/ixgbe_fw_update.c    |   4 +-
 drivers/net/ethernet/intel/libie/adminq.c     |  50 ++
 58 files changed, 1570 insertions(+), 2136 deletions(-)
 create mode 100644 include/linux/net/intel/libie/adminq.h
 create mode 100644 drivers/net/ethernet/intel/libie/adminq.c

-- 
2.42.0

