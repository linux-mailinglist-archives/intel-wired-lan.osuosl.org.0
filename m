Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E477D69A4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Oct 2023 12:59:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 13805435F3;
	Wed, 25 Oct 2023 10:59:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 13805435F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698231567;
	bh=ae1WkXRM5ALxE7E2Bo+0svfXM2r4+YfjPfoUa9N5jYo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=pvnnYxf508Vg23JDZlHHswgDjRMe0uLqphmGkTgDZbFQrC2DgK/MBBjOPiZXvVEo9
	 3RaQkarjkfxdqQwNzVlL6Cq88ktf4qXaXeKA4F1tpzhFGy3j8rmaihFkTHpxK3Hxxd
	 vcNLulwEAKeAJlTw4OY/+OU+lcvrJsb1Vfm1Hvdi2PbiUt/GjFa778MGv4jVs5+jFC
	 K0BTbxviBw0wiMcf4Ru5Epip2qubaQGYRT0GS9/3HKzi2h5nlsOQFjPKotYeEPMNqv
	 ys4rXu3Fizd0mHEOxpj8fV7i1v/r+8RjnEo3aNog6VSbpeNG1Ta5lQvpQBpNlBaT/t
	 D3f0CW42AARQw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NtO4Gbw-YR81; Wed, 25 Oct 2023 10:59:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 80297435F5;
	Wed, 25 Oct 2023 10:59:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 80297435F5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3E4271BF23B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 10:59:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 21B40435F0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 10:59:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 21B40435F0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ESF585eZTbWZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Oct 2023 10:59:19 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 192A9400CF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 10:59:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 192A9400CF
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-692-T7Rw2M5QPlWoXC_SolU-0g-1; Wed, 25 Oct 2023 06:59:14 -0400
X-MC-Unique: T7Rw2M5QPlWoXC_SolU-0g-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
 [10.11.54.9])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5733F101A54C;
 Wed, 25 Oct 2023 10:59:14 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.225.62])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5086F492BD9;
 Wed, 25 Oct 2023 10:59:12 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Wed, 25 Oct 2023 12:59:11 +0200
Message-ID: <20231025105911.1204326-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1698231558;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=hbl9d2tDVXT45ZlkhFJ2cNIXoUOP4mWOh9E5YishFi8=;
 b=BYEWnUnYJvoYm4pXMSyDFApx9fqbTXLoo7IcAKGQampbCA59ex0d2++MF+xXQuEW+H4FvX
 w+fJFNTgxCAc29JrqNNhatBrf22+cUA4JDaCuLVt5gFBIXYjgpItIvbMxT3W8KBBqbJ/EF
 6uGarPL12jXtZEdyksGuzzQiHnqqQ6g=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=BYEWnUnY
Subject: [Intel-wired-lan] [PATCH iwl-next] i40e: Delete unused
 i40e_mac_info fields
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

From commit 9eed69a9147c ("i40e: Drop FCoE code from core driver files")
the field i40e_mac_info.san_addr is unused (never filled).
The field i40e_mac_info.max_fcoeq is unused from the beginning.
Remove both.

Co-developed-by: Michal Schmidt <mschmidt@redhat.com>
Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c  | 5 +----
 drivers/net/ethernet/intel/i40e/i40e_debugfs.c | 3 +--
 drivers/net/ethernet/intel/i40e/i40e_type.h    | 2 --
 3 files changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c b/drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c
index 1ee77a2433c0..4721845fda6e 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c
@@ -827,15 +827,12 @@ static void i40e_dcbnl_get_perm_hw_addr(struct net_device *dev,
 					u8 *perm_addr)
 {
 	struct i40e_pf *pf = i40e_netdev_to_pf(dev);
-	int i, j;
+	int i;
 
 	memset(perm_addr, 0xff, MAX_ADDR_LEN);
 
 	for (i = 0; i < dev->addr_len; i++)
 		perm_addr[i] = pf->hw.mac.perm_addr[i];
-
-	for (j = 0; j < dev->addr_len; j++, i++)
-		perm_addr[i] = pf->hw.mac.san_addr[j];
 }
 
 static const struct dcbnl_rtnl_ops dcbnl_ops = {
diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
index e0849f0c9c27..88240571721a 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
@@ -147,9 +147,8 @@ static void i40e_dbg_dump_vsi_seid(struct i40e_pf *pf, int seid)
 			 "    state[%d] = %08lx\n",
 			 i, vsi->state[i]);
 	if (vsi == pf->vsi[pf->lan_vsi])
-		dev_info(&pf->pdev->dev, "    MAC address: %pM SAN MAC: %pM Port MAC: %pM\n",
+		dev_info(&pf->pdev->dev, "    MAC address: %pM Port MAC: %pM\n",
 			 pf->hw.mac.addr,
-			 pf->hw.mac.san_addr,
 			 pf->hw.mac.port_addr);
 	hash_for_each(vsi->mac_filter_hash, bkt, f, hlist) {
 		dev_info(&pf->pdev->dev,
diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/ethernet/intel/i40e/i40e_type.h
index e3d40630f689..76bcbaec8ae5 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_type.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
@@ -270,9 +270,7 @@ struct i40e_mac_info {
 	enum i40e_mac_type type;
 	u8 addr[ETH_ALEN];
 	u8 perm_addr[ETH_ALEN];
-	u8 san_addr[ETH_ALEN];
 	u8 port_addr[ETH_ALEN];
-	u16 max_fcoeq;
 };
 
 enum i40e_aq_resources_ids {
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
