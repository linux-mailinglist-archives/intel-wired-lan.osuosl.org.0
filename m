Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 462802DD9D0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Dec 2020 21:24:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0025922EE6;
	Thu, 17 Dec 2020 20:24:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LynUeDDJX-A4; Thu, 17 Dec 2020 20:24:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B3CD12E2CE;
	Thu, 17 Dec 2020 20:24:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 64E141BF418
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Dec 2020 20:24:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 618C487744
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Dec 2020 20:24:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q1ILs0YmXdFP for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Dec 2020 20:24:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7721B87799
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Dec 2020 20:24:30 +0000 (UTC)
IronPort-SDR: lQ5l39gcJRC7EGE8OKdOw1+rxKF4RxW48bxio1KmFb4Y4lEYd/BymWKomMBYnqBnMIS2YDbViW
 lwIkpuvB9lyw==
X-IronPort-AV: E=McAfee;i="6000,8403,9838"; a="155130685"
X-IronPort-AV: E=Sophos;i="5.78,428,1599548400"; d="scan'208";a="155130685"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2020 12:24:29 -0800
IronPort-SDR: OfZP3GJPuPXSpqNrB1a8RvmydoC+N8UYnNpQpwIxN5oQL7JrHiOzKr55hJE6fY85UtdE+ZFROd
 SANeI6CvEIVA==
X-IronPort-AV: E=Sophos;i="5.78,428,1599548400"; d="scan'208";a="413611932"
Received: from ogmeshki-mobl.amr.corp.intel.com ([10.212.162.252])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2020 12:24:29 -0800
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 17 Dec 2020 12:24:07 -0800
Message-Id: <20201217202415.77891-3-andre.guedes@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201217202415.77891-1-andre.guedes@intel.com>
References: <20201217202415.77891-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 02/10] igc: Refactor igc_xdp_run_prog()
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

This patch refactors igc_xdp_run_prog() helper, preparing the code for
AF_XDP zero-copy support which is added by upcoming patches.

With AF_XDP zero-copy support, igc_poll() will have a dedicated path
when the rx ring has zero-copy is enabled. To avoid code duplication as
much as possible, this patch encapsulates the code specific to handling
XDP program actions into a local helper so it can be reused by the
zero-copy path.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 56 +++++++++++------------
 1 file changed, 28 insertions(+), 28 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 0e582a4ee986..56b791b356dc 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2029,38 +2029,22 @@ static int igc_xdp_xmit_back(struct igc_adapter *adapter, struct xdp_buff *xdp)
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
@@ -2068,9 +2052,25 @@ static struct sk_buff *igc_xdp_run_prog(struct igc_adapter *adapter,
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
2.29.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
