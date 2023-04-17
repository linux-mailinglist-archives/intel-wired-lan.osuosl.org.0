Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 018406E4FE6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Apr 2023 20:10:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 573B7410AC;
	Mon, 17 Apr 2023 18:10:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 573B7410AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681755002;
	bh=arouVi/nOxV8coMElso7xKgn7U7Jc0bLyizhENGN4D4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=7oip3Jl4zVoMuJ9RHWVWBKAdr7QYoVoSE8TP1dwQd6q8Ni1rVstsb0Bj6VQI40d+0
	 31LoAAq8GgXkAS8Sucd1WlMLNUzIp7o5iYjaLv9Mc07dF/n/UG/te6Zd93NrGddRqj
	 XBsvyu6L5NDj1A3v9wxWQLVmH4iQvLstGhWr8h6k8NamGx1LPQaQn12gSbNayM1Fn9
	 QoppKdWZ0i7cMxpNBlhix7uNk1lYawv/Z8o1/sGfr2QLBH5ghhxM6TJmv9NqPio6k9
	 Lp5tvdVp6P0YXtkDM7Ybf5QeABcZvkQ74wAoXbKtTrsx8HRk03bvy+gM/g0D7Mb8Ut
	 RJSw3MRqsy7bA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7QjJ1qpQHtvS; Mon, 17 Apr 2023 18:10:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1E54A410A7;
	Mon, 17 Apr 2023 18:10:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1E54A410A7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B298B1BF20D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 18:09:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 95724410A7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 18:09:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 95724410A7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QvPZ6UCfhuBE for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Apr 2023 18:09:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 59A1A41061
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 59A1A41061
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 18:09:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="342464918"
X-IronPort-AV: E=Sophos;i="5.99,204,1677571200"; d="scan'208";a="342464918"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 11:09:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="693311580"
X-IronPort-AV: E=Sophos;i="5.99,204,1677571200"; d="scan'208";a="693311580"
Received: from rnowicki-mobl.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.252.56.229])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 11:09:51 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 17 Apr 2023 12:09:39 -0600
Message-Id: <20230417180939.26609-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681754995; x=1713290995;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YbNt+gPR72QtLonEpUs2wl0C7xrYll5FrEPkpW0hTH0=;
 b=IENdORmIkoSGbseghjqt7a567UvDij66HvEUGkt8LlI5j986wlQbhowh
 D3nWV3mcR4lCz8QXh61sv+KdQHXahcro6009lX53OD7VzSYPvCD1FiVPX
 8pq0BRGiQ3j/1lU8nQFeD0W3dKpXYbgoYQ8yZ9eMWTdnhzOAhMXqtBZX6
 vrPk1fiV148EgHATigucuaUNhitmHUMbqfKLgphAfGveHgjZLpIGOQLxi
 zI4I3c+F+c/pCBwqm+O4sD6irQkZ8TTL8dCAliG7dQnITiNRouowVpLiw
 HLpxKdyNv5md4R2KH6KipH8zA4Q14zxjQqkLq3FU0OUHgi0uHRyLonxLR
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IENdORmI
Subject: [Intel-wired-lan] [PATCH net v2] iavf: send VLAN offloading caps
 once after VFR
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

Fixes: 7598f4b40bd6 ("iavf: Move netdev_update_features() into watchdog task")
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
v2: add Fixes tag
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
