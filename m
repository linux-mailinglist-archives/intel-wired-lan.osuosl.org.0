Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 521C67D165C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Oct 2023 21:38:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D3C7784CBD;
	Fri, 20 Oct 2023 19:38:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D3C7784CBD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697830707;
	bh=vIS44Ewdur2ExAUWt2U9apeFKLX5HEN1vGJPgUaQV8I=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mPsgtTqYvkyLQJJi5TPp51P+kuGLv5yw6M25gHhDe2DbaipZggSrS3kBX0ToGz+Ui
	 pkD0R/G5cL7HJdmrQwMRBD4Gzi/9fVYBgj/BY7JhVqjiRS9cdz8Z9iUN6ZcCmezhUk
	 fHSpnzlC7B1eIAntKPqkHC0GiK0y696THhcmFuK8uOY/pfuf00CmIPGhths7gp6BqF
	 Ke3Hg9KaEv21r0UjjEreDesmpSL9gMCDKF4fv+ciWj6BklDKtY6YL74+w3D2ZHdQ5b
	 LJWerpTMxSsSZ5UpqfPqQwlqqDiQ0J8FSy2q81FmDfA8agK7jrdVYiboYUwTmFPH7I
	 Oc7FqyYe3yP9g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DetDrC6H2plB; Fri, 20 Oct 2023 19:38:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3F39E84CB7;
	Fri, 20 Oct 2023 19:38:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3F39E84CB7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 77A361BF2CF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Oct 2023 19:38:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4F1DA402BC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Oct 2023 19:38:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4F1DA402BC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SGpur_uciOMv for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Oct 2023 19:38:18 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E2602400BA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Oct 2023 19:38:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E2602400BA
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-113-1S7bJ7BeNmyYl0EEeXgHpA-1; Fri, 20 Oct 2023 15:38:03 -0400
X-MC-Unique: 1S7bJ7BeNmyYl0EEeXgHpA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F224729AA2D1;
 Fri, 20 Oct 2023 19:38:02 +0000 (UTC)
Received: from p1.luc.com (unknown [10.45.226.105])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 24611C1596D;
 Fri, 20 Oct 2023 19:38:01 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Fri, 20 Oct 2023 21:37:42 +0200
Message-ID: <20231020193746.2274379-6-ivecera@redhat.com>
In-Reply-To: <20231020193746.2274379-1-ivecera@redhat.com>
References: <20231020193746.2274379-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1697830696;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Ml4RORcasGomkLklFLPVGJJgQIs51tajiJ4KZNMKsYM=;
 b=BSuKyfsPOkVuva2YrWfjfI4CgDpAV5SQZGwFFKu6EWWIcqdbygP/zQsiQNajT0m0k+HV5J
 bS4Hw/lUq2dyBLsAbNE11NFBfe/ffWc1Mdxu9rsvLrSAHkjXAMFjb/SwzVmw8eF739cPCU
 Rx5CpEQ30buHjsbWbt5wXloPSu2ZQzo=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=BSuKyfsP
Subject: [Intel-wired-lan] [PATCH iwl-next 6/6] i40e: Initialize hardware
 capabilities at single place
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
Cc: Eric Dumazet <edumazet@google.com>, dacampbe@redhat.com,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 open list <linux-kernel@vger.kernel.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Some i40e_hw.caps bits are set in i40e_set_hw_caps(), some of them
in i40e_init_adminq() and the rest of them in i40e_sw_init().
Consolidate the initialization to single proper place i40e_set_hw_caps().

Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e_adminq.c | 66 ++++++++++++++-----
 drivers/net/ethernet/intel/i40e/i40e_debug.h  |  1 +
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 55 +---------------
 .../net/ethernet/intel/i40e/i40e_register.h   |  1 +
 4 files changed, 51 insertions(+), 72 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.c b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
index 6754f6b3508c..86591140f748 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
@@ -522,10 +522,52 @@ static void i40e_set_hw_caps(struct i40e_hw *hw)
 			/* The ability to RX (not drop) 802.1ad frames */
 			set_bit(I40E_HW_CAP_802_1AD, hw->caps);
 		}
+		if ((aq->api_maj_ver == 1 && aq->api_min_ver > 4) ||
+		    aq->api_maj_ver > 1) {
+			/* Supported in FW API version higher than 1.4 */
+			set_bit(I40E_HW_CAP_GENEVE_OFFLOAD, hw->caps);
+		}
+		if ((aq->fw_maj_ver == 4 && aq->fw_min_ver < 33) ||
+		    aq->fw_maj_ver < 4) {
+			set_bit(I40E_HW_CAP_RESTART_AUTONEG, hw->caps);
+			/* No DCB support  for FW < v4.33 */
+			set_bit(I40E_HW_CAP_NO_DCB_SUPPORT, hw->caps);
+		}
+		if ((aq->fw_maj_ver == 4 && aq->fw_min_ver < 3) ||
+		    aq->fw_maj_ver < 4) {
+			/* Disable FW LLDP if FW < v4.3 */
+			set_bit(I40E_HW_CAP_STOP_FW_LLDP, hw->caps);
+		}
+		if ((aq->fw_maj_ver == 4 && aq->fw_min_ver >= 40) ||
+		    aq->fw_maj_ver >= 5) {
+			/* Use the FW Set LLDP MIB API if FW > v4.40 */
+			set_bit(I40E_HW_CAP_USE_SET_LLDP_MIB, hw->caps);
+		}
+		if (aq->fw_maj_ver >= 6) {
+			/* Enable PTP L4 if FW > v6.0 */
+			set_bit(I40E_HW_CAP_PTP_L4, hw->caps);
+		}
 		break;
 	case I40E_MAC_X722:
 		set_bit(I40E_HW_CAP_AQ_SRCTL_ACCESS_ENABLE, hw->caps);
 		set_bit(I40E_HW_CAP_NVM_READ_REQUIRES_LOCK, hw->caps);
+		set_bit(I40E_HW_CAP_RSS_AQ, hw->caps);
+		set_bit(I40E_HW_CAP_128_QP_RSS, hw->caps);
+		set_bit(I40E_HW_CAP_ATR_EVICT, hw->caps);
+		set_bit(I40E_HW_CAP_WB_ON_ITR, hw->caps);
+		set_bit(I40E_HW_CAP_MULTI_TCP_UDP_RSS_PCTYPE, hw->caps);
+		set_bit(I40E_HW_CAP_NO_PCI_LINK_CHECK, hw->caps);
+		set_bit(I40E_HW_CAP_USE_SET_LLDP_MIB, hw->caps);
+		set_bit(I40E_HW_CAP_GENEVE_OFFLOAD, hw->caps);
+		set_bit(I40E_HW_CAP_PTP_L4, hw->caps);
+		set_bit(I40E_HW_CAP_WOL_MC_MAGIC_PKT_WAKE, hw->caps);
+		set_bit(I40E_HW_CAP_OUTER_UDP_CSUM, hw->caps);
+
+		if (rd32(hw, I40E_GLQF_FDEVICTENA(1)) !=
+		    I40E_FDEVICT_PCTYPE_DEFAULT) {
+			hw_warn(hw, "FD EVICT PCTYPES are not right, disable FD HW EVICT\n");
+			clear_bit(I40E_HW_CAP_ATR_EVICT, hw->caps);
+		}
 
 		if (aq->api_maj_ver > 1 ||
 		    (aq->api_maj_ver == 1 &&
@@ -553,6 +595,12 @@ static void i40e_set_hw_caps(struct i40e_hw *hw)
 	     aq->api_min_ver >= 5))
 		set_bit(I40E_HW_CAP_NVM_READ_REQUIRES_LOCK, hw->caps);
 
+	/* The ability to RX (not drop) 802.1ad frames was added in API 1.7 */
+	if (aq->api_maj_ver > 1 ||
+	    (aq->api_maj_ver == 1 &&
+	     aq->api_min_ver >= 7))
+		set_bit(I40E_HW_CAP_802_1AD, hw->caps);
+
 	if (aq->api_maj_ver > 1 ||
 	    (aq->api_maj_ver == 1 &&
 	     aq->api_min_ver >= 8))
@@ -646,24 +694,6 @@ int i40e_init_adminq(struct i40e_hw *hw)
 			   &oem_lo);
 	hw->nvm.oem_ver = ((u32)oem_hi << 16) | oem_lo;
 
-	if (hw->mac.type == I40E_MAC_XL710 &&
-	    hw->aq.api_maj_ver == I40E_FW_API_VERSION_MAJOR &&
-	    hw->aq.api_min_ver >= I40E_MINOR_VER_GET_LINK_INFO_XL710) {
-		set_bit(I40E_HW_CAP_AQ_PHY_ACCESS, hw->caps);
-		set_bit(I40E_HW_CAP_FW_LLDP_STOPPABLE, hw->caps);
-	}
-	if (hw->mac.type == I40E_MAC_X722 &&
-	    hw->aq.api_maj_ver == I40E_FW_API_VERSION_MAJOR &&
-	    hw->aq.api_min_ver >= I40E_MINOR_VER_FW_LLDP_STOPPABLE_X722) {
-		set_bit(I40E_HW_CAP_FW_LLDP_STOPPABLE, hw->caps);
-	}
-
-	/* The ability to RX (not drop) 802.1ad frames was added in API 1.7 */
-	if (hw->aq.api_maj_ver > 1 ||
-	    (hw->aq.api_maj_ver == 1 &&
-	     hw->aq.api_min_ver >= 7))
-		set_bit(I40E_HW_CAP_802_1AD, hw->caps);
-
 	if (hw->aq.api_maj_ver > I40E_FW_API_VERSION_MAJOR) {
 		ret_code = -EIO;
 		goto init_adminq_free_arq;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_debug.h b/drivers/net/ethernet/intel/i40e/i40e_debug.h
index 27ebc72d8bfe..e9871dfb32bd 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_debug.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_debug.h
@@ -37,6 +37,7 @@ struct i40e_hw;
 struct device *i40e_hw_to_dev(struct i40e_hw *hw);
 
 #define hw_dbg(hw, S, A...) dev_dbg(i40e_hw_to_dev(hw), S, ##A)
+#define hw_warn(hw, S, A...) dev_warn(i40e_hw_to_dev(hw), S, ##A)
 
 #define i40e_debug(h, m, s, ...)				\
 do {								\
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 998f9a5f4836..7001fe2870c4 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -12798,62 +12798,10 @@ static int i40e_sw_init(struct i40e_pf *pf)
 				 pf->hw.func_caps.fd_filters_best_effort;
 	}
 
-	if (pf->hw.mac.type == I40E_MAC_X722) {
-		set_bit(I40E_HW_CAP_RSS_AQ, pf->hw.caps);
-		set_bit(I40E_HW_CAP_128_QP_RSS, pf->hw.caps);
-		set_bit(I40E_HW_CAP_ATR_EVICT, pf->hw.caps);
-		set_bit(I40E_HW_CAP_WB_ON_ITR, pf->hw.caps);
-		set_bit(I40E_HW_CAP_MULTI_TCP_UDP_RSS_PCTYPE, pf->hw.caps);
-		set_bit(I40E_HW_CAP_NO_PCI_LINK_CHECK, pf->hw.caps);
-		set_bit(I40E_HW_CAP_USE_SET_LLDP_MIB, pf->hw.caps);
-		set_bit(I40E_HW_CAP_GENEVE_OFFLOAD, pf->hw.caps);
-		set_bit(I40E_HW_CAP_PTP_L4, pf->hw.caps);
-		set_bit(I40E_HW_CAP_WOL_MC_MAGIC_PKT_WAKE, pf->hw.caps);
-		set_bit(I40E_HW_CAP_OUTER_UDP_CSUM, pf->hw.caps);
-
-#define I40E_FDEVICT_PCTYPE_DEFAULT 0xc03
-		if (rd32(&pf->hw, I40E_GLQF_FDEVICTENA(1)) !=
-		    I40E_FDEVICT_PCTYPE_DEFAULT) {
-			dev_warn(&pf->pdev->dev,
-				 "FD EVICT PCTYPES are not right, disable FD HW EVICT\n");
-			clear_bit(I40E_HW_CAP_ATR_EVICT, pf->hw.caps);
-		}
-	} else if ((pf->hw.aq.api_maj_ver > 1) ||
-		   ((pf->hw.aq.api_maj_ver == 1) &&
-		    (pf->hw.aq.api_min_ver > 4))) {
-		/* Supported in FW API version higher than 1.4 */
-		set_bit(I40E_HW_CAP_GENEVE_OFFLOAD, pf->hw.caps);
-	}
-
 	/* Enable HW ATR eviction if possible */
 	if (test_bit(I40E_HW_CAP_ATR_EVICT, pf->hw.caps))
 		set_bit(I40E_FLAG_HW_ATR_EVICT_ENA, pf->flags);
 
-	if ((pf->hw.mac.type == I40E_MAC_XL710) &&
-	    (((pf->hw.aq.fw_maj_ver == 4) && (pf->hw.aq.fw_min_ver < 33)) ||
-	    (pf->hw.aq.fw_maj_ver < 4))) {
-		set_bit(I40E_HW_CAP_RESTART_AUTONEG, pf->hw.caps);
-		/* No DCB support  for FW < v4.33 */
-		set_bit(I40E_HW_CAP_NO_DCB_SUPPORT, pf->hw.caps);
-	}
-
-	/* Disable FW LLDP if FW < v4.3 */
-	if ((pf->hw.mac.type == I40E_MAC_XL710) &&
-	    (((pf->hw.aq.fw_maj_ver == 4) && (pf->hw.aq.fw_min_ver < 3)) ||
-	    (pf->hw.aq.fw_maj_ver < 4)))
-		set_bit(I40E_HW_CAP_STOP_FW_LLDP, pf->hw.caps);
-
-	/* Use the FW Set LLDP MIB API if FW > v4.40 */
-	if ((pf->hw.mac.type == I40E_MAC_XL710) &&
-	    (((pf->hw.aq.fw_maj_ver == 4) && (pf->hw.aq.fw_min_ver >= 40)) ||
-	    (pf->hw.aq.fw_maj_ver >= 5)))
-		set_bit(I40E_HW_CAP_USE_SET_LLDP_MIB, pf->hw.caps);
-
-	/* Enable PTP L4 if FW > v6.0 */
-	if (pf->hw.mac.type == I40E_MAC_XL710 &&
-	    pf->hw.aq.fw_maj_ver >= 6)
-		set_bit(I40E_HW_CAP_PTP_L4, pf->hw.caps);
-
 	if (pf->hw.func_caps.vmdq && num_online_cpus() != 1) {
 		pf->num_vmdq_vsis = I40E_DEFAULT_NUM_VMDQ_VSI;
 		set_bit(I40E_FLAG_VMDQ_ENA, pf->flags);
@@ -12871,8 +12819,7 @@ static int i40e_sw_init(struct i40e_pf *pf)
 	 * if NPAR is functioning so unset this hw flag in this case.
 	 */
 	if (pf->hw.mac.type == I40E_MAC_XL710 &&
-	    pf->hw.func_caps.npar_enable &&
-	    test_bit(I40E_HW_CAP_FW_LLDP_STOPPABLE, pf->hw.caps))
+	    pf->hw.func_caps.npar_enable)
 		clear_bit(I40E_HW_CAP_FW_LLDP_STOPPABLE, pf->hw.caps);
 
 #ifdef CONFIG_PCI_IOV
diff --git a/drivers/net/ethernet/intel/i40e/i40e_register.h b/drivers/net/ethernet/intel/i40e/i40e_register.h
index f408fcf23ce8..d561687303ea 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_register.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_register.h
@@ -899,6 +899,7 @@
 #define I40E_GLQF_ORT_FLX_PAYLOAD_SHIFT 7
 #define I40E_GLQF_ORT_FLX_PAYLOAD_MASK I40E_MASK(0x1, I40E_GLQF_ORT_FLX_PAYLOAD_SHIFT)
 #define I40E_GLQF_FDEVICTENA(_i) (0x00270384 + ((_i) * 4)) /* _i=0...1 */ /* Reset: CORER */
+#define I40E_FDEVICT_PCTYPE_DEFAULT 0xc03
 /* Redefined for X722 family */
 #define I40E_GLGEN_STAT_CLEAR 0x00390004 /* Reset: CORER */
 #endif /* _I40E_REGISTER_H_ */
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
