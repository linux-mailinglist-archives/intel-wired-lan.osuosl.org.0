Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CF2B784EBF2
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Feb 2024 23:59:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 06551614B9;
	Thu,  8 Feb 2024 22:59:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QFviZF5lr33S; Thu,  8 Feb 2024 22:59:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5556D6141E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707433189;
	bh=X11yl2lFGnMWWOf3M4nThlNZX2J/CVFdsBEsZmY/mCY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=MmTI3yTwb0diMO0ejfrAvg1fB4Vzoh4p6DsInMK7RLcP3kwNTFoq/0MV5Q5RYkCrL
	 meG0JUo1hwf0rmT0rHxPW2f3c/K+jJDPCEqiQ0f5TOjSVUgE2wo1efPDwyunls1klp
	 PPU/gKoQHZYy5VJdFn80O7rzjPPr5XzvjAcgBWazBDfJoxecHQZMqSOCY3RyuUx2j3
	 /dun4YnWvSqKXPU6l42LGjktqhSZmGW11c+yoGn6DkmpW3t8cyDEkUzgv1IqZBOCyx
	 fJ2WAnuB60OfiGXTQV3OcipSTZRO/iBSOvSZUlfhjHEuscMvQTeRGIBYNqHpMapffs
	 8jQTJxW7DwDlg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5556D6141E;
	Thu,  8 Feb 2024 22:59:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8AA5A1BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 22:59:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 723A560BEF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 22:59:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bzsy5jFk1D9j for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Feb 2024 22:59:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8A88F60AE5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8A88F60AE5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8A88F60AE5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 22:59:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="5130894"
X-IronPort-AV: E=Sophos;i="6.05,255,1701158400"; 
   d="scan'208";a="5130894"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2024 14:59:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,255,1701158400"; 
   d="scan'208";a="6443463"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by fmviesa005.fm.intel.com with ESMTP; 08 Feb 2024 14:59:44 -0800
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  8 Feb 2024 23:56:31 +0100
Message-Id: <20240208225631.725970-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707433187; x=1738969187;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=g+ZfBUg/YsR8iEVbYOwbDqx4z2lCiyvYu/zbXu1HqdU=;
 b=YC8AFG3jaNpJn0O9QzJq1/wzXpAPnCsJHKGdLo/pBCr8G8XiavLps2Bb
 83vTQYZvqjy8EH8wd3rpjgm++DrNJjALk+zVMb86hDS/6fnMNJWi2fIGC
 vk2P8aYyEjBt8tF90Ecdc2x0tSp4S/f7Krp0+l76B8VAcAW6mhpW9BObD
 AzmWsd1OxczyfN0dHijq3Bg+h/1qZy9VxnulsESv6w09pk0jqv+4fxYOr
 T5Jw91aejcjdWazMq6Sg6mEC0toIRg5hyFzuMjr/3XpPVhTAc9Pkt4SwD
 xBjDjYBTesnxE2BZBHtw95yxXqRlZCucYKlJJT6f5vAcr+WABN1SP6R+V
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YC8AFG3j
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix dpll input pin
 phase_adjust value updates
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
Cc: Alan Brady <alan.brady@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The value of phase_adjust for input pin shall be updated in
ice_dpll_pin_state_update(..). Fix by adding proper argument to the
firmware query function call - a pin's struct field pointer where the
phase_adjust value during driver runtime is stored.

Previously the phase_adjust used to misinform user about actual
phase_adjust value. I.e., if phase_adjust was set to a non zero value and
if driver was reloaded, the user would see the value equal 0, which is
not correct - the actual value is equal to value set before driver reload.

Fixes: 90e1c90750d7 ("ice: dpll: implement phase related callbacks")
Reviewed-by: Alan Brady <alan.brady@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dpll.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index 9c0d739be1e9..2beaeb9c336d 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
@@ -373,7 +373,7 @@ ice_dpll_pin_state_update(struct ice_pf *pf, struct ice_dpll_pin *pin,
 	case ICE_DPLL_PIN_TYPE_INPUT:
 		ret = ice_aq_get_input_pin_cfg(&pf->hw, pin->idx, NULL, NULL,
 					       NULL, &pin->flags[0],
-					       &pin->freq, NULL);
+					       &pin->freq, &pin->phase_adjust);
 		if (ret)
 			goto err;
 		if (ICE_AQC_GET_CGU_IN_CFG_FLG2_INPUT_EN & pin->flags[0]) {
-- 
2.38.1

