Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D251852E1C2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 May 2022 03:16:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0C3514256A;
	Fri, 20 May 2022 01:16:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1OckJXL2uZyM; Fri, 20 May 2022 01:16:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C835D4256F;
	Fri, 20 May 2022 01:16:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8BBA41BF30C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 May 2022 01:16:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1C2CD40423
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 May 2022 01:15:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HMvFVOgGkN_E for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 May 2022 01:15:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 825BB4000B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 May 2022 01:15:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653009357; x=1684545357;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Y5alR8X1iiRzv2aqzNRWNZvPhKBChN/toGkywq+hTEA=;
 b=FmyRDNg04ZXGP57/qWhSbhAg2IMmpmkNqBzni6MPzR1wnCyp2j+une6B
 1t7GKJ6JGidvAh7CxE9NmVvm31xhXbZt5Vsu40TTvu9YdlOinHQtEFzuP
 8bi/+A0UDk4YAjb+OcMYXKfwaQOihTQqcnCu9ZsF9XJg9LwiKrrEW+L73
 cpkaiTzH5uqjUDVy0UGKeeOr9j6SEc/5FlVezAspXplkOXt21kftf8Bw/
 4ol5HFsQ+g5wvdfta/FfZ3qS62tUQGs54ftvjmYvMX6M7HvnfBZCEagsA
 DVQ6LCwSkro1Z89KedfirVGNy/t3BTk25Xoa9LLqgvFy1VVQT37gTream w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10352"; a="333064169"
X-IronPort-AV: E=Sophos;i="5.91,238,1647327600"; d="scan'208";a="333064169"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2022 18:15:54 -0700
X-IronPort-AV: E=Sophos;i="5.91,238,1647327600"; d="scan'208";a="570534566"
Received: from vcostago-mobl3.jf.intel.com ([10.24.14.84])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2022 18:15:54 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: netdev@vger.kernel.org
Date: Thu, 19 May 2022 18:15:37 -0700
Message-Id: <20220520011538.1098888-11-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20220520011538.1098888-1-vinicius.gomes@intel.com>
References: <20220520011538.1098888-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v5 10/11] igc: Check incompatible
 configs for Frame Preemption
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
Cc: jiri@resnulli.us, vladimir.oltean@nxp.com, po.liu@nxp.com, jhs@mojatatu.com,
 intel-wired-lan@lists.osuosl.org, boon.leong.ong@intel.com,
 xiyou.wangcong@gmail.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Frame Preemption and LaunchTime cannot be enabled on the same queue.
If that situation happens, emit an error to the user, and log the
error.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 69e96e9a3ec8..96ad00e33f4b 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -5916,6 +5916,11 @@ static int igc_save_launchtime_params(struct igc_adapter *adapter, int queue,
 	if (queue < 0 || queue >= adapter->num_tx_queues)
 		return -EINVAL;
 
+	if (ring->preemptible) {
+		netdev_err(adapter->netdev, "Cannot enable LaunchTime on a preemptible queue\n");
+		return -EINVAL;
+	}
+
 	ring = adapter->tx_ring[queue];
 	ring->launchtime_enable = enable;
 
-- 
2.35.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
