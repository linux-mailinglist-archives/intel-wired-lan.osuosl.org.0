Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 681913A38F0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Jun 2021 02:40:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 11750406AC;
	Fri, 11 Jun 2021 00:40:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pZQq_qfnJKIX; Fri, 11 Jun 2021 00:40:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0918840695;
	Fri, 11 Jun 2021 00:40:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E875E1C1178
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jun 2021 00:40:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 40497830E3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jun 2021 00:40:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wHgUcvv7sSyw for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Jun 2021 00:40:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7CAD0830B8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jun 2021 00:40:16 +0000 (UTC)
IronPort-SDR: J1uRIQlUOEqYGoDA3z1UJcGnb9Hd2EMBNsZTqWUaG5cNKW0ggaP3TZuTEzryiZf8fTyYZ6qXbJ
 j4eq7Sag+gwQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="205397132"
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="205397132"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 17:40:12 -0700
IronPort-SDR: 1tLDfeJ5sukc8QJ5axM6xmgVruVbNDuVOCUwK5d0ncuBoJOks8hV2wcWX5XKTl+iKJI4/7Zfei
 Mt6v5niV+XKg==
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="448932896"
Received: from caclark-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.212.156.65])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 17:40:12 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 10 Jun 2021 17:39:19 -0700
Message-Id: <20210611003924.492853-1-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH next-queue v1 0/5] igc: Add support for RX
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
 drivers/net/ethernet/intel/igc/igc_main.c    | 450 ++++++++++++++++++-
 drivers/net/ethernet/intel/igc/igc_regs.h    |  19 +
 6 files changed, 597 insertions(+), 24 deletions(-)

-- 
2.32.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
