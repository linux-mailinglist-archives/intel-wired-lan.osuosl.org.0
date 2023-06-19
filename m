Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42FF77354B4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Jun 2023 12:58:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CCD5840BA3;
	Mon, 19 Jun 2023 10:58:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CCD5840BA3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687172314;
	bh=zohzoIxIOj2R90jYogTefjojHhcerEnRSGQyjZfmCIA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=xO/GewoATOscRlkQepNTl/r0pp9GibNd/XKNLU0c95mjDwInnWoln81VCfSzF2vLU
	 XMSa1ikgN6pLN/nahZlPRhKCMdsN9BX3iqM5kQbJWx8y2fDct+HsiEgVTUQ0aSRjzc
	 DwwAbCpxD6zjUkCq8ueDLxwLRcJvr8tvTd9mA+5AsCBmK+0pzZb3pdu4YmYY+S2JqK
	 eL1qsZiyV1GoZboAlbWMuKkPJoa6Obl6T4O9SrBLBTBlKfXoOeOmlPXcnpznvTG7xO
	 ig+Olm6nGp2wA9vk9bLvEQh82oeYly300ZjKxwWIH+6SVuGkTDMfA7g19/XHXGi4PA
	 rSROVFHe42y9g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EOZ_1m8IYujH; Mon, 19 Jun 2023 10:58:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8DC5A40A08;
	Mon, 19 Jun 2023 10:58:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8DC5A40A08
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A3F261BF3DE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 10:58:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7C512404EB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 10:58:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7C512404EB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ibEUK7OtuxPl for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Jun 2023 10:58:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6B92A4026E
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6B92A4026E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 10:58:27 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-96-CXW5x-a_OUCulziiNLLqJw-1; Mon, 19 Jun 2023 06:58:20 -0400
X-MC-Unique: CXW5x-a_OUCulziiNLLqJw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AA91D101A52C;
 Mon, 19 Jun 2023 10:58:19 +0000 (UTC)
Received: from swamp.redhat.com (unknown [10.45.224.86])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9E076C1603B;
 Mon, 19 Jun 2023 10:58:17 +0000 (UTC)
From: Petr Oros <poros@redhat.com>
To: netdev@vger.kernel.org
Date: Mon, 19 Jun 2023 12:58:13 +0200
Message-ID: <20230619105813.369912-1-poros@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1687172306;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=ACfdLduvpo39aBxZ+VT/qUTVLmOjSOUrCckJRvc8dEA=;
 b=Xg0wXtbc1JEZM9WuXtOMVMYvYHyciVjZ0hXkDyHid3XHV9H8Dfu7DmWc32G+akqySO5Vyk
 Lu8v40tPpRtw7d9MPQpNMOdO+iREYTdDptAIgMS1vIAQeeJKZ+t1Xe3DMc+qBngF1tx641
 oiQhVF7DbwSEJzF4DkLsW9XLaPW+jNE=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Xg0wXtbc
Subject: [Intel-wired-lan] [PATCH net v2] ice: Unregister netdev and
 devlink_port only once
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
Cc: pmenzel@molgen.mpg.de, intel-wired-lan@lists.osuosl.org,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org, edumazet@google.com,
 anthony.l.nguyen@intel.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
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
v2: reword subject

v1: https://lore.kernel.org/netdev/20230619084948.360128-1-poros@redhat.com/
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
