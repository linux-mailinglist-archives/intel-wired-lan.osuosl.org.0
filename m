Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 57CC49E3916
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Dec 2024 12:43:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A5726407C3;
	Wed,  4 Dec 2024 11:43:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N_OaR_Tlc1rs; Wed,  4 Dec 2024 11:43:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BB0F5407A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733312626;
	bh=qOTYSXLeLG/VXXfQqMnchfUvQ+U6U+p7WeEdqM7zheA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9wKMYc7lCU8teW/ePYJZT1eJFNfnAyi5EtVnhGYEmi6nkLSMUDVckOz3iHJTcmYVj
	 HZbHa8fzAREsHsnZqQNNSRNPNwOTC2lDMhi3N4h182lAj0tZXhB2jPIkT7r5WWzI1U
	 13RSQjwYoniJBNYGwnlmEjHYncqK4owlDkb3vI9sphQS4lfZLWB3lh71mLzYcWc+v4
	 pr0eqPVmYBEoOZAa0LQNplsuwXepriMlR7Pjs1TQ1sV7TIZSAIqZPFpdOqVNNFBtqc
	 pLaZLtCaOfMgurn66kzjqNH9+u+4DbS2wRa68kN8CywrAJby8GlFNTEuntqG9iLwQe
	 OlIQfGPEA0QYw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB0F5407A6;
	Wed,  4 Dec 2024 11:43:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 272811DD1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 11:43:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1444E405F0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 11:43:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tqJ6Uo0XYy4T for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Dec 2024 11:43:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=wander@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E264C405BF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E264C405BF
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E264C405BF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 11:43:43 +0000 (UTC)
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-317-wgdQ46f1ORGI3g8c15s_sQ-1; Wed,
 04 Dec 2024 06:43:37 -0500
X-MC-Unique: wgdQ46f1ORGI3g8c15s_sQ-1
X-Mimecast-MFC-AGG-ID: wgdQ46f1ORGI3g8c15s_sQ
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id B5D851953940; Wed,  4 Dec 2024 11:43:34 +0000 (UTC)
Received: from wcosta-thinkpadt14gen4.rmtbr.csb (unknown [10.22.88.52])
 by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id CC95C3000197; Wed,  4 Dec 2024 11:43:27 +0000 (UTC)
From: Wander Lairson Costa <wander@redhat.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Clark Williams <clrkwllms@kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>, Jeff Garzik <jgarzik@redhat.com>,
 Auke Kok <auke-jan.h.kok@intel.com>,
 intel-wired-lan@lists.osuosl.org (moderated list:INTEL ETHERNET DRIVERS),
 netdev@vger.kernel.org (open list:NETWORKING DRIVERS),
 linux-kernel@vger.kernel.org (open list),
 linux-rt-devel@lists.linux.dev (open list:Real-time Linux
 (PREEMPT_RT):Keyword:PREEMPT_RT)
Cc: Wander Lairson Costa <wander@redhat.com>,
 Clark Williams <williams@redhat.com>
Date: Wed,  4 Dec 2024 08:42:25 -0300
Message-ID: <20241204114229.21452-3-wander@redhat.com>
In-Reply-To: <20241204114229.21452-1-wander@redhat.com>
References: <20241204114229.21452-1-wander@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1733312622;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qOTYSXLeLG/VXXfQqMnchfUvQ+U6U+p7WeEdqM7zheA=;
 b=ge5PeAkojdiuZAB9Ws4HY0FtglYH5Lr73dvv+G0iyh0QrkrG5h+xOY+K2AEq19441f+TRe
 hZjPzKJsy8ZPqQUId+XAqojKGgDzcQy9DhSpdjiWjIM48WqoaYpdhiQ7fhEGazp9cxCLot
 fKS2RTvNzYG/WFB9jgFfaNFN7o0H/VE=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=ge5PeAko
Subject: [Intel-wired-lan] [PATCH iwl-net 2/4] igb: introduce raw vfs_lock
 to igb_adapter
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

This change adds a raw_spinlock for the vfs_lock to the
igb_adapter structure, enabling its use in both interrupt and
preemptible contexts. This is essential for upcoming modifications
to split igb_msg_task() into interrupt-safe and preemptible-safe
parts.

The motivation for this change stems from the need to modify
igb_msix_other() to run in interrupt context under PREEMPT_RT.
Currently, igb_msg_task() contains a code path that invokes
kcalloc() with the GFP_ATOMIC flag. However, on PREEMPT_RT,
GFP_ATOMIC is not honored, making it unsafe to call allocation
functions in interrupt context. By introducing this raw spinlock,
we can safely acquire the lock in both contexts, paving the way for
the necessary restructuring of igb_msg_task().

Signed-off-by: Wander Lairson Costa <wander@redhat.com>
Suggested-by: Clark Williams <williams@redhat.com>
---
 drivers/net/ethernet/intel/igb/igb.h      |  4 ++
 drivers/net/ethernet/intel/igb/igb_main.c | 51 ++++++++++++++++++++---
 2 files changed, 50 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
index 3c2dc7bdebb50..d50c22f09d0f8 100644
--- a/drivers/net/ethernet/intel/igb/igb.h
+++ b/drivers/net/ethernet/intel/igb/igb.h
@@ -666,6 +666,10 @@ struct igb_adapter {
 	struct vf_mac_filter *vf_mac_list;
 	/* lock for VF resources */
 	spinlock_t vfs_lock;
+#ifdef CONFIG_PREEMPT_RT
+	/* Used to lock VFS in interrupt context under PREEMPT_RT */
+	raw_spinlock_t raw_vfs_lock;
+#endif
 };
 
 /* flags controlling PTP/1588 function */
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 4ca25660e876e..9b4235ec226df 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -3657,6 +3657,47 @@ static int igb_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	return err;
 }
 
+#ifdef CONFIG_PREEMPT_RT
+static __always_inline void vfs_lock_init(struct igb_adapter *adapter)
+{
+	spin_lock_init(&adapter->vfs_lock);
+	raw_spin_lock_init(&adapter->raw_vfs_lock);
+}
+
+static __always_inline void vfs_lock_irqsave(struct igb_adapter *adapter,
+					     unsigned long *flags)
+{
+	/*
+	 * Remember that under PREEMPT_RT spin_lock_irqsave
+	 * ignores the flags parameter
+	 */
+	spin_lock_irqsave(&adapter->vfs_lock, *flags);
+	raw_spin_lock_irqsave(&adapter->raw_vfs_lock, *flags);
+}
+
+static __always_inline void vfs_unlock_irqrestore(struct igb_adapter *adapter,
+						  unsigned long flags)
+{
+	raw_spin_unlock_irqrestore(&adapter->raw_vfs_lock, flags);
+	spin_unlock_irqrestore(&adapter->vfs_lock, flags);
+}
+#else
+static __always_inline void vfs_lock_init(struct igb_adapter *adapter)
+{
+	spin_lock_init(&adapter->vfs_lock);
+}
+
+static __always_inline void vfs_lock_irqsave(struct igb_adapter *adapter, unsigned long *flags)
+{
+	spin_lock_irqsave(&adapter->vfs_lock, *flags);
+}
+
+static __always_inline void vfs_unlock_irqrestore(struct igb_adapter *adapter, unsigned long flags)
+{
+	spin_unlock_irqrestore(&adapter->vfs_lock, flags);
+}
+#endif
+
 #ifdef CONFIG_PCI_IOV
 static int igb_sriov_reinit(struct pci_dev *dev)
 {
@@ -3707,9 +3748,9 @@ static int igb_disable_sriov(struct pci_dev *pdev, bool reinit)
 			pci_disable_sriov(pdev);
 			msleep(500);
 		}
-		spin_lock_irqsave(&adapter->vfs_lock, flags);
+		vfs_lock_irqsave(adapter, &flags);
 		adapter->vfs_allocated_count = 0;
-		spin_unlock_irqrestore(&adapter->vfs_lock, flags);
+		vfs_unlock_irqrestore(adapter, flags);
 		kfree(adapter->vf_mac_list);
 		adapter->vf_mac_list = NULL;
 		kfree(adapter->vf_data);
@@ -4042,7 +4083,7 @@ static int igb_sw_init(struct igb_adapter *adapter)
 	spin_lock_init(&adapter->stats64_lock);
 
 	/* init spinlock to avoid concurrency of VF resources */
-	spin_lock_init(&adapter->vfs_lock);
+	vfs_lock_init(adapter);
 #ifdef CONFIG_PCI_IOV
 	switch (hw->mac.type) {
 	case e1000_82576:
@@ -8035,7 +8076,7 @@ static void igb_msg_task(struct igb_adapter *adapter)
 	unsigned long flags;
 	u32 vf;
 
-	spin_lock_irqsave(&adapter->vfs_lock, flags);
+	vfs_lock_irqsave(adapter, &flags);
 	for (vf = 0; vf < adapter->vfs_allocated_count; vf++) {
 		/* process any reset requests */
 		if (!igb_check_for_rst(hw, vf))
@@ -8049,7 +8090,7 @@ static void igb_msg_task(struct igb_adapter *adapter)
 		if (!igb_check_for_ack(hw, vf))
 			igb_rcv_ack_from_vf(adapter, vf);
 	}
-	spin_unlock_irqrestore(&adapter->vfs_lock, flags);
+	vfs_unlock_irqrestore(adapter, flags);
 }
 
 /**
-- 
2.47.0

