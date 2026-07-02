Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id uO41JOlLRmolOAsAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 13:30:49 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 451C66F6BB8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 13:30:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=qXZJs1Ka;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E29D460F91;
	Thu,  2 Jul 2026 11:30:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kyag-KBdHwqC; Thu,  2 Jul 2026 11:30:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1926A60E96
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782991847;
	bh=vszzk+JYcIZyde0zEVupD3t/Z8c4vchoXI3LacfBpEs=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qXZJs1KamJPEJtma3LP+bRP/4jIKRFxbWTalLutgVjl7YJTKOPPWkjQJmb7qUKFW+
	 Qf+RcDThEbbSw9w9x1uDr3hI9dtpJTy8OZlf9JfvbeMcaIWdhGqBr7inlgo1GYyOo4
	 FK98xK2ktlbRkEsA5EUGMpuu//7q6CsLPQZCyUaq5BPgKNDVQEXVKnxTGzhuRQ7RRK
	 MC6xinIAPXHIePzjFBnQPW9RTYus2n44YJh24wgCloUs/eYrHwR8RmgLKTAPatBasf
	 zEhtCXmlJjLaCv/BzXjXGXdi1rtkLY2yKjYBBOJV2UyQ1g2mx8UQxhtZZDKtNZqDyq
	 IEadiZxnnTw8A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1926A60E96;
	Thu,  2 Jul 2026 11:30:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id C513C127
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 11:30:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C29D982349
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 11:30:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pI-x-ABc2Tu8 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jul 2026 11:30:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2E27682376
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E27682376
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2E27682376
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 11:30:43 +0000 (UTC)
X-CSE-ConnectionGUID: Cw42xpWjT/irrmDRL+wJTw==
X-CSE-MsgGUID: 9N/aHWvlSGWa3lH5zNFLDA==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="83611743"
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="83611743"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 04:30:43 -0700
X-CSE-ConnectionGUID: 8sN9oUMARiG6xsPnu+kRQA==
X-CSE-MsgGUID: SdYo9MTtQFaD2e6wXAVo7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="251788416"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa010.jf.intel.com with ESMTP; 02 Jul 2026 04:30:42 -0700
Received: from gond.igk.intel.com (gond.igk.intel.com [10.123.220.52])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 0C1FB28760;
 Thu,  2 Jul 2026 12:30:39 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, sandeep.penigalapati@intel.com, ananth.s@intel.com,
 alexander.duyck@gmail.com, anthony.l.nguyen@intel.com,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Thu,  2 Jul 2026 12:30:01 +0200
Message-ID: <20260702103007.97020-8-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260702103007.97020-1-marcin.szycik@linux.intel.com>
References: <20260702103007.97020-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782991843; x=1814527843;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ndGchCS5JVPbUpmlXAIE5uIQE/y0C+G6UWSGJInGOfg=;
 b=DA5cy57VjNkQLItgrzLU1buLm78Qh4X8dXfZgVTr5F0WWcaJBQKkCOb0
 gNVDYnDWlHB1ViTHmQBM+BA/7vqd02S94yW2H//BC/XEySC2j4DOWqio5
 HCpEiTh8ykGga99bfCi3k0evCA0wpbcqxBVlQ4uGEYxho4ERlVhPlMxjj
 /eF4hWR2XmeCb32qMcHPiBUeOK6iiCD3lW3mxJAQuGxx3AmlkNUD1cB+o
 OhEdjpuRR9gNIIlVOfGo+R9UeFHIAhOa9Je5kUUK586MZwRZKiAlvC8gx
 TujNs4JQUNIIy6ucclIvQwICvifYO6PT66YTPWJq0Jxaaxtggtqnm1lQS
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DA5cy57V
Subject: [Intel-wired-lan] [PATCH iwl-next v5 07/12] ice: use plain
 alloc/dealloc for ice_ntuple_fltr
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,gmail.com,linux.intel.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[marcin.szycik@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 451C66F6BB8

Change struct ice_ntuple_fltr allocation from devm_ to plain alloc,
since its lifetime is not tied to the device. All such objects are being
removed on device remove via ice_deinit_features() -> ice_deinit_fdir()
-> ice_vsi_manage_fdir() -> ice_fdir_del_all_fltrs()

Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v2:
* Add this patch
---
 drivers/net/ethernet/intel/ice/ice_ethtool_ntuple.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_ntuple.c b/drivers/net/ethernet/intel/ice/ice_ethtool_ntuple.c
index 87457e739e2a..242be0a297db 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool_ntuple.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool_ntuple.c
@@ -1781,7 +1781,7 @@ void ice_fdir_del_all_fltrs(struct ice_vsi *vsi)
 		ice_fdir_write_all_fltr(pf, f_rule, false);
 		ice_ntuple_update_cntrs(hw, f_rule, false);
 		list_del(&f_rule->fltr_node);
-		devm_kfree(ice_pf_to_dev(pf), f_rule);
+		kfree(f_rule);
 	}
 }
 
@@ -1882,7 +1882,7 @@ ice_ntuple_update_list_entry(struct ice_pf *pf, struct ice_ntuple_fltr *input,
 			 */
 			ice_fdir_do_rem_flow(pf, old_fltr->flow_type);
 		list_del(&old_fltr->fltr_node);
-		devm_kfree(ice_hw_to_dev(hw), old_fltr);
+		kfree(old_fltr);
 	}
 	if (!input)
 		return err;
@@ -2234,7 +2234,7 @@ int ice_add_ntuple_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd)
 		return -ENOSPC;
 	}
 
-	input = devm_kzalloc(dev, sizeof(*input), GFP_KERNEL);
+	input = kzalloc_obj(*input);
 	if (!input)
 		return -ENOMEM;
 
@@ -2278,7 +2278,7 @@ int ice_add_ntuple_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd)
 	mutex_unlock(&hw->fdir_fltr_lock);
 free_input:
 	if (ret)
-		devm_kfree(dev, input);
+		kfree(input);
 
 	return ret;
 }
-- 
2.49.0

