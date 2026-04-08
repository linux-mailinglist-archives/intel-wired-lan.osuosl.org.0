Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YJZrL0VU1mm8DQgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 15:12:37 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4043BCA86
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 15:12:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A7F4F40F33;
	Wed,  8 Apr 2026 13:12:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RUTfwIP3G7EZ; Wed,  8 Apr 2026 13:12:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C988340EE7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775653953;
	bh=wsVt+BWRYoW7FtWOKVeV4987lyqjvhvhSPZG/e0+UX0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qIHqdslW0JwliZ9gJJiAQ4DY4Zm7+c52AdqcV2W/TqR8QV8MIgON6B4OxmnTisw/o
	 2yMJJSJIUeGvraB2bQxyrDa+xQ2sZQwNss7PP3cHNN9hVBKdnoFrn/AiYel3CyEbGh
	 LwNLS6eo1JoR9PfWjkGcT2mEibL8ldjcOuu5+iU3Hz109L7lNHw8QXLXHg2ztknbjn
	 fk9N2dKbTzcr2qEZo2MnLZiG93zSmS7WXtN4d8a4ZY5QnL6BagVfXtsVXuh48W82eK
	 IVWNkrxks7Dke0wppSJGQtzJyRsJTkjGGwmxc/ogGwlq/h4HcRBO1ak956PiujXJIz
	 VCTWpN8MuTmVg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C988340EE7;
	Wed,  8 Apr 2026 13:12:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 30E422C7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 13:12:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 166E340EE7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 13:12:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b3mRfIFOQvZM for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Apr 2026 13:12:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 249A640EC4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 249A640EC4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 249A640EC4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 13:12:31 +0000 (UTC)
X-CSE-ConnectionGUID: UArAXaSfQnez4BPkddPPLw==
X-CSE-MsgGUID: SKN/gmEpQZidqS10nJEW/g==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="102087299"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="102087299"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 06:12:31 -0700
X-CSE-ConnectionGUID: KnQNf1VbReiLKVuzPvE/tg==
X-CSE-MsgGUID: PnM6zYYXS8K5ZkkPwLKTsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="228715125"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa007.jf.intel.com with ESMTP; 08 Apr 2026 06:12:30 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Simon Horman <horms@kernel.org>
Date: Wed,  8 Apr 2026 15:12:16 +0200
Message-ID: <20260408131216.2662245-9-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260408131216.2662245-1-aleksandr.loktionov@intel.com>
References: <20260408131216.2662245-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775653951; x=1807189951;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qSs/6cxPK78CVLwR3TsPdb+AwFgYd6qJdHXW2+qXedc=;
 b=BGgdxmu5tNzI148KpFgBAUIph2JCVcMj5r8orjgU1sOXcfdYGjGaoEjz
 cSakOlGnogRpjABF4abpV8rmkoqoNxiagIgtO0xoC64eJmh2+/82FGq5z
 b0KQMiZOsO7goL2BtwyD3fbJYTJyfJlC3pBNcGrQYXsZbVVUdiumAyiZN
 9rA8395f70f2idr6dNjqF4AGZ4xBQy0KdHtPexzqyOtVUtpXVCqBTshX3
 cVsvA8T4d7aEObBzng5pAhoCXL+afh4ETgwM4fy4tUt/OzoWrzbjzgRi0
 Wfc9xQlfZjCm/mNOc7UH+jj8bI4/wRkXwe0t/FPHY/LF9W/gnAWzTUMnW
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BGgdxmu5
Subject: [Intel-wired-lan] [PATCH iwl-next v2 8/8] ixgbe: use int instead of
 u32 for error code variables
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,intel.com:email,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5B4043BCA86
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The variables used to store return values of kernel and driver functions
throughout the ixgbe driver are declared as u32 in several places.  Such
functions return negative errno values on error (e.g. -EIO, -EFAULT),
which are sign-extended negative integers.  Storing them in an unsigned
u32 silently wraps the value: -EIO (0xFFFFFFF7) stored in u32 becomes a
large positive number, so any "if (status)" truthiness check still works
by accident, but comparisons against specific negative error codes or
propagation up the call stack produce wrong results.

In the Linux kernel, u32 is reserved for fixed-width quantities used in
hardware interfaces or protocol structures.  Using it for generic error
codes misleads reviewers into thinking the value is hardware-constrained.

Change all such local variables from u32 to int driver-wide: one in
ixgbe_main.c (ixgbe_resume), three in ixgbe_phy.c
(ixgbe_identify_phy_generic, ixgbe_tn_check_overtemp,
ixgbe_set_copper_phy_power), and six in ixgbe_x550.c
(ixgbe_check_link_t_X550em, ixgbe_get_lasi_ext_t_x550em,
ixgbe_enable_lasi_ext_t_x550em, ixgbe_handle_lasi_ext_t_x550em,
ixgbe_ext_phy_t_x550em_get_link, ixgbe_setup_internal_phy_t_x550em).

No functional change.

Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v1 -> v2:
 - Carry Reviewed-by: Simon Horman from the IWL posting; add [N/M]
   numbering; no code change.

 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  |  6 +++---
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 12 ++++++------
 3 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index ed5b75b..99cfccd 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -7531,7 +7531,7 @@ static int ixgbe_resume(struct device *dev_d)
 	struct pci_dev *pdev = to_pci_dev(dev_d);
 	struct ixgbe_adapter *adapter = pci_get_drvdata(pdev);
 	struct net_device *netdev = adapter->netdev;
-	u32 err;
+	int err;
 
 	adapter->hw.hw_addr = adapter->io_addr;
 
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
index ab733e7..de8f6c6 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
@@ -262,7 +262,7 @@ static bool ixgbe_probe_phy(struct ixgbe_hw *hw, u16 phy_addr)
  **/
 int ixgbe_identify_phy_generic(struct ixgbe_hw *hw)
 {
-	u32 status = -EFAULT;
+	int status = -EFAULT;
 	u32 phy_addr;
 
 	if (!hw->phy.phy_semaphore_mask) {
@@ -2811,7 +2811,7 @@ static void ixgbe_i2c_bus_clear(struct ixgbe_hw *hw)
 bool ixgbe_tn_check_overtemp(struct ixgbe_hw *hw)
 {
 	u16 phy_data = 0;
-	u32 status;
+	int status;
 
 	if (hw->device_id != IXGBE_DEV_ID_82599_T3_LOM)
 		return false;
@@ -2831,7 +2831,7 @@ bool ixgbe_tn_check_overtemp(struct ixgbe_hw *hw)
  **/
 int ixgbe_set_copper_phy_power(struct ixgbe_hw *hw, bool on)
 {
-	u32 status;
+	int status;
 	u16 reg;
 
 	/* Bail if we don't have copper phy */
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
index 76d2fa3..9b14f3b 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
@@ -1911,7 +1911,7 @@ static int ixgbe_check_link_t_X550em(struct ixgbe_hw *hw,
 				     bool *link_up,
 				     bool link_up_wait_to_complete)
 {
-	u32 status;
+	int status;
 	u16 i, autoneg_status;
 
 	if (hw->mac.ops.get_media_type(hw) != ixgbe_media_type_copper)
@@ -2330,7 +2330,7 @@ static int ixgbe_get_link_capabilities_X550em(struct ixgbe_hw *hw,
 static int ixgbe_get_lasi_ext_t_x550em(struct ixgbe_hw *hw, bool *lsc,
 				       bool *is_overtemp)
 {
-	u32 status;
+	int status;
 	u16 reg;
 
 	*is_overtemp = false;
@@ -2418,7 +2418,7 @@ static int ixgbe_get_lasi_ext_t_x550em(struct ixgbe_hw *hw, bool *lsc,
 static int ixgbe_enable_lasi_ext_t_x550em(struct ixgbe_hw *hw)
 {
 	bool lsc, overtemp;
-	u32 status;
+	int status;
 	u16 reg;
 
 	/* Clear interrupt flags */
@@ -2512,7 +2512,7 @@ static int ixgbe_handle_lasi_ext_t_x550em(struct ixgbe_hw *hw,
 {
 	struct ixgbe_phy_info *phy = &hw->phy;
 	bool lsc;
-	u32 status;
+	int status;
 
 	status = ixgbe_get_lasi_ext_t_x550em(hw, &lsc, is_overtemp);
 	if (status)
@@ -2606,7 +2606,7 @@ static int ixgbe_setup_kr_x550em(struct ixgbe_hw *hw)
  **/
 static int ixgbe_ext_phy_t_x550em_get_link(struct ixgbe_hw *hw, bool *link_up)
 {
-	u32 ret;
+	int ret;
 	u16 autoneg_status;
 
 	*link_up = false;
@@ -2642,7 +2642,7 @@ static int ixgbe_setup_internal_phy_t_x550em(struct ixgbe_hw *hw)
 {
 	ixgbe_link_speed force_speed;
 	bool link_up;
-	u32 status;
+	int status;
 	u16 speed;
 
 	if (hw->mac.ops.get_media_type(hw) != ixgbe_media_type_copper)
-- 
2.52.0
