Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 648179C28A6
	for <lists+intel-wired-lan@lfdr.de>; Sat,  9 Nov 2024 01:12:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0F5C88453C;
	Sat,  9 Nov 2024 00:12:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ps-16MLHCeuK; Sat,  9 Nov 2024 00:12:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2F7798453F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731111142;
	bh=mCUgmfeiM6oB8m+NtTu6NShz8he3D6jNT6PyoU8027I=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DXkf5GOlJSfcbwDFO6J1rxlJvWXa2l60gcI1LGLpTuU3NpqNg2E4lYPpx05KZPQRZ
	 IUJveIt2g/OVTr7A9PIyF37pO5OpFfQ1TxuAQJWePzUBnQJBe7mtwJ6WMFFt3pb1fU
	 y6pajh/ava62sDJdSStyPWJALc9wu/SR/UrTtOcDCz/mmuWsUE0iRJF4FOaECtgCY8
	 +2ffTzL4xQoDFY2jv/g8x8qSc14nwguFX+Fd0LXg0J/sG0cpDrdNeYUjIe0PyK5pBM
	 U7Xn71Y2SspsRokx/NdlcvJKebohWckS8JxuWKgmGlniGibLFcWjc7pqm4GHD3MDLK
	 39UL/Uxr+T7Vw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2F7798453F;
	Sat,  9 Nov 2024 00:12:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3B30FC2
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Nov 2024 00:12:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1D40B845DE
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Nov 2024 00:12:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K28EbKl58GqW for <intel-wired-lan@lists.osuosl.org>;
 Sat,  9 Nov 2024 00:12:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F194B8453F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F194B8453F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F194B8453F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Nov 2024 00:12:17 +0000 (UTC)
X-CSE-ConnectionGUID: /eCfnjsrRqeI4xt8jyfLNw==
X-CSE-MsgGUID: DSxvotsgSMCAiiMYZnetvA==
X-IronPort-AV: E=McAfee;i="6700,10204,11250"; a="34795119"
X-IronPort-AV: E=Sophos;i="6.12,139,1728975600"; d="scan'208";a="34795119"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 16:12:18 -0800
X-CSE-ConnectionGUID: HYqb+TBpR0CzVg8VxpdyYw==
X-CSE-MsgGUID: cOOkK1WeRf6CKkr+GLhphQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,139,1728975600"; d="scan'208";a="90905950"
Received: from dneilan-mobl1.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.245.245.163])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 16:12:16 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
 Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>,
 Ahmed Zaki <ahmed.zaki@intel.com>
Date: Fri,  8 Nov 2024 17:12:05 -0700
Message-ID: <20241109001206.213581-2-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241109001206.213581-1-ahmed.zaki@intel.com>
References: <20241109001206.213581-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731111138; x=1762647138;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KroSfN1M0r4HiUrYKVPYXdflVlrOxeZYUJfX7KDpK4c=;
 b=J/8B94TYdHZ+5/kyE9lDvLYn8onJ1ISOm8d/rKVqG8VApxzRfMpEU/Ae
 L7EyKB+JBL16gRiJkoaD3HJSGvk96nHSLuUDheqWaGUdIQfxTsWNybBG9
 nqE315m0WEz8BZz0eDVOD7zIj72Mi3ZGdiXRVZWse/gZ7say7s1WLiHXR
 foc8FpLcEngxHbWpUliqW8p8MR0SxVsbcLMaoTid4R2D4pQqCQ14nykln
 qErmBSw5fXpluDZrejg7aEvLoraueTBqb3JWCs3eLsrEIkJ1OhjU4p4F6
 R1zKji1MmpPPphoHmtGfPhzzkUz7sYKRG8kaiIuOJ/kRvlKlxuVVY/eC/
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=J/8B94TY
Subject: [Intel-wired-lan] [PATCH iwl-net 1/2] idpf: preserve IRQ affinity
 settings across resets
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>

Currently the IRQ affinity settings are getting lost when interface
goes through a soft reset (due to MTU configuration, changing number
of queues etc). Use irq_set_affinity_notifier() callbacks to keep
the IRQ affinity info in sync between driver and kernel.

Fixes: d4d558718266 ("idpf: initialize interrupts and enable vport")
Reviewed-by: Ahmed Zaki <ahmed.zaki@intel.com>
Signed-off-by: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 35 +++++++++++++++++++--
 drivers/net/ethernet/intel/idpf/idpf_txrx.h |  6 +++-
 2 files changed, 38 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index a8989dd98272..82e0e3698f10 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -3583,7 +3583,7 @@ static void idpf_vport_intr_rel_irq(struct idpf_vport *vport)
 		irq_num = adapter->msix_entries[vidx].vector;
 
 		/* clear the affinity_mask in the IRQ descriptor */
-		irq_set_affinity_hint(irq_num, NULL);
+		irq_set_affinity_notifier(irq_num, NULL);
 		kfree(free_irq(irq_num, q_vector));
 	}
 }
@@ -3723,6 +3723,33 @@ void idpf_vport_intr_update_itr_ena_irq(struct idpf_q_vector *q_vector)
 	writel(intval, q_vector->intr_reg.dyn_ctl);
 }
 
+/**
+ * idpf_irq_affinity_notify - Callback for affinity changes
+ * @notify: context as to what irq was changed
+ * @mask: the new affinity mask
+ *
+ * Callback function registered via irq_set_affinity_notifier function
+ * so that river can receive changes to the irq affinity masks.
+ */
+static void
+idpf_irq_affinity_notify(struct irq_affinity_notify *notify,
+			 const cpumask_t *mask)
+{
+	struct idpf_q_vector *q_vector =
+		container_of(notify, struct idpf_q_vector, affinity_notify);
+
+	cpumask_copy(q_vector->affinity_mask, mask);
+}
+
+/**
+ * idpf_irq_affinity_release - Callback for affinity notifier release
+ * @ref: internal core kernel usage
+ *
+ * Callback function registered via irq_set_affinity_notifier function
+ * to inform the driver that it will no longer receive notifications.
+ */
+static void idpf_irq_affinity_release(struct kref __always_unused *ref) {}
+
 /**
  * idpf_vport_intr_req_irq - get MSI-X vectors from the OS for the vport
  * @vport: main vport structure
@@ -3730,6 +3757,7 @@ void idpf_vport_intr_update_itr_ena_irq(struct idpf_q_vector *q_vector)
 static int idpf_vport_intr_req_irq(struct idpf_vport *vport)
 {
 	struct idpf_adapter *adapter = vport->adapter;
+	struct irq_affinity_notify *affinity_notify;
 	const char *drv_name, *if_name, *vec_name;
 	int vector, err, irq_num, vidx;
 
@@ -3763,7 +3791,10 @@ static int idpf_vport_intr_req_irq(struct idpf_vport *vport)
 			goto free_q_irqs;
 		}
 		/* assign the mask for this irq */
-		irq_set_affinity_hint(irq_num, q_vector->affinity_mask);
+		affinity_notify = &q_vector->affinity_notify;
+		affinity_notify->notify = idpf_irq_affinity_notify;
+		affinity_notify->release = idpf_irq_affinity_release;
+		irq_set_affinity_notifier(irq_num, affinity_notify);
 	}
 
 	return 0;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index b59aa7d8de2c..48cb58d14eff 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -379,6 +379,7 @@ struct idpf_intr_reg {
  * @rx_itr_idx: RX ITR index
  * @v_idx: Vector index
  * @affinity_mask: CPU affinity mask
+ * @affinity_notify: struct with callbacks for notification of affinity changes
  */
 struct idpf_q_vector {
 	__cacheline_group_begin_aligned(read_mostly);
@@ -416,12 +417,15 @@ struct idpf_q_vector {
 	u16 v_idx;
 
 	cpumask_var_t affinity_mask;
+	struct irq_affinity_notify affinity_notify;
 	__cacheline_group_end_aligned(cold);
 };
+
 libeth_cacheline_set_assert(struct idpf_q_vector, 112,
 			    24 + sizeof(struct napi_struct) +
 			    2 * sizeof(struct dim),
-			    8 + sizeof(cpumask_var_t));
+			    8 + sizeof(cpumask_var_t) +
+			    sizeof(struct irq_affinity_notify));
 
 struct idpf_rx_queue_stats {
 	u64_stats_t packets;
-- 
2.43.0

