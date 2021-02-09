Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 355053146B8
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Feb 2021 03:59:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E7EF684AE1;
	Tue,  9 Feb 2021 02:59:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id op_LyJ7LGDqs; Tue,  9 Feb 2021 02:59:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3970884B91;
	Tue,  9 Feb 2021 02:59:32 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BCB691BF27E
 for <intel-wired-lan@osuosl.org>; Tue,  9 Feb 2021 02:59:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A26B36F895
 for <intel-wired-lan@osuosl.org>; Tue,  9 Feb 2021 02:59:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PoqZkSgQpmdA for <intel-wired-lan@osuosl.org>;
 Tue,  9 Feb 2021 02:59:28 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id E0EE86F8A2; Tue,  9 Feb 2021 02:59:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E183F6F88F
 for <intel-wired-lan@osuosl.org>; Tue,  9 Feb 2021 02:58:57 +0000 (UTC)
IronPort-SDR: SKFay4/KYPmTNLyTmmTarWwGgT6R28SNFdOAIG+9x3PoP+A8hho13vltoxnuUC/gIhiwfgVo5K
 eqWbq4zbJfuw==
X-IronPort-AV: E=McAfee;i="6000,8403,9889"; a="181963386"
X-IronPort-AV: E=Sophos;i="5.81,163,1610438400"; d="scan'208";a="181963386"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 18:58:57 -0800
IronPort-SDR: W2lMrHNT/3Lsx543S55X/F92pWEmtKYkIsDM0nhuxd4xi4NDIlcVP/iwKJkNj5Ws3R5vmadbBx
 kvicDRyvRyVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,163,1610438400"; d="scan'208";a="586039871"
Received: from otc-cfl-ubuntu-15.jf.intel.com ([10.54.31.57])
 by fmsmga005.fm.intel.com with ESMTP; 08 Feb 2021 18:58:57 -0800
From: Vedang Patel <vedang.patel@intel.com>
To: intel-wired-lan@osuosl.org
Date: Mon,  8 Feb 2021 18:42:36 -0800
Message-Id: <20210209024243.23406-3-vedang.patel@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210209024243.23406-1-vedang.patel@intel.com>
References: <20210209024243.23406-1-vedang.patel@intel.com>
Subject: [Intel-wired-lan] [PATCH net-next v3 2/9] igc: Refactor
 igc_xdp_run_prog()
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
Cc: Andre Guedes <andre.guedes@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Andre Guedes <andre.guedes@intel.com>

Refactor igc_xdp_run_prog() helper, preparing the code for AF_XDP
zero-copy support which is added by upcoming patches.

With AF_XDP zero-copy support, igc_poll() will have a dedicated path
when rx ring's memory model is MEM_TYPE_XSK_BUFF_POOL. To avoid code
duplication as much as possible, encapsulate the code specific to
handling XDP program actions into a local helper so it can be reused by
the zero-copy path.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
Signed-off-by: Vedang Patel <vedang.patel@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 56 +++++++++++------------
 1 file changed, 28 insertions(+), 28 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 59a341566bc6..151ac078df48 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2012,38 +2012,22 @@ static int igc_xdp_xmit_back(struct igc_adapter *adapter, struct xdp_buff *xdp)
 	return res;
 }
 
-static struct sk_buff *igc_xdp_run_prog(struct igc_adapter *adapter,
-					struct xdp_buff *xdp)
+/* This function assumes rcu_read_lock() is held by the caller. */
+static int igc_xdp_do_run_prog(struct igc_adapter *adapter,
+			       struct bpf_prog *prog,
+			       struct xdp_buff *xdp)
 {
-	struct bpf_prog *prog;
-	int res;
-	u32 act;
-
-	rcu_read_lock();
-
-	prog = READ_ONCE(adapter->xdp_prog);
-	if (!prog) {
-		res = IGC_XDP_PASS;
-		goto unlock;
-	}
+	u32 act = bpf_prog_run_xdp(prog, xdp);
 
-	act = bpf_prog_run_xdp(prog, xdp);
 	switch (act) {
 	case XDP_PASS:
-		res = IGC_XDP_PASS;
-		break;
+		return IGC_XDP_PASS;
 	case XDP_TX:
-		if (igc_xdp_xmit_back(adapter, xdp) < 0)
-			res = IGC_XDP_CONSUMED;
-		else
-			res = IGC_XDP_TX;
-		break;
+		return igc_xdp_xmit_back(adapter, xdp) < 0 ?
+			IGC_XDP_CONSUMED : IGC_XDP_TX;
 	case XDP_REDIRECT:
-		if (xdp_do_redirect(adapter->netdev, xdp, prog) < 0)
-			res = IGC_XDP_CONSUMED;
-		else
-			res = IGC_XDP_REDIRECT;
-		break;
+		return xdp_do_redirect(adapter->netdev, xdp, prog) < 0 ?
+			IGC_XDP_CONSUMED : IGC_XDP_REDIRECT;
 	default:
 		bpf_warn_invalid_xdp_action(act);
 		fallthrough;
@@ -2051,9 +2035,25 @@ static struct sk_buff *igc_xdp_run_prog(struct igc_adapter *adapter,
 		trace_xdp_exception(adapter->netdev, prog, act);
 		fallthrough;
 	case XDP_DROP:
-		res = IGC_XDP_CONSUMED;
-		break;
+		return IGC_XDP_CONSUMED;
 	}
+}
+
+static struct sk_buff *igc_xdp_run_prog(struct igc_adapter *adapter,
+					struct xdp_buff *xdp)
+{
+	struct bpf_prog *prog;
+	int res;
+
+	rcu_read_lock();
+
+	prog = READ_ONCE(adapter->xdp_prog);
+	if (!prog) {
+		res = IGC_XDP_PASS;
+		goto unlock;
+	}
+
+	res = igc_xdp_do_run_prog(adapter, prog, xdp);
 
 unlock:
 	rcu_read_unlock();
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
