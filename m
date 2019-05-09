Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 81BA81BBB9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 May 2019 19:20:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 337DD85A78;
	Mon, 13 May 2019 17:20:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nX3V0DLdWFuT; Mon, 13 May 2019 17:20:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ED124858B6;
	Mon, 13 May 2019 17:20:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CC3851BF286
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2019 10:42:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C83D58804A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2019 10:42:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W1BxaBp09yjR for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 May 2019 10:42:28 +0000 (UTC)
X-Greylist: delayed 00:07:37 by SQLgrey-1.7.6
Received: from rp02.intra2net.com (rp02.intra2net.com [62.75.181.28])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 73FF78803E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2019 10:42:28 +0000 (UTC)
Received: from mail.m.i2n (unknown [172.17.128.1])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by rp02.intra2net.com (Postfix) with ESMTPS id 98316100140;
 Thu,  9 May 2019 12:34:48 +0200 (CEST)
Received: from localhost (mail.m.i2n [127.0.0.1])
 by localhost (Postfix) with ESMTP id 6C4D97A8;
 Thu,  9 May 2019 12:34:48 +0200 (CEST)
X-Virus-Scanned: by Intra2net Mail Security (AVE=8.3.54.26,VDF=8.16.14.118)
Received: from rocinante.m.i2n (rocinante.m.i2n [172.16.1.86])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: smtp-auth-user)
 by mail.m.i2n (Postfix) with ESMTPSA id 7513D760;
 Thu,  9 May 2019 12:34:46 +0200 (CEST)
From: Juliana Rodrigueiro <juliana.rodrigueiro@intra2net.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 09 May 2019 12:34:46 +0200
Message-ID: <1623942.pXzBnfQ100@rocinante.m.i2n>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 13 May 2019 17:20:32 +0000
Subject: [Intel-wired-lan] [PATCH] e1000e: Work around hardware unit hang by
 disabling TSO
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
Cc: thomas.jarosch@intra2net.com, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When forwarding traffic to a client behind NAT, some e1000e devices
become unstable, hanging and then being reset by the watchdog.

Output from syslog:

kernel: e1000e 0000:00:19.0 eth0: Detected Hardware Unit Hang:
kernel:  TDH                  <5f>
kernel:  TDT                  <8d>
kernel:  next_to_use          <8d>
kernel:  next_to_clean        <5c>
kernel: buffer_info[next_to_clean]:
kernel:  time_stamp           <6bd7b>
kernel:  next_to_watch        <5f>
kernel:  jiffies              <6c180>
kernel:  next_to_watch.status <0>
kernel: MAC Status             <40080083>
kernel: PHY Status             <796d>
kernel: PHY 1000BASE-T Status  <7800>
kernel: PHY Extended Status    <3000>
kernel: PCI Status             <10>
kernel: e1000e 0000:00:19.0 eth0: Reset adapter unexpectedly

This repeats several times and never recovers.

Disabling TCP segmentation offload (TSO) seems to be the only way to
work around this problem on the affected devices.

This issue was first reported in 14.01.2015:
https://marc.info/?l=linux-netdev&m=142124954120315

Signed-off-by: Juliana Rodrigueiro <juliana.rodrigueiro@intra2net.com>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 8b11682ebba2..4781a45c1047 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -6936,6 +6936,12 @@ static netdev_features_t e1000_fix_features(struct net_device *netdev,
 	if ((hw->mac.type >= e1000_pch2lan) && (netdev->mtu > ETH_DATA_LEN))
 		features &= ~NETIF_F_RXFCS;
 
+	if (adapter->pdev->device == E1000_DEV_ID_PCH2_LV_V) {
+		e_info("Disabling TSO on problematic device to avoid hardware unit hang.\n");
+		features &= ~NETIF_F_TSO;
+		features &= ~NETIF_F_TSO6;
+	}
+
 	/* Since there is no support for separate Rx/Tx vlan accel
 	 * enable/disable make sure Tx flag is always in same state as Rx.
 	 */
-- 
2.20.1




_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
