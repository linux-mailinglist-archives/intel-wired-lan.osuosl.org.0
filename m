Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CA27E400258
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Sep 2021 17:30:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 56CAB61580;
	Fri,  3 Sep 2021 15:30:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pR4ifMM3Jo7d; Fri,  3 Sep 2021 15:30:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4DC6B6156A;
	Fri,  3 Sep 2021 15:30:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 457251BF2EB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Sep 2021 15:30:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 308AD42684
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Sep 2021 15:30:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nyMFHkhD7HPJ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Sep 2021 15:30:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 689C84254C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Sep 2021 15:30:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10096"; a="198992638"
X-IronPort-AV: E=Sophos;i="5.85,265,1624345200"; d="scan'208";a="198992638"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2021 08:30:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,265,1624345200"; d="scan'208";a="500491541"
Received: from unknown (HELO localhost.igk.intel.com) ([10.102.22.231])
 by fmsmga008.fm.intel.com with ESMTP; 03 Sep 2021 08:30:10 -0700
From: Maciej Machnikowski <maciej.machnikowski@intel.com>
To: maciej.machnikowski@intel.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Date: Fri,  3 Sep 2021 17:14:34 +0200
Message-Id: <20210903151436.529478-1-maciej.machnikowski@intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC v4 net-next 0/2] Add RTNL interface for SyncE
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
Cc: abyagowi@fb.com, richardcochran@gmail.com, linux-kselftest@vger.kernel.org,
 kuba@kernel.org, davem@davemloft.net
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

This patch series introduces basic interface for reading the Ethernet
Equipment Clock (EEC) state on a SyncE capable device. This state gives
information about the source of the syntonization signal (ether my port,
or any external one) and the state of EEC. This interface is required\
to implement Synchronization Status Messaging on upper layers.

Next steps:
 - add interface to enable source clocks and get information about them
 - properly return the EEC_SRC_PORT flag depending on the port recovered
   clock being enabled and locked

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

Maciej Machnikowski (2):
  rtnetlink: Add new RTM_GETEECSTATE message to get SyncE status
  ice: add support for reading SyncE DPLL state

 drivers/net/ethernet/intel/ice/ice.h          |  5 ++
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 34 +++++++++
 drivers/net/ethernet/intel/ice/ice_common.c   | 62 ++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_common.h   |  4 ++
 drivers/net/ethernet/intel/ice/ice_devids.h   |  3 +
 drivers/net/ethernet/intel/ice/ice_main.c     | 29 ++++++++
 drivers/net/ethernet/intel/ice/ice_ptp.c      | 35 +++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 44 ++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   | 22 ++++++
 include/linux/netdevice.h                     |  6 ++
 include/uapi/linux/if_link.h                  | 31 ++++++++
 include/uapi/linux/rtnetlink.h                |  3 +
 net/core/rtnetlink.c                          | 71 +++++++++++++++++++
 security/selinux/nlmsgtab.c                   |  3 +-
 14 files changed, 351 insertions(+), 1 deletion(-)

-- 
2.26.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
