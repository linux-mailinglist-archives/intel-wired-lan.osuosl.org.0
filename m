Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF568AA9F1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Apr 2024 10:18:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2560880B5B;
	Fri, 19 Apr 2024 08:18:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fH3EGqWzJ_XP; Fri, 19 Apr 2024 08:18:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AB8FF80AB6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713514720;
	bh=NI3FaMV9LwUFIU4m/WGtNWnJPfigsLNni0geNFR1CPA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=rDioCNeQtCf1CpVg6tSBbF2SZHVtzrEFd+V0T3Qb8CJdxpgVsMsyz9yr3aNSSR+N9
	 DcYkP2VIdZGrubVw5TzZ311fk+0wONpY73CixJKs1l6J01QGious67zl+XScj152CX
	 2GNWuqvStkwKj73exIACQygqote1NOBTabOWtV2gqeIeLM7I4bUhRhNnk5K9M8ONg+
	 8dFp2j8Z2bJNa0C5vjoZel6f9/gMo778HbpyrRbVY1NxcvfEDKJVerLLebxECPiPGb
	 gM0i/B5fZy0Hx8IuWgUmlQk3Uq4wBMR0seILqM2fSivE2EK6MSbgj7Eij3VRgQsFdK
	 X9nK4YoP22+vA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AB8FF80AB6;
	Fri, 19 Apr 2024 08:18:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1B5781BF288
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Apr 2024 08:18:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0706740280
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Apr 2024 08:18:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gf4w5XjY2MBk for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Apr 2024 08:18:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A82B6400BA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A82B6400BA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A82B6400BA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Apr 2024 08:18:35 +0000 (UTC)
X-CSE-ConnectionGUID: Y0aAXebxTOKW37po13aN4g==
X-CSE-MsgGUID: JQZqMqw3R4qpmGO0Lbu59g==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="9028057"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; 
   d="scan'208";a="9028057"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 01:18:35 -0700
X-CSE-ConnectionGUID: gOdW2VjkRveOrvsGDj7YcQ==
X-CSE-MsgGUID: HKavp5gjQGeuPBX0isk7Sg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="23244448"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa009.jf.intel.com with ESMTP; 19 Apr 2024 01:18:32 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 75B6927BD0;
 Fri, 19 Apr 2024 09:18:22 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 19 Apr 2024 04:08:48 -0400
Message-Id: <20240419080854.10000-1-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713514716; x=1745050716;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6I77wW5MgO+I1O9Psb01f7aK/MP7MCxtidgpCGR6J0s=;
 b=WkIQH6dH4Jt/aJ2GKJcIFZyq0P3d1bd2nFWnBcC/kw8rs6CyD/GnSdWw
 YMxe4J6AfczOVbzjAiXJ2+1u2HvE8nym17ytuDxKjowCX6OGKJHFDCZkP
 ZFHN7arlzXe3/HUbeLX3pZIQvYqpbfXTKW6ZE3ZbQD6YZY+cbngx2zjDV
 fXldux7X6OJFNPwPgHoXQaHSUYNJnMkDoKXPlfWoy02hkrKVEuc4lDzEx
 bx/AiGJnGxvYRoFQmngli3q8oPh4cu8UeF2OQMch27sQRPoPN6VJvlOid
 QMyOIwfjIF3cA9KYFKQFadROPjweBWDzvEAoz0PywhI2qpN/5DSd2qdCO
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WkIQH6dH
Subject: [Intel-wired-lan] [PATCH net-next v10 0/6] ice: Support 5 layer Tx
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
v10:
- fixed all but one kdoc warnings (the last one will be better addressed by
  separate series). No functional/mechanical/logical changes, just docs, so
  I kept all Tested-by tags.

v9:
- rebased the code after devlink changes from Michal S
https://lore.kernel.org/netdev/20240403074112.7758-1-mateusz.polchlopek@intel.com/

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
 .../net/ethernet/intel/ice/devlink/devlink.c  | 184 ++++++++++++++-
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  32 +++
 drivers/net/ethernet/intel/ice/ice_common.c   |   5 +
 drivers/net/ethernet/intel/ice/ice_ddp.c      | 209 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ddp.h      |   2 +
 .../net/ethernet/intel/ice/ice_fw_update.c    |   7 +-
 .../net/ethernet/intel/ice/ice_fw_update.h    |   3 +
 drivers/net/ethernet/intel/ice/ice_main.c     | 108 +++++++--
 drivers/net/ethernet/intel/ice/ice_nvm.c      |   7 +-
 drivers/net/ethernet/intel/ice/ice_nvm.h      |   3 +
 drivers/net/ethernet/intel/ice/ice_sched.c    |  37 ++--
 drivers/net/ethernet/intel/ice/ice_sched.h    |  11 +
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
 35 files changed, 663 insertions(+), 84 deletions(-)

-- 
2.38.1

