Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DE7F49E3919
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Dec 2024 12:43:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8CA5B407CE;
	Wed,  4 Dec 2024 11:43:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LCD2lp9ogCXc; Wed,  4 Dec 2024 11:43:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 47DA9407D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733312632;
	bh=gAAUCxkswU4jgn9KaJsquRaa+KOEK5hfScrof0xevFg=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4ZcSTgBF7O2rfMP6y/Djwbea5zW/MI9zYb1uJ/Uquzb+NtpyKOqA6BhjxH8YfyLWZ
	 RbWjqZ8ux31fislQyduJjtn7HuGmmQMCHFH5kfjxC+WKKOlQung4oZg7A8aq7QK8SY
	 +WP54UzejNqIZU0UdO67/giVXwqeCdXCnxpiWtyVXpUhlMzdUtTYm3UmjuRAB6RYAs
	 8oA+S2aPawguZaBl/G3ct3MaMgM8nGSwz39XYQeAM5WBMNDXk9BNYRb/QO4+HMcHjD
	 EbLn38KFe4uE0Xaq7kR+mquNlB41QT6NsCL5rKJCVVSDLxcbOstubl64VKMLROsRju
	 KfpPO7QDcoHqg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 47DA9407D1;
	Wed,  4 Dec 2024 11:43:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id D2B4A1DAA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 11:43:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C165B6069C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 11:43:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yaNr7he7JBic for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Dec 2024 11:43:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=wander@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EAA9A6075D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EAA9A6075D
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EAA9A6075D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 11:43:48 +0000 (UTC)
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-177-Nb3gPDAUN-20-dKbI4VyIA-1; Wed,
 04 Dec 2024 06:43:44 -0500
X-MC-Unique: Nb3gPDAUN-20-dKbI4VyIA-1
X-Mimecast-MFC-AGG-ID: Nb3gPDAUN-20-dKbI4VyIA
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 15FA91955D83; Wed,  4 Dec 2024 11:43:42 +0000 (UTC)
Received: from wcosta-thinkpadt14gen4.rmtbr.csb (unknown [10.22.88.52])
 by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id D0B133000197; Wed,  4 Dec 2024 11:43:35 +0000 (UTC)
From: Wander Lairson Costa <wander@redhat.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Clark Williams <clrkwllms@kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>, Auke Kok <auke-jan.h.kok@intel.com>,
 Jeff Garzik <jgarzik@redhat.com>,
 intel-wired-lan@lists.osuosl.org (moderated list:INTEL ETHERNET DRIVERS),
 netdev@vger.kernel.org (open list:NETWORKING DRIVERS),
 linux-kernel@vger.kernel.org (open list),
 linux-rt-devel@lists.linux.dev (open list:Real-time Linux
 (PREEMPT_RT):Keyword:PREEMPT_RT)
Cc: Wander Lairson Costa <wander@redhat.com>
Date: Wed,  4 Dec 2024 08:42:26 -0300
Message-ID: <20241204114229.21452-4-wander@redhat.com>
In-Reply-To: <20241204114229.21452-1-wander@redhat.com>
References: <20241204114229.21452-1-wander@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1733312628;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gAAUCxkswU4jgn9KaJsquRaa+KOEK5hfScrof0xevFg=;
 b=KjVH8kMkZGIU/BGSWhrumj+CNMKK0lmaOSroUwK1v+5gDO9fbXKaufXELN5pxOwunThVvw
 8N5JTBLHpr0QLxx+CTLOZt6kGGVfoJbJNuqkU/bZYb0waK10I1bbQmc4ZgDCZ5FVl+1BTL
 EW/6FeEwzzgj6mPYcDKYRE7brHTuVJk=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=KjVH8kMk
Subject: [Intel-wired-lan] [PATCH iwl-net 3/4] igb: split igb_msg_task()
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

From the perspective of PREEMPT_RT, igb_msg_task() invokes functions
that are a mix of IRQ-safe and non-IRQ-safe operations.

To address this, we separate igb_msg_task() into distinct IRQ-safe and
preemptible-safe components. This is a preparatory step for upcoming
commits, where the igb_msix_other interrupt handler will be split into
IRQ and threaded handlers, each invoking the appropriate part of the
newly divided igb_msg_task().

Signed-off-by: Wander Lairson Costa <wander@redhat.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 88 +++++++++++++++++++++--
 1 file changed, 81 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 9b4235ec226df..5828831fd29c2 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -149,6 +149,8 @@ static int igb_vlan_rx_kill_vid(struct net_device *, __be16, u16);
 static void igb_restore_vlan(struct igb_adapter *);
 static void igb_rar_set_index(struct igb_adapter *, u32);
 static void igb_ping_all_vfs(struct igb_adapter *);
+static void igb_msg_task_irq_safe(struct igb_adapter *adapter);
+static void igb_msg_task_preemptible_safe(struct igb_adapter *adapter);
 static void igb_msg_task(struct igb_adapter *);
 static void igb_vmm_control(struct igb_adapter *);
 static int igb_set_vf_mac(struct igb_adapter *, int, unsigned char *);
@@ -3681,6 +3683,30 @@ static __always_inline void vfs_unlock_irqrestore(struct igb_adapter *adapter,
 	raw_spin_unlock_irqrestore(&adapter->raw_vfs_lock, flags);
 	spin_unlock_irqrestore(&adapter->vfs_lock, flags);
 }
+
+static __always_inline void vfs_spin_lock_irqsave(struct igb_adapter *adapter,
+						  unsigned long *flags)
+{
+	spin_lock_irqsave(&adapter->vfs_lock, *flags);
+}
+
+static __always_inline void vfs_spin_unlock_irqrestore(struct igb_adapter *adapter,
+						       unsigned long flags)
+{
+	spin_unlock_irqrestore(&adapter->vfs_lock, flags);
+}
+
+static __always_inline void vfs_raw_spin_lock_irqsave(struct igb_adapter *adapter,
+						      unsigned long *flags)
+{
+	raw_spin_lock_irqsave(&adapter->raw_vfs_lock, *flags);
+}
+
+static __always_inline void vfs_raw_spin_unlock_irqrestore(struct igb_adapter *adapter,
+							   unsigned long flags)
+{
+	raw_spin_unlock_irqrestore(&adapter->raw_vfs_lock, flags);
+}
 #else
 static __always_inline void vfs_lock_init(struct igb_adapter *adapter)
 {
@@ -3696,6 +3722,30 @@ static __always_inline void vfs_unlock_irqrestore(struct igb_adapter *adapter, u
 {
 	spin_unlock_irqrestore(&adapter->vfs_lock, flags);
 }
+
+static __always_inline void vfs_spin_lock_irqsave(struct igb_adapter *adapter,
+						  unsigned long *flags)
+{
+	spin_lock_irqsave(&adapter->vfs_lock, *flags);
+}
+
+static __always_inline void vfs_spin_unlock_irqrestore(struct igb_adapter *adapter,
+						       unsigned long flags)
+{
+	spin_unlock_irqrestore(&adapter->vfs_lock, flags);
+}
+
+static __always_inline void vfs_raw_spin_lock_irqsave(struct igb_adapter *adapter,
+						      unsigned long *flags)
+{
+	spin_lock_irqsave(&adapter->vfs_lock, *flags);
+}
+
+static __always_inline void vfs_raw_spin_unlock_irqrestore(struct igb_adapter *adapter,
+							   unsigned long flags)
+{
+	spin_unlock_irqrestore(&adapter->vfs_lock, flags);
+}
 #endif
 
 #ifdef CONFIG_PCI_IOV
@@ -8070,27 +8120,51 @@ static void igb_rcv_msg_from_vf(struct igb_adapter *adapter, u32 vf)
 	igb_unlock_mbx(hw, vf);
 }
 
-static void igb_msg_task(struct igb_adapter *adapter)
+/*
+ * Note: the split of irq and preempible safe parts of igb_msg_task()
+ * only makes sense under PREEMPT_RT.
+ * The root cause of igb_rcv_msg_from_vf() is not IRQ safe is because
+ * it calls kcalloc with GFP_ATOMIC, but GFP_ATOMIC is not IRQ safe
+ * in PREEMPT_RT.
+ */
+static void igb_msg_task_irq_safe(struct igb_adapter *adapter)
 {
 	struct e1000_hw *hw = &adapter->hw;
 	unsigned long flags;
 	u32 vf;
 
-	vfs_lock_irqsave(adapter, &flags);
+	vfs_raw_spin_lock_irqsave(adapter, &flags);
 	for (vf = 0; vf < adapter->vfs_allocated_count; vf++) {
 		/* process any reset requests */
 		if (!igb_check_for_rst(hw, vf))
 			igb_vf_reset_event(adapter, vf);
 
-		/* process any messages pending */
-		if (!igb_check_for_msg(hw, vf))
-			igb_rcv_msg_from_vf(adapter, vf);
-
 		/* process any acks */
 		if (!igb_check_for_ack(hw, vf))
 			igb_rcv_ack_from_vf(adapter, vf);
 	}
-	vfs_unlock_irqrestore(adapter, flags);
+	vfs_raw_spin_unlock_irqrestore(adapter, flags);
+}
+
+static void igb_msg_task_preemptible_safe(struct igb_adapter *adapter)
+{
+	struct e1000_hw *hw = &adapter->hw;
+	unsigned long flags;
+	u32 vf;
+
+	vfs_spin_lock_irqsave(adapter, &flags);
+	for (vf = 0; vf < adapter->vfs_allocated_count; vf++) {
+		/* process any messages pending */
+		if (!igb_check_for_msg(hw, vf))
+			igb_rcv_msg_from_vf(adapter, vf);
+	}
+	vfs_spin_unlock_irqrestore(adapter, flags);
+}
+
+static __always_inline void igb_msg_task(struct igb_adapter *adapter)
+{
+	igb_msg_task_irq_safe(adapter);
+	igb_msg_task_preemptible_safe(adapter);
 }
 
 /**
-- 
2.47.0

