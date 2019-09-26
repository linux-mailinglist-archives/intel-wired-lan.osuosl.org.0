Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 25EAFBEA97
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Sep 2019 04:28:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3FD8186027;
	Thu, 26 Sep 2019 02:28:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cBWam2eTVqf1; Thu, 26 Sep 2019 02:28:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BF09085FDE;
	Thu, 26 Sep 2019 02:28:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E5A461BF354
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Sep 2019 02:28:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D2360867EC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Sep 2019 02:28:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hmj8WdWQm5XP for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Sep 2019 02:28:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D745786745
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Sep 2019 02:28:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Sep 2019 19:28:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,550,1559545200"; d="scan'208";a="183469400"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.244.172])
 by orsmga008.jf.intel.com with ESMTP; 25 Sep 2019 19:28:24 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: netdev@vger.kernel.org
Date: Wed, 25 Sep 2019 19:28:18 -0700
Message-Id: <20190926022820.7900-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.23.0.245.gf157bbb9169d
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next v2 0/2] new PTP ioctl fixes
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
Cc: Christopher Hall <christopher.s.hall@intel.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

I noticed recently that Filip added new versions of the PTP ioctls which
correctly honor the reserved fields (making it so that we can safely extend
them in the future).

Unfortunately, this breaks the old ioctls for a couple of reasons. First,
the flags for the old ioctls get cleared. This means that the external
timestamp request can never be enabled. Further, it means future new flags
will *not* be cleared, and thus old ioctl will potentially send non-zero
data and be mis-interpreted.

Additionally, new flags are not protected against in-driver, because no
current driver verifies that the flags are only one of the supported ones.
This means new flags will be mis-interpreted by the drivers.

This series provides patches to fix drivers to verify and reject unsupported
flags, as well as to fix the ioctls to clear flags on the old version of the
ioctl properly.

Cc: Richard Cochran <richardcochran@gmail.com>
Cc: Felipe Balbi <felipe.balbi@linux.intel.com>
Cc: David S. Miller <davem@davemloft.net>
Cc: Christopher Hall <christopher.s.hall@intel.com>

Range-diff from v1:
1:  c317dc1cc7eb = 1:  c317dc1cc7eb ptp: correctly disable flags on old ioctls
2:  08ce725c7f2a ! 2:  5537762fb9cc net: reject ptp requests with unsupported flags
    @@ drivers/net/phy/dp83640.c: static int ptp_dp83640_enable(struct ptp_clock_info *
      	switch (rq->type) {
      	case PTP_CLK_REQ_EXTTS:
     +		/* Reject requests with unsupported flags */
    -+		if (rq->extts.flags & ~(PTP_FEATURE_ENABLE |
    ++		if (rq->extts.flags & ~(PTP_ENABLE_FEATURE |
     +					PTP_RISING_EDGE |
     +					PTP_FALLING_EDGE))
     +			return -EOPNOTSUPP;

Jacob Keller (2):
  ptp: correctly disable flags on old ioctls
  net: reject ptp requests with unsupported flags

 drivers/net/dsa/mv88e6xxx/ptp.c               |  5 +++++
 drivers/net/ethernet/broadcom/tg3.c           |  4 ++++
 drivers/net/ethernet/intel/igb/igb_ptp.c      |  8 +++++++
 .../ethernet/mellanox/mlx5/core/lib/clock.c   | 10 +++++++++
 drivers/net/ethernet/microchip/lan743x_ptp.c  |  4 ++++
 drivers/net/ethernet/renesas/ravb_ptp.c       |  9 ++++++++
 .../net/ethernet/stmicro/stmmac/stmmac_ptp.c  |  4 ++++
 drivers/net/phy/dp83640.c                     |  8 +++++++
 drivers/ptp/ptp_chardev.c                     |  4 ++--
 include/uapi/linux/ptp_clock.h                | 22 +++++++++++++++++++
 10 files changed, 76 insertions(+), 2 deletions(-)

-- 
2.23.0.245.gf157bbb9169d

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
