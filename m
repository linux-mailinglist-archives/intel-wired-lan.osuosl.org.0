Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1091D7CDA1A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Oct 2023 13:15:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 914338145E;
	Wed, 18 Oct 2023 11:15:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 914338145E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697627753;
	bh=VgXzz918S1+j9V+FuxWWtD1NpigRSuKUe7VmY2KAwkU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=0yIfDP7fLy+GBZO0r6otgQYdSiiKIpSuD13RIk9F3ZUEe5UQM2NaI8sOJmybJrKTO
	 BduMBO5njWj8koEIo2THID80670/AgQMDdxHyu7wlPxYhABgAsZlBOzfwoa0HRPOTR
	 gQ5FDoWc66/P+MG53IIFJ6+WN6i2XIGQIEeZYekZtMvBkfTsuxHAEJUhWlmme3OANb
	 wJeNLvZA0gq52QJ4g4Rz4peKYgLRtCldJd5byEMmPgTVxUNf0A75rmkIfW8aHGVjIA
	 TGBQRd9I05Ap7KNSyRHHcDBJugWSJoY2bHD8QVyMei+sV8Gl+fsE86GYApeGD1f9Y6
	 m/DvMEfV3s3xQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TCGto-MHdyMR; Wed, 18 Oct 2023 11:15:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 330548145F;
	Wed, 18 Oct 2023 11:15:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 330548145F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8454D1BF865
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 11:15:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5C06140968
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 11:15:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5C06140968
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K9GMTieVF_xw for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Oct 2023 11:15:46 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8C07640611
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 11:15:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8C07640611
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-563-hz-euYIENpCDFKgA_d8VgQ-1; Wed, 18 Oct 2023 07:15:43 -0400
X-MC-Unique: hz-euYIENpCDFKgA_d8VgQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
 [10.11.54.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1E4A61E441CF;
 Wed, 18 Oct 2023 11:15:42 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.45.224.209])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7460F2026D4C;
 Wed, 18 Oct 2023 11:15:40 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 18 Oct 2023 13:15:27 +0200
Message-ID: <20231018111527.78194-1-mschmidt@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1697627745;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=X1YOPkd3TUNEKN4157MWeimHZGg2FyGct8o7FTgxwG0=;
 b=jAnc3HdYxwVxL9E/Dt/ya0we/pL+n0UM9K9DiXjzAxJJPyRNAVhD8AxPNIlQqQRTqx8wz5
 qSnHC2K++kEgq51ZGiwKHzxbBkrDxTVqv+faU2jB9kYJs93lo4y88mEFS3OVRWF6XK3107
 JvZgg78fmUbRKXLMYzwit14IvdWXtZM=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=jAnc3HdY
Subject: [Intel-wired-lan] [PATCH net-next] iavf: delete unused
 iavf_mac_info fields
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
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

'san_addr' and 'mac_fcoeq' members of struct iavf_mac_info are unused.
'type' is write-only. Delete all three.

The function iavf_set_mac_type that sets 'type' also checks if the PCI
vendor ID is Intel. This is unnecessary. Delete the whole function.

If in the future there's a need for the MAC type (or other PCI
ID-dependent data), I would prefer to use .driver_data in iavf_pci_tbl[]
for this purpose.

Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
---
 drivers/net/ethernet/intel/iavf/iavf_common.c | 32 -------------------
 drivers/net/ethernet/intel/iavf/iavf_main.c   |  5 ---
 .../net/ethernet/intel/iavf/iavf_prototype.h  |  2 --
 drivers/net/ethernet/intel/iavf/iavf_type.h   | 12 -------
 4 files changed, 51 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_common.c b/drivers/net/ethernet/intel/iavf/iavf_common.c
index 1afd761d8052..8091e6feca01 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_common.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_common.c
@@ -6,38 +6,6 @@
 #include "iavf_prototype.h"
 #include <linux/avf/virtchnl.h>
 
-/**
- * iavf_set_mac_type - Sets MAC type
- * @hw: pointer to the HW structure
- *
- * This function sets the mac type of the adapter based on the
- * vendor ID and device ID stored in the hw structure.
- **/
-enum iavf_status iavf_set_mac_type(struct iavf_hw *hw)
-{
-	enum iavf_status status = 0;
-
-	if (hw->vendor_id == PCI_VENDOR_ID_INTEL) {
-		switch (hw->device_id) {
-		case IAVF_DEV_ID_X722_VF:
-			hw->mac.type = IAVF_MAC_X722_VF;
-			break;
-		case IAVF_DEV_ID_VF:
-		case IAVF_DEV_ID_VF_HV:
-		case IAVF_DEV_ID_ADAPTIVE_VF:
-			hw->mac.type = IAVF_MAC_VF;
-			break;
-		default:
-			hw->mac.type = IAVF_MAC_GENERIC;
-			break;
-		}
-	} else {
-		status = IAVF_ERR_DEVICE_NOT_SUPPORTED;
-	}
-
-	return status;
-}
-
 /**
  * iavf_aq_str - convert AQ err code to a string
  * @hw: pointer to the HW structure
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 768bec67825a..c862ebcd2e39 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -2363,11 +2363,6 @@ static void iavf_startup(struct iavf_adapter *adapter)
 	/* driver loaded, probe complete */
 	adapter->flags &= ~IAVF_FLAG_PF_COMMS_FAILED;
 	adapter->flags &= ~IAVF_FLAG_RESET_PENDING;
-	status = iavf_set_mac_type(hw);
-	if (status) {
-		dev_err(&pdev->dev, "Failed to set MAC type (%d)\n", status);
-		goto err;
-	}
 
 	ret = iavf_check_reset_complete(hw);
 	if (ret) {
diff --git a/drivers/net/ethernet/intel/iavf/iavf_prototype.h b/drivers/net/ethernet/intel/iavf/iavf_prototype.h
index 940cb4203fbe..4a48e6171405 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_prototype.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_prototype.h
@@ -45,8 +45,6 @@ enum iavf_status iavf_aq_set_rss_lut(struct iavf_hw *hw, u16 seid,
 enum iavf_status iavf_aq_set_rss_key(struct iavf_hw *hw, u16 seid,
 				     struct iavf_aqc_get_set_rss_key_data *key);
 
-enum iavf_status iavf_set_mac_type(struct iavf_hw *hw);
-
 extern struct iavf_rx_ptype_decoded iavf_ptype_lookup[];
 
 static inline struct iavf_rx_ptype_decoded decode_rx_desc_ptype(u8 ptype)
diff --git a/drivers/net/ethernet/intel/iavf/iavf_type.h b/drivers/net/ethernet/intel/iavf/iavf_type.h
index 9f1f523807c4..2b6a207fa441 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_type.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_type.h
@@ -69,15 +69,6 @@ enum iavf_debug_mask {
  * the Firmware and AdminQ are intended to insulate the driver from most of the
  * future changes, but these structures will also do part of the job.
  */
-enum iavf_mac_type {
-	IAVF_MAC_UNKNOWN = 0,
-	IAVF_MAC_XL710,
-	IAVF_MAC_VF,
-	IAVF_MAC_X722,
-	IAVF_MAC_X722_VF,
-	IAVF_MAC_GENERIC,
-};
-
 enum iavf_vsi_type {
 	IAVF_VSI_MAIN	= 0,
 	IAVF_VSI_VMDQ1	= 1,
@@ -110,11 +101,8 @@ struct iavf_hw_capabilities {
 };
 
 struct iavf_mac_info {
-	enum iavf_mac_type type;
 	u8 addr[ETH_ALEN];
 	u8 perm_addr[ETH_ALEN];
-	u8 san_addr[ETH_ALEN];
-	u16 max_fcoeq;
 };
 
 /* PCI bus types */
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
