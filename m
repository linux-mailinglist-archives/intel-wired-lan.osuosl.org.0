Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E44FABD627
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 May 2025 13:08:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BBF8581852;
	Tue, 20 May 2025 11:08:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PipRICAqfdNl; Tue, 20 May 2025 11:08:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BF8FB80D93
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747739323;
	bh=zigzM8yODy1KVdK+8PtD0Sk5FOZayfInw0Q+o7Bevko=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9yZaS4nGCUKXK5NIO945aomce6+4651RQb01pMYWAVOD00xSyJAEFk91Kao6QFcnf
	 jMGDPqi1Jnn5KXjUAW7ZPAA53IQjkgqvXT8Rszv9sT51J1zcia7dq8SvA3f6G89W4C
	 hPSoAiZ2GpCKaEWzdEHqZszMX45bsKC1889BNETJUkbrafZ+s+yQ/jrsmzxVJTEOeh
	 EEFVKbIt9kFvdOIXk2dDbmonGOz6z/dN273xtL98T9mHyuK9j7himebWq64o80TLs1
	 nct4t4kAQGKWKNVfiCQ1CBg6wkSiM3/I3Ki91zRFuAQ7s6oldhlVTkKBQvTvBJu9ae
	 aOoGKcZYUWJyg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BF8FB80D93;
	Tue, 20 May 2025 11:08:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id AEAC8193
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 11:08:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 921E3404ED
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 11:08:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Kyyix4m_0Zqm for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 May 2025 11:08:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B619C404CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B619C404CE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B619C404CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 11:08:40 +0000 (UTC)
X-CSE-ConnectionGUID: W3R5hys/Rmy0Yps3Qb3v4Q==
X-CSE-MsgGUID: gbv/W2U6STO6UIjvKwE1Tg==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="75069275"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="75069275"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 04:08:40 -0700
X-CSE-ConnectionGUID: c88esvYTSYuupUNX6/zYkQ==
X-CSE-MsgGUID: WJo0o7K7TG603MLiFaN08w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="140173056"
Received: from kkolacin-desk1.ger.corp.intel.com (HELO
 kkolacin-desk1.igk.intel.com) ([10.217.160.155])
 by orviesa007.jf.intel.com with ESMTP; 20 May 2025 04:08:39 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, richardcochran@gmail.com,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Milena Olech <milena.olech@intel.com>
Date: Tue, 20 May 2025 13:06:28 +0200
Message-ID: <20250520110823.1937981-9-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250520110823.1937981-6-karol.kolacinski@intel.com>
References: <20250520110823.1937981-6-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747739321; x=1779275321;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rvPdRz/sYTGHQMcSoWlf7Xu8TrXi28+sjBOoZ7Jh8/U=;
 b=IKN66+E6WRdV656zqRsK6TBfFaYEqliVfaojDE0tJ1YgUNskMJXKErAi
 oAbx5pv/9iYj67GAYyQnaNMkavFSmscoWooJ8O6+m892/KKs9tsfnJc9c
 1YvT8VxWUOOcB4mrdFRrCaya/E2sW6qGDTKyNZ0agEzhogOBKSYQwhVzo
 OQKGZG/3JFgyCzX0yS2RajSDSp3FlTbxPEnojmwtwZtnYpwzOxJpVLaIk
 4IOoaPgWnK0Pn08HrxzlfLLrSz6E2Jifd2bBO0sv8v/WIp7LANk0bH9YJ
 qXlGWNeES4udifSlxZueeBX3SHzKOHQb+PB+PF4zP6UqSbHLcFSoEaf8c
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IKN66+E6
Subject: [Intel-wired-lan] [PATCH iwl-next 3/4] ice: use spin_lock for
 sideband queue send queue
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

Sideband queue is a HW queue and has much faster completion time than
other queues.

With <5 us for read on average it is possible to use spin_lock to be
able to read/write sideband queue messages in the interrupt top half.

Add send queue lock/unlock operations and assign them based on the queue
type. Use ice_sq_spin_lock/unlock for sideband queue and
ice_sq_mutex_lock/unlock for other queues.

Reviewed-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c   |   8 +-
 drivers/net/ethernet/intel/ice/ice_common.h   |   3 +-
 drivers/net/ethernet/intel/ice/ice_controlq.c | 105 +++++++++++++++---
 drivers/net/ethernet/intel/ice/ice_controlq.h |  19 +++-
 4 files changed, 111 insertions(+), 24 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 53b9b5b54187..058c93f6429b 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (c) 2018-2023, Intel Corporation. */
+/* Copyright (c) 2018-2025, Intel Corporation. */
 
 #include "ice_common.h"
 #include "ice_sched.h"
@@ -1627,8 +1627,10 @@ ice_sq_send_cmd_retry(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 
 		memcpy(desc, &desc_cpy, sizeof(desc_cpy));
 
-		msleep(ICE_SQ_SEND_DELAY_TIME_MS);
-
+		if (cq->qtype == ICE_CTL_Q_SB)
+			udelay(ICE_CTL_Q_SQ_CMD_TIMEOUT_SPIN);
+		else
+			fsleep(ICE_CTL_Q_SQ_CMD_TIMEOUT);
 	} while (++idx < ICE_SQ_SEND_MAX_EXECUTE);
 
 	return status;
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 3f74570b99bf..b1c766cb4ec5 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (c) 2018, Intel Corporation. */
+/* Copyright (c) 2018-2025, Intel Corporation. */
 
 #ifndef _ICE_COMMON_H_
 #define _ICE_COMMON_H_
@@ -15,6 +15,7 @@
 #include "ice_switch.h"
 #include "ice_fdir.h"
 
+#define ICE_SQ_SEND_ATOMIC_DELAY_TIME_US 100
 #define ICE_SQ_SEND_DELAY_TIME_MS	10
 #define ICE_SQ_SEND_MAX_EXECUTE		3
 
diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.c b/drivers/net/ethernet/intel/ice/ice_controlq.c
index fb7e1218797c..b873a9fb3f0b 100644
--- a/drivers/net/ethernet/intel/ice/ice_controlq.c
+++ b/drivers/net/ethernet/intel/ice/ice_controlq.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright (c) 2018, Intel Corporation. */
+/* Copyright (c) 2018-2025, Intel Corporation. */
 
 #include "ice_common.h"
 
@@ -467,7 +467,7 @@ static int ice_shutdown_sq(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 	if (!cq->sq.count)
 		return -EBUSY;
 
-	mutex_lock(&cq->sq_lock);
+	cq->sq_ops.lock(&cq->sq_lock);
 
 	/* Stop processing of the control queue */
 	wr32(hw, cq->sq.head, 0);
@@ -477,7 +477,7 @@ static int ice_shutdown_sq(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 	wr32(hw, cq->sq.bah, 0);
 	cq->sq.count = 0;	/* to indicate uninitialized queue */
 
-	mutex_unlock(&cq->sq_lock);
+	cq->sq_ops.unlock(&cq->sq_lock);
 
 	/* free ring buffers and the ring itself */
 	ICE_FREE_CQ_BUFS(hw, cq, sq);
@@ -776,15 +776,75 @@ int ice_init_all_ctrlq(struct ice_hw *hw)
 	return ice_init_ctrlq(hw, ICE_CTL_Q_MAILBOX);
 }
 
+/**
+ * ice_sq_spin_lock - Call spin_lock_irqsave for union ice_sq_lock
+ * @lock: lock handle
+ */
+static void ice_sq_spin_lock(union ice_sq_lock *lock)
+	__acquires(&lock->sq_spinlock)
+{
+	spin_lock_irqsave(&lock->sq_spinlock, lock->sq_flags);
+}
+
+/**
+ * ice_sq_spin_unlock - Call spin_unlock_irqrestore for union ice_sq_lock
+ * @lock: lock handle
+ */
+static void ice_sq_spin_unlock(union ice_sq_lock *lock)
+	__releases(&lock->sq_spinlock)
+{
+	spin_unlock_irqrestore(&lock->sq_spinlock, lock->sq_flags);
+}
+
+/**
+ * ice_sq_mutex_lock - Call mutex_lock for union ice_sq_lock
+ * @lock: lock handle
+ */
+static void ice_sq_mutex_lock(union ice_sq_lock *lock)
+	__acquires(&lock->sq_mutex)
+{
+	mutex_lock(&lock->sq_mutex);
+}
+
+/**
+ * ice_sq_mutex_unlock - Call mutex_unlock for union ice_sq_lock
+ * @lock: lock handle
+ */
+static void ice_sq_mutex_unlock(union ice_sq_lock *lock)
+	__releases(&lock->sq_mutex)
+{
+	mutex_unlock(&lock->sq_mutex);
+}
+
+static struct ice_sq_ops ice_spin_ops = {
+	.lock = ice_sq_spin_lock,
+	.unlock = ice_sq_spin_unlock,
+};
+
+static struct ice_sq_ops ice_mutex_ops = {
+	.lock = ice_sq_mutex_lock,
+	.unlock = ice_sq_mutex_unlock,
+};
+
 /**
  * ice_init_ctrlq_locks - Initialize locks for a control queue
+ * @hw: pointer to the hardware structure
  * @cq: pointer to the control queue
+ * @q_type: specific control queue type
  *
  * Initializes the send and receive queue locks for a given control queue.
  */
-static void ice_init_ctrlq_locks(struct ice_ctl_q_info *cq)
+static void ice_init_ctrlq_locks(struct ice_hw *hw, struct ice_ctl_q_info *cq,
+				 enum ice_ctl_q q_type)
 {
-	mutex_init(&cq->sq_lock);
+	if (q_type == ICE_CTL_Q_SB) {
+		cq->sq_ops = ice_spin_ops;
+		spin_lock_init(&cq->sq_lock.sq_spinlock);
+	} else {
+		cq->sq_ops = ice_mutex_ops;
+		mutex_init(&cq->sq_lock.sq_mutex);
+	}
+
 	mutex_init(&cq->rq_lock);
 }
 
@@ -806,23 +866,26 @@ static void ice_init_ctrlq_locks(struct ice_ctl_q_info *cq)
  */
 int ice_create_all_ctrlq(struct ice_hw *hw)
 {
-	ice_init_ctrlq_locks(&hw->adminq);
+	ice_init_ctrlq_locks(hw, &hw->adminq, ICE_CTL_Q_ADMIN);
 	if (ice_is_sbq_supported(hw))
-		ice_init_ctrlq_locks(&hw->sbq);
-	ice_init_ctrlq_locks(&hw->mailboxq);
+		ice_init_ctrlq_locks(hw, &hw->sbq, ICE_CTL_Q_SB);
+	ice_init_ctrlq_locks(hw, &hw->mailboxq, ICE_CTL_Q_MAILBOX);
 
 	return ice_init_all_ctrlq(hw);
 }
 
 /**
  * ice_destroy_ctrlq_locks - Destroy locks for a control queue
+ * @hw: pointer to the hardware structure
  * @cq: pointer to the control queue
  *
  * Destroys the send and receive queue locks for a given control queue.
  */
-static void ice_destroy_ctrlq_locks(struct ice_ctl_q_info *cq)
+static void ice_destroy_ctrlq_locks(struct ice_hw *hw,
+				    struct ice_ctl_q_info *cq)
 {
-	mutex_destroy(&cq->sq_lock);
+	if (cq->qtype != ICE_CTL_Q_SB)
+		mutex_destroy(&cq->sq_lock.sq_mutex);
 	mutex_destroy(&cq->rq_lock);
 }
 
@@ -840,10 +903,10 @@ void ice_destroy_all_ctrlq(struct ice_hw *hw)
 	/* shut down all the control queues first */
 	ice_shutdown_all_ctrlq(hw, true);
 
-	ice_destroy_ctrlq_locks(&hw->adminq);
+	ice_destroy_ctrlq_locks(hw, &hw->adminq);
 	if (ice_is_sbq_supported(hw))
-		ice_destroy_ctrlq_locks(&hw->sbq);
-	ice_destroy_ctrlq_locks(&hw->mailboxq);
+		ice_destroy_ctrlq_locks(hw, &hw->sbq);
+	ice_destroy_ctrlq_locks(hw, &hw->mailboxq);
 }
 
 /**
@@ -972,9 +1035,15 @@ static bool ice_sq_done(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 	 */
 	udelay(5);
 
-	return !rd32_poll_timeout(hw, cq->sq.head,
-				  head, head == cq->sq.next_to_use,
-				  20, ICE_CTL_Q_SQ_CMD_TIMEOUT);
+	if (cq->qtype == ICE_CTL_Q_SB)
+		return !read_poll_timeout_atomic(rd32, head,
+						 head == cq->sq.next_to_use, 5,
+						 ICE_CTL_Q_SQ_CMD_TIMEOUT_SPIN,
+						 false, hw, cq->sq.head);
+
+	return !rd32_poll_timeout(hw, cq->sq.head, head,
+				  head == cq->sq.next_to_use, 20,
+				  ICE_CTL_Q_SQ_CMD_TIMEOUT);
 }
 
 /**
@@ -1011,7 +1080,7 @@ int ice_sq_send_cmd(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 	if (!buf && buf_size)
 		return -EINVAL;
 
-	mutex_lock(&cq->sq_lock);
+	cq->sq_ops.lock(&cq->sq_lock);
 	cq->sq_last_status = LIBIE_AQ_RC_OK;
 
 	if (!cq->sq.count) {
@@ -1132,7 +1201,7 @@ int ice_sq_send_cmd(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 	}
 
 err:
-	mutex_unlock(&cq->sq_lock);
+	cq->sq_ops.unlock(&cq->sq_lock);
 	return err;
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.h b/drivers/net/ethernet/intel/ice/ice_controlq.h
index 7c98d3a0314e..776ec57b2061 100644
--- a/drivers/net/ethernet/intel/ice/ice_controlq.h
+++ b/drivers/net/ethernet/intel/ice/ice_controlq.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (c) 2018, Intel Corporation. */
+/* Copyright (c) 2018-2025, Intel Corporation. */
 
 #ifndef _ICE_CONTROLQ_H_
 #define _ICE_CONTROLQ_H_
@@ -44,6 +44,7 @@ enum ice_ctl_q {
 
 /* Control Queue timeout settings - max delay 1s */
 #define ICE_CTL_Q_SQ_CMD_TIMEOUT	USEC_PER_SEC
+#define ICE_CTL_Q_SQ_CMD_TIMEOUT_SPIN	100
 #define ICE_CTL_Q_ADMIN_INIT_TIMEOUT	10    /* Count 10 times */
 #define ICE_CTL_Q_ADMIN_INIT_MSEC	100   /* Check every 100msec */
 
@@ -88,6 +89,19 @@ struct ice_rq_event_info {
 	u8 *msg_buf;
 };
 
+union ice_sq_lock {
+	struct mutex sq_mutex;	/* Non-atomic SQ lock. */
+	struct {
+		spinlock_t sq_spinlock;	/* Atomic SQ lock. */
+		unsigned long sq_flags;		/* Send queue IRQ flags. */
+	};
+};
+
+struct ice_sq_ops {
+	void (*lock)(union ice_sq_lock *lock);
+	void (*unlock)(union ice_sq_lock *lock);
+};
+
 /* Control Queue information */
 struct ice_ctl_q_info {
 	enum ice_ctl_q qtype;
@@ -98,7 +112,8 @@ struct ice_ctl_q_info {
 	u16 rq_buf_size;		/* receive queue buffer size */
 	u16 sq_buf_size;		/* send queue buffer size */
 	enum libie_aq_err sq_last_status;	/* last status on send queue */
-	struct mutex sq_lock;		/* Send queue lock */
+	union ice_sq_lock sq_lock;	/* Send queue lock. */
+	struct ice_sq_ops sq_ops;	/* Send queue ops. */
 	struct mutex rq_lock;		/* Receive queue lock */
 };
 
-- 
2.49.0

