Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E79639F904
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Aug 2019 05:59:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 97CEF826D3;
	Wed, 28 Aug 2019 03:59:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W97YktY7lGna; Wed, 28 Aug 2019 03:59:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 05C4485BBD;
	Wed, 28 Aug 2019 03:59:26 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 637ED1BF20D
 for <intel-wired-lan@osuosl.org>; Wed, 28 Aug 2019 03:59:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5CEED8870C
 for <intel-wired-lan@osuosl.org>; Wed, 28 Aug 2019 03:59:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3YyHK1OTsDxB for <intel-wired-lan@osuosl.org>;
 Wed, 28 Aug 2019 03:59:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 58FAE88703
 for <intel-wired-lan@osuosl.org>; Wed, 28 Aug 2019 03:59:19 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id go14so575053plb.0
 for <intel-wired-lan@osuosl.org>; Tue, 27 Aug 2019 20:59:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=57IO6JHG378Mmz3C2k7bKKLjJfnmeNNPeXtLbohZz88=;
 b=AfPgVQdUoaBxVf4rgg9sq9qIIUU/b3nR0FYXj4oQ2uOOdNYZAP0maJzxIL44+7H3Hb
 ilD+8BYUAWWw3ytmkEI3eswG4eTfz0X1t1bluWZFNt87PMAx61caiH02ZWjAsypDx2hW
 RwYZEKYNZGWW3Q014oB8PPxKGzfLZyiZYeKV9/Z7X1sc/HMccitA/W7mE6s3LJyqJY5s
 Nrqgyy7s4SYsGC5gBGTQSy67G1XXyUM/4PSE9itDAe4ev8DGqVS1prLsj2U9oI43+ASK
 po+E+x4KaR5OxDFXni+WjQlbw0xwt7IcC3R7HL8nPeJbcMSK3JbFie9t2jya1PHtnE+9
 9IEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=57IO6JHG378Mmz3C2k7bKKLjJfnmeNNPeXtLbohZz88=;
 b=pmwtummtfOot946pEGB5JGTnnUPPr3zbWtb20oW/f5mSNk8BUKVSOzLzwwJODAswc5
 CYe4yiTfL68dukuxBu1eez7PcCOLDNrhzp9kHm51ZGjptgHMa1T9dlbM6EbyyPIV0u9V
 9cDi3V29J9IU/+iOSVEEEhQ7MEH8udCYhOVi1JxWOsVYtdLzCtw5yYwJhZWfRxTUwFtr
 9EwjMlmiK5g6KBTPeQJ70K55uMH5LqGiesxtj01U5alkwQna9XMfTV1NvwCwI1icds6P
 98YCqo/GfXlKzXBHF7DfZI1QPoAOmnaJ7y88fjWt7rNDHKxyDuKCPqcErGqX/C9D28fC
 zmLQ==
X-Gm-Message-State: APjAAAXE+jT8iWfBv5mscDNqX9QBR6CYbHG+xKeXvbEa66KZZpns+aPc
 diKeZKLFvfhVtyXet8gQx8Vennyt
X-Google-Smtp-Source: APXvYqxJPwymxliB1q28C1wHbwok0fZt2XV/LxIhM9IApSyikIAYzXxibWJXzpK5VN5fZSTnfb2TQw==
X-Received: by 2002:a17:902:9a8d:: with SMTP id
 w13mr2230034plp.157.1566964758827; 
 Tue, 27 Aug 2019 20:59:18 -0700 (PDT)
Received: from local.opencloud.tech.localdomain ([203.100.54.194])
 by smtp.gmail.com with ESMTPSA id x24sm723034pgl.84.2019.08.27.20.59.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 27 Aug 2019 20:59:18 -0700 (PDT)
From: xiangxia.m.yue@gmail.com
To: intel-wired-lan@osuosl.org
Date: Thu, 22 Aug 2019 18:56:46 +0800
Message-Id: <1566471406-102583-1-git-send-email-xiangxia.m.yue@gmail.com>
X-Mailer: git-send-email 1.8.3.1
Subject: [Intel-wired-lan] [PATCH net-next] ixgbe: use skb_get_queue_mapping
 in tx path
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Tonghao Zhang <xiangxia.m.yue@gmail.com>

Use the common api, and don't access queue_mapping directly.

Signed-off-by: Tonghao Zhang <xiangxia.m.yue@gmail.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index dc7b128..253ce2b 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -8749,7 +8749,7 @@ static netdev_tx_t __ixgbe_xmit_frame(struct sk_buff *skb,
 	if (skb_put_padto(skb, 17))
 		return NETDEV_TX_OK;
 
-	tx_ring = ring ? ring : adapter->tx_ring[skb->queue_mapping];
+	tx_ring = ring ? ring : adapter->tx_ring[skb_get_queue_mapping(skb)];
 	if (unlikely(test_bit(__IXGBE_TX_DISABLED, &tx_ring->state)))
 		return NETDEV_TX_BUSY;
 
-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
