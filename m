Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83FCC405F9F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Sep 2021 00:34:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B196F405F1;
	Thu,  9 Sep 2021 22:34:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lrt7Oq8G5Uao; Thu,  9 Sep 2021 22:34:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4C12D405D5;
	Thu,  9 Sep 2021 22:34:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0A9221BF27A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Sep 2021 22:34:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 02B4F405D5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Sep 2021 22:34:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LaHcaRzyXu_A for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Sep 2021 22:34:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C3ABA405A5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Sep 2021 22:34:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10102"; a="284633412"
X-IronPort-AV: E=Sophos;i="5.85,281,1624345200"; d="scan'208";a="284633412"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2021 15:34:01 -0700
X-IronPort-AV: E=Sophos;i="5.85,281,1624345200"; d="scan'208";a="466778996"
Received: from dmert-dev.jf.intel.com ([10.166.241.5])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2021 15:33:59 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Thu,  9 Sep 2021 08:12:23 -0700
Message-Id: <20210909151223.572918-1-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH RESEND net] ice: Correctly deal with PFs
 that do not support RDMA
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
Cc: leon@kernel.org, linux-rdma@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, jgg@ziepe.ca, yongxin.liu@windriver.com,
 intel-wired-lan@lists.osuosl.org, shiraz.saleem@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

There are two cases where the current PF does not support RDMA
functionality.  The first is if the NVM loaded on the device is set
to not support RDMA (common_caps.rdma is false).  The second is if
the kernel bonding driver has included the current PF in an active
link aggregate.

When the driver has determined that this PF does not support RDMA, then
auxiliary devices should not be created on the auxiliary bus.  Without
a device on the auxiliary bus, even if the irdma driver is present, there
will be no RDMA activity attempted on this PF.

Currently, in the reset flow, an attempt to create auxiliary devices is
performed without regard to the ability of the PF.  There needs to be a
check in ice_aux_plug_dev (as the central point that creates auxiliary
devices) to see if the PF is in a state to support the functionality.

When disabling and re-enabling RDMA due to the inclusion/removal of the PF
in a link aggregate, we also need to set/clear the bit which controls
auxiliary device creation so that a reset recovery in a link aggregate
situation doesn't try to create auxiliary devices when it shouldn't.

Fixes: f9f5301e7e2d ("ice: Register auxiliary device to provide RDMA")
Reported-by: Yongxin Liu <yongxin.liu@windriver.com>
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h     | 2 ++
 drivers/net/ethernet/intel/ice/ice_idc.c | 6 ++++++
 2 files changed, 8 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index eadcb9958346..3c4f08d20414 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -695,6 +695,7 @@ static inline void ice_set_rdma_cap(struct ice_pf *pf)
 {
 	if (pf->hw.func_caps.common_cap.rdma && pf->num_rdma_msix) {
 		set_bit(ICE_FLAG_RDMA_ENA, pf->flags);
+		set_bit(ICE_FLAG_AUX_ENA, pf->flags);
 		ice_plug_aux_dev(pf);
 	}
 }
@@ -707,5 +708,6 @@ static inline void ice_clear_rdma_cap(struct ice_pf *pf)
 {
 	ice_unplug_aux_dev(pf);
 	clear_bit(ICE_FLAG_RDMA_ENA, pf->flags);
+	clear_bit(ICE_FLAG_AUX_ENA, pf->flags);
 }
 #endif /* _ICE_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_idc.c b/drivers/net/ethernet/intel/ice/ice_idc.c
index 1f2afdf6cd48..adcc9a251595 100644
--- a/drivers/net/ethernet/intel/ice/ice_idc.c
+++ b/drivers/net/ethernet/intel/ice/ice_idc.c
@@ -271,6 +271,12 @@ int ice_plug_aux_dev(struct ice_pf *pf)
 	struct auxiliary_device *adev;
 	int ret;
 
+	/* if this PF doesn't support a technology that requires auxiliary
+	 * devices, then gracefully exit
+	 */
+	if (!ice_is_aux_ena(pf))
+		return 0;
+
 	iadev = kzalloc(sizeof(*iadev), GFP_KERNEL);
 	if (!iadev)
 		return -ENOMEM;
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
