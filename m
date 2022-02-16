Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 39FB84B89B6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Feb 2022 14:22:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C376D83396;
	Wed, 16 Feb 2022 13:22:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v4Ts1PbkbYuQ; Wed, 16 Feb 2022 13:22:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D37D582A0B;
	Wed, 16 Feb 2022 13:22:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 06E321BF5A6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Feb 2022 13:22:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F29B782A0B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Feb 2022 13:22:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iZc05ApDKr9A for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Feb 2022 13:22:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 392E68297F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Feb 2022 13:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1645017752;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=U/b62GEK2dyHC912MlELV2N7tkrAytvFeMbNC5x1Xa4=;
 b=GEArR8GIvhrPWLgtdWuL5VkL8NisNNiYy2yVwxL9HKnAOkbtXQwQbQYKafhVMb8ak8tT8D
 qC3usVOdeQPBDkKoGbv1x7jboaCjl8Pmz01ikfVC6uQ+uD0Bzmq7JTHf894oTnT2McuQpn
 y981nKb7P+golF/HrpjQTq6Q/oukyFw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-74-kgUZ2x2yPziN0t5gmb0RhA-1; Wed, 16 Feb 2022 08:22:30 -0500
X-MC-Unique: kgUZ2x2yPziN0t5gmb0RhA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 73BD1802B7E;
 Wed, 16 Feb 2022 13:22:29 +0000 (UTC)
Received: from calimero.vinschen.de (unknown [10.36.112.2])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 15AFC6E1BB;
 Wed, 16 Feb 2022 13:22:29 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id 7EACDA80D35; Wed, 16 Feb 2022 14:22:27 +0100 (CET)
From: Corinna Vinschen <vinschen@redhat.com>
To: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Sasha Neftin <sasha.neftin@intel.com>
Date: Wed, 16 Feb 2022 14:22:27 +0100
Message-Id: <20220216132227.356186-1-vinschen@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Subject: [Intel-wired-lan] [PATCH net] igc: igc_read_phy_reg_gpy: drop
 premature return
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

igc_read_phy_reg_gpy checks the return value from igc_read_phy_reg_mdic
and if it's not 0, returns immediately. By doing this, it leaves the HW
semaphore in the acquired state.

Drop this premature return statement, the function returns after
releasing the semaphore immediately anyway.

Signed-off-by: Corinna Vinschen <vinschen@redhat.com>
---
 drivers/net/ethernet/intel/igc/igc_phy.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_phy.c b/drivers/net/ethernet/intel/igc/igc_phy.c
index 5cad31c3c7b0..df91d07ce82a 100644
--- a/drivers/net/ethernet/intel/igc/igc_phy.c
+++ b/drivers/net/ethernet/intel/igc/igc_phy.c
@@ -779,8 +779,6 @@ s32 igc_read_phy_reg_gpy(struct igc_hw *hw, u32 offset, u16 *data)
 		if (ret_val)
 			return ret_val;
 		ret_val = igc_read_phy_reg_mdic(hw, offset, data);
-		if (ret_val)
-			return ret_val;
 		hw->phy.ops.release(hw);
 	} else {
 		ret_val = igc_read_xmdio_reg(hw, (u16)offset, dev_addr,
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
