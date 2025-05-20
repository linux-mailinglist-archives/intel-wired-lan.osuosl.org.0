Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 20DC9ABE4D3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 May 2025 22:36:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B0EAB610C9;
	Tue, 20 May 2025 20:36:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AbqvNSY5wwih; Tue, 20 May 2025 20:36:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2C674610DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747773385;
	bh=jCeM+ec5B4gH6tk0fEnypFNTVZat6T1JxRuML0u4Z8U=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cxsY8mOjMKwyifLqUOjd9qxRjmoLkXe8dQEtKog0zAMk5+GtqX7ZnB/ID2+wpBJya
	 vHbvnRrZg5VHbd+UL8h2uegZhsMzVsmehKibBmG+0Ou8c+emPpBLyTINUdaQmSguqN
	 97Vyp2lplfD4lChqKawEiorT2s06PFzUf+lr8IdY6BQZaF8+M6x9eF4bb8HV3jV7w7
	 0j/vnyp8YQ3QEHPK84CDyOSU0hOCzAAdwdjOtZi2zy9XUCm08viw39zC8YGDmS+qx/
	 gkItUvp69OWt9JTbhjv/T3dB2Os+3i8Z7V2qHKfR7Dc/py7ziIqlUZgTwZKuAeF5MK
	 oXyJbAqTqLqqQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2C674610DA;
	Tue, 20 May 2025 20:36:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 19F71D4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 20:36:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 732DE610C4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 20:36:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tyyuuPnfBHm5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 May 2025 20:36:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62b; helo=mail-pl1-x62b.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CC555610A9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CC555610A9
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com
 [IPv6:2607:f8b0:4864:20::62b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CC555610A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 20:36:20 +0000 (UTC)
Received: by mail-pl1-x62b.google.com with SMTP id
 d9443c01a7336-2322f8afe02so25101325ad.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 13:36:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747773380; x=1748378180;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=jCeM+ec5B4gH6tk0fEnypFNTVZat6T1JxRuML0u4Z8U=;
 b=W0CNPXFMrFUlp0FcnnXGATFWhxbWC9jv2AOnvbno/bceybYGcQvjmnt6XIutOqFcBP
 RaKQERNv0PjMe8qxXUfXGOSfCygbW/F9qLkSq2tjhzFGNtiAIZ1C+AF5ipE989OPnDLZ
 KiOpy2rtjYqAlpp0NaLpxVssVkLNEhj4XZRJXYKPOOQEO3ineK9g+sgLXN4tAovZOG4H
 fI19ZTJkpA7zn25RkEXXcMLUDP0esOIdYTjTgqF49we8bE/dH3g1YzPawr70bIb90ZuM
 PMy7YPcodXvUOUrKSipdgoBno7200Z60F8NE39tG4q94fQEPcC55XzfQ8MLvlBHj9t0F
 RK/Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCWIbdB7c04V1saOBHUrapk7rFDmBPxkWiAxQLLul9udESrbs0RERfzTXG6q69SwVIORET5sv5M1jZTLEqm5l0U=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yx4YbOVhnvvTh6HqFCCRaf+ReyiGO8U4PGeLWw3fMbBpR53RX57
 3mk5EFndptfOhCdo6zqIKwLtdfUKGMmFRfm3jrVyHGR1w/XAubJYvBk=
X-Gm-Gg: ASbGncsujqejJtMiVmeIYuiXSEO9r4wQw7FjFsxB9hMvUQIb/RzM5fs3og+ouOGF3Je
 v//pSzkM1JosLBFmzcWJg182F+l6KhzRlbsERUr/2C5NOWIiryZmXRmqZAJVAfeXfh/Zwyhw5pB
 7zpmlNMvRxIjMQrk443JJbaTYU7O3Y4DSxgpgSCSiAX1zJ3GvaPoVHhSAcx0kaQbKOp5j/jnj3X
 wnVGe4R3It/FIrtvOC/yQi6doILSYHp+NyZLx7LcvyCccp+NaEbMWfAn2v1CuwsGRRP762zJAZU
 2NP3airWBioH3SB5y5w6s1/q97Sh1OGtmihZ7TXgOG81QW1oyoRKHqTkqznPTFs3M+kBXIcpjsw
 jC2gdCCSyrLCi
X-Google-Smtp-Source: AGHT+IHZAUIjrGWx7MHglWxuwcEk9khRmWgUQFYbF5wFZSXKA6EsR94YaJWuTX/WLyK6xZKL0cxykw==
X-Received: by 2002:a17:902:d483:b0:232:17d8:486 with SMTP id
 d9443c01a7336-23217d81153mr195813465ad.22.1747773380107; 
 Tue, 20 May 2025 13:36:20 -0700 (PDT)
Received: from localhost (c-73-158-218-242.hsd1.ca.comcast.net.
 [73.158.218.242]) by smtp.gmail.com with UTF8SMTPSA id
 d9443c01a7336-231d4ebba01sm80212605ad.208.2025.05.20.13.36.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 May 2025 13:36:19 -0700 (PDT)
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
 horms@kernel.org, dsahern@kernel.org, ruanjinjie@huawei.com,
 mheib@redhat.com, stfomichev@gmail.com, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 oss-drivers@corigine.com, linux-net-drivers@amd.com, leon@kernel.org
Date: Tue, 20 May 2025 13:36:14 -0700
Message-ID: <20250520203614.2693870-4-stfomichev@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250520203614.2693870-1-stfomichev@gmail.com>
References: <20250520203614.2693870-1-stfomichev@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1747773380; x=1748378180; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=jCeM+ec5B4gH6tk0fEnypFNTVZat6T1JxRuML0u4Z8U=;
 b=XeyIcmUwWNaqia01Z5iUujXuPj8h9DX/l6pDYpNGhLNcaZCa8ghc8Ud1g15RJ6Cwhs
 hbIIBRDkKNjAOPADfwt+ibOHTSLCT91MiJrEohWNtw0AAfwaMf7Tr0Mc2HDJK+kleATJ
 pCkFwJQ6rMuFrsmmjXHCAUBWYJDl/7bLCsTqGlWUIPOpZlhFhfwHls0P6/YfPyWAVCv1
 hPgAmgzHby+V2SNge24IXMPIs/QvRA1NZ4p92n8p2GVep8HbaEQBZJrCmKlemvTsS6OM
 sFNa4Y4NImSqEySFGbrN2hzn3DE4vsT/D2w6fQvpM3AKZ+kVZ8kIPSJLokPi/JM5Mjra
 e1/A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=XeyIcmUw
Subject: [Intel-wired-lan] [PATCH net-next 3/3] Revert "bnxt_en: bring back
 rtnl_lock() in the bnxt_open() path"
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

