Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7671BF8DE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Sep 2019 20:11:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 431BB87E79;
	Thu, 26 Sep 2019 18:11:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JwoQwM7ZNzJz; Thu, 26 Sep 2019 18:11:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D248B87E90;
	Thu, 26 Sep 2019 18:11:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 998591BF336
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Sep 2019 18:11:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 94738861B2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Sep 2019 18:11:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Sve2pIu0y8go for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Sep 2019 18:11:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F3F3581A2B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Sep 2019 18:11:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Sep 2019 11:11:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,552,1559545200"; d="scan'208";a="364882870"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.244.172])
 by orsmga005.jf.intel.com with ESMTP; 26 Sep 2019 11:11:17 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: netdev@vger.kernel.org
Date: Thu, 26 Sep 2019 11:11:02 -0700
Message-Id: <20190926181109.4871-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.23.0.245.gf157bbb9169d
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next v3 0/7] new PTP ioctl fixes
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
Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series contains patches to fix the various drivers which implemented
external pin input/output support. The drivers did not explicitly reject
unknown/unsupported flags.

Changes since v2:
* Split the external timestamp changes to separate patches per-driver
* Change the check for external timestamp flags to always accept all three
  current flags.
* Add cc for authors of the PTP support, hopefully receiving feedback

Jacob Keller (7):
  ptp: correctly disable flags on old ioctls
  net: reject PTP periodic output requests with unsupported flags
  mv88e6xxx: reject unsupported external timestamp flags
  dp83640: reject unsupported external timestamp flags
  igb: reject unsupported external timestamp flags
  mlx5: reject unsupported external timestamp flags
  renesas: reject unsupported external timestamp flags

 drivers/net/dsa/mv88e6xxx/ptp.c               |  6 +++++
 drivers/net/ethernet/broadcom/tg3.c           |  4 ++++
 drivers/net/ethernet/intel/igb/igb_ptp.c      | 10 +++++++++
 .../ethernet/mellanox/mlx5/core/lib/clock.c   | 10 +++++++++
 drivers/net/ethernet/microchip/lan743x_ptp.c  |  4 ++++
 drivers/net/ethernet/renesas/ravb_ptp.c       | 10 +++++++++
 .../net/ethernet/stmicro/stmmac/stmmac_ptp.c  |  4 ++++
 drivers/net/phy/dp83640.c                     |  8 +++++++
 drivers/ptp/ptp_chardev.c                     |  4 ++--
 include/uapi/linux/ptp_clock.h                | 22 +++++++++++++++++++
 10 files changed, 80 insertions(+), 2 deletions(-)

-- 
2.23.0.245.gf157bbb9169d

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
