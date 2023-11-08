Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EB1E7E59BD
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Nov 2023 16:10:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5AD5340B53;
	Wed,  8 Nov 2023 15:10:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5AD5340B53
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699456242;
	bh=+gI2dZux3PxtZiXAwacKZi/1Z0hBdbz60D4bzf/9RbM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=qLuvFJ0CYOftksbUDVe2YdGlN5U492QI+BqY9b+jJ8h9bpKtlgF8BqY9x1bHlJRIU
	 2wI5r3/P9J1yN1KRwvtQH3os5Mlg8YqrKXdDj9vPiGelBXHtbh8NKZQOQQNXujValF
	 +tzkTm3CPyc4ZwgBjINYxhOgg0Ta9061JfedLoLa26ZQnRLsOoy2m5bZ6JcxrCWftr
	 YWxqzyi48399uD/PedVCrB+tYjsl13s9evN3AAR4jeMQSqrPJQkqcgCOCQvuUVpCsI
	 oQ4DR9AHo47ppTaXORfQMIwkw0yPdBA9vsNEY3hEiWSwZv/V1S0+FSjrAROdWjzGpv
	 FKs1dt2T1QU3A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RmUATQcP91gt; Wed,  8 Nov 2023 15:10:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D519740B2F;
	Wed,  8 Nov 2023 15:10:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D519740B2F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 26C631BF473
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Nov 2023 15:10:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F278C415FA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Nov 2023 15:10:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F278C415FA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R4XRaGeTbMuW for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Nov 2023 15:10:35 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1E769415F0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Nov 2023 15:10:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1E769415F0
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-549-ClR-7Y0IOCeBTJnzrMdaPg-1; Wed, 08 Nov 2023 10:10:26 -0500
X-MC-Unique: ClR-7Y0IOCeBTJnzrMdaPg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AC718892281;
 Wed,  8 Nov 2023 15:10:21 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.225.110])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C48DDC12911;
 Wed,  8 Nov 2023 15:10:19 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  8 Nov 2023 16:10:18 +0100
Message-ID: <20231108151018.72670-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1699456233;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=PDc6Ow/bSblo3GhUEPhnVNdc0LfbXdgWx7MoQyklJ7Q=;
 b=c6i+IAqZYAVdJv8JsaPFTiodQ6FJ8rSVqcWt/qWci4wabfmV4MRPU0v0lqc9dxgcsthAFN
 C3+4tQjBhMjJBvDeV7hIJi8VRhmSq4fV4CO1FvrIfbnY/4HUuJzmA470GRa3trLkuvfSeC
 mfWuYO9Kna/ejzxheWMAYeeu3krXkjk=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=c6i+IAqZ
Subject: [Intel-wired-lan] [PATCH iwl-net] i40e: Fix max frame size check
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
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Todd Fujinaka <todd.fujinaka@intel.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Commit 3a2c6ced90e1 ("i40e: Add a check to see if MFS is set") added
a check for port's MFS (max frame size) value. The value is stored
in PRTGL_SAH register for each physical port. According datasheet this
register is defined as:

PRTGL_SAH[PRT]: (0x001E2140 + 0x4*PRT, PRT=0...3)

where PRT is physical port number.

The existing check does not take port number into account and reads
actually MFS value always for port 0 that is correct for PF 0 but
not for other PFs.

Update PRTGL_SAH register definition so it takes a port number as
an argument and fix the check by passing the port number.
Also fix the warning message that use for a port number a local
variable 'i' that really does not contain such information.

Fixes: 3a2c6ced90e1 ("i40e: Add a check to see if MFS is set")
Cc: Todd Fujinaka <todd.fujinaka@intel.com>
Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c     | 4 ++--
 drivers/net/ethernet/intel/i40e/i40e_register.h | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 4f445f6835de..6a2907674583 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -16219,11 +16219,11 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	/* make sure the MFS hasn't been set lower than the default */
 #define MAX_FRAME_SIZE_DEFAULT 0x2600
-	val = (rd32(&pf->hw, I40E_PRTGL_SAH) &
+	val = (rd32(&pf->hw, I40E_PRTGL_SAH(pf->hw.port)) &
 	       I40E_PRTGL_SAH_MFS_MASK) >> I40E_PRTGL_SAH_MFS_SHIFT;
 	if (val < MAX_FRAME_SIZE_DEFAULT)
 		dev_warn(&pdev->dev, "MFS for port %x has been set below the default: %x\n",
-			 i, val);
+			 pf->hw.port, val);
 
 	/* Add a filter to drop all Flow control frames from any VSI from being
 	 * transmitted. By doing so we stop a malicious VF from sending out
diff --git a/drivers/net/ethernet/intel/i40e/i40e_register.h b/drivers/net/ethernet/intel/i40e/i40e_register.h
index f408fcf23ce8..75edfe3d43f7 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_register.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_register.h
@@ -498,7 +498,7 @@
 #define I40E_VSILAN_QBASE_VSIQTABLE_ENA_SHIFT 11
 #define I40E_VSILAN_QBASE_VSIQTABLE_ENA_MASK I40E_MASK(0x1, I40E_VSILAN_QBASE_VSIQTABLE_ENA_SHIFT)
 #define I40E_VSILAN_QTABLE(_i, _VSI) (0x00200000 + ((_i) * 2048 + (_VSI) * 4)) /* _i=0...7, _VSI=0...383 */ /* Reset: PFR */
-#define I40E_PRTGL_SAH 0x001E2140 /* Reset: GLOBR */
+#define I40E_PRTGL_SAH(_PRT) (0x001E2140 + ((_PRT) * 4)) /* _PRT=0...3 */ /* Reset: GLOBR */
 #define I40E_PRTGL_SAH_FC_SAH_SHIFT 0
 #define I40E_PRTGL_SAH_FC_SAH_MASK I40E_MASK(0xFFFF, I40E_PRTGL_SAH_FC_SAH_SHIFT)
 #define I40E_PRTGL_SAH_MFS_SHIFT 16
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
