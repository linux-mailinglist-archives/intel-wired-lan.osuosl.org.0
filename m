Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D6C3AC67F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Jun 2021 10:50:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B5C9440407;
	Fri, 18 Jun 2021 08:50:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E3H2rD-3UveP; Fri, 18 Jun 2021 08:50:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BC328403F6;
	Fri, 18 Jun 2021 08:50:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5E28C1BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jun 2021 08:50:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4C58083BF4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jun 2021 08:50:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id erLZ7D4CMxYx for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Jun 2021 08:50:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3C54083BF0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jun 2021 08:50:08 +0000 (UTC)
IronPort-SDR: irEEo+pTLvZwbiB2fWC3h5AB8W5O8/I/F/D5N7s2+M7j7Cw/vrJgKxBTo/ZrLxagL7AKhW41dL
 lz+rl66hqXlg==
X-IronPort-AV: E=McAfee;i="6200,9189,10018"; a="203497045"
X-IronPort-AV: E=Sophos;i="5.83,283,1616482800"; d="scan'208";a="203497045"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2021 01:50:07 -0700
IronPort-SDR: NHsPlq1Jr20HjywXTEIhc829AXw5Bh65HdOTjRm5P1a7ZanyJ+PyVQkkD1lvGRtgrhychXvWOU
 97phOrP5JMWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,283,1616482800"; d="scan'208";a="555513606"
Received: from amlin-018-218.igk.intel.com ([10.102.18.218])
 by fmsmga001.fm.intel.com with ESMTP; 18 Jun 2021 01:50:06 -0700
From: =?UTF-8?q?J=C4=99drzej=20Jagielski?= <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 18 Jun 2021 08:49:49 +0000
Message-Id: <20210618084949.20634-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix log TC creation failure
 when max num of queues is exceeded
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
Cc: =?UTF-8?q?J=C4=99drzej=20Jagielski?= <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix missing failed message if driver does not have enough queues to
complete TC command. Without this fix no message is displayed in dmesg.

Fixes: a9ce82f744dc ("i40e: Enable 'channel' mode in mqprio for TC configs")
Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 7a0a740c6..4828545e5 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -7363,6 +7363,8 @@ static int i40e_validate_mqprio_qopt(struct i40e_vsi *vsi,
 	}
 	if (vsi->num_queue_pairs <
 	    (mqprio_qopt->qopt.offset[i] + mqprio_qopt->qopt.count[i])) {
+		dev_err(&vsi->back->pdev->dev,
+			"Failed to create traffic channel, insufficient number of queues.\n");
 		return -EINVAL;
 	}
 	if (sum_max_rate > i40e_get_link_speed(vsi)) {
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
