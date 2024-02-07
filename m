Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 47E5084CED1
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Feb 2024 17:23:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6FAC783C16;
	Wed,  7 Feb 2024 16:23:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2POOCALTnCoA; Wed,  7 Feb 2024 16:22:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A0F0D83C1A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707322979;
	bh=1o3SfbPjg92P+4o/3BGiDRPoWj5/Pb14n/g69a91+0E=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zyEv2HrxBIxqqB97kQluWtFvFjZTWsS5LCCbZGF6aehJTsfiQv1TWAhOlJ3iAtwJV
	 iMu/0SrbxPswWV47I2Ux6zwJi9gDVSbRBT8++kIDc43qhDmHzFTqu1x1dNkDktHoGy
	 9nS69fkZNXPR7FfVVmVk28nCO4OnmyJHU09rRmsdNFvW68ZDRmVaiXMvefEs787udj
	 gvKrcaKkB19sgoP6RDvOkPHLy2/x/NPv2hyX/lMQ0bPP+8aBbt7IKQ2ZkJH6JCNFRu
	 6HYIb01Qk0bt4CSXxS9xEr5OmzFQxdHbMPAjt2I386iJdXylhTD/ErqJHauBzTeC+M
	 RXg0I8jnyuacQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A0F0D83C1A;
	Wed,  7 Feb 2024 16:22:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6FA761BF3DF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 16:22:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5BD174019D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 16:22:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bK1K1yhyoPqk for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Feb 2024 16:22:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5F7F1400CB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5F7F1400CB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5F7F1400CB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 16:22:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10977"; a="12109125"
X-IronPort-AV: E=Sophos;i="6.05,251,1701158400"; d="scan'208";a="12109125"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2024 08:22:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,251,1701158400"; d="scan'208";a="32183230"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orviesa002.jf.intel.com with ESMTP; 07 Feb 2024 08:22:51 -0800
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  7 Feb 2024 17:19:23 +0100
Message-Id: <20240207161923.710014-4-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240207161923.710014-1-arkadiusz.kubalewski@intel.com>
References: <20240207161923.710014-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707322973; x=1738858973;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3LIKD0rJNhDfjgGbbfvQB1ky8MWD/GIcZTd1Ct6TrVA=;
 b=U4lfocFw7I6GI6YmpV7paL2V0bdOh7r8Y26dBpzngZaWdgbCNVZT6A5P
 yARA1aP5pbxccP6o3nu1yJHqqYQEdivrIgRJVfEG+5KM4hwBx4G64mzpm
 F25ewwt86FG0F2bi1Mda1YlZiFYcQApDXJDwimnXlq4+wiaBJUGZdUfRf
 G9gHabzCSKaqYTEZ11Td76/trXASfEqUnbOKjtllVXbWirQalObr4JGGg
 HVPmXUm5NVmz6+co7jPeLXL4rELbMGx91xcQBY3N6T6AAedxxJREW68ye
 lwG8l11ySLN1Wziq5LyQkT5AewDUitEB1Oew6Y9+cj/mNmazHsEVfzUYF
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=U4lfocFw
Subject: [Intel-wired-lan] [PATCH iwl-net 3/3] ice: fix pin phase adjust
 updates on PF reset
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
Cc: Igor Bagnucki <igor.bagnucki@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Do not allow to set phase adjust value for a pin if PF reset is in
progress, this would cause confusing netlink extack errors as the firmware
cannot process the request properly during the reset time.

Return (-EBUSY) and report extack error for the user who tries configure
pin phase adjust during the reset time.

Test by looping execution of below steps until netlink error appears:
- perform PF reset
$ echo 1 > /sys/class/net/<ice PF>/device/reset
- change pin phase adjust value:
$ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/dpll.yaml \
	--do pin-set --json '{"id":0, "phase-adjust":1000}'

Fixes: 90e1c90750d7 ("ice: dpll: implement phase related callbacks")
Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dpll.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index c102535d23db..54d13c0e4151 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
@@ -963,6 +963,9 @@ ice_dpll_pin_phase_adjust_set(const struct dpll_pin *pin, void *pin_priv,
 	u8 flag, flags_en = 0;
 	int ret;
 
+	if (ice_dpll_is_reset(pf, extack))
+		return -EBUSY;
+
 	mutex_lock(&pf->dplls.lock);
 	switch (type) {
 	case ICE_DPLL_PIN_TYPE_INPUT:
-- 
2.38.1

