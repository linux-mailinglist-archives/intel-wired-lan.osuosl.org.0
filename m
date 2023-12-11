Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E1680D279
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Dec 2023 17:42:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 657D041A49;
	Mon, 11 Dec 2023 16:42:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 657D041A49
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702312965;
	bh=G7g1rMCblAni06OYtq+XL3fflazvdGLh9AfgaxWbwnY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Timc5kTPQDLdk2kmSBN0G142QkR7GfFGiCWe9HlhUDpH+weCCY6mU8MZK0IuQRAoJ
	 pS8yH0du6Smb6d4jX9rOoeSjPNR8Q4kTasSjC5lYowqTilAjAC9BodxIw12/I1M6Za
	 CPOe1pcEy75pNWnjANS6ejGdJ2k0XHlqqIAis2DNr0xKWyvAy3l1xs40DbJVB0pPDB
	 Wx7xbteeNPypJ2ydEPwZkiRdTcMSRp1vR/hoRpBv+LAfwFAQom+trmEZ3kKBETGvBQ
	 9/5sRyEC5+hqRkkC90FzorlKWeP+W2JlLThwZnM128Sr9L2FerBETpfeuiu33CKeHG
	 ELWwD6zdXjNTQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TEQ8kk7jWnRv; Mon, 11 Dec 2023 16:42:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 300F140544;
	Mon, 11 Dec 2023 16:42:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 300F140544
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 71AC21BF2A7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 06:27:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3EA1882284
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 06:27:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3EA1882284
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mvVqlVl3YJoW for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Dec 2023 06:27:39 +0000 (UTC)
Received: from mailgw.kylinos.cn (mailgw.kylinos.cn [124.126.103.232])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3E63B8227C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 06:27:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3E63B8227C
X-UUID: bf5c7bb1ae0440898305a07d66be4c6e-20231211
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.33, REQID:cab31997-101f-49df-9c9c-b46868291d5c, IP:5,
 U
 RL:0,TC:0,Content:0,EDM:0,RT:0,SF:-15,FILE:0,BULK:0,RULE:Release_Ham,ACTIO
 N:release,TS:-10
X-CID-INFO: VERSION:1.1.33, REQID:cab31997-101f-49df-9c9c-b46868291d5c, IP:5,
 URL
 :0,TC:0,Content:0,EDM:0,RT:0,SF:-15,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
 release,TS:-10
X-CID-META: VersionHash:364b77b, CLOUDID:5d4e85fd-4a48-46e2-b946-12f04f20af8c,
 B
 ulkID:2312111426551GH34SG6,BulkQuantity:0,Recheck:0,SF:66|38|24|17|19|44|1
 02,TC:nil,Content:0,EDM:-3,IP:-2,URL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,CO
 L:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_FAS,TF_CID_SPAM_FSD,TF_CID_SPAM_FSI
X-UUID: bf5c7bb1ae0440898305a07d66be4c6e-20231211
X-User: chentao@kylinos.cn
Received: from vt.. [(116.128.244.169)] by mailgw
 (envelope-from <chentao@kylinos.cn>)
 (Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
 with ESMTP id 1798076710; Mon, 11 Dec 2023 14:26:53 +0800
From: Kunwu Chan <chentao@kylinos.cn>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, richardcochran@gmail.com, jacob.e.keller@intel.com
Date: Mon, 11 Dec 2023 14:26:49 +0800
Message-Id: <20231211062649.247148-1-chentao@kylinos.cn>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 11 Dec 2023 16:42:26 +0000
Subject: [Intel-wired-lan] [PATCH] ice: Fix some null pointer dereference
 issues in ice_ptp.c
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
Cc: michal.michalik@intel.com, Kunwu Chan <chentao@kylinos.cn>,
 Kunwu Chan <kunwu.chan@hotmail.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, karol.kolacinski@intel.com,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

devm_kasprintf() returns a pointer to dynamically allocated memory
which can be NULL upon failure.

Fixes: d938a8cca88a ("ice: Auxbus devices & driver for E822 TS")
Cc: Kunwu Chan <kunwu.chan@hotmail.com>
Signed-off-by: Kunwu Chan <chentao@kylinos.cn>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 1eddcbe89b0c..59794ce4f243 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2668,6 +2668,8 @@ static int ice_ptp_register_auxbus_driver(struct ice_pf *pf)
 	name = devm_kasprintf(dev, GFP_KERNEL, "ptp_aux_dev_%u_%u_clk%u",
 			      pf->pdev->bus->number, PCI_SLOT(pf->pdev->devfn),
 			      ice_get_ptp_src_clock_index(&pf->hw));
+	if (!name)
+		return -ENOMEM;
 
 	aux_driver->name = name;
 	aux_driver->shutdown = ice_ptp_auxbus_shutdown;
@@ -2929,6 +2931,10 @@ static int ice_ptp_create_auxbus_device(struct ice_pf *pf)
 	name = devm_kasprintf(dev, GFP_KERNEL, "ptp_aux_dev_%u_%u_clk%u",
 			      pf->pdev->bus->number, PCI_SLOT(pf->pdev->devfn),
 			      ice_get_ptp_src_clock_index(&pf->hw));
+	if (!name) {
+		dev_err(dev, "Failed to allocate memory\n");
+		return -ENOMEM;
+	}
 
 	aux_dev->name = name;
 	aux_dev->id = id;
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
