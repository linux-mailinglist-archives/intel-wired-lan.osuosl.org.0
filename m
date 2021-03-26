Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AE710349E12
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Mar 2021 01:39:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C1B1640454;
	Fri, 26 Mar 2021 00:39:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZlQUQ1b3rFJc; Fri, 26 Mar 2021 00:39:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 72E5B40452;
	Fri, 26 Mar 2021 00:39:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 249021C119B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 00:38:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3B80284B6C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 00:38:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dxNIlEZiPPaG for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Mar 2021 00:38:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9745184B70
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 00:38:45 +0000 (UTC)
IronPort-SDR: swiZ6kEz0e3o+p4Lyjr0GeDgBF8ZLgoOEQyAxGkEe71efrWArmnsFnp+cZHqtC7O2rxylR0hml
 4ShxmCJv/1Gg==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="188762079"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="188762079"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 17:38:44 -0700
IronPort-SDR: b6LaHSB5msVw1iVYKtRDaGma0ANotCwm0qxVotgw2a5XOJIZ0CDfeUNxj6h1nfSquuBGsamcJs
 zHG3wdMePYZA==
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="416276250"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.56])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 17:38:43 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Mar 2021 17:38:27 -0700
Message-Id: <20210326003834.3886241-5-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210326003834.3886241-1-jesse.brandeburg@intel.com>
References: <20210326003834.3886241-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 04/11] igb/igc: use strongly
 typed pointer
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

The igb and igc driver both use a trick of creating a local type
pointer on the stack to ease dealing with a receive descriptor in
64 bit chunks for printing.  Sparse however was not taken into
account and receive descriptors are always in little endian
order, so just make the unions use __le64 instead of u64.

No functional change.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
Warning Detail:
  CHECK   .../igb/igb_main.c
.../igb/igb_main.c:442:25: warning: cast to restricted __le64
.../igb/igb_main.c:442:25: warning: cast to restricted __le64
.../igb/igb_main.c:522:33: warning: cast to restricted __le64
.../igb/igb_main.c:522:33: warning: cast to restricted __le64
.../igb/igb_main.c:528:33: warning: cast to restricted __le64
.../igb/igb_main.c:528:33: warning: cast to restricted __le64
  CHECK   .../igc/igc_dump.c
.../igc/igc_dump.c:192:40: warning: cast to restricted __le64
.../igc/igc_dump.c:193:37: warning: cast to restricted __le64
.../igc/igc_dump.c:275:45: warning: cast to restricted __le64
.../igc/igc_dump.c:276:45: warning: cast to restricted __le64
.../igc/igc_dump.c:281:45: warning: cast to restricted __le64
.../igc/igc_dump.c:282:45: warning: cast to restricted __le64
---
 drivers/net/ethernet/intel/igb/igb_main.c | 2 +-
 drivers/net/ethernet/intel/igc/igc_dump.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 109279e1d667..697aa238ff16 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -356,7 +356,7 @@ static void igb_dump(struct igb_adapter *adapter)
 	struct igb_reg_info *reginfo;
 	struct igb_ring *tx_ring;
 	union e1000_adv_tx_desc *tx_desc;
-	struct my_u0 { u64 a; u64 b; } *u0;
+	struct my_u0 { __le64 a; __le64 b; } *u0;
 	struct igb_ring *rx_ring;
 	union e1000_adv_rx_desc *rx_desc;
 	u32 staterr;
diff --git a/drivers/net/ethernet/intel/igc/igc_dump.c b/drivers/net/ethernet/intel/igc/igc_dump.c
index 495bed47ed0a..c09c95cc5f70 100644
--- a/drivers/net/ethernet/intel/igc/igc_dump.c
+++ b/drivers/net/ethernet/intel/igc/igc_dump.c
@@ -112,7 +112,7 @@ static void igc_regdump(struct igc_hw *hw, struct igc_reg_info *reginfo)
 void igc_rings_dump(struct igc_adapter *adapter)
 {
 	struct net_device *netdev = adapter->netdev;
-	struct my_u0 { u64 a; u64 b; } *u0;
+	struct my_u0 { __le64 a; __le64 b; } *u0;
 	union igc_adv_tx_desc *tx_desc;
 	union igc_adv_rx_desc *rx_desc;
 	struct igc_ring *tx_ring;
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
