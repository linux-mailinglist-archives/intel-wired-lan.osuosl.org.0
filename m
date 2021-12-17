Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2239E47B084
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Dec 2021 16:44:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA9C960E31;
	Mon, 20 Dec 2021 15:44:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k_AsIDuYN5Oy; Mon, 20 Dec 2021 15:44:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D071E60E1A;
	Mon, 20 Dec 2021 15:44:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 96A0D1BF86B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 23:49:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8500D42143
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 23:49:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=qsc.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6HBN1LBBL6DY for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Dec 2021 23:49:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-160.mimecast.com
 (us-smtp-delivery-160.mimecast.com [170.10.133.160])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5A9E442134
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 23:49:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qsc.com;
 s=mimecast20190503; t=1639784981;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=HxeHTwTRX6GR9g93sq/08o7pG1Yysfh7Amc7KYPalLY=;
 b=h0KYytkfrXB3cOl8haChX3iVIVh3RtwaAIqgaeJOnTyhmqwNSH2Eg7gx2xjztd4s97QFRa
 LBW8FY+iLwwv1ecGmUScHKu7E2fTWeYiuCWlFSaTYDcEkPgUBkZ0J0CfZ0+T13tBIoXoYe
 lEgFhrfUsDn+uyx5N0wwBFamb7Hk5lw=
Received: from 1uslvexch01.qscaudio.com (209.170.222.241 [209.170.222.241])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 us-mta-452-HxOZeFjhPU2GRUlLJ6X__A-1; Fri, 17 Dec 2021 18:49:39 -0500
X-MC-Unique: HxOZeFjhPU2GRUlLJ6X__A-1
Received: from 1uslvexch01.qscaudio.com (10.105.30.125) by
 1uslvexch01.qscaudio.com (10.105.30.125) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.17; Fri, 17 Dec 2021 15:49:37 -0800
Received: from james-3700x.qscaudio.com (10.104.74.41) by smtp-relay.qsc.com
 (10.105.30.125) with Microsoft SMTP Server id 15.1.2375.17 via Frontend
 Transport; Fri, 17 Dec 2021 15:49:37 -0800
From: James McLaughlin <james.mclaughlin@qsc.com>
To: <davem@davemloft.net>, <kuba@kernel.org>, <jesse.brandeburg@intel.com>,
 <anthony.l.nguyen@intel.com>
Date: Fri, 17 Dec 2021 16:49:33 -0700
Message-ID: <20211217234933.740942-1-james.mclaughlin@qsc.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA60A255 smtp.mailfrom=james.mclaughlin@qsc.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: qsc.com
X-Mailman-Approved-At: Mon, 20 Dec 2021 15:44:04 +0000
Subject: [Intel-wired-lan] [PATCH net v3] igc: Fix TX timestamp support for
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

Fixes: 2c344ae24501 ("igc: Add support for TX timestamping")

Signed-off-by: James McLaughlin <james.mclaughlin@qsc.com>
Reviewed-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---

Still same work email client issues.  Apologies, mis-titled it again.
v2->v3 fixed title

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
