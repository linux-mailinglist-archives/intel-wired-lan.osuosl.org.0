Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7480978ECF1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Aug 2023 14:19:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 964E383183;
	Thu, 31 Aug 2023 12:19:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 964E383183
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693484371;
	bh=uDZV4yz/+Sder6DnOVe4/3LoOakIvIGIsJD6e3XWmjQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=hbkenZ0tk5hksrR+TSO2F32bSboOT+nOFXrwE1+/nvXpl7cXW2XFnzjsKODAbL3fA
	 MIqXLOw4tuWt5XxjAQepYkTyk1CPavRMZ1fK8w4dlv32lBBQ7bxY62uh6s/y1tACzy
	 nlgvmSiqAdHuSczHw0KnQGiqE0swXN1vgXBJFt3dCBDmuiWw5neSbzTQBvmIc9xKNP
	 1ayDq/og9ssQFn0rE0O4JawDZ1GvOX894YdUsVR/+7fTKX/C2flctlQzTzpI09Kfc1
	 EBvvL2RFyLQgGDQ60KMVRcrC12EEmNFwoDPaX16TsKtKTJQ6Zmj/9WWEC+euneXZ2X
	 56RrZGNF5uO4g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xm1baY1mbKOH; Thu, 31 Aug 2023 12:19:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 935DB81FB1;
	Thu, 31 Aug 2023 12:19:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 935DB81FB1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 40DE51BF3D1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Aug 2023 12:19:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 27297612CE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Aug 2023 12:19:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 27297612CE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5Q0FSyTcsevi for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Aug 2023 12:19:22 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 719EC60BE9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Aug 2023 12:19:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 719EC60BE9
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-695-_RgXO7JhPNGXqn6p9FfHzw-1; Thu, 31 Aug 2023 08:19:15 -0400
X-MC-Unique: _RgXO7JhPNGXqn6p9FfHzw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
 [10.11.54.5])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2FAA08022E4;
 Thu, 31 Aug 2023 12:19:15 +0000 (UTC)
Received: from calimero.vinschen.de (unknown [10.39.192.15])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0DCA69A;
 Thu, 31 Aug 2023 12:19:15 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id 06F3DA81EA3; Thu, 31 Aug 2023 14:19:14 +0200 (CEST)
From: Corinna Vinschen <vinschen@redhat.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, jesse.brandeburg@intel.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Date: Thu, 31 Aug 2023 14:19:13 +0200
Message-ID: <20230831121914.660875-1-vinschen@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1693484361;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=oET/UC3oZ/ERnpqoK6/p2ncmcfVMZqsG2bSEB3AWRgs=;
 b=d0q7inBiJ+fB8rnS82CvDIsgLxqVbnLovWSkJnrMaSOI3UsSxxOTj3zwO2wRlGaG5100aZ
 aU+i5Td+7+gOCKaKK2/jVBbr2tF9bHEgYLYFTxbmvD3tMGpufH4ySkFQVWaVhkPWj0WWl6
 sOY2Z+2/mlsEJIxy4BXvJ4uModJWVOA=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=d0q7inBi
Subject: [Intel-wired-lan] [PATCH v2 net] igb: disable virtualization
 features on 82580
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Disable virtualization features on 82580 just as on i210/i211.
This avoids that virt functions are acidentally called on 82850.

Fixes: 55cac248caa4 ("igb: Add full support for 82580 devices")
Signed-off-by: Corinna Vinschen <vinschen@redhat.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 1ab787ed254d..13ba9c74bd84 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -3933,8 +3933,9 @@ static void igb_probe_vfs(struct igb_adapter *adapter)
 	struct pci_dev *pdev = adapter->pdev;
 	struct e1000_hw *hw = &adapter->hw;
 
-	/* Virtualization features not supported on i210 family. */
-	if ((hw->mac.type == e1000_i210) || (hw->mac.type == e1000_i211))
+	/* Virtualization features not supported on i210 and 82580 family. */
+	if ((hw->mac.type == e1000_i210) || (hw->mac.type == e1000_i211) ||
+	    (hw->mac.type == e1000_82580))
 		return;
 
 	/* Of the below we really only want the effect of getting
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
