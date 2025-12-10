Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 38275CB2DB5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Dec 2025 12:51:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8BBAE61543;
	Wed, 10 Dec 2025 11:51:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1cK2dP_gz3So; Wed, 10 Dec 2025 11:51:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D3BE361553
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765367470;
	bh=RDTOqY8iZVDp5iYG9ik0MNJdzdeDGP2TDtvOfZ0Hiv0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Yq5KLJgZFTJAMVNBFbhJNrSQ7HNUfQN5ZWHJiQAON2nPs48cJ+iHJmY51V5iylVb8
	 /Ka4kE0aA68uBtr0PuSb+q+O3bClbDFIQrz4EonA56hRyglvb49vdNfmZOKliQ83RK
	 InXHZiczfgWt0a1uke155x9bbGIgCZDISe1UUjymRiOZ6Ka+6GIRqYxVVxy5kjq3XP
	 K9v4QMOPJyM9Z+I6GU13kV2cWMI9QPsOkpsFSqr+WLE7oVWMDrltQuK/1Rk1S2MlOk
	 UYAXRWwGnClVg9hPXjRrtiE+aphT+gZGPRNhVYi6+nauY4OX6G8iJaqw4NJhFEbOn3
	 o41YoOWGIWoXw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D3BE361553;
	Wed, 10 Dec 2025 11:51:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 316422C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 11:51:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1780884008
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 11:51:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uk_c9WuKNsls for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Dec 2025 11:51:09 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 10 Dec 2025 11:51:08 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2154D84025
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2154D84025
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2154D84025
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 11:51:08 +0000 (UTC)
X-CSE-ConnectionGUID: M1Lcr+YiS/yz5wzTn5m+bQ==
X-CSE-MsgGUID: OUiBPDmaQF2BX12ZW5zJ3w==
X-IronPort-AV: E=McAfee;i="6800,10657,11637"; a="67295043"
X-IronPort-AV: E=Sophos;i="6.20,263,1758610800"; d="scan'208";a="67295043"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 03:44:01 -0800
X-CSE-ConnectionGUID: q04pivX1QJmDf+uZnJqq7A==
X-CSE-MsgGUID: /1HxCaSnRZm1ArVDnfMqTg==
X-ExtLoop1: 1
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmviesa003.fm.intel.com with ESMTP; 10 Dec 2025 03:44:00 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, stable@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>
Date: Wed, 10 Dec 2025 12:26:51 +0100
Message-Id: <20251210112651.5556-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765367469; x=1796903469;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IkfhRNzUnouX7a6mrrN/6q745/lh5kAROmWm94XLLFw=;
 b=c7jIlLZF073UPHN5V5J/VKVTGpyEEmlyqh0dYEe/Q8WQ2LaV2Y0O3u5V
 LyqqpqlWjY+6VPrYPxplhEAL9zVfJglF7OTZn4+3aXmP66wvz9kpvZGQB
 zZouw+ZRZ3mQ6WYuEDW+4eUmrYvEMPyhzaA3SZSfmOyAtqyCZbaKNyw+A
 waPBVjy0bIXbdlt/nD9YKPkAvRF0fkE6R5XJ1CoTEKXWXBTLdmzOuXW7q
 HYCunqYu8VvA2NGlc4bRI9EC0oM51zA4wffrkoVifuVYyMVX2YVz4ge4e
 ubNE5Z4dd2ixVwr0ioIwyKr+udaRLmmjqNkyKlfw1fx8nqIobMtsrofzP
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=c7jIlLZF
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ixgbevf: fix link setup issue
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

It may happen that VF spawned for E610 adapter has problem with setting
link up. This happens when ixgbevf supporting mailbox API 1.6 cooperates
with PF driver which doesn't support this version of API, and hence
doesn't support new approach for getting PF link data.

In that case VF asks PF to provide link data but as PF doesn't support
it, returns -EOPNOTSUPP what leads to early bail from link configuration
sequence.

Avoid such situation by using legacy VFLINKS approach whenever negotiated
API version is less than 1.6.

To reproduce the issue just create VF and set its link up - adapter must
be any from the E610 family, ixgbevf must support API 1.6 or higher while
ixgbevf must not.

Fixes: 53f0eb62b4d2 ("ixgbevf: fix getting link speed data for E610 devices")
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: stable@vger.kernel.org
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
v2: extend the commit msg (Paul)
---
 drivers/net/ethernet/intel/ixgbevf/vf.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbevf/vf.c b/drivers/net/ethernet/intel/ixgbevf/vf.c
index 29c5ce967938..8af88f615776 100644
--- a/drivers/net/ethernet/intel/ixgbevf/vf.c
+++ b/drivers/net/ethernet/intel/ixgbevf/vf.c
@@ -846,7 +846,8 @@ static s32 ixgbevf_check_mac_link_vf(struct ixgbe_hw *hw,
 	if (!mac->get_link_status)
 		goto out;
 
-	if (hw->mac.type == ixgbe_mac_e610_vf) {
+	if (hw->mac.type == ixgbe_mac_e610_vf &&
+	    hw->api_version >= ixgbe_mbox_api_16) {
 		ret_val = ixgbevf_get_pf_link_state(hw, speed, link_up);
 		if (ret_val)
 			goto out;
-- 
2.31.1

