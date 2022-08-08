Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC3858C615
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Aug 2022 12:09:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF8F381D7C;
	Mon,  8 Aug 2022 10:09:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF8F381D7C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659953374;
	bh=DO/MVN5q9pKPTymbKKyF44EQbjDYT8osG4kY3bFREzc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=1UnoaAw8BKjQa33anMLLm4YYkhWuqc7oCwJwoGVZyzgcHzXTjTYYCnewBs1c4Lk5T
	 FyY9zMUGtaG9ancQEsYkiVFyUfHFTosMVeVu+P15iCfOZ+4RSI3jeDJeIdPi6QZo/d
	 pZLI4dvar2mf5CEf3NhMZxJ9zgOM5ojB1HVwehlq8hnpRBVrYZ329b3G5fcBgjeuBQ
	 BqYBxvxOsTIKhhCkI0kXfY8nKVF+dh37r7mVAYVBAPQpPiBY31CFBYjhUNhuYRuD5Z
	 txgMRr5rttUYm06y6zUlByf4XxzmHb9sr2xYk0yFGj7Yx7xtMRaigKri2d7dctXBeK
	 sLjPCB2bHydoQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bQF-rIgKKJUd; Mon,  8 Aug 2022 10:09:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C8AC981D70;
	Mon,  8 Aug 2022 10:09:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C8AC981D70
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 821411BF36D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Aug 2022 10:09:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6251C81A2B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Aug 2022 10:09:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6251C81A2B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D73x4k8DhT1V for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Aug 2022 10:09:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2032F819E6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2032F819E6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Aug 2022 10:09:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10432"; a="316463222"
X-IronPort-AV: E=Sophos;i="5.93,222,1654585200"; d="scan'208";a="316463222"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2022 03:09:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,222,1654585200"; d="scan'208";a="672424129"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by fmsmga004.fm.intel.com with ESMTP; 08 Aug 2022 03:09:18 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  8 Aug 2022 11:58:54 +0200
Message-Id: <20220808095854.5513-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659953365; x=1691489365;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=R8QN8eZXO+eSXXKt26x7kk2JDXGAuyJ60tWQQazIMgY=;
 b=PPdLeil2FepPxzAxnqPq3oxfLml8tqIw/sji1BnwCkNmyhNeKWf7PQ+H
 gkSUPqdhin36VomNWh1jZBPrQk65G+A+aJ+fA90k2/DjTVGJqNqeGmyIg
 64PfA1VdLSkHDQ5pWj/2ML+pX8G1BSyRS03To+KhnIFt+VGQyp53s8JAy
 MORXS690lBU88/rc55YNmrYbnHA9fksGHsaWGtXAKCBRURBWft958HfNy
 PGbKpXnU7d7Z2AM/XUml+NoFFDg67bzHmAdo3UldYcf8Rm0TB1KwTWnh5
 2fX2H6La9bcHezmxLJ3Rw2Uub9fQv60PkZ1JWw/yOpas0UWa5s7IFBLd/
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PPdLeil2
Subject: [Intel-wired-lan] [PATCH net v2] ice: config netdev tc before
 setting queues number
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

After lowering number of tx queues the warning appears:
"Number of in use tx queues changed invalidating tc mappings. Priority
traffic classification disabled!"
Example command to reproduce:
ethtool -L enp24s0f0 tx 36 rx 36

Fix this by setting correct tc mapping before setting real number of
queues on netdev.

Fixes: 0754d65bd4be5 ("ice: Add infrastructure for mqprio support via ndo_setup_tc")
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index d992321e74ba..bb17bcfd2529 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6918,6 +6918,8 @@ int ice_vsi_open(struct ice_vsi *vsi)
 	if (err)
 		goto err_setup_rx;
 
+	ice_vsi_cfg_netdev_tc(vsi, vsi->tc_cfg.ena_tc);
+
 	if (vsi->type == ICE_VSI_PF) {
 		/* Notify the stack of the actual queue counts. */
 		err = netif_set_real_num_tx_queues(vsi->netdev, vsi->num_txq);
-- 
2.36.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
