Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5986C92F832
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Jul 2024 11:45:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D350241463;
	Fri, 12 Jul 2024 09:45:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5rLDApZlkxim; Fri, 12 Jul 2024 09:45:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B06BE4144C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720777503;
	bh=NH5dYx3rLMDYPz2p7McuGRsfH0KZsgv/oNqnchuWTpU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=b+lBeLb5U+dQTR3+KZtPlks0z5VfR7eir+X0ltMmghay0dWTiy7ZxEnUdI3bCRAT2
	 RMeO1/el5h21Q+ZIc44hRkcsLmXoSrmmMXHfUKLcIxGaOiiPA6t9vZft1fSDmsvW4m
	 JWts+djd6jyncrphHLLO0ruWIo6pB/5TuLe3tg0Av4E0LZLWtly4ScXh2NJXdypsp/
	 KY1wGAcQZoJ7NCmTihPQ0Ee8rvJ1hYI71H9KWXcaV3Ck9Hhb6C9WGEmMm7v5TkB6TN
	 z7y9eBCYbn1B7Q7eg/+QXjnR35S4fYHCsfnjoxCDyJerai8xL2eyw4OGupVo7iYzjp
	 pYVIgjQijeLCg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B06BE4144C;
	Fri, 12 Jul 2024 09:45:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3D28C1BF5A9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2024 09:44:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 354F2412D7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2024 09:44:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9XA80SteVB_s for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Jul 2024 09:44:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EA472412D8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EA472412D8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EA472412D8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2024 09:44:56 +0000 (UTC)
X-CSE-ConnectionGUID: swyK3PhTQdeJLF0cIfHIkQ==
X-CSE-MsgGUID: IHPwOvqnT2O5R3e5UBe8Pw==
X-IronPort-AV: E=McAfee;i="6700,10204,11130"; a="18076989"
X-IronPort-AV: E=Sophos;i="6.09,202,1716274800"; d="scan'208";a="18076989"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2024 02:44:56 -0700
X-CSE-ConnectionGUID: LmuiAUkbS7aoEVH0XucLFA==
X-CSE-MsgGUID: kPDmDBWcTTKU/dUtYYaJXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,202,1716274800"; d="scan'208";a="49524316"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa007.jf.intel.com with ESMTP; 12 Jul 2024 02:44:52 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 23E6D27BAD;
 Fri, 12 Jul 2024 10:44:51 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 12 Jul 2024 05:32:50 -0400
Message-Id: <20240712093251.18683-6-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240712093251.18683-1-mateusz.polchlopek@intel.com>
References: <20240712093251.18683-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720777497; x=1752313497;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+lHsbgUBTOef+CHOLhnbRzp3ohdeiAvqSQiTssXQj+0=;
 b=nrQA1MG1qCZN/Ac1YB/Nvk4nDKnUKnoHdyD80g1PN1cvnbp9F4rpValm
 KHNX9x3lkqVNtCItMOnF2hKS2zVkcrdIKKH911bWu74GeDxXH4HV/Hxls
 IF6mEDTBLzHnZnomT7f5sTz8cOLtD9/to1zNwQdfgXQlvpJAq3kxaknv1
 YDHxPps8NCMzMAqJ+pW+zzG9iSvMSGRFbXizCo2E2Tv87zOJS2V/rbZoF
 1QQxZdlKZNsgYouurrRh95q9JOsQDAPd5Vd36Ab7j3iun0rJT1rNQh8uC
 Agc/Zd+I7P6V1pjGu6BfCO67LcEGmz7EB/9eIMzRSNXelNddqLjIdgYqq
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nrQA1MG1
Subject: [Intel-wired-lan] [PATCH iwl-next v2 5/6] ice: Add MDD logging via
 devlink health
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
Cc: willemb@google.com, Wojciech Drewek <wojciech.drewek@intel.com>,
 Ben Shelton <benjamin.h.shelton@intel.com>, dwaipayanray1@gmail.com,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 linux-kernel@vger.kernel.org, Igor Bagnucki <igor.bagnucki@intel.com>,
 joe@perches.com, edumazet@google.com, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org, apw@canonical.com, lukas.bulwahn@gmail.com,
 akpm@linux-foundation.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Ben Shelton <benjamin.h.shelton@intel.com>

Add a devlink health reporter for MDD events. The 'dump' handler will
return the information captured in each call to ice_handle_mdd_event().
A device reset (CORER/PFR) will put the reporter back in healthy state.

Signed-off-by: Ben Shelton <benjamin.h.shelton@intel.com>
Co-developed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 .../intel/ice/devlink/devlink_health.c        | 77 +++++++++++++++++++
 .../intel/ice/devlink/devlink_health.h        | 11 +++
 drivers/net/ethernet/intel/ice/ice_main.c     |  6 ++
 3 files changed, 94 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_health.c b/drivers/net/ethernet/intel/ice/devlink/devlink_health.c
index 2fbf6f08d0f6..f9edfabc9be8 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink_health.c
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink_health.c
@@ -33,6 +33,79 @@ static void ice_devlink_health_report(struct devlink_health_reporter *reporter,
 	}
 }
 
+struct ice_mdd_event {
+	enum ice_mdd_src src;
+	u16 vf_num;
+	u16 queue;
+	u8 pf_num;
+	u8 event;
+};
+
+static const char *ice_mdd_src_to_str(enum ice_mdd_src src)
+{
+	switch (src) {
+	case ICE_MDD_SRC_TX_PQM:
+		return "tx_pqm";
+	case ICE_MDD_SRC_TX_TCLAN:
+		return "tx_tclan";
+	case ICE_MDD_SRC_TX_TDPU:
+		return "tx_tdpu";
+	case ICE_MDD_SRC_RX:
+		return "rx";
+	default:
+		return "invalid";
+	}
+}
+
+static int
+ice_mdd_reporter_dump(struct devlink_health_reporter *reporter,
+		      struct devlink_fmsg *fmsg, void *priv_ctx,
+		      struct netlink_ext_ack *extack)
+{
+	struct ice_mdd_event *mdd_event = priv_ctx;
+	const char *src;
+
+	if (!mdd_event)
+		return 0;
+
+	src = ice_mdd_src_to_str(mdd_event->src);
+
+	devlink_fmsg_obj_nest_start(fmsg);
+	devlink_fmsg_put(fmsg, "src", src);
+	ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, mdd_event, pf_num);
+	ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, mdd_event, vf_num);
+	ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, mdd_event, event);
+	ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, mdd_event, queue);
+	devlink_fmsg_obj_nest_end(fmsg);
+
+	return 0;
+}
+
+/**
+ * ice_devlink_report_mdd_event - Report an MDD event through devlink health
+ * @pf: the PF device structure
+ * @src: the HW block that was the source of this MDD event
+ * @pf_num: the pf_num on which the MDD event occurred
+ * @vf_num: the vf_num on which the MDD event occurred
+ * @event: the event type of the MDD event
+ * @queue: the queue on which the MDD event occurred
+ *
+ * Report an MDD event that has occurred on this PF.
+ */
+void ice_devlink_report_mdd_event(struct ice_pf *pf, enum ice_mdd_src src,
+				  u8 pf_num, u16 vf_num, u8 event, u16 queue)
+{
+	struct ice_mdd_event ev = {
+		.src = src,
+		.pf_num = pf_num,
+		.vf_num = vf_num,
+		.event = event,
+		.queue = queue,
+	};
+
+	ice_devlink_health_report(pf->health_reporters.mdd, "MDD event", &ev);
+}
+
 static void ice_dump_ethtool_stats_to_fmsg(struct devlink_fmsg *fmsg,
 					   struct net_device *netdev)
 {
@@ -154,6 +227,7 @@ ice_init_devlink_rep(struct ice_pf *pf,
 	.dump = ice_ ## _name ## _reporter_dump, \
 }
 
+ICE_DEFINE_HEALTH_REPORTER_OPS(mdd);
 ICE_DEFINE_HEALTH_REPORTER_OPS(tx_hang);
 
 /**
@@ -166,6 +240,7 @@ void ice_health_init(struct ice_pf *pf)
 {
 	struct ice_health *reps = &pf->health_reporters;
 
+	reps->mdd = ice_init_devlink_rep(pf, &ice_mdd_reporter_ops);
 	reps->tx_hang = ice_init_devlink_rep(pf, &ice_tx_hang_reporter_ops);
 }
 
@@ -187,6 +262,7 @@ static void ice_deinit_devl_reporter(struct devlink_health_reporter *reporter)
  */
 void ice_health_deinit(struct ice_pf *pf)
 {
+	ice_deinit_devl_reporter(pf->health_reporters.mdd);
 	ice_deinit_devl_reporter(pf->health_reporters.tx_hang);
 }
 
@@ -206,5 +282,6 @@ void ice_health_assign_healthy_state(struct devlink_health_reporter *reporter)
  */
 void ice_health_clear(struct ice_pf *pf)
 {
+	ice_health_assign_healthy_state(pf->health_reporters.mdd);
 	ice_health_assign_healthy_state(pf->health_reporters.tx_hang);
 }
diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_health.h b/drivers/net/ethernet/intel/ice/devlink/devlink_health.h
index 984b8f9f56d4..01abd3d8f31e 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink_health.h
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink_health.h
@@ -16,18 +16,29 @@
 struct ice_pf;
 struct ice_tx_ring;
 
+enum ice_mdd_src {
+	ICE_MDD_SRC_TX_PQM,
+	ICE_MDD_SRC_TX_TCLAN,
+	ICE_MDD_SRC_TX_TDPU,
+	ICE_MDD_SRC_RX,
+};
+
 /**
  * struct ice_health - stores ice devlink health reporters and accompanied data
  * @tx_hang: devlink health reporter for tx_hang event
+ * @mdd: devlink health reporter for MDD detection event
  */
 struct ice_health {
 	struct devlink_health_reporter *tx_hang;
+	struct devlink_health_reporter *mdd;
 };
 
 void ice_health_init(struct ice_pf *pf);
 void ice_health_deinit(struct ice_pf *pf);
 void ice_health_clear(struct ice_pf *pf);
 
+void ice_devlink_report_mdd_event(struct ice_pf *pf, enum ice_mdd_src src,
+				  u8 pf_num, u16 vf_num, u8 event, u16 queue);
 void ice_report_tx_hang(struct ice_pf *pf, struct ice_tx_ring *tx_ring,
 			u16 vsi_num, u32 head, u32 intr);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 1fae7d34f2e4..a7c186fb902b 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1819,6 +1819,8 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
 		if (netif_msg_tx_err(pf))
 			dev_info(dev, "Malicious Driver Detection event %d on TX queue %d PF# %d VF# %d\n",
 				 event, queue, pf_num, vf_num);
+		ice_devlink_report_mdd_event(pf, ICE_MDD_SRC_TX_PQM, pf_num,
+					     vf_num, event, queue);
 		wr32(hw, GL_MDET_TX_PQM, 0xffffffff);
 	}
 
@@ -1832,6 +1834,8 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
 		if (netif_msg_tx_err(pf))
 			dev_info(dev, "Malicious Driver Detection event %d on TX queue %d PF# %d VF# %d\n",
 				 event, queue, pf_num, vf_num);
+		ice_devlink_report_mdd_event(pf, ICE_MDD_SRC_TX_TCLAN, pf_num,
+					     vf_num, event, queue);
 		wr32(hw, GL_MDET_TX_TCLAN_BY_MAC(hw), U32_MAX);
 	}
 
@@ -1845,6 +1849,8 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
 		if (netif_msg_rx_err(pf))
 			dev_info(dev, "Malicious Driver Detection event %d on RX queue %d PF# %d VF# %d\n",
 				 event, queue, pf_num, vf_num);
+		ice_devlink_report_mdd_event(pf, ICE_MDD_SRC_RX, pf_num,
+					     vf_num, event, queue);
 		wr32(hw, GL_MDET_RX, 0xffffffff);
 	}
 
-- 
2.38.1

