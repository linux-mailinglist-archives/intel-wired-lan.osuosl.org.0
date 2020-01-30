Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B25EA14E4D0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Jan 2020 22:33:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5904086BC1;
	Thu, 30 Jan 2020 21:33:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6sY5wxH7DAjj; Thu, 30 Jan 2020 21:33:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D92AF86B6F;
	Thu, 30 Jan 2020 21:33:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 33FCA1BF4D6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jan 2020 21:33:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 22F7E86B2C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jan 2020 21:33:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JSJfFNgAM2DM for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Jan 2020 21:33:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 74EF0869FE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jan 2020 21:33:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jan 2020 13:33:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,382,1574150400"; d="scan'208";a="320201438"
Received: from vcostago-desk1.jf.intel.com ([10.54.70.26])
 by fmsmga001.fm.intel.com with ESMTP; 30 Jan 2020 13:33:36 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 30 Jan 2020 13:34:53 -0800
Message-Id: <20200130213455.191163-1-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue PATCH v1 0/2] igc: Add initial TSN
 qdiscs offloading
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

This adds support for offloading taprio (which handles what was
formerly known as Qbv) and ETF (using the LaunchTime feature) to i225.

To try and keep things organized, a new file is added: igc_tsn.c. The
idea is that the more TSN specific code will live here, in the future
this will include frame-preemption support, and CBS (formerly Qav)
support.

The current support has a few limitations:
  - because the BASET registers can only be written once per reset,
    when removing taprio or ETF, we force the NIC to reset;
  - In part because of the above limitation, we don't support changing
    schedules;
  - The way the registers for the schedule are organized, each queue
    can only be opened and closed once per cycle, so some schedules
    provided by the user are going to be rejected by the driver;

Future improvements:
  - When configuring a Qbv cycle, when we detect that a queue would
    stay open for two intervals, we could want to merge them;
  - More testing with taprio and ETF together, when ETF is installed
    under taprio (when using them separately, it works fine);

--
Cheers,

Vinicius Costa Gomes (2):
  igc: Add support for taprio offloading
  igc: Add support for ETF offloading

 drivers/net/ethernet/intel/igc/Makefile      |   2 +-
 drivers/net/ethernet/intel/igc/igc.h         |  10 +
 drivers/net/ethernet/intel/igc/igc_defines.h |  20 ++
 drivers/net/ethernet/intel/igc/igc_main.c    | 183 ++++++++++++++++++-
 drivers/net/ethernet/intel/igc/igc_regs.h    |  12 ++
 drivers/net/ethernet/intel/igc/igc_tsn.c     | 154 ++++++++++++++++
 6 files changed, 377 insertions(+), 4 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/igc/igc_tsn.c

-- 
2.25.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
