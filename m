Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8032739BE0F
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Jun 2021 19:06:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 26E54843E0;
	Fri,  4 Jun 2021 17:06:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AWUKiFXDcrT3; Fri,  4 Jun 2021 17:06:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 700B4843CE;
	Fri,  4 Jun 2021 17:05:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 43C001BF863
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:05:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 24AF740198
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:05:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IxIHdqvDZ_gj for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Jun 2021 17:05:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D15B740275
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:05:05 +0000 (UTC)
IronPort-SDR: q44OFP/qlSqVfKNpZ07m/A5KX5+eAwv3FmVYaOdQYwBbkD5aKhp2vXrGDhykV5HyC/Py7k26Vh
 C/5swL4QZoiA==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="225649935"
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="225649935"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 10:05:04 -0700
IronPort-SDR: GqvfeWYMUZdnLXOtpL6fYiyaq7Ee54VFW4wtAl0e7xjh8xB6Yd1za+BgbiNojmcsZDutbbcB0p
 Eky7LqjUPFng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="634086403"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.129])
 by fmsmga006.fm.intel.com with ESMTP; 04 Jun 2021 10:05:03 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  4 Jun 2021 09:53:35 -0700
Message-Id: <20210604165335.33329-15-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210604165335.33329-1-anthony.l.nguyen@intel.com>
References: <20210604165335.33329-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 15/15] iavf: don't be so alarming
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

From: Mitch Williams <mitch.a.williams@intel.com>

Reduce the log level of a couple of messages. These can appear during normal
reset and rmmod processing, and the driver recovers just fine. Debug
level is fine for these.

Signed-off-by: Mitch Williams <mitch.a.williams@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c     | 2 +-
 drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 7730de0ef236..06be785c0d82 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -3352,7 +3352,7 @@ static int iavf_close(struct net_device *netdev)
 				    adapter->state == __IAVF_DOWN,
 				    msecs_to_jiffies(500));
 	if (!status)
-		netdev_warn(netdev, "Device resources not yet released\n");
+		netdev_dbg(netdev, "Device resources not yet released\n");
 	return 0;
 }
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index d78206e168bc..ba27b2168fd3 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -1866,8 +1866,8 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 		break;
 	default:
 		if (adapter->current_op && (v_opcode != adapter->current_op))
-			dev_warn(&adapter->pdev->dev, "Expected response %d from PF, received %d\n",
-				 adapter->current_op, v_opcode);
+			dev_dbg(&adapter->pdev->dev, "Expected response %d from PF, received %d\n",
+				adapter->current_op, v_opcode);
 		break;
 	} /* switch v_opcode */
 	adapter->current_op = VIRTCHNL_OP_UNKNOWN;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
