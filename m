Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4862928E2AB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Oct 2020 16:57:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 632B887AC8;
	Wed, 14 Oct 2020 14:57:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y734RlygtHqy; Wed, 14 Oct 2020 14:57:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5DBDB87AB1;
	Wed, 14 Oct 2020 14:57:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0A5C61BF286
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Oct 2020 14:25:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0602687A92
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Oct 2020 14:25:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gxTdZRIuA0KK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Oct 2020 14:25:10 +0000 (UTC)
X-Greylist: delayed 00:07:13 by SQLgrey-1.7.6
Received: from lb3-smtp-cloud9.xs4all.net (lb3-smtp-cloud9.xs4all.net
 [194.109.24.30])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1E82387A91
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Oct 2020 14:25:09 +0000 (UTC)
Received: from cust-69a1f852 ([IPv6:fc0c:c154:b0a8:48a5:61f4:988:bf85:2ed5])
 by smtp-cloud9.xs4all.net with ESMTPSA
 id ShbAkBzM84gEjShbBkMGFZ; Wed, 14 Oct 2020 16:17:54 +0200
Date: Wed, 14 Oct 2020 16:17:48 +0200
From: Antony Antony <antony@phenome.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Message-ID: <20201014141748.GA4910@AntonyAntony.local>
References: <20200828111101.GA16518@AntonyAntony.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200828111101.GA16518@AntonyAntony.local>
X-CMAE-Envelope: MS4xfM7tIBMXFrSidQkeXvTSVbRD8MrWZ/VMUtOkYRfQ6SuK8JzCAEBPyN7vXSx+Q0WnsawhC1JOZScmSW/aE+TkDKn2ApbWR1KwZxc26HqHO56BPML1oyqT
 HvM9PR/sWMeXj3lcCRx4z1eZXQ/d09YA4BF6dbiCe1LBLP23SSq8Nh3HBv/gNHId40wkzPwIUz6Mdw5glc80vZzoElBiohqaH3tFVH2SOgV95HUwbzlXltGO
 UON4JKAj6Hj5ZXSrXnt3SxaDyQsy6YfqfadIIZPc3GtRHiRgi5I2k797vEgJpOIY5UhPejnahJMbaDEmyhAVA/YUq5MW3Qq+OcnXPqEjfe31ATaSEKqPmYtw
 sDxtACkGcQC1xCvYCnTqvm8P+bNZ9XcNTTvJvIUU3Kla5an2yTfN0uD5RlM96HlQUkCo99kEMTADX4BKMHxZR0hazM7aTw4D/0xdYekBhz0Tu7VIf7vufTRS
 CApweuCJ9LNxhwxc7CjG1GXJRLfCq53QurErTlG4N53kwslkmdWsGIFV/fqidrJNTlFiqR0coUh7CKSH
X-Mailman-Approved-At: Wed, 14 Oct 2020 14:57:17 +0000
Subject: [Intel-wired-lan] [PATCH] ixgbe: fail to create xfrm offload of
 IPsec tunnel mode SA
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
Cc: Shannon Nelson <shannon.nelson@oracle.com>, netdev@vger.kernel.org,
 Steffen Klassert <steffen.klassert@secunet.com>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Based on talks and indirect references ixgbe IPsec offlod do not
support IPsec tunnel mode offload. It can only support IPsec transport
mode offload. Now explicitly fail when creating non transport mode SA
 with offload to avoid false performance expectations.

Fixes: 63a67fe229ea ("ixgbe: add ipsec offload add and remove SA")
Signed-off-by: Antony Antony <antony@phenome.org>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c | 5 +++++
 drivers/net/ethernet/intel/ixgbevf/ipsec.c     | 5 +++++
 2 files changed, 10 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
index eca73526ac86..54d47265a7ac 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
@@ -575,6 +575,11 @@ static int ixgbe_ipsec_add_sa(struct xfrm_state *xs)
 		return -EINVAL;
 	}
 
+	if (xs->props.mode != XFRM_MODE_TRANSPORT) {
+		netdev_err(dev, "Unsupported mode for ipsec offload\n");
+		return -EINVAL;
+	}
+
 	if (ixgbe_ipsec_check_mgmt_ip(xs)) {
 		netdev_err(dev, "IPsec IP addr clash with mgmt filters\n");
 		return -EINVAL;
diff --git a/drivers/net/ethernet/intel/ixgbevf/ipsec.c b/drivers/net/ethernet/intel/ixgbevf/ipsec.c
index 5170dd9d8705..caaea2c920a6 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ipsec.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ipsec.c
@@ -272,6 +272,11 @@ static int ixgbevf_ipsec_add_sa(struct xfrm_state *xs)
 		return -EINVAL;
 	}
 
+	if (xs->props.mode != XFRM_MODE_TRANSPORT) {
+		netdev_err(dev, "Unsupported mode for ipsec offload\n");
+		return -EINVAL;
+	}
+
 	if (xs->xso.flags & XFRM_OFFLOAD_INBOUND) {
 		struct rx_sa rsa;
 
-- 
2.21.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
