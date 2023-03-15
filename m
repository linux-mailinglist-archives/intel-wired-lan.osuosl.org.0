Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E6CD6BBDB5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Mar 2023 20:59:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9C0C561151;
	Wed, 15 Mar 2023 19:59:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C0C561151
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678910382;
	bh=H2UR2xrGLLnAR2ZVIHxRpDVl/TV5rynS55x21aL88sQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=R9spwZfw4BKfUoHyRzj48oXxjvVbyqkQjEK6QksVCa9iRff3sW6VqyCUMooJptXdx
	 ++hRPItQc9xe5nCwDZhJA7TtTf8JdLYHFPA8eFX/5uZFhlsRJL5zqRzc0WIOFDlzYf
	 G1UX1+6mL/VA8wdVUvWJa48ntr1qv078vitz/cU5NEga6ouX3u083n1gloixm2RaY+
	 0CC5hkLHI4fm3ynSjQzKhPLjwiwte1H5fUNMf+bNrY848ECdWpPqheyFL7DU7qrpSA
	 eB0Vm+ggs17VVKjYWjqxBxFYpUpxS/euwqPlwN8xI8CLzV/Nn7kLwj96w2wc0qCLFa
	 9U1wbFRBjF7yw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TStRzMqjEGKo; Wed, 15 Mar 2023 19:59:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9415860E80;
	Wed, 15 Mar 2023 19:59:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9415860E80
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5A5DF1BF283
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Mar 2023 19:59:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 318FB8141A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Mar 2023 19:59:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 318FB8141A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V8m2-4v_6ofp for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Mar 2023 19:59:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 44DCD813F6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 44DCD813F6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Mar 2023 19:59:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="340169685"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="340169685"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 12:59:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="712060916"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="712060916"
Received: from mgrzegox-mobl.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.252.32.209])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 12:59:34 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 15 Mar 2023 13:59:25 -0600
Message-Id: <20230315195925.110409-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678910376; x=1710446376;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=e53zc3fBFSfBC67ZM5gBXZ8NIQkaIR9txXcdvCgoXd0=;
 b=JDKMKuYVhmBEkdmWx9DSBKV5ymSVCcTP37bk6SxmjjqdCZ/yJDMn4Szd
 uCai7ndAzcGMGMzGoiejVti0JPoQd6+wipKc4Mg7ahom2gkuQSNfaZmFm
 IXKKFahUGhpqLYAi1sfYl9xzh/gJkKm0sOsjw/0vjNTZRyZ3jHrNQ14zK
 SHYwRzyLr3T4eQ6mGsNWW709UkMzBt61uv9UVakJUBPNN9SudBK5wrW2d
 Ns7GFvDuoWAxGuyXb8q0B/tTNc2PH9dPzF91yqOJWM0YjF64gDzgVw/UC
 uGmO6BO1P77gpUSBP57jJHyugT7kFYYt4zjkiJsoFUKMN5fuKnJbz+uu9
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JDKMKuYV
Subject: [Intel-wired-lan] [PATCH v3] iavf: do not track VLAN 0 filters
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
Cc: Michal Kubiak <michal.kubiak@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When an interface with the maximum number of VLAN filters is brought up,
a spurious error is logged:

    [257.483082] 8021q: adding VLAN 0 to HW filter on device enp0s3
    [257.483094] iavf 0000:00:03.0 enp0s3: Max allowed VLAN filters 8. Remove existing VLANs or disable filtering via Ethtool if supported.

The VF driver complains that it cannot add the VLAN 0 filter.

On the other hand, the PF driver always adds VLAN 0 filter on VF
initialization. The VF does not need to ask the PF for that filter at
all.

Fix the error by not tracking VLAN 0 filters altogether. With that, the
check added by commit 0e710a3ffd0c ("iavf: Fix VF driver counting VLAN 0
filters") in iavf_virtchnl.c is useless and might be confusing if left as
it suggests that we track VLAN 0.

Fixes: 0e710a3ffd0c ("iavf: Fix VF driver counting VLAN 0 filters")
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
---
v2 -> v3: Added the same check in iavf_vlan_rx_kill_vid()
v1 -> v2: Added indentation and fixed typo in commit  message. Also,
          clarified the comment in iavf_vlan_rx_add_vid()
---
 drivers/net/ethernet/intel/iavf/iavf_main.c     | 8 ++++++++
 drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 2 --
 2 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 3273aeb8fa67..327cd9b1af2c 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -893,6 +893,10 @@ static int iavf_vlan_rx_add_vid(struct net_device *netdev,
 {
 	struct iavf_adapter *adapter = netdev_priv(netdev);
 
+	/* Do not track VLAN 0 filter, always added by the PF on VF init */
+	if (!vid)
+		return 0;
+
 	if (!VLAN_FILTERING_ALLOWED(adapter))
 		return -EIO;
 
@@ -919,6 +923,10 @@ static int iavf_vlan_rx_kill_vid(struct net_device *netdev,
 {
 	struct iavf_adapter *adapter = netdev_priv(netdev);
 
+	/* We do not track VLAN 0 filter */
+	if (!vid)
+		return 0;
+
 	iavf_del_vlan(adapter, IAVF_VLAN(vid, be16_to_cpu(proto)));
 	if (proto == cpu_to_be16(ETH_P_8021Q))
 		clear_bit(vid, adapter->vsi.active_cvlans);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 6d23338604bb..4e17d006c52d 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -2446,8 +2446,6 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 		list_for_each_entry(f, &adapter->vlan_filter_list, list) {
 			if (f->is_new_vlan) {
 				f->is_new_vlan = false;
-				if (!f->vlan.vid)
-					continue;
 				if (f->vlan.tpid == ETH_P_8021Q)
 					set_bit(f->vlan.vid,
 						adapter->vsi.active_cvlans);
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
