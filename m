Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 876CD39BDDE
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Jun 2021 19:00:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 078FC415B3;
	Fri,  4 Jun 2021 17:00:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r6dUBP2YUo64; Fri,  4 Jun 2021 17:00:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A2429415B0;
	Fri,  4 Jun 2021 17:00:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 260CD1BF873
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:00:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 10FE540198
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:00:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5X02Jm61qwZo for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Jun 2021 17:00:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 00CAA40222
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:00:29 +0000 (UTC)
IronPort-SDR: 1hOVncCFaq7WPfch2HieClCsauNj85UrGFVVbb9WU8iQwFDbG5fZfeCR7kouBDYtMzj+9MFlvi
 w53PT3H2cXSw==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="184011726"
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="184011726"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 10:00:28 -0700
IronPort-SDR: PSuavlUwMZUT526bN13VkvhRst5eD7mLQ89wW5OrhDNzQPnJCskT+OBgE5x2RlZU7urtCEB0oG
 uF5bfoetE+rQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="401017764"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.129])
 by orsmga003.jf.intel.com with ESMTP; 04 Jun 2021 10:00:26 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  4 Jun 2021 09:49:00 -0700
Message-Id: <20210604164900.33156-8-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210604164900.33156-1-anthony.l.nguyen@intel.com>
References: <20210604164900.33156-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net 8/8] iavf: Fix for setting queues to 0
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

From: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>

Now setting combine to 0 will be rejected with the
appropriate error code.
This has been implemented by adding a condition that checks
the value of combine equal to zero.
Without this patch, when the user requested it, no error was
returned and combine was set to the default value for VF.

Fixes: 5520deb15326 ("iavf: Enable support for up to 16 queues")
Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_ethtool.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 77a8a15c5410..0885fb0f0d4b 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -1781,7 +1781,7 @@ static int iavf_set_channels(struct net_device *netdev,
 	/* All of these should have already been checked by ethtool before this
 	 * even gets to us, but just to be sure.
 	 */
-	if (num_req > adapter->vsi_res->num_queue_pairs)
+	if (num_req == 0 || num_req > adapter->vsi_res->num_queue_pairs)
 		return -EINVAL;
 
 	if (num_req == adapter->num_active_queues)
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
