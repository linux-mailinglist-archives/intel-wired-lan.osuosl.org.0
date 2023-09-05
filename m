Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CE9E7792D19
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Sep 2023 20:09:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C0A19418CA;
	Tue,  5 Sep 2023 18:09:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C0A19418CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693937345;
	bh=N8jz/VMbDDFgZo6uOWuaUs4EWaHn/HpK9Ulgfc9gFFM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WCt55gGmVHoYGxXlhcTVdnvGRJyp/8tt1XYOfeeY9BybU/EvL4HO63ip1LtYKiZnW
	 by91Ye6Tf3zcWa8AD5um+GmZU4+m4Hafabh9v72QjOPxyOLZNE1Ec7FTcVyw3V1feT
	 IqYbdyNpB8vRN8wJX+/+W21hiPfZ6oLDQ9cpZHoxCwkzOUmec7+Lyw/JeV6iBdhEzS
	 XTyFkc8FvHBLzvDGbFVLWnKR7PN1AfL+P2wszN6TOH2Sh2Ou9y4iXbjK7IcRQGOaJs
	 Cp11cDRlp2f6fsLgosif6ClPZ82aCePwWM8JEh2TXNhJEUKIChmS0gJmKKY6loFx/o
	 xsk8Q+dt/SuWQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pia81G8jOple; Tue,  5 Sep 2023 18:09:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6074E401FD;
	Tue,  5 Sep 2023 18:09:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6074E401FD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 28D481BF318
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Sep 2023 18:08:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 017248128D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Sep 2023 18:08:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 017248128D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m6UtLucOSBY2 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Sep 2023 18:08:46 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C05C281268
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Sep 2023 18:08:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C05C281268
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="375766539"
X-IronPort-AV: E=Sophos;i="6.02,229,1688454000"; d="scan'208";a="375766539"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2023 11:08:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="806707341"
X-IronPort-AV: E=Sophos;i="6.02,229,1688454000"; d="scan'208";a="806707341"
Received: from nsnaveen-mobl.gar.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.252.34.119])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2023 11:08:44 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  5 Sep 2023 12:08:34 -0600
Message-Id: <20230905180837.3611383-2-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230905180837.3611383-1-ahmed.zaki@intel.com>
References: <20230905180837.3611383-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693937326; x=1725473326;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wHaNRp+D6RdkoO0sByq2CWNgkmJtXYqOO+RQ9BOl4cQ=;
 b=Scv67pnvgocycMC25jbfPZ9f29+XQWm01evD/u8RiOxD38y4dmCfFZM0
 /RkD3sC+cnDoVVDdKkaaM47XE0ErFkTjDW+OFmoTJLAiinNuZIuv3Q9bu
 9fkMR9kdZ7dGXIYxjiFv0CpRXYLf/fi/VLaDDtNbUQRFT63IzBTfOyKjs
 95GSPnMgoORGDOEOEFRLGAVMgYEyoEy0ehYCBzR7PKqYg7RETjeq4jGDy
 VJ+B8nIc/AUGflaA9g+ZNVGP8TfwII51p7CKlH3hjheTDTsxZteX/H8Cl
 0YQmXObiK7mXSgxm1cmTHg7OCL0+WxOkJvc178p5pS5YYwq/9HSX4iHLd
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Scv67pnv
Subject: [Intel-wired-lan] [PATCH iwl-next v5 1/4] virtchnl: Add CRC
 stripping capability
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
Cc: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>

Some VFs may want to disable CRC stripping on incoming packets so create
an offload for that. The VF already sends information about configuring
it's RX queues so use that structure to indicate that the CRC stripping
should be enabled or not.

Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 include/linux/avf/virtchnl.h | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
index d0807ad43f93..dd71d3009771 100644
--- a/include/linux/avf/virtchnl.h
+++ b/include/linux/avf/virtchnl.h
@@ -240,6 +240,7 @@ VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_vsi_resource);
 #define VIRTCHNL_VF_OFFLOAD_REQ_QUEUES		BIT(6)
 /* used to negotiate communicating link speeds in Mbps */
 #define VIRTCHNL_VF_CAP_ADV_LINK_SPEED		BIT(7)
+#define  VIRTCHNL_VF_OFFLOAD_CRC		BIT(10)
 #define VIRTCHNL_VF_OFFLOAD_VLAN_V2		BIT(15)
 #define VIRTCHNL_VF_OFFLOAD_VLAN		BIT(16)
 #define VIRTCHNL_VF_OFFLOAD_RX_POLLING		BIT(17)
@@ -295,7 +296,13 @@ VIRTCHNL_CHECK_STRUCT_LEN(24, virtchnl_txq_info);
 /* VIRTCHNL_OP_CONFIG_RX_QUEUE
  * VF sends this message to set up parameters for one RX queue.
  * External data buffer contains one instance of virtchnl_rxq_info.
- * PF configures requested queue and returns a status code.
+ * PF configures requested queue and returns a status code. The
+ * crc_disable flag disables CRC stripping on the VF. Setting
+ * the crc_disable flag to 1 will disable CRC stripping for each
+ * queue in the VF where the flag is set. The VIRTCHNL_VF_OFFLOAD_CRC
+ * offload must have been set prior to sending this info or the PF
+ * will ignore the request. This flag should be set the same for
+ * all of the queues for a VF.
  */
 
 /* Rx queue config info */
@@ -307,7 +314,7 @@ struct virtchnl_rxq_info {
 	u16 splithdr_enabled; /* deprecated with AVF 1.0 */
 	u32 databuffer_size;
 	u32 max_pkt_size;
-	u8 pad0;
+	u8 crc_disable;
 	u8 rxdid;
 	u8 pad1[2];
 	u64 dma_ring_addr;
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
