Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BCCAC78189A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 19 Aug 2023 11:50:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5DF1960D72;
	Sat, 19 Aug 2023 09:50:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5DF1960D72
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692438625;
	bh=3h1MOIzBBShfeAB463zhlzfMwipzxlzEE24Y73HRKnU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=VeeLHINOv9f387ZJ+lLmdufjPGuyKVc+agELqGrDXDW1IQlCO1rrpD+e1sswK2DZ3
	 oo6AbKYh8DvsBqN0lryYTizPJHcNr1SHQgQqO1BmsZLcr6bb8LxaCDxoQH8AfMt1PX
	 SIg/RMmqPKW18T4TemwCMY4pBWchfY27HR5OtM6qsYXqYmxmJT0mCDOHA15TICN1ae
	 8Cw+oNsxGtKWmjA8nou6OjIy5eaa1dDZxDubBfp+6Gj9v9P1ITodJTbE4vxvD32DI8
	 UElNcVzFZm57BZx73x8uj7mmUuzw562zr8f5HKBzl/keCgkBc+bHWBH3Ob9mjGHwQO
	 whAT/x61dzN3Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2zigFBwOB36Z; Sat, 19 Aug 2023 09:50:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 25BF760A67;
	Sat, 19 Aug 2023 09:50:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 25BF760A67
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5EB6D1BF306
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Aug 2023 09:50:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 387D981E90
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Aug 2023 09:50:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 387D981E90
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y4xJUrH-4k0h for <intel-wired-lan@lists.osuosl.org>;
 Sat, 19 Aug 2023 09:50:18 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6510981E8C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Aug 2023 09:50:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6510981E8C
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="370726092"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="370726092"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2023 02:50:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="981922765"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="981922765"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.168])
 by fmsmga006.fm.intel.com with ESMTP; 19 Aug 2023 02:50:16 -0700
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sat, 19 Aug 2023 02:42:52 -0700
Message-Id: <20230819094252.15319-1-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692438618; x=1723974618;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7CpkAGm9AMDYpLCrvBWk5/DAhJHRJZsYuZXPpX0QRn8=;
 b=SJZAW6r2Wn5hPGdKn1HAX9cUuxrVSltqj42/0A+Lh4Im35N1eFBDZ6Hi
 PCuDgos+vOdc2AiTAx+G9C1SnoAMw4h3pgeNlOrxSfX1D5juZ+6dZNSie
 WV0d4jGanOyE2GbBYXsJgnBbn2bNdWCmrT/tacfuNE+5ovIfUc91iZGtL
 0BS37vvmGMVDLMbhOi87zI3Hup5UUEr4LA6FTtADEaWBPozsIBGGitI7L
 +7Jf8Sm5fx2OnrY6sAgmwgkcCNI+X0VEKgWhl6Q06GJJeC/dlSryIw/kB
 Vx4kwpGq56CY16jt+DccIB84MNgkM/fRdZzerSgCuvv7H7K8JdsOz2dKw
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SJZAW6r2
Subject: [Intel-wired-lan] [PATCH iwl-next v2 9/9] ice: Enable support for
 E830 device IDs
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Pawel Chmielewski <pawel.chmielewski@intel.com>

As the previous patches provide support for E830 hardware, add E830
specific IDs to the PCI device ID table, so these devices can now be
probed by the kernel.

Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index d6715a89ec78..80013c839579 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5630,6 +5630,10 @@ static const struct pci_device_id ice_pci_tbl[] = {
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823L_10G_BASE_T)},
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823L_1GBE)},
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823L_QSFP)},
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830_BACKPLANE)},
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830_QSFP56)},
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830_SFP)},
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830_SFP_DD)},
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822_SI_DFLT)},
 	/* required last entry */
 	{ 0, }
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
