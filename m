Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DEED1105E6F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Nov 2019 03:02:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6370287245;
	Fri, 22 Nov 2019 02:02:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GO_A30ljuFpJ; Fri, 22 Nov 2019 02:02:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C925787246;
	Fri, 22 Nov 2019 02:02:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B15121BF33D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Nov 2019 02:02:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id ADA4387251
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Nov 2019 02:02:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jd4MLfVnBuBo for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Nov 2019 02:02:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E7A0C8723E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Nov 2019 02:02:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Nov 2019 18:02:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,228,1571727600"; d="scan'208";a="205264930"
Received: from vcostago-desk1.jf.intel.com ([10.54.70.26])
 by fmsmga008.fm.intel.com with ESMTP; 21 Nov 2019 18:02:30 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 21 Nov 2019 18:02:20 -0800
Message-Id: <20191122020224.1102649-1-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue PATCH v1 0/4] igc: Add basic support
 for Timestamping/PTP
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

This adds basic support for Timestamping and enables ptp4l/phc2sys to
work using i225.

To get ptp4l/phc2sys to work we need 2 basic feature sets:
 (1) reading/adjusting the PHC clock;
 (2) enabling/retrieving HW timestamps;

Patch 1/4 adds support for (1), patch 2/4 and 3/4 adds support for (2)
and patch 4/4 implements the ethtool ioctl that ptp4l uses to check
what timestamping methods are supported.

As most of the functionality is similar to i210, this code uses that
as a base. To keep this short, only the features necessary to make
time synchronization using linuxptp are added.

The most important differences from i210 is that there's now support
for multiple PTP domains, with multiple timestamping registers.

Still aiming to keep this series short, only support for one PTP
domain is added, and also only one of the timestamping registers is
used.

Missing from this series is also support configuring/using the
programmable pins.


Cheers,
--
Vinicius

Vinicius Costa Gomes (4):
  igc: Add basic skeleton for PTP
  igc: Add support for RX timestamping
  igc: Add support for TX timestamping
  igc: Add support for ethtool GET_TS_INFO command

 drivers/net/ethernet/intel/igc/Makefile      |   2 +-
 drivers/net/ethernet/intel/igc/igc.h         |  45 ++
 drivers/net/ethernet/intel/igc/igc_defines.h |  64 ++
 drivers/net/ethernet/intel/igc/igc_ethtool.c |  34 +
 drivers/net/ethernet/intel/igc/igc_main.c    |  86 +++
 drivers/net/ethernet/intel/igc/igc_ptp.c     | 713 +++++++++++++++++++
 drivers/net/ethernet/intel/igc/igc_regs.h    |  27 +
 7 files changed, 970 insertions(+), 1 deletion(-)
 create mode 100644 drivers/net/ethernet/intel/igc/igc_ptp.c

-- 
2.24.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
