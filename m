Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1774BC9F2F8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 03 Dec 2025 14:50:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9E96860AF9;
	Wed,  3 Dec 2025 13:50:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Wsw8iSbv3TWp; Wed,  3 Dec 2025 13:50:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB8C760B01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764769841;
	bh=cnpduqlsjNgydl7B9sYYmxtWAv6d/C2d7DwmHng6ums=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=srsgQT7lw+a3bfPg/ieY8ylSnPF4SLMWwvv9cypXKxoyPXnZi4r7Ph1Dxplaw4YOD
	 A7d5otYF0eCRQs1LLP9ApuAHq/AQyjXO41uq6OnuPwV4fTFtw6w8w2Ao/BK2bWA1hs
	 RIVCcFT5/pXeBmox+1gm1dzFzJOCStnE27X6DhlgonzKKU8pY5pgyql/eOZDenCpmn
	 /bRv68QSfaA3EEdIEhKJg3YpaI0eoyAHHhfV0/7rJs9fp13/5hs3FvICx1nfHRyW/r
	 hdj6571OfznI1BFjeID6DjMHdj63WPeIq0G22wEI++5mX7cJJBa+idcVpM3zevmj/A
	 GAN9gLeSWD+KQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AB8C760B01;
	Wed,  3 Dec 2025 13:50:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6E37FE4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Dec 2025 13:50:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4C6E841153
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Dec 2025 13:50:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2IPpQdxS-rwm for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Dec 2025 13:50:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4AF0741129
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4AF0741129
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4AF0741129
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Dec 2025 13:50:37 +0000 (UTC)
X-CSE-ConnectionGUID: e3FMB+P3R3ygn3KGKd+v4Q==
X-CSE-MsgGUID: mltWC0pRSuSYEcFJmVO6tw==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="78226130"
X-IronPort-AV: E=Sophos;i="6.20,246,1758610800"; d="scan'208";a="78226130"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 05:50:37 -0800
X-CSE-ConnectionGUID: hoeT8WcUQ76Br1aw4cG2uA==
X-CSE-MsgGUID: alym2E/qQImeki8Jix/smg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,246,1758610800"; d="scan'208";a="193959474"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa010.jf.intel.com with ESMTP; 03 Dec 2025 05:50:34 -0800
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 6D50337E31;
 Wed,  3 Dec 2025 13:50:32 +0000 (GMT)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: Larysa Zaremba <larysa.zaremba@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Wed,  3 Dec 2025 14:29:48 +0100
Message-ID: <20251203132949.325245-1-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764769838; x=1796305838;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=h9M9nant/ybWqUHk1UdyR584/OSsbCdHhcxyRuMhARs=;
 b=fDZGk7k/3EJH6KtXIcGYuZ46G/NI1E4Yk8imoWuaheaGdtHyRcbWiWr3
 ErQzHDT+oCsHDhiEJ2UsdZL/GyKNaCNEpO0YIwO0CEOfjodc7d4baRZ0D
 jkRK6BymJ8hVnSIPEE1iznl1IYhVkpi0s37S9Cn3J8OWsWpFycQ1k4kUE
 uHJVQ7HwdNO/oL01TS5uolWHaLBBzkzrjPcUeQxfd0MvT10/wETu6Y4Cf
 /nhEZ5K+VZrsgW4ww0d9OB26en/p8vvPaAtJYAQfRqMLJlygo+gMmPS74
 sbPI65Fe+PTpt1ukH2MBBlCOD8tDeGKMa7yhaJXCLhsBeLBZaPtsffUCT
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fDZGk7k/
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix adding AQ LLDP filter
 for VF
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

The referenced commit came from a misunderstanding of the FW LLDP filter
AQ (Admin Queue) command due to the error in the internal documentation.
Contrary to the assumptions in the original commit, VFs can be added and
deleted from this filter without any problems. Introduced dev_info message
proved to be useful, so reverting the whole commit does not make sense.

Without this fix, trusted VFs do not receive LLDP traffic, if there is an
AQ LLDP filter on PF. When trusted VF attempts to add an LLDP multicast
MAC address, the following message can be seen in dmesg on host:

ice 0000:33:00.0: Failed to add Rx LLDP rule on VSI 20 error: -95

Revert checking VSI type when adding LLDP filter through AQ.

Fixes: 4d5a1c4e6d49 ("ice: do not add LLDP-specific filter if not necessary")
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index c0a19f232538..0271822c1737 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -6392,7 +6392,7 @@ int ice_lldp_fltr_add_remove(struct ice_hw *hw, struct ice_vsi *vsi, bool add)
 	struct ice_aqc_lldp_filter_ctrl *cmd;
 	struct libie_aq_desc desc;
 
-	if (vsi->type != ICE_VSI_PF || !ice_fw_supports_lldp_fltr_ctrl(hw))
+	if (!ice_fw_supports_lldp_fltr_ctrl(hw))
 		return -EOPNOTSUPP;
 
 	cmd = libie_aq_raw(&desc);
-- 
2.51.0

