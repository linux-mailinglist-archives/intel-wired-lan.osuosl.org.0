Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6JCpFCdsumnRWQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 10:11:03 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F312B8B25
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 10:11:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 80F3A81C46;
	Wed, 18 Mar 2026 09:11:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0MCrDLupQi99; Wed, 18 Mar 2026 09:11:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0C9D083C3C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773825061;
	bh=TSmSvvRR+8eeGto7qsosOBQXK+UpTJUdve357PYSrhs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qTRb+Sf9OaSO47DF90bY6+Em6Ej3G4Y+AmGwlrw+Y2vq0Q+QTHeYNKsayG5KcICDN
	 u0AxDdnlHEjdbBB9Y10k5DOoDzK12r/owUUgDjGWc+lhKEDEWZ+5ZLx1NNlKo3v+mG
	 fEX0yn/PoQBbKbxmKm0f6ca80hNiqtgaFFvAIsAn2fDT3+4JHmMpgn52jUmGV2SqDP
	 pmEIhU8H9CkBEa/djX3KT9Ep2RyDSlah4yhJrYs71nVasJhiZbXmgrJyAUVoA0fnrT
	 0SbxpM5Z7CqZ0ADla39JFURqSeMnlgebl3T+mvQhi8JDLW8O1pKr/AQdOAgvIkaEUr
	 XUrHaPeLVB+gw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0C9D083C3C;
	Wed, 18 Mar 2026 09:11:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0B6841AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 09:10:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F0D8D40EF9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 09:10:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UuSrwCM3EWaV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2026 09:10:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E926B40EF8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E926B40EF8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E926B40EF8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 09:10:57 +0000 (UTC)
X-CSE-ConnectionGUID: 2Qbs85U+ThCJgjGAXqGKmw==
X-CSE-MsgGUID: m/ElXFIiR0WKo1VRKl1g5Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11732"; a="77484400"
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="77484400"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 02:10:57 -0700
X-CSE-ConnectionGUID: CTwCpFYTTLuTRlW5exKTlw==
X-CSE-MsgGUID: fAFcL34SQiSXA9zG+LH7kg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="226699929"
Received: from gklab-003-001.igk.intel.com ([10.91.173.48])
 by orviesa003.jf.intel.com with ESMTP; 18 Mar 2026 02:10:53 -0700
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: netdev@vger.kernel.org
Date: Wed, 18 Mar 2026 10:06:48 +0100
Message-Id: <20260318090654.611349-3-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20260318090654.611349-1-grzegorz.nitka@intel.com>
References: <20260318090654.611349-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773825058; x=1805361058;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZYXIR0UL9LVrZM1kSMAGifMsq/4oudcUuiVR9bc1/do=;
 b=BQvzNcNRrKc3Do8uVDyS4ilAc9WpncV7o77BHRSvPVNYGdyjHqFeXHsM
 YbodZLE0VLCBM2KViyABQ1Zmv0QsAub1sbGOcwTtHv8DyXSzyjLgfBPla
 WtOyprN94kC1thn8HueMARoAc0v8k3A2LrOARjtVqPI+oDaWVvZEzhOmy
 Q21ScaJ4Ns5lasm/7k1dS2Xi4JfDPufOjc2iX/VtRLlIdQJfxIGAmErnE
 JENMk+NRGT/QyaI9RJhKa/ZTEwmBduoqZhIWsRGGYdYvoGa/pX8WOyymI
 o3R9odnERtohdF2eIzvCWdtRk8VvibuAuoJSdnkBlqkeAZ3zmYtFALEkL
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BQvzNcNR
Subject: [Intel-wired-lan] [PATCH net-next 2/8] dpll: allow registering
 FW-identified pin with a different DPLL
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
 jiri@resnulli.us, przemyslaw.kitszel@intel.com, richardcochran@gmail.com,
 donald.hunter@gmail.com, linux-kernel@vger.kernel.org,
 arkadiusz.kubalewski@intel.com,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, andrew+netdev@lunn.ch,
 intel-wired-lan@lists.osuosl.org, horms@kernel.org,
 Prathosh.Satish@microchip.com, anthony.l.nguyen@intel.com, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D3F312B8B25
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Relax the (module, clock_id) equality requirement when registering a
pin identified by firmware (pin->fwnode). Some platforms associate a
FW-described pin with a DPLL instance that differs from the pin's
(module, clock_id) tuple. For such pins, permit registration without
requiring the strict match. Non-FW pins still require equality.

Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
---
 drivers/dpll/dpll_core.c | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/dpll/dpll_core.c b/drivers/dpll/dpll_core.c
index 3f54754cdec4..0d25c23bd850 100644
--- a/drivers/dpll/dpll_core.c
+++ b/drivers/dpll/dpll_core.c
@@ -880,11 +880,21 @@ dpll_pin_register(struct dpll_device *dpll, struct dpll_pin *pin,
 		return -EINVAL;
 
 	mutex_lock(&dpll_lock);
-	if (WARN_ON(!(dpll->module == pin->module &&
-		      dpll->clock_id == pin->clock_id)))
+
+	/*
+	 * For pins identified via firmware (pin->fwnode), allow registration
+	 * even if the pin's (module, clock_id) differs from the target DPLL.
+	 * For non-fwnode pins, require a strict (module, clock_id) match.
+	 */
+	if (!pin->fwnode &&
+	    WARN_ON_ONCE(dpll->module != pin->module ||
+		dpll->clock_id != pin->clock_id)) {
 		ret = -EINVAL;
-	else
-		ret = __dpll_pin_register(dpll, pin, ops, priv, NULL);
+		goto out_unlock;
+	}
+
+	ret = __dpll_pin_register(dpll, pin, ops, priv, NULL);
+out_unlock:
 	mutex_unlock(&dpll_lock);
 
 	return ret;
-- 
2.39.3

