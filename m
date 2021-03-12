Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE2133957A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Mar 2021 18:49:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BA1DA843C0;
	Fri, 12 Mar 2021 17:49:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YhIax9C7BN9E; Fri, 12 Mar 2021 17:49:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F16ED837D3;
	Fri, 12 Mar 2021 17:49:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6188D1BF2E4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Mar 2021 17:49:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 587D9843C1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Mar 2021 17:49:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vlAe0sgXheJk for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Mar 2021 17:49:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com
 [IPv6:2607:f8b0:4864:20::102c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5B7B9837D3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Mar 2021 17:49:07 +0000 (UTC)
Received: by mail-pj1-x102c.google.com with SMTP id s21so5497971pjq.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Mar 2021 09:49:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=ajh1+QbItc7CsqYtQsH4LdTlMDdkFsd6TJkeoaijHjM=;
 b=V+qcxa61WxvejCeIFiIvFVkmHD+1U7Ak8JVX13gbzvAJyXxh29w33Ra8oknt9f3iUe
 fAhJvg3yYLbIjqP4Cql7fJWVhaOCNQMio1/OmYE71k8Wu6IPr6IuvnCVhAAVVsWkrDDO
 s4r+qhV62ILzDEPD4S4e3/DEJsZDCK3t5/zAKu1HKXTQNuAcE6igK9VtZJHl2ruVCWsa
 oM+xdzKOAPvWsfdaRkWZzsXKwW+cJCOq4mFMI9HkE0Y3bhabUj8dttqF9Ow1MjbIAdy4
 ffu0LdkPhGcpKd4TMZs+TBzelGlwIkT7XN30XH2CdsSwt8+UwuLwMnPkX0DRFkJTcv2S
 zbxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=ajh1+QbItc7CsqYtQsH4LdTlMDdkFsd6TJkeoaijHjM=;
 b=cxcu+k33V6OXMYBx4zOf28LtXT6INfsW3XssQIsb3aJtm4B3ZAFkKrqtNS9sl9Xt+L
 ffQJV6UbsCYJSIPG8+VfDK+1+S4kxkgmE8/3cSEXKntG5QcrDfDPBXvhaKoz8rXRFLaH
 +sjwayRtokREO90xJBWEwhDTA1xp6DujV9CckwfzeR3BzGYtU/n5DO7TicDWbsXmFs2T
 tTNJHeszMI3/UwCrpKdH+FZVS4IO2f5Pm51lQvxY3W6MpTbkr7M0LNWFF7LVU9aoPdrv
 /oRKpwpOmdAgE6pCS24+FnmzRlpi2/u8D2Xc1Hxf2Tdv3LBXueJ4zizmqxEZBsmz0Fb1
 SFZg==
X-Gm-Message-State: AOAM5321aSvjJTsBcod8w3WyPPId7HbhJAkIK6QKKUD1UdP2nEtJS1mv
 gqAr5uKAyQcwJF0wa1/bIN8=
X-Google-Smtp-Source: ABdhPJxhLvYpk6z257tbHZzFV+mCCJv9OjTEmwMVGdVYwbJwK9U4zLr/9wV4l4XjaKmLPKt+mMJQEw==
X-Received: by 2002:a17:90a:a96:: with SMTP id
 22mr15434593pjw.200.1615571346771; 
 Fri, 12 Mar 2021 09:49:06 -0800 (PST)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id p20sm6016169pgb.62.2021.03.12.09.49.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 09:49:06 -0800 (PST)
From: Alexander Duyck <alexander.duyck@gmail.com>
To: davem@davemloft.net, kuba@kernel.org
Date: Fri, 12 Mar 2021 09:49:05 -0800
Message-ID: <161557134554.10304.16528492027972862499.stgit@localhost.localdomain>
In-Reply-To: <161557111604.10304.1798900949114188676.stgit@localhost.localdomain>
References: <161557111604.10304.1798900949114188676.stgit@localhost.localdomain>
User-Agent: StGit/0.23
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH 10/10] ionic: Update driver to
 use ethtool_sprintf
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
Cc: doshir@vmware.com, mst@redhat.com, oss-drivers@netronome.com,
 jasowang@redhat.com, alexanderduyck@fb.com, akiyano@amazon.com,
 wei.liu@kernel.org, sthemmin@microsoft.com, pv-drivers@vmware.com,
 intel-wired-lan@lists.osuosl.org, Kernel-team@fb.com, yisen.zhuang@huawei.com,
 gtzalik@amazon.com, simon.horman@netronome.com, haiyangz@microsoft.com,
 drivers@pensando.io, salil.mehta@huawei.com, GR-Linux-NIC-Dev@marvell.com,
 rmody@marvell.com, netdev@vger.kernel.org, netanel@amazon.com,
 saeedb@amazon.com, snelson@pensando.io, skalluru@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alexander Duyck <alexanderduyck@fb.com>

Update the ionic driver to make use of ethtool_sprintf. In addition add
separate functions for Tx/Rx stats strings in order to reduce the total
amount of indenting needed in the driver code.

Acked-by: Shannon Nelson <snelson@pensando.io>
Signed-off-by: Alexander Duyck <alexanderduyck@fb.com>
---
 drivers/net/ethernet/pensando/ionic/ionic_stats.c |  145 +++++++++------------
 1 file changed, 60 insertions(+), 85 deletions(-)

diff --git a/drivers/net/ethernet/pensando/ionic/ionic_stats.c b/drivers/net/ethernet/pensando/ionic/ionic_stats.c
index 6ae75b771a15..308b4ac6c57b 100644
--- a/drivers/net/ethernet/pensando/ionic/ionic_stats.c
+++ b/drivers/net/ethernet/pensando/ionic/ionic_stats.c
@@ -246,98 +246,73 @@ static u64 ionic_sw_stats_get_count(struct ionic_lif *lif)
 	return total;
 }
 
+static void ionic_sw_stats_get_tx_strings(struct ionic_lif *lif, u8 **buf,
+					  int q_num)
+{
+	int i;
+
+	for (i = 0; i < IONIC_NUM_TX_STATS; i++)
+		ethtool_sprintf(buf, "tx_%d_%s", q_num,
+				ionic_tx_stats_desc[i].name);
+
+	if (!test_bit(IONIC_LIF_F_UP, lif->state) ||
+	    !test_bit(IONIC_LIF_F_SW_DEBUG_STATS, lif->state))
+		return;
+
+	for (i = 0; i < IONIC_NUM_TX_Q_STATS; i++)
+		ethtool_sprintf(buf, "txq_%d_%s", q_num,
+				ionic_txq_stats_desc[i].name);
+	for (i = 0; i < IONIC_NUM_DBG_CQ_STATS; i++)
+		ethtool_sprintf(buf, "txq_%d_cq_%s", q_num,
+				ionic_dbg_cq_stats_desc[i].name);
+	for (i = 0; i < IONIC_NUM_DBG_INTR_STATS; i++)
+		ethtool_sprintf(buf, "txq_%d_intr_%s", q_num,
+				ionic_dbg_intr_stats_desc[i].name);
+	for (i = 0; i < IONIC_MAX_NUM_SG_CNTR; i++)
+		ethtool_sprintf(buf, "txq_%d_sg_cntr_%d", q_num, i);
+}
+
+static void ionic_sw_stats_get_rx_strings(struct ionic_lif *lif, u8 **buf,
+					  int q_num)
+{
+	int i;
+
+	for (i = 0; i < IONIC_NUM_RX_STATS; i++)
+		ethtool_sprintf(buf, "rx_%d_%s", q_num,
+				ionic_rx_stats_desc[i].name);
+
+	if (!test_bit(IONIC_LIF_F_UP, lif->state) ||
+	    !test_bit(IONIC_LIF_F_SW_DEBUG_STATS, lif->state))
+		return;
+
+	for (i = 0; i < IONIC_NUM_DBG_CQ_STATS; i++)
+		ethtool_sprintf(buf, "rxq_%d_cq_%s", q_num,
+				ionic_dbg_cq_stats_desc[i].name);
+	for (i = 0; i < IONIC_NUM_DBG_INTR_STATS; i++)
+		ethtool_sprintf(buf, "rxq_%d_intr_%s", q_num,
+				ionic_dbg_intr_stats_desc[i].name);
+	for (i = 0; i < IONIC_NUM_DBG_NAPI_STATS; i++)
+		ethtool_sprintf(buf, "rxq_%d_napi_%s", q_num,
+				ionic_dbg_napi_stats_desc[i].name);
+	for (i = 0; i < IONIC_MAX_NUM_NAPI_CNTR; i++)
+		ethtool_sprintf(buf, "rxq_%d_napi_work_done_%d", q_num, i);
+}
+
 static void ionic_sw_stats_get_strings(struct ionic_lif *lif, u8 **buf)
 {
 	int i, q_num;
 
-	for (i = 0; i < IONIC_NUM_LIF_STATS; i++) {
-		snprintf(*buf, ETH_GSTRING_LEN, ionic_lif_stats_desc[i].name);
-		*buf += ETH_GSTRING_LEN;
-	}
+	for (i = 0; i < IONIC_NUM_LIF_STATS; i++)
+		ethtool_sprintf(buf, ionic_lif_stats_desc[i].name);
 
-	for (i = 0; i < IONIC_NUM_PORT_STATS; i++) {
-		snprintf(*buf, ETH_GSTRING_LEN,
-			 ionic_port_stats_desc[i].name);
-		*buf += ETH_GSTRING_LEN;
-	}
+	for (i = 0; i < IONIC_NUM_PORT_STATS; i++)
+		ethtool_sprintf(buf, ionic_port_stats_desc[i].name);
 
-	for (q_num = 0; q_num < MAX_Q(lif); q_num++) {
-		for (i = 0; i < IONIC_NUM_TX_STATS; i++) {
-			snprintf(*buf, ETH_GSTRING_LEN, "tx_%d_%s",
-				 q_num, ionic_tx_stats_desc[i].name);
-			*buf += ETH_GSTRING_LEN;
-		}
+	for (q_num = 0; q_num < MAX_Q(lif); q_num++)
+		ionic_sw_stats_get_tx_strings(lif, buf, q_num);
 
-		if (test_bit(IONIC_LIF_F_UP, lif->state) &&
-		    test_bit(IONIC_LIF_F_SW_DEBUG_STATS, lif->state)) {
-			for (i = 0; i < IONIC_NUM_TX_Q_STATS; i++) {
-				snprintf(*buf, ETH_GSTRING_LEN,
-					 "txq_%d_%s",
-					 q_num,
-					 ionic_txq_stats_desc[i].name);
-				*buf += ETH_GSTRING_LEN;
-			}
-			for (i = 0; i < IONIC_NUM_DBG_CQ_STATS; i++) {
-				snprintf(*buf, ETH_GSTRING_LEN,
-					 "txq_%d_cq_%s",
-					 q_num,
-					 ionic_dbg_cq_stats_desc[i].name);
-				*buf += ETH_GSTRING_LEN;
-			}
-			for (i = 0; i < IONIC_NUM_DBG_INTR_STATS; i++) {
-				snprintf(*buf, ETH_GSTRING_LEN,
-					 "txq_%d_intr_%s",
-					 q_num,
-					 ionic_dbg_intr_stats_desc[i].name);
-				*buf += ETH_GSTRING_LEN;
-			}
-			for (i = 0; i < IONIC_MAX_NUM_SG_CNTR; i++) {
-				snprintf(*buf, ETH_GSTRING_LEN,
-					 "txq_%d_sg_cntr_%d",
-					 q_num, i);
-				*buf += ETH_GSTRING_LEN;
-			}
-		}
-	}
-	for (q_num = 0; q_num < MAX_Q(lif); q_num++) {
-		for (i = 0; i < IONIC_NUM_RX_STATS; i++) {
-			snprintf(*buf, ETH_GSTRING_LEN,
-				 "rx_%d_%s",
-				 q_num, ionic_rx_stats_desc[i].name);
-			*buf += ETH_GSTRING_LEN;
-		}
-
-		if (test_bit(IONIC_LIF_F_UP, lif->state) &&
-		    test_bit(IONIC_LIF_F_SW_DEBUG_STATS, lif->state)) {
-			for (i = 0; i < IONIC_NUM_DBG_CQ_STATS; i++) {
-				snprintf(*buf, ETH_GSTRING_LEN,
-					 "rxq_%d_cq_%s",
-					 q_num,
-					 ionic_dbg_cq_stats_desc[i].name);
-				*buf += ETH_GSTRING_LEN;
-			}
-			for (i = 0; i < IONIC_NUM_DBG_INTR_STATS; i++) {
-				snprintf(*buf, ETH_GSTRING_LEN,
-					 "rxq_%d_intr_%s",
-					 q_num,
-					 ionic_dbg_intr_stats_desc[i].name);
-				*buf += ETH_GSTRING_LEN;
-			}
-			for (i = 0; i < IONIC_NUM_DBG_NAPI_STATS; i++) {
-				snprintf(*buf, ETH_GSTRING_LEN,
-					 "rxq_%d_napi_%s",
-					 q_num,
-					 ionic_dbg_napi_stats_desc[i].name);
-				*buf += ETH_GSTRING_LEN;
-			}
-			for (i = 0; i < IONIC_MAX_NUM_NAPI_CNTR; i++) {
-				snprintf(*buf, ETH_GSTRING_LEN,
-					 "rxq_%d_napi_work_done_%d",
-					 q_num, i);
-				*buf += ETH_GSTRING_LEN;
-			}
-		}
-	}
+	for (q_num = 0; q_num < MAX_Q(lif); q_num++)
+		ionic_sw_stats_get_rx_strings(lif, buf, q_num);
 }
 
 static void ionic_sw_stats_get_values(struct ionic_lif *lif, u64 **buf)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
