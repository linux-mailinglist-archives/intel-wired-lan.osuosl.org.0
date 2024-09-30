Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A6898A08F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Sep 2024 13:28:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3833C80ED0;
	Mon, 30 Sep 2024 11:28:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n5vFsLsFFXLz; Mon, 30 Sep 2024 11:28:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 69B5C80ED5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727695724;
	bh=RF4M5sp1M89dXG5TKYPlc4/p+FQQxzTT+AquUnods1A=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0LqfKIW6Wc6aL94xMDLuWwdGWZ4vnJu57MVE0932EHfZNrqWaSDiBEixPZdtPa/N4
	 Gwzv/txfQV3usqJ0m0hlnI9ODoomC5lnSwBqaFOq5joze+D/bhxRjt0pCDOKOJ1oBA
	 qTfCxBs79hI6ciVB8920bbVgOdeDIzegHq4JSA9bAkGEBHZAcxVBZ96ICm4H/9Q8n2
	 Iwsg5Rw/XTjutWUiG7ePw2fb0FpGwrVcPseZPiYhw0ujRJkr8a4oncBbdoRS6kyxaN
	 NkMUYi9NoiccQwWxm9YS6Cq4PPsITFy9d5SE0hBbjb25uo5+luyuQcnlAtQ5lOIVz3
	 vyyvPiyVfLiaQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 69B5C80ED5;
	Mon, 30 Sep 2024 11:28:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 076611BF2C6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 11:28:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E6DCC40230
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 11:28:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RDZas1lRfy2V for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Sep 2024 11:28:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.134.164.83;
 helo=mail2-relais-roc.national.inria.fr; envelope-from=julia.lawall@inria.fr;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6139E40238
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6139E40238
Received: from mail2-relais-roc.national.inria.fr
 (mail2-relais-roc.national.inria.fr [192.134.164.83])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6139E40238
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 11:28:39 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="6.11,165,1725314400"; d="scan'208";a="185956915"
Received: from i80.paris.inria.fr (HELO i80.paris.inria.fr.) ([128.93.90.48])
 by mail2-relais-roc.national.inria.fr with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Sep 2024 13:21:28 +0200
From: Julia Lawall <Julia.Lawall@inria.fr>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Mon, 30 Sep 2024 13:21:19 +0200
Message-Id: <20240930112121.95324-34-Julia.Lawall@inria.fr>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20240930112121.95324-1-Julia.Lawall@inria.fr>
References: <20240930112121.95324-1-Julia.Lawall@inria.fr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=inria.fr; s=dc;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RF4M5sp1M89dXG5TKYPlc4/p+FQQxzTT+AquUnods1A=;
 b=fI/8/wTgbpT6vBh1PM5rYudE7uS62YQ4nXCzxZ/NVCKH6UlVWUjRLhd/
 Bkublc0NZ60/cyxnlT9W0CSfRCb3cGxqKBP883vvCKW56EZWRXJBNPCW4
 zD4qjLQF8omsa0jpyKF6ldnQaUYgMaCkmO/y/uxSocAqLGd01dy0PVNoJ
 M=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=inria.fr
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr
 header.a=rsa-sha256 header.s=dc header.b=fI/8/wTg
X-Mailman-Original-Authentication-Results: mail2-relais-roc.national.inria.fr;
 dkim=none (message not signed)
 header.i=none; spf=SoftFail smtp.mailfrom=Julia.Lawall@inria.fr;
 dmarc=fail (p=none dis=none) d=inria.fr
Subject: [Intel-wired-lan] [PATCH 33/35] drivers/net/ethernet/intel:
 Reorganize kerneldoc parameter names
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Reorganize kerneldoc parameter names to match the parameter
order in the function header.

Problems identified using Coccinelle.

Signed-off-by: Julia Lawall <Julia.Lawall@inria.fr>

---
 drivers/net/ethernet/intel/e1000/e1000_hw.c     |    2 +-
 drivers/net/ethernet/intel/i40e/i40e_common.c   |    7 +++----
 drivers/net/ethernet/intel/ice/ice_common.c     |    2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_common.c |    2 +-
 4 files changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_hw.c b/drivers/net/ethernet/intel/e1000/e1000_hw.c
index f9328f2e669f..1b7e78018b8f 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_hw.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_hw.c
@@ -3839,8 +3839,8 @@ static s32 e1000_spi_eeprom_ready(struct e1000_hw *hw)
  * e1000_read_eeprom - Reads a 16 bit word from the EEPROM.
  * @hw: Struct containing variables accessed by shared code
  * @offset: offset of  word in the EEPROM to read
- * @data: word read from the EEPROM
  * @words: number of words to read
+ * @data: word read from the EEPROM
  */
 s32 e1000_read_eeprom(struct e1000_hw *hw, u16 offset, u16 words, u16 *data)
 {
diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index e8031f1a9b4f..f2d342ffc6d6 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -1045,9 +1045,9 @@ void i40e_led_set(struct i40e_hw *hw, u32 mode, bool blink)
 /**
  * i40e_aq_get_phy_capabilities
  * @hw: pointer to the hw struct
- * @abilities: structure for PHY capabilities to be filled
  * @qualified_modules: report Qualified Modules
  * @report_init: report init capabilities (active are default)
+ * @abilities: structure for PHY capabilities to be filled
  * @cmd_details: pointer to command details structure or NULL
  *
  * Returns the various PHY abilities supported on the Port.
@@ -1948,7 +1948,6 @@ int i40e_aq_get_switch_config(struct i40e_hw *hw,
  * i40e_aq_set_switch_config
  * @hw: pointer to the hardware structure
  * @flags: bit flag values to set
- * @mode: cloud filter mode
  * @valid_flags: which bit flags to set
  * @mode: cloud filter mode
  * @cmd_details: pointer to command details structure or NULL
@@ -2534,9 +2533,9 @@ int i40e_aq_add_mirrorrule(struct i40e_hw *hw, u16 sw_seid,
  * @hw: pointer to the hw struct
  * @sw_seid: Switch SEID (to which rule refers)
  * @rule_type: Rule Type (ingress/egress/VLAN)
- * @count: length of the list
  * @rule_id: Rule ID that is returned in the receive desc as part of
  *		add_mirrorrule.
+ * @count: length of the list
  * @mr_list: list of mirrored VLAN IDs to be removed
  * @cmd_details: pointer to command details structure or NULL
  * @rules_used: Number of rules used in internal switch
@@ -3444,8 +3443,8 @@ int i40e_aq_start_lldp(struct i40e_hw *hw, bool persist,
 /**
  * i40e_aq_set_dcb_parameters
  * @hw: pointer to the hw struct
- * @cmd_details: pointer to command details structure or NULL
  * @dcb_enable: True if DCB configuration needs to be applied
+ * @cmd_details: pointer to command details structure or NULL
  *
  **/
 int
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 009716a12a26..8a61e13eca1d 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -5301,8 +5301,8 @@ ice_aq_get_output_pin_cfg(struct ice_hw *hw, u8 output_idx, u8 *flags,
  * @hw: pointer to the HW struct
  * @dpll_num: DPLL index
  * @ref_state: Reference clock state
- * @config: current DPLL config
  * @dpll_state: current DPLL state
+ * @config: current DPLL config
  * @phase_offset: Phase offset in ns
  * @eec_mode: EEC_mode
  *
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
index 3be1bfb16498..f6559b1d1433 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
@@ -2635,9 +2635,9 @@ void ixgbe_release_swfw_sync(struct ixgbe_hw *hw, u32 mask)
 /**
  * prot_autoc_read_generic - Hides MAC differences needed for AUTOC read
  * @hw: pointer to hardware structure
- * @reg_val: Value we read from AUTOC
  * @locked: bool to indicate whether the SW/FW lock should be taken.  Never
  *	    true in this the generic case.
+ * @reg_val: Value we read from AUTOC
  *
  * The default case requires no protection so just to the register read.
  **/

