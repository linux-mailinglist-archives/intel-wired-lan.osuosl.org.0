Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E8D39C457
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Jun 2021 02:24:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9628041578;
	Sat,  5 Jun 2021 00:24:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Und9w7XzjgX6; Sat,  5 Jun 2021 00:24:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1330041579;
	Sat,  5 Jun 2021 00:24:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 18EC51BF4E2
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Jun 2021 00:24:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 00CE340389
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Jun 2021 00:24:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O8-6phfDlp3o for <intel-wired-lan@lists.osuosl.org>;
 Sat,  5 Jun 2021 00:24:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3ED7D40278
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Jun 2021 00:24:10 +0000 (UTC)
IronPort-SDR: u8HQMvoVsQZ4UF4o1LLqxbIvAHGHS+F/jm/x2CC2ljvzhpvFOLG4HClTpDlM2/XqtgtAO2/pUX
 ICdNVnlPO1Sg==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="290021939"
X-IronPort-AV: E=Sophos;i="5.83,249,1616482800"; d="scan'208";a="290021939"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 17:24:08 -0700
IronPort-SDR: FurWPIQxgq+h1KVjINEEeAORtwNZTNm5b4+wsUr+gf9BZXei9zI4xA3yO4L19WrJqN67SOWI4G
 tNyjMNDDLv7Q==
X-IronPort-AV: E=Sophos;i="5.83,249,1616482800"; d="scan'208";a="446862943"
Received: from lmrivera-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.251.24.65])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 17:24:08 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  4 Jun 2021 17:23:52 -0700
Message-Id: <20210605002356.3996853-1-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH next-queue v5 0/4] igc: Add support for
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
Cc: linux-pci@vger.kernel.org, richardcochran@gmail.com, hch@infradead.org,
 netdev@vger.kernel.org, bhelgaas@google.com, helgaas@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

Changes from v4:
  - Improved commit messages (Bjorn Helgaas);

Changes from v3:
  - More descriptive commit messages and comments (Bjorn Helgaas);
  - Added a pcie_ptm_enabled() helper (Bjorn Helgaas);

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

Original cover letter (lightly edited):

This adds support for PCIe PTM (Precision Time Measurement) to the igc
driver. PCIe PTM allows the NIC and Host clocks to be compared more
precisely, improving the clock synchronization accuracy.

Patch 1/4 reverts a commit that made pci_enable_ptm() private to the
PCI subsystem, reverting makes it possible for it to be called from
the drivers.

Patch 2/4 adds the pcie_ptm_enabled() helper.

Patch 3/4 calls pci_enable_ptm() from the igc driver.

Patch 4/4 implements the PCIe PTM support. It adds a workqueue that
reads the PTM registers periodically and collects the information so a
subsequent call to getcrosststamp() has all the timestamps needed.

Some questions are raised (also pointed out in the commit message):

1. Using convert_art_ns_to_tsc() is too x86 specific, there should be
   a common way to create a 'system_counterval_t' from a timestamp.

2. convert_art_ns_to_tsc() says that it should only be used when
   X86_FEATURE_TSC_KNOWN_FREQ is true, but during tests it works even
   when it returns false. Should that check be done?

Cheers,

Vinicius Costa Gomes (4):
  Revert "PCI: Make pci_enable_ptm() private"
  PCI: Add pcie_ptm_enabled()
  igc: Enable PCIe PTM
  igc: Add support for PTP getcrosststamp()

 drivers/net/ethernet/intel/igc/igc.h         |   1 +
 drivers/net/ethernet/intel/igc/igc_defines.h |  31 ++++
 drivers/net/ethernet/intel/igc/igc_main.c    |   6 +
 drivers/net/ethernet/intel/igc/igc_ptp.c     | 182 +++++++++++++++++++
 drivers/net/ethernet/intel/igc/igc_regs.h    |  23 +++
 drivers/pci/pci.h                            |   3 -
 drivers/pci/pcie/ptm.c                       |   9 +
 include/linux/pci.h                          |  10 +
 8 files changed, 262 insertions(+), 3 deletions(-)

-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
