Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E95377EE1C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Aug 2023 02:12:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DF51D4178E;
	Thu, 17 Aug 2023 00:12:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DF51D4178E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692231148;
	bh=StRlqBjfTeDfP1M4a87pqiyMeGr4CdyGZV6L+Jm33Tw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=o/nFGLecPZThwBYtzj58lBSt0u+yiBRT45+hZHYU0diWGe5COks7qztR74sYFZk1L
	 DVY1wdrGU7eZBuceSyrRIaOpPW5Z+jzRB/XR2k96LNuXVut9kmDTJ1ota0dJ8MCATR
	 cvrZchrw0YTfNsFD7XBlJ7B2JF+FmQ+ND7DYXFselFhuar4Ep61HhEh6E4kJiMbGZy
	 +9mA57lQTcVTg2EtztVFkqrykrWTUqfAsci1oTKSXU7z2OScck+HEsv8rBMDF5ElSw
	 IJ2HWqYb5yt2STlWImrI/u3VK7Q8+ppI4Lh5eXMG03jwJw1UCFW6uFgKqruKZXj3V/
	 ENmFCXLg8lTVA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QDCEzsytXg4v; Thu, 17 Aug 2023 00:12:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B549541779;
	Thu, 17 Aug 2023 00:12:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B549541779
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 028A51BF390
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 00:12:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CE38741779
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 00:12:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CE38741779
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zdPgz_1a3we1 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Aug 2023 00:12:22 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E30544177D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 00:12:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E30544177D
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="371570662"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="371570662"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 17:04:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="824422147"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="824422147"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.168])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Aug 2023 17:04:54 -0700
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 16 Aug 2023 16:57:18 -0700
Message-Id: <20230816235719.1120726-7-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230816235719.1120726-1-paul.greenwalt@intel.com>
References: <20230816235719.1120726-1-paul.greenwalt@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692231141; x=1723767141;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uOaHuO89FuzTgLUzEh2x9VhUr5CRa8Z2PtrAaVnjwCI=;
 b=Fo42KFqJL5ikD0nio4Pw1Ghlv4lCugWr0PMPAlqnDTwVlL1TYHllXiyn
 cCM782n2CtaY28L7h70ekS5HvG+7pZ1K6NcqjB2yTSD/HzuGZeJnLSmpA
 SCk8Sy604PP4C5WjkHCpDaXM890SZkgQ0BYUt1wRKwFXsFdVXOPdiwVd+
 1IjFjt3NVGw4DlEdYZ2iJZ/foaw2ke9yFRESk4NXmrg91pMm618y9NamH
 0d4btCudAixkRZBHHcnBpOmaXYQaNWbqtLu7IpbCuFzRj0tvX4KWjP8ej
 2gR4wNC5p6ZxDiTFyhfRZmlgGZPHGGN+ga2pjkQi5lhGx1E2bLcz4esv7
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Fo42KFqJ
Subject: [Intel-wired-lan] [PATCH iwl-next 6/7] ice: Remove redundant
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Pawel Chmielewski <pawel.chmielewski@intel.com>

Remove zeroing of the fields, as all the fields are in fact initialized
with zeros automatically

Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 52 +++++++++++------------
 1 file changed, 26 insertions(+), 26 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index ffed5543a5aa..d6715a89ec78 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5605,32 +5605,32 @@ static void ice_pci_err_reset_done(struct pci_dev *pdev)
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
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E810C_BACKPLANE)},
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E810C_QSFP)},
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E810C_SFP)},
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E810_XXV_BACKPLANE)},
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E810_XXV_QSFP)},
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E810_XXV_SFP)},
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823C_BACKPLANE)},
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823C_QSFP)},
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823C_SFP)},
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823C_10G_BASE_T)},
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823C_SGMII)},
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822C_BACKPLANE)},
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822C_QSFP)},
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822C_SFP)},
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822C_10G_BASE_T)},
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822C_SGMII)},
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822L_BACKPLANE)},
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822L_SFP)},
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822L_10G_BASE_T)},
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822L_SGMII)},
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823L_BACKPLANE)},
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823L_SFP)},
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823L_10G_BASE_T)},
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823L_1GBE)},
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823L_QSFP)},
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822_SI_DFLT)},
 	/* required last entry */
 	{ 0, }
 };
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
