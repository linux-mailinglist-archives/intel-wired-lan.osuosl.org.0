Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 617512CB411
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Dec 2020 05:54:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0FBBC2E1ED;
	Wed,  2 Dec 2020 04:54:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N1RFgIMFNV0r; Wed,  2 Dec 2020 04:54:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 804A32E1F9;
	Wed,  2 Dec 2020 04:53:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BC05C1BF30A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 04:53:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B72D02E1ED
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 04:53:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DOs770De1gHE for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Dec 2020 04:53:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id E70AA2E1F1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 04:53:50 +0000 (UTC)
IronPort-SDR: OEN8xi42et0FPPgtqWOY5i5aVCfx86Lq100N/hLu7pZWnHqYnnm+nvxNzw7jYs49FPaoeGmMgS
 emcNC0ew+hJg==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="234558814"
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="234558814"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 20:53:47 -0800
IronPort-SDR: QD3nCDN9+K7fqN39slVDNSPnW0LqPPLlHrVmeGUMx4eNvQArWuXCwJKHFx/EO9NOAfaGM1jNTU
 zHd6AKhF7m5g==
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="549888358"
Received: from shivanif-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.212.152.222])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 20:53:47 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: netdev@vger.kernel.org
Date: Tue,  1 Dec 2020 20:53:16 -0800
Message-Id: <20201202045325.3254757-1-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 0/9] ethtool: Add support for
 frame preemption
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
Cc: Jose.Abreu@synopsys.com, jiri@resnulli.us, vladimir.oltean@nxp.com,
 po.liu@nxp.com, jhs@mojatatu.com, m-karicheri2@ti.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, xiyou.wangcong@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

Changes from RFC v2:
 - Reorganised the offload enabling/disabling on the driver size;
 - Added a few igc fixes;
 
Changes from RFC v1:
 - The per-queue preemptible/express setting is moved to applicable
   qdiscs (Jakub Kicinski and others);
 - "min-frag-size" now follows the 802.3br specification more closely,
   it's expressed as X in '64(1 + X) + 4' (Joergen Andreasen);

Another point that should be noted is the addition of the
TC_SETUP_PREEMPT offload type, the idea behind this is to allow other
qdiscs (was thinking of mqprio) to also configure which queues should
be marked as express/preemptible.

Original cover letter:

This is still an RFC because two main reasons, I want to confirm that
this approach (per-queue settings via qdiscs, device settings via
ethtool) looks good, even though there aren't much more options left ;-)
The other reason is that while testing this I found some weirdness
in the driver that I would need a bit more time to investigate.

(In case these patches are not enough to give an idea of how things
work, I can send the userspace patches, of course.)

The idea of this "hybrid" approach is that applications/users would do
the following steps to configure frame preemption:

$ tc qdisc replace dev $IFACE parent root handle 100 taprio \
      num_tc 3 \
      map 2 2 1 0 2 2 2 2 2 2 2 2 2 2 2 2 \
      queues 1@0 1@1 2@2 \
      base-time $BASE_TIME \
      sched-entry S 0f 10000000 \
      preempt 1110 \
      flags 0x2 

The "preempt" parameter is the only difference, it configures which
queues are marked as preemptible, in this example, queue 0 is marked
as "not preemptible", so it is express, the rest of the four queues
are preemptible.

The next step, of this example, would be to enable frame preemption in
the device, via ethtool, and set the minimum fragment size to 2:

$ sudo ./ethtool --set-frame-preemption $IFACE fp on min-frag-size 2


Cheers,


Vinicius Costa Gomes (9):
  ethtool: Add support for configuring frame preemption
  taprio: Add support for frame preemption offload
  igc: Set the RX packet buffer size for TSN mode
  igc: Only dump registers if configured to dump HW information
  igc: Avoid TX Hangs because long cycles
  igc: Add support for tuning frame preemption via ethtool
  igc: Add support for Frame Preemption offload
  igc: Add support for exposing frame preemption stats registers
  igc: Separate TSN configurations that can be updated

 drivers/net/ethernet/intel/igc/igc.h         |  10 ++
 drivers/net/ethernet/intel/igc/igc_defines.h |   6 +
 drivers/net/ethernet/intel/igc/igc_dump.c    |   3 +
 drivers/net/ethernet/intel/igc/igc_ethtool.c |  63 ++++++++
 drivers/net/ethernet/intel/igc/igc_main.c    |  31 +++-
 drivers/net/ethernet/intel/igc/igc_regs.h    |  10 ++
 drivers/net/ethernet/intel/igc/igc_tsn.c     | 158 ++++++++++++++-----
 drivers/net/ethernet/intel/igc/igc_tsn.h     |   1 +
 include/linux/ethtool.h                      |  19 +++
 include/linux/netdevice.h                    |   1 +
 include/net/pkt_sched.h                      |   4 +
 include/uapi/linux/ethtool_netlink.h         |  17 ++
 include/uapi/linux/pkt_sched.h               |   1 +
 net/ethtool/Makefile                         |   2 +-
 net/ethtool/netlink.c                        |  19 +++
 net/ethtool/netlink.h                        |   4 +
 net/ethtool/preempt.c                        | 151 ++++++++++++++++++
 net/sched/sch_taprio.c                       |  41 ++++-
 18 files changed, 491 insertions(+), 50 deletions(-)
 create mode 100644 net/ethtool/preempt.c

-- 
2.29.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
