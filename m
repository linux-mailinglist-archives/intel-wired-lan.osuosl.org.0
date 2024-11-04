Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B359C9BB4D0
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Nov 2024 13:41:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5EC5280DF8;
	Mon,  4 Nov 2024 12:41:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tW6vDl0rVg5q; Mon,  4 Nov 2024 12:41:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B9C2080DAC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730724090;
	bh=aKQ0/YooIp1QYyef8Z9BF7zgosXNwWGR/ZRQNwN6Nbo=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=tSz7bh/ZB6z77CULrtLme9tS4CcW8f7GHFMJ4bY4uis3PK7O0eJcYdDmUz/0we6u5
	 PTON9sXAwN43cNI+iyTXw+a9c2WWpUHTBYsbypasXV8TyQ8CILxVBrRdVDfuuu9pti
	 KKO9fGtJwf6Uuji6ZyxWyfodr2ZIbzrPt730Kh3nq0+Dykl6iFj4chvJf6nn2GSz1m
	 IwT7EMl4YeG/uBEqIW8jtahAoTk8xC49iJqjquN35nS2LjsXSFEsp2lGAjbnoJ5aqv
	 9FkHUqEBywBThpsCapHmRwBO5nQg1qHEuitjS0MMDAJui3YoF96f5E3zqz3zsrvUuf
	 gxWd5DNUBoqTw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B9C2080DAC;
	Mon,  4 Nov 2024 12:41:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8D3B5962
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 12:41:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6E1C3606CA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 12:41:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sM7x6J1eA-o8 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Nov 2024 12:41:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=wander@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B348460673
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B348460673
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B348460673
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 12:41:26 +0000 (UTC)
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-185-JVFTtb9zNw-d_g3XSvp-jg-1; Mon,
 04 Nov 2024 07:41:21 -0500
X-MC-Unique: JVFTtb9zNw-d_g3XSvp-jg-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 249C81954AE4; Mon,  4 Nov 2024 12:41:18 +0000 (UTC)
Received: from wcosta-thinkpadt14gen4.rmtbr.csb (unknown [10.22.64.126])
 by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id D7D66300018D; Mon,  4 Nov 2024 12:41:11 +0000 (UTC)
From: Wander Lairson Costa <wander@redhat.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Clark Williams <clrkwllms@kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 intel-wired-lan@lists.osuosl.org (moderated list:INTEL ETHERNET DRIVERS),
 netdev@vger.kernel.org (open list:NETWORKING DRIVERS),
 linux-kernel@vger.kernel.org (open list),
 linux-rt-devel@lists.linux.dev (open list:Real-time Linux
 (PREEMPT_RT):Keyword:PREEMPT_RT)
Cc: tglx@linutronix.de,
	Wander Lairson Costa <wander@redhat.com>
Date: Mon,  4 Nov 2024 09:40:50 -0300
Message-ID: <20241104124050.22290-1-wander@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1730724085;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=aKQ0/YooIp1QYyef8Z9BF7zgosXNwWGR/ZRQNwN6Nbo=;
 b=KzJbCKie788Ky7WFSXfM+s4wfZGLskG9wmA+qs7OM9NyOGxyXh49AcsQ99KFSluKe2Dujy
 /+T5dXDyKKDPFiVsp/qRhFyMtVf6SRNXjAUllGRtO34Dqysvgp7ryue0ckhJT6WzhsCU/V
 aZZDzkuTQklf3gbAxUModYChsmtTSvs=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=KzJbCKie
Subject: [Intel-wired-lan] [PATCH] Revert "igb: Disable threaded IRQ for
 igb_msix_other"
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

This reverts commit 338c4d3902feb5be49bfda530a72c7ab860e2c9f.

Sebastian noticed the ISR indirectly acquires spin_locks, which are
sleeping locks under PREEMPT_RT, which leads to kernel splats.

Signed-off-by: Wander Lairson Costa <wander@redhat.com>
Reported-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index b83df5f94b1f..f1d088168723 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -907,7 +907,7 @@ static int igb_request_msix(struct igb_adapter *adapter)
 	int i, err = 0, vector = 0, free_vector = 0;
 
 	err = request_irq(adapter->msix_entries[vector].vector,
-			  igb_msix_other, IRQF_NO_THREAD, netdev->name, adapter);
+			  igb_msix_other, 0, netdev->name, adapter);
 	if (err)
 		goto err_out;
 
-- 
2.47.0

