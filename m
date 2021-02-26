Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2278326981
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Feb 2021 22:29:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C8B6C43426;
	Fri, 26 Feb 2021 21:29:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OmVO_cqL99ul; Fri, 26 Feb 2021 21:29:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0320B4342B;
	Fri, 26 Feb 2021 21:29:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4F4DA1BF9B4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Feb 2021 21:29:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ED9796F49A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Feb 2021 21:29:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yqhTIYJVQ5BF for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Feb 2021 21:28:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C50476F4D2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Feb 2021 21:28:58 +0000 (UTC)
IronPort-SDR: wySg8bIJD5qk5KgzdosLVGZRtQSAysAFD4FbIN7OR0hIYjl8KiEG1xQC+NFo1SKbLLWha9MS7h
 ospO6g4yGeVw==
X-IronPort-AV: E=McAfee;i="6000,8403,9907"; a="173138970"
X-IronPort-AV: E=Sophos;i="5.81,209,1610438400"; d="scan'208";a="173138970"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2021 13:28:57 -0800
IronPort-SDR: g4N33F+UF2v2IqhLr7WQQvXKipts9EoGsRKMmPV1J6WNhoW9NkkT7EnNGo3/hAVB9dXCFwJkvh
 uEQ23iBOFRiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,209,1610438400"; d="scan'208";a="432913457"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by FMSMGA003.fm.intel.com with ESMTP; 26 Feb 2021 13:28:56 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 26 Feb 2021 13:19:28 -0800
Message-Id: <20210226211932.46683-9-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210226211932.46683-1-anthony.l.nguyen@intel.com>
References: <20210226211932.46683-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net 09/13] ice: remove DCBNL_DEVRESET bit
 from PF state
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

From: Dave Ertman <david.m.ertman@intel.com>

The original purpose of the ICE_DCBNL_DEVRESET was to protect
the driver during DCBNL device resets.  But, the flow for
DCBNL device resets now consists of only calls up the stack
such as dev_close() and dev_open() that will result in NDO calls
to the driver.  These will be handled with state changes from the
stack.  Also, there is a problem of the dev_close and dev_open
being blocked by checks for reset in progress also using the
ICE_DCBNL_DEVRESET bit.

Since the ICE_DCBNL_DEVRESET bit is not necessary for protecting
the driver from DCBNL device resets and it is actually blocking
changes coming form the DCBNL interface, remove the bit from the
PF state and don't block driver function based on DCBNL reset in
progress.

Fixes: b94b013eb626 ("ice: Implement DCBNL support")
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h        | 1 -
 drivers/net/ethernet/intel/ice/ice_dcb_nl.c | 2 --
 drivers/net/ethernet/intel/ice/ice_lib.c    | 1 -
 3 files changed, 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index ae1c3a3b0780..522c7aa61cc7 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -193,7 +193,6 @@ enum ice_state {
 	__ICE_NEEDS_RESTART,
 	__ICE_PREPARED_FOR_RESET,	/* set by driver when prepared */
 	__ICE_RESET_OICR_RECV,		/* set by driver after rcv reset OICR */
-	__ICE_DCBNL_DEVRESET,		/* set by dcbnl devreset */
 	__ICE_PFR_REQ,			/* set by driver and peers */
 	__ICE_CORER_REQ,		/* set by driver and peers */
 	__ICE_GLOBR_REQ,		/* set by driver and peers */
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
index 468a63f7eff9..4180f1f35fb8 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
@@ -18,12 +18,10 @@ static void ice_dcbnl_devreset(struct net_device *netdev)
 	while (ice_is_reset_in_progress(pf->state))
 		usleep_range(1000, 2000);
 
-	set_bit(__ICE_DCBNL_DEVRESET, pf->state);
 	dev_close(netdev);
 	netdev_state_change(netdev);
 	dev_open(netdev, NULL);
 	netdev_state_change(netdev);
-	clear_bit(__ICE_DCBNL_DEVRESET, pf->state);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 638304abef73..d5b9ac620b06 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3080,7 +3080,6 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 bool ice_is_reset_in_progress(unsigned long *state)
 {
 	return test_bit(__ICE_RESET_OICR_RECV, state) ||
-	       test_bit(__ICE_DCBNL_DEVRESET, state) ||
 	       test_bit(__ICE_PFR_REQ, state) ||
 	       test_bit(__ICE_CORER_REQ, state) ||
 	       test_bit(__ICE_GLOBR_REQ, state);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
