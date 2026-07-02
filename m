Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9fLnJuZLRmogOAsAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 13:30:46 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 864556F6BA1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 13:30:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=A7Nxbjyt;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 121CF60D8E;
	Thu,  2 Jul 2026 11:30:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L9APbt9fRN8D; Thu,  2 Jul 2026 11:30:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 82740608E8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782991843;
	bh=PaFW3/JXTx5WQuKEaYyX2wMwf4R5MbLPH34WkfRQlBA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=A7NxbjytmroPdOfZnY02EZUiRiQE3SjXUGoJEAA5j1U4dU1hiZCWyei0YZOe4PZF4
	 2LVnFXO7wTeOlxhbxbpN++dv8ONsg/U32Ys7P4slfywd5u4UmLYkROAdtCuol2eCZ/
	 0KeuEoAq/yOYCm9Ym7e/KfkZn9vwJgmqOVlbDu5jFrg4LCY10Rsa+9XLZQZMYAsFV+
	 /f863bJ087/IdfULNMwJmPFB+/ApjaDqIcbrPnEx4JwllqGd8dtDs389zE/Ga5F8u2
	 c/OGqMkJ90T2OWGBRBPUxi+/SoavZS/HnAZthxy/YRKkWY2SQQfB+Mj/5biC9CJqmU
	 zPsS14MF+9wOg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 82740608E8;
	Thu,  2 Jul 2026 11:30:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 07AB9CC4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 11:30:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ED64982376
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 11:30:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FHeO_o-NILYP for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jul 2026 11:30:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1B3FF82419
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B3FF82419
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1B3FF82419
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 11:30:39 +0000 (UTC)
X-CSE-ConnectionGUID: 7gMG2SQuQMilUucLcpIbNQ==
X-CSE-MsgGUID: 8CVvmO33TA+ggwhwPLs9zQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="83611723"
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="83611723"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 04:30:39 -0700
X-CSE-ConnectionGUID: ji7S5MnsSda9kduKqicZ3A==
X-CSE-MsgGUID: Nus3vS8bSd2gWKLu29u7CQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="251788388"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa010.jf.intel.com with ESMTP; 02 Jul 2026 04:30:37 -0700
Received: from gond.igk.intel.com (gond.igk.intel.com [10.123.220.52])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 037A728762;
 Thu,  2 Jul 2026 12:30:35 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, sandeep.penigalapati@intel.com, ananth.s@intel.com,
 alexander.duyck@gmail.com, anthony.l.nguyen@intel.com,
 Marcin Szycik <marcin.szycik@linux.intel.com>
Date: Thu,  2 Jul 2026 12:29:56 +0200
Message-ID: <20260702103007.97020-3-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260702103007.97020-1-marcin.szycik@linux.intel.com>
References: <20260702103007.97020-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782991840; x=1814527840;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NBmRd/mym/nbRKZy4VssKZzM7IgLf4LNcTOCiKMN710=;
 b=Sl1uDa0Hyoi3TP0muj2ASC6UNNjBBd5ut++ZrxypdQwvWJiq0wlDAB36
 Mu2iylJ/SH6bZYVy40Wy/9u0lziUi58iFQg7Zbxb7e7RVzwxkAYBh0tuL
 1vMndfBiqNPjsXQqd8o/xR6VbIGEHF23gKYRVwBcggP0utToF0eVs+pgh
 1whPr+ZsMK8ZWMLiUqtVWOKVclnKMzrtVQIv00wmoOQ8FWreGu3dMQnh9
 KIdArOwgeAyT9x68Z9bl3FN952jNCSiYHQv5kgT8pfjfJuJ+9X7qyxgau
 4r0hsKDIQj+dfsG+WCUWR7f11RCFSzH8i+19Gg/QAOqelukSF8OMFVyVh
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Sl1uDa0H
Subject: [Intel-wired-lan] [PATCH iwl-next v5 02/12] ice: remove unused
 ICE_FD_FLUSH_REQ from PF state
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
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
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
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 864556F6BA1

It's hard to tell what this flag was intended to represent. The commit
adding it only added a check that was always false, because the flag is
never set. There is no relevant comment and commit message doesn't
mention it. Therefore, it looks like it has always been unused. Remove
it.

Fixes: cac2a27cd9ab ("ice: Support IPv4 Flow Director filters")
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
v5:
* Add this patch
---
 drivers/net/ethernet/intel/ice/ice.h                | 1 -
 drivers/net/ethernet/intel/ice/ice_ethtool_ntuple.c | 3 ---
 2 files changed, 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 738bd9d0c2c6..72941e3736d0 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -303,7 +303,6 @@ enum ice_pf_state {
 	ICE_CFG_BUSY,
 	ICE_SERVICE_SCHED,
 	ICE_SERVICE_DIS,
-	ICE_FD_FLUSH_REQ,
 	ICE_OICR_INTR_DIS,		/* Global OICR interrupt disabled */
 	ICE_MDD_VF_PRINT_PENDING,	/* set when MDD event handle */
 	ICE_VF_RESETS_DISABLED,	/* disable resets during ice_remove */
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_ntuple.c b/drivers/net/ethernet/intel/ice/ice_ethtool_ntuple.c
index cc60b2c36518..ad519a8513db 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool_ntuple.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool_ntuple.c
@@ -1768,9 +1768,6 @@ int ice_del_ntuple_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd)
 		return -EBUSY;
 	}
 
-	if (test_bit(ICE_FD_FLUSH_REQ, pf->state))
-		return -EBUSY;
-
 	mutex_lock(&hw->fdir_fltr_lock);
 	val = ice_ntuple_update_list_entry(pf, NULL, fsp->location);
 	mutex_unlock(&hw->fdir_fltr_lock);
-- 
2.49.0

