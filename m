Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qJp8CXL3zmnqsAYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 01:10:42 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B763938F05C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 01:10:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5A5164034C;
	Thu,  2 Apr 2026 23:10:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mW69G6p3z3gc; Thu,  2 Apr 2026 23:10:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9D4F9406A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775171439;
	bh=CAvoYLvW68d1U+cPGr7Po8BAjlhkgT7fcwSzz+LnFBM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PZH6asQ7MA2VWDUzbPR/G6v5EwRo1HQenvoMMPtHY6g8ZA0WeJWko1W4z+tl9qHV9
	 k6Q/G7pOPMZPKDujhfKRN2sXZvCxMpPRmfFRvi+WhX9GgVJ8TIgWHk0H+uQRaippS/
	 knA1YySSA4iLOmiItKp9nV+xvgB0YIRGYRcQMGcbHPinmOFu2qIiNodqL5jz5ziiTQ
	 w7AvYOAxjItlXs9VllEZaauHUKaVDfetZRQvwLkL3TIMvjzxHrsDzxi55eIoHSvhq/
	 /stq/a/I02UHCeNKsNDNBF/3wulmW/HkF5znvrku7fZaPpMAmU7iWf/ZEMbGPnCr21
	 8l0oIc3fE8fPQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9D4F9406A7;
	Thu,  2 Apr 2026 23:10:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2091F2CC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2026 23:10:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 11C096080A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2026 23:10:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SSdmzjryTrMl for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Apr 2026 23:10:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1C1B260664
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1C1B260664
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1C1B260664
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2026 23:10:36 +0000 (UTC)
X-CSE-ConnectionGUID: 13I4zkeGSgyXgjlOC5mS6w==
X-CSE-MsgGUID: YfnDR+3TREOws7RuUPjhjw==
X-IronPort-AV: E=McAfee;i="6800,10657,11747"; a="76123102"
X-IronPort-AV: E=Sophos;i="6.23,156,1770624000"; d="scan'208";a="76123102"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 16:10:37 -0700
X-CSE-ConnectionGUID: zn4o8IXFSYeGhwfXaibKyg==
X-CSE-MsgGUID: 6rWA4cGyQMGl/Fmfwh3p9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,156,1770624000"; d="scan'208";a="227044442"
Received: from gklab-003-001.igk.intel.com ([10.91.173.48])
 by orviesa008.jf.intel.com with ESMTP; 02 Apr 2026 16:10:33 -0700
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: netdev@vger.kernel.org
Date: Fri,  3 Apr 2026 01:06:22 +0200
Message-Id: <20260402230626.3826719-5-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20260402230626.3826719-1-grzegorz.nitka@intel.com>
References: <20260402230626.3826719-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775171437; x=1806707437;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Izbqb6M5jnyKGkCx6C0FAG3R4OV2Dm01nNdm0f5hBzY=;
 b=ZpbKuyumb/TKQUgNqoZ5ATmeq/0SzabKU3gHna8aV253xRIwP7sjp6we
 AKRMACBFzDsBgbX+vBP8zDjacWlMwRZvy/6Plj+xYuKnaZ8UKmn1yXFsc
 D0VrLP9MsgHKfxL3eyK7hscMx6f2sPDkXB72XGGedteySw1qlzSXbMZW+
 0KtPgLSDvnJAam6Pe3xPr+U+Fx587SiCSmZaLPRGpcYzcwWLtZizcPHcI
 IzFL1o1cDcC9RDw/nz0PybbON4ZGwnjTLE+mkwpANsh/WhJMVynjYw5mD
 vSdjU5MtC+1G042O4JMeqUkoE6Gd7GKXspiZaMtM5xGccAVBRrBmL2tGe
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZpbKuyum
Subject: [Intel-wired-lan] [PATCH v5 net-next 4/8] dpll: zl3073x: allow
 SyncE_Ref pin state change
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
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, andrew+netdev@lunn.ch,
 intel-wired-lan@lists.osuosl.org, horms@kernel.org,
 Prathosh.Satish@microchip.com, anthony.l.nguyen@intel.com, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B763938F05C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The SyncE_Ref pin may operate as either an active or inactive reference
depending on board design and system configuration. Some platforms need
to disable the SyncE reference dynamically (e.g., when selecting a
different recovered clock input). The hardware supports toggling this
pin, therefore advertise the STATE_CAN_CHANGE capability.

Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
---
 drivers/dpll/zl3073x/prop.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/dpll/zl3073x/prop.c b/drivers/dpll/zl3073x/prop.c
index ac9d41d0f978..acd7061a741a 100644
--- a/drivers/dpll/zl3073x/prop.c
+++ b/drivers/dpll/zl3073x/prop.c
@@ -215,6 +215,15 @@ struct zl3073x_pin_props *zl3073x_pin_props_get(struct zl3073x_dev *zldev,
 
 		props->dpll_props.type = DPLL_PIN_TYPE_GNSS;
 
+	       /*
+		* The SyncE_Ref pin supports enabling/disabling dynamically.
+		* Some platforms may choose to expose this through firmware
+		* configuration later. For now, advertise this capability
+		* universally since the hardware allows state toggling.
+		*/
+		props->dpll_props.capabilities |=
+			DPLL_PIN_CAPABILITIES_STATE_CAN_CHANGE;
+
 		/* The output pin phase adjustment granularity equals half of
 		 * the synth frequency count.
 		 */
-- 
2.39.3

