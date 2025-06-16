Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3E1ADB691
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Jun 2025 18:21:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0C2F780E15;
	Mon, 16 Jun 2025 16:21:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7HvhYbY3cOFm; Mon, 16 Jun 2025 16:21:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 57E1580E1B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750090891;
	bh=Vf7ea9OeOxjFZqaN2n/DTUZpfsQZsze4A6wO+u7qE8A=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hUdbSEmOrgaNsJ4E9j7XY7i3cR7jJLiem4oCsTzqt93Lv7WJlmWJiHSzdv5ckqKMB
	 uonCoZ8G1Xrq5eXVNAn1jXU4l3RRn0i2mj2HKLEmfvGnQQcO4JjwgGsNknisqwlvG/
	 H8bd8DV1ZRkhk6pW30gZiH3Pm3gunUboUKddYS5D+VSkHcAiFBrgx+RKq6/Q5/5hIp
	 8BrIA+tmbhuRAgoqoXBfsUv9Nrnx1lQ8EpOihM6pJWEHCHOeh4e7Qm0B63KoNir0xY
	 wQgs7rLbGcyJ/dUwP67ySexyHgsBN++ZVh4Ll0h9aOXgk+rZX+DaRvdKhiG2G5P6bf
	 /1DWOC5XEdbTA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 57E1580E1B;
	Mon, 16 Jun 2025 16:21:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2F99A1A4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 16:21:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 164674031B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 16:21:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4vwnBqxAeZ1h for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Jun 2025 16:21:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62c; helo=mail-pl1-x62c.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7C0634030C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7C0634030C
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com
 [IPv6:2607:f8b0:4864:20::62c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7C0634030C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 16:21:27 +0000 (UTC)
Received: by mail-pl1-x62c.google.com with SMTP id
 d9443c01a7336-2353a2bc210so39835085ad.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 09:21:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750090887; x=1750695687;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Vf7ea9OeOxjFZqaN2n/DTUZpfsQZsze4A6wO+u7qE8A=;
 b=FUzSxKZ90ZaQwkqbeuTl9q0z6vFI48LPyx9L98u1N1cOVq8fl+cngFQSHGcmAHV7EU
 Y3qlTZ2Xh4uN8POdEsabjqOfv4FbcLjf/X0X7DH3usWbg6SwFzfahgoRYaP3P7rXjFSr
 78PTnpNHUEGj2EmwWLyBKW+N2vxBjfGPSx7/2Gd22SLY54reHtNwYfbt0KB8oY2CxoJe
 EYS4Vbr4qqqyaMWpuTkkHz9Zx1qtyFwIXSCNv9BPiLcNLHpj1umzYwbiaLu4DWtf9pfc
 MfGCiAwlgKos9w2WEg5Q3dBTnGj8OYQ325isjyZ/dM+he9czqdC+taCbgYsetIqi7qt5
 Hd2A==
X-Forwarded-Encrypted: i=1;
 AJvYcCWtEKWuzxjR0s9O0tTt7VPtVEQaytrfAzmbQNjDw/Jih97wSzvM/7g44ybkFZNVJmWv8Hy6VwMkheJINwHzzic=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyRg+KJtCUQCQChvvghKQLTd2JJbz9jD9B+TzTFvfSyzChnnvi9
 OeTUccmn4cuhqOfuzuR7r/VKF7fMsszP0a68KK/m1ImDv5m/aNqyWKk=
X-Gm-Gg: ASbGnctsSZrchWpMQHJc+x9LOsOXNwx6itcl0f1PY8gKhVyXKN7MjzNSp/jg8CDJG93
 9N1JeBpg10J5MKVoJeud8R76gtOvLG60KfiyABoUn/2kcRg/9qCZeJCAy6FZV1gUY94DN+Dm8dr
 c/eFf3YxkmDG0Ut5ki9cJXtdF/lqsaObZEzJQnZi2sDCODvk1azvBnTgZsGEWXAv5s4qv97LyH+
 mRgZqGAWdkoLL/ysuatie/706Kmtti4DVoAX6993NYlRdNAj9chkNl/PFzwHD46VBEwQLMcIdNg
 jSyNyRVer+4qvSJ37GFiCazjKQWC3JjNFHEnu+ycmEDQDJ/MwPX3eRC5nAeFwNJQIY32WciJV7V
 lsI/67G2Wzx01oFRG37XfAdY=
X-Google-Smtp-Source: AGHT+IFTpneJMscp64JsQsBTZDsdXWWWprF9evpsvYcOGwB/ozwI/DF68CMRCP+T0+BlojYTo1Hn1A==
X-Received: by 2002:a17:90b:1c04:b0:312:f2ee:a895 with SMTP id
 98e67ed59e1d1-313f1e1a908mr13632801a91.31.1750090886699; 
 Mon, 16 Jun 2025 09:21:26 -0700 (PDT)
Received: from localhost (c-73-158-218-242.hsd1.ca.comcast.net.
 [73.158.218.242]) by smtp.gmail.com with UTF8SMTPSA id
 d9443c01a7336-2365deb87bfsm62925985ad.190.2025.06.16.09.21.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Jun 2025 09:21:26 -0700 (PDT)
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
Date: Mon, 16 Jun 2025 09:21:17 -0700
Message-ID: <20250616162117.287806-7-stfomichev@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250616162117.287806-1-stfomichev@gmail.com>
References: <20250616162117.287806-1-stfomichev@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1750090887; x=1750695687; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Vf7ea9OeOxjFZqaN2n/DTUZpfsQZsze4A6wO+u7qE8A=;
 b=jFwCinZoK0lw7lkLZKlF+bsUPUKVXJjFuEgT2ISgG58XpgYJPG8k5GE7kpRaXX624T
 tNNScJpjb4rYQJjVwwjRnObjfY/M8SEk3ZY2m9Qck6iRk5v6LQFYQUUcM12EJRCxH5uu
 Wg6ow0BY6POk32u9fpn0iR/UUMhqGj0zCHEVGgBT9w+xxRpks3Hp/nf6Xz6MCpWLTR9n
 lrk1r/yGS5qo9FqlwdnaK3UwNVHz9Y12ZW0brghlHFRrPoMvLPlYfwD0wD7w9BFJ5ILA
 ftOpkSOBAVwXRTUZsiU13i9OAL2Fs/GlPbR8n0DBgEE2Fs3/4bZqmIJKXYTKEaO1J4G8
 YaTg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=jFwCinZo
Subject: [Intel-wired-lan] [PATCH net-next v5 6/6] Revert "bnxt_en: bring
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

