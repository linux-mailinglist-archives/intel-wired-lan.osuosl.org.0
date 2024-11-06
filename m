Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E01A9BE556
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Nov 2024 12:15:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4DF7080B7A;
	Wed,  6 Nov 2024 11:15:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zulwCMQaJgo7; Wed,  6 Nov 2024 11:15:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D0D4980B8B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730891701;
	bh=q/pUhWBxmCDgwQYzUjg0jWk3qPOCCQzEzMOB8Ax5AVQ=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=s8fdXIaX52mzWxBoD4ag9imRvwAM8g+pNI3ud9iQ8qHo6/ZpwWsR/CVM1gZ7xJorg
	 sUlJfaMhGdGsAcoqAqzxOnCDlbRY8l2vqu34nQ3VOaXokRzhODy9cLp8Vpmqin41Qp
	 e0RqU/fc5ACZeT2TMcA13VFUAt8+oy5ssORPM90vIE4zABtq//qLJwN7OVUDVl7nuf
	 gnbGh3jUhRWNBApakD7IsqR+csuzzQasChZlsUcGzqkp3VrLWaI4bRtPpuhQrc010O
	 ohgVaYrWy+CTxa7BXDwYNPh2hRrTJPvYMSjjRoL2P8ixA3VbSWHnbEEPmVE4067DGp
	 phNDZllKWrcfg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D0D4980B8B;
	Wed,  6 Nov 2024 11:15:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 24CF3B8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 11:15:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1F1F160A64
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 11:15:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QgqyTogFuwE4 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Nov 2024 11:14:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=wander@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 64E5960A54
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 64E5960A54
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 64E5960A54
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 11:14:58 +0000 (UTC)
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-18-6LJtl8SbP8eoyf92emu2Kw-1; Wed,
 06 Nov 2024 06:14:52 -0500
X-MC-Unique: 6LJtl8SbP8eoyf92emu2Kw-1
X-Mimecast-MFC-AGG-ID: 6LJtl8SbP8eoyf92emu2Kw
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 51797196CE34; Wed,  6 Nov 2024 11:14:42 +0000 (UTC)
Received: from wcosta-thinkpadt14gen4.rmtbr.csb (unknown [10.22.80.50])
 by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id C23FB1955F41; Wed,  6 Nov 2024 11:14:33 +0000 (UTC)
From: Wander Lairson Costa <wander@redhat.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Clark Williams <clrkwllms@kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>, Simon Horman <horms@kernel.org>,
 Wander Lairson Costa <wander@redhat.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 intel-wired-lan@lists.osuosl.org (moderated list:INTEL ETHERNET DRIVERS),
 netdev@vger.kernel.org (open list:NETWORKING DRIVERS),
 linux-kernel@vger.kernel.org (open list),
 linux-rt-devel@lists.linux.dev (open list:Real-time Linux
 (PREEMPT_RT):Keyword:PREEMPT_RT)
Cc: tglx@linutronix.de
Date: Wed,  6 Nov 2024 08:14:26 -0300
Message-ID: <20241106111427.7272-1-wander@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1730891697;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=q/pUhWBxmCDgwQYzUjg0jWk3qPOCCQzEzMOB8Ax5AVQ=;
 b=QsLWH5KIyrtU8qJ61PLGFYaX9m5oWE8bfhtRSnS7PtpCCVcn3fCgaunoMNVC7vhjubLo0l
 IugeU/fwxul2trwWNYJRZAJG2q2ntWbBgniNtmF9hoCVo63p0gC1CZc6KuBJKfidJhyUke
 1x+WZSm7XP/wVdtud16/FABL3tiYNSQ=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=QsLWH5KI
Subject: [Intel-wired-lan] [PATCH v2 1/4] Revert "igb: Disable threaded IRQ
 for igb_msix_other"
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

Fixes: 338c4d3902feb ("igb: Disable threaded IRQ for igb_msix_other")
Reported-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Signed-off-by: Wander Lairson Costa <wander@redhat.com>

---

Changelog:

v2: Add the Fixes tag
Signed-off-by: Wander Lairson Costa <wander@redhat.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index b83df5f94b1f5..f1d0881687233 100644
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

