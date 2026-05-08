Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iDTSJaVU/WnZagAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 05:12:37 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 14AD64F102E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 05:12:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A478461224;
	Fri,  8 May 2026 03:12:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7Gz1KrHAfSfA; Fri,  8 May 2026 03:12:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D945961236
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778209954;
	bh=eyakVV3nLMre4SsKhAYSvPE3ucfYucdhjx44Uwls0CM=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=e49O2iX+MXfbcXusBrwYuuSAmcV+bYs64otbRFbGcFPVaSnoABehiLn9Exkwxm73q
	 0F3LMFzd5ZKSG1dPsZtm2pTQ19KwYqNKeO4EU3Pt0ZC6yhgEmkAPzbHm10Wziwn9x8
	 DKiC1iRvnPZZ6pFsyG/4gscMbkPwAh/fWo2sOVBaIWXChtj0peJ3sNwsqxSRQB71o3
	 wDJ8XlSmMsxoXGJdpl5pYUJR0QRYOANng33DCZ3pAZXfNIbnqj/dGmImo/BxhVI+WQ
	 PNnEDi6rQERfCUq3FVu3dUUCQLHVlt5tFyCmfbB70rMnujXSyiqS8Up8NUpoBTyaxb
	 T2jEBbOT8LyMw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D945961236;
	Fri,  8 May 2026 03:12:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7DD31317
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 03:12:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7836C4030E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 03:12:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e_YvLzItheta for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 03:12:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 492DB409B3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 492DB409B3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 492DB409B3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 03:12:32 +0000 (UTC)
X-CSE-ConnectionGUID: dDgo3/TMTSSqT0Q/EdUY9Q==
X-CSE-MsgGUID: Qpo+YIyZTR6+FKbJgbVvcg==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="79027489"
X-IronPort-AV: E=Sophos;i="6.23,222,1770624000"; d="scan'208";a="79027489"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 20:12:32 -0700
X-CSE-ConnectionGUID: MChumWXESnuwnG0zcO/pWw==
X-CSE-MsgGUID: i7GdhBqkRKWzsz+joIaEFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,222,1770624000"; d="scan'208";a="241623182"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmviesa005.fm.intel.com with ESMTP; 07 May 2026 20:12:30 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Simon Horman <horms@kernel.org>
Date: Fri,  8 May 2026 05:12:20 +0200
Message-ID: <20260508031226.3601800-3-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260508031226.3601800-1-aleksandr.loktionov@intel.com>
References: <20260508031226.3601800-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778209952; x=1809745952;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NDXYRNxohjaR9SlsX7zQsn4ljQYIO2z6Y5cD8SIerPU=;
 b=f9BG9yfd75PiKbCKMnDQrPqt1pqdrMf93D9T3wDhRiQ6KGjw7Bc+kREl
 c+CrzdFxivN0zNnXgS30vWIDLxn/bB+lr2hWT/Q+kdhv3+v6Ipn27u/re
 Cefs+zEnS0X+1zQ5IZ0fz1bqG3zC27AIrHToiGZCAdnS9+M2FNGkipi/p
 QjaUxZddh5Kja7GnzwXKx2KQ9zDiVM7dtwprvPoHlNd5OLxqREYy71lvA
 hkxyoqiUlegNhv234RSR8iLgK7DAyMI+oPS5EEawpSshngAWVIn5ZpYjO
 Y2OweeTMNbnjHr59SMpHjIEkpDzEVHZqxrOCJuP0qnR2+qfxmxWCvEZEP
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=f9BG9yfd
Subject: [Intel-wired-lan] [PATCH iwl-next 2/8] ixgbe: use int instead of
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
X-Rspamd-Queue-Id: 14AD64F102E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

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
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  |  6 +++---
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 12 ++++++------
 3 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 65426a1..b6308c1 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -7528,7 +7528,7 @@ static int ixgbe_resume(struct device *dev_d)
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

