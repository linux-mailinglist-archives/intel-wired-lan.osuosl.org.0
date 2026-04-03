Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CLQAINxSz2kCvQYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 07:40:44 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B5F3391205
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 07:40:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6C36340EBD;
	Fri,  3 Apr 2026 05:40:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5_g85KKyySek; Fri,  3 Apr 2026 05:40:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2C41940E84
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775194837;
	bh=npPSbMQTCkcp97FGA0r+KQLsidDaBONjog1NqR0SkWk=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wOIixsKcLbQzif2jUoQw4bdbRUnDj3UHU4RT0AWJRHlMrH1TttwCcWl1zpO4VVDIN
	 aec9nW1knzYaW9V66/H7nRYH+Sd536FRdtsCFX8EObkYq2cP2YHoGvIzM5S9d9zvpC
	 h3w4HbZ2UZUDnYY8cMdmzU5D+AJRM5tKEcx9VPIUZqv15SFSg1DNaNwxiWhKO0SFNE
	 eHp0vbLDi/GXLKSg8/wwSmiz3Hq2McGfrzRXJ2T6vUZ796cvhJvXnTOt5R5o0Lp605
	 k9Q4usFonKNkeE8v6ecdO6oQJBWL3IMqOwO+3rHAafK7DpYFMKBqK4H12WdAFF9vbx
	 zjGmTH8g7K3IQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2C41940E84;
	Fri,  3 Apr 2026 05:40:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id BFE8D2CC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 05:40:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A5F134008E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 05:40:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qLNW4bFNi5ju for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Apr 2026 05:40:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B0CB040071
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B0CB040071
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B0CB040071
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 05:40:34 +0000 (UTC)
X-CSE-ConnectionGUID: YBK9uirhSkSvlxmzqY/jIw==
X-CSE-MsgGUID: vTAJp0RFSsyS+xN7DlFFPQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11747"; a="75981740"
X-IronPort-AV: E=Sophos;i="6.23,157,1770624000"; d="scan'208";a="75981740"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 22:40:34 -0700
X-CSE-ConnectionGUID: dJvPbdxvRq6eXaDMyo6WoQ==
X-CSE-MsgGUID: W/ZDutBATP2QJMcCCfXdug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,157,1770624000"; d="scan'208";a="223904917"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmviesa007.fm.intel.com with ESMTP; 02 Apr 2026 22:40:33 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Dave Ertman <david.m.ertman@intel.com>
Date: Fri,  3 Apr 2026 07:40:20 +0200
Message-ID: <20260403054029.3789616-3-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260403054029.3789616-1-aleksandr.loktionov@intel.com>
References: <20260403054029.3789616-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775194835; x=1806730835;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4SetMd8mZKvQCSRcPieNR/Q4dweJ+wEjZtdoJ2n6YU4=;
 b=n22A4tTAgqKVzAGMKF4oMoyIznUdvfIY0grrhBaR+zqucrfNtu5YzZNy
 glgUTCQLt4THJXYljb/JZdt7f6UMvYrsc2dy47hkN9Q6LuwqlR2h4ocBF
 dK4USWVYUrq91kr/AdhUa5DKdzhzD+cMK3dEQYeNVszThBIB4CG1/hajx
 zktwqvijR7tFYAY+a5tG7keK/GPOqp9krGuX6U4OWfWPl5BNfBLsMLwCE
 jtP19AY+4qRM6EihvDyphimomE7mf8824VZGPVDuYFwwHprLnXDP4cll1
 Zn3uaFpT3zuoVhqqRhXuCeDfs13WL9adpIhNf2OmAxycZ7sB+zhjB13/Z
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=n22A4tTA
Subject: [Intel-wired-lan] [PATCH iwl-net 2/10] ice: update FW on all DCB
 changes
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email,intel.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 4B5F3391205
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Dave Ertman <david.m.ertman@intel.com>

Currently, in SW DCB mode, if a new DCB configuration comes in that
only changes the TCBW table or the TSA table, the driver does not treat
that as enough of a change to reconfigure the FW settings.

Change the check for reconfiguration needed to include these singular
changes as significant.

Fixes: a17a5ff6812c ("ice: Refactor the LLDP MIB change event handling")
Cc: stable@vger.kernel.org
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index 0b194c8..43978d8 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -481,13 +481,17 @@ ice_dcb_need_recfg(struct ice_pf *pf, struct ice_dcbx_cfg *old_cfg,
 
 		if (memcmp(&new_cfg->etscfg.tcbwtable,
 			   &old_cfg->etscfg.tcbwtable,
-			   sizeof(new_cfg->etscfg.tcbwtable)))
+			   sizeof(new_cfg->etscfg.tcbwtable))) {
+			need_reconfig = true;
 			dev_dbg(dev, "ETS TC BW Table changed.\n");
+		}
 
 		if (memcmp(&new_cfg->etscfg.tsatable,
 			   &old_cfg->etscfg.tsatable,
-			   sizeof(new_cfg->etscfg.tsatable)))
+			   sizeof(new_cfg->etscfg.tsatable))) {
+			need_reconfig = true;
 			dev_dbg(dev, "ETS TSA Table changed.\n");
+		}
 	}
 
 	/* Check if PFC configuration has changed */
-- 
2.52.0
