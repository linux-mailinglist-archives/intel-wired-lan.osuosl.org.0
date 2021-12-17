Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 57313479699
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Dec 2021 22:54:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F30BF60D87;
	Fri, 17 Dec 2021 21:54:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J-WImPtxmq6R; Fri, 17 Dec 2021 21:54:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1595A60EBA;
	Fri, 17 Dec 2021 21:54:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 682EE1BF2F0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 20:58:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4C8CF84D34
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 20:58:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=qsc.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q7kil_DZYLys for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Dec 2021 20:58:41 +0000 (UTC)
X-Greylist: delayed 00:05:06 by SQLgrey-1.8.0
Received: from us-smtp-delivery-160.mimecast.com
 (us-smtp-delivery-160.mimecast.com [170.10.133.160])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0DD1C84D30
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 20:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qsc.com;
 s=mimecast20190503; t=1639774719;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=slIJRz7wIeJV2ZUwXabputEjF6L/iFoFGOuxjfaTsTI=;
 b=EpJacqGxyF8fKp3XLhLIDIrcumirT9aynC8+3AavwkHqqQ0I2CcIMO9a2vlntjzeRMcT2M
 GPkZrD1fQw/ZFAFcZ7T+qQaGiRiRoQ1ttS3TMDgWOJpRbiX0y9PbzOSNYenU/sWVkK1YNA
 gjsia/tEXoIqb6ifjF/Og/EAqZV1Y4k=
Received: from 1uslvexch01.qscaudio.com (209.170.222.241 [209.170.222.241])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 us-mta-475-X4jfqagqPZ6Mth2pWHaIjg-1; Fri, 17 Dec 2021 15:52:24 -0500
X-MC-Unique: X4jfqagqPZ6Mth2pWHaIjg-1
Received: from 1uslvexch01.qscaudio.com (10.105.30.125) by
 1uslvexch01.qscaudio.com (10.105.30.125) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.17; Fri, 17 Dec 2021 12:52:22 -0800
Received: from james-3700x.qscaudio.com (10.104.74.41) by smtp-relay.qsc.com
 (10.105.30.125) with Microsoft SMTP Server id 15.1.2375.17 via Frontend
 Transport; Fri, 17 Dec 2021 12:52:22 -0800
From: James McLaughlin <james.mclaughlin@qsc.com>
To: <davem@davemloft.net>, <kuba@kernel.org>, <jesse.brandeburg@intel.com>,
 <anthony.l.nguyen@intel.com>
Date: Fri, 17 Dec 2021 13:52:09 -0700
Message-ID: <20211217205209.723782-1-james.mclaughlin@qsc.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA60A255 smtp.mailfrom=james.mclaughlin@qsc.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: qsc.com
X-Mailman-Approved-At: Fri, 17 Dec 2021 21:54:35 +0000
Subject: [Intel-wired-lan] [PATCH] igc: updated TX timestamp support for
 non-MSI-X platforms
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
Cc: netdev@vger.kernel.org, James McLaughlin <james.mclaughlin@qsc.com>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Time synchronization was not properly enabled on non-MSI-X platforms.

Signed-off-by: James McLaughlin <james.mclaughlin@qsc.com>
Reviewed-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 8e448288ee26..d28a80a00953 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -5467,6 +5467,9 @@ static irqreturn_t igc_intr_msi(int irq, void *data)
 			mod_timer(&adapter->watchdog_timer, jiffies + 1);
 	}
 
+	if (icr & IGC_ICR_TS)
+		igc_tsync_interrupt(adapter);
+
 	napi_schedule(&q_vector->napi);
 
 	return IRQ_HANDLED;
@@ -5510,6 +5513,9 @@ static irqreturn_t igc_intr(int irq, void *data)
 			mod_timer(&adapter->watchdog_timer, jiffies + 1);
 	}
 
+	if (icr & IGC_ICR_TS)
+		igc_tsync_interrupt(adapter);
+
 	napi_schedule(&q_vector->napi);
 
 	return IRQ_HANDLED;
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
