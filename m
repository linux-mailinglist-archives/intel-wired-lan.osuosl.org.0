Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 84578896723
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Apr 2024 09:50:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3264960D64;
	Wed,  3 Apr 2024 07:50:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2zHOEEw-HCUO; Wed,  3 Apr 2024 07:50:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D0A5460D65
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712130621;
	bh=2lNOgllz5rF6MuSgZqjfgM9gXHCxOx/hEAJNJmUbdjc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=HtQz98E3r1jYDMNItwM9srsV+KFk7gJHPwvaxjcxvLoFPLsJcIyJSC0fqPGnEN8Qu
	 js/elrlVBE70zKl3cnlFKwyOgh5fX4KQjyCBLV8rlExC5ZyGxGK/YDcB2PklyJB7Cv
	 1xhLFo3WJRh3kbytj3+5riWvnDzYFTVh2GoaxAooctrJGSawwIVCXLQqTF1ABMag6v
	 7YmTq0q1zmMdAIOiJcsCTKzJLDd/sfC4Lp//DD+dzUqVWR2Arzg5FlZp63S1OrpBBH
	 Lp9oHXzVyHsMDhESsp5UCVGuFro54vYHcm1OTD/xgior5A7NQ5f56Sl5M0mzbUYohx
	 gLnekLSr48Elw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D0A5460D65;
	Wed,  3 Apr 2024 07:50:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0F9231BF36A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 07:50:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EFC55415BC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 07:50:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M30uVso0Qy5M for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Apr 2024 07:50:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6B73E415BA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6B73E415BA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6B73E415BA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 07:50:18 +0000 (UTC)
X-CSE-ConnectionGUID: aEHBkb7/TCmduDXBl0hufA==
X-CSE-MsgGUID: GA7lCqiiRiGDxnKCVEjTkw==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="10311865"
X-IronPort-AV: E=Sophos;i="6.07,176,1708416000"; d="scan'208";a="10311865"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 00:50:17 -0700
X-CSE-ConnectionGUID: BuNJNmGRT7iZ31jWMEqPxA==
X-CSE-MsgGUID: Fbk12bArSKSrUkvUNXMU6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,176,1708416000"; d="scan'208";a="55790884"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa001.jf.intel.com with ESMTP; 03 Apr 2024 00:50:14 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id B5C3A369F7;
 Wed,  3 Apr 2024 08:50:08 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  3 Apr 2024 03:41:06 -0400
Message-Id: <20240403074112.7758-1-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712130618; x=1743666618;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=v3U9R3hX9VfIJR8X6zGBJRhrr7nCNNgpwlNhzMSfXXI=;
 b=O0qPaghF/1M+fV27+74KWu9+ADVrSfibOSBCJJvyWmmXkArKquOmyLCS
 BdOUozHrgmn/eLfWDzzizzuf3jl+R4JU5Lfj39LmHYwnBaWlQKUnkGeBt
 fPOm/mJx1KiSPjUmjk8t0ZKs4ZzICe+9vRnALhV6tRTUljy98slf0cojV
 vsaZnU/uL0f3dPVECeHoeCx0GLYk+V4n4Qlh9JOQc6cyWoqk6hn/vXYn9
 aFz3id0RXdH0H0wJCDjrj0DdsInjPBByb8+FYbEnUm7vNUYgXiQcD00SQ
 a7RV53b3ETvMpnGSGL9oNsARUkU2uIZhvmVomAiqPV/EQqxC3lQd9lh6W
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=O0qPaghF
Subject: [Intel-wired-lan] [PATCH net-next v9 0/6] ice: Support 5 layer Tx
 scheduler topology
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
Cc: andrew@lunn.ch, jiri@resnulli.us, michal.wilczynski@intel.com,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>, netdev@vger.kernel.org,
 lukasz.czapnik@intel.com, victor.raj@intel.com, anthony.l.nguyen@intel.com,
 horms@kernel.org, przemyslaw.kitszel@intel.com, kuba@kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

For performance reasons there is a need to have support for selectable
Tx scheduler topology. Currently firmware supports only the default
9-layer and 5-layer topology. This patch series enables switch from
default to 5-layer topology, if user decides to opt-in.

---
v9:
- rebased the code after devlink changes from Michal S

v8:
- fixed all drivers to use new *set pointer - commit 1
- added setting flag in ice_copy_and_init_pkg based on family - commit 2
- changed the way of registering devlink param - commit 5
- changed the name of devlink param to be more descriptive - commit 5
- added RB in commit 1 and commit 6
https://lore.kernel.org/netdev/20240326143042.9240-1-mateusz.polchlopek@intel.com/

v7:
- fixed comments from v6 in commit 1 (devlink changes) and commit 5 (ice_devlink changes)
- included Documentation change that should be in v6 (reboot -> PCI slot powercycle)
- added Reviewed-by tag to commit 1 (devlink changes) and commit 6 (Documentation)
https://lore.kernel.org/netdev/20240308113919.11787-1-mateusz.polchlopek@intel.com/

v6:
- extended devlink_param *set pointer to accept one more parameter - extack
- adjusted all drivers that use *set pointer to pass one more parameter
- updated Documentation - changed "reboot" to "PCI slot powercycle", kept Kuba's ACK
- removed "Error: " prefix from NL_SET_ERR_MSG_MOD function in ice_devlink.c
- removed/adjusted messages sent to end user in ice_devlink.c
https://lore.kernel.org/netdev/20240305143942.23757-1-mateusz.polchlopek@intel.com/

v5:
- updated Documentation commit as suggested in v4
https://lore.kernel.org/netdev/20240228142054.474626-1-mateusz.polchlopek@intel.com/

v4:
- restored the initial way of passing firmware data to ice_cfg_tx_topo
  function in ice_init_tx_topology function in ice_main.c file. In v2
  and v3 version it was passed as const u8 parameter which caused kernel
  crash. Because of this change I decided to drop all Reviewed-by tags.
https://lore.kernel.org/netdev/20240219100555.7220-1-mateusz.polchlopek@intel.com/

v3:
- fixed documentation warnings
https://lore.kernel.org/netdev/20231009090711.136777-1-mateusz.polchlopek@intel.com/

v2:
- updated documentation
- reorder of variables list (default-init first)
- comments changed to be more descriptive
- added elseif's instead of few if's
- returned error when ice_request_fw fails
- ice_cfg_tx_topo() changed to take const u8 as parameter (get rid of copy
  buffer)
- renamed all "balance" occurences to the new one
- prevent fail of ice_aq_read_nvm() function
- unified variables names (int err instead of int status in few
  functions)
- some smaller fixes, typo fixes
https://lore.kernel.org/netdev/20231006110212.96305-1-mateusz.polchlopek@intel.com/

v1:
https://lore.kernel.org/netdev/20230523174008.3585300-1-anthony.l.nguyen@intel.com/
---

Lukasz Czapnik (1):
  ice: Add tx_scheduling_layers devlink param

Mateusz Polchlopek (1):
  devlink: extend devlink_param *set pointer

Michal Wilczynski (2):
  ice: Enable switching default Tx scheduler topology
  ice: Document tx_scheduling_layers parameter

Raj Victor (2):
  ice: Support 5 layer topology
  ice: Adjust the VSI/Aggregator layers

 Documentation/networking/devlink/ice.rst      |  47 ++++
 .../marvell/octeontx2/otx2_cpt_devlink.c      |   9 +-
 drivers/net/ethernet/amd/pds_core/core.h      |   3 +-
 drivers/net/ethernet/amd/pds_core/devlink.c   |   3 +-
 .../net/ethernet/broadcom/bnxt/bnxt_devlink.c |   6 +-
 .../net/ethernet/intel/ice/devlink/devlink.c  | 184 +++++++++++++++-
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  32 +++
 drivers/net/ethernet/intel/ice/ice_common.c   |   5 +
 drivers/net/ethernet/intel/ice/ice_ddp.c      | 205 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ddp.h      |   2 +
 .../net/ethernet/intel/ice/ice_fw_update.c    |   7 +-
 .../net/ethernet/intel/ice/ice_fw_update.h    |   3 +
 drivers/net/ethernet/intel/ice/ice_main.c     | 102 +++++++--
 drivers/net/ethernet/intel/ice/ice_nvm.c      |   7 +-
 drivers/net/ethernet/intel/ice/ice_nvm.h      |   3 +
 drivers/net/ethernet/intel/ice/ice_sched.c    |  37 ++--
 drivers/net/ethernet/intel/ice/ice_sched.h    |   3 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 .../marvell/octeontx2/af/rvu_devlink.c        |  12 +-
 .../marvell/octeontx2/nic/otx2_devlink.c      |   3 +-
 drivers/net/ethernet/mellanox/mlx4/main.c     |   6 +-
 .../net/ethernet/mellanox/mlx5/core/eswitch.c |   3 +-
 .../mellanox/mlx5/core/eswitch_offloads.c     |   3 +-
 .../net/ethernet/mellanox/mlx5/core/fs_core.c |   3 +-
 .../ethernet/mellanox/mlx5/core/fw_reset.c    |   3 +-
 .../mellanox/mlxsw/spectrum_acl_tcam.c        |   3 +-
 .../ethernet/netronome/nfp/devlink_param.c    |   3 +-
 drivers/net/ethernet/qlogic/qed/qed_devlink.c |   3 +-
 drivers/net/ethernet/ti/am65-cpsw-nuss.c      |   3 +-
 drivers/net/ethernet/ti/cpsw_new.c            |   6 +-
 drivers/net/wwan/iosm/iosm_ipc_devlink.c      |   3 +-
 include/net/devlink.h                         |   3 +-
 include/net/dsa.h                             |   3 +-
 net/devlink/param.c                           |   7 +-
 net/dsa/devlink.c                             |   3 +-
 35 files changed, 645 insertions(+), 84 deletions(-)

-- 
2.38.1

