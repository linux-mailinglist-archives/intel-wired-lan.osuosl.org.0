Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CDC53DDBE8
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Aug 2021 17:08:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BBE3C83BE3;
	Mon,  2 Aug 2021 15:08:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s9i7oXTAEapo; Mon,  2 Aug 2021 15:08:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C8D8A83A91;
	Mon,  2 Aug 2021 15:08:21 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1FED71BF35C
 for <intel-wired-lan@osuosl.org>; Mon,  2 Aug 2021 15:07:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0CE4540015
 for <intel-wired-lan@osuosl.org>; Mon,  2 Aug 2021 15:07:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id swcw9PKOa4ky for <intel-wired-lan@osuosl.org>;
 Mon,  2 Aug 2021 15:07:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 356DB403D3
 for <intel-wired-lan@osuosl.org>; Mon,  2 Aug 2021 15:07:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10064"; a="213505732"
X-IronPort-AV: E=Sophos;i="5.84,289,1620716400"; d="scan'208";a="213505732"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2021 08:07:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,289,1620716400"; d="scan'208";a="510254299"
Received: from inlubt0152.iind.intel.com ([10.67.198.206])
 by FMSMGA003.fm.intel.com with ESMTP; 02 Aug 2021 08:07:12 -0700
From: aravindhan.gunasekaran@intel.com
To: intel-wired-lan@osuosl.org
Date: Mon,  2 Aug 2021 20:37:08 +0530
Message-Id: <1627916831-10144-1-git-send-email-aravindhan.gunasekaran@intel.com>
X-Mailer: git-send-email 2.7.4
X-Mailman-Approved-At: Mon, 02 Aug 2021 15:08:17 +0000
Subject: [Intel-wired-lan] [PATCH next-queue v1 0/3] igc: Add support for
 CBS offload
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
Cc: velmurugan.chenniyappan@intel.com, aravindhan.gunasekaran@intel.com,
 mallikarjuna.chilakala@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>

This add support for Credit-based shaper qdisc offload from
Traffic Control system. It enables traffic prioritization and
bandwidth reservation via the Credit-Based Shaper which is
implemented in hardware by i225 controller.

Patch 1/3 adds a default cycle-time for TSN mode to be configured.

Patch 2/3 helps to separate TSN mode programming on the fly and
during reset sequence. It also simplifies handling features flags
for various TSN modes supported by i225 in the driver.

Patch 3/3 adds support for IEEE802.1Qav(CBS) standard
implemented in i225 HW. Two sets of CBS HW shapers are present
in i225 and driver enables them in the two high priority queues.

Aravindhan Gunasekaran (1):
  igc: Add support for CBS offloading

Vinicius Costa Gomes (2):
  igc: Use default cycle 'start' and 'end' values for queues
  igc: Simplify TSN flags handling

 drivers/net/ethernet/intel/igc/igc.h         |  11 ++
 drivers/net/ethernet/intel/igc/igc_defines.h |   8 ++
 drivers/net/ethernet/intel/igc/igc_main.c    | 110 ++++++++++++++---
 drivers/net/ethernet/intel/igc/igc_regs.h    |   3 +
 drivers/net/ethernet/intel/igc/igc_tsn.c     | 174 ++++++++++++++++++++++-----
 drivers/net/ethernet/intel/igc/igc_tsn.h     |   1 +
 6 files changed, 258 insertions(+), 49 deletions(-)

-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
