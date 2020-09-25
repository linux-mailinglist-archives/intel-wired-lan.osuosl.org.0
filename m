Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0167E2794C5
	for <lists+intel-wired-lan@lfdr.de>; Sat, 26 Sep 2020 01:29:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2B63587695;
	Fri, 25 Sep 2020 23:29:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UdV7VB8FamD5; Fri, 25 Sep 2020 23:29:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7391D87692;
	Fri, 25 Sep 2020 23:29:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5658F1BF263
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Sep 2020 23:29:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5308F869ED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Sep 2020 23:29:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qwyx7yzOWezH for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Sep 2020 23:29:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2E044869F7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Sep 2020 23:29:20 +0000 (UTC)
IronPort-SDR: +o49gUNjQl1i/KxlirQyDLfsPSYYhHaWJU13AkmaBNoV32ue9dBKPlc5PVwUwAPTkX1snn8h0B
 YnptvY8WTYww==
X-IronPort-AV: E=McAfee;i="6000,8403,9755"; a="159066502"
X-IronPort-AV: E=Sophos;i="5.77,303,1596524400"; d="scan'208";a="159066502"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2020 16:29:19 -0700
IronPort-SDR: jJ/NDNiHHHcVPeOAku2Bzx5ELAK98P6o2haesSwEk2mePU/i3grj4VErFEwP+6WEedbY8cYQkU
 i3Q883OEFmKA==
X-IronPort-AV: E=Sophos;i="5.77,303,1596524400"; d="scan'208";a="337051730"
Received: from msbergin-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.212.110.90])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2020 16:29:15 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 25 Sep 2020 16:28:31 -0700
Message-Id: <20200925232834.2704711-1-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH next-queue v1 0/3] igc: Add support for
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
Cc: andre.guedes@intel.com, linux-pci@vger.kernel.org, netdev@vger.kernel.org,
 bhelgaas@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

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

 drivers/net/ethernet/intel/igc/igc.h         |   7 +
 drivers/net/ethernet/intel/igc/igc_defines.h |  22 +++
 drivers/net/ethernet/intel/igc/igc_main.c    |   7 +
 drivers/net/ethernet/intel/igc/igc_ptp.c     | 166 +++++++++++++++++++
 drivers/net/ethernet/intel/igc/igc_regs.h    |  23 +++
 drivers/pci/pci.h                            |   3 -
 include/linux/pci.h                          |   7 +
 7 files changed, 232 insertions(+), 3 deletions(-)

-- 
2.28.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
