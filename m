Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SLO+HYpPcmnpfAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jan 2026 17:25:46 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D2CF769E24
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jan 2026 17:25:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 419FC8134C;
	Thu, 22 Jan 2026 16:25:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zZqL6gXUZ8k9; Thu, 22 Jan 2026 16:25:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B172381351
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769099143;
	bh=2J663xa8l8n2kDgTK14SWpvDO5sjpAtczgbjrcfqC5Q=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=xN1F3q0B1Z10lPTRoJUjayWNYzyVZNVhvBjrz08t6d02cgbsGvJEYI9se99GJE9EN
	 ZLdz8+EL7F3XHuSYNaUmC6RLUzf+deCmC5BE9rYOjeb6trLUQr0GuyojKa9UZ+s3oN
	 2KlrlhGTQpbaL3sc+IEu1ez9m5VeiCcPtYFrQ0ieScXSHfv06VhPuIXQzGoMyw8sWL
	 ZbELy/k6KV4BxVw9reBf7AOl12C54oYg/eMsyemljn4iVPv5iB3kiwogjvUcLm70cz
	 yRAqiLqR8s0WampRPGWMHtgr8DOU3bMSqrQiVI26cKvJkzbbWOA+RGTM86FA00hXvG
	 k3xbSuzwMNRaQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B172381351;
	Thu, 22 Jan 2026 16:25:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6EBF0122
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jan 2026 16:25:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5264E40619
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jan 2026 16:25:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ye9gpmsvs_wQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Jan 2026 16:25:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 986A340613
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 986A340613
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 986A340613
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jan 2026 16:25:40 +0000 (UTC)
X-CSE-ConnectionGUID: 899rk9GaQhGDPTgOr6j2Dw==
X-CSE-MsgGUID: QkzGLGX9Qi26cLofLhzK8Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11679"; a="93013898"
X-IronPort-AV: E=Sophos;i="6.21,246,1763452800"; d="scan'208";a="93013898"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 08:25:40 -0800
X-CSE-ConnectionGUID: +PzVEmp9R32gEgTFtX3CPA==
X-CSE-MsgGUID: KQ0/2GylQeatCx8vV5pmGQ==
X-ExtLoop1: 1
Received: from amlin-018-252.igk.intel.com ([10.102.18.252])
 by fmviesa003.fm.intel.com with ESMTP; 22 Jan 2026 08:25:38 -0800
From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, dan.carpenter@linaro.org, horms@kernel.org,
 pmenzel@molgen.mpg.de, Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Thu, 22 Jan 2026 17:46:32 +0100
Message-ID: <20260122164632.112607-1-piotr.kwapulinski@intel.com>
X-Mailer: git-send-email 2.47.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769099141; x=1800635141;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=w9jjE/827GDIiy15D5+mRoXR0bkspeO497qEu/hDD18=;
 b=HLA5aDCj0ToOzR/tDnkhKMoU2cLd767zHGITfUZI0xS+bCxP1shrCdXm
 wzwugUiNMOa6JpqW7+WfsJM/eL1f0PbmGsCyTx0Qig/X8RWsOg+pmqL1Y
 fLp+1Z9Y4k6okPtQ1kcxCZWtGLWhiOQ0n4ymyc9ZIjCxF/Ekf0hyw9v1M
 99iDwybiVd2SD1175GDTYQGNBLtBx7WsaG5SwOdvfncl//xUfHDcj/5Xs
 JOCHeZJLe+llfoa0uc8SWUWsmY6oljT38dBaiKrs2P8a1U54XROoTlWrL
 Wuf5GXf3deAuIM2huWX2njhVjI8WW+4jL0fYWIGkjl1OEYe3hPK5jwrEx
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HLA5aDCj
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/2] ixgbe: e610: Convert ACI
 descriptor buffer to little endian
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim,pf_hicr.sv:url,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[piotr.kwapulinski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D2CF769E24
X-Rspamd-Action: no action

The ixgbe device registers/descriptors expect little-endian ordering. Make
the code aware that the e610 adapter operates on data with little endian
ordering. The extra conversion is required on big-endian hosts. In most
scenarios this conversion is not required.

Fixes: 46761fd52a88 ("ixgbe: Add support for E610 FW Admin Command Interface")
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index c2f8189..f494e90 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -113,7 +113,8 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
 
 	/* Descriptor is written to specific registers */
 	for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++)
-		IXGBE_WRITE_REG(hw, IXGBE_PF_HIDA(i), raw_desc[i]);
+		IXGBE_WRITE_REG(hw, IXGBE_PF_HIDA(i),
+				le32_to_cpu(raw_desc[i]));
 
 	/* SW has to set PF_HICR.C bit and clear PF_HICR.SV and
 	 * PF_HICR_EV
@@ -145,7 +146,7 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
 	if ((hicr & IXGBE_PF_HICR_SV)) {
 		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
 			raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA(i));
-			raw_desc[i] = raw_desc[i];
+			raw_desc[i] = cpu_to_le32(raw_desc[i]);
 		}
 	}
 
@@ -153,7 +154,7 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
 	if ((hicr & IXGBE_PF_HICR_EV) && !(hicr & IXGBE_PF_HICR_C)) {
 		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
 			raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA_2(i));
-			raw_desc[i] = raw_desc[i];
+			raw_desc[i] = cpu_to_le32(raw_desc[i]);
 		}
 	}
 
-- 
2.47.1

