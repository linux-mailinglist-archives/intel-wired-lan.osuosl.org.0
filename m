Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ULc8IH+fGGpAlggAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2026 22:03:11 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A4EF25F7B69
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2026 22:03:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 15B5681143;
	Thu, 28 May 2026 20:03:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OZZiQsx4v4hC; Thu, 28 May 2026 20:03:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 586CC8113D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779998588;
	bh=jNK0zmXKsfzSdEP0ApVFYcr4k6QPuWlIRGWJUO4mlzU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=X1w8stcFk5+FqItK6/RQhWt/pYD6Dz1QrITVW5sFOSNGvUq5YtKEcn2oikyf417+t
	 OFdvMAaqYPHljBrh9CiKu1d9TFGubRcTmUv/ezAFlAuLCzVWj9etrJyj4O/A9jFDNr
	 UpBUeRYM/lS8W9vk6AYSQdcGjB1A3ip3rxMPrpHlet0uhpGiDbNVwhlqSTWbyAc2S9
	 64/SzY/twD4LwvJyl3i+oFNMnxDoK4ogK1gFPVkLI7Y0K2bWMAl/e8oPaqllbdVvTH
	 n8MWry3RK4RYtwznSMbh7A5OcfKhTdF8pVbmltyMOkZvryGMm2QBN93lOXO0y8Cw/3
	 1V0yJiBJuiZdw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 586CC8113D;
	Thu, 28 May 2026 20:03:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id E7EB4288
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2026 20:03:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C994F6068F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2026 20:03:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zsi32uIvOv06 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 May 2026 20:03:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=gregkh@linuxfoundation.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A3302605A7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A3302605A7
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A3302605A7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2026 20:03:04 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id DAEFC601F6;
 Thu, 28 May 2026 20:03:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B11E1F000E9;
 Thu, 28 May 2026 20:03:01 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: stable@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, patches@lists.linux.dev,
 intel-wired-lan@lists.osuosl.org, Bart Van Assche <bvanassche@acm.org>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Arpana Arland <arpanax.arland@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Sasha Levin <sashal@kernel.org>
Date: Thu, 28 May 2026 21:45:53 +0200
Message-ID: <20260528194653.616151233@linuxfoundation.org>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260528194646.819809818@linuxfoundation.org>
References: <20260528194646.819809818@linuxfoundation.org>
User-Agent: quilt/0.69
X-stable: review
X-Patchwork-Hint: ignore
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; 
 s=korg; t=1779998582;
 bh=jNK0zmXKsfzSdEP0ApVFYcr4k6QPuWlIRGWJUO4mlzU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=tKZ5k6Y2qqFa0pdTdIpQB6iMndslqiYVUZZB/aaEX9BaJ/JGodFPs7g7+t/fpA3cN
 AzHI3fyRXGgSCa9gBmMHu+xs/F6ggpXNOfnel6wmwhebbC+vfP6Y1DKAsoFURaOYdX
 1H61bueIRhkvzGOP/aYxFFg8/t/mHOCAPFDpTOWs=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linuxfoundation.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org
 header.a=rsa-sha256 header.s=korg header.b=tKZ5k6Y2
Subject: [Intel-wired-lan] [PATCH 7.0 224/461] ice: fix locking in
 ice_dcb_rebuild()
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
X-Spamd-Result: default: False [-0.11 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[linuxfoundation.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:stable@vger.kernel.org,m:gregkh@linuxfoundation.org,m:patches@lists.linux.dev,m:bvanassche@acm.org,m:aleksandr.loktionov@intel.com,m:przemyslaw.kitszel@intel.com,m:arpanax.arland@intel.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:sashal@kernel.org,s:lists@lfdr.de];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[gregkh@linuxfoundation.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,msgid.link:url,osuosl.org:email,osuosl.org:dkim,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo,linuxfoundation.org:mid,acm.org:email];
	FROM_NEQ_ENVFROM(0.00)[gregkh@linuxfoundation.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A4EF25F7B69
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

7.0-stable review patch.  If anyone has any objections, please let me know.

------------------

From: Bart Van Assche <bvanassche@acm.org>

[ Upstream commit 0ded1f36ba4021cba50513e80be6b6e173710168 ]

Move the mutex_lock() call up to prevent that DCB settings change after
the first ice_query_port_ets() call. The second ice_query_port_ets()
call in ice_dcb_rebuild() is already protected by pf->tc_mutex.

This also fixes a bug in an error path, as before taking the first
"goto dcb_error" in the function jumped over mutex_lock() to
mutex_unlock().

This bug has been detected by the clang thread-safety analyzer.

Cc: intel-wired-lan@lists.osuosl.org
Fixes: 242b5e068b25 ("ice: Fix DCB rebuild after reset")
Signed-off-by: Bart Van Assche <bvanassche@acm.org>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Tested-by: Arpana Arland <arpanax.arland@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Link: https://patch.msgid.link/20260506-jk-iwl-net-2026-05-04-v2-6-a5ea4dc837a9@intel.com
Signed-off-by: Jakub Kicinski <kuba@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index 16aa255351523..0bc6dd3756879 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -537,14 +537,14 @@ void ice_dcb_rebuild(struct ice_pf *pf)
 	struct ice_dcbx_cfg *err_cfg;
 	int ret;
 
+	mutex_lock(&pf->tc_mutex);
+
 	ret = ice_query_port_ets(pf->hw.port_info, &buf, sizeof(buf), NULL);
 	if (ret) {
 		dev_err(dev, "Query Port ETS failed\n");
 		goto dcb_error;
 	}
 
-	mutex_lock(&pf->tc_mutex);
-
 	if (!pf->hw.port_info->qos_cfg.is_sw_lldp)
 		ice_cfg_etsrec_defaults(pf->hw.port_info);
 
-- 
2.53.0



