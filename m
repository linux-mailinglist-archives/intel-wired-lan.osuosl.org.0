Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A3A5C3C2AB7
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Jul 2021 23:07:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D865542464;
	Fri,  9 Jul 2021 21:07:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xbt24T4Ua45P; Fri,  9 Jul 2021 21:07:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A706742463;
	Fri,  9 Jul 2021 21:07:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 639D11BF29E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jul 2021 21:07:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 59E9582CD4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jul 2021 21:07:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fKyFiJLavRCw for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Jul 2021 21:07:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0D37C82C9C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jul 2021 21:07:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10040"; a="207954143"
X-IronPort-AV: E=Sophos;i="5.84,227,1620716400"; d="scan'208";a="207954143"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2021 14:07:37 -0700
X-IronPort-AV: E=Sophos;i="5.84,227,1620716400"; d="scan'208";a="647189192"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.4])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2021 14:07:36 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Fri,  9 Jul 2021 14:07:26 -0700
Message-Id: <20210709210726.224848-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.31.1.331.gb0c09ab8796f
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] ice: fix build issue if
 CONFIG_1588_PTP_CLOCk=m
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

If the CONFIG_1588_PTP_CLOCK symbol is set to m, then the driver will
not compile ice_ptp.o and ice_ptp_hw.o because it adds them to ice-m
instead of ice-y, and nothing includes ice-m into the final kernel
objects.

Fix this by using the ':m=y' so that we always compile the files and
link them to ice.o when CONFIG_1588_PTP_CLOCK is a module or a builtin.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
This fixes the compilation errors that have appeared from lkp on Tony's
dev-queue. The lkp complains about other patches, but the root cause is this
issue. If we apply this, it should fix all of the lkp issues I've seen so
far.

 drivers/net/ethernet/intel/ice/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 1866be50095d..928572dfb3c2 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -30,7 +30,7 @@ ice-y := ice_main.o	\
 	 ice_repr.o
 ice-$(CONFIG_PCI_IOV) += ice_virtchnl_allowlist.o
 ice-$(CONFIG_PCI_IOV) += ice_virtchnl_pf.o ice_sriov.o ice_virtchnl_fdir.o
-ice-$(CONFIG_PTP_1588_CLOCK) += ice_ptp.o ice_ptp_hw.o
+ice-$(CONFIG_PTP_1588_CLOCK:m=y) += ice_ptp.o ice_ptp_hw.o
 ice-$(CONFIG_DCB) += ice_dcb.o ice_dcb_nl.o ice_dcb_lib.o
 ice-$(CONFIG_RFS_ACCEL) += ice_arfs.o
 ice-$(CONFIG_XDP_SOCKETS) += ice_xsk.o
-- 
2.31.1.331.gb0c09ab8796f

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
