Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8740B7A220E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Sep 2023 17:12:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0E80841981;
	Fri, 15 Sep 2023 15:12:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0E80841981
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694790777;
	bh=lnCSYb1FQ4c7WAKOZ0lf2vTOeA59P5aBEL2CDvMgcWI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tiIkBDcfXzzjNVOf0efMjbZBpZmvdcgW0JDCKJvLMLo7Pt/rJFm06ushTITcR+TJS
	 R2umGkJADUCFQaQaKbAikOugHCZaOS8WkOF3tjNBwIyy45zyzrlU8JtrogJ/5ALMrF
	 c2XYRE+bW1RVlnJ731mGV8EQWmUySqJDAMdtn9KEOK1Mxa8cIaYGKJb4ZxqrAVBUdL
	 LoCLDJ7ZDkIvZWSxe/E+KLcd2V8PqjLHPYMHjaL+M47SxZ2h8K0JVNYcWayjf4BQpb
	 LJ9VydjlzRaCg+gmZ3UZ0koyXWnHUn3rwqIUKaDNsJRn5MGF4LjKLLyqdst+NB/EBo
	 O7ElL0/Ry6j6Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3u0r60B-JBSK; Fri, 15 Sep 2023 15:12:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CC85B41952;
	Fri, 15 Sep 2023 15:12:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CC85B41952
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 23F7D1BF3D2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Sep 2023 15:12:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7E90183CBA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Sep 2023 15:12:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7E90183CBA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SjkEyC1Zm35U for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Sep 2023 15:12:36 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B77D883B86
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Sep 2023 15:12:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B77D883B86
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="410209427"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="410209427"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 08:12:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="868741787"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="868741787"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga004.jf.intel.com with ESMTP; 15 Sep 2023 08:12:34 -0700
Received: from baltimore.igk.intel.com (baltimore.igk.intel.com [10.102.21.1])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id ED27033BF8;
 Fri, 15 Sep 2023 16:12:32 +0100 (IST)
From: Pawel Chmielewski <pawel.chmielewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 Sep 2023 17:09:57 +0200
Message-Id: <20230915150958.592564-6-pawel.chmielewski@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20230915150958.592564-1-pawel.chmielewski@intel.com>
References: <20230915150958.592564-1-pawel.chmielewski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694790756; x=1726326756;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EAI32p84QZ7fMvHToGeKlZGL967yY9vhMQGUU1IzvBw=;
 b=VZIGwUlNe3//GHs+d4kUvsvwJk1CG2dRXNf/WUDDcwXQDY/H5RSXBH9v
 3ejdqvBuRfujRHoGyuVIfx7UAhf70Lpo39/geLGu2mcwqt8acih4yzcpj
 lSc9Zp6s4PtbiRvIX3jNancT9kDac1ucDLw/nbumAFEpqovCMlUwMKzZ3
 kBab8pCIoS6CX8L8TevY+w3K9ULVXVdXuLysQmLRbngDKzGxhXrGr6Dr7
 evVkDZU6RaHO960/RWoz8CdurtRLYlDPRJP6VNasQIT4iUmO0qIyyUMJh
 PZFkN4ton7pHS2BNAjFXO1IBVpzJbJ5QJBGNxlnPrfqZrXf1l+SQMl+vR
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VZIGwUlN
Subject: [Intel-wired-lan] [PATCH iwl-next v4 5/6] ice: Remove redundant
 zeroing of the fields.
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
Cc: Pawel Chmielewski <pawel.chmielewski@intel.com>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, andrew@lunn.ch
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Remove zeroing of the fields, as all the fields are in fact initialized
with zeros automatically

Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 54 +++++++++++------------
 1 file changed, 27 insertions(+), 27 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index d13b6e3de920..9562ba928aae 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5561,34 +5561,34 @@ static void ice_pci_err_reset_done(struct pci_dev *pdev)
  *   Class, Class Mask, private data (not used) }
  */
 static const struct pci_device_id ice_pci_tbl[] = {
-	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E810C_BACKPLANE), 0 },
-	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E810C_QSFP), 0 },
-	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E810C_SFP), 0 },
-	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E810_XXV_BACKPLANE), 0 },
-	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E810_XXV_QSFP), 0 },
-	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E810_XXV_SFP), 0 },
-	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823C_BACKPLANE), 0 },
-	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823C_QSFP), 0 },
-	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823C_SFP), 0 },
-	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823C_10G_BASE_T), 0 },
-	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823C_SGMII), 0 },
-	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822C_BACKPLANE), 0 },
-	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822C_QSFP), 0 },
-	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822C_SFP), 0 },
-	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822C_10G_BASE_T), 0 },
-	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822C_SGMII), 0 },
-	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822L_BACKPLANE), 0 },
-	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822L_SFP), 0 },
-	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822L_10G_BASE_T), 0 },
-	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822L_SGMII), 0 },
-	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823L_BACKPLANE), 0 },
-	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823L_SFP), 0 },
-	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823L_10G_BASE_T), 0 },
-	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823L_1GBE), 0 },
-	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823L_QSFP), 0 },
-	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822_SI_DFLT), 0 },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E810C_BACKPLANE) },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E810C_QSFP) },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E810C_SFP) },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E810_XXV_BACKPLANE) },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E810_XXV_QSFP) },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E810_XXV_SFP) },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823C_BACKPLANE) },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823C_QSFP) },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823C_SFP) },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823C_10G_BASE_T) },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823C_SGMII) },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822C_BACKPLANE) },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822C_QSFP) },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822C_SFP) },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822C_10G_BASE_T) },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822C_SGMII) },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822L_BACKPLANE) },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822L_SFP) },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822L_10G_BASE_T) },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822L_SGMII) },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823L_BACKPLANE) },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823L_SFP) },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823L_10G_BASE_T) },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823L_1GBE) },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823L_QSFP) },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822_SI_DFLT) },
 	/* required last entry */
-	{ 0, }
+	{}
 };
 MODULE_DEVICE_TABLE(pci, ice_pci_tbl);
 
-- 
2.37.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
