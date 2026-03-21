Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6OvkGRIcv2kZuwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Mar 2026 23:30:42 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B842E76FE
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Mar 2026 23:30:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B3CDE41D34;
	Sat, 21 Mar 2026 22:30:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bE5KoPnoGJYa; Sat, 21 Mar 2026 22:30:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3123B41F6C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774132235;
	bh=CAvoYLvW68d1U+cPGr7Po8BAjlhkgT7fcwSzz+LnFBM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WvYzpDGX8CSxh0t2vpUi0QakwnSSRAxE2B7huF0ihpdpp82fyeDnBOz6Vft5EAXSe
	 wPQsdYVGU+aE+AcCKBYy096hNn4ZLIyv6Oi54fYESeRFNUJ/Xw09jFDyEq32QHd09y
	 6TN3Y72jAHa4eoIdYy0krBPqa6vtltDPkgU3JD5tlrn8+j41EPZjsvfH4tH+KLvjBJ
	 K7pL8VGaj4McdIvEu8D6BwwwLT3/ggW9/wVMRyYuivlwcfMMBXjjMTFbLLG+U3lcdf
	 R8kcg4ItYDFsaDcJmkG7VvDy++1hmA3DR3KsAKBOYf66IF6J8u1LTTU/i2QgNkTbGY
	 3hmeMyH/Xu41g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3123B41F6C;
	Sat, 21 Mar 2026 22:30:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 955A3265
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Mar 2026 22:30:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 86DE141F6C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Mar 2026 22:30:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rpI4sy7VZ_p6 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Mar 2026 22:30:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8B6B541F2D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8B6B541F2D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8B6B541F2D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Mar 2026 22:30:32 +0000 (UTC)
X-CSE-ConnectionGUID: r8dBecpoSdqLAoqQ3dFq3Q==
X-CSE-MsgGUID: 08eY7iFERbWrURmfDi5bDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11736"; a="75150426"
X-IronPort-AV: E=Sophos;i="6.23,134,1770624000"; d="scan'208";a="75150426"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2026 15:30:32 -0700
X-CSE-ConnectionGUID: /ayHjL5XS42qSsaPwo7RLg==
X-CSE-MsgGUID: 4xPuHQRNTuOjHNqaYaUdRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,134,1770624000"; d="scan'208";a="261543963"
Received: from gklab-003-001.igk.intel.com ([10.91.173.48])
 by orviesa001.jf.intel.com with ESMTP; 21 Mar 2026 15:30:28 -0700
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: netdev@vger.kernel.org
Date: Sat, 21 Mar 2026 23:26:23 +0100
Message-Id: <20260321222627.1193603-5-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20260321222627.1193603-1-grzegorz.nitka@intel.com>
References: <20260321222627.1193603-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774132232; x=1805668232;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Izbqb6M5jnyKGkCx6C0FAG3R4OV2Dm01nNdm0f5hBzY=;
 b=R/Uqwa/wzzMIHf8GPFjq73fydZDK5+xIN169yWdcr+lBmTWJntXcPLmL
 uVh3DOWMolqY8kPG16Q6pfclgeLnXixDS5VAj7r1EUgw5Aqg32qZ5b0P2
 nmLebMrE29I6Zh6W9vK2/bxelAcJ0xNtWk4qTg5G00C5wtxDW5zZ+4s0K
 TvdQld4U1q4ybho5tqczSm5wPTYY9hpO5ABz8fK0OSDjQTloTRXCJNaHh
 CEJYLNsTEiUKRVsnZ+1PtjGxUcenyypiJsekoV9yLbi1VO7sIxNOTl0Y6
 AZuno+BX1dPf/D/nbxRTCLU92IVJyO8Yxnkp50FLkob0vfetGjzbHUikj
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=R/Uqwa/w
Subject: [Intel-wired-lan] [PATCH v2 net-next 4/8] dpll: zl3073x: allow
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
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
X-Rspamd-Queue-Id: 30B842E76FE
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

