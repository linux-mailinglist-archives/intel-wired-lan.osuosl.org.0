Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A47263369C1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Mar 2021 02:36:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F61C4651F;
	Thu, 11 Mar 2021 01:36:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TzD1LsNdsvWm; Thu, 11 Mar 2021 01:36:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8E59E454B4;
	Thu, 11 Mar 2021 01:36:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 06DAB1BF38B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 01:36:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E96C860671
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 01:36:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4uto9-Y_P8wW for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Mar 2021 01:36:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com
 [IPv6:2607:f8b0:4864:20::435])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3508B60649
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 01:36:19 +0000 (UTC)
Received: by mail-pf1-x435.google.com with SMTP id t29so13291544pfg.11
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Mar 2021 17:36:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=zwmi3JuPnTfduGik1QpBW0Dj/Zas5L1dP4lxc4Bo/Vs=;
 b=i4G35mw/8BI/K7IRD8mxtGPoZ3WhZrM1+xPmXQbsjDp38uqH0L+G8bAycOsStHzfZM
 z8PoUY9ighgV7plV1V1XegX1IzaWG+rXAuUKPqGk1Sb1upJX1R3LU7N0I6/TdfnPq5JT
 oYq2vGqUPNuyhh6KTTw9eneYlDBLaO1/ALpoVGcapnsSHspcYpuKVAoMRCw+DOdnwA55
 5d4OnRuOdbDAT67Cm5OdVLCg+89Hlqwjf6aPNobPBuJFcqgm8ED3aGeeZQZHouR2Hfcr
 NgXSJ5PpgOFyxiObAjxgNSSBRFoH1JElrl8zh5YXxR18eBdDBEIvQ7LERtg0U8soKrvt
 dBRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=zwmi3JuPnTfduGik1QpBW0Dj/Zas5L1dP4lxc4Bo/Vs=;
 b=PIUUTZqiOkIP0gSbGVLMVPrl7hc1vo+FyIZM4MT+CLrH/dJYDbo7tB6JV4bcOEPjW3
 PJEtzWxR373XizxX0RJGCMFaADtp4u/41/Y2OMBWd771T5320VWijNRFbykJZGIWNdkb
 Ew4OPxPtuMk35GgN0cUUGhwW2fXgCwPH8yUAZ7WLX0dsvARbYwGZ8yx0gkv+JI+T8MKF
 S7NDPGmszAXN/zIOvRwt9oAN/ZTi7uE6+N4RxYoRcM4rTSJYmWs3pmSq3eV+dSvABeeU
 H2BzNn/nqza0CQh/kSDvtNjMC7kApeVSHhYEYv5lH3pXl97gqc2rbgnk3DNVEyCC2Ont
 J7+g==
X-Gm-Message-State: AOAM531toogOGjL7H+vtGrljsf3pE1faB1c/muIHT4NTjYfLvb4JasT+
 Ovp86gwg13wX+fALv0cQ2wQ=
X-Google-Smtp-Source: ABdhPJzK4EkTkJtt9aP4Ni5V8SaqhKldWhBhRqKKxLz96ZlccdDyVk5oHYBCdFpvS0za6aU4PbCdTA==
X-Received: by 2002:a62:e805:0:b029:1f8:16ba:4518 with SMTP id
 c5-20020a62e8050000b02901f816ba4518mr5290933pfi.37.1615426578576; 
 Wed, 10 Mar 2021 17:36:18 -0800 (PST)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id gg22sm532748pjb.20.2021.03.10.17.36.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Mar 2021 17:36:18 -0800 (PST)
From: Alexander Duyck <alexander.duyck@gmail.com>
To: kuba@kernel.org
Date: Wed, 10 Mar 2021 17:36:17 -0800
Message-ID: <161542657729.13546.14928347259921159903.stgit@localhost.localdomain>
In-Reply-To: <161542634192.13546.4185974647834631704.stgit@localhost.localdomain>
References: <161542634192.13546.4185974647834631704.stgit@localhost.localdomain>
User-Agent: StGit/0.23
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC PATCH 10/10] ionic: Update driver to use
 ethtool_gsprintf
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
 intel-wired-lan@lists.osuosl.org, yisen.zhuang@huawei.com, gtzalik@amazon.com,
 simon.horman@netronome.com, haiyangz@microsoft.com, drivers@pensando.io,
 salil.mehta@huawei.com, GR-Linux-NIC-Dev@marvell.com, rmody@marvell.com,
 netdev@vger.kernel.org, netanel@amazon.com, saeedb@amazon.com,
 snelson@pensando.io, skalluru@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alexander Duyck <alexanderduyck@fb.com>

Update the ionic driver to make use of ethtool_gsprintf. In addition add
separate functions for Tx/Rx stats strings in order to reduce the total
amount of indenting needed in the driver code.

Signed-off-by: Alexander Duyck <alexanderduyck@fb.com>
---
 drivers/net/ethernet/pensando/ionic/ionic_stats.c |  145 +++++++++------------
 1 file changed, 60 insertions(+), 85 deletions(-)

diff --git a/drivers/net/ethernet/pensando/ionic/ionic_stats.c b/drivers/net/ethernet/pensando/ionic/ionic_stats.c
index 6ae75b771a15..1dac960386df 100644
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
+		ethtool_gsprintf(buf, "tx_%d_%s", q_num,
+				 ionic_tx_stats_desc[i].name);
+
+	if (!test_bit(IONIC_LIF_F_UP, lif->state) ||
+	    !test_bit(IONIC_LIF_F_SW_DEBUG_STATS, lif->state))
+		return;
+
+	for (i = 0; i < IONIC_NUM_TX_Q_STATS; i++)
+		ethtool_gsprintf(buf, "txq_%d_%s", q_num,
+				 ionic_txq_stats_desc[i].name);
+	for (i = 0; i < IONIC_NUM_DBG_CQ_STATS; i++)
+		ethtool_gsprintf(buf, "txq_%d_cq_%s", q_num,
+				 ionic_dbg_cq_stats_desc[i].name);
+	for (i = 0; i < IONIC_NUM_DBG_INTR_STATS; i++)
+		ethtool_gsprintf(buf, "txq_%d_intr_%s", q_num,
+				 ionic_dbg_intr_stats_desc[i].name);
+	for (i = 0; i < IONIC_MAX_NUM_SG_CNTR; i++)
+		ethtool_gsprintf(buf, "txq_%d_sg_cntr_%d", q_num, i);
+}
+
+static void ionic_sw_stats_get_rx_strings(struct ionic_lif *lif, u8 **buf,
+					  int q_num)
+{
+	int i;
+
+	for (i = 0; i < IONIC_NUM_RX_STATS; i++)
+		ethtool_gsprintf(buf, "rx_%d_%s", q_num,
+				 ionic_rx_stats_desc[i].name);
+
+	if (!test_bit(IONIC_LIF_F_UP, lif->state) ||
+	    !test_bit(IONIC_LIF_F_SW_DEBUG_STATS, lif->state))
+		return;
+
+	for (i = 0; i < IONIC_NUM_DBG_CQ_STATS; i++)
+		ethtool_gsprintf(buf, "rxq_%d_cq_%s", q_num,
+				 ionic_dbg_cq_stats_desc[i].name);
+	for (i = 0; i < IONIC_NUM_DBG_INTR_STATS; i++)
+		ethtool_gsprintf(buf, "rxq_%d_intr_%s", q_num,
+				 ionic_dbg_intr_stats_desc[i].name);
+	for (i = 0; i < IONIC_NUM_DBG_NAPI_STATS; i++)
+		ethtool_gsprintf(buf, "rxq_%d_napi_%s", q_num,
+				 ionic_dbg_napi_stats_desc[i].name);
+	for (i = 0; i < IONIC_MAX_NUM_NAPI_CNTR; i++)
+		ethtool_gsprintf(buf, "rxq_%d_napi_work_done_%d", q_num, i);
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
+		ethtool_gsprintf(buf, ionic_lif_stats_desc[i].name);
 
-	for (i = 0; i < IONIC_NUM_PORT_STATS; i++) {
-		snprintf(*buf, ETH_GSTRING_LEN,
-			 ionic_port_stats_desc[i].name);
-		*buf += ETH_GSTRING_LEN;
-	}
+	for (i = 0; i < IONIC_NUM_PORT_STATS; i++)
+		ethtool_gsprintf(buf, ionic_port_stats_desc[i].name);
 
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
