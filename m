Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IZOoLgAMRWpH5woAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Jul 2026 14:45:52 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E0D6ED860
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Jul 2026 14:45:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=eNmkAG45;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F3C3A84163;
	Wed,  1 Jul 2026 12:45:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kYrzdkrbFtfh; Wed,  1 Jul 2026 12:45:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7DEDC83CD2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782909948;
	bh=OLxxm9VU+0hsdpV+SJ9G111Ev2EF3q5Rpb4Dm8ss9Ic=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eNmkAG45kF8GEdTWXY58RIj18elVyHAMhpt0TAYUXPlHOgCl90y+Q9gMt3ATdeYIp
	 qE0QslkNBIpHZsrLg0c69wyGCj9BniLgpTFWZmnQIC2XLN/VzaupWUUDv2SlC5ukx0
	 OY9uHsuDaDfYP8KCzLOv8zzeEKHdWg/jlOucKnh9Fi3UB1Tk9Ih+zqs3XmP7dy6I4M
	 Ml0u1w/Q1+9PIijUVJZnsW/anMAKocp6/hlJ2bzyNAj20FO47T4WpMctjiqiErqvzB
	 LbhVgVBizm9XsHfwZROphNeSEDARHPNmaaNmY5Gerr1KltUfMwHYEE1RSpPsmKedY1
	 zv6tcpUBAtROg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7DEDC83CD2;
	Wed,  1 Jul 2026 12:45:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id E90132EB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 12:45:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CEE92403FF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 12:45:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0JqpvDHQ-MFb for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Jul 2026 12:45:45 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2C50040517
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2C50040517
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2C50040517
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 12:45:44 +0000 (UTC)
X-CSE-ConnectionGUID: U4hnzzHCTGaN02T2ncgtFw==
X-CSE-MsgGUID: x3lDDYA4SGywX+/dHiCCeg==
X-IronPort-AV: E=McAfee;i="6800,10657,11833"; a="83839230"
X-IronPort-AV: E=Sophos;i="6.25,141,1779174000"; d="scan'208";a="83839230"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 05:45:33 -0700
X-CSE-ConnectionGUID: SYJ/FOJZT0ql9g0XrJ51jw==
X-CSE-MsgGUID: zPZCRhowQVWeltK5uRG2Jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,141,1779174000"; d="scan'208";a="276864896"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmviesa001.fm.intel.com with ESMTP; 01 Jul 2026 05:45:30 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, magnus.karlsson@intel.com, kuba@kernel.org,
 pabeni@redhat.com, horms@kernel.org, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Sashiko AI Review <sashiko-bot@kernel.org>
Date: Wed,  1 Jul 2026 14:45:19 +0200
Message-Id: <20260701124524.13644-3-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20260701124524.13644-1-maciej.fijalkowski@intel.com>
References: <20260701124524.13644-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782909945; x=1814445945;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MuMCGAKuSURSGZ99zUqZ6MIKOG38p+S2gkvkQ9ek3SE=;
 b=V12zXHNYAHzyhXuTGPikBgqRkqLCcYgIOZUtonhCL+/39/F9ks9Sde16
 069JoXC/ETQrUuj48PDAU5TYizXQTZz+ghfk1mNcOAEFQyLTwVWzGOvQK
 jikQdknhiX9+EjlUYkGFlevmJtEsgZHYGv/y1Y2M3GDyelYExak9hvhUP
 Wi1rzp2eDFjk4pI09jQOODIONlA97FAnKJ/jBFQ5twRhPT1i7PN7lgKvY
 4mtY3dnbm59oR5VLvFjmhJ1xkHfwClXmU35zS7Q7a4SmmTFrfBDXmzKpt
 MDzO0jKg4jzHmiyNkpjdT3RAPOqFb+lV25EBpR7JuvD29nrsKiXyKq9/d
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=V12zXHNY
Subject: [Intel-wired-lan] [PATCH v5 net 2/7] i40e: avoid null ptr
 dereference in i40e_ptp_stop()
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo,osuosl.org:dkim,osuosl.org:from_smtp,intel.com:email,intel.com:mid,intel.com:from_mime];
	FROM_NEQ_ENVFROM(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_SEVEN(0.00)[10];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 14E0D6ED860

Sashiko reports:
***
If an allocation fails here during i40e_rebuild(), i40e_vsi_clear()
frees the
main VSI and sets pf->vsi[vsi->idx] = NULL, and the rebuild will abort
without
stopping the PTP clock.
Later, if the device is removed or unbound, i40e_remove()
unconditionally
calls i40e_ptp_stop(), which does:
drivers/net/ethernet/intel/i40e/i40e_ptp.c:i40e_ptp_stop() {
    ...
	struct i40e_vsi *main_vsi = i40e_pf_get_main_vsi(pf);
    ...
	dev_info(&pf->pdev->dev, "%s: removed PHC on %s\n", __func__,
		 main_vsi->netdev->name);
    ...
}
Would this cause a NULL pointer dereference since main_vsi is now NULL?
***

Check if main_vsi is not null before calling dev_info().

Fixes: beb0dff1251d ("i40e: enable PTP")
Reported-by: Sashiko AI Review <sashiko-bot@kernel.org>
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_ptp.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
index ff62b5f2c815..ca93df4d6785 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
@@ -1556,8 +1556,9 @@ void i40e_ptp_stop(struct i40e_pf *pf)
 	if (pf->ptp_clock) {
 		ptp_clock_unregister(pf->ptp_clock);
 		pf->ptp_clock = NULL;
-		dev_info(&pf->pdev->dev, "%s: removed PHC on %s\n", __func__,
-			 main_vsi->netdev->name);
+		if (main_vsi)
+			dev_info(&pf->pdev->dev, "%s: removed PHC on %s\n", __func__,
+				 main_vsi->netdev->name);
 	}
 
 	if (i40e_is_ptp_pin_dev(&pf->hw)) {
-- 
2.43.0

