Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D8289FA1EF
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Dec 2024 19:43:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3B7F44F037;
	Sat, 21 Dec 2024 18:43:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zysm69NQjs8j; Sat, 21 Dec 2024 18:43:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 790094EFD7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734806605;
	bh=FHOyfnH3rlGUJjO2RlOCqMv+WOTqlvg/BjenCsxYWAs=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7uUAWz2asUZapTx+igtWrcikTVkQ99xyTE/i+hbJGDkHBpOrOdaBFTOe7Aerxh8v1
	 mk9He1f7iw0zE3kVGIrvbW/dkjjCEZEzth6iFhaJCYklQirc5i5ECdeIcq6HIDxT9P
	 MJY4jOkEXI96x7mFCq0Q0lII/PFua5fFchw3/71fZOQ21X+DJZ3TRaQM/zN9U8gPrF
	 ovuv+X4ZGYXmu6ryRLULnSw7QL/UViP/TAaM6uF4rWNyEEf/q0eaS8CNsobbhVCjFE
	 eVNDQWtmyaeCgtqwRUNXyvLjXyfYAbtaOUgytutMVyKexvUs4NiRt7QEj938LVIyLZ
	 6vxJpfCcu9u1g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 790094EFD7;
	Sat, 21 Dec 2024 18:43:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8DA0A75A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Dec 2024 18:43:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6FEF484922
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Dec 2024 18:43:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PKii9THdQVVE for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Dec 2024 18:43:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1098:5b::1;
 helo=mx.treblig.org; envelope-from=linux@treblig.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B8B908487D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B8B908487D
Received: from mx.treblig.org (mx.treblig.org [IPv6:2a00:1098:5b::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B8B908487D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Dec 2024 18:43:01 +0000 (UTC)
Received: from localhost ([127.0.0.1] helo=dalek.home.treblig.org)
 by mx.treblig.org with esmtp (Exim 4.96)
 (envelope-from <linux@treblig.org>) id 1tP4RC-006hEJ-2N;
 Sat, 21 Dec 2024 18:42:54 +0000
From: linux@treblig.org
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Dr. David Alan Gilbert" <linux@treblig.org>
Date: Sat, 21 Dec 2024 18:42:47 +0000
Message-ID: <20241221184247.118752-10-linux@treblig.org>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241221184247.118752-1-linux@treblig.org>
References: <20241221184247.118752-1-linux@treblig.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx; h=MIME-Version:Message-ID:Date:Subject:From:Content-Type:From
 :Subject; bh=FHOyfnH3rlGUJjO2RlOCqMv+WOTqlvg/BjenCsxYWAs=; b=sIEJCMOj/ZmNzxgU
 8+7jpQNjG+gvEWPgOStarSSR7gJMeR9Yi265lR2nnGhF/T7xVPhbKaOByfWX/HMAECST4n47Hu1Sa
 iDbQ2hSNEXPf0PET3IKKAkonJ1xyJpbH9DhyjeWJURwwsD+bMUVruD7y8GvkUYVXMu5IW1UbmB6TS
 aSGutnkNEUTuIXH7KEdnS+AVaxrogI6Ivd7QN/fhSpE1HuFUlU886VsXa1EGZ2VzqvJgBSH7LXzwz
 eh3jealcuFZ5cvd+kdG1N4AphiPE/UtPwxHM7Wd0N+KcedyhFbPgVT3hlq/6v6ktcsYf1Xkbmm/Pa
 jvaVR+AKeg0yd8Xegw==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=treblig.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=treblig.org header.i=@treblig.org header.a=rsa-sha256
 header.s=bytemarkmx header.b=sIEJCMOj
Subject: [Intel-wired-lan] [RFC net-next 9/9] i40e: Remove unused
 i40e_dcb_hw_get_num_tc
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

From: "Dr. David Alan Gilbert" <linux@treblig.org>

The last useof i40e_dcb_hw_get_num_tc() was removed in 2022 by
commit fe20371578ef ("Revert "i40e: Fix reset bw limit when DCB enabled
with 1 TC"")

Remove it.

Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>
---
 drivers/net/ethernet/intel/i40e/i40e_dcb.c | 13 -------------
 drivers/net/ethernet/intel/i40e/i40e_dcb.h |  1 -
 2 files changed, 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_dcb.c b/drivers/net/ethernet/intel/i40e/i40e_dcb.c
index 8db1eb0c1768..352e957443fd 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_dcb.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_dcb.c
@@ -1490,19 +1490,6 @@ void i40e_dcb_hw_set_num_tc(struct i40e_hw *hw, u8 num_tc)
 	wr32(hw, I40E_PRTDCB_GENC, reg);
 }
 
-/**
- * i40e_dcb_hw_get_num_tc
- * @hw: pointer to the hw struct
- *
- * Returns number of traffic classes configured in HW
- **/
-u8 i40e_dcb_hw_get_num_tc(struct i40e_hw *hw)
-{
-	u32 reg = rd32(hw, I40E_PRTDCB_GENC);
-
-	return FIELD_GET(I40E_PRTDCB_GENC_NUMTC_MASK, reg);
-}
-
 /**
  * i40e_dcb_hw_rx_ets_bw_config
  * @hw: pointer to the hw struct
diff --git a/drivers/net/ethernet/intel/i40e/i40e_dcb.h b/drivers/net/ethernet/intel/i40e/i40e_dcb.h
index d76497566e40..d5662c639c41 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_dcb.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_dcb.h
@@ -253,7 +253,6 @@ void i40e_dcb_hw_rx_cmd_monitor_config(struct i40e_hw *hw,
 void i40e_dcb_hw_pfc_config(struct i40e_hw *hw,
 			    u8 pfc_en, u8 *prio_tc);
 void i40e_dcb_hw_set_num_tc(struct i40e_hw *hw, u8 num_tc);
-u8 i40e_dcb_hw_get_num_tc(struct i40e_hw *hw);
 void i40e_dcb_hw_rx_ets_bw_config(struct i40e_hw *hw, u8 *bw_share,
 				  u8 *mode, u8 *prio_type);
 void i40e_dcb_hw_rx_up2tc_config(struct i40e_hw *hw, u8 *prio_tc);
-- 
2.47.1

