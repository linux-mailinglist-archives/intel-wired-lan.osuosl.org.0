Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A4B79025EB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jun 2024 17:45:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6517260893;
	Mon, 10 Jun 2024 15:45:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aAOTDBOqo1ds; Mon, 10 Jun 2024 15:45:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A412B60881
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718034314;
	bh=1wMSt1Fkec/NaExBTOo37reB9iTWwbg94VSlaejHNf0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2b2m62XepZdZRI7NddWGSMRD0ZGm8lMHD6ttr5SmwFt8gA28RcVlqpIeqgwsFL+s2
	 SUaHpxESedWVVw/EB8NRCKIXkMHrvnKex8lSyoEMCgm0DB6XNI+dW5rORGR8AMDJh3
	 RefeBmvPBrgkTFMbkgd4bHdDtdnaxVY82/a2oRC4H5tZvOK2KhLp060l6Bi91VjVZX
	 sGkZfr5z0eWE0ujeU6zQRuyHFjwY1TqxZVY6xv92uUZtK1RogtLWTm1IuQWlxNoHtM
	 1qAwjf98z6owaqgQCntxzqlZVATEnABt2CGZasORaO+77bo2tmJYDoxAQpG5etjCER
	 p6lIbCNPBUW+A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A412B60881;
	Mon, 10 Jun 2024 15:45:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 32EB51BF3BE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 15:45:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1F78140493
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 15:45:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ijGBmSXwbI_5 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jun 2024 15:45:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EE799404A4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EE799404A4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EE799404A4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 15:45:10 +0000 (UTC)
X-CSE-ConnectionGUID: PPr5U666SXGPI93BRbj1jA==
X-CSE-MsgGUID: gAA2rgdvRjm5lhrcE79OrA==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="26119874"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="26119874"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 08:45:10 -0700
X-CSE-ConnectionGUID: uVaJisceRt+8/TSVPvmkGA==
X-CSE-MsgGUID: vCchazQYRsOqkyP5o3Padg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="43679782"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa004.fm.intel.com with ESMTP; 10 Jun 2024 08:45:05 -0700
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 0CFDD312D8;
 Mon, 10 Jun 2024 16:44:52 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 10 Jun 2024 17:37:15 +0200
Message-ID: <20240610153716.31493-4-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240610153716.31493-1-larysa.zaremba@intel.com>
References: <20240610153716.31493-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718034311; x=1749570311;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=77taguqMlOk9palmEIZHwzEPuGl4cXRwnQzwDICfdrM=;
 b=ktG1mqw5L1iYa4cKb9v7KEp82MHmR59PjwKhxKr1PUZ1gpR/kWNnwhJ7
 GkMUNX5HomyEtbb4IzrfOf1gFIsJH3GOi1W4reSRj5BaTMJNgHk9g0Rs7
 G9IyW4HplM+0O9/kamMhCmRbKr2WLXC1DK5uy9K7QpUTxHeSEkMGLZ+RZ
 zPOXbuN54gTFv/Mst6Xx5hgCVzGf6hZFobjr7rNCBlmxPnOXl2ypBTyB1
 Z20q4b1Fd1LDrgyMMjLGTIo0TPjZFyZQlVxARZRC9ZPD8f/rKg2aeF7DP
 4uXyy6/grI9/qBaVLJWU3YOKt5+4sZh9tCFX2ofSC/XerBI/T1oz1EK48
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ktG1mqw5
Subject: [Intel-wired-lan] [PATCH iwl-net 3/3] ice: make NAPI setting code
 aware that rtnl-locked request is waiting
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Larysa Zaremba <larysa.zaremba@intel.com>,
 Igor Bagnucki <igor.bagnucki@intel.com>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, magnus.karlsson@intel.com,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

ice_vsi_rebuild() is a critical section in the reset path. Sometimes,
rtnl-locked callbacks have to wait for it to finish. However, it is
possible they will wait for an eternity, because the critical section
contains calls to ice_queue_set_napi() that try to take rtnl_lock.

Make ice_queue_set_napi() aware that some rtnl-locked code is waiting and
skip taking the lock, if this is the case.

Fixes: 080b0c8d6d26 ("ice: Fix ASSERT_RTNL() warning during certain scenarios")
Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h      |  1 +
 drivers/net/ethernet/intel/ice/ice_lib.c  | 18 +++++++++++++++---
 drivers/net/ethernet/intel/ice/ice_main.c |  5 ++++-
 3 files changed, 20 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 76590cfcaf68..7c1e24afa34b 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -307,6 +307,7 @@ enum ice_pf_state {
 	ICE_PHY_INIT_COMPLETE,
 	ICE_FD_VF_FLUSH_CTX,		/* set at FD Rx IRQ or timeout */
 	ICE_AUX_ERR_PENDING,
+	ICE_RTNL_WAITS_FOR_RESET,
 	ICE_STATE_NBITS		/* must be last */
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 4774bcc4d5a8..a5dc6fc6e63d 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2740,12 +2740,24 @@ ice_queue_set_napi(struct ice_vsi *vsi, unsigned int queue_index,
 	if (current_work() == &pf->serv_task ||
 	    test_bit(ICE_PREPARED_FOR_RESET, pf->state) ||
 	    test_bit(ICE_DOWN, pf->state) ||
-	    test_bit(ICE_SUSPENDED, pf->state))
+	    test_bit(ICE_SUSPENDED, pf->state)) {
+		bool rtnl_held_here = true;
+
+		while (!rtnl_trylock()) {
+			if (test_bit(ICE_RTNL_WAITS_FOR_RESET, pf->state)) {
+				rtnl_held_here = false;
+				break;
+			}
+			usleep_range(1000, 2000);
+		}
 		__ice_queue_set_napi(vsi->netdev, queue_index, type, napi,
-				     false);
-	else
+				     true);
+		if (rtnl_held_here)
+			rtnl_unlock();
+	} else {
 		__ice_queue_set_napi(vsi->netdev, queue_index, type, napi,
 				     true);
+	}
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index cd8be3c3b956..37b3dd22cdc2 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3103,8 +3103,11 @@ static int ice_xdp(struct net_device *dev, struct netdev_bpf *xdp)
 		return -EINVAL;
 	}
 
-	while (test_and_set_bit(ICE_CFG_BUSY, pf->state))
+	while (test_and_set_bit(ICE_CFG_BUSY, pf->state)) {
+		set_bit(ICE_RTNL_WAITS_FOR_RESET, pf->state);
 		usleep_range(1000, 2000);
+	}
+	clear_bit(ICE_RTNL_WAITS_FOR_RESET, pf->state);
 
 	switch (xdp->command) {
 	case XDP_SETUP_PROG:
-- 
2.43.0

