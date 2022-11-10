Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BD02D6243FE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Nov 2022 15:15:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9AF1C60F37;
	Thu, 10 Nov 2022 14:15:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9AF1C60F37
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668089701;
	bh=D/LCB9Gur+m1yynWhp0ZHDbkLrTmCBcJ3ib6k9k/Bpk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=jwKSD0E4ALrMlD3R8Qq7Ag/YnVSfAqg4BdjnisKOrhXgnG9ROZvt+x8bqBe5LO3mx
	 ppLFGisG0PwVKqONOixp2cXyt/O8cfSMQY3vwAB5oqyr63UXBr4nJjd3Rd9PJoaKSr
	 9eOCH1l8OuxszLRYbU4Zh4b3ob//MDpZbjDo7NKqpwnENSXnS38sLIpKQXAdiTj+UH
	 g8l+UyUuETL3Yi2zOpsJkvA+0KSbTnESTUgU7yxddNTYyL6nOcj9TIKfG48xV1HVi8
	 4kqM8XZPyhLcia3fovFLDIiIWRm98jNx/cBquJlTOUgBmFdA6KucYfx/5kTqbX2mLJ
	 nb9ierrJF6+tw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uhlzyX2bzmcV; Thu, 10 Nov 2022 14:15:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 805CF60B21;
	Thu, 10 Nov 2022 14:15:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 805CF60B21
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F2AA91BF39F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 14:14:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CBBC54160F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 14:14:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CBBC54160F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7zHXi_d6bxK4 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Nov 2022 14:14:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5B47D415E0
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5B47D415E0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 14:14:52 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-282-tYU5zWHKOVyRvehJvvCKmQ-1; Thu, 10 Nov 2022 09:14:48 -0500
X-MC-Unique: tYU5zWHKOVyRvehJvvCKmQ-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
 [10.11.54.9])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 95FB5381A731;
 Thu, 10 Nov 2022 14:14:47 +0000 (UTC)
Received: from p1.redhat.com (unknown [10.39.193.54])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8C4E54A9256;
 Thu, 10 Nov 2022 14:14:46 +0000 (UTC)
From: Stefan Assmann <sassmann@kpanic.de>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 10 Nov 2022 15:14:44 +0100
Message-Id: <20221110141444.1308237-1-sassmann@kpanic.de>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: kpanic.de
Subject: [Intel-wired-lan] [PATCH net] iavf: remove INITIAL_MAC_SET to allow
 gARP to work properly
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
Cc: netdev@vger.kernel.org, patryk.piotrowski@intel.com, sassmann@kpanic.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

IAVF_FLAG_INITIAL_MAC_SET prevents waiting on iavf_is_mac_set_handled()
the first time the MAC is set. This breaks gratuitous ARP because the
MAC address has not been updated yet when the gARP packet is sent out.

Current behaviour:
$ echo 1 > /sys/class/net/ens4f0/device/sriov_numvfs
iavf 0000:88:02.0: MAC address: ee:04:19:14:ec:ea
$ ip addr add 192.168.1.1/24 dev ens4f0v0
$ ip link set dev ens4f0v0 up
$ echo 1 > /proc/sys/net/ipv4/conf/ens4f0v0/arp_notify
$ ip link set ens4f0v0 addr 00:11:22:33:44:55
07:23:41.676611 ee:04:19:14:ec:ea > ff:ff:ff:ff:ff:ff, ethertype ARP (0x0806), length 42: Request who-has 192.168.1.1 tell 192.168.1.1, length 28

With IAVF_FLAG_INITIAL_MAC_SET removed:
$ echo 1 > /sys/class/net/ens4f0/device/sriov_numvfs
iavf 0000:88:02.0: MAC address: 3e:8a:16:a2:37:6d
$ ip addr add 192.168.1.1/24 dev ens4f0v0
$ ip link set dev ens4f0v0 up
$ echo 1 > /proc/sys/net/ipv4/conf/ens4f0v0/arp_notify
$ ip link set ens4f0v0 addr 00:11:22:33:44:55
07:28:01.836608 00:11:22:33:44:55 > ff:ff:ff:ff:ff:ff, ethertype ARP (0x0806), length 42: Request who-has 192.168.1.1 tell 192.168.1.1, length 28

Fixes: 35a2443d0910 ("iavf: Add waiting for response from PF in set mac")
Signed-off-by: Stefan Assmann <sassmann@kpanic.de>
---
 drivers/net/ethernet/intel/iavf/iavf.h      | 1 -
 drivers/net/ethernet/intel/iavf/iavf_main.c | 8 --------
 2 files changed, 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 3f6187c16424..0d1bab4ac1b0 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -298,7 +298,6 @@ struct iavf_adapter {
 #define IAVF_FLAG_QUEUES_DISABLED		BIT(17)
 #define IAVF_FLAG_SETUP_NETDEV_FEATURES		BIT(18)
 #define IAVF_FLAG_REINIT_MSIX_NEEDED		BIT(20)
-#define IAVF_FLAG_INITIAL_MAC_SET		BIT(23)
 /* duplicates for common code */
 #define IAVF_FLAG_DCB_ENABLED			0
 	/* flags for admin queue service task */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 258bdf8906dd..5fc47ca1b17c 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1087,12 +1087,6 @@ static int iavf_set_mac(struct net_device *netdev, void *p)
 	if (ret)
 		return ret;
 
-	/* If this is an initial set MAC during VF spawn do not wait */
-	if (adapter->flags & IAVF_FLAG_INITIAL_MAC_SET) {
-		adapter->flags &= ~IAVF_FLAG_INITIAL_MAC_SET;
-		return 0;
-	}
-
 	ret = wait_event_interruptible_timeout(adapter->vc_waitqueue,
 					       iavf_is_mac_set_handled(netdev, addr->sa_data),
 					       msecs_to_jiffies(2500));
@@ -2605,8 +2599,6 @@ static void iavf_init_config_adapter(struct iavf_adapter *adapter)
 		ether_addr_copy(netdev->perm_addr, adapter->hw.mac.addr);
 	}
 
-	adapter->flags |= IAVF_FLAG_INITIAL_MAC_SET;
-
 	adapter->tx_desc_count = IAVF_DEFAULT_TXD;
 	adapter->rx_desc_count = IAVF_DEFAULT_RXD;
 	err = iavf_init_interrupt_scheme(adapter);
-- 
2.37.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
