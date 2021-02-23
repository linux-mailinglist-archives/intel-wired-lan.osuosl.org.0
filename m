Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C32322C3B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Feb 2021 15:29:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4E1968723D;
	Tue, 23 Feb 2021 14:29:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7ckODa6PnB3O; Tue, 23 Feb 2021 14:29:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CEE4487239;
	Tue, 23 Feb 2021 14:29:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 06C881BF36B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Feb 2021 14:29:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E5B45831E7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Feb 2021 14:29:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Skw5aFHQkZtZ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Feb 2021 14:29:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9D1AD82FBE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Feb 2021 14:29:26 +0000 (UTC)
IronPort-SDR: fDExgtd4EOBZLZn3V9pDEHBrLjAbUkU6N4SXcWnh2ZknAEa9PghJe+b0gbB1ZKnPmt7fAagire
 ku8xl3Bv2yDw==
X-IronPort-AV: E=McAfee;i="6000,8403,9903"; a="184112104"
X-IronPort-AV: E=Sophos;i="5.81,200,1610438400"; d="scan'208";a="184112104"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2021 06:29:25 -0800
IronPort-SDR: D97jvp0saDdvFeaNo5VuR5+bNUSfKicXi2MLvcUvt0VVA1Cpn6x3Rm8CEjKzgZcgtTzKBnhrdS
 atCGNuB2hLIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,200,1610438400"; d="scan'208";a="499123902"
Received: from amlin-018-150.igk.intel.com ([10.102.18.150])
 by fmsmga001.fm.intel.com with ESMTP; 23 Feb 2021 06:29:25 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 23 Feb 2021 14:29:23 +0000
Message-Id: <20210223142923.30001-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH net v4] i40e: Fix add tc filter for IPv6
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
Cc: Mateusz Palczewski <mateusz.palczewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix insufficient distinction between IPv4 and IPv6 addresses
when creating a filter.
IPv4 and IPv6 are kept in the same memory area. If IPv6 is added,
then it's caught by IPv4 check, which leads to err -95.

Fixes: 2f4b411a3d67 ("i40e: Enable cloud filters via tc-flower")
Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
Reviewed-by: Jaroslaw Gawin <jaroslawx.gawin@intel.com>
---
v4: Added space after Fixes tag hash
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 630258e..bb87164 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -8115,7 +8115,8 @@ int i40e_add_del_cloud_filter_big_buf(struct i40e_vsi *vsi,
 		return -EOPNOTSUPP;
 
 	/* adding filter using src_port/src_ip is not supported at this stage */
-	if (filter->src_port || filter->src_ipv4 ||
+	if (filter->src_port ||
+	    (filter->src_ipv4 && filter->n_proto != ETH_P_IPV6) ||
 	    !ipv6_addr_any(&filter->ip.v6.src_ip6))
 		return -EOPNOTSUPP;
 
@@ -8144,7 +8145,7 @@ int i40e_add_del_cloud_filter_big_buf(struct i40e_vsi *vsi,
 			cpu_to_le16(I40E_AQC_ADD_CLOUD_FILTER_MAC_VLAN_PORT);
 		}
 
-	} else if (filter->dst_ipv4 ||
+	} else if ((filter->dst_ipv4 && filter->n_proto != ETH_P_IPV6) ||
 		   !ipv6_addr_any(&filter->ip.v6.dst_ip6)) {
 		cld_filter.element.flags =
 				cpu_to_le16(I40E_AQC_ADD_CLOUD_FILTER_IP_PORT);
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
