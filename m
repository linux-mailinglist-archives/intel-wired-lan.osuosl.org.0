Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E5AF2328AB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Jul 2020 02:23:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B1FDC86C82;
	Thu, 30 Jul 2020 00:23:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MOvjZfs9DxQF; Thu, 30 Jul 2020 00:23:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D9B2C86C77;
	Thu, 30 Jul 2020 00:23:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E8FF81BF9B9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jul 2020 00:23:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E2A4087B32
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jul 2020 00:23:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e3hdhwC6nnwo for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Jul 2020 00:23:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0D34C877E7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jul 2020 00:23:51 +0000 (UTC)
IronPort-SDR: snZJVe/l7dhDenpBM1YsQNAy4J0TZm1xqW0erGEZ6Xt+4ATBLPcQAF+u+eF7zkjlQ8049vNiev
 kv+UsGKb14eA==
X-IronPort-AV: E=McAfee;i="6000,8403,9697"; a="216004466"
X-IronPort-AV: E=Sophos;i="5.75,412,1589266800"; d="scan'208";a="216004466"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2020 17:23:50 -0700
IronPort-SDR: fGQZY1c98dYxz2X37dTchZrf1q0KedF3uG7HsbEAAlxdzV9Te+s2J5CjL0dxM9AgxPn+2/3JC2
 PdG5JuNbrV5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,412,1589266800"; d="scan'208";a="320908825"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga008.jf.intel.com with ESMTP; 29 Jul 2020 17:23:50 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 29 Jul 2020 17:19:16 -0700
Message-Id: <20200730001922.52568-7-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200730001922.52568-1-anthony.l.nguyen@intel.com>
References: <20200730001922.52568-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S51 07/13] ice: Allow 2 queue pairs per VF
 on SR-IOV initialization
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

From: Brett Creeley <brett.creeley@intel.com>

Currently VFs are only allowed to get 16, 4, and 1 queue pair by
default, which require 17, 5, and 2 MSI-X vectors respectively. This
is because each VF needs a MSI-X per data queue and a MSI-X for its
other interrupt. The calculation is based on the number of VFs created,
MSI-X available, and queue pairs available at the time of VF creation.

Unfortunately the values above exclude 2 queue pairs when only 3 MSI-X
are available to each VF based on resource constraints. The current
calculation would default to 2 MSI-X and 1 queue pair. This is a waste
of resources, so fix this by allowing 2 queue pairs per VF when there
are between 2 and 5 MSI-X available per VF.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 2 ++
 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h | 1 +
 2 files changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index d48452e3a49b..0ba54b39ab43 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -932,6 +932,8 @@ static int ice_set_per_vf_res(struct ice_pf *pf)
 		num_msix_per_vf = ICE_NUM_VF_MSIX_MED;
 	} else if (msix_avail_per_vf >= ICE_NUM_VF_MSIX_SMALL) {
 		num_msix_per_vf = ICE_NUM_VF_MSIX_SMALL;
+	} else if (msix_avail_per_vf >= ICE_NUM_VF_MSIX_MULTIQ_MIN) {
+		num_msix_per_vf = ICE_NUM_VF_MSIX_MULTIQ_MIN;
 	} else if (msix_avail_per_vf >= ICE_MIN_INTR_PER_VF) {
 		num_msix_per_vf = ICE_MIN_INTR_PER_VF;
 	} else {
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
index 049e0b583383..0f519fba3770 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
@@ -32,6 +32,7 @@
 #define ICE_MAX_RSS_QS_PER_VF		16
 #define ICE_NUM_VF_MSIX_MED		17
 #define ICE_NUM_VF_MSIX_SMALL		5
+#define ICE_NUM_VF_MSIX_MULTIQ_MIN	3
 #define ICE_MIN_INTR_PER_VF		(ICE_MIN_QS_PER_VF + 1)
 #define ICE_MAX_VF_RESET_TRIES		40
 #define ICE_MAX_VF_RESET_SLEEP_MS	20
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
