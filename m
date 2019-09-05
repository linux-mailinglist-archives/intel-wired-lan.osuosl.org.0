Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1080DA9AB8
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Sep 2019 08:34:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 83D10866AD;
	Thu,  5 Sep 2019 06:34:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7ghZNcrwTgXQ; Thu,  5 Sep 2019 06:34:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CDE3986559;
	Thu,  5 Sep 2019 06:34:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4FAFB1BF423
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2019 06:34:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 44AEB853C3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2019 06:34:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Oj5QN3vNsyaY for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Sep 2019 06:34:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7979C845C5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2019 06:34:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A9C0AC05E740;
 Thu,  5 Sep 2019 06:34:36 +0000 (UTC)
Received: from p50.redhat.com (ovpn-117-224.ams2.redhat.com [10.36.117.224])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 25D296060D;
 Thu,  5 Sep 2019 06:34:34 +0000 (UTC)
From: Stefan Assmann <sassmann@kpanic.de>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  5 Sep 2019 08:34:22 +0200
Message-Id: <20190905063422.28743-1-sassmann@kpanic.de>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Thu, 05 Sep 2019 06:34:36 +0000 (UTC)
Subject: [Intel-wired-lan] [PATCH] iavf: fix MAC address setting for VFs
 when filter is rejected
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
Cc: netdev@vger.kernel.org, davem@davemloft.net, sassmann@kpanic.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently iavf unconditionally applies MAC address change requests. This
brings the VF in a state where it is no longer able to pass traffic if
the PF rejects a MAC filter change for the VF.
A typical scenario for a rejected MAC filter is for an untrusted VF to
request to change the MAC address when an administratively set MAC is
present.

To keep iavf working in this scenario the MAC filter handling in iavf
needs to act on the PF reply regarding the MAC filter change. In the
case of an ack the new MAC address gets set, whereas in the case of a
nack the previous MAC address needs to stay in place.

Signed-off-by: Stefan Assmann <sassmann@kpanic.de>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c     | 1 -
 drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 7 +++++++
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 39cc67cde89e..9e571a657fe7 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -826,7 +826,6 @@ static int iavf_set_mac(struct net_device *netdev, void *p)
 
 	if (f) {
 		ether_addr_copy(hw->mac.addr, addr->sa_data);
-		ether_addr_copy(netdev->dev_addr, adapter->hw.mac.addr);
 	}
 
 	return (f == NULL) ? -ENOMEM : 0;
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index d49d58a6de80..c46770eba320 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -1252,6 +1252,8 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 		case VIRTCHNL_OP_ADD_ETH_ADDR:
 			dev_err(&adapter->pdev->dev, "Failed to add MAC filter, error %s\n",
 				iavf_stat_str(&adapter->hw, v_retval));
+			/* restore administratively set MAC address */
+			ether_addr_copy(adapter->hw.mac.addr, netdev->dev_addr);
 			break;
 		case VIRTCHNL_OP_DEL_VLAN:
 			dev_err(&adapter->pdev->dev, "Failed to delete VLAN filter, error %s\n",
@@ -1319,6 +1321,11 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 		}
 	}
 	switch (v_opcode) {
+	case VIRTCHNL_OP_ADD_ETH_ADDR: {
+		if (!ether_addr_equal(netdev->dev_addr, adapter->hw.mac.addr))
+			ether_addr_copy(netdev->dev_addr, adapter->hw.mac.addr);
+		}
+		break;
 	case VIRTCHNL_OP_GET_STATS: {
 		struct iavf_eth_stats *stats =
 			(struct iavf_eth_stats *)msg;
-- 
2.21.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
