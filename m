Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uB/YE57VvGkk3gIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 06:05:34 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BE7E52D5DF8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 06:05:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 64ABA6179E;
	Fri, 20 Mar 2026 05:05:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q1SXjdF8CCnm; Fri, 20 Mar 2026 05:05:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1FE79617A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773983131;
	bh=G4Jnx+dV753xocrsBFo+taEw5Uws4K9zyCxozfCkU4w=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=GBcvIIbs3TSoVS0oPg5wR8aTVSKLt0AQzL39tzFSrqDqbpp57cxnWw9O29edY4Dbu
	 ySwgrIbzyIilgY5sdXJwAEnsLXZ3HvhUaKLc5OKc4D2T0Tmp/aj/AOKro9cTBQk0OM
	 58GPHL3zLcC76cuim1d/a12GvQTOoFBMmyW0p0c8iwJo1ECpo8CClI5er1fkTc1eZY
	 VVEJkKOvuXhYNQ5zhS1xLqDuRZSQTbITSyPkDdlo72NkWKg5RGu04+vxE7pgKF1eis
	 axvLVvMSsYeEWRI230E/vZAA7RmSkhv1hobEDBswKusgMVwfGocz2HCqGHEvSwgloX
	 nmF7558dPaxXg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1FE79617A2;
	Fri, 20 Mar 2026 05:05:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2E84A25C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 05:05:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1476641398
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 05:05:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RKLCj7crtOxW for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Mar 2026 05:05:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1CD4340176
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1CD4340176
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1CD4340176
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 05:05:28 +0000 (UTC)
X-CSE-ConnectionGUID: 6CUh84CBQbuarSH5UUvWKQ==
X-CSE-MsgGUID: 5G7HYYr4QOSyI5UGlyS5DA==
X-IronPort-AV: E=McAfee;i="6800,10657,11734"; a="100522689"
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="100522689"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 22:05:28 -0700
X-CSE-ConnectionGUID: jbAqDc0eQBGK9cU52IbpUg==
X-CSE-MsgGUID: AUNUR6oSQEmoov9sxsTYQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="227307249"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa003.jf.intel.com with ESMTP; 19 Mar 2026 22:05:27 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Fri, 20 Mar 2026 06:05:25 +0100
Message-ID: <20260320050525.422403-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773983128; x=1805519128;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=sMYN8X7qNO1iGxn2GsYKDoTb5BxCksdCw6mKKX/zlyY=;
 b=GbJpkX8gGI7s5x9we9rAiGCec5fzjAcxhMtvjbZzZyE2gC+9v8u/nN02
 A99fWuLTfMRe1jBixtil7o+yjwJ3oU1hcknXm72peDzHBWqFhZRmIk2hd
 X44032LOyVqIMJ5KUhGEncx27IGQS0tQz/CJiy5pZijtirgyy76GYDmAi
 IeRNxuPQud7py4/3OozUojvBDpQeOoHgQEBHLwWEvKsTesgRjOo7KorOx
 70FzC2oKFAeM3T3gyvEz8uPk29EZGuXsN2CUBlvYs1IJrkLAv+z/JOWKS
 GbRXoa7IjV7B9HEs5i+CaryudXrESXZEigT7JR2yeMwNo/5OckA2JVX7t
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GbJpkX8g
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: do not carry link status
 over to link event data
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.999];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: BE7E52D5DF8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Tony Nguyen <anthony.l.nguyen@intel.com>

Since we now report changes from the link event and changes that
occurred from update link info, there is no need to carry the latter
info over as it will be handled appropriately by itself.

Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index e7308e3..348c86b 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1127,12 +1127,6 @@ ice_link_event(struct ice_pf *pf, struct ice_port_info *pi, bool link_up,
 
 	ice_check_link_cfg_err(pf, pi->phy.link_info.link_cfg_err);
 
-	/* Check if the link state is up after updating link info, and treat
-	 * this event as an UP event since the link is actually UP now.
-	 */
-	if (phy_info->link_info.link_info & ICE_AQ_LINK_UP)
-		link_up = true;
-
 	vsi = ice_get_main_vsi(pf);
 	if (!vsi || !vsi->port_info)
 		return -EINVAL;
-- 
2.52.0

