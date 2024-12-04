Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C689E3913
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Dec 2024 12:43:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 85732607A0;
	Wed,  4 Dec 2024 11:43:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lJ0QSbj5vLVX; Wed,  4 Dec 2024 11:43:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DFC8560775
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733312617;
	bh=YjLiIgA1heSf6FeldDRqyic0hKMQLJvylr1VcRItvD4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dVuPG88IQqwzrk2jisa5A2oxsbV2cu/nIIbyCZZ1AO30/ZPSVz3eiXfVNzovZOleb
	 HOKVzDydlg01wWuLTreNS8dH9o76SIqaVrXvN7FwlwB+Nf+4DarHJGcwqetswwl+4b
	 35UFX++rYfeMp2uKzurLqbpwlhM4Q1X8I24AhMQuHmQglMQh92MPZN6xRHrIYDcx6i
	 jAgW9qhe8Rju4YqI6IZJ/KUKbrJEgCei2TapjwYc0MyQtb29i1AWP4I8kv3AkcpUrL
	 zUuWMBhaCDl+4MeGhyDJpT18PtT+VVire7r4DTLuJwHNiuM8nznFTUiQrxYCAT3IS3
	 KGqBa2ek0ODbw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DFC8560775;
	Wed,  4 Dec 2024 11:43:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id CC3E31DD1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 11:43:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AC5EC606CC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 11:43:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id byJU6lqQUBZM for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Dec 2024 11:43:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=wander@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B4A9D6075D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B4A9D6075D
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B4A9D6075D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 11:43:33 +0000 (UTC)
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-439-CrQUMUH4NIapA6bZIKoFvA-1; Wed,
 04 Dec 2024 06:43:29 -0500
X-MC-Unique: CrQUMUH4NIapA6bZIKoFvA-1
X-Mimecast-MFC-AGG-ID: CrQUMUH4NIapA6bZIKoFvA
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id D233B1955F68; Wed,  4 Dec 2024 11:43:26 +0000 (UTC)
Received: from wcosta-thinkpadt14gen4.rmtbr.csb (unknown [10.22.88.52])
 by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id B95643000197; Wed,  4 Dec 2024 11:43:20 +0000 (UTC)
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
Date: Wed,  4 Dec 2024 08:42:24 -0300
Message-ID: <20241204114229.21452-2-wander@redhat.com>
In-Reply-To: <20241204114229.21452-1-wander@redhat.com>
References: <20241204114229.21452-1-wander@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1733312612;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YjLiIgA1heSf6FeldDRqyic0hKMQLJvylr1VcRItvD4=;
 b=CXG5Oz80r9ohMkYVtSjngwwuEyVEJ5+svV5vkCi+ulgNzp/NyxibFt0duWOiWUjyDBPFRx
 eKxPKeA7S27P1VYnhXNAV6pmjixZPBSy9JGs1oc7oB5jCCH4DZHP4nBidRogVZ35FZoLYr
 clNEG/JBFPlFY97E/gko/4tU6Ivu7r8=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=CXG5Oz80
Subject: [Intel-wired-lan] [PATCH iwl-net 1/4] igb: narrow scope of vfs_lock
 in SR-IOV cleanup
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

The adapter->vfs_lock currently protects critical sections shared between
igb_disable_sriov() and igb_msg_task(). Since igb_msg_task() — which is
invoked solely by the igb_msix_other() ISR—only proceeds when
adapter->vfs_allocated_count > 0, we can reduce the lock scope further.

By moving the assignment adapter->vfs_allocated_count = 0 to the start of the
cleanup code in igb_disable_sriov(), we can restrict the spinlock protection
solely to this assignment. This change removes kfree() calls from within the
locked section, simplifying lock management.

Once kfree() is outside the vfs_lock scope, it becomes possible to safely
convert vfs_lock to a raw_spin_lock.

Signed-off-by: Wander Lairson Costa <wander@redhat.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 08578980b6518..4ca25660e876e 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -3708,12 +3708,12 @@ static int igb_disable_sriov(struct pci_dev *pdev, bool reinit)
 			msleep(500);
 		}
 		spin_lock_irqsave(&adapter->vfs_lock, flags);
+		adapter->vfs_allocated_count = 0;
+		spin_unlock_irqrestore(&adapter->vfs_lock, flags);
 		kfree(adapter->vf_mac_list);
 		adapter->vf_mac_list = NULL;
 		kfree(adapter->vf_data);
 		adapter->vf_data = NULL;
-		adapter->vfs_allocated_count = 0;
-		spin_unlock_irqrestore(&adapter->vfs_lock, flags);
 		wr32(E1000_IOVCTL, E1000_IOVCTL_REUSE_VFQ);
 		wrfl();
 		msleep(100);
-- 
2.47.0

