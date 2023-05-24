Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 735D770F3AB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 May 2023 12:02:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F0C426159D;
	Wed, 24 May 2023 10:02:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F0C426159D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684922546;
	bh=G95CPPJE2LtSWz5aNEQxbvYLaz9KiS6XlY0hrv+aupc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=T/qWEvOjaMpPxVA1Tuj/mERbgMYAncAU0chL+3oaBtmQyx4Co0THnhgwJsv4PEzUd
	 bDTi8dN5dqNxnczl2xbtGb6MJYXkh1X5C/4GXMV7023sGHz/Zru+d21USNOP7IL929
	 pq4xVVjEf7AUHpyTlNZg3BbJgoUsSML8n+iIYVYCoeRbcr/0l+SHePEug6PtXgOHYv
	 0cRQLLRr5qubIv39WQ2Sbq2Ks7Rz4c/ia1hnJcE/ofoF83usTMt/zW6EYnhKzbwflA
	 a25XhFNfb2e7WZicfE/AghKgqvQUrut1aqXFvpdPTUrp+iMlo2h4AVLcvXQPZhXcl2
	 ZFVcUeW/qd6Lw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kiNqzh3Vn4eY; Wed, 24 May 2023 10:02:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D825961174;
	Wed, 24 May 2023 10:02:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D825961174
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8413F1BF38C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 10:02:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 65AA761174
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 10:02:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 65AA761174
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S4HiYEX8ZySE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 May 2023 10:02:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 886C661144
Received: from out30-132.freemail.mail.aliyun.com
 (out30-132.freemail.mail.aliyun.com [115.124.30.132])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 886C661144
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 10:02:16 +0000 (UTC)
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R161e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=ay29a033018046050;
 MF=jiapeng.chong@linux.alibaba.com; NM=1; PH=DS; RN=11; SR=0;
 TI=SMTPD_---0VjNdztr_1684922526; 
Received: from localhost(mailfrom:jiapeng.chong@linux.alibaba.com
 fp:SMTPD_---0VjNdztr_1684922526) by smtp.aliyun-inc.com;
 Wed, 24 May 2023 18:02:11 +0800
From: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
To: jesse.brandeburg@intel.com
Date: Wed, 24 May 2023 18:02:03 +0800
Message-Id: <20230524100203.28645-1-jiapeng.chong@linux.alibaba.com>
X-Mailer: git-send-email 2.20.1.7.g153144c
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2] iavf: Remove useless else if
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
Cc: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>,
 intel-wired-lan@lists.osuosl.org, Abaci Robot <abaci@linux.alibaba.com>,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The assignment of the else and if branches is the same, so the if else
here is redundant, so we remove it.

./drivers/net/ethernet/intel/iavf/iavf_main.c:2203:6-8: WARNING: possible condition with no effect (if == else).

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Closes: https://bugzilla.openanolis.cn/show_bug.cgi?id=5255
Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
---
Changes in v2:
  -Add a comment.

 drivers/net/ethernet/intel/iavf/iavf_main.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 2de4baff4c20..da5011359425 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -2200,9 +2200,9 @@ iavf_set_vlan_offload_features(struct iavf_adapter *adapter,
 		vlan_ethertype = ETH_P_8021Q;
 	else if (prev_features & (NETIF_F_HW_VLAN_STAG_RX | NETIF_F_HW_VLAN_STAG_TX))
 		vlan_ethertype = ETH_P_8021AD;
-	else if (prev_features & (NETIF_F_HW_VLAN_CTAG_RX | NETIF_F_HW_VLAN_CTAG_TX))
-		vlan_ethertype = ETH_P_8021Q;
-	else
+	else /* The branch cover "else if (prev_features & (NETIF_F_HW_VLAN_CTAG_RX |
+	      * NETIF_F_HW_VLAN_CTAG_TX))"
+	      */
 		vlan_ethertype = ETH_P_8021Q;
 
 	if (!(features & (NETIF_F_HW_VLAN_STAG_RX | NETIF_F_HW_VLAN_CTAG_RX)))
-- 
2.20.1.7.g153144c

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
