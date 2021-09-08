Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E68FF403EA3
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Sep 2021 19:53:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D4954407AB;
	Wed,  8 Sep 2021 17:53:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eiqysffkYtW5; Wed,  8 Sep 2021 17:53:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB6D9407A8;
	Wed,  8 Sep 2021 17:52:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 955741BF488
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Sep 2021 17:52:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 82B8C407A7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Sep 2021 17:52:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 83k0d1Q5Ntjn for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Sep 2021 17:52:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CEB37407A8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Sep 2021 17:52:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10101"; a="207788307"
X-IronPort-AV: E=Sophos;i="5.85,278,1624345200"; d="scan'208";a="207788307"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 10:52:49 -0700
X-IronPort-AV: E=Sophos;i="5.85,278,1624345200"; d="scan'208";a="693503684"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.1])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 10:52:49 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed,  8 Sep 2021 10:52:37 -0700
Message-Id: <20210908175237.3058574-2-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.31.1.331.gb0c09ab8796f
In-Reply-To: <20210908175237.3058574-1-jacob.e.keller@intel.com>
References: <20210908175237.3058574-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 2/2] e100: fix buffer overrun in
 e100_get_regs
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
Cc: "Reported-by : Felicitas Hetzelt" <felicitashetzelt@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The e100_get_regs function is used to implement a simple register dump
for the e100 device. The data is broken into a couple of MAC control
registers, and then a series of PHY registers, followed by a memory dump
buffer.

The total length of the register dump is defined as (1 + E100_PHY_REGS)
* sizeof(u32) + sizeof(nic->mem->dump_buf).

The logic for filling in the PHY registers uses a convoluted inverted
count for loop which counts from E100_PHY_REGS (0x1C) down to 0, and
assigns the slots 1 + E100_PHY_REGS - i. The first loop iteration will
fill in [1] and the final loop iteration will fill in [1 + 0x1C]. This
is actually one more than the supposed number of PHY registers.

The memory dump buffer is then filled into the space at
[2 + E100_PHY_REGS] which will cause that memcpy to assign 4 bytes past
the total size.

The end result is that we overrun the total buffer size allocated by the
kernel, which could lead to a panic or other issues due to memory
corruption.

It is difficult to determine the actual total number of registers
here. The only 8255x datasheet I could find indicates there are 28 total
MDI registers. However, we're reading 29 here, and reading them in
reverse!

In addition, the ethtool e100 register dump interface appears to read
the first PHY register to determine if the device is in MDI or MDIx
mode. This doesn't appear to be documented anywhere within the 8255x
datasheet. I can only assume it must be in register 28 (the extra
register we're reading here).

Lets not change any of the intended meaning of what we copy here. Just
extend the space by 4 bytes to account for the extra register and
continue copying the data out in the same order.

Change the E100_PHY_REGS value to be the correct total (29) so that the
total register dump size is calculated properly. Fix the offset for
where we copy the dump buffer so that it doesn't overrun the total size.

Re-write the for loop to use counting up instead of the convoluted
down-counting. Correct the mdio_read offset to use the 0-based register
offsets, but maintain the bizarre reverse ordering so that we have the
ABI expected by applications like ethtool. This requires and additional
subtraction of 1. It seems a bit odd but it makes the flow of assignment
into the register buffer easier to follow.

Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
Rerported-by: Reported-by: Felicitas Hetzelt <felicitashetzelt@gmail.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/e100.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/e100.c b/drivers/net/ethernet/intel/e100.c
index 588a59546d12..7ac932e95fcb 100644
--- a/drivers/net/ethernet/intel/e100.c
+++ b/drivers/net/ethernet/intel/e100.c
@@ -2437,7 +2437,7 @@ static void e100_get_drvinfo(struct net_device *netdev,
 		sizeof(info->bus_info));
 }
 
-#define E100_PHY_REGS 0x1C
+#define E100_PHY_REGS 0x1D
 static int e100_get_regs_len(struct net_device *netdev)
 {
 	struct nic *nic = netdev_priv(netdev);
@@ -2459,13 +2459,17 @@ static void e100_get_regs(struct net_device *netdev,
 	buff[0] = ioread8(&nic->csr->scb.cmd_hi) << 24 |
 		ioread8(&nic->csr->scb.cmd_lo) << 16 |
 		ioread16(&nic->csr->scb.status);
-	for (i = E100_PHY_REGS; i >= 0; i--)
-		buff[1 + E100_PHY_REGS - i] =
-			mdio_read(netdev, nic->mii.phy_id, i);
+	for (i = 0; i < E100_PHY_REGS; i++)
+		/* Note that we read the registers in reverse order. This
+		 * ordering is the ABI apparently used by ethtool and other
+		 * applications.
+		 */
+		buff[1 + i] = mdio_read(netdev, nic->mii.phy_id,
+					E100_PHY_REGS - 1 - i);
 	memset(nic->mem->dump_buf, 0, sizeof(nic->mem->dump_buf));
 	e100_exec_cb(nic, NULL, e100_dump);
 	msleep(10);
-	memcpy(&buff[2 + E100_PHY_REGS], nic->mem->dump_buf,
+	memcpy(&buff[1 + E100_PHY_REGS], nic->mem->dump_buf,
 		sizeof(nic->mem->dump_buf));
 }
 
-- 

I spent rather longer than I intended on this. The fix is more involved than
I had originally intended. However, I think this is the only solution which
both avoids buffer overrun and prevents breaking the expected ABI between
ethtool and the driver.

2.31.1.331.gb0c09ab8796f

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
