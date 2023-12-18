Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA2F817490
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Dec 2023 16:01:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 59E938214C;
	Mon, 18 Dec 2023 15:01:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 59E938214C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702911710;
	bh=GTw0/T12ENXoeGze8dGLHANH3Xayux/YwLd8w6czwRU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=n4KnBm0BjX7xuyoPwNHi8LbKDyqYVB/MHmAFLsdrberGPYmirlw7NKglW7wufh12P
	 9gP4KGPFv0EOIArLH4jXeyLM1mQoMuo7gewCl9WzJoC331UTNy7FhoZsGASKh//gKE
	 U6NNTEm24cI3CYPHOV4FTRWyVPO/VIYJQB0Tcs1y0G4QefwhdfxOAd0fN3GqPHgwZb
	 3H4cC+BGN1FcVwB1Zsy3k71IkwazaSsKub1Hk4Sxy3Hy08T9a0hzh+lEKjPhw1oR9K
	 BRk6rU3Esmx1gpWDPLoL9GcMtfD35VnN6RBj9i4jg87jB0ZJlyIn7opABXLOuxM+ii
	 2SKPuWbadtZnQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rOUMD4dJ0QgG; Mon, 18 Dec 2023 15:01:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 254A481E4F;
	Mon, 18 Dec 2023 15:01:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 254A481E4F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BF5971BF8C7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 15:01:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 90F3981E4F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 15:01:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 90F3981E4F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yc5cwQmaxYQS for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Dec 2023 15:01:43 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 367CD81DEE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 15:01:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 367CD81DEE
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="17075328"
X-IronPort-AV: E=Sophos;i="6.04,285,1695711600"; d="scan'208";a="17075328"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 07:01:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="866246869"
X-IronPort-AV: E=Sophos;i="6.04,285,1695711600"; d="scan'208";a="866246869"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by FMSMGA003.fm.intel.com with ESMTP; 18 Dec 2023 07:01:39 -0800
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 18 Dec 2023 15:58:55 +0100
Message-Id: <20231218145855.3605898-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702911703; x=1734447703;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=L4q++zZz5JOkzB2M2UIa3mKzgoQNAw8gDxXL+RyJ2WA=;
 b=nmFJeSrHgevc/FWN6ABtqA9BAps594q4AIa541oYqRlBQBTcbpM2xvwu
 oNGGjEDrepne4p4dOPQ3sjEwl7HDLq+fMzIkvGXm/hG2AtP6kaOmVNMUf
 OuS1Xbm0J9vmwLpH10fgEKU2+ogZj7ed70EqjmepiKO2vRc3tEaEiX9sH
 AGMI1krmmouty7CjdXVElfNpna9Bu8AqGiJuNPYE+fLmPgoa7uxb09JFt
 5vYU4CQaJcyW0e/V5BHaSJq6fJadlqA2UcX/Ho6JrcPQ6D9wEzDvUB6Up
 E47XrQL2mYqmUk4uJ4d5a21U2CndB23k2Z+Dlh5bt/0+uyLP5T/uPUePz
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nmFJeSrH
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: dpll: fix phase offset
 value
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
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Stop dividing the phase_offset value received from firmware. This fault
is present since the initial implementation.
The phase_offset value received from firmware is in 0.01ps resolution.
Dpll subsystem is using the value in 0.001ps, raw value is adjusted
before providing it to the user.

The user can observe the value of phase offset with response to
`pin-get` netlink message of dpll subsystem for an active pin:
$ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/dpll.yaml \
	--do pin-get --json '{"id":2}'

Where example of correct response would be:
{'board-label': 'C827_0-RCLKA',
 'capabilities': 6,
 'clock-id': 4658613174691613800,
 'frequency': 1953125,
 'id': 2,
 'module-name': 'ice',
 'parent-device': [{'direction': 'input',
                    'parent-id': 6,
                    'phase-offset': -216839550,
                    'prio': 9,
                    'state': 'connected'},
                   {'direction': 'input',
                    'parent-id': 7,
                    'phase-offset': -42930,
                    'prio': 8,
                    'state': 'connected'}],
 'phase-adjust': 0,
 'phase-adjust-max': 16723,
 'phase-adjust-min': -16723,
 'type': 'mux'}

Provided phase-offset value (-42930) shall be divided by the user with
DPLL_PHASE_OFFSET_DIVIDER to get actual value of -42.930 ps.

Before the fix, the response was not correct:
{'board-label': 'C827_0-RCLKA',
 'capabilities': 6,
 'clock-id': 4658613174691613800,
 'frequency': 1953125,
 'id': 2,
 'module-name': 'ice',
 'parent-device': [{'direction': 'input',
                    'parent-id': 6,
                    'phase-offset': -216839,
                    'prio': 9,
                    'state': 'connected'},
                   {'direction': 'input',
                    'parent-id': 7,
                    'phase-offset': -42,
                    'prio': 8,
                    'state': 'connected'}],
 'phase-adjust': 0,
 'phase-adjust-max': 16723,
 'phase-adjust-min': -16723,
 'type': 'mux'}

Where phase-offset value (-42), after division
(DPLL_PHASE_OFFSET_DIVIDER) would be: -0.042 ps.

Fixes: 8a3a565ff210 ("ice: add admin commands to access cgu configuration")
Fixes: 90e1c90750d7 ("ice: dpll: implement phase related callbacks")
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 9a6c25f98632..edac34c796ce 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -5332,7 +5332,6 @@ ice_aq_get_cgu_dpll_status(struct ice_hw *hw, u8 dpll_num, u8 *ref_state,
 			   u8 *eec_mode)
 {
 	struct ice_aqc_get_cgu_dpll_status *cmd;
-	const s64 nsec_per_psec = 1000LL;
 	struct ice_aq_desc desc;
 	int status;
 
@@ -5348,8 +5347,7 @@ ice_aq_get_cgu_dpll_status(struct ice_hw *hw, u8 dpll_num, u8 *ref_state,
 		*phase_offset = le32_to_cpu(cmd->phase_offset_h);
 		*phase_offset <<= 32;
 		*phase_offset += le32_to_cpu(cmd->phase_offset_l);
-		*phase_offset = div64_s64(sign_extend64(*phase_offset, 47),
-					  nsec_per_psec);
+		*phase_offset = sign_extend64(*phase_offset, 47);
 		*eec_mode = cmd->eec_mode;
 	}
 
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
