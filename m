Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YGj3EqDVvGkk3gIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 06:05:36 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E66B52D5E06
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 06:05:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 90E4541C5B;
	Fri, 20 Mar 2026 05:05:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tM6owPI-Ye7m; Fri, 20 Mar 2026 05:05:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F27EB41C5F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773983134;
	bh=dLkxn9fk3Y9l2n9qYw56GlJLracpssxlBgxOWg8EV54=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=U0bTQuNzQ7+wlJVyAQhPE/CeCOE2co4q/Y7NMfO9iCXLs2ltZrid+/lwRwqSgbgcq
	 cHtkuoXYaS+GtbZ8/FnW7oSGniX8PBlr9Cg1sctPX6vBikvz0JRRIQC47GGgu2RUVI
	 gRfNtUjb1o1ivJrsAiedn97sw05JBqg6BPOBvboNbpp6jaAt/Y7QRL9IRXO17AOl7h
	 EM7Shc5uCzPxESVaXxU75MYAvIdDsmMlYI1RLbklu6HNrxxbdf/QqtJ1hXprYMa5Fy
	 jkz4AjSL1HYOaLCex6ZkkdmPPnxeJiWvQgQYRsiL2UJ4TApwAeLjiK0o8w8c1QGjYs
	 pNRdd+2/TmKpw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id F27EB41C5F;
	Fri, 20 Mar 2026 05:05:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C53331B6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 05:05:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B699D41398
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 05:05:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JXCh34giObEz for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Mar 2026 05:05:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B51E540176
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B51E540176
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B51E540176
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 05:05:31 +0000 (UTC)
X-CSE-ConnectionGUID: MKs0alepTk2P+8G8LQ5unw==
X-CSE-MsgGUID: dH5whT9fSVenteuW6jvvxA==
X-IronPort-AV: E=McAfee;i="6800,10657,11734"; a="100522700"
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="100522700"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 22:05:31 -0700
X-CSE-ConnectionGUID: VL+GCF4LTYi9OMCLWTHqhA==
X-CSE-MsgGUID: l8roNfj2T+WGvLsYnceymQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="227307273"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa003.jf.intel.com with ESMTP; 19 Mar 2026 22:05:30 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Marcin Szycik <marcin.szycik@intel.com>
Date: Fri, 20 Mar 2026 06:05:29 +0100
Message-ID: <20260320050529.422444-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773983132; x=1805519132;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vZiBu4ec5AGCXwkaEd7J0BaSO9yTENngMpzIttwN8Vs=;
 b=WykrsTTYD2ekdX+mBH1Jxp3E/51zd/zY8pstzl8+cuUIAbGsNhJJ+NSS
 d/+FrdqMq5sYdAZlGTkwcAD+x5lNV/9xL5+mdlnN4fTKCY8R/6nfznfPg
 6qyE0NxXKqTS3mPTxkmXHRERxAUo7ACxIoROYiZNWumy+i9NFR4b+0ziv
 86nySo8sbe9oRdAFs59LAQK2UoiNIT+ZNegInVP/2xDuNq+8UDC+MTGEN
 A8KV2M1qpXd0Zy8GwiEXmbmKaCA6AKzkiyINaNxGucrS3tPrsSDi2oDt2
 e9qLnQSGD+NMeKgTeb3LEFttZoHQB1ib3KymUCyI+ANvOo2f8smFqnman
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WykrsTTY
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: fix allocating excessive
 memory in ice_create_lag_recipe()
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,intel.com:email,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E66B52D5E06
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Marcin Szycik <marcin.szycik@intel.com>

For some reason ice_create_lag_recipe() allocates an array of 64
struct ice_aqc_recipe_data_elem elements, while it only needs one (1).
Fix it, while also using kzalloc_obj().

Fixes: 1e0f9881ef79 ("ice: Flesh out implementation of support for SRIOV on bonded interface")
Signed-off-by: Marcin Szycik <marcin.szycik@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lag.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index 310e8fe..70357dc 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -2418,8 +2418,8 @@ static int ice_create_lag_recipe(struct ice_hw *hw, u16 *rid,
 	if (err)
 		return err;
 
-	new_rcp = kzalloc(ICE_RECIPE_LEN * ICE_MAX_NUM_RECIPES, GFP_KERNEL);
+	new_rcp = kzalloc_obj(*new_rcp, GFP_KERNEL);
 	if (!new_rcp)
 		return -ENOMEM;

 	memcpy(new_rcp, base_recipe, ICE_RECIPE_LEN);
 
