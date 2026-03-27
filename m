Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GAoIIWUoxmnQGwUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 07:49:09 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DA42340038
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 07:49:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 11C2161263;
	Fri, 27 Mar 2026 06:49:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0B0Ud7jS8S5J; Fri, 27 Mar 2026 06:49:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 920B56126D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774594141;
	bh=KutMKj0u5QNvxbRwRBDH0G2SsR4U5ZLrtMYIOGeXAhg=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=mvCkrOTlhpJS3KBQb77Je0/2+ddTYN7FxedYyDpmQkvE66HCLdVU9Rd09ikds0bUh
	 yhho+v2jkmuBVrnMoY+ncanD5K8Ry6wDb93chl9jY3D43w2YCQo2uI+DPQHP0aB4E2
	 NnZidi2h+Zg/lHrAtN7elULeJH3fexzRWWADmbvERHE3IUyAqDE0JPdmPZ96r2t24+
	 Pb5P030IS46YQsssshm3vFCes5i/jx1L3voXXzhw57BzIoq7L673gvNlrkik88zLLq
	 GhgsNCpNfI0WyYLbbVdGcZj2RKt7jd1VylIBPIB51fS+NkXQ09mJHAnyhYmhHRw/bq
	 PCScgEY03zP6g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 920B56126D;
	Fri, 27 Mar 2026 06:49:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1AFE6249
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 06:49:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 00F3583BED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 06:49:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JulzJKE__TUq for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Mar 2026 06:48:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5824283BE6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5824283BE6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5824283BE6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 06:48:58 +0000 (UTC)
X-CSE-ConnectionGUID: UZZUrtT2Ttaz+IeUepYdCA==
X-CSE-MsgGUID: B6XigS3bSJe+4vP5IvO9dg==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="93245251"
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="93245251"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 23:48:58 -0700
X-CSE-ConnectionGUID: Srtd+vGeS4a5cBtq8yPYDA==
X-CSE-MsgGUID: PwVm5LFURgmmlMPpmEwwVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="229699860"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa004.jf.intel.com with ESMTP; 26 Mar 2026 23:48:56 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org, Marcin Szycik <marcin.szycik@intel.com>,
 Joe Damato <joe@dama.to>
Date: Fri, 27 Mar 2026 07:48:55 +0100
Message-ID: <20260327064855.112786-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774594139; x=1806130139;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pcDAlfcW3JXhOWCYWTqgaH2kuIhBNKZX7wqVsnTEG+Y=;
 b=gArWcedInUJqZ7pTp9w0cpUYL2YqymYUsh6Gc1Naq0mxAJ6ufnQYGYIS
 acDdFDMKu45mcKWK9PKJ9O6jGy+GQwcr3jLJ+G3sAn8rgveBSbgtc6v4J
 VOLTfuKzR4iTYJFP7CRyEvJQfS229oP0wXlwXq3V+VcXsll+kHZhjje6n
 EMYLxz7FbIzpE3/MRROUe+VvUQ1Zo/21TcHAT/A805iyVVGq4mqTDKINX
 IiiWkEnz6HICilcAcw/gIL7C/CVbq9L8r/BmYnvPLwO7bctVmMFtSxoKA
 sWb/kRldzHhKEw+IADicHRbDufAIhnRpYSarx9I+d4YX06BhcS6JuGIyp
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gArWcedI
Subject: [Intel-wired-lan] [PATCH iwl-next v4] ice: remove excessive memory
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,intel.com:email,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2DA42340038
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Marcin Szycik <marcin.szycik@intel.com>

For some reason ice_create_lag_recipe() allocates an array of 64
struct ice_aqc_recipe_data_elem elements, while it only needs one (1).
Fix it, while also using kzalloc_obj().

Signed-off-by: Marcin Szycik <marcin.szycik@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Joe Damato <joe@dama.to>
---
v3 -> v4 corrected misspeled RB from Joe
v2 -> v3 use sizeof(*new_rcp) in memcpy() to match the allocation (Joe)
v1 -> v2 remove 'Fixes' from commit message because it's not a critical bug
---
 drivers/net/ethernet/intel/ice/ice_lag.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index 310e8fe..9ad19c3 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -2418,11 +2418,11 @@ static int ice_create_lag_recipe(struct ice_hw *hw, u16 *rid,
 	if (err)
 		return err;
 
-	new_rcp = kzalloc(ICE_RECIPE_LEN * ICE_MAX_NUM_RECIPES, GFP_KERNEL);
+	new_rcp = kzalloc_obj(*new_rcp, GFP_KERNEL);
 	if (!new_rcp)
 		return -ENOMEM;
 
-	memcpy(new_rcp, base_recipe, ICE_RECIPE_LEN);
+	memcpy(new_rcp, base_recipe, sizeof(*new_rcp));
 	new_rcp->content.act_ctrl_fwd_priority = prio;
 	new_rcp->content.rid = *rid | ICE_AQ_RECIPE_ID_IS_ROOT;
 	new_rcp->recipe_indx = *rid;
