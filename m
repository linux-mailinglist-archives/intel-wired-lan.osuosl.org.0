Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 377D77D504B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Oct 2023 14:51:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C67BD83EF8;
	Tue, 24 Oct 2023 12:51:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C67BD83EF8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698151892;
	bh=eDA08gaNFcYjqPrH2W14cZzcgZh0ZM/cy612qynwuYs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7sTrOue+/NYuQ6CL1er5VQ04mtEezEt6E/OK03PvdJ5MXRDSxn07KaVpe++t4WAGr
	 Bbq2eB7Q8c6VYHZrntEGYXCrP30Z66vi/vInbaZtGg48egV9KrWsaM6J4vAlpRev5Y
	 kWXGtkIDHfl91iergwKmrl+OL++SGVLNBTfT0yENJ+H1bYHNqTvTl5fBd0pY66LWeh
	 xAFxHFkrY1LqY4tUPNE+8KZ7V+Na794AbM8ZMxNNdZkbg0F0TeJ8WvKmGNANvek8d+
	 Z2yNb1vm6kiELvX3x+btTyWdKvnP6wTk0aW4EJW7VU6aLKqwfI0qFtv03K70711QP4
	 ZnGdOivd2Ym+Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OhLT7TLutQSR; Tue, 24 Oct 2023 12:51:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B50C583F59;
	Tue, 24 Oct 2023 12:51:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B50C583F59
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8552B1BF38E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 12:51:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5D02042ED4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 12:51:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5D02042ED4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J0_DlYuYFOPP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Oct 2023 12:51:25 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7266340558
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 12:51:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7266340558
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-450-bC_omjoMOQaoQSwrgvd8QQ-1; Tue, 24 Oct 2023 08:51:14 -0400
X-MC-Unique: bC_omjoMOQaoQSwrgvd8QQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
 [10.11.54.5])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 98AE88164E5;
 Tue, 24 Oct 2023 12:51:13 +0000 (UTC)
Received: from p1.luc.com (unknown [10.43.2.183])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 238B6503B;
 Tue, 24 Oct 2023 12:51:12 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Tue, 24 Oct 2023 14:51:09 +0200
Message-ID: <20231024125109.844045-2-ivecera@redhat.com>
In-Reply-To: <20231024125109.844045-1-ivecera@redhat.com>
References: <20231024125109.844045-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1698151884;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=uQvIAHxlIRsODDQvHhHg2yEUAX99/4EQzAeL/zSIx6I=;
 b=f1UJ0y7MjTSoV3/BcQqmBG5P0tarY7wNKg6kFNzvEWnw0fwulJNlAN81SSmiO0hXjXk64H
 WRK+Hl+5b0uJ6DGYveBBFWFjxkKVjHJ4RD319s5j+h7/68HhwrqZTbX8bSbO9E5NWsLCP1
 8yekvMqS9zPBGGzId6gdR6Y96g6xcd0=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=f1UJ0y7M
Subject: [Intel-wired-lan] [PATCH net-next 2/2] i40e: Fix devlink port
 unregistering
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
Cc: intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ensure that devlink port is unregistered after unregistering
of net device.

Reproducer:
[root@host ~]# rmmod i40e
[ 4742.939386] i40e 0000:02:00.1: i40e_ptp_stop: removed PHC on enp2s0f1np1
[ 4743.059269] ------------[ cut here ]------------
[ 4743.063900] WARNING: CPU: 21 PID: 10766 at net/devlink/port.c:1078 devl_port_unregister+0x69/0x80
...

Fixes: 9e479d64dc58 ("i40e: Add initial devlink support")
Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index df058540d277..3f396c100835 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -14181,8 +14181,7 @@ int i40e_vsi_release(struct i40e_vsi *vsi)
 	}
 	set_bit(__I40E_VSI_RELEASING, vsi->state);
 	uplink_seid = vsi->uplink_seid;
-	if (vsi->type == I40E_VSI_MAIN)
-		i40e_devlink_destroy_port(pf);
+
 	if (vsi->type != I40E_VSI_SRIOV) {
 		if (vsi->netdev_registered) {
 			vsi->netdev_registered = false;
@@ -14196,6 +14195,9 @@ int i40e_vsi_release(struct i40e_vsi *vsi)
 		i40e_vsi_disable_irq(vsi);
 	}
 
+	if (vsi->type == I40E_VSI_MAIN)
+		i40e_devlink_destroy_port(pf);
+
 	spin_lock_bh(&vsi->mac_filter_hash_lock);
 
 	/* clear the sync flag on all filters */
@@ -14370,14 +14372,14 @@ static struct i40e_vsi *i40e_vsi_reinit_setup(struct i40e_vsi *vsi)
 
 err_rings:
 	i40e_vsi_free_q_vectors(vsi);
-	if (vsi->type == I40E_VSI_MAIN)
-		i40e_devlink_destroy_port(pf);
 	if (vsi->netdev_registered) {
 		vsi->netdev_registered = false;
 		unregister_netdev(vsi->netdev);
 		free_netdev(vsi->netdev);
 		vsi->netdev = NULL;
 	}
+	if (vsi->type == I40E_VSI_MAIN)
+		i40e_devlink_destroy_port(pf);
 	i40e_aq_delete_element(&pf->hw, vsi->seid, NULL);
 err_vsi:
 	i40e_vsi_clear(vsi);
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
