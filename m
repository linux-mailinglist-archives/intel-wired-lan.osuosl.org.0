Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF82325AAB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Feb 2021 01:21:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 65A6B6F93E;
	Fri, 26 Feb 2021 00:20:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RSlcM7GSt395; Fri, 26 Feb 2021 00:20:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5BCAA6F880;
	Fri, 26 Feb 2021 00:20:58 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 031561C113E
 for <intel-wired-lan@osuosl.org>; Fri, 26 Feb 2021 00:20:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F2CB68421D
 for <intel-wired-lan@osuosl.org>; Fri, 26 Feb 2021 00:20:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LlhIw_0vzy9P for <intel-wired-lan@osuosl.org>;
 Fri, 26 Feb 2021 00:20:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4E8348424A
 for <intel-wired-lan@osuosl.org>; Fri, 26 Feb 2021 00:20:46 +0000 (UTC)
IronPort-SDR: GIKJQiXoa4OXVug3kXh74c+/U+uXbA1QANjf+aBdiahktNSstcmZbO3ro2FDn/18CvwKAMYEYB
 imIPzE31nFVg==
X-IronPort-AV: E=McAfee;i="6000,8403,9906"; a="185033333"
X-IronPort-AV: E=Sophos;i="5.81,207,1610438400"; d="scan'208";a="185033333"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2021 16:20:45 -0800
IronPort-SDR: NPH3mTdRUjbeDEQzDgNTox2m1e5MQ4wgdJAiPPIGriPA2iRF+rg818i2zUAQkYZ8VUBE9MDhpI
 56AOH0Azcfjw==
X-IronPort-AV: E=Sophos;i="5.81,207,1610438400"; d="scan'208";a="392639289"
Received: from coffy.sc.intel.com ([10.3.79.166])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2021 16:20:45 -0800
From: Jithu Joseph <jithu.joseph@intel.com>
To: intel-wired-lan@osuosl.org
Date: Thu, 25 Feb 2021 16:23:01 -0800
Message-Id: <20210226002308.2348-3-jithu.joseph@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210226002308.2348-1-jithu.joseph@intel.com>
References: <20210226002308.2348-1-jithu.joseph@intel.com>
Subject: [Intel-wired-lan] [PATCH v5 2/9] igc: Refactor __igc_xdp_run_prog()
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

Refactor __igc_xdp_run_prog() helper from igc_xdp_run_prog(),
preparing the code for AF_XDP zero-copy support which is added
by upcoming patches.

The existing igc_xdp_run_prog() caters to regular XDP rx path
which has to verify if bpf_prog is not NULL. Zero-copy
path assumes that bpf_prog is not NULL and hence this check is
not required. Therefore it makes sense to refactor the common
code into a helper function, to avoid code duplication.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
Signed-off-by: Vedang Patel <vedang.patel@intel.com>
Signed-off-by: Jithu Joseph <jithu.joseph@intel.com>
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 56 +++++++++++------------
 1 file changed, 28 insertions(+), 28 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index a659e6f24886..d9d60c6c6726 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2021,38 +2021,22 @@ static int igc_xdp_xmit_back(struct igc_adapter *adapter, struct xdp_buff *xdp)
 	return res;
 }
 
-static struct sk_buff *igc_xdp_run_prog(struct igc_adapter *adapter,
-					struct xdp_buff *xdp)
+/* This function assumes rcu_read_lock() is held by the caller. */
+static int __igc_xdp_run_prog(struct igc_adapter *adapter,
+			      struct bpf_prog *prog,
+			      struct xdp_buff *xdp)
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
@@ -2060,9 +2044,25 @@ static struct sk_buff *igc_xdp_run_prog(struct igc_adapter *adapter,
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
+	res = __igc_xdp_run_prog(adapter, prog, xdp);
 
 unlock:
 	rcu_read_unlock();
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
