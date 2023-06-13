Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7799572E2A4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jun 2023 14:16:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 12C01416E2;
	Tue, 13 Jun 2023 12:16:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 12C01416E2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686658588;
	bh=VLAcEyB6eUxV02naHPuq7fAM5Ii1z0zJAI1LaCWMIVs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Qk8Tzxei02+pBd4pyQT5rWk6f5f4BiqxSBoW61XTDvg61vnJ/MM8Tn5ZKf7DmMWOw
	 ddIrX+RdQLbKQrQCKR1f6qpnTLg4k30/7ItZsUy6TQnAe2Y3uV6dmmGbUHUkHUFpQI
	 gdWdZCKu+gNbED+y6M4QNpn8lrrmqgOjILvuTnqx4Rkd/ja/sJzZqBl0Vqnx6pyCKF
	 NYtdIdUHdJJKX0udfUL9HFwMjUAXnQqr9HdIHMzajd2auqhKNIvDqX1Vee0fiEoj1z
	 2fcnleVOlmxWiG2n+kMlTJjT4Q8Dj52buCJq8neMB2h9/sGYfcXp0rz0SF1G0/WDuJ
	 IEqWU8W0G1BHw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uWjZkyrawG1k; Tue, 13 Jun 2023 12:16:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EF6D44063D;
	Tue, 13 Jun 2023 12:16:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EF6D44063D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2E8BD1BF352
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 12:16:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 151D06108F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 12:16:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 151D06108F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n33792Ipze7f for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jun 2023 12:16:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4FA1B6103A
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4FA1B6103A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 12:16:18 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-588-699EPON0PX-PcHtYs6wIVg-1; Tue, 13 Jun 2023 08:16:15 -0400
X-MC-Unique: 699EPON0PX-PcHtYs6wIVg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EEA25185A791;
 Tue, 13 Jun 2023 12:16:14 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.43.2.89])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 787251410F01;
 Tue, 13 Jun 2023 12:16:13 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Tue, 13 Jun 2023 14:16:10 +0200
Message-Id: <20230613121610.137654-2-ivecera@redhat.com>
In-Reply-To: <20230613121610.137654-1-ivecera@redhat.com>
References: <20230613121610.137654-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1686658577;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=x8Lx4CZ5JkvZXj2FnosCsfWTRe7EkuTyWCnNqOWAfBA=;
 b=YyiYY5hhZ+PVxAAPHwwVpOWrJi1MRtrMXmuoyi12GGGY0/0tws7eqV5mhArtxcA/fRiUPP
 GJlmKb8Zrh/nMvXBnypn9zqD47lyoNON/zpkkcPXDc8Iyvys33i9iK+O2OM/YEye+2PWHs
 db1acDTHdZiWSiwoaFQPdTPOf6f76MA=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=YyiYY5hh
Subject: [Intel-wired-lan] [PATCH net-next 2/2] i40e: Wait for pending VF
 reset in VF set callbacks
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
Cc: Ma Yuying <yuma@redhat.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
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
index b84b6b675fa7..4741ba14ab27 100644
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
2.39.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
