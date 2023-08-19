Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C410E781899
	for <lists+intel-wired-lan@lfdr.de>; Sat, 19 Aug 2023 11:50:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 65C4260D67;
	Sat, 19 Aug 2023 09:50:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 65C4260D67
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692438613;
	bh=StRlqBjfTeDfP1M4a87pqiyMeGr4CdyGZV6L+Jm33Tw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=PHwkjw1QeRtV0O33S7oJKyO82da+0ekrl71YSSPNosHeLUwL7aKGr9cYQWvj/B1Te
	 caHU75Dv0nGnY3DdjusL056dAtjYv2cWcjLOcLEVrWzR+mE20LiVV3G4bpGb7NOBvk
	 Qx0Y183QtoyUZUDO+3PxpiCNj+C1BYUqPGi2osRDB8CkAbYHc6Mh998AA1BwE3C1PD
	 VgXvJw0tGjSwg9WvxVfw98YJ2B5niuixhe8uEAhlyfdvb4E7r3pyr5YKnSbsQ7+I56
	 u5UsDMMUGdyAI/oECEkfZ+hpdy73nXrAeqt1baADTWcT1Xy8880PgRqwnR1UxeZ+uU
	 n5pLCzg0TqW6Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4VAMwqBboeyq; Sat, 19 Aug 2023 09:50:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F336660B98;
	Sat, 19 Aug 2023 09:50:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F336660B98
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4C2D91BF306
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Aug 2023 09:50:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2488781E90
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Aug 2023 09:50:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2488781E90
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S-I-761xH3IV for <intel-wired-lan@lists.osuosl.org>;
 Sat, 19 Aug 2023 09:50:06 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2A10981E8C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Aug 2023 09:50:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2A10981E8C
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="459641285"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="459641285"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2023 02:50:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="764830743"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="764830743"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.168])
 by orsmga008.jf.intel.com with ESMTP; 19 Aug 2023 02:50:04 -0700
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sat, 19 Aug 2023 02:42:39 -0700
Message-Id: <20230819094239.15304-1-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692438606; x=1723974606;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uOaHuO89FuzTgLUzEh2x9VhUr5CRa8Z2PtrAaVnjwCI=;
 b=aVDjtXgBnEIrUXD8BT93A8yYJf+ESCR17mVbv5Qy5P7DUfMeCITsEgV5
 sT6fsYpQ/EOnQTC1FVvc3BzH4/L8jPSgdwl/ajkndne8Y9VHw4/Eh9f/B
 n8mokfmx9Na8CsDdP5Fz9QHMgZ4oYjmnbHNWHLVx6zTv0MBhI5QRJZkE5
 LpH7tuZTH2FXG7TI64aHRt+nO7vpbPw9bIoc0I2ZHYrsErDxjCpdiLwLa
 MiG0Lwkg2UPcXS/7rPp8+72iutB3cfKformy3A1mT6GAdGMOTpKWHjA6e
 FBx9ShPJh63lH2HczB57Yk0BUJkAmYZXGi/h/5i3T8Qbuomcb6fHfSy50
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aVDjtXgB
Subject: [Intel-wired-lan] [PATCH iwl-next v2 8/9] ice: Remove redundant
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
