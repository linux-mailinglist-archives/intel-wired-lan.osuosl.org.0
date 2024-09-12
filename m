Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4729A97650B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Sep 2024 10:58:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 81D1F60796;
	Thu, 12 Sep 2024 08:58:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 65iiZElnHHmJ; Thu, 12 Sep 2024 08:58:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CCF71607BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726131533;
	bh=qZBhMoipKrNDtHPpwsmve9a+kHMPzrpT+EqRAdFD2yM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=GBf6oMunnjia3nQ6tlk4841g1jsp7Bjyd/LzCCU8b+niQs1Uz1qvlPfO9i2Nc/Rfa
	 f1aDsfm1OVDPRqfo6zSmEzmQferAhTYTisfD53nFHegMdFKaDi/l372u0hLlMYcR5S
	 yC6VBphJMf1b+nAF1oLbsEto8BWP+iWeGAH7Z6hXSoIBhksBpj985GxliMlDqLino3
	 BSKIHORRyZvZjEfGvjW+CCWJzIfvAJhhyVReLQemRrXJogDhBmPa/dCgTBnqz+pVcX
	 uUXPw6to15N73nTOHHIIniSoiAJlHDkAVA6wIvfVho+cRcsJlrg6rcyzpZcApCeDuT
	 axpdftek7I8IQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CCF71607BA;
	Thu, 12 Sep 2024 08:58:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EE1011BF2C0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2024 08:58:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E86A9400AC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2024 08:58:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EW9NBKlI_hH3 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Sep 2024 08:58:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D199740021
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D199740021
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D199740021
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2024 08:58:50 +0000 (UTC)
X-CSE-ConnectionGUID: PoyDus/VQtmmMhYfl8RRRA==
X-CSE-MsgGUID: FflZFxDXTCq4wTL5wsQJ0A==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="25119464"
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="25119464"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 01:58:50 -0700
X-CSE-ConnectionGUID: m5s//V5qQnmIhUfNEYnMww==
X-CSE-MsgGUID: +AFsBWgKQFabCbFcVXyHxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="98466938"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by fmviesa001.fm.intel.com with ESMTP; 12 Sep 2024 01:58:49 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 12 Sep 2024 10:54:28 +0200
Message-Id: <20240912085428.686314-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726131531; x=1757667531;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=13qXrBLYmnJ4DaRkkbrKpvkw/UQDBSZUt6KUeIUU6hY=;
 b=aVQDyEIYcVakhPk3CWVWS0tke9lASLqLgHsOOWnKTBSPXvfC8voCsNIz
 GylHh/cIhJ0JrL/QrkpkiRPQIuYBxPKFSRqiCFb49nox2bUPJetJpdGDY
 GKkAvyCCMz61mnWBbpE6IwbCunVdakhrV6cJKWUCqeVeiJXX7uy9HFIke
 s0UKzrKX6eFdM3aHE/r5cUjfEdzDwiM107+3G/ijmoVGuh6gyGTY//xy4
 kcJPeAzBXCWlRrTDRvv3EkUQecBLYXLTkbD5Sm+n/ppTMKFi31RnX2Wyq
 cqAIdySXomu/fPw9WoMndPnbCyoAVDQqRFfDyrxoCB5NnjiPsswukrvj0
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aVQDyEIY
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: disallow
 DPLL_PIN_STATE_SELECTABLE for dpll output pins
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
 Paul Menzel <pmenzel@molgen.mpg.de>,
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
Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
v2:
- use more explicit commit title
- add empty line between commit message paragraphs
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

