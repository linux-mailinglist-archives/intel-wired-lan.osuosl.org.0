Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C71FC10A7BE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Nov 2019 02:04:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 548452263E;
	Wed, 27 Nov 2019 01:04:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EwDjHhC+mzb6; Wed, 27 Nov 2019 01:04:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4BB8121519;
	Wed, 27 Nov 2019 01:04:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E10021BF357
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Nov 2019 01:04:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D8D4487583
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Nov 2019 01:04:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vwH87MgC1EQT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Nov 2019 01:04:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 14F0C8748E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Nov 2019 01:04:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 17:04:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,247,1571727600"; d="scan'208";a="233934667"
Received: from vcostago-desk1.jf.intel.com ([10.54.70.26])
 by fmsmga004.fm.intel.com with ESMTP; 26 Nov 2019 17:04:45 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 26 Nov 2019 17:04:30 -0800
Message-Id: <20191127010435.1733698-1-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue PATCH v2 0/5] igc: Add basic support
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

Changes from v1:
  - Fixed wrong value for IGC_SRRCTL_TIMESTAMP;
  - Added support for retrieving timestamps from PHY (patch 5/5);

Original cover letter (lightly edited):

This adds basic support for Timestamping and enables ptp4l/phc2sys to
work using i225.

To get ptp4l/phc2sys to work we need 2 basic feature sets:
 (1) reading/adjusting the PHC clock;
 (2) enabling/retrieving HW timestamps;

Patch 1/5 adds support for (1), patch 2/5 and 3/5 adds support for (2)
and patch 4/5 implements the ethtool ioctl that ptp4l uses to check
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

Vinicius Costa Gomes (5):
  igc: Add basic skeleton for PTP
  igc: Add support for RX timestamping
  igc: Add support for TX timestamping
  igc: Add support for ethtool GET_TS_INFO command
  igc: Use Start of Packet signal from PHY for timestamping

 drivers/net/ethernet/intel/igc/Makefile      |   2 +-
 drivers/net/ethernet/intel/igc/igc.h         |  45 ++
 drivers/net/ethernet/intel/igc/igc_defines.h |  66 ++
 drivers/net/ethernet/intel/igc/igc_ethtool.c |  34 +
 drivers/net/ethernet/intel/igc/igc_main.c    |  86 +++
 drivers/net/ethernet/intel/igc/igc_ptp.c     | 716 +++++++++++++++++++
 drivers/net/ethernet/intel/igc/igc_regs.h    |  27 +
 7 files changed, 975 insertions(+), 1 deletion(-)
 create mode 100644 drivers/net/ethernet/intel/igc/igc_ptp.c

-- 
2.24.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
