Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D445149B0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Apr 2022 14:42:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8B949611EB;
	Fri, 29 Apr 2022 12:42:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3oQrFZ3kXL3o; Fri, 29 Apr 2022 12:42:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7EAC261050;
	Fri, 29 Apr 2022 12:42:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8819F1BF2CF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Apr 2022 12:42:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 83F3A82A3B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Apr 2022 12:42:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MKR9a_TR8gMx for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Apr 2022 12:41:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 84A3882969
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Apr 2022 12:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651236119; x=1682772119;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6uAEHk5DzozZ9zDUBMDKHX5i0f8R1DggkwLlGsk8Zm0=;
 b=bol9+JpKHujDr/pk6LwWzIVSUPblDiqThSc0PLTp9RjTEG61eaJOWjfj
 YF+VoZf3yb3jm44x870DEIP8fbKbaSRte9z+7TXiPcvtShH/EogrWGAvo
 dyLH7HGPKOYaDYtU02LPBgyiTj3q+g7gGEIWV57f18zZ8OL0HHuCNiHqm
 zXYBzSlgYuD0MhYLgrPT63ppIigBAFMg8a8Xf3IaN3kBL691bx6Rbga5Z
 VoDJRh+KHd8igZ0o1HGTfE32+WttxFuaZNw3n8N/kZM1W9hr5EJZ8Lws8
 joZc5eL+PIVoTov372nAA8LkDldxrkpqlGF/eox4S5wnSDZNv/JmLasMv w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10331"; a="266451403"
X-IronPort-AV: E=Sophos;i="5.91,185,1647327600"; d="scan'208";a="266451403"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2022 05:41:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,185,1647327600"; d="scan'208";a="514805708"
Received: from amlin-018-218.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.218])
 by orsmga003.jf.intel.com with ESMTP; 29 Apr 2022 05:41:57 -0700
From: Jedzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 29 Apr 2022 14:40:23 +0200
Message-Id: <20220429124023.979010-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix calculating the number
 of queue pairs
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
Cc: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>

If ADq is enabled for a VF, then actual number of queue pair
is a number of currently available traffic classes for this VF.

Without this change the configuration of the rx/tx queues
fails with error.

Fixes: d29e0d233e0d ("i40e: missing input validation on VF message handling by the PF")
Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 2606e8f0f19b..033ea71763e3 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -2282,7 +2282,7 @@ static int i40e_vc_config_queues_msg(struct i40e_vf *vf, u8 *msg)
 	}
 
 	if (vf->adq_enabled) {
-		for (i = 0; i < I40E_MAX_VF_VSI; i++)
+		for (i = 0; i < vf->num_tc; i++)
 			num_qps_all += vf->ch[i].num_qps;
 		if (num_qps_all != qci->num_queue_pairs) {
 			aq_ret = I40E_ERR_PARAM;
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
