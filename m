Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A51786F87
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Aug 2023 14:50:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 17AFF41525;
	Thu, 24 Aug 2023 12:50:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 17AFF41525
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692881448;
	bh=N8jz/VMbDDFgZo6uOWuaUs4EWaHn/HpK9Ulgfc9gFFM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CUc1N+GqudgV4dSKSfEWK5/PavIJ+i7ZRYQsBjqe93XSJpRF9BhnpqKskN06qXmIh
	 o35zjbA5lzEC/u/Whh4SbAB/9sDl/XUhMH+c/6TZAetaojxv1lXlQGlqU0Wwycn0NO
	 m3s8KrqpJPVofoGSYaPoN6+bzduDrLwsqXoEFWJ5MHYrHlI3ZHKmoThpXv0vA0phte
	 rparBMx92YBgGEHl/Xc3JG/Ldw1cXJPqb+ti+vTKDfkFu6pu5Hr5AbG2D01s5JFmSQ
	 ie+JEiF5q5iIiPTxySGepuEh0rRF4f0qmj6eHQqrV+Pn4JTAT0LyvCcoBboYq7lf9O
	 HWGa/MVPR49Lw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mjm4mEOVPwtf; Thu, 24 Aug 2023 12:50:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D5D52414FD;
	Thu, 24 Aug 2023 12:50:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D5D52414FD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3A81A1BF340
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 12:50:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 12BB26133F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 12:50:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 12BB26133F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bsZfUjjJN8bp for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Aug 2023 12:50:38 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5A48160D80
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 12:50:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5A48160D80
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="378183386"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="378183386"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 05:50:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="802528400"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="802528400"
Received: from isergee-mobl3.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.252.45.83])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 05:50:36 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 24 Aug 2023 06:50:20 -0600
Message-Id: <20230824125023.3302949-2-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230824125023.3302949-1-ahmed.zaki@intel.com>
References: <20230824125023.3302949-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692881438; x=1724417438;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wHaNRp+D6RdkoO0sByq2CWNgkmJtXYqOO+RQ9BOl4cQ=;
 b=VaN8P28XYKRpzRFBWQTpvtLd+QunyJz7onUCCOaleSdCWLGROpkrxtuT
 XsuAXgivzv4svchFJDqUecHc9reEdaQi3GHity1Nc1OZIUGe9m3MLT6+a
 nQIAbAMijOkh2J5Eqydxd1hGjNbAbBUWbhJqI18OwCCfFR3gXm/ORKsZC
 WJe/uo3HvzPemFwFV80Ui+uHyXD4YPWhtkjFQ30YbwJMDd7L5m+lury4+
 gwTTgZd+llxbsIyhmV6OG1Gw0CKriO48/fGst6JXB1OXxG3r1MRO8JKKP
 0KWxEqQrscpGUXBkEHuFAvyusX21v3J18jfqt5/GGcXzkmQipb7ZHxnDE
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VaN8P28X
Subject: [Intel-wired-lan] [PATCH iwl-next 1/4] virtchnl: Add CRC stripping
 capability
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
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
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
