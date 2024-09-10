Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE6A97466F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Sep 2024 01:32:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3EC6C81184;
	Tue, 10 Sep 2024 23:32:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lb9eMS9NkGlx; Tue, 10 Sep 2024 23:32:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9528981183
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726011153;
	bh=KD7hv7HYwYfPRhvM2NIz23WJDEFa0kPbrj720lsXFeM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=OnFwPqQgVGZFi4Z+8ePkTaVIp0jq38AhxkVQ75gUkEfG7l6ev3QvWnS5TezBVeb+2
	 cM6jfKZ5sKt8wHzAGS+IceNBb/ng79xQcahbow2oR86uhOXMzDBbrwrRlssyvB/ViV
	 jp3GPHSP7yWODJyNP60Oxp/Rw1d8S/ZwdnZIe1DSTMAbVc8yxLJ2+E65O5tn0CcVo2
	 8oCbBc8CetgWWSN2cInf9HD3j4p8jy2b/83Bqfz89TXWcdO2sY6cSuf/TAtgzxUULK
	 owR+1ls415dbnDDUQsQSBm1ki1wkZBxt/NP+BUkAUkCkJh8D9Xhf8R6BCtUtkanHKu
	 vCw5Ci2bU+czA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9528981183;
	Tue, 10 Sep 2024 23:32:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 64B721BF30A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Sep 2024 23:32:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5F70480FFB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Sep 2024 23:32:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7R107vgyVp7s for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Sep 2024 23:32:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8572680EE8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8572680EE8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8572680EE8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Sep 2024 23:32:31 +0000 (UTC)
X-CSE-ConnectionGUID: jrRHmKFDTeOIIu9e5NE3sA==
X-CSE-MsgGUID: yRxXLKjARSGHYWNqnvVjRg==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="36142829"
X-IronPort-AV: E=Sophos;i="6.10,218,1719903600"; d="scan'208";a="36142829"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 16:32:31 -0700
X-CSE-ConnectionGUID: 1ar8nCkhRkWe1burXd631Q==
X-CSE-MsgGUID: lzCShbolR4ytYiXJa4ziIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,218,1719903600"; d="scan'208";a="90462385"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by fmviesa002.fm.intel.com with ESMTP; 10 Sep 2024 16:32:29 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 11 Sep 2024 01:28:07 +0200
Message-Id: <20240910232807.675214-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726011152; x=1757547152;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3KGKUD+sujE2Ro5IRDlIRwswtR4I76x+Wg/XhNAg45Q=;
 b=E6PRkNAEieBO32TehFrwG57vpS2m8JIkVwh0+lWvFrz4jyu+E0IzTe7/
 ZalJ+5Le5rbu7/MzCNYRSjl8WVV9kImLedvLDn8avGRfDIc/kAFwblA9M
 zJBhZQwD1Fi6/Ew/i3JUnxZb1qfapGatmywAXVZZSbhQt9IW+Y53+kw1R
 0NfO7o86Oble69sYKCg7I2j2ZdRDkRIm8Wo4GgAkm67VXA4jkatP0Nx40
 TPaQifTTSRorMPhdZaZJDcMYMkfIBAupQlE0lpE3JbhZIazsZ8uvdORvg
 2TkHUEFLSH32TZGP09GgBoayIg3QA0nbdY0ibRlQjyRQhG1MSeFJ3p8l5
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=E6PRkNAE
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix dpll output pin
 configuration
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently the user may request DPLL_PIN_STATE_SELECTABLE for an output
pin, and this would actually set the DISCONNECTED state instead.
It doesn't make any sense. SELECTABLE is valid only in case of input pins
(on AUTOMATIC type dpll), where dpll itself would select best valid input.
For the output pin only CONNECTED/DISCONNECTED are expected.

Fixes: d7999f5ea64b ("ice: implement dpll interface to control cgu")
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dpll.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index e92be6f130a3..3d20c3b232aa 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
@@ -651,6 +651,8 @@ ice_dpll_output_state_set(const struct dpll_pin *pin, void *pin_priv,
 	struct ice_dpll_pin *p = pin_priv;
 	struct ice_dpll *d = dpll_priv;
 
+	if (state == DPLL_PIN_STATE_SELECTABLE)
+		return -EINVAL;
 	if (!enable && p->state[d->dpll_idx] == DPLL_PIN_STATE_DISCONNECTED)
 		return 0;
 
-- 
2.38.1

