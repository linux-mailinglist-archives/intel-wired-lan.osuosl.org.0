Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A61271D44A6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 May 2020 06:32:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3D83387BBC;
	Fri, 15 May 2020 04:32:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TWC6DgO4nj1Y; Fri, 15 May 2020 04:32:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4949C87CB7;
	Fri, 15 May 2020 04:32:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3EC1F1BF866
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 04:32:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 394FF87BBC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 04:32:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uOIyT-jARgAY for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 May 2020 04:31:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mo-csw.securemx.jp (mo-csw1116.securemx.jp [210.130.202.158])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1614587926
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 04:31:57 +0000 (UTC)
Received: by mo-csw.securemx.jp (mx-mo-csw1116) id 04F4ViWo023273;
 Fri, 15 May 2020 13:31:44 +0900
X-Iguazu-Qid: 2wHHidEfDmcahIIBuK
X-Iguazu-QSIG: v=2; s=0; t=1589517104; q=2wHHidEfDmcahIIBuK;
 m=slt4I4Ma9asGl9MdH6xWfznD1YOKckyNoxkOisCo/x0=
Received: from imx12.toshiba.co.jp (imx12.toshiba.co.jp [61.202.160.132])
 by relay.securemx.jp (mx-mr1113) id 04F4VgFx003154;
 Fri, 15 May 2020 13:31:42 +0900
Received: from enc02.toshiba.co.jp ([61.202.160.51])
 by imx12.toshiba.co.jp  with ESMTP id 04F4VgJS024761;
 Fri, 15 May 2020 13:31:42 +0900 (JST)
Received: from hop101.toshiba.co.jp ([133.199.85.107])
 by enc02.toshiba.co.jp  with ESMTP id 04F4Vf4u001744;
 Fri, 15 May 2020 13:31:41 +0900
From: Punit Agrawal <punit1.agrawal@toshiba.co.jp>
To: jeffrey.t.kirsher@intel.com
Date: Fri, 15 May 2020 13:31:27 +0900
X-TSB-HOP: ON
Message-Id: <20200515043127.3882162-1-punit1.agrawal@toshiba.co.jp>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] e1000e: Relax condition to trigger reset
 for ME workaround
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
Cc: daniel.sangorrin@toshiba.co.jp,
 Punit Agrawal <punit1.agrawal@toshiba.co.jp>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

It's an error if the value of the RX/TX tail descriptor does not match
what was written. The error condition is true regardless the duration
of the interference from ME. But the driver only performs the reset if
E1000_ICH_FWSM_PCIM2PCI_COUNT (2000) iterations of 50us delay have
transpired. The extra condition can lead to inconsistency between the
state of hardware as expected by the driver.

Fix this by dropping the check for number of delay iterations.

While at it, also make __ew32_prepare() static as it's not used
anywhere else.

Signed-off-by: Punit Agrawal <punit1.agrawal@toshiba.co.jp>
Reviewed-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
Cc: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
---
Hi Jeff,

If there are no further comments please consider merging the patch.

Also, should it be marked for backport to stable?

Thanks,
Punit

RFC[0] -> v1:
* Dropped return value for __ew32_prepare() as it's not used
* Made __ew32_prepare() static
* Added tags

[0] https://lkml.org/lkml/2020/5/12/20

 drivers/net/ethernet/intel/e1000e/e1000.h  |  1 -
 drivers/net/ethernet/intel/e1000e/netdev.c | 12 +++++-------
 2 files changed, 5 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/e1000.h b/drivers/net/ethernet/intel/e1000e/e1000.h
index 37a2314d3e6b..944abd5eae11 100644
--- a/drivers/net/ethernet/intel/e1000e/e1000.h
+++ b/drivers/net/ethernet/intel/e1000e/e1000.h
@@ -576,7 +576,6 @@ static inline u32 __er32(struct e1000_hw *hw, unsigned long reg)
 
 #define er32(reg)	__er32(hw, E1000_##reg)
 
-s32 __ew32_prepare(struct e1000_hw *hw);
 void __ew32(struct e1000_hw *hw, unsigned long reg, u32 val);
 
 #define ew32(reg, val)	__ew32(hw, E1000_##reg, (val))
diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 177c6da80c57..e9aa47aba7eb 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -119,14 +119,12 @@ static const struct e1000_reg_info e1000_reg_info_tbl[] = {
  * has bit 24 set while ME is accessing MAC CSR registers, wait if it is set
  * and try again a number of times.
  **/
-s32 __ew32_prepare(struct e1000_hw *hw)
+static void __ew32_prepare(struct e1000_hw *hw)
 {
 	s32 i = E1000_ICH_FWSM_PCIM2PCI_COUNT;
 
 	while ((er32(FWSM) & E1000_ICH_FWSM_PCIM2PCI) && --i)
 		udelay(50);
-
-	return i;
 }
 
 void __ew32(struct e1000_hw *hw, unsigned long reg, u32 val)
@@ -607,11 +605,11 @@ static void e1000e_update_rdt_wa(struct e1000_ring *rx_ring, unsigned int i)
 {
 	struct e1000_adapter *adapter = rx_ring->adapter;
 	struct e1000_hw *hw = &adapter->hw;
-	s32 ret_val = __ew32_prepare(hw);
 
+	__ew32_prepare(hw);
 	writel(i, rx_ring->tail);
 
-	if (unlikely(!ret_val && (i != readl(rx_ring->tail)))) {
+	if (unlikely(i != readl(rx_ring->tail))) {
 		u32 rctl = er32(RCTL);
 
 		ew32(RCTL, rctl & ~E1000_RCTL_EN);
@@ -624,11 +622,11 @@ static void e1000e_update_tdt_wa(struct e1000_ring *tx_ring, unsigned int i)
 {
 	struct e1000_adapter *adapter = tx_ring->adapter;
 	struct e1000_hw *hw = &adapter->hw;
-	s32 ret_val = __ew32_prepare(hw);
 
+	__ew32_prepare(hw);
 	writel(i, tx_ring->tail);
 
-	if (unlikely(!ret_val && (i != readl(tx_ring->tail)))) {
+	if (unlikely(i != readl(tx_ring->tail))) {
 		u32 tctl = er32(TCTL);
 
 		ew32(TCTL, tctl & ~E1000_TCTL_EN);
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
