Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 96D5E16AC6A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Feb 2020 17:58:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 65BB62039D;
	Mon, 24 Feb 2020 16:58:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8y+wlnbymMLp; Mon, 24 Feb 2020 16:58:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E4CA720507;
	Mon, 24 Feb 2020 16:58:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B795A1BF2FD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2020 16:58:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AE89E8666D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2020 16:58:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bg9ABm2YQHok for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Feb 2020 16:58:27 +0000 (UTC)
X-Greylist: delayed 00:20:09 by SQLgrey-1.7.6
Received: from gateway36.websitewelcome.com (gateway36.websitewelcome.com
 [192.185.192.36])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 66D7A84B6A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2020 16:58:27 +0000 (UTC)
Received: from cm11.websitewelcome.com (cm11.websitewelcome.com [100.42.49.5])
 by gateway36.websitewelcome.com (Postfix) with ESMTP id 6F406400F31CD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2020 09:53:00 -0600 (CST)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id 6GkLj9lKzSl8q6GkLjotbT; Mon, 24 Feb 2020 10:38:17 -0600
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
 Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=S0AyG7seDWMBMmxU4BsRCeIyHUa4A6ug84bj5qC2RXY=; b=E8C9IKlq2rdwzJTeXM09AcnuNq
 TXpCEQTZuAzMri3Pty4EMu+Yafx6/kOWeuAEjBm1W4uVaZaadlgobfmdVBzJ1YzCfSFtytU+qGy2p
 ddUmqVlMjP5/nmli1fpe9ZuVacrGfAXiQqpZ3AIsweZYFhfqrg71Rb25yQLzPKIgCXRf4ZWE6eQG4
 n0/fqKgPLEPkUCZg/K3x+HkNywnjtSYiuJ7fIVlSjINOvce4rtGR9d0NG83KaPqHnZy47VgCpCtm0
 N8CF63ihcWBQrclgTt9gqT4kbzOpxAuh5VOwd6+d/EuGXgZV6pFn/heFKDJDVCgVHhhj5nvtBCJb5
 94Y59TVA==;
Received: from [200.68.140.135] (port=18936 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1j6GkJ-002tKI-Th; Mon, 24 Feb 2020 10:38:16 -0600
Date: Mon, 24 Feb 2020 10:41:06 -0600
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 "David S. Miller" <davem@davemloft.net>
Message-ID: <20200224164106.GA1787@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.osuosl.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 200.68.140.135
X-Source-L: No
X-Exim-ID: 1j6GkJ-002tKI-Th
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (embeddedor) [200.68.140.135]:18936
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 64
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
Subject: [Intel-wired-lan] [PATCH][next] intel: Replace zero-length array
 with flexible-array member
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The current codebase makes use of the zero-length array language
extension to the C90 standard, but the preferred mechanism to declare
variable-length types such as these ones is a flexible array member[1][2],
introduced in C99:

struct foo {
        int stuff;
        struct boo array[];
};

By making use of the mechanism above, we will get a compiler warning
in case the flexible array does not occur last in the structure, which
will help us prevent some kind of undefined behavior bugs from being
inadvertently introduced[3] to the codebase from now on.

Also, notice that, dynamic memory allocations won't be affected by
this change:

"Flexible array members have incomplete type, and so the sizeof operator
may not be applied. As a quirk of the original implementation of
zero-length arrays, sizeof evaluates to zero."[1]

This issue was found with the help of Coccinelle.

[1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
[2] https://github.com/KSPP/linux/issues/21
[3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")

Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
---
 drivers/net/ethernet/intel/fm10k/fm10k.h | 6 +++---
 drivers/net/ethernet/intel/i40e/i40e.h   | 4 ++--
 drivers/net/ethernet/intel/igb/igb.h     | 2 +-
 drivers/net/ethernet/intel/igc/igc.h     | 2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe.h | 2 +-
 5 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/fm10k/fm10k.h b/drivers/net/ethernet/intel/fm10k/fm10k.h
index f306084ca12c..5b78362b82ac 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k.h
+++ b/drivers/net/ethernet/intel/fm10k/fm10k.h
@@ -41,7 +41,7 @@ struct fm10k_l2_accel {
 	u16 count;
 	u16 dglort;
 	struct rcu_head rcu;
-	struct net_device *macvlan[0];
+	struct net_device *macvlan[];
 };
 
 enum fm10k_ring_state_t {
@@ -198,7 +198,7 @@ struct fm10k_q_vector {
 	struct rcu_head rcu;	/* to avoid race with update stats on free */
 
 	/* for dynamic allocation of rings associated with this q_vector */
-	struct fm10k_ring ring[0] ____cacheline_internodealigned_in_smp;
+	struct fm10k_ring ring[] ____cacheline_internodealigned_in_smp;
 };
 
 enum fm10k_ring_f_enum {
@@ -218,7 +218,7 @@ struct fm10k_iov_data {
 	unsigned int		num_vfs;
 	unsigned int		next_vf_mbx;
 	struct rcu_head		rcu;
-	struct fm10k_vf_info	vf_info[0];
+	struct fm10k_vf_info	vf_info[];
 };
 
 struct fm10k_udp_port {
diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 4833187bd259..e95b8da45e07 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -334,13 +334,13 @@ int i40e_ddp_flash(struct net_device *netdev, struct ethtool_flash *flash);
 
 struct i40e_ddp_profile_list {
 	u32 p_count;
-	struct i40e_profile_info p_info[0];
+	struct i40e_profile_info p_info[];
 };
 
 struct i40e_ddp_old_profile_list {
 	struct list_head list;
 	size_t old_ddp_size;
-	u8 old_ddp_buf[0];
+	u8 old_ddp_buf[];
 };
 
 /* macros related to FLX_PIT */
diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
index 49b5fa9d4783..0c9282e2aaec 100644
--- a/drivers/net/ethernet/intel/igb/igb.h
+++ b/drivers/net/ethernet/intel/igb/igb.h
@@ -306,7 +306,7 @@ struct igb_q_vector {
 	char name[IFNAMSIZ + 9];
 
 	/* for dynamic allocation of rings associated with this q_vector */
-	struct igb_ring ring[0] ____cacheline_internodealigned_in_smp;
+	struct igb_ring ring[] ____cacheline_internodealigned_in_smp;
 };
 
 enum e1000_ring_flags_t {
diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 0014828eec46..a1f845a2aa80 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -326,7 +326,7 @@ struct igc_q_vector {
 	struct net_device poll_dev;
 
 	/* for dynamic allocation of rings associated with this q_vector */
-	struct igc_ring ring[0] ____cacheline_internodealigned_in_smp;
+	struct igc_ring ring[] ____cacheline_internodealigned_in_smp;
 };
 
 #define MAX_ETYPE_FILTER		(4 - 1)
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index 39e73ad60352..2833e4f041ce 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -462,7 +462,7 @@ struct ixgbe_q_vector {
 	char name[IFNAMSIZ + 9];
 
 	/* for dynamic allocation of rings associated with this q_vector */
-	struct ixgbe_ring ring[0] ____cacheline_internodealigned_in_smp;
+	struct ixgbe_ring ring[] ____cacheline_internodealigned_in_smp;
 };
 
 #ifdef CONFIG_IXGBE_HWMON
-- 
2.25.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
