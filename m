Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SPuBOoUwxmnzHQUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 08:23:49 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7861534055B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 08:23:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2A5D483C2B;
	Fri, 27 Mar 2026 07:23:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DFydqkkxLhmp; Fri, 27 Mar 2026 07:23:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9F7BD83C18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774596227;
	bh=FRF/1SIUlEaaNn+Z1/W7n/zpIu9RWX+CV8uEuPZRV+0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=soDjAmHCZKC3xAyiEJUo9qhk9tmmmng3tQbhZtTWmYUSk0FYFFn+W4UqgrRB1MKYa
	 7ZLmkjUcxKklow3p21rK79iLJqvogr1bCw2ARtI2QexYcy+wTqj+PKIjFxGHUl6bz6
	 7Ds/e/nI/qRbZ9mU+iPozwsCMPZtpdWfM7FjeFlp7P0bL7N+Aq1uH7b7ZTEfz2nu0/
	 5Ums9AmuO7OoPCA0O/hZqBjz7FIUTPWSG7h6CFwUe8TeQd5R+IE4LTCsiy54s0ggSU
	 1PbqgjEONB2uSomGhVTGBdCapdBC9QQ/TAX7/uYFwBJwHu/BG9RfVclB496BcOoQo1
	 Rv+wNVyTuNK1g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9F7BD83C18;
	Fri, 27 Mar 2026 07:23:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5BED72D5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 07:23:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4E64C415FA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 07:23:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VVkaAuG5H2Rm for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Mar 2026 07:23:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5FFEF41574
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5FFEF41574
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5FFEF41574
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 07:23:43 +0000 (UTC)
X-CSE-ConnectionGUID: D1j9wghqQl6RAAhr5X2lUw==
X-CSE-MsgGUID: EPnPc5mXSxKujgzr26U2Ww==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="75733976"
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="75733976"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2026 00:23:43 -0700
X-CSE-ConnectionGUID: yXJSkaxCRrmA3SbECyKMvg==
X-CSE-MsgGUID: /kEvgtCPTr6pxTrnnaVeIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="255739106"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa002.jf.intel.com with ESMTP; 27 Mar 2026 00:23:41 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Paul Greenwalt <paul.greenwalt@intel.com>
Date: Fri, 27 Mar 2026 08:23:29 +0100
Message-ID: <20260327072332.130320-6-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260327072332.130320-1-aleksandr.loktionov@intel.com>
References: <20260327072332.130320-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774596223; x=1806132223;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2UNQ4rhnM15geXDEabeCEnD3chRO9ol4IHoKs85OO5o=;
 b=U9Rdjlp+qiv+g8d3EUA78+fDo3P1L7gTIPWMcsaRbNkXiybuqbp3aeMM
 fVz8NdCoiU7dH8zKs6cul6i8weo4uQmRl+rzAHOgmGRHImziCDSN4pmrs
 pOzKMaT2cZ3BL9wLN5vR0k+Ofeh9awacrEmlc8MdKGvVuWCeEbQbiaH/O
 v5rBBC1jAJbZF8Rh8SdbD4EVKDxa9zE9j1XJ2p/3vwiKFwr5XKF9bI6cE
 UWVHSeS6WvP88rKAIhDfqH54Ko3P07lwv1OGL303+1i/lV4ulB+NlA8Vy
 H7g87LvgAt6X3svXAIu7qjlxLiwz2RoWo/RrsMFx6xd3fgfZB2mZ5NpAt
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=U9Rdjlp+
Subject: [Intel-wired-lan] [PATCH net] ice: fix ice_init_link() error return
 preventing probe
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email,intel.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 7861534055B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Paul Greenwalt <paul.greenwalt@intel.com>

ice_init_link() can return an error status from ice_update_link_info()
or ice_init_phy_user_cfg(), causing probe to fail.

An incorrect NVM update procedure can result in link/PHY errors, and
the recommended resolution is to update the NVM using the correct
procedure. If the driver fails probe due to link errors, the user
cannot update the NVM to recover. The link/PHY errors logged are
non-fatal: they are already annotated as 'not a fatal error if this
fails'.

Since none of the errors inside ice_init_link() should prevent probe
from completing, convert it to void and remove the error check in the
caller. All failures are already logged; callers have no meaningful
recovery path for link init errors.

Fixes: 5b246e533d01 ("ice: split probe into smaller functions")
Cc: stable@vger.kernel.org
Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---

 drivers/net/ethernet/intel/ice/ice_main.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index cf116bb..a6b0c09 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4856,16 +4856,14 @@ static void ice_init_wakeup(struct ice_pf *pf)
 	device_set_wakeup_enable(ice_pf_to_dev(pf), false);
 }
 
-static int ice_init_link(struct ice_pf *pf)
+static void ice_init_link(struct ice_pf *pf)
 {
 	struct device *dev = ice_pf_to_dev(pf);
 	int err;
 
 	err = ice_init_link_events(pf->hw.port_info);
-	if (err) {
+	if (err)
 		dev_err(dev, "ice_init_link_events failed: %d\n", err);
-		return err;
-	}
 
 	/* not a fatal error if this fails */
 	err = ice_init_nvm_phy_type(pf->hw.port_info);
@@ -4899,8 +4897,6 @@ static int ice_init_link(struct ice_pf *pf)
 	} else {
 		set_bit(ICE_FLAG_NO_MEDIA, pf->flags);
 	}
-
-	return err;
 }
 
 static int ice_init_pf_sw(struct ice_pf *pf)
@@ -5043,9 +5039,7 @@ static int ice_init(struct ice_pf *pf)
 
 	ice_init_wakeup(pf);
 
-	err = ice_init_link(pf);
-	if (err)
-		goto err_init_link;
+	ice_init_link(pf);
 
 	err = ice_send_version(pf);
 	if (err)
-- 
2.52.0

