Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WEtrCB+6JWr9KwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 07 Jun 2026 20:36:15 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AEB965141F
	for <lists+intel-wired-lan@lfdr.de>; Sun, 07 Jun 2026 20:36:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=LN5Anpq+;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8DB2740873;
	Sun,  7 Jun 2026 18:36:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PLHYfbFoaRca; Sun,  7 Jun 2026 18:36:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1367A4088F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780857371;
	bh=MyL+eofIi3BL6aPxZGcmJDRlRuUxTfhatFhqvwBMtI8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LN5Anpq+ej1avz9qJQ0UnQ0u7+pH+r+PxOBgwDPWCT6Wn0QyEVpRfxtt66aPTWZi9
	 Ezc3ZD1Jufi8RekOQ71Lu5OeKCPOkbHEvs6Gpi8vqfM6u/ZPYyetyNaaRNXE4QGieM
	 hTvn2QWIN2ftG8HralYukVSZpaHXfEw1wxts7UPG+4VzDP0xtug7AZmM/AbQrAAlV/
	 Y6hy6NxNp9E29DS0PweuBi2MeHPxtcLAcqTBMlbc+HwSeeQQt+5Q3nM0gLSXc+Yi5d
	 qzDuEM5txPrGoRgEBPfTfvd77M7hxdJfeHeMijkUjv9kBpuSX4NsYB8b5Yvb5j098S
	 Xd5s1T3qt6YUw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1367A4088F;
	Sun,  7 Jun 2026 18:36:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id B5461345
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Jun 2026 18:36:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A6CB280D89
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Jun 2026 18:36:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BdZRwWFJ8ff2 for <intel-wired-lan@lists.osuosl.org>;
 Sun,  7 Jun 2026 18:36:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A15AC80D43
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A15AC80D43
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A15AC80D43
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Jun 2026 18:36:07 +0000 (UTC)
X-CSE-ConnectionGUID: 6MPm/1OOTGyctGuyW0gO8A==
X-CSE-MsgGUID: wcRimpWwTROR6gLL5DJdVg==
X-IronPort-AV: E=McAfee;i="6800,10657,11810"; a="81602109"
X-IronPort-AV: E=Sophos;i="6.24,193,1774335600"; d="scan'208";a="81602109"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2026 11:36:07 -0700
X-CSE-ConnectionGUID: G0bckApxSPGY16CCQQxCtQ==
X-CSE-MsgGUID: iPgD75WXQA6PCGKwvcSMPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,193,1774335600"; d="scan'208";a="245171448"
Received: from gklab-003-001.igk.intel.com ([10.91.173.48])
 by orviesa008.jf.intel.com with ESMTP; 07 Jun 2026 11:36:02 -0700
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: netdev@vger.kernel.org
Date: Sun,  7 Jun 2026 20:30:39 +0200
Message-Id: <20260607183045.1213735-8-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20260607183045.1213735-1-grzegorz.nitka@intel.com>
References: <20260607183045.1213735-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780857368; x=1812393368;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fwCPDXwHX50TF2F6sSd9ftV4aMKEeCNes1mJGAuv0KE=;
 b=QiGtcYcgPp8CFgqBkhg+0WHClRO2PGO6Vo8AkveBdKM6MDcRnN6F8IBR
 MUCCImdq9+k2nd+j3LGebxC1JXLFpdLCorX8nZGBhWgxHYCrOowVaM76n
 L5ZIsV6cjIn2lvT80wbqNQc3caLvCstftuZII1l5eTZtVMlQaKJwWI8xc
 BbZs8e4xdNsCi/gG0BYEAbvLjWoshOctBfVeLd4y9TUemYdZi1gJq9eDj
 qlKM1Ms5y1xvAw0gNCbYeyLVPJ7Ixv5RhMQLVHuGqlRBQ/cewDkinOjKZ
 WE6ZCVuA8O4g19Iw+8CCKytIRkfvxZ9oljWuXoXV4V5ewLTcegTXywD5G
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QiGtcYcg
Subject: [Intel-wired-lan] [PATCH v14 net-next 07/13] dpll: balance
 create/delete notifications in __dpll_pin_(un)register
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
Cc: ivecera@redhat.com, vadim.fedorenko@linux.dev, kuba@kernel.org,
 jiri@resnulli.us, edumazet@google.com, przemyslaw.kitszel@intel.com,
 richardcochran@gmail.com, donald.hunter@gmail.com,
 linux-kernel@vger.kernel.org, arkadiusz.kubalewski@intel.com,
 andrew+netdev@lunn.ch, intel-wired-lan@lists.osuosl.org, horms@kernel.org,
 Prathosh.Satish@microchip.com, anthony.l.nguyen@intel.com, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:from_smtp,osuosl.org:dkim];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8AEB965141F

__dpll_pin_register() emits dpll_pin_create_ntf() internally, but
__dpll_pin_unregister() left the matching delete to its callers. The
counts then diverge on dpll_pin_on_pin_register() rollback and on
dpll_pin_on_pin_unregister(), leaking stale notifications.

Emit dpll_pin_delete_ntf() inside __dpll_pin_unregister() and drop the
now-redundant call in dpll_pin_unregister().

Fixes: 9431063ad323 ("dpll: core: Add DPLL framework base functions")
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
---
 drivers/dpll/dpll_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dpll/dpll_core.c b/drivers/dpll/dpll_core.c
index ea45bb41376c..1aaf62775408 100644
--- a/drivers/dpll/dpll_core.c
+++ b/drivers/dpll/dpll_core.c
@@ -926,6 +926,7 @@ __dpll_pin_unregister(struct dpll_device *dpll, struct dpll_pin *pin,
 		      const struct dpll_pin_ops *ops, void *priv, void *cookie)
 {
 	ASSERT_DPLL_PIN_REGISTERED(pin);
+	dpll_pin_delete_ntf(pin);
 	dpll_xa_ref_pin_del(&dpll->pin_refs, pin, ops, priv, cookie);
 	dpll_xa_ref_dpll_del(&pin->dpll_refs, dpll, ops, priv, cookie);
 	if (xa_empty(&pin->dpll_refs)) {
@@ -953,7 +954,6 @@ void dpll_pin_unregister(struct dpll_device *dpll, struct dpll_pin *pin,
 		return;
 
 	mutex_lock(&dpll_lock);
-	dpll_pin_delete_ntf(pin);
 	__dpll_pin_unregister(dpll, pin, ops, priv, NULL);
 	mutex_unlock(&dpll_lock);
 }
-- 
2.39.3

