Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FA7A764E20
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jul 2023 10:50:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 276FA417EF;
	Thu, 27 Jul 2023 08:50:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 276FA417EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690447847;
	bh=SkTLRrolF1ShnB10HzC/5RmDA70phQY6OxPwH1EGt2k=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=2oOVLC3/OATjtMhkzyVmZQa88pT9M2ylo5/wJ+kbf/gvZSCBAwci7MFzgRnqC8dw1
	 9PKBBmrgItEnvcoijgVepBc2/QWyyh/cUzY6ChSN7vVEi+LAvkVCJU13S0ig0wY8I9
	 TEOxq+k3lvmPQZAQZ6kGzvmBLtXJMSg7EhGVAPe+VQXjyTyVwzzMSAI62t2uJb53+W
	 N0z/jDsH32IbMlYcpX3anJQKBcUTLJNjG5LeaSF7adQXi1ef7Mae6UwoqGeLfUWCqv
	 LyRsX7s3lM7/eWqVEEwvcH70CWcaUTu9uVqzUV3eL5VjMrpXII3Y72lGEoo8kCqiZo
	 hR4TAFAJ9Do4Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s2EyIOeY9UaT; Thu, 27 Jul 2023 08:50:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0F9EE40948;
	Thu, 27 Jul 2023 08:50:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0F9EE40948
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 023521BF59C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 08:50:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CB57782F51
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 08:50:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CB57782F51
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 86Gl6sTV8aM9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jul 2023 08:50:40 +0000 (UTC)
Received: from mgamail.intel.com (unknown [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 189BB82EF0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 08:50:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 189BB82EF0
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="368269729"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="368269729"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2023 01:50:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="840653914"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="840653914"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmsmga002.fm.intel.com with ESMTP; 27 Jul 2023 01:50:37 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Jul 2023 10:43:35 +0200
Message-Id: <20230727084335.63856-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690447840; x=1721983840;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yi/fZbqc2aTipgo4D4/H6pWrGYqmIoIAdaNXEMhKqEE=;
 b=nLGv1Ni6z+6SeDrb33gFBNH+xxpPnMhMVEECtvj84stu3WDo7eg2R4CC
 SxGt8IYKZ1gsgb1Romy5JRs2mQjg28fEAgBETXuCh2BkCB0SoukvaPcse
 WE2B3KQMvJl8QJAygxeXLUiWE24BBnwNxNwuI8+jFSCwahLVEbx2Wqhey
 UoRUY7XzDvREp/Dj8P1TOoJjLvxqDMTGtrarEGsGhA/1hKwN3Omp9RgcC
 kPoXkDpbye8XxdL3bayupi0OdTli/Wu0xTJadZXBLCaE+E+MDOp68COwD
 icZ8yqg/2H/9mDXEXAyRc6RS+KHMQStSlQ1JXvcaZW+wvQ9RhSeZfzbuD
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nLGv1Ni6
Subject: [Intel-wired-lan] [PATCH iwl-next v2] i40e: Clear stats after
 deleting tc
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
Cc: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>

There was an issue with ethtool stats that
have not been cleared after tc had been deleted.
Stats printed by ethtool -S remained the same despite
qdick had been removed, what is an unexpected behavior.
Stats should be reseted once qdick is removed.

Fix this by resetting stats after deleting tc
by calling i40e_vsi_reset_stats() function after
distroying qdisc.

Steps to reproduce:

1) Add ingress rule
tc qdisc add dev <ethX> ingress

2) Create qdisc and filter
tc qdisc add dev <ethX> root mqprio num_tc 4 map 0 0 0 0 1 2 2 3 queues 2@0 2@2 1@4 1@5 hw 1 mode channel
tc filter add dev <ethX> protocol ip parent ffff: prio 3 flower dst_ip <ip> ip_proto tcp dst_port 8300 skip_sw hw_tc 2

3) Run iperf between client and SUT
iperf3 -s -p 8300
iperf3 -c <ip> -p 8300

4) Check the ethtool stats
ethtool -S <ethX> | grep packets | column

5) Delete filter and qdisc
tc filter del dev <ethX> parent ffff:
tc qdisc del dev <ethX> root

6) Check the ethtool stats and see that they didn't change
ethtool -S <ethX> | grep packets | column

Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
v2: Make the commit msg more detailed
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 29ad1797adce..e8e03ede1672 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -5885,6 +5885,11 @@ static int i40e_vsi_config_tc(struct i40e_vsi *vsi, u8 enabled_tc)
 
 	/* Update the netdev TC setup */
 	i40e_vsi_config_netdev_tc(vsi, enabled_tc);
+
+	/* After destroying qdisc reset all stats of the vsi */
+	if (!vsi->mqprio_qopt.qopt.hw)
+		i40e_vsi_reset_stats(vsi);
+
 out:
 	return ret;
 }
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
