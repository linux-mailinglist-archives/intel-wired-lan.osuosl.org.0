Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cMNqLwoNwWngQAQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2026 10:51:06 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0130B2EF5D7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2026 10:51:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 31CCF6076C;
	Mon, 23 Mar 2026 09:51:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WV1dAXfYkg1z; Mon, 23 Mar 2026 09:51:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4405D6076F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774259462;
	bh=g/5dPMhGk2cuDeLTEgWsH+QIuj/Mt3+dFyP2nzc8lP0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=6Qcr9hROU9e9iB7ULhe45T3OWnALbaa+fZvZ7uQFycisq7ScDwlDfM201gMBLvoPm
	 lYniRe2jARVgf/+buKmGQMH777QNlJVJ43EwprDeVBGdm7zlAKZ6GqnQzT/bRU7kSc
	 AGO+hbmXGW32m7eOo7MIlF/k3szkMCORIjgEm/iu5Fo53rNnK4YFDjnFha0nFlZB4D
	 ncYHtYsDTOgY1nCoA9b+cJCih8sRvLaUAtNFn7uyz7nE/p2/DCXPNFWomfZVfyJGpQ
	 m4AhsmimF8DOqQvRDvULAp6ymMtJzAbm2s75Kv5G5ZrcrYUKtv8hfSEZwXte0gwnWu
	 yLu6BlXKUU1WQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4405D6076F;
	Mon, 23 Mar 2026 09:51:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1676CF4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 09:51:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F03F6824DD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 09:51:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NXH5Fn3Lybss for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Mar 2026 09:51:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6353C824DC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6353C824DC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6353C824DC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 09:50:59 +0000 (UTC)
X-CSE-ConnectionGUID: MGOwHmMWRciLR8CPyIhhmg==
X-CSE-MsgGUID: P8XFPe7gQoi6QJpPM3OHBw==
X-IronPort-AV: E=McAfee;i="6800,10657,11737"; a="85877237"
X-IronPort-AV: E=Sophos;i="6.23,137,1770624000"; d="scan'208";a="85877237"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 02:50:59 -0700
X-CSE-ConnectionGUID: yS+VzuQ0S+2nClNtt4BOpA==
X-CSE-MsgGUID: R3MnNwgTSyaAZrbRq4Yyqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,137,1770624000"; d="scan'208";a="219169351"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmviesa006.fm.intel.com with ESMTP; 23 Mar 2026 02:50:57 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Marcin Szycik <marcin.szycik@intel.com>
Date: Mon, 23 Mar 2026 10:50:56 +0100
Message-ID: <20260323095056.3298435-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774259461; x=1805795461;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1AR2k69NDkzn7nG9lUAhkfsYmzx35qOQXPP7hwieuac=;
 b=G8sSQYkLkdbPjufhmVBzfXKXt+AEV3E3rlFgrclbXQ7DVTEI70AE8yRY
 hjzMAS+YPyjp6pGv0kOpyoDSVGfIAF9IykkxhqsgN3NS3KMnc7STTSUgK
 Q6yj1xnQ2PbMhDalVRBuwPGZLJaIsxyvKoetazEGQvmzLt6fVg4uk1+64
 8ri0J5dDU44jM0z+OLzAyZTJubjlIekt7VM0JJfWzLnKMdXcfp1kB8mez
 y/cZAYtFDZRYGdc6LMNMYtFpfA+VSn7/11J/PM+peomCKl/UtEtIWNKoO
 yZGvxvrM2mgxPRqxR+q+/Jizk5c8KpTElXTCBTfcnqcF/jl0CD/M5V/PH
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=G8sSQYkL
Subject: [Intel-wired-lan] [PATCH iwl-next v2] ice: remove excessive memory
 allocation in ice_create_lag_recipe()
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
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 0130B2EF5D7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Marcin Szycik <marcin.szycik@intel.com>

For some reason ice_create_lag_recipe() allocates an array of 64
struct ice_aqc_recipe_data_elem elements, while it only needs one (1).
Fix it, while also using kzalloc_obj().

Signed-off-by: Marcin Szycik <marcin.szycik@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v1 -> v2 remove 'Fixes' from commit message because it's not a critical bug
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
 
