Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B647647B083
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Dec 2021 16:44:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 149A660E2B;
	Mon, 20 Dec 2021 15:44:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GlrmDtBPeEGf; Mon, 20 Dec 2021 15:44:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 173EF60BDE;
	Mon, 20 Dec 2021 15:44:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B74111BF86B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 23:43:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AA57D42239
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 23:43:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=qsc.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tSz1IBHif1or for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Dec 2021 23:43:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-160.mimecast.com
 (us-smtp-delivery-160.mimecast.com [170.10.133.160])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B0F1C41F19
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 23:43:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qsc.com;
 s=mimecast20190503; t=1639784630;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=iE/sszsA1GaPTlHkvwyykJkzKVhcJNxgo40yRqjlyHc=;
 b=HvIKsK3K1jIR73XOWypdtcAbVBi6yemNCbqtoDAGXuykdNwDYLRG4QraODzXvsF5Q6eBc0
 4pE0Uk+ny8P7ZETP/Pa5M4Gb1228WyRBNgPTVlQ64yEFjeAoTiexLsaJoEitGv/jSWxbKr
 PfDi8N+oEeAZr+I7+QSrtCrs+MVbuBc=
Received: from 1uslvexch01.qscaudio.com (209.170.222.241 [209.170.222.241])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 us-mta-216-qjM709rHO_KxS77SCeQ6Yw-1; Fri, 17 Dec 2021 18:43:49 -0500
X-MC-Unique: qjM709rHO_KxS77SCeQ6Yw-1
Received: from 1uslvexch01.qscaudio.com (10.105.30.125) by
 1uslvexch01.qscaudio.com (10.105.30.125) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.17; Fri, 17 Dec 2021 15:43:47 -0800
Received: from james-3700x.qscaudio.com (10.104.74.41) by smtp-relay.qsc.com
 (10.105.30.125) with Microsoft SMTP Server id 15.1.2375.17 via Frontend
 Transport; Fri, 17 Dec 2021 15:43:46 -0800
From: James McLaughlin <james.mclaughlin@qsc.com>
To: <davem@davemloft.net>, <kuba@kernel.org>, <jesse.brandeburg@intel.com>,
 <anthony.l.nguyen@intel.com>
Date: Fri, 17 Dec 2021 16:43:10 -0700
Message-ID: <20211217234310.740255-1-james.mclaughlin@qsc.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA60A255 smtp.mailfrom=james.mclaughlin@qsc.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: qsc.com
X-Mailman-Approved-At: Mon, 20 Dec 2021 15:44:04 +0000
Subject: [Intel-wired-lan] [PATCH v2] igc: Fix TX timestamp support for
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

Having trouble with work email client, understand and agree with comments from Vinicius.
v1->v2 updated commit message, email subject, and reference original commit this is fixing.

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
