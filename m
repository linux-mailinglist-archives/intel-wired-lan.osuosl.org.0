Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E838775EAC
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Aug 2023 14:17:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A069341489;
	Wed,  9 Aug 2023 12:17:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A069341489
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691583432;
	bh=ByjVcFBIa7T8NUGi7yXlHt3kOgKeGjQZLbE+9WmNXoA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=t9Z7IqT9NA8q6hkph3cqj8F3sZJ0gS+TtQRfVLburPhtgddHCZKJ99pKO2pRI1GDm
	 PRBUWO5d8z4mUpI1M++ImpEXXs85FuUo6xO5wS4OBUW+jR7rS4DNIXwTgyzjAwjBxB
	 sOyNwzR2w54SMIiOg17p6vx1bgE1VLhnn9gEJCY8tcaPL3sGiyuNZjfVP4/Hd/G3P0
	 3PM2paThvOxPQdqn62LmYq5MVjzz6bk1cAN71wsMh5aCaMO/IMEOUXD2sZ4dcgdbIN
	 XPY7H2zZS04JxCRkke6yWGmchx/4HCgdgCGAVrhYxPZT8+vPpGqudhETgAWuQC01wR
	 kN9fW2No2fejA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C3lIBsYKuRrp; Wed,  9 Aug 2023 12:17:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7132440BF7;
	Wed,  9 Aug 2023 12:17:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7132440BF7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ED56F1BF316
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 12:17:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C536F41489
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 12:17:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C536F41489
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 30SF3qZB6hCY for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Aug 2023 12:17:06 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 01D73405CA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 12:17:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 01D73405CA
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="370008615"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="370008615"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2023 05:17:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="875226044"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmsmga001.fm.intel.com with ESMTP; 09 Aug 2023 05:17:07 -0700
From: Andrii Staikov <andrii.staikov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  9 Aug 2023 14:17:01 +0200
Message-Id: <20230809121701.1109782-1-andrii.staikov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691583426; x=1723119426;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UOgWiNsWY7VToNpWjxq1dPEcRpPz2gnEx7tpAwOh9rI=;
 b=ny6XSgjFD+NkeyEJmAoyCss8Ey8VqTO5NV3dFKsI0EGeI/GOZbjtA07Y
 hVUhXMbNvlnHRioOwUkWvyzxMtN138+84pGcqqzvW+Hj78GlycV0vRYTq
 hBVoqoxxDXOYqQCuSQJxAO6necpWijYxXSDaGLDJvSIXGOzDku1e8U82i
 q9KV9ZMw4smvKPk/RSRzE9Y0Q/L8TGtccVraKXSd/HzehVFx8IwX8trsz
 kTgVy+oAm5cA4cDfprTH5UbzYo2AVPxII/qs+PkOSTEw1rdYKslYVuDIm
 zTekauk8D287N/oNMKIW6uZgFFvU7NnPiaGdiYR/ObVWTo4jBlXvTdiyo
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ny6XSgjF
Subject: [Intel-wired-lan] [PATCH iwl-net v2] i40e: fix potential NULL
 pointer dereferencing of pf->vf i40e_sync_vsi_filters()
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Andrii Staikov <andrii.staikov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add  check for pf->vf not being NULL before dereferencing
pf->vf[vsi->vf_id] in updating VSI filter sync.
Add a similar check before dereferencing !pf->vf[vsi->vf_id].trusted
in the condition for clearing promis mode bit.

Fixes: c87c938f62d8 ("i40e: Add VF VLAN pruning")
Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v1 -> v2: Changed title and commit message.
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 29ad1797adce..a86bfa3bba74 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -2609,7 +2609,7 @@ int i40e_sync_vsi_filters(struct i40e_vsi *vsi)
 			retval = i40e_correct_mac_vlan_filters
 				(vsi, &tmp_add_list, &tmp_del_list,
 				 vlan_filters);
-		else
+		else if (pf->vf)
 			retval = i40e_correct_vf_mac_vlan_filters
 				(vsi, &tmp_add_list, &tmp_del_list,
 				 vlan_filters, pf->vf[vsi->vf_id].trusted);
@@ -2782,7 +2782,8 @@ int i40e_sync_vsi_filters(struct i40e_vsi *vsi)
 	}
 
 	/* if the VF is not trusted do not do promisc */
-	if ((vsi->type == I40E_VSI_SRIOV) && !pf->vf[vsi->vf_id].trusted) {
+	if (vsi->type == I40E_VSI_SRIOV && pf->vf &&
+	    !pf->vf[vsi->vf_id].trusted) {
 		clear_bit(__I40E_VSI_OVERFLOW_PROMISC, vsi->state);
 		goto out;
 	}
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
