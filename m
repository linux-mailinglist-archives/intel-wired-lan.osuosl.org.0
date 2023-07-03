Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C58745852
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Jul 2023 11:28:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AC01060E4A;
	Mon,  3 Jul 2023 09:28:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AC01060E4A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688376495;
	bh=Tinyok4uEc5UipPD17BTy1ehkFPy0PNOUhpVqosdjsw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=4HTCFAcuZgP/nALNDb6YqpTIcbSnZhMEYrmtNiHkO83raYQgXEn4HbLMJOP3AC7Cl
	 xh+H8QjaSCxov3WcUT5WBVsGCFhfGO+vO1mXvypVCR7SauBSzGeMFEglk9jOpg12Yk
	 wNzoRBb6YWeWpUH9aim/dKZ5lq/4123wuypS9SjTtYONCi9Mvve27MCtPvbSgCfS95
	 OWbh9093YE6zxmfVxyzIduvC8DvdqareUyV7XCCmwLAPRQ+v3RZUrzuYoXxotsKCwf
	 ALxQql4F8J/51RDpTcs1IMgP+CbFfH6WZ0vPYglTm72KjjnYtLzkwNr3crZViUiQ2M
	 fm53iRbMlSyFQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MrGoIIFuyWIv; Mon,  3 Jul 2023 09:28:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9447C607F5;
	Mon,  3 Jul 2023 09:28:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9447C607F5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C437F1BF2F3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 09:28:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9A1BB40295
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 09:28:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A1BB40295
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mzRBNl5AFM3V for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Jul 2023 09:28:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 470F1400D3
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 470F1400D3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 09:28:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10759"; a="365406271"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="365406271"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2023 02:28:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10759"; a="842598722"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="842598722"
Received: from gklab-018-208.igk.intel.com ([10.102.18.208])
 by orsmga004.jf.intel.com with ESMTP; 03 Jul 2023 02:27:58 -0700
From: Kamil Maziarz <kamil.maziarz@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  3 Jul 2023 11:27:50 +0200
Message-Id: <20230703092750.74852-1-kamil.maziarz@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688376487; x=1719912487;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6Y4MCcFiniPwgzg9ePYw7oA5EkB3RihZgI4/AiCbI+c=;
 b=NY9PGNzP2jG9ftUXBfUKv62ivipBuANsJgSSNDwD29VhICe1YeODpmPA
 nrNNF2cURyk8Jlw9fGZxxMcXNmGQpvZQHOpWnm5Hs9HhwbALWRcMPg2Wp
 UwDcJsM/SEKvTC3GnMIFzTNYoAKAIzryIxTdQz6b7gKA/NIAaRgBFEYY7
 2bAGcaxEyY+A8q4eCzaxuK64RjRmQD2R1gE6pVHRsi2SprHAMb9z7kqVO
 3MyOmsBoCa7C3WcACjjrsndX8CAaulWX3YNYdvjVT8Q2urfsVEHbhOtRS
 pfsXzqlP9CxMSjUMqPNIU5+Vjarm0qC962DG/WbFAEjHMZ2nYCyU2EaHd
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NY9PGNzP
Subject: [Intel-wired-lan] [PATCH iwl-net v3] ice: Fix RDMA VSI removal
 during queue rebuild
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
Cc: Kamil Maziarz <kamil.maziarz@intel.com>,
 Rafal Rogalski <rafalx.rogalski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Rafal Rogalski <rafalx.rogalski@intel.com>

During qdisc create/delete, it is necessary to rebuild the queue
of VSIs. An error occurred because the VSIs created by RDMA were
still active.

Added check if RDMA is active. If yes, it disallows qdisc changes
and writes a message in the system logs.

Fixes: 348048e724a0 ("ice: Implement iidc operations")
Signed-off-by: Rafal Rogalski <rafalx.rogalski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
---
v2: instead of adding new flag use already implemented check for RDMA
v3: added adev_mutex and device lock as recommended
---
 drivers/net/ethernet/intel/ice/ice_main.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a1f7c8edc22f..23f41393395f 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -9031,6 +9031,7 @@ ice_setup_tc(struct net_device *netdev, enum tc_setup_type type,
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_pf *pf = np->vsi->back;
+	bool locked = false;
 	int err;
 
 	switch (type) {
@@ -9040,10 +9041,27 @@ ice_setup_tc(struct net_device *netdev, enum tc_setup_type type,
 						  ice_setup_tc_block_cb,
 						  np, np, true);
 	case TC_SETUP_QDISC_MQPRIO:
+		if (pf->adev) {
+			mutex_lock(&pf->adev_mutex);
+			device_lock(&pf->adev->dev);
+			locked = true;
+			if (pf->adev->dev.driver) {
+				netdev_err(netdev, "Cannot change qdisc when RDMA is active\n");
+				err = -EBUSY;
+				goto adev_unlock;
+			}
+		}
+
 		/* setup traffic classifier for receive side */
 		mutex_lock(&pf->tc_mutex);
 		err = ice_setup_tc_mqprio_qdisc(netdev, type_data);
 		mutex_unlock(&pf->tc_mutex);
+
+adev_unlock:
+		if (locked) {
+			device_unlock(&pf->adev->dev);
+			mutex_unlock(&pf->adev_mutex);
+		}
 		return err;
 	default:
 		return -EOPNOTSUPP;
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
