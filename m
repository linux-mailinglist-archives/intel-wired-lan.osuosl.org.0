Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B32A7E9C8A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Nov 2023 13:59:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 337B282129;
	Mon, 13 Nov 2023 12:59:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 337B282129
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699880357;
	bh=85MCNSEhMq++vlQTxKFquRugTEhf2cTMB+x78JIlmME=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7nax82VrmB10aJky9eQAQOE3MsxEm2nQcwe/5cGzqnc1N2+9VP2uE28eGSW2j6fgg
	 P8JM+9Zhj8uQ60XPAyzoOk3eq+azlZOduh0BXK4fdwKd1VsiChoWzolNvEoy+i2VB3
	 HjWQESiYv/8W+gn79it2W9mXKMO1GLiaDNzq6SNl1vbeWBXoTkAHOmvprswaZYMLAZ
	 weDwQeQ7r5ZRZ6qBc0zC26cU18sDYcfXaayKou19+LKtdnWW8MBqZdBkHzW4RJNkme
	 oGIDQUCOMLKQBgVI6jAWWHmnDSy/AW0O0wXjxWH3CjNjffLCJYOxm1amcYoQ0bXGL3
	 k/JCPOzxRTyFA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 52m7a2IMxsR2; Mon, 13 Nov 2023 12:59:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 07AC181C6E;
	Mon, 13 Nov 2023 12:59:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 07AC181C6E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2E2701BF3BF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Nov 2023 12:59:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0588081E05
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Nov 2023 12:59:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0588081E05
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9k_LepkIG2fL for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Nov 2023 12:59:06 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 390E281C6E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Nov 2023 12:59:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 390E281C6E
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-413-qFwntDouPq-_dXZsz23hbA-1; Mon, 13 Nov 2023 07:59:02 -0500
X-MC-Unique: qFwntDouPq-_dXZsz23hbA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
 [10.11.54.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5A3078007B3;
 Mon, 13 Nov 2023 12:59:01 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.224.49])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 84407370;
 Mon, 13 Nov 2023 12:58:59 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Mon, 13 Nov 2023 13:58:52 +0100
Message-ID: <20231113125856.346047-2-ivecera@redhat.com>
In-Reply-To: <20231113125856.346047-1-ivecera@redhat.com>
References: <20231113125856.346047-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1699880345;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=t2n6Jd9cJZiwfOrraes5mYcb5r/O/LRHhuTYwSStRcs=;
 b=MCsu70tbBhMB0R3dFM8ovS2xv8Bx+1ec9buWGXdbk+zZ2Enx/8z+PbIi5lNck6PiEFHa+u
 BYLnblrN9MHBtXDorgRa39H63DY1EXQ3sLzpP0CW03L90lQoXCaOVLTo1TceBXjPDF1LQv
 PSPCiD2zmfYoS+cz3AoGRSSk7sTJDbY=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=MCsu70tb
Subject: [Intel-wired-lan] [PATCH iwl-next 1/5] i40e: Use existing helper to
 find flow director VSI
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>,
 intel-wired-lan@lists.osuosl.org,
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
