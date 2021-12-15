Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F03B84756CB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Dec 2021 11:46:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 69639819F5;
	Wed, 15 Dec 2021 10:46:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kqyGENrI2poZ; Wed, 15 Dec 2021 10:46:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 57EF281991;
	Wed, 15 Dec 2021 10:46:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 434C91BF4E4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Dec 2021 10:45:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 31A64410D2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Dec 2021 10:45:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BPb-fsdDUDC7 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Dec 2021 10:45:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8A622410D1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Dec 2021 10:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639565158; x=1671101158;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TL8JK8J88NPy2yhyCgm7SjRfMCtr+4T9hz3+BbUb948=;
 b=cxCoGBZX6mRL6ctJ5zPwoYsDf4TnzEfbKdl6I9O5lbE2kJOkeWurXOrj
 /jhcL2NYHrNtTUXomNw3t9uiMMzecUWZUQj9TfSzbNE60a9cqhtLn/hnR
 9XpcDW9V28Z66TyhE81IWuVg8pCcoNj52blprfaqm341w3UG7oGyMjMAb
 YHP2Z6yb00h7q3XpwpRjN9NcQXDeHbYsZnHIS4TqllL5pEGerQAeZBzRw
 Ex0EowbIpanq9VC7ptjionYR+RlI4/ssK8XnwjRT7GK+UYqAl23kYmgfY
 mqZ4+EnUQ3Ty0fkpifWmQdL5O47JEkHeJKxUIGMfAb/DiP3CYme53n/2m A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10198"; a="239420530"
X-IronPort-AV: E=Sophos;i="5.88,207,1635231600"; d="scan'208";a="239420530"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2021 02:45:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,207,1635231600"; d="scan'208";a="465549027"
Received: from amlin-018-218.igk.intel.com ([10.102.18.218])
 by orsmga006.jf.intel.com with ESMTP; 15 Dec 2021 02:45:56 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 15 Dec 2021 10:45:54 +0000
Message-Id: <20211215104554.31524-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v2] i40e: Fix incorrect netdev's real
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
v2:Fix "CHECK: Lines should not end with a '('" warning
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 4ff1c9b9217b..1b6f03cc41da 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -14074,6 +14074,22 @@ static struct i40e_vsi *i40e_vsi_reinit_setup(struct i40e_vsi *vsi)
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
+	netif_set_real_num_rx_queues(vsi->netdev, vsi->num_queue_pairs);
+
+	return netif_set_real_num_tx_queues(vsi->netdev,
+					    vsi->num_queue_pairs);
+}
+
 /**
  * i40e_vsi_setup - Set up a VSI by a given type
  * @pf: board private structure
@@ -14203,6 +14219,9 @@ struct i40e_vsi *i40e_vsi_setup(struct i40e_pf *pf, u8 type,
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
