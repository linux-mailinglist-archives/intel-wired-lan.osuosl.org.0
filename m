Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 87D802DD9D2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Dec 2020 21:24:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 43832878A4;
	Thu, 17 Dec 2020 20:24:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y8mGKBG9gNTk; Thu, 17 Dec 2020 20:24:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3E70C877A4;
	Thu, 17 Dec 2020 20:24:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2799C1BF418
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Dec 2020 20:24:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2161A878A9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Dec 2020 20:24:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o2Cihmo1wLuz for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Dec 2020 20:24:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5526E87744
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Dec 2020 20:24:30 +0000 (UTC)
IronPort-SDR: h2IJLnJHcqYI2AN1ex+bnpkbuNoaElfZIVZyOE+N4V+qP0RUMXeKISshQ0SJiyyV2b4RuHWK4g
 UHxaaqOtyINw==
X-IronPort-AV: E=McAfee;i="6000,8403,9838"; a="155130684"
X-IronPort-AV: E=Sophos;i="5.78,428,1599548400"; d="scan'208";a="155130684"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2020 12:24:29 -0800
IronPort-SDR: 68K65EGLK0el2vN9w2vDlJ7VnYPVvrAN8PhUmhX7HvEi+c8CPtpSRxwJhCatz6jpxQCYA2jMN0
 +ICnb+bo2QpQ==
X-IronPort-AV: E=Sophos;i="5.78,428,1599548400"; d="scan'208";a="413611929"
Received: from ogmeshki-mobl.amr.corp.intel.com ([10.212.162.252])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2020 12:24:29 -0800
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 17 Dec 2020 12:24:06 -0800
Message-Id: <20201217202415.77891-2-andre.guedes@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201217202415.77891-1-andre.guedes@intel.com>
References: <20201217202415.77891-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 01/10] igc: Move igc_xdp_is_enabled()
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch moves the helper igc_xdp_is_enabled() to igc_xdp.h so it can
be reused in igc_xdp.c by upcoming patches that will introduce AF_XDP
zero-copy support to the driver.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 5 -----
 drivers/net/ethernet/intel/igc/igc_xdp.h  | 5 +++++
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 8913c7f7be7f..0e582a4ee986 100644
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
2.29.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
