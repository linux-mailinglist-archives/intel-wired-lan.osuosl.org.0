Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5210F839D44
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jan 2024 00:32:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D55B185435;
	Tue, 23 Jan 2024 23:32:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D55B185435
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706052749;
	bh=Tgm+9p7wVd6zfmLw9/AE3XlcKX6thE0De0/5euthJvQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=w/sZGgbI5DtbEFQxsQacy70IsLKCVqaWF9+Y/mzHlPDheBVDCSKJw5UeBh8OdqUD5
	 hWbu2glWCtBKsTBa3ZWbL7lLkM8t6lLgQtcCJNRASqiIHelcDHjO9ipauu141LZF84
	 cUsKioA0z3F/wifb5Xr9SPvJ3Cl8jpI9BpRU4XB8ohaNogrot+g1zXIYc/GCysQx2R
	 usEEI3HlCcA9sCZJcmMY955PTOo3lf4nvgoSH7V757x9tIBK4FsOBSgdIN7zWiRhV/
	 u1a3p1+xRnPJsAkbAY/bnE/y5Q1mJ1hoaSqj9QVrFiyGTeJUt9uQD5P4wYW8pJQUMR
	 LvTLemqnp/Mtg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vAaiXosIf1Ll; Tue, 23 Jan 2024 23:32:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B28CC8542F;
	Tue, 23 Jan 2024 23:32:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B28CC8542F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D7EBD1BF84C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 23:32:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B01A585435
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 23:32:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B01A585435
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8x4q112QLyY9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jan 2024 23:32:23 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0960885420
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 23:32:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0960885420
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="400552261"
X-IronPort-AV: E=Sophos;i="6.05,215,1701158400"; d="scan'208";a="400552261"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2024 15:32:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="909469586"
X-IronPort-AV: E=Sophos;i="6.05,215,1701158400"; d="scan'208";a="909469586"
Received: from gkon-mobl1.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.252.41.99])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2024 15:32:06 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 23 Jan 2024 16:31:40 -0700
Message-Id: <20240123233140.309522-3-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240123233140.309522-1-ahmed.zaki@intel.com>
References: <20240123233140.309522-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706052743; x=1737588743;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=q/5vsad5MYoN6BZtaPyi2TJltKyoqLDcM6qesTKrXf8=;
 b=V9EY6PQ6HJbQ7EhO4xDQw+OihFDLVhB4gJLErpsme3l/XbEl5bopD26V
 DovoZuGylxONCLMxgOB5QV/TW12NBejK9iFX2dQb5AWzS1SIjPyaslK/Y
 9IxnuDLQOP/wOQXua2v/xvk2meKwUXrvkcsOQzMbv8ev8XuvxzzMfGD99
 HdArclu3GTX5CrNNgv1pWeogRf0rvJzTGzDJcz392YQv4Yvv46I65CW7G
 gmmJat6QyuZJqFtTBUEYDkDxCnrYc4TixwpViRH3V27/GC0oR3VYlOoBf
 XSVAN1gVTsmcN2Yak/rdyNAPE5UBYFYxEX6w9KdiFR42UWcte0ITN3uai
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=V9EY6PQ6
Subject: [Intel-wired-lan] [PATCH iwl-net 2/2] iavf: allow an early reset
 event to be processed
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
Cc: netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Ahmed Zaki <ahmed.zaki@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

If a reset event is received from the PF early in the init cycle, the
iavf state machine could hang for about 25 seconds. For example:

    # echo 1 > /sys/class/net/enp175s0np0/device/sriov_numvfs && \
      ip link set dev enp175s0np0 vf 0 mac <new_mac>

the log shows:

    [532.770534] ice 0000:af:00.0: Enabling 1 VFs
    [532.880439] iavf 0000:af:01.0: enabling device (0000 -> 0002)
    [532.880983] ice 0000:af:00.0: Enabling 1 VFs with 17 vectors and 16 queues per VF
    [532.916547] ice 0000:af:00.0 enp175s0np0: Setting MAC 00:60:2f:20:3f:28 on VF 0. VF driver will be reinitialized
    [553.464990] iavf 0000:af:01.0: Failed to communicate with PF; waiting before retry
    [558.903000] iavf 0000:af:01.0: Hardware came out of reset. Attempting reinit.
    [558.984816] iavf 0000:af:01.0: Multiqueue Enabled: Queue pair count = 16

This happens because reset events are ignored in the early states where
the misc irq vector is not initialized yet and communicating with the PF
is through polling the AQ buffer. Fix by scanning the received OP
codes for a reset event and scheduling the reset task if a reset event
is received.

Fixes: 5eae00c57f5e ("i40evf: main driver core")
Reviewed-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 .../net/ethernet/intel/iavf/iavf_virtchnl.c    | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 22f2df7c460b..9d8a5d3adcee 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -76,6 +76,24 @@ iavf_poll_virtchnl_msg(struct iavf_hw *hw, struct iavf_arq_event_info *event,
 			return iavf_status_to_errno(status);
 		received_op =
 		    (enum virtchnl_ops)le32_to_cpu(event->desc.cookie_high);
+
+		if (received_op == VIRTCHNL_OP_EVENT) {
+			struct iavf_adapter *adapter = hw->back;
+			struct virtchnl_pf_event *vpe =
+				(struct virtchnl_pf_event *)event->msg_buf;
+
+			if (vpe->event != VIRTCHNL_EVENT_RESET_IMPENDING)
+				continue;
+
+			dev_info(&adapter->pdev->dev, "Reset indication received from the PF\n");
+			if (!(adapter->flags & IAVF_FLAG_RESET_PENDING)) {
+				dev_info(&adapter->pdev->dev, "Scheduling reset task\n");
+				iavf_schedule_reset(adapter,
+						    IAVF_FLAG_RESET_PENDING);
+			}
+			return -EIO;
+		}
+
 		if (op_to_poll == received_op)
 			break;
 	}
-- 
2.34.1

