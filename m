Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B57344B01
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Mar 2021 17:20:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7FEDD82DF3;
	Mon, 22 Mar 2021 16:19:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iCmI91SKnnVr; Mon, 22 Mar 2021 16:19:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9167E82DDE;
	Mon, 22 Mar 2021 16:19:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2C5301BF319
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Mar 2021 16:19:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 63ABF4037F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Mar 2021 16:19:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RLkzrr_l8ddA for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Mar 2021 16:19:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 91DBB4038C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Mar 2021 16:19:49 +0000 (UTC)
IronPort-SDR: EfNUheRg+tu+JSdWoLqdc+gk2PaARHvybhptFnkUbQv82RGX7KmdBwUkgUbRoLNpQFf1xCcjzf
 K+q6lDSdxIiQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9931"; a="275400825"
X-IronPort-AV: E=Sophos;i="5.81,269,1610438400"; d="scan'208";a="275400825"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2021 09:19:23 -0700
IronPort-SDR: HQ3akpnHPpLHDT7mmhoaVazRlWDreeTdYyLA9dC2UX0DyvS5mBjryokClXhGTKY6YrPNCHFRic
 dUkCadlmTnGw==
X-IronPort-AV: E=Sophos;i="5.81,269,1610438400"; d="scan'208";a="407893515"
Received: from canguven-mobl1.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.255.87.118])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2021 09:19:22 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 22 Mar 2021 09:18:19 -0700
Message-Id: <20210322161822.1546454-1-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH next-queue v3 0/3] igc: Add support for
 PCIe PTM
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
Cc: linux-pci@vger.kernel.org, richardcochran@gmail.com, netdev@vger.kernel.org,
 bhelgaas@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

Changes from v2:
  - Now the PTM timestamps are retrieved synchronously with the
    ioctl();
  - Fixed some typos in constants;
  - The IGC_PTM_STAT register is write-1-to-clear, document this more
    clearly;

Changes from v1:
  - This now should cross compile better, convert_art_ns_to_tsc() will
    only be used if CONFIG_X86_TSC is enabled;
  - PCIe PTM errors reported by the NIC are logged and PTM cycles are
    restarted in case an error is detected;

Original cover letter:

This adds support for PCIe PTM (Precision Time Measurement) to the igc
driver. PCIe PTM allows the NIC and Host clocks to be compared more
precisely, improving the clock synchronization accuracy.

Patch 1/3 reverts a commit that made pci_enable_ptm() private to the
PCI subsystem, reverting makes it possible for it to be called from
the drivers.

Patch 2/3 calls pci_enable_ptm() from the igc driver.

Patch 3/3 implements the PCIe PTM support. It adds a workqueue that
reads the PTM registers periodically and collects the information so a
subsequent call to getcrosststamp() has all the timestamps needed.

Some questions are raised (also pointed out in the commit message):

1. Using convert_art_ns_to_tsc() is too x86 specific, there should be
   a common way to create a 'system_counterval_t' from a timestamp.

2. convert_art_ns_to_tsc() says that it should only be used when
   X86_FEATURE_TSC_KNOWN_FREQ is true, but during tests it works even
   when it returns false. Should that check be done?

Cheers,

Vinicius Costa Gomes (3):
  Revert "PCI: Make pci_enable_ptm() private"
  igc: Enable PCIe PTM
  igc: Add support for PTP getcrosststamp()

 drivers/net/ethernet/intel/igc/igc.h         |   1 +
 drivers/net/ethernet/intel/igc/igc_defines.h |  31 ++++
 drivers/net/ethernet/intel/igc/igc_main.c    |   6 +
 drivers/net/ethernet/intel/igc/igc_ptp.c     | 173 +++++++++++++++++++
 drivers/net/ethernet/intel/igc/igc_regs.h    |  23 +++
 drivers/pci/pci.h                            |   3 -
 include/linux/pci.h                          |   7 +
 7 files changed, 241 insertions(+), 3 deletions(-)

-- 
2.31.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
