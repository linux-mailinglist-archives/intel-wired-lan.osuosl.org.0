Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cGdKKcii1mlqGwgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 20:47:36 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7CB3C18C2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 20:47:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 67F3760FB4;
	Wed,  8 Apr 2026 18:47:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zP2_RM4wwcfv; Wed,  8 Apr 2026 18:47:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A6AE860FB5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775674052;
	bh=K7frfaknjS6lAF43aIgEBdXmyYoW2hqxfzwc9d50Yz0=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nT7eG/FQmat19XjbxzJDl9sUalJfyanXDWXT3VB7YNLOz3buFRgB250k3z1WNzvki
	 POEmB6cy3CtrEWwwtWjXHOYiuKJLzQjEeyeONcTg3+pL91o06+Tap32glG9dW3apMo
	 QKdFXS1A2cgXFtYYUt8Odca2FhtGw9PbzVCYehajVppS7Q5LIzHb1EiIyetdQzr3+W
	 hJY4koOk5B1p3jJcla88CXku4Fq/7X/BvjsLt7azkrFzBHbpJbUtSDipA2BJ/oPmIL
	 VuqVykZDVNfjY6zUl/okqg/ohEwBFCQO5/mQQcQ3WCUNDNcBXpLrkrFBz9ERjfG3V2
	 6K9No+07DvNDw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A6AE860FB5;
	Wed,  8 Apr 2026 18:47:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 40C652EF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 18:47:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E64CE60756
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 18:47:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WQIsNIB26hgd for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Apr 2026 18:47:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2A7C860F9D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2A7C860F9D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2A7C860F9D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 18:47:29 +0000 (UTC)
X-CSE-ConnectionGUID: HzsMPCpRSoq9Frj7nHS9tw==
X-CSE-MsgGUID: ynzdxousT+S3Uz1kVHZK7A==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="75841386"
X-IronPort-AV: E=Sophos;i="6.23,168,1770624000"; d="scan'208";a="75841386"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 11:47:28 -0700
X-CSE-ConnectionGUID: QBP765/BQXmy6Y3irzVc5w==
X-CSE-MsgGUID: 8BBOg8TlRqK92yagsDYzpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,168,1770624000"; d="scan'208";a="230217560"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.109])
 ([10.166.28.109])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 11:47:26 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 08 Apr 2026 11:46:31 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260408-jk-even-more-e825c-fixes-v1-1-b959da91a81f@intel.com>
References: <20260408-jk-even-more-e825c-fixes-v1-0-b959da91a81f@intel.com>
In-Reply-To: <20260408-jk-even-more-e825c-fixes-v1-0-b959da91a81f@intel.com>
To: Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, netdev@vger.kernel.org
X-Mailer: b4 0.16-dev-306a9
X-Developer-Signature: v=1; a=openpgp-sha256; l=5492;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=RfOBce6ZBKcXPiiqDoqjeTQe/2/0bz7nXMgcDDG6AGY=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhsxri/bwJU5UC2bVt2Y99Vgl1PBVnsPk86mCnybF/k6c2
 +ZQJHa7o5SFQYyLQVZMkUXBIWTldeMJYVpvnOVg5rAygQxh4OIUgImw/Gb4p1/9vEdJ8wrDvR2m
 28OvxCo6bzr5aY/De+eHoveNp2msvsjwVzRWRuuFz9tFe/mK9N1ef1r0um0PZz9rzesC14RvB3Z
 E8QIA
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775674049; x=1807210049;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=K3UN4pf9JPW3ZpduY02DTj0XVgO7vI4d+ii+qU3c24E=;
 b=gzGduOo6wKFssaTp6DqqrqkSprUiBwCmWuGceed/ZR81NMt6Y82sbUmT
 UvAnmlkOCc3JVMHuIsd/1sLhxeRftLBck+cJlGYxedluxmlf6nLBBnFuw
 Ct36TYBgqCoNFcq9S9uUWnSp+iEweWldHQ0PhiZqxQvNxJT18hjdTHaP2
 XkGGZlKLv5XGIL/hkzNZshoXv9CV1xNcG3jR0Jz9zdHG/DTE/7J4QJM+Y
 MC7eqoWm0g6C1/diVECdNkCvrMZXZHfeLrU3/6IdM6/6vkQ6Ot5iAKmux
 q1t7cuqJFuCYUDADYLaYqgFpFvSWEAZw4wJfu7nnpQM7kBQPL1mhTzNJl
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gzGduOo6
Subject: [Intel-wired-lan] [PATCH iwl-net 1/4] ice: fix timestamp interrupt
 configuration for E825C
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Timothy Miskell <timothy.miskell@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [-0.71 / 15.00];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:jacob.e.keller@intel.com,m:timothy.miskell@intel.com,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5A7CB3C18C2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Grzegorz Nitka <grzegorz.nitka@intel.com>

The E825C ice_phy_cfg_intr_eth56g() function is responsible for programming
the PHY interrupt for a given port. This function writes to the
PHY_REG_TS_INT_CONFIG register of the port. The register is responsible for
configuring whether the port interrupt logic is enabled, as well as
programming the threshold of waiting timestamps that will trigger an
interrupt from this port.

This threshold value must not be programmed to zero while the interrupt is
enabled. Doing so puts the port in a misconfigured state where the PHY
timestamp interrupt for the quad of connected ports will become stuck.

This occurs, because a threshold of zero results in the timestamp interrupt
status for the port becoming stuck high. The four ports in the connected
quad have their timestamp status indicators muxed together. A new interrupt
cannot be generated until the timestamp status indicators return low for
all four ports.

Normally, the timestamp status for a port will clear once there are fewer
timestamps in that ports timestamp memory bank than the threshold. A
threshold of zero makes this impossible, so the timestamp status for the
port does not clear.

The ice driver never intentionally programs the threshold to zero, indeed
the driver always programs it to a value of 1, intending to get an
interrupt immediately as soon as even a single packet is waiting for a
timestamp.

However, there is a subtle flaw in the programming logic in the
ice_phy_cfg_intr_eth56g() function. Due to the way that the hardware
handles enabling the PHY interrupt. If the threshold value is modified at
the same time as the interrupt is enabled, the HW PHY state machine might
enable the interrupt before the new threshold value is actually updated.
This leaves a potential race condition caused by the hardware logic where
a PHY timestamp interrupt might be triggered before the non-zero threshold
is written, resulting in the PHY timestamp logic becoming stuck.

Once the PHY timestamp status is stuck high, it will remain stuck even
after attempting to reprogram the PHY block by changing its threshold or
disabling the interrupt. Even a typical PF or CORE reset will not reset the
particular block of the PHY that becomes stuck. Even a warm power cycle is
not guaranteed to cause the PHY block to reset, and a cold power cycle is
required.

Prevent this by always writing the PHY_REG_TS_INT_CONFIG in two stages.
First write the threshold value with the interrupt disabled, and only write
the enable bit after the threshold has been programmed. When disabling the
interrupt, leave the threshold unchanged. Additionally, re-read the
register after writing it to guarantee that the write to the PHY has been
flushed upon exit of the function.

While we're modifying this function implementation, explicitly reject
programming a threshold of 0 when enabling the interrupt. No caller does
this today, but the consequences of doing so are significant. An explicit
rejection in the code makes this clear.

Fixes: 7cab44f1c35f ("ice: Introduce ETH56G PHY model for E825C products")
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 36 +++++++++++++++++++++++++----
 1 file changed, 32 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index e3db252c3918..67775beb9449 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -1847,6 +1847,8 @@ static int ice_phy_cfg_mac_eth56g(struct ice_hw *hw, u8 port)
  * @ena: enable or disable interrupt
  * @threshold: interrupt threshold
  *
+ * The threshold cannot be 0 while the interrupt is enabled.
+ *
  * Configure TX timestamp interrupt for the specified port
  *
  * Return:
@@ -1858,19 +1860,45 @@ int ice_phy_cfg_intr_eth56g(struct ice_hw *hw, u8 port, bool ena, u8 threshold)
 	int err;
 	u32 val;
 
+	if (ena && !threshold)
+		return -EINVAL;
+
 	err = ice_read_ptp_reg_eth56g(hw, port, PHY_REG_TS_INT_CONFIG, &val);
 	if (err)
 		return err;
 
+	val &= ~PHY_TS_INT_CONFIG_ENA_M;
 	if (ena) {
-		val |= PHY_TS_INT_CONFIG_ENA_M;
 		val &= ~PHY_TS_INT_CONFIG_THRESHOLD_M;
 		val |= FIELD_PREP(PHY_TS_INT_CONFIG_THRESHOLD_M, threshold);
-	} else {
-		val &= ~PHY_TS_INT_CONFIG_ENA_M;
+		err = ice_write_ptp_reg_eth56g(hw, port, PHY_REG_TS_INT_CONFIG,
+					       val);
+		if (err) {
+			ice_debug(hw, ICE_DBG_PTP,
+				  "Failed to update 'threshold' PHY_REG_TS_INT_CONFIG port=%u ena=%u threshold=%u\n",
+				  port, !!ena, threshold);
+			return err;
+		}
+		val |= PHY_TS_INT_CONFIG_ENA_M;
 	}
 
-	return ice_write_ptp_reg_eth56g(hw, port, PHY_REG_TS_INT_CONFIG, val);
+	err = ice_write_ptp_reg_eth56g(hw, port, PHY_REG_TS_INT_CONFIG, val);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP,
+			  "Failed to update 'ena' PHY_REG_TS_INT_CONFIG port=%u ena=%u threshold=%u\n",
+			  port, !!ena, threshold);
+		return err;
+	}
+
+	err = ice_read_ptp_reg_eth56g(hw, port, PHY_REG_TS_INT_CONFIG, &val);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP,
+			  "Failed to read PHY_REG_TS_INT_CONFIG port=%u ena=%u threshold=%u\n",
+			  port, !!ena, threshold);
+		return err;
+	}
+
+	return 0;
 }
 
 /**

-- 
2.53.0.1066.g1eceb487f285

