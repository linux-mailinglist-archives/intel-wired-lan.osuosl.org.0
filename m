Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9dWNIO1FPWp60ggAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jun 2026 17:14:53 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA6E6C6F9B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jun 2026 17:14:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=1c6J84KN;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D49BF61035;
	Thu, 25 Jun 2026 15:14:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rt6QrqbkmxT6; Thu, 25 Jun 2026 15:14:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1B2B66102A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782400489;
	bh=or/4BjaifW4h+3ZPBD+Fggr54RhZVUp1K9h+yVdk0So=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1c6J84KNdI/jYLNJlzQ72bBmyPf0NavXdCRUkecP3yM9mSltTopTY9vYOtNDK2Rgp
	 we2ZENgbgTgQMZWgBCl1LAMeAlbPTN6UZZ5b0kjXpV7JGOlW6/cnBDhXJwjZZFJHGm
	 5wRmab2BxghlDVWwelAs4nS+fSMZ2TZ0y7LO/5lUqWKrGl/hkdFEAG/fO8MbMjGeaK
	 RxpDIbspzCn5gFZBJitnfd888JnRBvjyFd7Ba3KJ7x99dmJcc7i7UlVwMZ8j0seJxC
	 /xy4GksSibdjj1wIhk6I1IttKsyQTY2XEZthtn1ndbwKQ03dmhYo16SHIdaDluqWC9
	 EoYIwO90lOKcw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1B2B66102A;
	Thu, 25 Jun 2026 15:14:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4160F2C7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jun 2026 15:14:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2761441110
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jun 2026 15:14:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 49MYxKebfDGT for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jun 2026 15:14:47 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3534F4110D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3534F4110D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3534F4110D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jun 2026 15:14:47 +0000 (UTC)
X-CSE-ConnectionGUID: LEvpuxfPQj+IAZlsfjTnWA==
X-CSE-MsgGUID: 0hRfoIMMQWCxOVfDSjzzTg==
X-IronPort-AV: E=McAfee;i="6800,10657,11827"; a="83304543"
X-IronPort-AV: E=Sophos;i="6.24,224,1774335600"; d="scan'208";a="83304543"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 08:14:47 -0700
X-CSE-ConnectionGUID: sjgAQYJhQI6IrtFoX7I55g==
X-CSE-MsgGUID: k9WgKcSATlic965BMKa0vQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,224,1774335600"; d="scan'208";a="254866966"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orviesa004.jf.intel.com with ESMTP; 25 Jun 2026 08:14:45 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, magnus.karlsson@intel.com, kuba@kernel.org,
 pabeni@redhat.com, horms@kernel.org, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Thu, 25 Jun 2026 17:14:30 +0200
Message-Id: <20260625151431.1102838-3-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20260625151431.1102838-1-maciej.fijalkowski@intel.com>
References: <20260625151431.1102838-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782400487; x=1813936487;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mE/Hmqd+/GGDcneby51MV7lO/cMbj7228JSmq4Fr2+Q=;
 b=R0I6JmpDjWUJSCFGWG+3QTo72PJ6q+jtvUzo0jAeNEUAMshNEsYs9hqd
 PWdyxPAujy9vOnJY/Mb329cZyhaS88XftcBi4rSV2NibEDEKHlG+JU8Xu
 uE5btcRDZAAZryJsxQz4Z80yE2ksAIn41Mh/n1me70yWI2l+jOkI1e0YT
 WTaSVfc/q21BEAgJB5C0jHxai0uYqqwZT1FNqMUZO2p/CwySLkY2pAxsF
 HEbGSEMPKHAIaoShwAavGjXUf0V3LhiEYWA7BDBtPR8RuldoQGWbtPfkZ
 P6vz4/nXTIxbPGSvhmtSFx8Ba/mFOhXv1sK0WGYN06aQ6BjV30Bsl+EHC
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=R0I6JmpD
Subject: [Intel-wired-lan] [PATCH v4 net 2/3] i40e: fix potential UAF in
 i40e_vsi_setup()'s error path
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
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo,osuosl.org:dkim,osuosl.org:from_smtp,intel.com:email,intel.com:mid,intel.com:from_mime];
	FROM_NEQ_ENVFROM(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_SEVEN(0.00)[9];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CBA6E6C6F9B

Sashiko pointed out an issue where error path in i40e_vsi_reinit_setup()
released ring memory but then when freeing q_vectors, the rings mapped
to q_vectors where touched which implies a regular use-after-free bug.

Apparently i40e_vsi_setup() has the same problem, so swap the allocation
and freeing order and fix the 13 year old bug.

Fixes: 41c445ff0f48 ("i40e: main driver core")
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 471fa7f7b643..4adc7b0fb2f4 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -14460,14 +14460,14 @@ struct i40e_vsi *i40e_vsi_setup(struct i40e_pf *pf, u8 type,
 		fallthrough;
 	case I40E_VSI_FDIR:
 		/* set up vectors and rings if needed */
-		ret = i40e_vsi_setup_vectors(vsi);
-		if (ret)
-			goto err_msix;
-
 		ret = i40e_alloc_rings(vsi);
 		if (ret)
 			goto err_rings;
 
+		ret = i40e_vsi_setup_vectors(vsi);
+		if (ret)
+			goto err_qvec;
+
 		/* map all of the rings to the q_vectors */
 		i40e_vsi_map_rings_to_vectors(vsi);
 
@@ -14487,10 +14487,10 @@ struct i40e_vsi *i40e_vsi_setup(struct i40e_pf *pf, u8 type,
 	return vsi;
 
 err_config:
+	i40e_vsi_free_q_vectors(vsi);
+err_qvec:
 	i40e_vsi_clear_rings(vsi);
 err_rings:
-	i40e_vsi_free_q_vectors(vsi);
-err_msix:
 	if (vsi->netdev_registered) {
 		vsi->netdev_registered = false;
 		unregister_netdev(vsi->netdev);
-- 
2.43.0

