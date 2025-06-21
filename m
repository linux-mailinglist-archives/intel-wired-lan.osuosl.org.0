Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 674C6AE28E4
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Jun 2025 13:50:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 122BC81E13;
	Sat, 21 Jun 2025 11:50:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I1KJJZqKmn4c; Sat, 21 Jun 2025 11:50:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D523081E14
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750506649;
	bh=NFZro/nBTtMtGWil45VCBkDtclsE61lg+5UwemFHaAQ=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=2XiXpXydfDsvITW0OOYoLkTWwOAwGGWL9y1lLDyobqPDAfziqguUbmK8ac2glvsaP
	 JuFPeQLKcmEGSo66s6goCVFd9kAgtZbCyfWG03zZiG6SxoqwXQ8eHV3qV4V0d/AFE7
	 uyGloBghOSkKA/j7n2raH0xah73esP5JBpDNogCsCRkGn12jwHBwZ08lJzC4JBR+xV
	 5FmakEJnzZZ7+MfELtI6QICVZ7sBbr7InEITz8P/XxH35a/oV9HI3ZFh+SCRdeQu0T
	 yNoxYqvCYXu41Tijx99eaAkkf7e2qj26zclvD1r1NqsIkJKjrw6HxixWGASVUh294/
	 dQYP43rNfhgbg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D523081E14;
	Sat, 21 Jun 2025 11:50:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 35FE3E2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Jun 2025 11:50:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 174874015C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Jun 2025 11:50:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 683HWNfUoGdk for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Jun 2025 11:50:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 14652400E0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 14652400E0
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 14652400E0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Jun 2025 11:50:46 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 6B445A4CA17;
 Sat, 21 Jun 2025 11:50:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 47C5FC4CEE7;
 Sat, 21 Jun 2025 11:50:44 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
Date: Sat, 21 Jun 2025 12:50:40 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250621-ixgbe-spell-v1-1-a0434eb6ba6b@kernel.org>
X-B4-Tracking: v=1; b=H4sIAI+cVmgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDMyND3cyK9KRU3eKC1Jwc3UTLVGNzC0MjE4MUSyWgjoKi1LTMCrBp0Uq
 Z5Tm6eakVJUqxtbUAupBEpmcAAAA=
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
X-Mailer: b4 0.14.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1750506645;
 bh=5soLAIy9KCteULMjt3GL8BGwXRA1L6kMnu5SLfeRlZs=;
 h=From:Date:Subject:To:Cc:From;
 b=Bh6oJI1YybCIA4r+KPvDh/SYO+H7J1H9ujZgCwD5X0+k/2EpXZKGLItNP2Cl1tDVK
 D44w9xnl5Ug3yQyMLlexpqCUVvn6zhSDLaEsiZbW5PPoXwNL2lGeJLLcfMT+lm9QC1
 IWFYT+DVxZ+4Su6v1p2GcXIUWO/0zKdRgpaJDe9OwJyx4ao+7hBr2MUOii7ZNIGkta
 3yULaLZvuj8yMT4Xf7yfkFHr8+ib9lNyPN6fDszH2QYfDGORRRSbfRRFLOvvZ/pziY
 3TVB4flvWcZAwXCfC7UxOL/g64lS0FMisxsD+JF9TWl5hVw7gLT14xZ1dC6AvyRj2S
 Kgsq4MVYQEjAA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Bh6oJI1Y
Subject: [Intel-wired-lan] [PATCH iwl-next] ixgbe: spelling corrections
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

Correct spelling as flagged by codespell.

Signed-off-by: Simon Horman <horms@kernel.org>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c  | 4 ++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_common.c | 4 ++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c   | 2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c    | 2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c   | 8 ++++----
 drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h    | 2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c    | 2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c  | 2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h   | 4 ++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c   | 2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c   | 2 +-
 11 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c
index 444da982593f..406c15f58034 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c
@@ -45,7 +45,7 @@ static void ixgbe_set_pcie_completion_timeout(struct ixgbe_hw *hw)
 		goto out;
 
 	/*
-	 * if capababilities version is type 1 we can write the
+	 * if capabilities version is type 1 we can write the
 	 * timeout of 10ms to 250ms through the GCR register
 	 */
 	if (!(gcr & IXGBE_GCR_CAP_VER2)) {
@@ -751,7 +751,7 @@ static int ixgbe_reset_hw_82598(struct ixgbe_hw *hw)
 	/*
 	 * Store the original AUTOC value if it has not been
 	 * stored off yet.  Otherwise restore the stored original
-	 * AUTOC value since the reset operation sets back to deaults.
+	 * AUTOC value since the reset operation sets back to defaults.
 	 */
 	autoc = IXGBE_READ_REG(hw, IXGBE_AUTOC);
 	if (hw->mac.orig_link_settings_stored == false) {
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
index 5784d5d1896e..4ff19426ab74 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
@@ -244,7 +244,7 @@ int ixgbe_setup_fc_generic(struct ixgbe_hw *hw)
 	 */
 	if (hw->phy.media_type == ixgbe_media_type_backplane) {
 		/* Need the SW/FW semaphore around AUTOC writes if 82599 and
-		 * LESM is on, likewise reset_pipeline requries the lock as
+		 * LESM is on, likewise reset_pipeline requires the lock as
 		 * it also writes AUTOC.
 		 */
 		ret_val = hw->mac.ops.prot_autoc_write(hw, reg_bp, locked);
@@ -301,7 +301,7 @@ int ixgbe_start_hw_generic(struct ixgbe_hw *hw)
 			return ret_val;
 	}
 
-	/* Cashe bit indicating need for crosstalk fix */
+	/* Cache bit indicating need for crosstalk fix */
 	switch (hw->mac.type) {
 	case ixgbe_mac_82599EB:
 	case ixgbe_mac_X550EM_x:
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c
index 7dcf6ecd157b..011fda9c6193 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c
@@ -744,7 +744,7 @@ void ixgbe_free_fcoe_ddp_resources(struct ixgbe_adapter *adapter)
  * ixgbe_setup_fcoe_ddp_resources - setup all fcoe ddp context resources
  * @adapter: ixgbe adapter
  *
- * Sets up ddp context resouces
+ * Sets up ddp context resources
  *
  * Returns : 0 indicates success or -EINVAL on failure
  */
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
index 54d75cf94cc1..170a29d162c6 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
@@ -891,7 +891,7 @@ static int ixgbe_alloc_q_vector(struct ixgbe_adapter *adapter,
 	q_vector->rx.itr = IXGBE_ITR_ADAPTIVE_MAX_USECS |
 			   IXGBE_ITR_ADAPTIVE_LATENCY;
 
-	/* intialize ITR */
+	/* initialize ITR */
 	if (txr_count && !rxr_count) {
 		/* tx only vector */
 		if (adapter->tx_itr_setting == 1)
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index f66ca787f18a..692b095b5c16 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -2371,7 +2371,7 @@ static struct sk_buff *ixgbe_build_skb(struct ixgbe_ring *rx_ring,
 	struct sk_buff *skb;
 
 	/* Prefetch first cache line of first page. If xdp->data_meta
-	 * is unused, this points extactly as xdp->data, otherwise we
+	 * is unused, this points exactly as xdp->data, otherwise we
 	 * likely have a consumer accessing first few bytes of meta
 	 * data, and then actual data.
 	 */
@@ -2494,7 +2494,7 @@ static void ixgbe_rx_buffer_flip(struct ixgbe_ring *rx_ring,
  * This function provides a "bounce buffer" approach to Rx interrupt
  * processing.  The advantage to this is that on systems that have
  * expensive overhead for IOMMU access this provides a means of avoiding
- * it by maintaining the mapping of the page to the syste.
+ * it by maintaining the mapping of the page to the system.
  *
  * Returns amount of work completed
  **/
@@ -5063,7 +5063,7 @@ static void ixgbe_scrub_vfta(struct ixgbe_adapter *adapter, u32 vfta_offset)
 		/* pull VLAN ID from VLVF */
 		vid = vlvf & VLAN_VID_MASK;
 
-		/* only concern outselves with a certain range */
+		/* only concern ourselves with a certain range */
 		if (vid < vid_start || vid >= vid_end)
 			continue;
 
@@ -11296,7 +11296,7 @@ void ixgbe_txrx_ring_enable(struct ixgbe_adapter *adapter, int ring)
  * ixgbe_enumerate_functions - Get the number of ports this device has
  * @adapter: adapter structure
  *
- * This function enumerates the phsyical functions co-located on a single slot,
+ * This function enumerates the physical functions co-located on a single slot,
  * in order to determine how many ports a device has. This is most useful in
  * determining the required GT/s of PCIe bandwidth necessary for optimal
  * performance.
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h
index bf65e82b4c61..4af149b63a39 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h
@@ -34,7 +34,7 @@
 #define IXGBE_VT_MSGTYPE_CTS      0x20000000  /* Indicates that VF is still
 						 clear to send requests */
 #define IXGBE_VT_MSGINFO_SHIFT    16
-/* bits 23:16 are used for exra info for certain messages */
+/* bits 23:16 are used for extra info for certain messages */
 #define IXGBE_VT_MSGINFO_MASK     (0xFF << IXGBE_VT_MSGINFO_SHIFT)
 
 /* definitions to support mailbox API version negotiation */
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
index 2d54828bdfbb..2449e4cf2679 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
@@ -1323,7 +1323,7 @@ int ixgbe_check_phy_link_tnx(struct ixgbe_hw *hw, ixgbe_link_speed *speed,
  *	@hw: pointer to hardware structure
  *
  *	Restart autonegotiation and PHY and waits for completion.
- *      This function always returns success, this is nessary since
+ *	This function always returns success, this is necessary since
  *	it is called via a function pointer that could call other
  *	functions that could return an error.
  **/
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
index bd9a054d7d94..32ac1e020d91 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
@@ -706,7 +706,7 @@ static inline void ixgbe_vf_reset_event(struct ixgbe_adapter *adapter, u32 vf)
 	u32 reg_val;
 	u32 queue;
 
-	/* remove VLAN filters beloning to this VF */
+	/* remove VLAN filters belonging to this VF */
 	ixgbe_clear_vf_vlans(adapter, vf);
 
 	/* add back PF assigned VLAN or VLAN 0 */
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
index 80dfc94c89f7..36577091cd9e 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
@@ -238,7 +238,7 @@ struct ixgbe_thermal_sensor_data {
 #define NVM_VER_INVALID		0xFFFF
 #define NVM_ETK_VALID		0x8000
 #define NVM_INVALID_PTR		0xFFFF
-#define NVM_VER_SIZE		32   /* version sting size */
+#define NVM_VER_SIZE		32   /* version string size */
 
 struct ixgbe_nvm_version {
 	u32 etk_id;
@@ -2024,7 +2024,7 @@ enum {
 /* EEPROM Addressing bits based on type (0-small, 1-large) */
 #define IXGBE_EEC_ADDR_SIZE 0x00000400
 #define IXGBE_EEC_SIZE      0x00007800 /* EEPROM Size */
-#define IXGBE_EERD_MAX_ADDR 0x00003FFF /* EERD alows 14 bits for addr. */
+#define IXGBE_EERD_MAX_ADDR 0x00003FFF /* EERD allows 14 bits for addr. */
 
 #define IXGBE_EEC_SIZE_SHIFT          11
 #define IXGBE_EEPROM_WORD_SIZE_SHIFT  6
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
index f1ab95aa8c83..c2353aed0120 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
@@ -47,7 +47,7 @@ int ixgbe_get_invariants_X540(struct ixgbe_hw *hw)
 }
 
 /**
- *  ixgbe_setup_mac_link_X540 - Set the auto advertised capabilitires
+ *  ixgbe_setup_mac_link_X540 - Set the auto advertised capabilities
  *  @hw: pointer to hardware structure
  *  @speed: new link speed
  *  @autoneg_wait_to_complete: true when waiting for completion is needed
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
index a8263f59ebba..bfa647086c70 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
@@ -3316,7 +3316,7 @@ static enum ixgbe_media_type ixgbe_get_media_type_X550em(struct ixgbe_hw *hw)
 	return media_type;
 }
 
-/** ixgbe_init_ext_t_x550em - Start (unstall) the external Base T PHY.
+/** ixgbe_init_ext_t_x550em - Start (uninstall) the external Base T PHY.
  ** @hw: pointer to hardware structure
  **/
 static int ixgbe_init_ext_t_x550em(struct ixgbe_hw *hw)

