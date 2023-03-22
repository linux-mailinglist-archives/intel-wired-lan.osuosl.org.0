Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E276C4F45
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Mar 2023 16:19:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F3605417E1;
	Wed, 22 Mar 2023 15:19:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F3605417E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679498360;
	bh=MKsMaXJTv48KnSg0OQDefXEO+JDXdGs3v87PXmMq1Ro=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TYxIs3zdE6FJUF+Gpj+oE3ZYZgOCJJ17zpfxMdZ117/3azGdeRSrSq7Mvf1FxtlLY
	 SITbMdUELTZMOraJLnzpbLFr442xGQbjgdX5qDfy8yMDH6qf5erAY+ZRbK63F8ctts
	 c47FaAmwD/pUNLCutw2s42vlTCXx5zV7IgVD58Za8yykINId6Rjf4GyHvrTUD0Oclv
	 iQ/8bpCG7pvBjRa0ua8lxVYUJ0J9wBaZqL4iHTpJkN0iE8k4ThHXNWppBerG3B3ZQP
	 hK1xqlfWNYZlilM9yr1A14dhj1V5ECpVAlwKVaSK+L6+DGDBzMwFcEW2VyXqneN5Uf
	 OTLrC7iarf85Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HhCzTCg1wcRs; Wed, 22 Mar 2023 15:19:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EDB7D417D2;
	Wed, 22 Mar 2023 15:19:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EDB7D417D2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D30691BF228
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 02:24:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AC519413A3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 02:24:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AC519413A3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TguwaJ9GkYBN for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Mar 2023 02:24:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E750240978
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E750240978
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 02:24:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="337835352"
X-IronPort-AV: E=Sophos;i="5.98,280,1673942400"; d="scan'208";a="337835352"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 19:24:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="681741664"
X-IronPort-AV: E=Sophos;i="5.98,280,1673942400"; d="scan'208";a="681741664"
Received: from dpdk-simei-icelake.sh.intel.com ([10.67.110.159])
 by orsmga002.jf.intel.com with ESMTP; 21 Mar 2023 19:24:42 -0700
From: Simei Su <simei.su@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 22 Mar 2023 10:24:15 +0800
Message-Id: <20230322022415.724689-1-simei.su@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230321065658.699675-1-simei.su@intel.com>
References: <20230321065658.699675-1-simei.su@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 22 Mar 2023 15:19:06 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679451885; x=1710987885;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7M4KbSqLjkqVZgzSR3pOc/SsfM0g08OtagaTxR1gLt8=;
 b=HpE7XBj+mkm/YTtlKdbpPFIdT/XHMM5p41scCfWyIDoTJOMc/9HHgnPO
 sphmJMv+dt3YB2RNBFypsz+JqPQUjVofaaiS2to8ox3MD8kk68gMyd2tc
 rByEcJngjTSnK7Ld1Jg7xRD8iWde4peAez5myL4mu2zd0w5UfjECJZInD
 monRqBHwJRlIAqN3kEl3w46SeiyEjnJnBQREwNUuIGg0RaTmyR/5ao5ez
 WVGGswPSdAvoeRN/KNhtBlv8bgZGwrN5wkfuj5ti1C7gP77u7vBuBdgvr
 u22Kh5WkkjZA4A7MzwJt5nXkq64LaD7QeYLERAr4YYB8Ei3LlI5h1BjbN
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HpE7XBj+
Subject: [Intel-wired-lan] [PATCH net,
 v2] ice: fix wrong fallback logic for FDIR
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
Cc: Simei Su <simei.su@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When adding a FDIR filter, if ice_vc_fdir_set_irq_ctx returns failure,
the inserted fdir entry will not be removed and if ice_vc_fdir_write_fltr
returns failure, the fdir context info for irq handler will not be cleared
which may lead to inconsistent or memory leak issue. This patch refines
failure cases to resolve this issue.

Fixes: 1f7ea1cd6a37 ("ice: Enable FDIR Configure for AVF")
Signed-off-by: Simei Su <simei.su@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
index 60c9da4aac1d..c03e4a7ae80b 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
@@ -1812,7 +1812,7 @@ int ice_vc_add_fdir_fltr(struct ice_vf *vf, u8 *msg)
 		v_ret = VIRTCHNL_STATUS_SUCCESS;
 		stat->status = VIRTCHNL_FDIR_FAILURE_RULE_NORESOURCE;
 		dev_dbg(dev, "VF %d: set FDIR context failed\n", vf->vf_id);
-		goto err_free_conf;
+		goto err_rem_entry;
 	}
 
 	ret = ice_vc_fdir_write_fltr(vf, conf, true, is_tun);
@@ -1821,15 +1821,16 @@ int ice_vc_add_fdir_fltr(struct ice_vf *vf, u8 *msg)
 		stat->status = VIRTCHNL_FDIR_FAILURE_RULE_NORESOURCE;
 		dev_err(dev, "VF %d: writing FDIR rule failed, ret:%d\n",
 			vf->vf_id, ret);
-		goto err_rem_entry;
+		goto err_clr_irq;
 	}
 
 exit:
 	kfree(stat);
 	return ret;
 
-err_rem_entry:
+err_clr_irq:
 	ice_vc_fdir_clear_irq_ctx(vf);
+err_rem_entry:
 	ice_vc_fdir_remove_entry(vf, conf, conf->flow_id);
 err_free_conf:
 	devm_kfree(dev, conf);
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
