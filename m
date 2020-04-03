Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A86E919DDBF
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Apr 2020 20:18:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 431F78784C;
	Fri,  3 Apr 2020 18:18:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KT5NgEJ5Kuye; Fri,  3 Apr 2020 18:18:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 45DC28695F;
	Fri,  3 Apr 2020 18:18:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7F16A1BF397
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2020 18:18:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EE9CD20390
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2020 18:18:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aklOgNsZhEQG for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Apr 2020 18:18:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by silver.osuosl.org (Postfix) with ESMTPS id 9F3D32039A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2020 18:18:33 +0000 (UTC)
IronPort-SDR: Kn1JtiMwBcZrpojhgld2V7M73eF42Q5LmkXaFn+uX6PVCUI6VQqb5DNOI7UmU3O9qMW/hx6Bj0
 tFoK3jRqlUbw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2020 11:18:32 -0700
IronPort-SDR: NAWhIvZpb6eoNB3Loor3AEAzsIP4zGaxv1mx8kCGgeioLOZl4fKF0VOGp1BShSozW5nqe6CCF4
 0Z+FV0HBP/Cg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,340,1580803200"; d="scan'208";a="253445194"
Received: from unknown (HELO localhost.localdomain) ([10.254.70.217])
 by orsmga006.jf.intel.com with ESMTP; 03 Apr 2020 11:18:32 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  3 Apr 2020 11:17:39 -0700
Message-Id: <20200403181743.23447-1-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 0/4] igc: Fixes for VLAN priority
 filtering code
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

This patch series provides some fixes and improvements to the VLAN
priority filtering code from IGC driver.

The improvements focuses on aligning the code organization to follow
the same rationale from MAC address filtering code, splitting ethtool
and core logic between igc_ethtool.c and igc_main.c. It also adds some
log messages to help debugging the code.

Best regards,

Andre

Andre Guedes (4):
  igc: Rename IGC_VLAPQF macro
  igc: Dump VLANPQF register
  igc: Return -EOPNOTSUPP when VLAN mask doesn't match
  igc: Refactor VLAN priority filtering code

 drivers/net/ethernet/intel/igc/igc.h         |  3 +
 drivers/net/ethernet/intel/igc/igc_defines.h |  6 +-
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 70 +++++---------------
 drivers/net/ethernet/intel/igc/igc_main.c    | 52 +++++++++++++++
 drivers/net/ethernet/intel/igc/igc_regs.h    |  2 +-
 5 files changed, 76 insertions(+), 57 deletions(-)

-- 
2.26.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
