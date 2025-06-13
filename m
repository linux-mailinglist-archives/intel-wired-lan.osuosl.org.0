Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5622FAD9657
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jun 2025 22:33:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 11CC340A45;
	Fri, 13 Jun 2025 20:33:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JXULV9CNDQ1Q; Fri, 13 Jun 2025 20:33:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 66E0240A30
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749846818;
	bh=Vf7ea9OeOxjFZqaN2n/DTUZpfsQZsze4A6wO+u7qE8A=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6/mxMwml8E3MOpzItMjbyAeYcuNPbWrLSMOc1Jb3JF0IP6oHq3HzCk/rNv1tjGCms
	 jpAmZZM0ZWvtHQ+sEgg3qKH4N0L6DmHdBxT0o7dWF23xT2lDNyr5QGrD49bZs4Vdwy
	 Bw8NHbWJ1AhwUEUc/rRBPdwkgGWwTjIQHj0tghs2gOZ20+Xr3Cg/D9zYR6CP5H402z
	 2mqbOWfQIKKbhbxhL41rkaTLg4sJGkawAv/f2/gPizjtDQFJUiIwpXmq0csQucD7e/
	 fzInhzA7OWgOQ8auI0dYEiumnFhC5cMENiA5LmSp0q/F6KKabJbninPt1OKIVboYm5
	 scg3IIy93jTgQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 66E0240A30;
	Fri, 13 Jun 2025 20:33:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id B7F711BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 20:33:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AA1C360F29
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 20:33:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gLJ2JnTDFsMX for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jun 2025 20:33:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::531; helo=mail-pg1-x531.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F2CA460BF1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F2CA460BF1
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com
 [IPv6:2607:f8b0:4864:20::531])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F2CA460BF1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 20:33:35 +0000 (UTC)
Received: by mail-pg1-x531.google.com with SMTP id
 41be03b00d2f7-b26f7d2c1f1so2568191a12.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 13:33:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1749846815; x=1750451615;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Vf7ea9OeOxjFZqaN2n/DTUZpfsQZsze4A6wO+u7qE8A=;
 b=YtHjsi8qdhaJegZ8bvvJfPkS5ra4lV8dj5KJwQx6o55EWAivdFF9zv3zFGrpkTIx9e
 2JKKABdQaVXQd/mfxGARV+73wd4laEq5WCIbZQ6i2yeeUs5YVgr7EqOM/ynBVZppcCrh
 2WklRd5ZeCKsPd20hn8faS4bsmuGB3eonTCmxqCeQNObCuw4aISSpEuMgDxEkBFYiRA+
 lReGLVZLxsmpgr2DVn+D7ebDlTYbZEe1GIrWBpgbDICROkcYtMf1AE0B4my3ztRDg0t8
 XboFSh3KF9gEDFB3U8ZuVxU98DMh1fPtwaB9xyxWHz3HG81u55qcGg2FtINRlYVV2lO6
 g1PQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWj6//+7L6jeg+CbKzE0FV6vrL7qcS22W+NRg4frBSXym4tR87FkAecO89NAI6gIXnr1sNPlln7UN1IYFP5BxI=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxW/TSyr7nGA/5iu8QYIy7Jps8xOMCFkd/L3v2P+ZaGnPJ2KXdF
 vuwXztZBQ8jFJqJOEkELBBXtVe9fMGqhRhKxXL3HbBi/EMUrHJsxhpQ=
X-Gm-Gg: ASbGncsRTvd2a2V7ooRF3jdV6JPTytIZI7xk1SaCDchmAuKHgSynorKLwG7TocR0Wxy
 rdNJljwFikCLSyMKool5TvBNtT38kAMJwwzgcC2CApj+iY1BLuRv95I4TsNKC2k9Cm2MGMF0xO+
 aG9uAG6H9Rh828YxW2lDA/1yMinvGJerNwTiQB+GxrWLHK5sOGF7SJHxLgxeBLsy/mSpKT/xIVW
 klliWTUARi/Fd4+e3ArvuinXuVLGW2BI4XfThm62MYDILMhYb8Bks+iyAzQb8LdoUdgSh5cpv8g
 WQTSZih4tenjYqZXmO0K4IhoCW+I6u5u8jX5ylIq46GXtjhxyaBAdaML1/h15cZ8ZjgHp7rmDsa
 76AHWuMmDkeOtq8zjeY/9ZoM=
X-Google-Smtp-Source: AGHT+IFQorw9u2Oum4iWIl3+OfOv8aRF0XYDMBT3yjqF6imdB9HBBTYYcXJhmREswTV0eldeif4+ow==
X-Received: by 2002:a05:6a21:3298:b0:1f5:8fe3:4e29 with SMTP id
 adf61e73a8af0-21fbd4567demr1089944637.3.1749846814973; 
 Fri, 13 Jun 2025 13:33:34 -0700 (PDT)
Received: from localhost (c-73-158-218-242.hsd1.ca.comcast.net.
 [73.158.218.242]) by smtp.gmail.com with UTF8SMTPSA id
 41be03b00d2f7-b2fe168ccafsm1859552a12.55.2025.06.13.13.33.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Jun 2025 13:33:34 -0700 (PDT)
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
 horms@kernel.org, dsahern@kernel.org, shuah@kernel.org, tglx@linutronix.de,
 mingo@kernel.org, ruanjinjie@huawei.com, idosch@nvidia.com,
 razor@blackwall.org, petrm@nvidia.com, kuniyu@google.com, sdf@fomichev.me,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-rdma@vger.kernel.org, oss-drivers@corigine.com,
 linux-net-drivers@amd.com, linux-kselftest@vger.kernel.org,
 leon@kernel.org, Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Fri, 13 Jun 2025 13:33:25 -0700
Message-ID: <20250613203325.1127217-7-stfomichev@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250613203325.1127217-1-stfomichev@gmail.com>
References: <20250613203325.1127217-1-stfomichev@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1749846815; x=1750451615; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Vf7ea9OeOxjFZqaN2n/DTUZpfsQZsze4A6wO+u7qE8A=;
 b=VhtQWzpjbRl4/QgM77uO+bp04CswV1HFOeS71foeFPyuCbWT7r3hjIIRPl6LD/vsuu
 999ltRhHB4zIgK/cfZfg28i5Gr6G/axLtqpASEN3WblOqosgJrwZVSokTojNzOlzm0rM
 x2UVMIPpw0wwhG6C+Miu970DlFOP/jglGUqe3IQ59R42pHxmnazzVU43gYYVmWdI8YMM
 MEIoZ7Vt7HNOifCfsuDaagRNlCUC1NIhXC3hmiVJ7gujhU63gvTSF94u4iXcEJ/qtoQN
 awj1Oy12vdoBWkKxrkBxDaQv4M9KR9cQqu63UJnBIwKHX5MFaZLxopQ6u9hbkXtKCc01
 ZzTQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=VhtQWzpj
Subject: [Intel-wired-lan] [PATCH net-next v4 6/6] Revert "bnxt_en: bring
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
index 7946586802af..b359ef4b78a9 100644
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

