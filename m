Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 73C7F7509A3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jul 2023 15:33:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1505161191;
	Wed, 12 Jul 2023 13:33:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1505161191
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689168789;
	bh=EX8d4BRblG3akNTLkwW867GH61zc09qQpCgZxfJEg8U=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=APaVgUrZEVtGQRwLo+JucibG0uwsM8GlhfVkaZ5X4SHOE05sybaSmIFAl+BUuAzLh
	 1yyyuFOWrZ2OXVbaA4SP0fDtS0/F2DoL1b5a0wWE4qN11kjXWaNQ7b8QCK+6idm1cd
	 DSqZs876XA9j/See1mRzyP59AEQWdfHnG9mR291r+NfoxM7VeBRQAg81frodptug9e
	 CaTZ/lOpFZcVUtUGwQL5BVlzoOI3m00KTNBPWnDGpGaqs/XpqXLSBkmHyP+6fy9E9U
	 Uy6HwRVMB7qxEvZOvLdnvwMMr0LquwUb9B43qd2IqRBsOlfa/Gz7lie9kWCLNCLNqM
	 r/LbOQzXsw4lQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7ZX-5-jHoILX; Wed, 12 Jul 2023 13:33:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CC90A60B3D;
	Wed, 12 Jul 2023 13:33:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CC90A60B3D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C7E8A1BF3CB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 13:33:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AB6A3403A5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 13:33:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AB6A3403A5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GQv96XPkLnm7 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jul 2023 13:33:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E2707400CC
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E2707400CC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 13:33:00 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-551-fLVZVRMLMiOdyLSlbe9mpw-1; Wed, 12 Jul 2023 09:32:54 -0400
X-MC-Unique: fLVZVRMLMiOdyLSlbe9mpw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
 [10.11.54.6])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9A9FD8022EF;
 Wed, 12 Jul 2023 13:32:53 +0000 (UTC)
Received: from p1.luc.cera.cz.com (unknown [10.45.225.8])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BE8092166B27;
 Wed, 12 Jul 2023 13:32:51 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Wed, 12 Jul 2023 15:32:47 +0200
Message-ID: <20230712133247.588636-2-ivecera@redhat.com>
In-Reply-To: <20230712133247.588636-1-ivecera@redhat.com>
References: <20230712133247.588636-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1689168779;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0i3InOD4/QpHddyNR5vxwmI9uh0f61TZ6Eu8ertMv3o=;
 b=U8Y+vSc9tE4DMs0c2UdvqAJ9dhST/cFiS1w9zJush61FxiO/12z4IJ5PVumnSh2OmXuPIj
 pZ/Fpyjz3Gjfs7VbfBOJ5j3+6riHSZGkJfV3tPiNJowxc7OuWd4f+NshnnPzVXk2eQ2LBv
 LQw1jt09TJSVAbcoRSOyy+X90NNUjRo=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=U8Y+vSc9
Subject: [Intel-wired-lan] [PATCH v2 2/2] i40e: Wait for pending VF reset in
 VF set callbacks
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
Cc: Ma Yuying <yuma@redhat.com>, Leon Romanovsky <leon@kernel.org>,
 Simon Horman <simon.horman@corigine.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Commit 028daf80117376 ("i40e: Fix attach VF to VM issue") fixed
a race between i40e_ndo_set_vf_mac() and i40e_reset_vf() during
an attachment of VF device to VM. This issue is not related to
setting MAC address only but also VLAN assignment to particular
VF because the newer libvirt sets configured MAC address as well
as an optional VLAN. The same behavior is also for i40e's
.ndo_set_vf_rate and .ndo_set_vf_spoofchk where the callbacks
just check if the VF was initialized but not wait for the finish
of pending reset.

Reproducer:
[root@host ~]# virsh attach-interface guest hostdev --managed 0000:02:02.0 --mac 52:54:00:b4:aa:bb
error: Failed to attach interface
error: Cannot set interface MAC/vlanid to 52:54:00:b4:aa:bb/0 for ifname enp2s0f0 vf 0: Resource temporarily unavailable

Fix this issue by using i40e_check_vf_init_timeout() helper to check
whether a reset of particular VF was finished in i40e's
.ndo_set_vf_vlan, .ndo_set_vf_rate and .ndo_set_vf_spoofchk callbacks.

Tested-by: Ma Yuying <yuma@redhat.com>
Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 .../net/ethernet/intel/i40e/i40e_virtchnl_pf.c   | 16 +++++-----------
 1 file changed, 5 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index ad30f9e99db9..87207fc546b7 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -4466,13 +4466,11 @@ int i40e_ndo_set_vf_port_vlan(struct net_device *netdev, int vf_id,
 	}
 
 	vf = &pf->vf[vf_id];
-	vsi = pf->vsi[vf->lan_vsi_idx];
-	if (!test_bit(I40E_VF_STATE_INIT, &vf->vf_states)) {
-		dev_err(&pf->pdev->dev, "VF %d still in reset. Try again.\n",
-			vf_id);
+	if (!i40e_check_vf_init_timeout(vf)) {
 		ret = -EAGAIN;
 		goto error_pvid;
 	}
+	vsi = pf->vsi[vf->lan_vsi_idx];
 
 	if (le16_to_cpu(vsi->info.pvid) == vlanprio)
 		/* duplicate request, so just return success */
@@ -4616,13 +4614,11 @@ int i40e_ndo_set_vf_bw(struct net_device *netdev, int vf_id, int min_tx_rate,
 	}
 
 	vf = &pf->vf[vf_id];
-	vsi = pf->vsi[vf->lan_vsi_idx];
-	if (!test_bit(I40E_VF_STATE_INIT, &vf->vf_states)) {
-		dev_err(&pf->pdev->dev, "VF %d still in reset. Try again.\n",
-			vf_id);
+	if (!i40e_check_vf_init_timeout(vf)) {
 		ret = -EAGAIN;
 		goto error;
 	}
+	vsi = pf->vsi[vf->lan_vsi_idx];
 
 	ret = i40e_set_bw_limit(vsi, vsi->seid, max_tx_rate);
 	if (ret)
@@ -4789,9 +4785,7 @@ int i40e_ndo_set_vf_spoofchk(struct net_device *netdev, int vf_id, bool enable)
 	}
 
 	vf = &(pf->vf[vf_id]);
-	if (!test_bit(I40E_VF_STATE_INIT, &vf->vf_states)) {
-		dev_err(&pf->pdev->dev, "VF %d still in reset. Try again.\n",
-			vf_id);
+	if (!i40e_check_vf_init_timeout(vf)) {
 		ret = -EAGAIN;
 		goto out;
 	}
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
