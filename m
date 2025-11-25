Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F312C83FFD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Nov 2025 09:35:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0AD4C60EE6;
	Tue, 25 Nov 2025 08:35:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pE9uAZf-PBhP; Tue, 25 Nov 2025 08:35:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7CCB360E24
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764059709;
	bh=gzjyMWXAqy1efKjEZ79cDLmRD2G9eH8JJ0FfX22o19w=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=g6EpFwwxEafaNqJSOalT+wf8GaFx+ePQ/15vsshAnz6cLMaASR7HqmHxg/cz31Mag
	 /0zTEv1lHxqFjOH6toE8kUX4i+OWmM63hxzCmMUFmHfmeewpM8LbnJKqsHvlYMDh3N
	 +lreobgToK+1P11G6qKlkCb07wKmNEGByg5ZOfVCKf8XU77TaRiT1ZtNQ8g2tROtPp
	 AXu4FWxVyFvdZSqvYxSf4zOjQA2Or1k+gZ9Dg6ylVyt6I5Oyu55CUlKWPnJuJF7S/0
	 qS6wrZgKLJz3jNVrp0z8reQOb3fmY1NBgmWS8z521BXH88EwRgBEGB9Y7qkYbJZjP6
	 KozANYu9f6PxA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7CCB360E24;
	Tue, 25 Nov 2025 08:35:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8F019E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 08:35:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 75B5D4051A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 08:35:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C3meb1OzFQUd for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Nov 2025 08:35:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=jakub.slepecki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 72DCE40590
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 72DCE40590
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 72DCE40590
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 08:35:06 +0000 (UTC)
X-CSE-ConnectionGUID: 3BB/RcjpTbSBJ/ZqEtaRvA==
X-CSE-MsgGUID: zuoG3ReDSVmdr/LvnYjO9w==
X-IronPort-AV: E=McAfee;i="6800,10657,11623"; a="76694444"
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="76694444"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 00:35:06 -0800
X-CSE-ConnectionGUID: XUgbbGsWTuqMLHvT5UsbZw==
X-CSE-MsgGUID: Gy/QTL77R6CVUSZnlQnqHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="196749828"
Received: from hpe-dl385gen10.igk.intel.com ([10.91.240.117])
 by orviesa003.jf.intel.com with ESMTP; 25 Nov 2025 00:35:05 -0800
From: Jakub Slepecki <jakub.slepecki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 michal.swiatkowski@linux.intel.com, jakub.slepecki@intel.com,
 aleksandr.loktionov@intel.com
Date: Tue, 25 Nov 2025 09:34:51 +0100
Message-ID: <20251125083456.28822-4-jakub.slepecki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251125083456.28822-1-jakub.slepecki@intel.com>
References: <20251125083456.28822-1-jakub.slepecki@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764059706; x=1795595706;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xUpDawPFLzKaHHNYiJdKNStCKkCfTxKkZDCKX4yXwnA=;
 b=PRxf9QBbUgq/Gd6DMBpeiiSeYramYnyPr9quU3r6L1uLnf8suPBY0lEv
 lx/loZABLSbG1m/Vw/+mo0hbOmGtM3Wq+LsOvEC2TvLIIZMfbMsZzlW9U
 Sfs4EjEvkhCL2+x4LYkQARKIL0sxN6Ciw4JMHVDIDgVFZhptEYx7LCwDx
 2gi/cFnWIAY2B2jMprFzJnxTBu3/Bx5Vegr+XrdsK7x9ccWD57zYtdaeK
 4BS5uAL5nNztIRFN8WQawXvi5ZvHSqvFZ0oehgL36CefpDGfetjLWhjF5
 J1R+OOMS9ennTOqG+djGt0tQna2DQkk/jXL5c0P6n90saMHWqtEPE4aww
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PRxf9QBb
Subject: [Intel-wired-lan] [PATCH iwl-next v2 3/8] ice: do not check for
 zero mac when creating mac filters
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

A zero MAC address was considered a special case while creating a new
MAC filter.  There is no particular reason for that other than the fact
that the union containing it was assumed to be zeroed out.  Now, address
is pulled out of the union by ice_fltr_mac_address which checks all of
the previously assumed zero-address cases and returns an error if they
are hit.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Jakub Slepecki <jakub.slepecki@intel.com>

---
No changes in v2.
---
 drivers/net/ethernet/intel/ice/ice_switch.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 0275e2910c6b..04e5d653efce 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -3648,7 +3648,7 @@ int ice_add_mac(struct ice_hw *hw, struct list_head *m_list)
 		u16 hw_vsi_id;
 
 		err = ice_fltr_mac_address(addr, &m_list_itr->fltr_info);
-		if (err || is_zero_ether_addr(addr))
+		if (err)
 			return -EINVAL;
 		m_list_itr->fltr_info.flag = ICE_FLTR_TX;
 		vsi_handle = m_list_itr->fltr_info.vsi_handle;
-- 
2.43.0

