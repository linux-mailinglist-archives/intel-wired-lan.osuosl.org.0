Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E46474020
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Dec 2021 11:10:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E6FB84011F;
	Tue, 14 Dec 2021 10:10:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fEokucHt04fg; Tue, 14 Dec 2021 10:10:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5C07B40105;
	Tue, 14 Dec 2021 10:10:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B94F71BF5DD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 10:10:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A1D0360777
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 10:10:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z_iNfoJDqUFz for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Dec 2021 10:10:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E737D6068F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 10:10:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639476619; x=1671012619;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iH3yAhUjM31/j5EyunWi+DWPuIzMravwILZYNAReEks=;
 b=LYgmtqP5ZmVPC0pEuB2iviVEGbp6j2p9LYyxtrKw4K0pVZRvGpzwJlKg
 nCk/76DBIevp2VnijSJYiO0pMQpZlIrt++HIu5EMRqsrhzof+eDnSTLLI
 OxQfJVOBeEiIUo+xUTcArGuBkXo7n2EdqCwfydLuEUVRgaO0p15hZI6H9
 kX725/4vo/U146PotGFF7qjQdM5b3SKMOf+6gm9OeNGQMlKX/yrLeJyWO
 3XCM+gxD8nhQZjtXuUSZNJnG/msHC74FmGoUf27ByH8MDEFCk45VAZsaH
 IZIVcC10RDkC4LJ7f7kEA6CuWc4sRcqfRuLZvC8RCPEcp/elz0wpduzc3 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="238892745"
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="238892745"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2021 02:10:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="754773915"
Received: from amlin-018-218.igk.intel.com ([10.102.18.218])
 by fmsmga005.fm.intel.com with ESMTP; 14 Dec 2021 02:10:17 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 14 Dec 2021 10:10:16 +0000
Message-Id: <20211214101016.5959-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix incorrect netdev's real
 number of RX/TX queues
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
Cc: Lukasz Cieplicki <lukaszx.cieplicki@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

There was a wrong queues representation in sysfs during
driver's reinitialization in case of online cpus number is
less than combined queues. It was caused by stopped
NetworkManager, which is responsible for calling vsi_open
function during driver's initialization.
In specific situation (ex. 12 cpus online) there were 16 queues
in /sys/class/net/<iface>/queues. In case of modifying queues with
value higher, than number of online cpus, then it caused write
errors and other errors.
Add updating of sysfs's queues representation during driver
initialization.

Fixes: 41c445ff0f48 ("i40e: main driver core")
Signed-off-by: Lukasz Cieplicki <lukaszx.cieplicki@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 22 +++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 5322f44ed6ce..850264c4285b 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -14074,6 +14074,25 @@ static struct i40e_vsi *i40e_vsi_reinit_setup(struct i40e_vsi *vsi)
 	return NULL;
 }
 
+/**
+ * i40e_netif_set_realnum_tx_rx_queues - Update number of tx/rx queues
+ * @vsi: vsi structure
+ *
+ * This updates netdev's number of tx/rx queues
+ *
+ * Returns status of setting tx/rx queues
+ **/
+static int i40e_netif_set_realnum_tx_rx_queues(struct i40e_vsi *vsi)
+{
+	netif_set_real_num_rx_queues(
+		vsi->netdev,
+		vsi->num_queue_pairs);
+
+	return netif_set_real_num_tx_queues(
+		vsi->netdev,
+		vsi->num_queue_pairs);
+}
+
 /**
  * i40e_vsi_setup - Set up a VSI by a given type
  * @pf: board private structure
@@ -14203,6 +14222,9 @@ struct i40e_vsi *i40e_vsi_setup(struct i40e_pf *pf, u8 type,
 	case I40E_VSI_MAIN:
 	case I40E_VSI_VMDQ2:
 		ret = i40e_config_netdev(vsi);
+		if (ret)
+			goto err_netdev;
+		ret = i40e_netif_set_realnum_tx_rx_queues(vsi);
 		if (ret)
 			goto err_netdev;
 		ret = register_netdev(vsi->netdev);
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
