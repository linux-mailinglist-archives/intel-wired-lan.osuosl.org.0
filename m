Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F49322BC9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Feb 2021 14:58:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F09F786FE2;
	Tue, 23 Feb 2021 13:58:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id njKNNI14vz6c; Tue, 23 Feb 2021 13:58:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7E4A187035;
	Tue, 23 Feb 2021 13:58:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4847A1BF84C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Feb 2021 13:58:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 43A8D86FE2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Feb 2021 13:58:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RvHsY9Vvg9uk for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Feb 2021 13:58:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2CA7186F73
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Feb 2021 13:58:41 +0000 (UTC)
IronPort-SDR: IUftLEEbOwf/GtNvgP9QGT7ZWYY+Rz/M7cNL6PFPdtAu4YjuzqGnbkbl1IbhZe5Trf2b7WoDMX
 F2yFKkckd14w==
X-IronPort-AV: E=McAfee;i="6000,8403,9903"; a="204236725"
X-IronPort-AV: E=Sophos;i="5.81,200,1610438400"; d="scan'208";a="204236725"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2021 05:58:40 -0800
IronPort-SDR: LamSFHqt+tJTgSa82a7kGiqvgJVIE0eHKmLkPMUd20zQHXMcb1GRjm7MrrP02/+6O73uOgtpME
 lwgbNLG8vLqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,200,1610438400"; d="scan'208";a="593200699"
Received: from amlin-018-150.igk.intel.com ([10.102.18.150])
 by fmsmga006.fm.intel.com with ESMTP; 23 Feb 2021 05:58:39 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 23 Feb 2021 13:58:28 +0000
Message-Id: <20210223135828.19179-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH net v2] i40e: Fix add tc filter for IPv6
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

Change-Id: I92412cb419d29bb6ce4decbc7c1cd73df9b4db5d
Title: i40e: Fix add tc filter for IPv6
Change-type: DefectResolution
HSDES-Number: 1806493117
HSDES-Tenant: server_platf_lan.bug
Fixes: 2f4b411a3d67 ("i40e: Enable cloud filters via tc-flower")
Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
Tested-by: nosbuild <nosbuild@intel.com>
Reviewed-by: Jaroslaw Gawin <jaroslawx.gawin@intel.com>
---
v2: Added space after Fixes tag hash
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
