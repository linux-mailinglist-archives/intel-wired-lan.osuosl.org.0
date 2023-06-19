Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF96734E82
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Jun 2023 10:50:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2ED0881A12;
	Mon, 19 Jun 2023 08:50:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2ED0881A12
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687164605;
	bh=C9dAlVdo+at/jCW8IW8GAqHH0QXQt8dlCcWsRdI4Wpw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=JFuzczLmU7YDjm/njmwhfPQLYJfmiM0GbLVI16kvmfTFSVQXoBPBBS1VtZAJTHeMj
	 iGeH1fXC0Ptg8nxGsWJVqrVINWCrOCAkAPs25O1Hjeq3GUQsaD9zK+czQh5m5SmbXW
	 0laMaNu42Ukn4vWQunbUdMhSQbLNdVFOHuYiPC311l5CEu15nZ25eLBeTM1nmpofpp
	 nnbWZtEqznMrcfDfOipplt/AGdQooUNelf2f9TZMZVhq9muUeBweABBBIiSTuI73jZ
	 0rSQ7zFj/hiIFitRLvdqYbenQyZEUzg6cDenxbUdXBhzm8OkHima1Lv3BYhSYmZ0/8
	 2bKhpNRoNxFKQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MFWdakva5HOk; Mon, 19 Jun 2023 08:50:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2656981517;
	Mon, 19 Jun 2023 08:50:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2656981517
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EF4471BF591
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 08:49:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C66A9410C6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 08:49:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C66A9410C6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kzuQ5R6OaRCE for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Jun 2023 08:49:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CBE35410C5
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CBE35410C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 08:49:57 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-623--BO6auxTNqi6EjEutk2LbA-1; Mon, 19 Jun 2023 04:49:52 -0400
X-MC-Unique: -BO6auxTNqi6EjEutk2LbA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D1F6738173C3;
 Mon, 19 Jun 2023 08:49:51 +0000 (UTC)
Received: from swamp.redhat.com (unknown [10.45.224.141])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 57F7CC1604C;
 Mon, 19 Jun 2023 08:49:49 +0000 (UTC)
From: Petr Oros <poros@redhat.com>
To: netdev@vger.kernel.org
Date: Mon, 19 Jun 2023 10:49:48 +0200
Message-ID: <20230619084948.360128-1-poros@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1687164596;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=y6jIGo4xTlprhScv166cVpFrTc6t8hh4yqvX6aPSWM0=;
 b=TEaapDIDZPOPRxn9MTJWwcfzP3UhbaCEc5jqcbAANW8DhysLu8t/h7HrwGj6fvw+40CLdz
 rBvB/z5o+5dSj2hSsAjAY/ZiVOxlnTMO84Hha5hSmNTztCcygTLe26Hh2V1tJvQ5jhd3t2
 V32Dk2iulTcdK4Mcg1r4e3cLT+momDU=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=TEaapDID
Subject: [Intel-wired-lan] [PATCH net] ice: ice_vsi_release cleanup
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
Cc: intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Since commit 6624e780a577fc ("ice: split ice_vsi_setup into smaller
functions") ice_vsi_release does things twice. There is unregister
netdev which is unregistered in ice_deinit_eth also.

It also unregisters the devlink_port twice which is also unregistered
in ice_deinit_eth(). This double deregistration is hidden because
devl_port_unregister ignores the return value of xa_erase.

[   68.642167] Call Trace:
[   68.650385]  ice_devlink_destroy_pf_port+0xe/0x20 [ice]
[   68.655656]  ice_vsi_release+0x445/0x690 [ice]
[   68.660147]  ice_deinit+0x99/0x280 [ice]
[   68.664117]  ice_remove+0x1b6/0x5c0 [ice]

[  171.103841] Call Trace:
[  171.109607]  ice_devlink_destroy_pf_port+0xf/0x20 [ice]
[  171.114841]  ice_remove+0x158/0x270 [ice]
[  171.118854]  pci_device_remove+0x3b/0xc0
[  171.122779]  device_release_driver_internal+0xc7/0x170
[  171.127912]  driver_detach+0x54/0x8c
[  171.131491]  bus_remove_driver+0x77/0xd1
[  171.135406]  pci_unregister_driver+0x2d/0xb0
[  171.139670]  ice_module_exit+0xc/0x55f [ice]

Fixes: 6624e780a577 ("ice: split ice_vsi_setup into smaller functions")
Signed-off-by: Petr Oros <poros@redhat.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 27 ------------------------
 1 file changed, 27 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 11ae0e41f518a1..284a1f0bfdb545 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3272,39 +3272,12 @@ int ice_vsi_release(struct ice_vsi *vsi)
 		return -ENODEV;
 	pf = vsi->back;
 
-	/* do not unregister while driver is in the reset recovery pending
-	 * state. Since reset/rebuild happens through PF service task workqueue,
-	 * it's not a good idea to unregister netdev that is associated to the
-	 * PF that is running the work queue items currently. This is done to
-	 * avoid check_flush_dependency() warning on this wq
-	 */
-	if (vsi->netdev && !ice_is_reset_in_progress(pf->state) &&
-	    (test_bit(ICE_VSI_NETDEV_REGISTERED, vsi->state))) {
-		unregister_netdev(vsi->netdev);
-		clear_bit(ICE_VSI_NETDEV_REGISTERED, vsi->state);
-	}
-
-	if (vsi->type == ICE_VSI_PF)
-		ice_devlink_destroy_pf_port(pf);
-
 	if (test_bit(ICE_FLAG_RSS_ENA, pf->flags))
 		ice_rss_clean(vsi);
 
 	ice_vsi_close(vsi);
 	ice_vsi_decfg(vsi);
 
-	if (vsi->netdev) {
-		if (test_bit(ICE_VSI_NETDEV_REGISTERED, vsi->state)) {
-			unregister_netdev(vsi->netdev);
-			clear_bit(ICE_VSI_NETDEV_REGISTERED, vsi->state);
-		}
-		if (test_bit(ICE_VSI_NETDEV_ALLOCD, vsi->state)) {
-			free_netdev(vsi->netdev);
-			vsi->netdev = NULL;
-			clear_bit(ICE_VSI_NETDEV_ALLOCD, vsi->state);
-		}
-	}
-
 	/* retain SW VSI data structure since it is needed to unregister and
 	 * free VSI netdev when PF is not in reset recovery pending state,\
 	 * for ex: during rmmod.
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
