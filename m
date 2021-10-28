Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1266F43E3F3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Oct 2021 16:39:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 74D8760650;
	Thu, 28 Oct 2021 14:39:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id woSvX3Q5nHh0; Thu, 28 Oct 2021 14:39:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6DA1E6063B;
	Thu, 28 Oct 2021 14:39:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1165B1BF5F8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Oct 2021 14:38:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9941B40129
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Oct 2021 14:37:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ia2TUCf7Av79 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Oct 2021 14:37:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C7540400FC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Oct 2021 14:37:58 +0000 (UTC)
Received: by mail-ed1-x530.google.com with SMTP id ee16so12775264edb.10
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Oct 2021 07:37:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kaLOI5pYECzKvo/+urqxhhg9PYPQu4oDJi6rLd02fk8=;
 b=IQj8LxZyvOCURsCt4XI4Uell0chqwPh5nCOspgWJlJZGvzIHjJ3pxLbi7yWZ9SZmwq
 zwByaev4ety2VWcVO885idO++vT3cLO8jEfn5XOUklswu29JSovc5PrOFD/xl2zhX7y5
 4qZ3QcgC3olamUrrEFep4eMAOdnkwy3vsXeSzlxQAMeEX/U9oMmJrDRi25APKJMFUPQJ
 7I8uyKnGeDTX+jEHiv9AtbPEaZLe9FCCuqioN+maZmWbTIR0dau5mZQT3b2I2vwZm2Hd
 koJPRfvJbTVNH/3unIgVNvRNKyRbVXgGEeFTOX53zvbLWUziKZ3mAVkTjU672n3JwSxb
 m12A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kaLOI5pYECzKvo/+urqxhhg9PYPQu4oDJi6rLd02fk8=;
 b=bJSRyb0zYq1DJePzY51HOUCHYHeqAqbuxjpPpN9UAk18WHwsv85tQQ2zz3FAwszzcc
 4HytY8K2R0HyY2eZphxexrpZekkMq1zPL+wDMReiGWNJ+6ZdFTzDByhjLxerkJs7sqzh
 5SOvw3UHVnx/jU5A8umfbUDXdAvC5aFx1siQ9dqiBYcZ+RISOM9ma/Fnl8cS2cxnDsb9
 mXXdYIFKfsUwW1wPj3NlMMob4r1Pjr2lkRJ3RHHI7zJf+u639Cc6HUXuMhYqq1B+pNnW
 Y6G5uHDJ5feU73xu62r5ynrvmYuv1MAvuTnTSi0KxQ6pLdLd8suFjx4Z//BhDqbue40K
 Or4g==
X-Gm-Message-State: AOAM531FI+noJD8vme7JEa6EICCEDda0jvpUCutEwwNdE0Dr4u17mMyX
 JPF3MZqX0Xl3sd9ilzY6sSE=
X-Google-Smtp-Source: ABdhPJz8lFRb/ojGG8pVeHunZek/PGq+OrMC+uvSiiDMz7LHBUhKKl+dM3G8tImDm2dIhppEHcbMCg==
X-Received: by 2002:a05:6402:1511:: with SMTP id
 f17mr6628020edw.68.1635431875857; 
 Thu, 28 Oct 2021 07:37:55 -0700 (PDT)
Received: from localhost.localdomain
 (84-104-224-163.cable.dynamic.v4.ziggo.nl. [84.104.224.163])
 by smtp.gmail.com with ESMTPSA id di12sm1514501ejc.3.2021.10.28.07.37.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Oct 2021 07:37:55 -0700 (PDT)
From: Ruud Bos <kernel.hbk@gmail.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org
Date: Thu, 28 Oct 2021 16:34:56 +0200
Message-Id: <20211028143459.903439-2-kernel.hbk@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211028143459.903439-1-kernel.hbk@gmail.com>
References: <20211028143459.903439-1-kernel.hbk@gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 28 Oct 2021 14:38:52 +0000
Subject: [Intel-wired-lan] [PATCH net-next v2 1/4] igb: move SDP config
 initialization to separate function
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
Cc: netdev@vger.kernel.org, richardcochran@gmail.com,
 Ruud Bos <kernel.hbk@gmail.com>, davem@davemloft.net, kuba@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Allow reuse of SDP config struct initialization by moving it to a
separate function.

Signed-off-by: Ruud Bos <kernel.hbk@gmail.com>
---
 drivers/net/ethernet/intel/igb/igb_ptp.c | 27 +++++++++++++++++-------
 1 file changed, 19 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_ptp.c b/drivers/net/ethernet/intel/igb/igb_ptp.c
index 0011b15e678c..c78d0c2a5341 100644
--- a/drivers/net/ethernet/intel/igb/igb_ptp.c
+++ b/drivers/net/ethernet/intel/igb/igb_ptp.c
@@ -69,6 +69,7 @@
 #define IGB_NBITS_82580			40
 
 static void igb_ptp_tx_hwtstamp(struct igb_adapter *adapter);
+static void igb_ptp_sdp_init(struct igb_adapter *adapter);
 
 /* SYSTIM read access for the 82576 */
 static u64 igb_ptp_read_82576(const struct cyclecounter *cc)
@@ -1192,7 +1193,6 @@ void igb_ptp_init(struct igb_adapter *adapter)
 {
 	struct e1000_hw *hw = &adapter->hw;
 	struct net_device *netdev = adapter->netdev;
-	int i;
 
 	switch (hw->mac.type) {
 	case e1000_82576:
@@ -1233,13 +1233,7 @@ void igb_ptp_init(struct igb_adapter *adapter)
 		break;
 	case e1000_i210:
 	case e1000_i211:
-		for (i = 0; i < IGB_N_SDP; i++) {
-			struct ptp_pin_desc *ppd = &adapter->sdp_config[i];
-
-			snprintf(ppd->name, sizeof(ppd->name), "SDP%d", i);
-			ppd->index = i;
-			ppd->func = PTP_PF_NONE;
-		}
+		igb_ptp_sdp_init(adapter);
 		snprintf(adapter->ptp_caps.name, 16, "%pm", netdev->dev_addr);
 		adapter->ptp_caps.owner = THIS_MODULE;
 		adapter->ptp_caps.max_adj = 62499999;
@@ -1284,6 +1278,23 @@ void igb_ptp_init(struct igb_adapter *adapter)
 	}
 }
 
+/**
+ * igb_ptp_sdp_init - utility function which inits the SDP config structs
+ * @adapter: Board private structure.
+ **/
+void igb_ptp_sdp_init(struct igb_adapter *adapter)
+{
+	int i;
+
+	for (i = 0; i < IGB_N_SDP; i++) {
+		struct ptp_pin_desc *ppd = &adapter->sdp_config[i];
+
+		snprintf(ppd->name, sizeof(ppd->name), "SDP%d", i);
+		ppd->index = i;
+		ppd->func = PTP_PF_NONE;
+	}
+}
+
 /**
  * igb_ptp_suspend - Disable PTP work items and prepare for suspend
  * @adapter: Board private structure
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
