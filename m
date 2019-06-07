Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 559A939420
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Jun 2019 20:19:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D157686935;
	Fri,  7 Jun 2019 18:19:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E-Hhc27Hpzfe; Fri,  7 Jun 2019 18:19:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A448B86931;
	Fri,  7 Jun 2019 18:19:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7C4A11BF31C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jun 2019 18:19:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 782D620764
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jun 2019 18:19:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id axFcwMXKAK9z for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Jun 2019 18:19:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by silver.osuosl.org (Postfix) with ESMTPS id 9E4BE203F1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jun 2019 18:19:25 +0000 (UTC)
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
 (Exim 4.76) (envelope-from <colin.king@canonical.com>)
 id 1hZJSS-0007zx-Mn; Fri, 07 Jun 2019 18:19:20 +0000
From: Colin King <colin.king@canonical.com>
To: Jacob Keller <jacob.e.keller@intel.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 "David S . Miller" <davem@davemloft.net>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Date: Fri,  7 Jun 2019 19:19:20 +0100
Message-Id: <20190607181920.23339-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH][next][V2] ixgbe: fix potential u32
 overflow on shift
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Colin Ian King <colin.king@canonical.com>

The u32 variable rem is being shifted using u32 arithmetic however
it is being passed to div_u64 that expects the expression to be a u64.
The 32 bit shift may potentially overflow, so cast rem to a u64 before
shifting to avoid this.  Also remove comment about overflow.

Addresses-Coverity: ("Unintentional integer overflow")
Fixes: cd4583206990 ("ixgbe: implement support for SDP/PPS output on X550 hardware")
Fixes: 68d9676fc04e ("ixgbe: fix PTP SDP pin setup on X540 hardware")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---

V2: update comment

---
 drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c
index 2c4d327fcc2e..0be13a90ff79 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c
@@ -205,11 +205,8 @@ static void ixgbe_ptp_setup_sdp_X540(struct ixgbe_adapter *adapter)
 	 */
 	rem = (NS_PER_SEC - rem);
 
-	/* Adjust the clock edge to align with the next full second. This
-	 * assumes that the cycle counter shift is small enough to avoid
-	 * overflowing when shifting the remainder.
-	 */
-	clock_edge += div_u64((rem << cc->shift), cc->mult);
+	/* Adjust the clock edge to align with the next full second. */
+	clock_edge += div_u64(((u64)rem << cc->shift), cc->mult);
 	trgttiml = (u32)clock_edge;
 	trgttimh = (u32)(clock_edge >> 32);
 
@@ -291,11 +288,8 @@ static void ixgbe_ptp_setup_sdp_X550(struct ixgbe_adapter *adapter)
 	 */
 	rem = (NS_PER_SEC - rem);
 
-	/* Adjust the clock edge to align with the next full second. This
-	 * assumes that the cycle counter shift is small enough to avoid
-	 * overflowing when shifting the remainder.
-	 */
-	clock_edge += div_u64((rem << cc->shift), cc->mult);
+	/* Adjust the clock edge to align with the next full second. */
+	clock_edge += div_u64(((u64)rem << cc->shift), cc->mult);
 
 	/* X550 hardware stores the time in 32bits of 'billions of cycles' and
 	 * 32bits of 'cycles'. There's no guarantee that cycles represents
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
