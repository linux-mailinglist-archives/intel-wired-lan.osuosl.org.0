Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C56F67EE416
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Nov 2023 16:21:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6CEB04285F;
	Thu, 16 Nov 2023 15:21:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6CEB04285F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700148096;
	bh=xvnnkMzVtm13VsWO+FekCDqSy3Aw9ssfXMLRXIC4h4U=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vGvL1tZEJXQ7MO8EGG5SBcKyymKn4bddSTO06aYZcmQ2xZwzPiuh0yVZ9MU1TLdTa
	 2DOy1zpoPkwfqWtNh7kZ+iihnBVPULGqVhaDJyjH/MIkOFfapmKdI0mbMhK0JbFbLz
	 81eyfpOBGtG2AdGsCdHlrU7PQNH3Ukhhztw+8DwswF641BqYB8tEMl2SDyLCfLhM7f
	 OOzt6UPNMKQu7UPWYIv7dku7WE5uauayQJ7sLxJZMt9piB1iuZVf8P1dz2VsC7e3Hc
	 KHfmn5vJM2z0Mj8pzuOBJBWrLTjcxiSd6OIofxArcidCddSNRwiVdyhGiG6cecJna9
	 fKzdpIL1i7WTw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zxjr65mJSbN7; Thu, 16 Nov 2023 15:21:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F3D1242850;
	Thu, 16 Nov 2023 15:21:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F3D1242850
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 752721BF3C5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 15:21:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4CD5D41A14
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 15:21:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4CD5D41A14
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zBUm41siUBRQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Nov 2023 15:21:25 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5D97E400E7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 15:21:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5D97E400E7
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-187-TVSYN0uQOhaSTs7r9_ZlzQ-1; Thu,
 16 Nov 2023 10:21:20 -0500
X-MC-Unique: TVSYN0uQOhaSTs7r9_ZlzQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 562E538C6161;
 Thu, 16 Nov 2023 15:21:19 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.225.144])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7D03F40C6EB9;
 Thu, 16 Nov 2023 15:21:17 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 16 Nov 2023 16:21:10 +0100
Message-ID: <20231116152114.88515-2-ivecera@redhat.com>
In-Reply-To: <20231116152114.88515-1-ivecera@redhat.com>
References: <20231116152114.88515-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1700148084;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ntIwoh8nmo6x8jvo27voHZh3WCaqdVm0ct3IIneIzKs=;
 b=DsClhER3OyFErI5q74gbkXsP4EPsggiJ4ggTVf6Z5Xa77+bDfi4dnCRZcisHA7mVvhThZf
 rIt2vV73C4Or0W64zVHVIYtWRGmCZEhtG3/7JHaK69ApfKU9OeB6Vq3NgTuzLY9V+ZqK28
 KGYj2jbMUHjYQvHpfZLozAXhUfR8sQs=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=DsClhER3
Subject: [Intel-wired-lan] [PATCH iwl-next v3 1/5] i40e: Use existing helper
 to find flow director VSI
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Use existing i40e_find_vsi_by_type() to find a VSI
associated with flow director.

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 51ee870ffa36..90966878333c 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -15645,6 +15645,7 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 #ifdef CONFIG_I40E_DCB
 	enum i40e_get_fw_lldp_status_resp lldp_status;
 #endif /* CONFIG_I40E_DCB */
+	struct i40e_vsi *vsi;
 	struct i40e_pf *pf;
 	struct i40e_hw *hw;
 	u16 wol_nvm_bits;
@@ -15655,7 +15656,6 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 #endif /* CONFIG_I40E_DCB */
 	int err;
 	u32 val;
-	u32 i;
 
 	err = pci_enable_device_mem(pdev);
 	if (err)
@@ -16005,12 +16005,9 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	INIT_LIST_HEAD(&pf->vsi[pf->lan_vsi]->ch_list);
 
 	/* if FDIR VSI was set up, start it now */
-	for (i = 0; i < pf->num_alloc_vsi; i++) {
-		if (pf->vsi[i] && pf->vsi[i]->type == I40E_VSI_FDIR) {
-			i40e_vsi_open(pf->vsi[i]);
-			break;
-		}
-	}
+	vsi = i40e_find_vsi_by_type(pf, I40E_VSI_FDIR);
+	if (vsi)
+		i40e_vsi_open(vsi);
 
 	/* The driver only wants link up/down and module qualification
 	 * reports from firmware.  Note the negative logic.
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
