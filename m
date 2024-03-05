Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 086BC872575
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Mar 2024 18:14:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AE31E417C3;
	Tue,  5 Mar 2024 17:14:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E5Nl3bwDm-Yc; Tue,  5 Mar 2024 17:14:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 35018417C5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709658888;
	bh=jja+L2RV6kDaeLsyzKtPidSijAqEQ8jppK18VhorY+4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=oexI/3IESXlIqjaG1LafKvcB06xAIXCSAn/sy8mE5o50pyNPZkT3fuqKG1rhi2EP5
	 uYOoQfmD+wzz/rVTtsu05kn4vULiiBFLizzwXEn9NyWY3/lU3TIo0mrqF3BHFld0ye
	 aIRrdwMXFbC7qpOkB/ZLUyNK8pu0GZc/prI7PrH1yWuOPFb8mG5uf5S1LP627a7O9u
	 C4j3OImgUXSvKbLJLTbeu4HYtF3OoFcB/F8oz87cZXExgjbaX79j9JswRqJTB1Jq6A
	 CzwOfV+39gDtIwUB40U6OKO8i7KjHr5++h5KA0d2iWqE43BEefUYE8mG6U/g7ah7yo
	 c30AwZ1HfAUVg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 35018417C5;
	Tue,  5 Mar 2024 17:14:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 474A11BF3A4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 17:14:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 40E4D82661
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 17:14:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ncHCF2uor_XX for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Mar 2024 17:14:45 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 05 Mar 2024 17:14:45 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1C0938264A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1C0938264A
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1C0938264A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 17:14:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="4808142"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="4808142"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 09:07:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="9860163"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa007.jf.intel.com with ESMTP; 05 Mar 2024 09:07:33 -0800
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 9E2CD3818E;
 Tue,  5 Mar 2024 14:47:35 +0000 (GMT)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  5 Mar 2024 09:39:36 -0500
Message-Id: <20240305143942.23757-1-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709658885; x=1741194885;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6zc4B6XoXOREqzJ8dO7/tHHPEVwMnCAGbQLKR9LdAJU=;
 b=OIws5CL7QeHhHeCjDzLjPxOuy81cc6FD7OKyEFEi0WTwgxeUrcAk7USu
 ObQcfww3emNee4sFKC2lb0/FHRK0b/z3FwQYsItGNihdZd/8deM+kHTYi
 2zF1KL2zZrfDujrmiwg7KtFXZ4Y2XD/jdRm2RSIyEUVL3bWgzeu3jK6Os
 XPEJFi0HD9HZFRRan7OLPF5Pr8dsYaOgrKkpdfBJIrlQJCzsTxdDWTBKy
 u2CfpyZYixa/7tdxr/CZ62W/kZIffcoEcqFGgGO9gd3p23z2SiSfNwr47
 YIpXgbi/MUcx6KVNcfk5e8zJkJkYlHzsyHed3z/KY2+ZsbiNkP0tTUoPa
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OIws5CL7
Subject: [Intel-wired-lan] [PATCH iwl-next v6 0/6] ice: Support 5 layer Tx
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

I sent it again to iwl list, because we need to test that change,
devlink change is rather mechanical. @Tony - who should send it to
netdev list after getting Tested-by tag from our Validation?

---
v6:
- extended devlink_param *set pointer to accept one more parameter - extack
- adjusted all drivers that use *set pointer to pass one more parameter
- updated Documentation - changed "reboot" to "PCI slot powercycle", kept Kuba's ACK
- removed "Error: " prefix from NL_SET_ERR_MSG_MOD function in ice_devlink.c
- removed/adjusted messages sent to end user in ice_devlink.c

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
 .../net/ethernet/broadcom/bnxt/bnxt_devlink.c |   6 +-
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  32 +++
 drivers/net/ethernet/intel/ice/ice_common.c   |   5 +
 drivers/net/ethernet/intel/ice/ice_ddp.c      | 199 +++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ddp.h      |   2 +
 drivers/net/ethernet/intel/ice/ice_devlink.c  | 211 ++++++++++++++++--
 .../net/ethernet/intel/ice/ice_fw_update.c    |   7 +-
 .../net/ethernet/intel/ice/ice_fw_update.h    |   3 +
 drivers/net/ethernet/intel/ice/ice_main.c     | 102 +++++++--
 drivers/net/ethernet/intel/ice/ice_nvm.c      |   7 +-
 drivers/net/ethernet/intel/ice/ice_nvm.h      |   3 +
 drivers/net/ethernet/intel/ice/ice_sched.c    |  37 +--
 drivers/net/ethernet/intel/ice/ice_sched.h    |   3 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 drivers/net/ethernet/mellanox/mlx4/main.c     |   6 +-
 .../net/ethernet/mellanox/mlx5/core/eswitch.c |   3 +-
 .../mellanox/mlx5/core/eswitch_offloads.c     |   3 +-
 .../net/ethernet/mellanox/mlx5/core/fs_core.c |   3 +-
 .../ethernet/mellanox/mlx5/core/fw_reset.c    |   3 +-
 .../mellanox/mlxsw/spectrum_acl_tcam.c        |   3 +-
 .../ethernet/netronome/nfp/devlink_param.c    |   3 +-
 drivers/net/ethernet/qlogic/qed/qed_devlink.c |   3 +-
 drivers/net/wwan/iosm/iosm_ipc_devlink.c      |   3 +-
 include/net/devlink.h                         |   3 +-
 include/net/dsa.h                             |   3 +-
 net/devlink/param.c                           |   7 +-
 net/dsa/devlink.c                             |   3 +-
 28 files changed, 627 insertions(+), 84 deletions(-)

-- 
2.38.1

