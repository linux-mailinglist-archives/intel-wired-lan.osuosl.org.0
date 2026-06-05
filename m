Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VIvwC33qImrAfAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 05 Jun 2026 17:25:49 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C59D64945E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 05 Jun 2026 17:25:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b="6ssP7Y+/";
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 44F1960BBE;
	Fri,  5 Jun 2026 15:25:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fsIAAJN_2qHp; Fri,  5 Jun 2026 15:25:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0F18960BA5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780673144;
	bh=psMPm5lvDOvLaj/bPXlH1ud1R9wUuRmpSaAB7JVTHis=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6ssP7Y+/3mutfS4gW9xv7pNHqmJrNP2jL/kGgX8qBHmdoa5/MwAciKMjEAvnG9IV2
	 RplBBFokjclVdVLRti0RrCA6IO3/R2oe9BIkV5t0wDJFIv5Ljn3D6dfPIIvSX8zWVP
	 R4zyumV9xC2KaBPcMrfZmoZM2I2wHt6WQF7aLUR3WW0upJsjsSWihsWAI1cFsNMKZ9
	 yDI05G0HWHM5TUgNnbWR/cDj/updvPgp3Hg7f1i9Muf1KgyFFrBiZoKfIOONZyZfi4
	 rdV8oFGt64L87F/+TFEukit8Mq+hHmHZF+v7OjJqA/MW/daIjdknWgryTSYqrefsyT
	 moftWtPWMnfgQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0F18960BA5;
	Fri,  5 Jun 2026 15:25:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id BB176F4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jun 2026 15:25:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AB47F40431
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jun 2026 15:25:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A5iL2wq4CoQ4 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Jun 2026 15:25:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0D82B40461
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0D82B40461
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0D82B40461
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jun 2026 15:25:40 +0000 (UTC)
X-CSE-ConnectionGUID: A3zafB8xRieiy8gHUSg9lw==
X-CSE-MsgGUID: PocKDVowRSGVWtp0d98WwA==
X-IronPort-AV: E=McAfee;i="6800,10657,11807"; a="106948975"
X-IronPort-AV: E=Sophos;i="6.24,189,1774335600"; d="scan'208";a="106948975"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 08:25:37 -0700
X-CSE-ConnectionGUID: 59Ny/TS+RIWX3hsBvbBD3Q==
X-CSE-MsgGUID: OaCPqyhDSLG05ma0avE3rA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,189,1774335600"; d="scan'208";a="249798860"
Received: from gklab-003-001.igk.intel.com ([10.91.173.48])
 by orviesa005.jf.intel.com with ESMTP; 05 Jun 2026 08:25:32 -0700
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: netdev@vger.kernel.org
Date: Fri,  5 Jun 2026 17:20:24 +0200
Message-Id: <20260605152030.891570-6-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20260605152030.891570-1-grzegorz.nitka@intel.com>
References: <20260605152030.891570-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780673141; x=1812209141;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IlOl2lTbjJvzf3VEWq4GBVISiao5ux55lRmLsq8H/Qw=;
 b=PlNjZ5DG4vcENgG/nEu+FBF0IMKINGY/7c5jKaFc6X59eGw3BFrJprit
 pXXxb6vRQj7VWV831Abkk0lZbe27TLhnEM7oYWF8x9lVIMaidBoW4NOFA
 Tw/qRy189PoamvgthlCliEvnA30HhPdh1n/bmhdRuqmG5nTV/gCZDmI78
 RvvFJaL+hxNEpsPBO2gVbZvl/2jVRuqAMepJTQFmtLLGxEq2E9b6d2MjI
 BPCwGVMBKMGXcuELmIsvhzzK5zustJEKWKiwaiUQs/ZenCEHrw7WZWjfL
 ngY7QWD7RNbyUhnjryzxDwZHzsB6AUkMHmGqaY5BfYb4DnI0Aq5e3z9ac
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PlNjZ5DG
Subject: [Intel-wired-lan] [PATCH v13 net-next 05/11] dpll: emit per-dpll
 delete notifications in dpll_pin_on_pin_unregister()
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:from_smtp,osuosl.org:dkim,intel.com:mid,intel.com:from_mime,intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9C59D64945E

dpll_pin_on_pin_register() emits a creation notification for every
parent->dpll_refs entry, but dpll_pin_on_pin_unregister() emitted only
one deletion notification outside the loop. When a pin is registered
against multiple parent dplls, userspace sees N creates but a single
delete and leaks per-dpll state.

Move dpll_pin_delete_ntf() into the loop and call it before
__dpll_pin_unregister() so the DPLL_REGISTERED mark is still set when
dpll_pin_available() is consulted.

Fixes: 9d71b54b65b1 ("dpll: netlink: Add DPLL framework base functions")
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
---
 drivers/dpll/dpll_core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/dpll/dpll_core.c b/drivers/dpll/dpll_core.c
index 80195f3a84f3..58034be07080 100644
--- a/drivers/dpll/dpll_core.c
+++ b/drivers/dpll/dpll_core.c
@@ -1036,14 +1036,14 @@ void dpll_pin_on_pin_unregister(struct dpll_pin *parent, struct dpll_pin *pin,
 	unsigned long i;
 
 	mutex_lock(&dpll_lock);
-	dpll_pin_delete_ntf(pin);
-	dpll_xa_ref_pin_del(&pin->parent_refs, parent, ops, priv, pin);
 	xa_for_each(&pin->dpll_refs, i, ref) {
 		reg = dpll_pin_registration_find(ref, ops, priv, parent);
 		if (!reg)
 			continue;
+		dpll_pin_delete_ntf(pin);
 		__dpll_pin_unregister(ref->dpll, pin, ops, priv, parent);
 	}
+	dpll_xa_ref_pin_del(&pin->parent_refs, parent, ops, priv, pin);
 	mutex_unlock(&dpll_lock);
 }
 EXPORT_SYMBOL_GPL(dpll_pin_on_pin_unregister);
-- 
2.39.3

