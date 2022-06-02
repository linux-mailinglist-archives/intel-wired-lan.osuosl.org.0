Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B46453BC11
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Jun 2022 18:04:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2A3C561047;
	Thu,  2 Jun 2022 16:04:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kDZUm6sX7dQQ; Thu,  2 Jun 2022 16:04:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0EC1260F8D;
	Thu,  2 Jun 2022 16:04:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AFE141BF401
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jun 2022 16:04:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9DA3360B56
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jun 2022 16:04:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N5Qxo3MP7m22 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jun 2022 16:03:59 +0000 (UTC)
X-Greylist: delayed 00:05:44 by SQLgrey-1.8.0
Received: from mail.wantstofly.org (hmm.wantstofly.org [213.239.204.108])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4E279605EA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jun 2022 16:03:59 +0000 (UTC)
Received: by mail.wantstofly.org (Postfix, from userid 1000)
 id C70227F546; Thu,  2 Jun 2022 18:58:11 +0300 (EEST)
Date: Thu, 2 Jun 2022 18:58:11 +0300
From: Lennert Buytenhek <buytenh@wantstofly.org>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <YpjeEyMxobCIRfTx@wantstofly.org>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Intel-wired-lan] [PATCH v1] igc: Reinstate IGC_REMOVED logic and
 implement it properly
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
Cc: netdev@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The initially merged version of the igc driver code (via commit
146740f9abc4, "igc: Add support for PF") contained the following
IGC_REMOVED checks in the igc_rd32/wr32() MMIO accessors:

	u32 igc_rd32(struct igc_hw *hw, u32 reg)
	{
		u8 __iomem *hw_addr = READ_ONCE(hw->hw_addr);
		u32 value = 0;

		if (IGC_REMOVED(hw_addr))
			return ~value;

		value = readl(&hw_addr[reg]);

		/* reads should not return all F's */
		if (!(~value) && (!reg || !(~readl(hw_addr))))
			hw->hw_addr = NULL;

		return value;
	}

And:

	#define wr32(reg, val) \
	do { \
		u8 __iomem *hw_addr = READ_ONCE((hw)->hw_addr); \
		if (!IGC_REMOVED(hw_addr)) \
			writel((val), &hw_addr[(reg)]); \
	} while (0)

E.g. igb has similar checks in its MMIO accessors, and has a similar
macro E1000_REMOVED, which is implemented as follows:

	#define E1000_REMOVED(h) unlikely(!(h))

These checks serve to detect and take note of an 0xffffffff MMIO read
return from the device, which can be caused by a PCIe link flap or some
other kind of PCI bus error, and to avoid performing MMIO reads and
writes from that point onwards.

However, the IGC_REMOVED macro was not originally implemented:

	#ifndef IGC_REMOVED
	#define IGC_REMOVED(a) (0)
	#endif /* IGC_REMOVED */

This led to the IGC_REMOVED logic to be removed entirely in a
subsequent commit (commit 3c215fb18e70, "igc: remove IGC_REMOVED
function"), with the rationale that such checks matter only for
virtualization and that igc does not support virtualization -- but a
PCIe device can become detached even without virtualization being in
use, and without proper checks, a PCIe bus error affecting an igc
adapter will lead to various NULL pointer dereferences, as the first
access after the error will set hw->hw_addr to NULL, and subsequent
accesses will blindly dereference this now-NULL pointer.

This patch reinstates the IGC_REMOVED checks in igc_rd32/wr32(), and
implements IGC_REMOVED the way it is done for igb, by checking for the
unlikely() case of hw_addr being NULL.  This change prevents the oopses
seen when a PCIe link flap occurs on an igc adapter.

Fixes: 146740f9abc4 ("igc: Add support for PF")
Signed-off-by: Lennert Buytenhek <buytenh@arista.com>
---
As initially reported on intel-wired-lan@ in February:

	https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-20220214/027787.html

We're seeing these NULL pointer dereferences hit fairly reproducibly
when rebooting, presumably due to the particularities of reset
sequencing on the boards we see this hit on.

A link flap can be caused by toggling the Secondary Bus Reset bit
in the upstream PCIe bridge's Bridge Control register and can reliably
reproduce this problem.

 drivers/net/ethernet/intel/igc/igc_main.c | 3 +++
 drivers/net/ethernet/intel/igc/igc_regs.h | 5 ++++-
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 74b2c590ed5d..38e46e9ba8bb 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6171,6 +6171,9 @@ u32 igc_rd32(struct igc_hw *hw, u32 reg)
 	u8 __iomem *hw_addr = READ_ONCE(hw->hw_addr);
 	u32 value = 0;
 
+	if (IGC_REMOVED(hw_addr))
+		return ~value;
+
 	value = readl(&hw_addr[reg]);
 
 	/* reads should not return all F's */
diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
index e197a33d93a0..026c3b65fc37 100644
--- a/drivers/net/ethernet/intel/igc/igc_regs.h
+++ b/drivers/net/ethernet/intel/igc/igc_regs.h
@@ -306,7 +306,8 @@ u32 igc_rd32(struct igc_hw *hw, u32 reg);
 #define wr32(reg, val) \
 do { \
 	u8 __iomem *hw_addr = READ_ONCE((hw)->hw_addr); \
-	writel((val), &hw_addr[(reg)]); \
+	if (!IGC_REMOVED(hw_addr)) \
+		writel((val), &hw_addr[(reg)]); \
 } while (0)
 
 #define rd32(reg) (igc_rd32(hw, reg))
@@ -318,4 +319,6 @@ do { \
 
 #define array_rd32(reg, offset) (igc_rd32(hw, (reg) + ((offset) << 2)))
 
+#define IGC_REMOVED(h) unlikely(!(h))
+
 #endif
-- 
2.36.1
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
