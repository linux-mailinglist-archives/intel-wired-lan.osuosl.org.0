Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id iCQ5CwG6JWryKwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 07 Jun 2026 20:35:45 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C200A6513FC
	for <lists+intel-wired-lan@lfdr.de>; Sun, 07 Jun 2026 20:35:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=EjpQkgxT;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 734B261B3F;
	Sun,  7 Jun 2026 18:35:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tBlekbZin9vn; Sun,  7 Jun 2026 18:35:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EECC661B39
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780857343;
	bh=KAsEQdu4J4FFCnQRbGXYtMh3MwJNO5xrDzgXUHeI0ck=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EjpQkgxTgCso1utfLprfcTfDkzsR2I2ONdEdR84LM9d3jdbUJRndya8wkJImTHp0H
	 yhQXz2lih8yeAi3OZiLI9mJAIrsezgcf4T2AYe2yU6IRJCqqeQnWtSRuM9EqrUVr9q
	 Gk2gsx1KcimmToQxmgKjyTEfBfwezXArx8uvcDE8CUEggda60ffm8UD8jrhvBt7BQs
	 VgYQ0ZzPpGxOHkaRWRHvB/BWkM8PhIsjSTE+6CfoSCBjRC+Sjodp48Uu2v5n8wliFc
	 5H1IlLvo5ySGddxs4aHseDSJb3/13I9enrmlhDp7xzp5qGPzvzA+cc3hbgCfIkpl8a
	 XIK4wQuQoPLGw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EECC661B39;
	Sun,  7 Jun 2026 18:35:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 51A03345
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Jun 2026 18:35:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4E66584B28
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Jun 2026 18:35:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0Mjmu6QrzGKB for <intel-wired-lan@lists.osuosl.org>;
 Sun,  7 Jun 2026 18:35:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6009684B0B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6009684B0B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6009684B0B
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Jun 2026 18:35:40 +0000 (UTC)
X-CSE-ConnectionGUID: 55KCNhlAT1Su8ZznAticoA==
X-CSE-MsgGUID: +YSAsrkaSMSbVI3yTatY0w==
X-IronPort-AV: E=McAfee;i="6800,10657,11810"; a="81602055"
X-IronPort-AV: E=Sophos;i="6.24,193,1774335600"; d="scan'208";a="81602055"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2026 11:35:40 -0700
X-CSE-ConnectionGUID: AwFymosaQk6saXFOIEREXA==
X-CSE-MsgGUID: GwQjfwa+Q9+SBIMRsi3Lkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,193,1774335600"; d="scan'208";a="245171379"
Received: from gklab-003-001.igk.intel.com ([10.91.173.48])
 by orviesa008.jf.intel.com with ESMTP; 07 Jun 2026 11:35:35 -0700
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: netdev@vger.kernel.org
Date: Sun,  7 Jun 2026 20:30:36 +0200
Message-Id: <20260607183045.1213735-5-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20260607183045.1213735-1-grzegorz.nitka@intel.com>
References: <20260607183045.1213735-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780857340; x=1812393340;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7SLLTaGR04kcGW6NFlVhrv/kbAI3IG9DGTQq1xYnrM8=;
 b=NkYL9FvsikkEmot+h+/ChIluBBC6J7DJ9CN+bccK+ymaRqDKNYPY4OvV
 nEFYVbzBJoVVC++zHfFF49dl5nIAIQHNh2c6masl4Pv7+GW95ORiWpC4f
 ZlJ4Tp/SWJuRHQsIlPsaB//goWi0ggiaqVwl2dodiIo4okk+hZeSLJjwz
 /ST0XjAaOUpfZyQgpTrn2dOHiwKv5lvKi1tBrBgaNyqBDBGrEPcwqwtd/
 wGSWat1Yss6/RjlzUtC16AvdDgvp4w4SrIOjIAODbwg3Kqd7rPvXdyD/7
 Lyz6dZdY2qfaOsIX1KNTcX4KewAFHliEpwgp/e6TWU7YxxWGXfLzE+xds
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NkYL9Fvs
Subject: [Intel-wired-lan] [PATCH v14 net-next 04/13] dpll: send delete
 notification before unregister in on-pin rollback
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
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:from_smtp,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C200A6513FC

The rollback path in dpll_pin_on_pin_register() called
__dpll_pin_unregister() before dpll_pin_delete_ntf(). When the
unregister dropped the pin's last DPLL reference it cleared the
DPLL_REGISTERED mark in dpll_pin_xa, so the subsequent
dpll_pin_event_send() failed dpll_pin_available() and aborted with
-ENODEV. As a result userspace was never notified of the rollback
deletion and remained out of sync with the kernel.

Send the delete notification first, matching the order used by
dpll_pin_unregister() and dpll_pin_on_pin_unregister().

Fixes: 9d71b54b65b1 ("dpll: netlink: Add DPLL framework base functions")
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
---
 drivers/dpll/dpll_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dpll/dpll_core.c b/drivers/dpll/dpll_core.c
index cea7e2be2cbc..80195f3a84f3 100644
--- a/drivers/dpll/dpll_core.c
+++ b/drivers/dpll/dpll_core.c
@@ -1007,9 +1007,9 @@ int dpll_pin_on_pin_register(struct dpll_pin *parent, struct dpll_pin *pin,
 dpll_unregister:
 	xa_for_each(&parent->dpll_refs, i, ref)
 		if (i < stop) {
+			dpll_pin_delete_ntf(pin);
 			__dpll_pin_unregister(ref->dpll, pin, ops, priv,
 					      parent);
-			dpll_pin_delete_ntf(pin);
 		}
 	dpll_xa_ref_pin_del(&pin->parent_refs, parent, ops, priv, pin);
 unlock:
-- 
2.39.3

