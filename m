Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D0D368D0C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Apr 2021 08:21:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 62B7860DC1;
	Fri, 23 Apr 2021 06:21:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F7Y3HTOrTmyX; Fri, 23 Apr 2021 06:21:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 626BA605C1;
	Fri, 23 Apr 2021 06:21:28 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B4FB61BF3BE
 for <intel-wired-lan@osuosl.org>; Fri, 23 Apr 2021 06:21:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A0E0F40F84
 for <intel-wired-lan@osuosl.org>; Fri, 23 Apr 2021 06:21:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8iIjYm-Ukcih for <intel-wired-lan@osuosl.org>;
 Fri, 23 Apr 2021 06:21:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E4D0040384
 for <intel-wired-lan@osuosl.org>; Fri, 23 Apr 2021 06:21:22 +0000 (UTC)
IronPort-SDR: ZlEXIR+G8tJU+QlCcP8C3ti7uVHoZRI5YfMA4F3WLXW0/FIorAdX4AIOqSekv+YO7OQnVZqX+T
 XNaFLrOQQbhw==
X-IronPort-AV: E=McAfee;i="6200,9189,9962"; a="195580160"
X-IronPort-AV: E=Sophos;i="5.82,245,1613462400"; d="scan'208";a="195580160"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2021 23:21:22 -0700
IronPort-SDR: pctILZMkKkiLPOhsBW7NzQi58Gtk0l4bb3VZVzUv7Ge2u742D0rlrRRyYfupFYzQvl7TWK1V/N
 yMoIFUOp3MjA==
X-IronPort-AV: E=Sophos;i="5.82,245,1613462400"; d="scan'208";a="617897374"
Received: from coffy.sc.intel.com ([10.3.79.166])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2021 23:21:19 -0700
From: Jithu Joseph <jithu.joseph@intel.com>
To: intel-wired-lan@osuosl.org
Date: Thu, 22 Apr 2021 23:25:47 -0700
Message-Id: <20210423062555.14972-2-jithu.joseph@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210423062555.14972-1-jithu.joseph@intel.com>
References: <20210423062555.14972-1-jithu.joseph@intel.com>
Subject: [Intel-wired-lan] [PATCH v6 1/9] igc: Move igc_xdp_is_enabled()
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
Cc: kuba@kernel.org, Andre Guedes <andre.guedes@intel.com>,
 Vedang Patel <vedang.patel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Andre Guedes <andre.guedes@intel.com>

Move the helper igc_xdp_is_enabled() to igc_xdp.h so it can be reused in
igc_xdp.c by upcoming patches that will introduce AF_XDP zero-copy
support to the driver.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
Signed-off-by: Vedang Patel <vedang.patel@intel.com>
Signed-off-by: Jithu Joseph <jithu.joseph@intel.com>
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 5 -----
 drivers/net/ethernet/intel/igc/igc_xdp.h  | 5 +++++
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 8383da6ba056..f455cc41a8d1 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -515,11 +515,6 @@ static int igc_setup_all_rx_resources(struct igc_adapter *adapter)
 	return err;
 }
 
-static bool igc_xdp_is_enabled(struct igc_adapter *adapter)
-{
-	return !!adapter->xdp_prog;
-}
-
 /**
  * igc_configure_rx_ring - Configure a receive ring after Reset
  * @adapter: board private structure
diff --git a/drivers/net/ethernet/intel/igc/igc_xdp.h b/drivers/net/ethernet/intel/igc/igc_xdp.h
index cfecb515b718..412aa369e6ba 100644
--- a/drivers/net/ethernet/intel/igc/igc_xdp.h
+++ b/drivers/net/ethernet/intel/igc/igc_xdp.h
@@ -10,4 +10,9 @@ int igc_xdp_set_prog(struct igc_adapter *adapter, struct bpf_prog *prog,
 int igc_xdp_register_rxq_info(struct igc_ring *ring);
 void igc_xdp_unregister_rxq_info(struct igc_ring *ring);
 
+static inline bool igc_xdp_is_enabled(struct igc_adapter *adapter)
+{
+	return !!adapter->xdp_prog;
+}
+
 #endif /* _IGC_XDP_H_ */
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
