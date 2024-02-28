Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 579E486B447
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Feb 2024 17:11:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 04CC64173F;
	Wed, 28 Feb 2024 16:11:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rwRIZSSjAxyM; Wed, 28 Feb 2024 16:11:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E20040A7A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709136686;
	bh=7Pk5U//ZVPQPExQ9A4E0uQW+cR32sT/LD38cIH9X+2E=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nfwTs9NtkR7UU6hPq9sOipTG0J/4tdPUxMPbSbNZdMxw72FtczPMRwpJ7Rgcn7H8U
	 DRD4yX+98zhYKfJ2qffulJTw/WpeDVby6hW+oXKeKYWSj4DS1YyOlCWGICf23hiNiO
	 +Y1QSgOJnrEvA6i+0pG+3S7O2yH/bTOpZDl4N4itTB07kNtj7RVcO2eAaEx2flT2fu
	 HsLW4G7XncW5o47wMA1olR1cBq3m3NbCwtk+RMpWxuu18qMAOnqHq9rLMA3UWjiLa2
	 gtDDoZ2O1NSRHoZtTCK8AL2VTyznPFffmY3xUcNiPhJ0UBlbmln0Tyt4QyD18/5DoA
	 KK2iobzM2ysjg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E20040A7A;
	Wed, 28 Feb 2024 16:11:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E94BA1BF2B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:11:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D6ECF41497
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:11:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8YGV1ryCHTnE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Feb 2024 16:11:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DBB4240809
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DBB4240809
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DBB4240809
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:11:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10998"; a="3706598"
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; 
   d="scan'208";a="3706598"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 08:04:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; 
   d="scan'208";a="7527713"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa009.jf.intel.com with ESMTP; 28 Feb 2024 08:04:11 -0800
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id E397D36826;
 Wed, 28 Feb 2024 16:04:08 +0000 (GMT)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 28 Feb 2024 16:59:46 +0100
Message-ID: <20240228155957.408036-3-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240228155957.408036-1-larysa.zaremba@intel.com>
References: <20240228155957.408036-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709136681; x=1740672681;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=R61ecFgc4lXqLojo0yvyMnIKMCsRpjfsVyCvjTYWt2U=;
 b=c3W2qIbKfEj3j20byAXZ8W2+UjZEOIMJ8xfFyu5+J7ch5d3P8XawNaHZ
 ezavpc4zqyAsdSxnDEzqIyzxrwzm9cxkD/z0Jzq50YIsjbQtpDQ+ctsrl
 rFEnOqlMD1TE1b9nTIfAZ8DuMC/OtvKtCWNiI/61uPnTAN1UGu/3wEOn7
 coU06+Y/8yvy8DG9USONocLxEGj+UsTU31GFDk/WGuvHIRtTjEzW8kydg
 s3txNVn1zkZcgM4o1RYUf85bhx6nCu7Z+R+lboWHNsiJZiBcEWeYFiHc1
 hvkzCRd7pE73vPXzUp1fittRKXmF5TF1pG/Z8EUKVLNXO14rS3An7UBrQ
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=c3W2qIbK
Subject: [Intel-wired-lan] [PATCH iwl-net 2/5] ice: Fix check for existing
 switch rule
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
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 linux-kernel@vger.kernel.org, Jakub Buchocki <jakubx.buchocki@intel.com>,
 Pawel Chmielewski <pawel.chmielewski@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 "David S. Miller" <davem@davemloft.net>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Pawel Kaminski <pawel.kaminski@intel.com>,
 Mateusz Pacuszka <mateuszx.pacuszka@intel.com>,
 Lukasz Plachno <lukasz.plachno@intel.com>, Paolo Abeni <pabeni@redhat.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Mateusz Pacuszka <mateuszx.pacuszka@intel.com>

In case the rule already exists and another VSI wants to subscribe to it
new VSI list is being created and both VSIs are moved to it.
Currently, the check for already existing VSI with the same rule is done
based on fdw_id.hw_vsi_id, which applies only to LOOKUP_RX flag.
Change it to vsi_handle. This is software VSI ID, but it can be applied
here, because vsi_map itself is also based on it.

Additionally change return status in case the VSI already exists in the
VSI map to "Already exists". Such case should be handled by the caller.

Signed-off-by: Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_switch.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index f84bab80ca42..bf2ab2b6ef68 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -3004,7 +3004,7 @@ ice_add_update_vsi_list(struct ice_hw *hw,
 		u16 vsi_handle_arr[2];
 
 		/* A rule already exists with the new VSI being added */
-		if (cur_fltr->fwd_id.hw_vsi_id == new_fltr->fwd_id.hw_vsi_id)
+		if (cur_fltr->vsi_handle == new_fltr->vsi_handle)
 			return -EEXIST;
 
 		vsi_handle_arr[0] = cur_fltr->vsi_handle;
@@ -3052,7 +3052,7 @@ ice_add_update_vsi_list(struct ice_hw *hw,
 
 		/* A rule already exists with the new VSI being added */
 		if (test_bit(vsi_handle, m_entry->vsi_list_info->vsi_map))
-			return 0;
+			return -EEXIST;
 
 		/* Update the previously created VSI list set with
 		 * the new VSI ID passed in
-- 
2.43.0

