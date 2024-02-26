Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B0048679AB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Feb 2024 16:12:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B1E6B407E8;
	Mon, 26 Feb 2024 15:12:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uLt490CasXVg; Mon, 26 Feb 2024 15:12:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 84C47404D9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708960330;
	bh=G/FILp3GfaUy8dt5HQEFRSG4sYMmu9jGA+QnSeAHKRE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VuvCsA+66eizp/CEC2+Ds8yEyp8NnLoPQaFYwZHl6yNXkpdohDCmztklLbVnGHRDo
	 8vg+N30mFDQrfP4LIXXRrfVzGQrIPwNvlKAha+ebPJz7k3wDp99OJTq47TAquAFtat
	 oGUeQD6V2RXWsyqboTTW2yVGW2AI4KOz0A7H1nQMsqXRYLi/am2B2yFMQRqZ5dZEQc
	 i4bHrcb33ZEu+nZnGENKoXyA8ufHLPf5toyZb5lM9ofrcJqTGpU4FLxMLAwFUcF4MY
	 J4tqC6jRR+dvgbGB1gCIRcdBqewPkOFR72qCiePEHWH8N+DWaJ87dThiB0um/6H35u
	 JDuqSUTYMbc0Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 84C47404D9;
	Mon, 26 Feb 2024 15:12:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1FC181BF328
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 15:12:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A2A1981EF2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 15:12:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5pjWFnPmXJyM for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Feb 2024 15:12:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7172B81EE1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7172B81EE1
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7172B81EE1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 15:12:03 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-480-iHgnKbiTNuCj5EEzxOiHqw-1; Mon, 26 Feb 2024 10:11:57 -0500
X-MC-Unique: iHgnKbiTNuCj5EEzxOiHqw-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
 [10.11.54.9])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 67CDD85A588;
 Mon, 26 Feb 2024 15:11:56 +0000 (UTC)
Received: from toolbox.redhat.com (unknown [10.45.226.57])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BE5EB492BC6;
 Mon, 26 Feb 2024 15:11:54 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 26 Feb 2024 16:11:24 +0100
Message-ID: <20240226151125.45391-3-mschmidt@redhat.com>
In-Reply-To: <20240226151125.45391-1-mschmidt@redhat.com>
References: <20240226151125.45391-1-mschmidt@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1708960322;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=G/FILp3GfaUy8dt5HQEFRSG4sYMmu9jGA+QnSeAHKRE=;
 b=TACQ8sJyKHbfSG9QEus7+mZ/TP5BMysv0jDsC/7xYxGqty5XnG+kxtDVPt0OHTLHeMlUlJ
 6iwjAuc/VOuZZoTXErTCcI4evPEUD7YQRQlgYVx+LI6Zdyx2zT/84H+gBeH7L9K1swU6HL
 O0xR9mFfn7yFziswfxMs8zfpeDjWyAw=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=TACQ8sJy
Subject: [Intel-wired-lan] [PATCH net-next 2/3] ice: avoid the PTP hardware
 semaphore in gettimex64 path
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
Cc: netdev@vger.kernel.org, Richard Cochran <richardcochran@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The PTP hardware semaphore (PFTSYN_SEM) is used to synchronize
operations that program the PTP timers. The operations involve issuing
commands to the sideband queue. The E810 does not have a hardware
sideband queue, so the admin queue is used. The admin queue is slow.
I have observed delays in hundreds of milliseconds waiting for
ice_sq_done.

When phc2sys reads the time from the ice PTP clock and PFTSYN_SEM is
held by a task performing one of the slow operations, ice_ptp_lock can
easily time out. phc2sys gets -EBUSY and the kernel prints:
  ice 0000:XX:YY.0: PTP failed to get time
These messages appear once every few seconds, causing log spam.

The E810 datasheet recommends an algorithm for reading the upper 64 bits
of the GLTSYN_TIME register. It matches what's implemented in
ice_ptp_read_src_clk_reg. It is robust against wrap-around, but not
necessarily against the concurrent setting of the register (with
GLTSYN_CMD_{INIT,ADJ}_TIME commands). Perhaps that's why
ice_ptp_gettimex64 also takes PFTSYN_SEM.

The race with time setters can be prevented without relying on the PTP
hardware semaphore. Using the "ice_adapter" from the previous patch,
we can have a common spinlock for the PFs that share the clock hardware.
It will protect the reading and writing to the GLTSYN_TIME register.
The writing is performed indirectly, by the hardware, as a result of
the driver writing GLTSYN_CMD_SYNC in ice_ptp_exec_tmr_cmd. I wasn't
sure if the ice_flush there is enough to make sure GLTSYN_TIME has been
updated, but it works well in my testing.

My test code can be seen here:
https://gitlab.com/mschmidt2/linux/-/commits/ice-ptp-host-side-lock
It consists of:
 - kernel threads reading the time in a busy loop and looking at the
   deltas between consecutive values, reporting new maxima.
   in the consecutive values;
 - a shell script that sets the time repeatedly;
 - a bpftrace probe to produce a histogram of the measured deltas.
Without the spinlock ptp_gltsyn_time_lock, it is easy to see tearing.
Deltas in the [2G, 4G) range appear in the histograms.
With the spinlock added, there is no tearing and the biggest delta I saw
was in the range [1M, 2M), that is under 2 ms.

Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
---
 drivers/net/ethernet/intel/ice/ice_adapter.c | 2 ++
 drivers/net/ethernet/intel/ice/ice_adapter.h | 6 ++++++
 drivers/net/ethernet/intel/ice/ice_ptp.c     | 8 +-------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c  | 3 +++
 4 files changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.c b/drivers/net/ethernet/intel/ice/ice_adapter.c
index deb063401238..4b9f5d29811c 100644
--- a/drivers/net/ethernet/intel/ice/ice_adapter.c
+++ b/drivers/net/ethernet/intel/ice/ice_adapter.c
@@ -5,6 +5,7 @@
 #include <linux/mutex.h>
 #include <linux/pci.h>
 #include <linux/slab.h>
+#include <linux/spinlock.h>
 #include <linux/xarray.h>
 #include "ice_adapter.h"
 
@@ -38,6 +39,7 @@ struct ice_adapter *ice_adapter_get(const struct pci_dev *pdev)
 	if (!a)
 		return NULL;
 
+	spin_lock_init(&a->ptp_gltsyn_time_lock);
 	refcount_set(&a->refcount, 1);
 
 	if (xa_is_err(xa_store(&ice_adapters, index, a, GFP_KERNEL))) {
diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.h b/drivers/net/ethernet/intel/ice/ice_adapter.h
index cb5a02eb24c1..9d11014ec02f 100644
--- a/drivers/net/ethernet/intel/ice/ice_adapter.h
+++ b/drivers/net/ethernet/intel/ice/ice_adapter.h
@@ -4,15 +4,21 @@
 #ifndef _ICE_ADAPTER_H_
 #define _ICE_ADAPTER_H_
 
+#include <linux/spinlock_types.h>
 #include <linux/refcount_types.h>
 
 struct pci_dev;
 
 /**
  * struct ice_adapter - PCI adapter resources shared across PFs
+ * @ptp_gltsyn_time_lock: Spinlock protecting access to the GLTSYN_TIME
+ *                        register of the PTP clock.
  * @refcount: Reference count. struct ice_pf objects hold the references.
  */
 struct ice_adapter {
+	/* For access to the GLTSYN_TIME register */
+	spinlock_t ptp_gltsyn_time_lock;
+
 	refcount_t refcount;
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index c11eba07283c..b6c7246245c6 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -374,6 +374,7 @@ ice_ptp_read_src_clk_reg(struct ice_pf *pf, struct ptp_system_timestamp *sts)
 	u8 tmr_idx;
 
 	tmr_idx = ice_get_ptp_src_clock_index(hw);
+	guard(spinlock_irqsave)(&pf->adapter->ptp_gltsyn_time_lock);
 	/* Read the system timestamp pre PHC read */
 	ptp_read_system_prets(sts);
 
@@ -1925,15 +1926,8 @@ ice_ptp_gettimex64(struct ptp_clock_info *info, struct timespec64 *ts,
 		   struct ptp_system_timestamp *sts)
 {
 	struct ice_pf *pf = ptp_info_to_pf(info);
-	struct ice_hw *hw = &pf->hw;
-
-	if (!ice_ptp_lock(hw)) {
-		dev_err(ice_pf_to_dev(pf), "PTP failed to get time\n");
-		return -EBUSY;
-	}
 
 	ice_ptp_read_time(pf, ts, sts);
-	ice_ptp_unlock(hw);
 
 	return 0;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 187ce9b54e1a..a47dbbfadb74 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -274,6 +274,9 @@ void ice_ptp_src_cmd(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
  */
 static void ice_ptp_exec_tmr_cmd(struct ice_hw *hw)
 {
+	struct ice_pf *pf = container_of(hw, struct ice_pf, hw);
+
+	guard(spinlock_irqsave)(&pf->adapter->ptp_gltsyn_time_lock);
 	wr32(hw, GLTSYN_CMD_SYNC, SYNC_EXEC_CMD);
 	ice_flush(hw);
 }
-- 
2.43.2

