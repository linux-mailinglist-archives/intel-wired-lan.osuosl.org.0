Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83BDE97D9F0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Sep 2024 22:02:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3603C402E3;
	Fri, 20 Sep 2024 20:02:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dEMmZlWos72a; Fri, 20 Sep 2024 20:02:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5907440131
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726862530;
	bh=llCgb+Xxiy1ho4t2E4Qpu90griCJANrCZWM8/TQaOmo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jF3w2XmPl0/50vDJvpFQRx5fXe7CUD7noPi60duF/bEq3KRBklFCVoRUjLLwgr/Am
	 Tn287SZyYyXX+T2sW7RuaKssJQxmsKD/F3RgCq/nLP55WI18Msj1+YO1t+NHoqizpt
	 MDfSUyis9UfbqFwxdjVFpclGkjowEJgPsF5GKWGQR7rV7saZY/DmvLtInkdf7wRoSV
	 NCWoTz5Imej+gfsJL7n0QEMt8f1eaolYHWk02Ltz9MWhyAJ/pkmKAdZpXWxYRJ/cgK
	 ibfH1QldCcTPNkUGHxTo6JbpDCH1pE/biPRNMzbKHkZv53c5jWrwWXTeFKPiQmcaHp
	 RRAE699JD9HVw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5907440131;
	Fri, 20 Sep 2024 20:02:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F3FA91BF593
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2024 19:00:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E23BD8489F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2024 19:00:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iaEJLozrTe4E for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Sep 2024 19:00:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=wander@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 04283849C8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 04283849C8
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 04283849C8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2024 19:00:02 +0000 (UTC)
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-607-uzQqO-ASNdmooo6JDg1orw-1; Fri,
 20 Sep 2024 14:59:58 -0400
X-MC-Unique: uzQqO-ASNdmooo6JDg1orw-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (unknown
 [10.30.177.40])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id BD98D1979049; Fri, 20 Sep 2024 18:59:56 +0000 (UTC)
Received: from wcosta-thinkpadt14gen4.rmtbr.csb (unknown [10.22.33.41])
 by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 5EA9E19560AA; Fri, 20 Sep 2024 18:59:53 +0000 (UTC)
From: Wander Lairson Costa <wander@redhat.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org (moderated list:INTEL ETHERNET DRIVERS),
 netdev@vger.kernel.org (open list:NETWORKING DRIVERS),
 linux-kernel@vger.kernel.org (open list)
Date: Fri, 20 Sep 2024 15:59:17 -0300
Message-ID: <20240920185918.616302-3-wander@redhat.com>
In-Reply-To: <20240920185918.616302-1-wander@redhat.com>
References: <20240920185918.616302-1-wander@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mailman-Approved-At: Fri, 20 Sep 2024 20:02:05 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1726858802;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=llCgb+Xxiy1ho4t2E4Qpu90griCJANrCZWM8/TQaOmo=;
 b=HGu4njDi2K4CT/wzNseCOGxOhgGlXAq2bD+4iGkuKLSnOHSu6/HP6eOZDIMtWdxcu/HTYQ
 3ANb2vYvcGdyjTy/6rQDeM9H3DSPRvP9Nd7wZfyVJoqtxhW8G6a2Cb5Ykcnf/rn3M+46dD
 fv06K1C/MaguoNh/uZARVTiAeV5fQ+4=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=HGu4njDi
Subject: [Intel-wired-lan] [PATCH 2/2] igbvf: remove unused spinlock
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
Cc: Wander Lairson Costa <wander@redhat.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tx_queue_lock and stats_lock are declared and initialized, but never
used. Remove them.

Signed-off-by: Wander Lairson Costa <wander@redhat.com>
---
 drivers/net/ethernet/intel/igbvf/igbvf.h  | 3 ---
 drivers/net/ethernet/intel/igbvf/netdev.c | 3 ---
 2 files changed, 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/igbvf/igbvf.h b/drivers/net/ethernet/intel/igbvf/igbvf.h
index 6ad35a00a287..ca6e44245a7b 100644
--- a/drivers/net/ethernet/intel/igbvf/igbvf.h
+++ b/drivers/net/ethernet/intel/igbvf/igbvf.h
@@ -169,8 +169,6 @@ struct igbvf_adapter {
 	u16 link_speed;
 	u16 link_duplex;
 
-	spinlock_t tx_queue_lock; /* prevent concurrent tail updates */
-
 	/* track device up/down/testing state */
 	unsigned long state;
 
@@ -220,7 +218,6 @@ struct igbvf_adapter {
 	/* OS defined structs */
 	struct net_device *netdev;
 	struct pci_dev *pdev;
-	spinlock_t stats_lock; /* prevent concurrent stats updates */
 
 	/* structs defined in e1000_hw.h */
 	struct e1000_hw hw;
diff --git a/drivers/net/ethernet/intel/igbvf/netdev.c b/drivers/net/ethernet/intel/igbvf/netdev.c
index 925d7286a8ee..02044aa2181b 100644
--- a/drivers/net/ethernet/intel/igbvf/netdev.c
+++ b/drivers/net/ethernet/intel/igbvf/netdev.c
@@ -1656,12 +1656,9 @@ static int igbvf_sw_init(struct igbvf_adapter *adapter)
 	if (igbvf_alloc_queues(adapter))
 		return -ENOMEM;
 
-	spin_lock_init(&adapter->tx_queue_lock);
-
 	/* Explicitly disable IRQ since the NIC can be in any state. */
 	igbvf_irq_disable(adapter);
 
-	spin_lock_init(&adapter->stats_lock);
 	spin_lock_init(&adapter->hw.mbx_lock);
 
 	set_bit(__IGBVF_DOWN, &adapter->state);
-- 
2.46.1

