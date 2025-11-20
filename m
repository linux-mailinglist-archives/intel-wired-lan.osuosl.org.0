Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 499DAC757DB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Nov 2025 17:57:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3843D8480E;
	Thu, 20 Nov 2025 16:57:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jXzrkLURBPNE; Thu, 20 Nov 2025 16:57:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A8A5C847F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763657870;
	bh=fodBAzxa/en2npRAxTK5CUZZroCvjfNHROlIA5ZdvXk=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NmTEXHqTJFWkBZTl3F0ZcBSiYyf2T50ak0QOfErShx6OVuawaLdpRUa/cVDo08FmH
	 Rp5Lc1Amsg304qAAFU51j+48WIE5zyJxdYbE8zqTJ4abUCdsVP8AZFGYQw0BY4EOpR
	 ExWBRbj/W2PLesoEbu3+OvJ1A8NNOl1qdC+TLiV1R05wMRBCbC9Nj72JZc3h3d/mDE
	 8roWb5mflDqo53NbPYiACVQ7P7q5F/ksKn9vL270R0z4De8tdtzjwynPQlBif3Uqh/
	 37rwP20aKZ1/zOVDJfU1ikHINB0m1ffUzkZ1ylpm5FjwQq7QfPvSSClBjvxMqi9zoS
	 dqhcs8b1eXd7A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A8A5C847F5;
	Thu, 20 Nov 2025 16:57:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id CA695158
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 16:28:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C8C696125B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 16:28:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vrPXLUeQVtTY for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Nov 2025 16:28:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=jakub.slepecki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CC67461073
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CC67461073
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CC67461073
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 16:28:22 +0000 (UTC)
X-CSE-ConnectionGUID: ytMIu3+6S9yhhf5Jim02Ww==
X-CSE-MsgGUID: lGHDCCCBTcWuaYwdKdnKkg==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="69599296"
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="69599296"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 08:28:22 -0800
X-CSE-ConnectionGUID: CWRQ7mu5QoalPH489aGJlg==
X-CSE-MsgGUID: 1MwQ0+q8QB6T/ylMquaRkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="191531288"
Received: from hpe-dl385gen10.igk.intel.com ([10.91.240.117])
 by orviesa008.jf.intel.com with ESMTP; 20 Nov 2025 08:28:21 -0800
From: Jakub Slepecki <jakub.slepecki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 michal.swiatkowski@linux.intel.com, jakub.slepecki@intel.com
Date: Thu, 20 Nov 2025 17:28:08 +0100
Message-ID: <20251120162813.37942-4-jakub.slepecki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251120162813.37942-1-jakub.slepecki@intel.com>
References: <20251120162813.37942-1-jakub.slepecki@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 20 Nov 2025 16:57:47 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763656103; x=1795192103;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yNUqfimTfWaJ6b/2VGkU2qDZPeNFpXbHnaViLdbaEHo=;
 b=h8fWQRZorWm3/7w+A11PBr3GPyH+FsXjf/FXSsiAbAb5Lv643QIEhUr7
 qsgeGhapWhzat/kj0j7aE/T3YY5Nli80T4gdYUQvhK8Bh6rMSrkrJFSsh
 pI4fgN/ze4MCWBpuLCd1DUOFbGLK3Gk2ICBcNruJdDKhf2/BzxHUCBQ34
 OW5jbEemFi12AXnUzgNThZK3sue7p0er0YXAJduVLYbX2R7QYrtXUaIZo
 24tvz9lRTzrdCRZlgjugzLJVHfus1D4DQmA1fesS74xheDUcs/ZKcynVM
 8fJyVP6v3OJToRzKtBZXUc5X8eVrrMY6jR1QS0aM4vVjpTO+Ykb7r8NLp
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=h8fWQRZo
Subject: [Intel-wired-lan] [PATCH iwl-next 3/8] ice: do not check for zero
 mac when creating mac filters
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

