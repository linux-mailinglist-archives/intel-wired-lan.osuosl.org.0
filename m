Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B22809ADB9C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Oct 2024 07:45:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4158481229;
	Thu, 24 Oct 2024 05:45:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1vN6rv9ZHi3A; Thu, 24 Oct 2024 05:45:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A050881210
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729748732;
	bh=Z+yyo1TIYgMMh3a4MAR/ug/Ems+Ey9XMLLo9KFQKqZY=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=HqG0Wa39xoReGM1VQghqjBfdcem324zmjfWJmurnF7A1jlkcFs/Om0uwhm3B4P84l
	 6sRw843JfjoTAeDbApkXM3rjcyfrRx2w2eaCdvG3o2MH9HsqXWoC9uiKnvmYMhdOiL
	 sJSWJw2pO24sc7Gl5zhyysnym4OHzeSFvYFbxeB2AFzavx41LqLcCc1gGiIMvt3ubO
	 MHc0uLr7p/RbCm7VcBDcyxJM5AqgOUh2rOXhPTyI9kVItiMWZUSG7t02GLcCl1qq3o
	 5UqEMflm7dgymEYYeaXV2XmwJ+QXqmkYbmJMjAuYki8CQxcv9nYuyScXkXoi9KKMSC
	 QtOV3ohqhunAw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A050881210;
	Thu, 24 Oct 2024 05:45:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3818A27ED
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 05:45:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 15E944078D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 05:45:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0CdrqiutsQaN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Oct 2024 05:45:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::102a; helo=mail-pj1-x102a.google.com;
 envelope-from=pjohnny0508@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 34EF340716
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 34EF340716
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com
 [IPv6:2607:f8b0:4864:20::102a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 34EF340716
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 05:45:30 +0000 (UTC)
Received: by mail-pj1-x102a.google.com with SMTP id
 98e67ed59e1d1-2e2a999b287so466856a91.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 22:45:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729748729; x=1730353529;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Z+yyo1TIYgMMh3a4MAR/ug/Ems+Ey9XMLLo9KFQKqZY=;
 b=C6o9B43I4qSk/1ptb52axdjAkj/UPrOx6FoAy8abgkf3tIg6GthsNwMcj0PjFTJ4O7
 X3OQsnV/oTwdT3v7CW5NXrM3o8k7jbjJk2/HhOoeXvF2+zNzGIAgjtgW+QTNPqbklHtU
 CgvqgwBrf5n6qErjS/87cAU0k4MsvR57zUqNp4pTEeI+aTphDbM5zLHkCQBE3hM1qSmC
 c4nU/RB8UZWFEyNmtnOfJN6CAzPPeWlJH9MT5LIGilbM+csn8nkhvFF4A1o84q+Bw1PT
 IjsH0fmN/2DFG4JwSQB0qALVBbHaawKD0AWwqmWqMXq4y5Jzm1s5vWz2ZgUsx8AwGFJA
 GmrQ==
X-Gm-Message-State: AOJu0YzrVQ9qT3CU9VfOSMfZk8XoL7wxc+vWRx6vqlKBZc4gqoSxhWPt
 DIA/OuR/nXVA5Mv8q/t5CkYHgWxZreWmXcHQvx079b0Cl15C+OuD
X-Google-Smtp-Source: AGHT+IGMu0wQIJyQYyM3MtZTwmXTHeotULXZZLZmunxl49BuoVTVKzIpHI0TTzuue/lTyTnLwc7E2g==
X-Received: by 2002:a05:6a20:c998:b0:1d5:10c1:4939 with SMTP id
 adf61e73a8af0-1d978aeadf1mr5532925637.8.1729748729310; 
 Wed, 23 Oct 2024 22:45:29 -0700 (PDT)
Received: from Fantasy-Ubuntu ([2001:56a:7eb6:f700:c21b:c597:f9a6:3608])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2e76df7095dsm2532477a91.29.2024.10.23.22.45.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2024 22:45:28 -0700 (PDT)
Date: Wed, 23 Oct 2024 23:45:26 -0600
From: Johnny Park <pjohnny0508@gmail.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, andrew+netdev@lunn.ch, horms@kernel.org,
 pmenzel@molgen.mpg.de
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Message-ID: <Zxne9hBl5E5VhKGm@Fantasy-Ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1729748729; x=1730353529; darn=lists.osuosl.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Z+yyo1TIYgMMh3a4MAR/ug/Ems+Ey9XMLLo9KFQKqZY=;
 b=DezHihf36nQs4vReNwY9NZao0NmwTzG6R+pBzq3uC6nWRqnsCNBm1yRinameFYW93t
 MdHWreOPCb7RCUAcrI9pwQHMlsf2q+Yry2B8+nRG4UK4ts1MSvb24+DBwLlr1I0vVSzu
 VbZKkPkhoa71fj3Enip6+/unfba6lAddziCvuLAc167+JRvUKjWiD3pTjE1w3jWpVFHG
 JOyjAGDCqpMWkr4uRtPmKVAr7CX7nJ/Ecw9E1LnR/BokwD9dIfyjvh99moutkAmqryHe
 2enBd+NXO2O90VaabMIT/2jcuaezmWUXwhU7WWjp6qHjs+ys1J+bsZ9LY/jCyjNg1qbJ
 G6+w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=DezHihf3
Subject: [Intel-wired-lan] [PATCH v3] [net-next] igb: Fix 2 typos in
 comments in igb_main.c
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix 2 spelling mistakes in comments in `igb_main.c`.

Signed-off-by: Johnny Park <pjohnny0508@gmail.com>
---
Changes in v3:
  - Adjust commit message

Changes in v2:
  - Fix spelling mor -> more
---
 drivers/net/ethernet/intel/igb/igb_main.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 1ef4cb871452..fc587304b3c0 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -1204,7 +1204,7 @@ static int igb_alloc_q_vector(struct igb_adapter *adapter,
 	/* initialize pointer to rings */
 	ring = q_vector->ring;
 
-	/* intialize ITR */
+	/* initialize ITR */
 	if (rxr_count) {
 		/* rx or rx/tx vector */
 		if (!adapter->rx_itr_setting || adapter->rx_itr_setting > 3)
@@ -3906,7 +3906,7 @@ static void igb_remove(struct pci_dev *pdev)
  *
  *  This function initializes the vf specific data storage and then attempts to
  *  allocate the VFs.  The reason for ordering it this way is because it is much
- *  mor expensive time wise to disable SR-IOV than it is to allocate and free
+ *  more expensive time wise to disable SR-IOV than it is to allocate and free
  *  the memory for the VFs.
  **/
 static void igb_probe_vfs(struct igb_adapter *adapter)
-- 
2.43.0

