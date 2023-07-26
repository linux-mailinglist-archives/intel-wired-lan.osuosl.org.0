Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 464C37638C9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jul 2023 16:15:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6FE7041736;
	Wed, 26 Jul 2023 14:15:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6FE7041736
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690380951;
	bh=7LtTS6Ak2Iv6Nf1mPMcuxVTAkuoq3UhLTX34YjfNFUs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=k9pbFJ3Nfg2juI6tiMGaXziDclg3Zu/EsImN7yBGEyE4+FLGGGFTlVQRrUcWcRbWF
	 MEz5x5/QiBYsW2DLYXGPpQW4kNomb16UTPXnbSShy7pJa3Pm3L3Y1XAMcbE72sz8rF
	 BWE063JlQW+KP1w5ymBv6WDz1DBu38TmdB6ecgoyo7Q57tjvmqPKNYqCIX+jVyNWfu
	 KrPr4z4JPDd+Ztu50y88ezJrlQgEx2R3GRhhfUY/pEy/bWSNqcgfmd4M807UJnNEzw
	 hMf/lodvY+2XnUdxPbNQ/EPpuTrSJ3y63umKUUEpVd5gqWoLTJQRc0X3DtXmFCE23J
	 fdCocFoNmXCfw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vLeQZbU93s8L; Wed, 26 Jul 2023 14:15:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0D8CF41749;
	Wed, 26 Jul 2023 14:15:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0D8CF41749
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 594E21BF57C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 14:15:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 319FD404C2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 14:15:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 319FD404C2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gnob2ERYv0hZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jul 2023 14:15:43 +0000 (UTC)
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9D96840204
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 14:15:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9D96840204
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="358025917"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="358025917"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 07:15:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="720476382"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="720476382"
Received: from pgardocx-mobl1.igk.intel.com ([10.237.95.41])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 07:15:40 -0700
From: Piotr Gardocki <piotrx.gardocki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 26 Jul 2023 16:15:33 +0200
Message-Id: <20230726141533.730620-1-piotrx.gardocki@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690380943; x=1721916943;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ESVjYcyCHt6Plz3mXGbk8ZnAbaP9eUO3fMm9YJ9FaEA=;
 b=YwKnH17lclmk0Py1yvzC4PsXUXfaolAaV6fb3ucAAaTmQKhdnnjyEXX1
 dq7lFMAX3Ggvp15YwyRN6NDv87eF+Z+tNagXZss3mI3fh/CKP2e7zL5ad
 Y4cJJ8FzTyJ0MEu8wclAqOzH+bgYjJOo6Y48bfHKhZPVx3ytCZR/Q+cAK
 GWh13VtM2ePhVCOde96IM9Wr2n2hce4rbP4Q3hDS+q1aNbaRWGKmzUJWv
 02quhL4/uS9fLuEezpAulANry+lnDg5XFQSak8VRYomOSsztZKx/ffMxw
 hw74eYv5iT0T9Kf72Uz+y3Vwih+FwN4WIHE1QQ/JO9X01fJn/t416/Ug/
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YwKnH17l
Subject: [Intel-wired-lan] [PATCH iwl-net] iavf: fix potential races for
 FDIR filters
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

Add fdir_fltr_lock locking in unprotected places.

The change in iavf_fdir_is_dup_fltr adds a spinlock around a loop which
iterates over all filters and looks for a duplicate. The filter can be removed
from list and freed from memory at the same time it's being compared. All other
places where filters are deleted are already protected with spinlock.

The remaining changes protect adapter->fdir_active_fltr variable so now all its
uses are under a spinlock.

Fixes: 527691bf0682 ("iavf: Support IPv4 Flow Director filters")
Signed-off-by: Piotr Gardocki <piotrx.gardocki@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_ethtool.c |  5 ++++-
 drivers/net/ethernet/intel/iavf/iavf_fdir.c    | 11 ++++++++---
 2 files changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 2f47cfa7f06e..460ca561819a 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -1401,14 +1401,15 @@ static int iavf_add_fdir_ethtool(struct iavf_adapter *adapter, struct ethtool_rx
 	if (fsp->flow_type & FLOW_MAC_EXT)
 		return -EINVAL;
 
+	spin_lock_bh(&adapter->fdir_fltr_lock);
 	if (adapter->fdir_active_fltr >= IAVF_MAX_FDIR_FILTERS) {
+		spin_unlock_bh(&adapter->fdir_fltr_lock);
 		dev_err(&adapter->pdev->dev,
 			"Unable to add Flow Director filter because VF reached the limit of max allowed filters (%u)\n",
 			IAVF_MAX_FDIR_FILTERS);
 		return -ENOSPC;
 	}
 
-	spin_lock_bh(&adapter->fdir_fltr_lock);
 	if (iavf_find_fdir_fltr_by_loc(adapter, fsp->location)) {
 		dev_err(&adapter->pdev->dev, "Failed to add Flow Director filter, it already exists\n");
 		spin_unlock_bh(&adapter->fdir_fltr_lock);
@@ -1781,7 +1782,9 @@ static int iavf_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
 	case ETHTOOL_GRXCLSRLCNT:
 		if (!FDIR_FLTR_SUPPORT(adapter))
 			break;
+		spin_lock_bh(&adapter->fdir_fltr_lock);
 		cmd->rule_cnt = adapter->fdir_active_fltr;
+		spin_unlock_bh(&adapter->fdir_fltr_lock);
 		cmd->data = IAVF_MAX_FDIR_FILTERS;
 		ret = 0;
 		break;
diff --git a/drivers/net/ethernet/intel/iavf/iavf_fdir.c b/drivers/net/ethernet/intel/iavf/iavf_fdir.c
index 6146203efd84..505e82ebafe4 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_fdir.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_fdir.c
@@ -722,7 +722,9 @@ void iavf_print_fdir_fltr(struct iavf_adapter *adapter, struct iavf_fdir_fltr *f
 bool iavf_fdir_is_dup_fltr(struct iavf_adapter *adapter, struct iavf_fdir_fltr *fltr)
 {
 	struct iavf_fdir_fltr *tmp;
+	bool ret = false;
 
+	spin_lock_bh(&adapter->fdir_fltr_lock);
 	list_for_each_entry(tmp, &adapter->fdir_list_head, list) {
 		if (tmp->flow_type != fltr->flow_type)
 			continue;
@@ -732,11 +734,14 @@ bool iavf_fdir_is_dup_fltr(struct iavf_adapter *adapter, struct iavf_fdir_fltr *
 		    !memcmp(&tmp->ip_data, &fltr->ip_data,
 			    sizeof(fltr->ip_data)) &&
 		    !memcmp(&tmp->ext_data, &fltr->ext_data,
-			    sizeof(fltr->ext_data)))
-			return true;
+			    sizeof(fltr->ext_data))) {
+			ret = true;
+			break;
+		}
 	}
+	spin_unlock_bh(&adapter->fdir_fltr_lock);
 
-	return false;
+	return ret;
 }
 
 /**
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
