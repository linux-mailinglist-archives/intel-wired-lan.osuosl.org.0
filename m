Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB593B6DB8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Jun 2021 06:43:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8DF1D834AE;
	Tue, 29 Jun 2021 04:43:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9VHqjHySFaZG; Tue, 29 Jun 2021 04:43:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BA68983495;
	Tue, 29 Jun 2021 04:43:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A20061BF30A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 04:43:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8F42A60790
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 04:43:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z1k0deByr7jI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Jun 2021 04:43:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3B4256005E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 04:43:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10029"; a="207900741"
X-IronPort-AV: E=Sophos;i="5.83,307,1616482800"; d="scan'208";a="207900741"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2021 21:43:46 -0700
X-IronPort-AV: E=Sophos;i="5.83,307,1616482800"; d="scan'208";a="446881843"
Received: from twilli3-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.251.12.190])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2021 21:43:45 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 28 Jun 2021 21:43:27 -0700
Message-Id: <20210629044332.3491232-1-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH next-queue v2 0/5] igc: Add support for RX
 Flex Filters
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
Cc: kurt@linutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

Changes from v1:
 - Fixed warnings related to invalid endianness conversions (Tony Nguyen);
 - Added some examples for using the exposed LEDs (Paul Menzel);

Add support for steering traffic to specific RX queues using Flex Filters.

As the name implies, Flex Filters are more flexible than using
Layer-2, VLAN or MAC address filters, one of the reasons is that they
allow "AND" operations more easily, e.g. when the user wants to steer
some traffic based on the source MAC address and the packet ethertype.

Future work include adding support for offloading tc-u32 filters to
the hardware.

The series is divided as follows:

Patch 1/5, add the low level primitives for configuring Flex filters.

Patch 2/5 and 3/5, allow ethtool to manage Flex filters.

Patch 4/5, when specifying filters that have multiple predicates, use Flex filters.

Patch 5/5, Adds support for exposing the i225 LEDs using the LED subsystem.

Cheers,


Kurt Kanzenbach (4):
  igc: Add possibility to add flex filter
  igc: Integrate flex filter into ethtool ops
  igc: Make flex filter more flexible
  igc: Export LEDs

Vinicius Costa Gomes (1):
  igc: Allow for Flex Filters to be installed

 drivers/net/ethernet/intel/Kconfig           |   1 +
 drivers/net/ethernet/intel/igc/igc.h         |  48 +-
 drivers/net/ethernet/intel/igc/igc_defines.h |  62 ++-
 drivers/net/ethernet/intel/igc/igc_ethtool.c |  41 +-
 drivers/net/ethernet/intel/igc/igc_main.c    | 448 ++++++++++++++++++-
 drivers/net/ethernet/intel/igc/igc_regs.h    |  19 +
 6 files changed, 595 insertions(+), 24 deletions(-)

-- 
2.32.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
