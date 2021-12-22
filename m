Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A608D47D572
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Dec 2021 17:55:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 287D260FCE;
	Wed, 22 Dec 2021 16:55:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DbfUKZiEUTKT; Wed, 22 Dec 2021 16:55:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1427360E6F;
	Wed, 22 Dec 2021 16:55:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C1A391BF3D2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 16:55:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ABF9782CCA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 16:55:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VtlMqUJBww4s for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Dec 2021 16:55:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EAA0082C89
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 16:55:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640192121; x=1671728121;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2r5w7nqb1bcFqkZUjfTZWm4iuC1IJSP0qx+HAYi18vw=;
 b=Zfc5f/8oPThDEWt3MoxaZGQI7XfiljSmjm3A7OklDnSdEmhDIhZjtDPZ
 ZUtYsEtL1E1tTta3uGGJ8oYR/quu78ZS13kCFHleaAaY+CGNkQoyQaFuK
 GeyJTa40xxZuQDUKOBuAXxyJM+hb8Jmh4WJvqUyNV8suwm+J5azY+egO1
 FW5k7ddNaRCPLtJonKD+UM5+KrFufEbXBNKhjFfOcnK9szyBNeQu8BPIp
 f47eqGwQcJTOk/GSZK3Zbysq1gqlKYs33Ckq++gUHA/DYKHhwLjneg5Jy
 ifiIPlgt6m56UvGsja0tNyFuOuoi5juSamLCHCJB8lws1R2sh6YYE4kZU w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10206"; a="304028590"
X-IronPort-AV: E=Sophos;i="5.88,227,1635231600"; d="scan'208";a="304028590"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2021 08:55:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,227,1635231600"; d="scan'208";a="468230211"
Received: from lajkonik.igk.intel.com ([10.211.8.72])
 by orsmga006.jf.intel.com with ESMTP; 22 Dec 2021 08:55:17 -0800
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: maciej.machnikowski@intel.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Date: Wed, 22 Dec 2021 11:39:49 -0500
Message-Id: <20211222163952.413183-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v6 net-next 0/4] Add ethtool interface for
 RClocks
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
Cc: mkubecek@suse.cz, petrm@nvidia.com, abyagowi@fb.com, saeed@kernel.org,
 richardcochran@gmail.com, vfedorenko@novek.ru, idosch@idosch.org,
 linux-kselftest@vger.kernel.org, kuba@kernel.org, michael.chan@broadcom.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Synchronous Ethernet networks use a physical layer clock to syntonize
the frequency across different network elements.

Basic SyncE node defined in the ITU-T G.8264 consist of an Ethernet
Equipment Clock (EEC) and have the ability to synchronize to reference
frequency sources.

This patch series is a prerequisite for EEC object and adds ability
to enable recovered clocks in the physical layer of the netdev object.
Recovered clocks can be used as one of the reference signal by the EEC.

Further work is required to add the DPLL subsystem, link it to the
netdev object and create API to read the EEC DPLL state.

v6:
- adapt to removal of 'enum ice_status' in net-next

v5:
- rewritten the documentation
- fixed doxygen headers

v4:
- Dropped EEC_STATE reporting (TBD: DPLL subsystem)
- moved recovered clock configuration to ethtool netlink

v3:
- remove RTM_GETRCLKRANGE
- return state of all possible pins in the RTM_GETRCLKSTATE
- clarify documentation

v2:
- improved documentation
- fixed kdoc warning

RFC history:
v2:
- removed whitespace changes
- fix issues reported by test robot
v3:
- Changed naming from SyncE to EEC
- Clarify cover letter and commit message for patch 1
v4:
- Removed sync_source and pin_idx info
- Changed one structure to attributes
- Added EEC_SRC_PORT flag to indicate that the EEC is synchronized
  to the recovered clock of a port that returns the state
v5:
- add EEC source as an optiona attribute
- implement support for recovered clocks
- align states returned by EEC to ITU-T G.781
v6:
- fix EEC clock state reporting
- add documentation
- fix descriptions in code comments

Arkadiusz Kubalewski (4):
  ice: add support detecting features based on netlist
  ethtool: Add ability to configure recovered clock for SyncE feature
  ice: add support for monitoring SyncE DPLL state
  ice: add support for recovered clocks

 Documentation/networking/ethtool-netlink.rst  |  62 ++++
 drivers/net/ethernet/intel/ice/ice.h          |   7 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  70 ++++-
 drivers/net/ethernet/intel/ice/ice_common.c   | 224 +++++++++++++++
 drivers/net/ethernet/intel/ice/ice_common.h   |  20 ++
 drivers/net/ethernet/intel/ice/ice_devids.h   |   3 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  96 +++++++
 drivers/net/ethernet/intel/ice/ice_lib.c      |   6 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c      |  35 +++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |  49 ++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  36 +++
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 include/linux/ethtool.h                       |   9 +
 include/uapi/linux/ethtool_netlink.h          |  21 ++
 net/ethtool/Makefile                          |   3 +-
 net/ethtool/netlink.c                         |  20 ++
 net/ethtool/netlink.h                         |   4 +
 net/ethtool/synce.c                           | 267 ++++++++++++++++++
 18 files changed, 930 insertions(+), 3 deletions(-)
 create mode 100644 net/ethtool/synce.c

-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
