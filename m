Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 74495AD4033
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Jun 2025 19:15:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EBC426129E;
	Tue, 10 Jun 2025 17:15:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1Mvk-iy7NwDQ; Tue, 10 Jun 2025 17:15:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 23216615F9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749575733;
	bh=rIrnh6Y6z0RsAszSzJMckGXGP+N0IS1GPSV62LbBz1M=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XN/ylhVCDv2Ns6+pWpgOA/qw0pQHqGkCLW0QOSKC10LsurdG94iDuefujKomq+nv9
	 jPhJYoFy4vmybLVcLIAwVvjtmgIXPJJGjfKTSlWj74wnNETTY5JXkn3yAe/kKthzpi
	 fApcUgjcMYnrjASKA/VWH43ht33l+nuNxr7ukDvbeMcK7OoebgOCKqDtQnNmnUTYq6
	 7uRMNFxKTy+keRErbKCcQpyHyQHFat/7+VZRhxLmIn1iak/Jx5Y/bIz/a7s761l8is
	 TOOF5emMDyCLXnjWGr/sIIVElgGV8KpEILCc2nSseg4iJHWaV2ghfEN9OjdgMVSVT2
	 CApWBy6A/1o7w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 23216615F9;
	Tue, 10 Jun 2025 17:15:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 35A541F2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 17:15:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1C9D483CA8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 17:15:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PGJUSSUlfJhh for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Jun 2025 17:15:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62d; helo=mail-pl1-x62d.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 847B983C92
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 847B983C92
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com
 [IPv6:2607:f8b0:4864:20::62d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 847B983C92
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 17:15:30 +0000 (UTC)
Received: by mail-pl1-x62d.google.com with SMTP id
 d9443c01a7336-2363e973db1so608365ad.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 10:15:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1749575730; x=1750180530;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=rIrnh6Y6z0RsAszSzJMckGXGP+N0IS1GPSV62LbBz1M=;
 b=IQj+EEf3klcYtPCLiDXXsJamOz7w+p0smb/VzAkIt79Fjc88oUOESk8aEFC0yUxvhQ
 lSrjY5bnJrI+hLB15srVOqq4597YJBU/7odzRNypEwCC1NoEIquj1syGXuzFZABlbh7E
 7nDSu408FRcqEe5032F3H/WYfiuTjKQzHEUIixg3NNFoDUqsEYCKNgzzANwPCAzRZZT0
 Nk2tnGVMCSeZT8EbNF7dGoLJSi2BLg48uLUGt/I0jkEMQ9MfGAwoq88ryu60U0qQDytv
 QMyqkog15DpXTdYnxvd6D5r/GKkYR/Q97fx390pxzzFOhx048qwbc8V1Golhf5lWPY4M
 mOqw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWf/LlQcQmgPhFK00/DRRxcBTEWvqw7dthf7nZogBLLZ67S7JQwP6ofG9jpaFyx0HBmUlnd8JRr6FO71Zl5Aw0=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yz1gM7PICKHO+56GWkJ07T84DNq3kSscOXiIzro62fRwn+YwHXB
 B7d/vSu+PrwrYIJtaBspmdx0sd6ay1cQf2zn3Zd0UzdC5RxqU5xqhWs=
X-Gm-Gg: ASbGncsht30/46BlbjMZQ+6VJXxybJ/QKSJIIKx26//Q5/zEi4E6EeUfkgMz5ft1+BH
 UMEWxQFn0gPjVcFLwSYD3JzYHF9Il3YYDWTJom67k4CeGQ2tla5//MOnQq6SV2RhE1VCft+O6Zp
 FVrgFLAq58IX4W+3yv8jPMF5sGOKKDjFr97XpRVKF8KilwnUqGQIJxqJpJs+KbexjuBie00/l3+
 tnCWJScYK0K/mZu+B87CgTZnwATBIWvKJDXMVcr51Dx1j0pyNo23ignbogCLWFbEY2x1h7OK0XA
 1uWerJyThYbdhOfkAO5d4oZIlffbDMrs5aiMjxOpfKB16aFSlB8h8/MDJQwG8MwpC9eNO2ttTJK
 vqZqGPWJxETjsb8DN21XNSXw=
X-Google-Smtp-Source: AGHT+IGjKW9uxJxECrtSXh89niGE9d1wlACS6WP7qG1lr3n7ec7MLI9AA185gIqYfLOWUsY3utuoDQ==
X-Received: by 2002:a17:903:1b44:b0:231:d0da:5e1f with SMTP id
 d9443c01a7336-2364183445fmr2280735ad.21.1749575729503; 
 Tue, 10 Jun 2025 10:15:29 -0700 (PDT)
Received: from localhost (c-73-158-218-242.hsd1.ca.comcast.net.
 [73.158.218.242]) by smtp.gmail.com with UTF8SMTPSA id
 d9443c01a7336-236032fccd6sm73703615ad.134.2025.06.10.10.15.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Jun 2025 10:15:29 -0700 (PDT)
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
 horms@kernel.org, dsahern@kernel.org, shuah@kernel.org,
 ruanjinjie@huawei.com, mheib@redhat.com, stfomichev@gmail.com,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-rdma@vger.kernel.org, oss-drivers@corigine.com,
 linux-net-drivers@amd.com, linux-kselftest@vger.kernel.org,
 leon@kernel.org, Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Tue, 10 Jun 2025 10:15:22 -0700
Message-ID: <20250610171522.2119030-5-stfomichev@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250610171522.2119030-1-stfomichev@gmail.com>
References: <20250610171522.2119030-1-stfomichev@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1749575730; x=1750180530; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=rIrnh6Y6z0RsAszSzJMckGXGP+N0IS1GPSV62LbBz1M=;
 b=GE6098CydrBaBZo13zPaoxHSQ/CyJH9pfqk7XHg9l40N5FSK/NBBeNpmRGMKXkR0er
 uXrUuMwUpRIJ/+8Qtei301n2YB5/otdcJ2lZI6mlmgpKi66fJxT1bYXo8Sqw431y+PhP
 MX7c5RxW1zsoOhG7vrzETfdRUL8X1vY46EAPLl3bwEsk1v2yWf55A+R0s+ZsIPoBROFK
 /EkA9x+rfCuG3eTDe1ZkeKBJTOAMAYxja+2CJg8Sj3jdtLP+2LVOaLSxBLbdLROdeu7l
 bwpG5LvmtESmW+V09CxR8edqnngg7aC9neRUiDd+K8Y5E03313Kj7jX6uao7aS6G6a72
 T1xw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=GE6098Cy
Subject: [Intel-wired-lan] [PATCH net-next v3 4/4] Revert "bnxt_en: bring
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

