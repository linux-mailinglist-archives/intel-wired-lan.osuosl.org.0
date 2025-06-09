Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F09B6AD23D0
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Jun 2025 18:25:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B1258613CE;
	Mon,  9 Jun 2025 16:25:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 88vR1A34T7Uu; Mon,  9 Jun 2025 16:25:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 19274613E8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749486353;
	bh=rIrnh6Y6z0RsAszSzJMckGXGP+N0IS1GPSV62LbBz1M=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4C3ResiOiBVIc4De3Ys7KjPxbGvvbBV4nlSh6XbbBya0zcb7GtfO47K8UKWuzVAFX
	 dqa6lXchbtsti94BLstSN5yre47aHZ7JdXvydT5tqQNUTSW0eSqKVRcODjaM+zOqPj
	 kyNyysCNntYZzbruBJbp+SsigQSCnd8n6a4xLZ8hZwzN2jQh7Aj5SipfCLuEnsj5N2
	 Mvf2cf5eOOC5Xio+V6qQTUL3g35qjHCA1FdgLdDY3whkFSMHlYS5zkk9QY88VvaFVA
	 7s+njMueafgwGQK1Qsv3WwV8s1YPoxAGl+F9jOqCrlw4+y8XTM/utgEnkuPn/D7kel
	 8phlDOEdIC4iQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 19274613E8;
	Mon,  9 Jun 2025 16:25:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id A93541F2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 16:25:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9B628613AB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 16:25:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3Rg4Le93aJhj for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Jun 2025 16:25:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::42b; helo=mail-pf1-x42b.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F07DB613CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F07DB613CE
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com
 [IPv6:2607:f8b0:4864:20::42b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F07DB613CE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 16:25:49 +0000 (UTC)
Received: by mail-pf1-x42b.google.com with SMTP id
 d2e1a72fcca58-74800b81f1bso3430529b3a.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 09 Jun 2025 09:25:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1749486349; x=1750091149;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=rIrnh6Y6z0RsAszSzJMckGXGP+N0IS1GPSV62LbBz1M=;
 b=R7XBJseThXrMHfH2xURCALbn++YrkeuP5zM7X/2COaaZR7Rv42pFMpxWTFJYGIhAS1
 KGcgO63SCXs0lvYj9jnfOdFcGMx8PmPBhG73BLJwDCrFnXKJsfT4JeaKVpCLnvEreiGh
 bLXU7fNE3q4wMURTIfSIKRWRIrZRp0rfQU3fJEOh6jJvz/qCajVUlJ6PZIsYv0aCqM5T
 X6hb2/1vMeLTj+THiXrcOyH/3DYa5bq31KXn5mzz/73Yx+lNK9Hf9ztFJF1Yxy5z+6jY
 c+LX8dmgNp8oUiTIhG17l+UWzjLG1lj3dOnOVBjtaKQG/YE52rVTl+UEL/YV25Mp52MB
 xdXQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXshnNPOc13+kaxUeNuf0grCXzuv9l+lJ9QeX3Nn91Sl1tJ/BpMe86BIiPulnS3OmQQTUZE/qGCOAp8VoRJuu4=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yz8fnwy6XSM7NOfSNbc4nulZN/21g4csYaeuvL2TTQpZOJSTKHQ
 4Z+o4luepJa9OxkglQoz2QxTLcU0Xns7a7JbrJEdwajEKifH91oggIc=
X-Gm-Gg: ASbGnctQB/E1fsyXmENIPFMIBroFkqJYV30cRYQHCjYmoP8jSCMgSDZAIX2lX+wZ6QM
 4QMljX904kH1JDR0J4D6AIAoz+uVklMLCCxQBDAFYqRsE7xixOeTJnOGIdpdvmHEJ/7sCAjdBUy
 sRuCxknAejvKqcIeLhIffJdf4di2Q5dbjAp6yWHlhm5AVD4TuL6FRCvBvBncptsUlNNYQFRVPI2
 MPB+Q/LSiXmsoVnDW/aTbh6pnPfBtYa/FJMdN+d3BchT+1VtrR6o9TsmSixoZf6qgemJAZ92XLz
 Chl+WBxma09VsTGgOWr2TYJQDPBUju4z07b3lphD6/gnuW3f1bSqw2gGfPR9X9RkvQekhLCxSwR
 zqHFrlVPuG9C5
X-Google-Smtp-Source: AGHT+IHWJwEpttKcOYtxUVS3ky2ehdeYMgNt9I8XWQyiwY2W97FEQfM0AyDBiEXIyrcRZ6JMgZ6g5w==
X-Received: by 2002:a05:6a21:1fc5:b0:1f5:7ba7:69d8 with SMTP id
 adf61e73a8af0-21ee25321f3mr19247516637.15.1749486349275; 
 Mon, 09 Jun 2025 09:25:49 -0700 (PDT)
Received: from localhost (c-73-158-218-242.hsd1.ca.comcast.net.
 [73.158.218.242]) by smtp.gmail.com with UTF8SMTPSA id
 d2e1a72fcca58-7482b0ea2b2sm5915308b3a.161.2025.06.09.09.25.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Jun 2025 09:25:48 -0700 (PDT)
From: Stanislav Fomichev <stfomichev@gmail.com>
To: netdev@vger.kernel.org
Cc: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, skalluru@marvell.com, manishc@marvell.com,
 andrew+netdev@lunn.ch, michael.chan@broadcom.com,
 pavan.chebbi@broadcom.com, ajit.khaparde@broadcom.com,
 sriharsha.basavapatna@broadcom.com, somnath.kotur@broadcom.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 tariqt@nvidia.com, saeedm@nvidia.com, louis.peens@corigine.com,
 shshaikh@marvell.com, GR-Linux-NIC-Dev@marvell.com, ecree.xilinx@gmail.com,
 horms@kernel.org, dsahern@kernel.org, shuah@kernel.org, mheib@redhat.com,
 ruanjinjie@huawei.com, stfomichev@gmail.com, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 oss-drivers@corigine.com, linux-net-drivers@amd.com,
 linux-kselftest@vger.kernel.org, leon@kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Mon,  9 Jun 2025 09:25:41 -0700
Message-ID: <20250609162541.1230022-5-stfomichev@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250609162541.1230022-1-stfomichev@gmail.com>
References: <20250609162541.1230022-1-stfomichev@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1749486349; x=1750091149; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=rIrnh6Y6z0RsAszSzJMckGXGP+N0IS1GPSV62LbBz1M=;
 b=cZ5IK7ZYVqgZH1+RQbVZsLzakm2kH5VyJWlOR22PsNvrr4woxif5nfcAHE7smdE1eq
 orOD9hVrDH04sQkhE2rDcwn+SXXk8rKfz8AcV2MAbGyrC1bYMkhLZHFe4Ng+CTGUJ5JC
 FsOuep7zP5p5xeV7VjuwxHmaZSullCtiUbX29Nx3hZY1OUrejoFZuiY3SwWZCegyIgDn
 doYE/cZddVZcm75xhJHNqr5nmwuGrS7fMy6DCiakk8MdkvaLrsgaSug50jurfOc3Ree/
 mVUu1VCvM3jpWFCqFMdUqPvgaPfvVjbfaH1avoRoplnsUAdwCuP2BT1mRti/cET7ygZH
 ct7A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=cZ5IK7ZY
Subject: [Intel-wired-lan] [PATCH net-next v2 4/4] Revert "bnxt_en: bring
 back rtnl_lock() in the bnxt_open() path"
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

This reverts commit 325eb217e41fa14f307c7cc702bd18d0bb38fe84.

udp_tunnel infra doesn't need RTNL, should be safe to get back
to only netdev instance lock.

Cc: Michael Chan <michael.chan@broadcom.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Stanislav Fomichev <stfomichev@gmail.com>
---
 drivers/net/ethernet/broadcom/bnxt/bnxt.c | 36 +++++------------------
 1 file changed, 7 insertions(+), 29 deletions(-)

diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt.c b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
index a3dadde65b8d..1da208c36572 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt.c
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
@@ -14055,28 +14055,13 @@ static void bnxt_unlock_sp(struct bnxt *bp)
 	netdev_unlock(bp->dev);
 }
 
-/* Same as bnxt_lock_sp() with additional rtnl_lock */
-static void bnxt_rtnl_lock_sp(struct bnxt *bp)
-{
-	clear_bit(BNXT_STATE_IN_SP_TASK, &bp->state);
-	rtnl_lock();
-	netdev_lock(bp->dev);
-}
-
-static void bnxt_rtnl_unlock_sp(struct bnxt *bp)
-{
-	set_bit(BNXT_STATE_IN_SP_TASK, &bp->state);
-	netdev_unlock(bp->dev);
-	rtnl_unlock();
-}
-
 /* Only called from bnxt_sp_task() */
 static void bnxt_reset(struct bnxt *bp, bool silent)
 {
-	bnxt_rtnl_lock_sp(bp);
+	bnxt_lock_sp(bp);
 	if (test_bit(BNXT_STATE_OPEN, &bp->state))
 		bnxt_reset_task(bp, silent);
-	bnxt_rtnl_unlock_sp(bp);
+	bnxt_unlock_sp(bp);
 }
 
 /* Only called from bnxt_sp_task() */
@@ -14084,9 +14069,9 @@ static void bnxt_rx_ring_reset(struct bnxt *bp)
 {
 	int i;
 
-	bnxt_rtnl_lock_sp(bp);
+	bnxt_lock_sp(bp);
 	if (!test_bit(BNXT_STATE_OPEN, &bp->state)) {
-		bnxt_rtnl_unlock_sp(bp);
+		bnxt_unlock_sp(bp);
 		return;
 	}
 	/* Disable and flush TPA before resetting the RX ring */
@@ -14125,7 +14110,7 @@ static void bnxt_rx_ring_reset(struct bnxt *bp)
 	}
 	if (bp->flags & BNXT_FLAG_TPA)
 		bnxt_set_tpa(bp, true);
-	bnxt_rtnl_unlock_sp(bp);
+	bnxt_unlock_sp(bp);
 }
 
 static void bnxt_fw_fatal_close(struct bnxt *bp)
@@ -15017,17 +15002,15 @@ static void bnxt_fw_reset_task(struct work_struct *work)
 		bp->fw_reset_state = BNXT_FW_RESET_STATE_OPENING;
 		fallthrough;
 	case BNXT_FW_RESET_STATE_OPENING:
-		while (!rtnl_trylock()) {
+		while (!netdev_trylock(bp->dev)) {
 			bnxt_queue_fw_reset_work(bp, HZ / 10);
 			return;
 		}
-		netdev_lock(bp->dev);
 		rc = bnxt_open(bp->dev);
 		if (rc) {
 			netdev_err(bp->dev, "bnxt_open() failed during FW reset\n");
 			bnxt_fw_reset_abort(bp, rc);
 			netdev_unlock(bp->dev);
-			rtnl_unlock();
 			goto ulp_start;
 		}
 
@@ -15047,7 +15030,6 @@ static void bnxt_fw_reset_task(struct work_struct *work)
 			bnxt_dl_health_fw_status_update(bp, true);
 		}
 		netdev_unlock(bp->dev);
-		rtnl_unlock();
 		bnxt_ulp_start(bp, 0);
 		bnxt_reenable_sriov(bp);
 		netdev_lock(bp->dev);
@@ -15996,7 +15978,7 @@ static int bnxt_queue_start(struct net_device *dev, void *qmem, int idx)
 		   rc);
 	napi_enable_locked(&bnapi->napi);
 	bnxt_db_nq_arm(bp, &cpr->cp_db, cpr->cp_raw_cons);
-	netif_close(dev);
+	bnxt_reset_task(bp, true);
 	return rc;
 }
 
@@ -16812,7 +16794,6 @@ static int bnxt_resume(struct device *device)
 	struct bnxt *bp = netdev_priv(dev);
 	int rc = 0;
 
-	rtnl_lock();
 	netdev_lock(dev);
 	rc = pci_enable_device(bp->pdev);
 	if (rc) {
@@ -16857,7 +16838,6 @@ static int bnxt_resume(struct device *device)
 
 resume_exit:
 	netdev_unlock(bp->dev);
-	rtnl_unlock();
 	bnxt_ulp_start(bp, rc);
 	if (!rc)
 		bnxt_reenable_sriov(bp);
@@ -17023,7 +17003,6 @@ static void bnxt_io_resume(struct pci_dev *pdev)
 	int err;
 
 	netdev_info(bp->dev, "PCI Slot Resume\n");
-	rtnl_lock();
 	netdev_lock(netdev);
 
 	err = bnxt_hwrm_func_qcaps(bp);
@@ -17041,7 +17020,6 @@ static void bnxt_io_resume(struct pci_dev *pdev)
 		netif_device_attach(netdev);
 
 	netdev_unlock(netdev);
-	rtnl_unlock();
 	bnxt_ulp_start(bp, err);
 	if (!err)
 		bnxt_reenable_sriov(bp);
-- 
2.49.0

