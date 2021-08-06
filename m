Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C2FC03E2820
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Aug 2021 12:09:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3A07B83B0E;
	Fri,  6 Aug 2021 10:09:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Sg1zUSzRCC58; Fri,  6 Aug 2021 10:09:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5BEAA83B04;
	Fri,  6 Aug 2021 10:09:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4B0511BF391
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 10:09:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 381294010A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 10:09:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mlFJsMSYPj0n for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Aug 2021 10:09:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 12FD9400CA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 10:09:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10067"; a="275388499"
X-IronPort-AV: E=Sophos;i="5.84,300,1620716400"; d="scan'208";a="275388499"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2021 03:09:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,300,1620716400"; d="scan'208";a="513338510"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by FMSMGA003.fm.intel.com with ESMTP; 06 Aug 2021 03:08:58 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  6 Aug 2021 11:55:33 +0200
Message-Id: <20210806095539.34423-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v4 intel-next 0/6] XDP_TX improvements for
 ice
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
Cc: joamaki@gmail.com, alexandr.lobakin@intel.com, netdev@vger.kernel.org,
 toke@redhat.com, bjorn@kernel.org, kuba@kernel.org, bpf@vger.kernel.org,
 davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

it's been a while. Here's another revision of XDP_TX improvements for
ice. This time I decided to split the generic ring struct that was
serving both Tx and Rx sides onto separate entities. It is due to the
fact that this set introduces few Tx specific fields onto ring.

Also, when compared to v2, Xdp ring is propagated onto Rx ring.
Accessing vsi->xdp_rings array, especially in fallback path, is not
convenient.

This v4 fixes the compile issue reported by lkp.

Finally patch 5 introduces yet another cleaning logic, different from
v2. For more info please see commit messages.

Thanks!
Maciej

v3 : https://lore.kernel.org/bpf/20210805230046.28715-1-maciej.fijalkowski@intel.com/
v2 : https://lore.kernel.org/bpf/20210705164338.58313-1-maciej.fijalkowski@intel.com/
v1 : https://lore.kernel.org/bpf/20210601113236.42651-1-maciej.fijalkowski@intel.com/


Maciej Fijalkowski (6):
  ice: split ice_ring onto Tx/Rx separate structs
  ice: unify xdp_rings accesses
  ice: do not create xdp_frame on XDP_TX
  ice: propagate xdp_ring onto rx_ring
  ice: optimize XDP_TX workloads
  ice: introduce XDP_TX fallback path

 drivers/net/ethernet/intel/ice/ice.h          |  30 +++-
 drivers/net/ethernet/intel/ice/ice_base.c     |  27 ++--
 drivers/net/ethernet/intel/ice/ice_base.h     |   6 +-
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |   5 +-
 drivers/net/ethernet/intel/ice/ice_dcb_lib.h  |  10 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  17 ++-
 drivers/net/ethernet/intel/ice/ice_lib.c      |  32 ++--
 drivers/net/ethernet/intel/ice/ice_lib.h      |   4 +-
 drivers/net/ethernet/intel/ice/ice_main.c     | 101 +++++++++----
 drivers/net/ethernet/intel/ice/ice_trace.h    |   8 +-
 drivers/net/ethernet/intel/ice/ice_txrx.c     | 139 +++++++++++-------
 drivers/net/ethernet/intel/ice/ice_txrx.h     |  94 +++++++-----
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  86 +++++++++--
 drivers/net/ethernet/intel/ice/ice_txrx_lib.h |   8 +-
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |   2 +-
 drivers/net/ethernet/intel/ice/ice_xsk.c      |  52 ++++---
 drivers/net/ethernet/intel/ice/ice_xsk.h      |   8 +-
 17 files changed, 410 insertions(+), 219 deletions(-)

-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
