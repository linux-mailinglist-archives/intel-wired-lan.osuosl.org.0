Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A34A376C29
	for <lists+intel-wired-lan@lfdr.de>; Sat,  8 May 2021 00:11:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E364D6066E;
	Fri,  7 May 2021 22:11:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1wgEftHRthK5; Fri,  7 May 2021 22:11:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E410C60666;
	Fri,  7 May 2021 22:11:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 89C071BF309
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 May 2021 22:11:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9A08540342
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 May 2021 22:11:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id djjdT--gg34z for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 May 2021 22:11:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B576540333
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 May 2021 22:11:01 +0000 (UTC)
IronPort-SDR: hMmfR64mKly+R3IXCZmdDqq2mOzmFpEWUP3uylI+YL3PQ/9qXJRfBkjAsxdnyFR4Ija7ngu6A0
 8SESTGqY8sEA==
X-IronPort-AV: E=McAfee;i="6200,9189,9977"; a="195711981"
X-IronPort-AV: E=Sophos;i="5.82,282,1613462400"; d="scan'208";a="195711981"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2021 15:11:01 -0700
IronPort-SDR: BirHQPBQScnyTrmWXG0r3XJYowNMuqqQadPAwTyQblppzOMhUBfM1mYHRubOc+goLD7FEUzOl+
 vfDLgoZng4kg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,282,1613462400"; d="scan'208";a="407582220"
Received: from bcreeley-st-desk.jf.intel.com ([10.166.244.126])
 by orsmga002.jf.intel.com with ESMTP; 07 May 2021 15:11:00 -0700
From: Brett Creeley <brett.creeley@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  7 May 2021 15:09:11 -0700
Message-Id: <20210507220911.116361-2-brett.creeley@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210507220911.116361-1-brett.creeley@intel.com>
References: <20210507220911.116361-1-brett.creeley@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 2/2] virtchnl: Use the BIT() macro for
 capability/offload flags
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

Currently raw hex values are used to define specific bits for each
capability/offload in virtchnl.h. Using raw hex values makes it
unclear which bits are used/available. Fix this by using the BIT()
macro so it's immediately obvious which bits are used/available.

Also, move the VIRTCHNL_VF_CAP_ADV_LINK_SPEED define in the correct
place to line up with the other bit values and add a comment for its
purpose.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 include/linux/avf/virtchnl.h | 40 ++++++++++++++++++------------------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
index 591e04fa41cc..ec6b3a629b67 100644
--- a/include/linux/avf/virtchnl.h
+++ b/include/linux/avf/virtchnl.h
@@ -238,26 +238,26 @@ VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_vsi_resource);
  * VIRTCHNL_VF_OFFLOAD_L2 flag is inclusive of base mode L2 offloads including
  * TX/RX Checksum offloading and TSO for non-tunnelled packets.
  */
-#define VIRTCHNL_VF_OFFLOAD_L2			0x00000001
-#define VIRTCHNL_VF_OFFLOAD_IWARP		0x00000002
-#define VIRTCHNL_VF_OFFLOAD_RSS_AQ		0x00000008
-#define VIRTCHNL_VF_OFFLOAD_RSS_REG		0x00000010
-#define VIRTCHNL_VF_OFFLOAD_WB_ON_ITR		0x00000020
-#define VIRTCHNL_VF_OFFLOAD_REQ_QUEUES		0x00000040
-#define VIRTCHNL_VF_OFFLOAD_VLAN		0x00010000
-#define VIRTCHNL_VF_OFFLOAD_RX_POLLING		0x00020000
-#define VIRTCHNL_VF_OFFLOAD_RSS_PCTYPE_V2	0x00040000
-#define VIRTCHNL_VF_OFFLOAD_RSS_PF		0X00080000
-#define VIRTCHNL_VF_OFFLOAD_ENCAP		0X00100000
-#define VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM		0X00200000
-#define VIRTCHNL_VF_OFFLOAD_RX_ENCAP_CSUM	0X00400000
-#define VIRTCHNL_VF_OFFLOAD_ADQ			0X00800000
-#define VIRTCHNL_VF_OFFLOAD_USO			0X02000000
-#define VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF		0X08000000
-#define VIRTCHNL_VF_OFFLOAD_FDIR_PF		0X10000000
-
-/* Define below the capability flags that are not offloads */
-#define VIRTCHNL_VF_CAP_ADV_LINK_SPEED		0x00000080
+#define VIRTCHNL_VF_OFFLOAD_L2			BIT(0)
+#define VIRTCHNL_VF_OFFLOAD_IWARP		BIT(1)
+#define VIRTCHNL_VF_OFFLOAD_RSS_AQ		BIT(3)
+#define VIRTCHNL_VF_OFFLOAD_RSS_REG		BIT(4)
+#define VIRTCHNL_VF_OFFLOAD_WB_ON_ITR		BIT(5)
+#define VIRTCHNL_VF_OFFLOAD_REQ_QUEUES		BIT(6)
+/* used to negotiate communicating link speeds in Mbps */
+#define VIRTCHNL_VF_CAP_ADV_LINK_SPEED		BIT(7)
+#define VIRTCHNL_VF_OFFLOAD_VLAN		BIT(16)
+#define VIRTCHNL_VF_OFFLOAD_RX_POLLING		BIT(17)
+#define VIRTCHNL_VF_OFFLOAD_RSS_PCTYPE_V2	BIT(18)
+#define VIRTCHNL_VF_OFFLOAD_RSS_PF		BIT(19)
+#define VIRTCHNL_VF_OFFLOAD_ENCAP		BIT(20)
+#define VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM		BIT(21)
+#define VIRTCHNL_VF_OFFLOAD_RX_ENCAP_CSUM	BIT(22)
+#define VIRTCHNL_VF_OFFLOAD_ADQ			BIT(23)
+#define VIRTCHNL_VF_OFFLOAD_USO			BIT(25)
+#define VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF		BIT(27)
+#define VIRTCHNL_VF_OFFLOAD_FDIR_PF		BIT(28)
+
 #define VF_BASE_MODE_OFFLOADS (VIRTCHNL_VF_OFFLOAD_L2 | \
 			       VIRTCHNL_VF_OFFLOAD_VLAN | \
 			       VIRTCHNL_VF_OFFLOAD_RSS_PF)
-- 
2.26.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
