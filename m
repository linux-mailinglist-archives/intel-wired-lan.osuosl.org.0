Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 472CAAD7952
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Jun 2025 19:49:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BEF316140E;
	Thu, 12 Jun 2025 17:49:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QugnkeTHKaoA; Thu, 12 Jun 2025 17:49:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CCDFF613E8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749750544;
	bh=Un5TkhIT/Wz9HhAfS9h6X7WbqAP8z3vDGkdoB/8g3Cc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mwzYk4CBLo8/c/uvFERXPZygQkzgXr9NTjhqm3XhIIt84HyRuHNByM6M3zu0tnqPH
	 ioVkfp3uoOu8J5nBrsH7nCprS/FhOEGtIGnfRM4DZW8BWORUJ3/EhUmFgqdiGgPy5H
	 XDg/gaUV2RrW+Wrg3Uj66DGAek9Li6StACma50aER+enTLTO+zr7QC80K0nbS1RWGX
	 7N2MKpkwfcC3WlGPjAwMnGvcnKYztWNBaer8WM32WPsRTIjIPLYd8uU1nddWknL18P
	 e2aZN7QEahDaXxQD6N0ROFpd7AVhYjx+FL/oSPC7FJb1gB/gmnmBwHfTx+mio1HEjd
	 GTrWNA8ZrWr5w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CCDFF613E8;
	Thu, 12 Jun 2025 17:49:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 281F61BD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 16:10:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1A1A5821FC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 16:10:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8qNryyYjenU0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Jun 2025 16:10:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 68331821A4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 68331821A4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 68331821A4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 16:10:04 +0000 (UTC)
X-CSE-ConnectionGUID: QMLGHLtZQRymHGp/JoLV9Q==
X-CSE-MsgGUID: bzpuFN/rS0G56bhQt+8nRQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="55738965"
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="55738965"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 09:10:04 -0700
X-CSE-ConnectionGUID: 9ol9yc4lQG+ORUoxU94H9g==
X-CSE-MsgGUID: e0+72EwMSNmSzuoU3tcmig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="148468585"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa008.jf.intel.com with ESMTP; 12 Jun 2025 09:10:00 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Simon Horman <horms@kernel.org>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, bpf@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Thu, 12 Jun 2025 18:02:25 +0200
Message-ID: <20250612160234.68682-9-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250612160234.68682-1-aleksander.lobakin@intel.com>
References: <20250612160234.68682-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 12 Jun 2025 17:48:58 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749744605; x=1781280605;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=v1+nkxODlsKIr/NMccOdNVICiXIi9HZzBieMNXo1diQ=;
 b=gBk6QJzY08OcMk9QJeqhKciqxTP1NQ5QhsTcYfqp0QgGfWF5ymUvF0r/
 8OqGXkT8AUFVou+9UGnWwCya7OH7bkev8jeRX/ogFVfTbEbpoiBa/Hj12
 5epiEXlvG7yFwHV94xdJbno3eMIGtaM/egXz6dA5q6Y/YoKka/LbwLE5V
 F6pZw8egnAGBqvAWX1BlUuiKSi5n7MITTL4NFJ/w882vmZVFe9XtDBGXy
 PB9okDBvWwOIM73mFd5dNhK153UKbTqHJw3VlwQJU5VcrB30lHlqKH7B0
 5wetIz65/2mHft+l9A7tvOGn/LK/zK3q72TyN+U5zNt02JSJt0buC+0/E
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gBk6QJzY
Subject: [Intel-wired-lan] [PATCH iwl-next v2 08/17] libeth: xdp: add XDPSQ
 cleanup timers
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

When XDP Tx queues are not interrupt-driven but use lazy cleaning,
i.e. only when there are less than `threshold` free descriptors left,
we also need cleanup timers to avoid &xdp_buff and &xdp_frame stall
for too long, especially with Page Pool (it warns every about inflight
pages every 60 second).
Let's say we sent 256 frames and don't need to send more, but we clean
only when the number of pending items >= 384. In that case, those 256
will stall until 128 more are sent. For this, add simple helpers to
run a timer which will clean the queue regardless, after 1 second of
the last send.
The timer is triggered when finalizing the queue. As long as there is
regular active traffic, the timer doesn't fire.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 include/net/libeth/types.h              | 21 ++++++++-
 include/net/libeth/xdp.h                | 57 +++++++++++++++++++++++++
 drivers/net/ethernet/intel/libeth/xdp.c | 23 ++++++++++
 3 files changed, 100 insertions(+), 1 deletion(-)

diff --git a/include/net/libeth/types.h b/include/net/libeth/types.h
index abfccae1a346..4df703a9eb59 100644
--- a/include/net/libeth/types.h
+++ b/include/net/libeth/types.h
@@ -4,7 +4,7 @@
 #ifndef __LIBETH_TYPES_H
 #define __LIBETH_TYPES_H
 
-#include <linux/spinlock.h>
+#include <linux/workqueue.h>
 
 /**
  * struct libeth_sq_napi_stats - "hot" counters to update in Tx completion loop
@@ -60,4 +60,23 @@ struct libeth_xdpsq_lock {
 	bool				share;
 };
 
+/* XDPSQ clean-up timers */
+
+/**
+ * struct libeth_xdpsq_timer - timer for cleaning up XDPSQs w/o interrupts
+ * @xdpsq: queue this timer belongs to
+ * @lock: lock for the queue
+ * @dwork: work performing cleanups
+ *
+ * XDPSQs not using interrupts but lazy cleaning, i.e. only when there's no
+ * space for sending the current queued frame/bulk, must fire up timers to
+ * make sure there are no stale buffers to free.
+ */
+struct libeth_xdpsq_timer {
+	void				*xdpsq;
+	struct libeth_xdpsq_lock	*lock;
+
+	struct delayed_work		dwork;
+};
+
 #endif /* __LIBETH_TYPES_H */
diff --git a/include/net/libeth/xdp.h b/include/net/libeth/xdp.h
index 20977fdfd6c9..22bd038decb6 100644
--- a/include/net/libeth/xdp.h
+++ b/include/net/libeth/xdp.h
@@ -177,6 +177,63 @@ static inline void libeth_xdpsq_unlock(struct libeth_xdpsq_lock *lock)
 		__libeth_xdpsq_unlock(lock);
 }
 
+/* XDPSQ clean-up timers */
+
+void libeth_xdpsq_init_timer(struct libeth_xdpsq_timer *timer, void *xdpsq,
+			     struct libeth_xdpsq_lock *lock,
+			     void (*poll)(struct work_struct *work));
+
+/**
+ * libeth_xdpsq_deinit_timer - deinitialize &libeth_xdpsq_timer
+ * @timer: timer to deinitialize
+ *
+ * Flush and disable the underlying workqueue.
+ */
+static inline void libeth_xdpsq_deinit_timer(struct libeth_xdpsq_timer *timer)
+{
+	cancel_delayed_work_sync(&timer->dwork);
+}
+
+/**
+ * libeth_xdpsq_queue_timer - run &libeth_xdpsq_timer
+ * @timer: timer to queue
+ *
+ * Should be called after the queue was filled and the transmission was run
+ * to complete the pending buffers if no further sending will be done in a
+ * second (-> lazy cleaning won't happen).
+ * If the timer was already run, it will be requeued back to one second
+ * timeout again.
+ */
+static inline void libeth_xdpsq_queue_timer(struct libeth_xdpsq_timer *timer)
+{
+	mod_delayed_work_on(raw_smp_processor_id(), system_bh_highpri_wq,
+			    &timer->dwork, HZ);
+}
+
+/**
+ * libeth_xdpsq_run_timer - wrapper to run a queue clean-up on a timer event
+ * @work: workqueue belonging to the corresponding timer
+ * @poll: driver-specific completion queue poll function
+ *
+ * Run the polling function on the locked queue and requeue the timer if
+ * there's more work to do.
+ * Designed to be used via LIBETH_XDP_DEFINE_TIMER() below.
+ */
+static __always_inline void
+libeth_xdpsq_run_timer(struct work_struct *work,
+		       u32 (*poll)(void *xdpsq, u32 budget))
+{
+	struct libeth_xdpsq_timer *timer = container_of(work, typeof(*timer),
+							dwork.work);
+
+	libeth_xdpsq_lock(timer->lock);
+
+	if (poll(timer->xdpsq, U32_MAX))
+		libeth_xdpsq_queue_timer(timer);
+
+	libeth_xdpsq_unlock(timer->lock);
+}
+
 /* Common Tx bits */
 
 /**
diff --git a/drivers/net/ethernet/intel/libeth/xdp.c b/drivers/net/ethernet/intel/libeth/xdp.c
index 0f08dd405190..6f62603cf568 100644
--- a/drivers/net/ethernet/intel/libeth/xdp.c
+++ b/drivers/net/ethernet/intel/libeth/xdp.c
@@ -56,6 +56,29 @@ __libeth_xdpsq_unlock(struct libeth_xdpsq_lock *lock)
 }
 EXPORT_SYMBOL_GPL(__libeth_xdpsq_unlock);
 
+/* XDPSQ clean-up timers */
+
+/**
+ * libeth_xdpsq_init_timer - initialize an XDPSQ clean-up timer
+ * @timer: timer to initialize
+ * @xdpsq: queue this timer belongs to
+ * @lock: corresponding XDPSQ lock
+ * @poll: queue polling/completion function
+ *
+ * XDPSQ clean-up timers must be set up before using at the queue configuration
+ * time. Set the required pointers and the cleaning callback.
+ */
+void libeth_xdpsq_init_timer(struct libeth_xdpsq_timer *timer, void *xdpsq,
+			     struct libeth_xdpsq_lock *lock,
+			     void (*poll)(struct work_struct *work))
+{
+	timer->xdpsq = xdpsq;
+	timer->lock = lock;
+
+	INIT_DELAYED_WORK(&timer->dwork, poll);
+}
+EXPORT_SYMBOL_GPL(libeth_xdpsq_init_timer);
+
 /* ``XDP_TX`` bulking */
 
 static void __cold
-- 
2.49.0

