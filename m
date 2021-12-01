Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A3A46550F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Dec 2021 19:17:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1C5FB82F19;
	Wed,  1 Dec 2021 18:17:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kzKv8SbxPlZg; Wed,  1 Dec 2021 18:17:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2070A82CDD;
	Wed,  1 Dec 2021 18:17:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0EA6C1BF228
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Dec 2021 18:17:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EF42E40343
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Dec 2021 18:17:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QJzX5NoZLcri for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Dec 2021 18:17:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 233A44014C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Dec 2021 18:17:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="223396650"
X-IronPort-AV: E=Sophos;i="5.87,279,1631602800"; d="scan'208";a="223396650"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 10:17:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,279,1631602800"; d="scan'208";a="460124590"
Received: from unknown (HELO localhost.igk.intel.com) ([10.102.22.231])
 by orsmga006.jf.intel.com with ESMTP; 01 Dec 2021 10:17:02 -0800
From: Maciej Machnikowski <maciej.machnikowski@intel.com>
To: maciej.machnikowski@intel.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, arkadiusz.kubalewski@intel.com
Date: Wed,  1 Dec 2021 19:02:04 +0100
Message-Id: <20211201180208.640179-1-maciej.machnikowski@intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v4 net-next 0/4] Add ethtool interface for
 SyncE
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
 richardcochran@gmail.com, idosch@idosch.org, linux-kselftest@vger.kernel.org,
 kuba@kernel.org, michael.chan@broadcom.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Synchronous Ethernet networks use a physical layer clock to syntonize
the frequency across different network elements.

Basic SyncE node defined in the ITU-T G.8264 consist of an Ethernet
Equipment Clock (EEC) and have the ability to recover synchronization
from the synchronization inputs - either traffic interfaces or external
frequency sources.
The EEC can synchronize its frequency (syntonize) to any of those sources.
It is also able to select synchronization source through priority tables
and synchronization status messaging. It also provides neccessary
filtering and holdover capabilities

This patch series introduces basic interface for reading and configuring
recover clocks on a SyncE capable device

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

Maciej Machnikowski (4):
  ice: add support detecting features based on netlist
  ethtool: Add ability to configure recovered clock for SyncE feature
  ice: add support for monitoring SyncE DPLL state
  ice: add support for SyncE recovered clocks

 Documentation/networking/ethtool-netlink.rst  |  67 +++++
 drivers/net/ethernet/intel/ice/ice.h          |   7 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  70 ++++-
 drivers/net/ethernet/intel/ice/ice_common.c   | 224 +++++++++++++++
 drivers/net/ethernet/intel/ice/ice_common.h   |  20 +-
 drivers/net/ethernet/intel/ice/ice_devids.h   |   3 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  97 +++++++
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
 18 files changed, 935 insertions(+), 4 deletions(-)
 create mode 100644 net/ethtool/synce.c

-- 
2.26.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
