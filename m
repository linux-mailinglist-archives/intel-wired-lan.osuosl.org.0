Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 82A146E112C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Apr 2023 17:32:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7AED0420AE;
	Thu, 13 Apr 2023 15:32:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7AED0420AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681399964;
	bh=NFlLaImlnWekS5HzjxKSJZ5Gup+GvLVMrcCj+WwDo88=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Pc7ebCnzMZu3cXu99W4jXBdIazZcXcwD5TtiTz47CzaBZiu4rnFFdlsSU1TMtr4uR
	 lbBpDJMgJZepS/vzUoHFjFWtxbFSAjkw6a96ZPw1iG6q71qIQUZZyB3JhwuFL7ZPZs
	 yp4tzJQW/ZhGkGTUTLvekmgqRRsYa3SFDdgdOVN9jFsrahuoDzZa7/q+hfYCeukE1c
	 /LacKB2RHsoAYgXjRFdQCLxzcz3xIxBoWvkiC7xNzS+Pc6ECbPd1rkpztZ+CtLj5jC
	 JPTG6GyITqkCIZpfEawmSec8nOpnYl9pTSYdAnUl21nwh1dsxBw540QDycvB1qtM8o
	 F9Nw2RO4v3bDQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NQ24gwzDme6a; Thu, 13 Apr 2023 15:32:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4D6C6420B0;
	Thu, 13 Apr 2023 15:32:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4D6C6420B0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2B0BB1C3DC9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 15:32:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0FD6260E44
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 15:32:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0FD6260E44
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KJUZImEdtw5X for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Apr 2023 15:32:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 33E6060E37
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 33E6060E37
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 15:32:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="324567955"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="324567955"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 08:32:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="719897489"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="719897489"
Received: from ccontre1-mobl.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.251.213.97])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 08:32:35 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 13 Apr 2023 09:32:21 -0600
Message-Id: <20230413153221.2848407-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681399957; x=1712935957;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nwgGZ8ASHOaT0+YNas9fGjgY5YZ+vON2Zet5ymwInrE=;
 b=hYUWu4R0ITNxTyeax8OG/e/lS81v+2V8imnXCatP2gQf3QSCHAKVNJzo
 Bfneq/FVPFG05mq/oBeNTyeGMGTzns1G6MdZj7R1OmXx7mOPWg4QEbyxH
 cxG4NMhK0Q+8yDBs+qyglFbJGOFcHK24dXxxAm29sspZx/6Bv/ZBap/kG
 lI2REBlZc7nSst188/LMINiGzqJl78xXMjxwRdQHW3eD4907RTSQs63mK
 1Kd5pEfsVJ5AAUCEWQLIf96ni3mUJKnCu1+Miij4u4IbAlUtzQoseXZh6
 vKRBoXaYJmRuhscr7nWaplvi4tGjY/USacwwEDLtE2sqAtLddC5pntQJG
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hYUWu4R0
Subject: [Intel-wired-lan] [PATCH net] iavf: send VLAN offloading caps once
 after VFR
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

When the user disables rxvlan offloading and then changes the number of
channels, all VLAN ports are unable to receive traffic.

Changing the number of channels triggers a VFR reset. During re-init, when
VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS is received, we do:
1 - set the IAVF_FLAG_SETUP_NETDEV_FEATURES flag
2 - call
    iavf_set_vlan_offload_features(adapter, 0, netdev->features);

The second step sends to the PF the __default__ features, in this case
aq_required |= IAVF_FLAG_AQ_ENABLE_CTAG_VLAN_STRIPPING

While the first step forces the watchdog task to call
netdev_update_features() ->  iavf_set_features() ->
iavf_set_vlan_offload_features(adapter, netdev->features, features).
Since the user disabled the "rxvlan", this sets:
aq_required |= IAVF_FLAG_AQ_DISABLE_CTAG_VLAN_STRIPPING

When we start processing the AQ commands, both flags are enabled. Since we
process DISABLE_XTAG first then ENABLE_XTAG, this results in the PF
enabling the rxvlan offload. This breaks all communications on the VLAN
net devices.

Fix by removing the call to iavf_set_vlan_offload_features() (second
step). Calling netdev_update_features() from watchdog task is enough for
both init and reset paths.

Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 9afbbdac3590..7c0578b5457b 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -2238,11 +2238,6 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 		iavf_process_config(adapter);
 		adapter->flags |= IAVF_FLAG_SETUP_NETDEV_FEATURES;
 
-		/* Request VLAN offload settings */
-		if (VLAN_V2_ALLOWED(adapter))
-			iavf_set_vlan_offload_features(adapter, 0,
-						       netdev->features);
-
 		iavf_set_queue_vlan_tag_loc(adapter);
 
 		was_mac_changed = !ether_addr_equal(netdev->dev_addr,
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
