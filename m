Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A35AE42C1D6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Oct 2021 15:57:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 07FAA407CD;
	Wed, 13 Oct 2021 13:57:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TmP6deFGG04y; Wed, 13 Oct 2021 13:57:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D5F3040796;
	Wed, 13 Oct 2021 13:57:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8CAE91BF425
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Oct 2021 07:18:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7C50881D19
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Oct 2021 07:18:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CqlPtlV4VeFk for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Oct 2021 07:18:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 75A0981C56
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Oct 2021 07:18:04 +0000 (UTC)
Received: by mail-ed1-x532.google.com with SMTP id w19so6169307edd.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Oct 2021 00:18:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kaLOI5pYECzKvo/+urqxhhg9PYPQu4oDJi6rLd02fk8=;
 b=LanR1i/jLsmAYTFwokdAovmWU5V1IgQOn7DGsNQxptrH1rXx2irbNV7tr6koSM4u5b
 ZtSofIF3wJ/d0YnTRLIM9NYZR8TAzjxjXlkoV+JrdlWtbyv4yhd9XAD6TCOkuu/IJjLP
 /JX2/SYKtj6UQYyQZc2BmIxSRjwZZTUodhunkF983zVT8JJs5C3XW9IIBdYz6wO8p8hf
 WUnxOqhvC5Q0iKrOyOxV285Vj0YNH2SW/ndh37Ni7sJ1DrT5OqzikpJezzhTSq79KYvP
 Re953GUUNr5ovVQs12DMPW8YAtMnzNOq7gG9+AVAUCBfVkK/RUWM3I6CEgq+//iyl1PK
 x69g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kaLOI5pYECzKvo/+urqxhhg9PYPQu4oDJi6rLd02fk8=;
 b=qhG4iFmZBtqCcDhstbnfJqcuH+laxJWF/jd0vEG52IuyQ3l/uYlNzWXMNvwG4fENnN
 PqQi5y0gDgSe5NskbLu2IZujgYdnWNGa3aLuWKguzF+AvrEKs1UYqLao3jF1kSShqRqG
 I3XlT5fcEynkrCkVJh6P7YZwR3ZyT9eIgylb7fYa07xom6Mhj0nLgMbMYtqYybBhfWMY
 tAHb5c6w7uDoR7soV/dkHfY2VkhyUKRqUJ0UJwKuE/bOlGZqxpTsDMY5MAZX47HMCJHc
 X4FQLss7Y3cqYGXPRzm3mtBFHy6KYNK5aRUoGqI43OtIpL2fxkDS1oK591gPtGzdNCe8
 5P5Q==
X-Gm-Message-State: AOAM533SF+lU0RcPomnSDKFcxKxJAzOFFADFy+hkWLyEd4UQJShCeHy1
 J0woAcv8MWUS40f/cgNcCvA=
X-Google-Smtp-Source: ABdhPJzor9o478DV6DeLHCDydcB9hF5OEEAmPoN2viKapFSJ/J+l5QuDHam4xNzg412faqgFYIRkIQ==
X-Received: by 2002:a17:906:26c4:: with SMTP id
 u4mr37236958ejc.511.1634109482708; 
 Wed, 13 Oct 2021 00:18:02 -0700 (PDT)
Received: from localhost.localdomain
 (84-104-224-163.cable.dynamic.v4.ziggo.nl. [84.104.224.163])
 by smtp.gmail.com with ESMTPSA id f7sm2935886edl.33.2021.10.13.00.18.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Oct 2021 00:18:02 -0700 (PDT)
From: Ruud Bos <kernel.hbk@gmail.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org
Date: Wed, 13 Oct 2021 09:15:28 +0200
Message-Id: <20211013071531.1145-2-kernel.hbk@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211013071531.1145-1-kernel.hbk@gmail.com>
References: <20211013071531.1145-1-kernel.hbk@gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 13 Oct 2021 13:57:02 +0000
Subject: [Intel-wired-lan] [PATCH net-next RESEND 1/4] igb: move SDP config
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
