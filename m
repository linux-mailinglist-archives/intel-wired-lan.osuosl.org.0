Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB56785F4D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Aug 2023 20:11:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 241C3612FB;
	Wed, 23 Aug 2023 18:11:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 241C3612FB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692814290;
	bh=lnCSYb1FQ4c7WAKOZ0lf2vTOeA59P5aBEL2CDvMgcWI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9ae0d80GHQSLFbrHDmwtDX+nZI2NIT5cHOIe4bw3iSNaHVkNTYWIUvEHhyGm7mzUj
	 I5r/lE/5xd3JQuCuBqrcJfqeEEiJm/uFdycr2K1COv69Qv52Ugm8nc4JpPPFAG5ohg
	 dgASESQzhK8yy8hhNyii7E1PCwHjvRbXvAOie27bGIpzHguqRI9ywvhbXYY3MFgAMO
	 LI8/mj/hJP37bZ+Z4A1prmPLBU51Nt6WYZ8RU2zV6K9BVkISHz6njmmkLUymd9yh0S
	 8eu7/vItD4xJtFf8yrKXc1y9LW48ldvVFfqL7ESMBak/d39SXiULYJ1ubrfsTvWAzX
	 YiXLw6k0ctMuQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uBZZcFJkGuvf; Wed, 23 Aug 2023 18:11:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D0CEB612E9;
	Wed, 23 Aug 2023 18:11:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D0CEB612E9
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C70661BF343
 for <intel-wired-lan@osuosl.org>; Wed, 23 Aug 2023 18:11:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9EB5D417D6
 for <intel-wired-lan@osuosl.org>; Wed, 23 Aug 2023 18:11:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9EB5D417D6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6UgaQs0egARZ for <intel-wired-lan@osuosl.org>;
 Wed, 23 Aug 2023 18:11:15 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A5FD6417D4
 for <intel-wired-lan@osuosl.org>; Wed, 23 Aug 2023 18:11:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A5FD6417D4
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="364412464"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="364412464"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 11:11:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="802233725"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="802233725"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga008.fm.intel.com with ESMTP; 23 Aug 2023 11:11:13 -0700
Received: from baltimore.igk.intel.com (baltimore.igk.intel.com [10.102.21.1])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 24C7C33EA8;
 Wed, 23 Aug 2023 19:11:13 +0100 (IST)
From: Pawel Chmielewski <pawel.chmielewski@intel.com>
To: intel-wired-lan@osuosl.org
Date: Wed, 23 Aug 2023 20:06:31 +0200
Message-Id: <20230823180633.2450617-8-pawel.chmielewski@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20230823180633.2450617-1-pawel.chmielewski@intel.com>
References: <20230823180633.2450617-1-pawel.chmielewski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692814275; x=1724350275;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EAI32p84QZ7fMvHToGeKlZGL967yY9vhMQGUU1IzvBw=;
 b=holLBxwCT/4ofxwT0THGhBEbz4yaMJAmhqvpVioyeuZGJUqKVf2RD4q3
 52YTlv6BGT1JcZaBCKgyRLC8PRTXHhlg+BRbDdaZ8whT/HfmWUhHxJiNV
 9DaXjJNS8/vGudQrwxVtbwFIWkxzyvxvJB7qMQrBOD3dE0kDQi3T7KL9+
 HS836iZfPlpoKn0wR8ygS/PLO95vFrUtNzPE0cIC3YPM+H3IUQHK7ZfPO
 /D5XYhXCiDnX7RKAPywiP46X6ksvD5770mBTVjtza2GLrOsD1Gwtdp1dC
 rkUNMe9kMH9JUOecpKl9gUSrt52R3KPgUA46ZrwmtwWe173/FTQNKjFwb
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=holLBxwC
Subject: [Intel-wired-lan] [PATCH iwl-next v3 7/8] ice: Remove redundant
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
Cc: andrew@lunn.ch, aelior@marvell.com, manishc@marvell.com,
 netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>
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
