Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D2D7691F1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 31 Jul 2023 11:41:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 70C728176F;
	Mon, 31 Jul 2023 09:41:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 70C728176F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690796479;
	bh=JL3NcCIiI2Nxp6ovIoT4jgkhTSj0ee1gN9eyg3W11kY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=rUCwoSovH7ZDl0JmtpH9WDdMbMujwWk9pLABVtNhr27ozTQislljD11IAkdZBKQFY
	 VDPCzgD9cZ86CWbZPTNnKGgq3ZKwPqkWkLXYLcCMmVzrLHvw66m/awrWgXDIGsw+1K
	 biEia2ZTcueHmqQTUe6gC1kzSRpRI8ooyG27JlcTGMS3Lp0Yz/1llWK20zsBEobAfb
	 7Dnqfhjha5EkLFbsMGQCd7hC6ufwl47kicOvx/GrnRHEX/vy09vdo92aiMAfg2kEdN
	 hDrGhUd+xA5WnuOmNpKPtVwqdspJsTIkf/2lDaujoSyTDG+pDoiTuqHEs4dN/Rxcx7
	 fRICYzNmf3jFg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e0vLeTQQxqOu; Mon, 31 Jul 2023 09:41:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 685B881699;
	Mon, 31 Jul 2023 09:41:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 685B881699
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 388521BF3D9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jul 2023 09:41:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0CAC681699
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jul 2023 09:41:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0CAC681699
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K5ixsUIHqahM for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Jul 2023 09:41:12 +0000 (UTC)
Received: from mgamail.intel.com (unknown [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1FEE681656
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jul 2023 09:41:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1FEE681656
X-IronPort-AV: E=McAfee;i="6600,9927,10787"; a="348571507"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="348571507"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2023 02:41:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10787"; a="678253994"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="678253994"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga003.jf.intel.com with ESMTP; 31 Jul 2023 02:41:09 -0700
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id A9C00312FC;
 Mon, 31 Jul 2023 10:41:08 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 31 Jul 2023 04:42:01 +0200
Message-ID: <20230731024201.56257-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690796472; x=1722332472;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BtC1EsVL0qc0+96bdmP8TOsAXgKe/uMcmGE9sdz9+Fs=;
 b=Zk8fQPMB/RRNCg6t/n1xhdlq/YmHpeUPXz3bXP3DHmnMny6JuLfpSjux
 t8QGL12oTtckem+e1nqRP7T2xZNWkMPV1s0MQI8wI8NBGoROuP5uzeZVD
 txV7fBjfexMrc5k5B1LaVwyVPuwufiCjqE/eIY4nhlG0yMRe3FbpSfWxR
 Me9zxFZhXsli3UuamewUB7ly9eQXXEmq8dmH4OgdxRxeiWdUKZ3CaT0EO
 eyzqVhFT++eep6v05Mpt6+awQzZ7CR/warJNxrIkRIMv6X/AW30spuvMr
 7qZPAn5s8rvw6d4hfj65BDv4ZsCAxU2QpCMp9xd9QoXMmjsmLnrLHY/aO
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Zk8fQPMB
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: Remove redundant VSI
 configuration in eswitch setup
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

Remove a call to disable VLAN stripping on switchdev control plane VSI, as
it is disabled by default.

Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index 9a53a5e5d73e..62b54100273f 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -84,10 +84,6 @@ static int ice_eswitch_setup_env(struct ice_pf *pf)
 	struct ice_vsi_vlan_ops *vlan_ops;
 	bool rule_added = false;
 
-	vlan_ops = ice_get_compat_vsi_vlan_ops(ctrl_vsi);
-	if (vlan_ops->dis_stripping(ctrl_vsi))
-		return -ENODEV;
-
 	ice_remove_vsi_fltr(&pf->hw, uplink_vsi->idx);
 
 	netif_addr_lock_bh(uplink_netdev);
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
