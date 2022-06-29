Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A4A5603E7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Jun 2022 17:12:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 12C2640C5C;
	Wed, 29 Jun 2022 15:12:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 12C2640C5C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656515529;
	bh=CMFW/SGk9cU/c0S4yo3oDQPqGhlxjSvjwtbGGnpqvY4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=HN8rewTvQOCjBohqDiGyuIQ0Hk+1KOEeC1GUXSsEDQIM/yilufyJqGmDjo+TaXFPE
	 Q7Q9s1hGF0lB349ipcTHd7xQwevgEXVrel2+4a5kZG0qRH5gcLTMNCGRS90ByuFnZ8
	 SQg2e6lm/70nr4hoNS6Ck8PQYP+3m0nxZK0CldtfoYv38VY1aa3BuEBZt7yv3E2S96
	 c4xJBPDqiyHrQpU1XhN1k8DFz2SE2Ygt3+RpTIYulR+2oODC+mMjHajAfG6YmOA22b
	 2P3G4+butDveRMarEQdfHAHTwhoH1XuPdLk3LcfeVeI0ZBvRB67YW9RwL9LzIK/9GT
	 z5mFzCr2XIbzw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FKa2J2qSdpz0; Wed, 29 Jun 2022 15:12:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 06D5A40157;
	Wed, 29 Jun 2022 15:12:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 06D5A40157
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C75381BF390
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 10:03:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AD82241119
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 10:03:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AD82241119
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 73uychxYqNIP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Jun 2022 10:03:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EBA2D410EC
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com
 [IPv6:2607:f8b0:4864:20::42c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EBA2D410EC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 10:03:43 +0000 (UTC)
Received: by mail-pf1-x42c.google.com with SMTP id t21so14651204pfq.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 03:03:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=v+1Kh9yXYSF/SSlAxUUF7lfd7AbotnJ6XEUP9Y2jqwE=;
 b=GuSBwvKIu/H1/dQgTCNZTbmMrtNhD9UPMvuyzGBdSl4fay6LLZy/xIL5lD1wjulAjc
 Gv79t/qYgWeC9B/YtGKONq0Pmr6ZmKqY4nKPemN9LDyYkDc1iC3pzkeNEA+BqkHxhr3g
 +BMJOHhE7U6TplaFlKEhbHGZO8q4Gx7CFCmKmiACqKpPiP6HI+Oldu6Zk63vmk7FRQmt
 6jFa5gvrveHYHEGksRvTlB+wyzosr0g/kkIXgz4z3LJuKnt3JZ+qw/CWBKyEP8f3f7ZF
 BCU/f37iI47/W1tl+RW1X0I0f9U54N+9gXONEXRqwryB4k2LYOpxZK2EdH22hE/60jsb
 14MQ==
X-Gm-Message-State: AJIora8DyRy7p3rXy7JqSdYI43VheLXecjvZhCVzfIW1RTrSkevbIIeQ
 AyIU/7+a/CMGCCBLfrDucT2B+A==
X-Google-Smtp-Source: AGRyM1sTw4UxgBgSUAtM/Ce+HiXo5qoS5Rt9oKfdvJ/YFT4je9ZLNVgxqIQyVnyMl/m9dosjMIfh0g==
X-Received: by 2002:a62:7b95:0:b0:525:8304:2f16 with SMTP id
 w143-20020a627b95000000b0052583042f16mr8194428pfc.33.1656497023394; 
 Wed, 29 Jun 2022 03:03:43 -0700 (PDT)
Received: from C02F63J9MD6R.bytedance.net ([61.120.150.74])
 by smtp.gmail.com with ESMTPSA id
 u5-20020a17090a1f0500b001ed1444df67sm1696872pja.6.2022.06.29.03.03.38
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 Jun 2022 03:03:42 -0700 (PDT)
From: Zhuo Chen <chenzhuo.1@bytedance.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, intel-wired-lan@lists.osuosl.org
Date: Wed, 29 Jun 2022 18:03:34 +0800
Message-Id: <20220629100334.60710-1-chenzhuo.1@bytedance.com>
X-Mailer: git-send-email 2.30.1 (Apple Git-130)
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 29 Jun 2022 15:11:26 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=v+1Kh9yXYSF/SSlAxUUF7lfd7AbotnJ6XEUP9Y2jqwE=;
 b=bT696kWD335zwtQvW47vd4+mT5xdlttfcuP/cfCSLGtb7YgSROS2L7ffdCL6lmeT9X
 hLO4kCeKrh9RhaoNZxg6Eb6G+AeKxnOiLYRUTEAnkTGswpNC6vnrXR6z0mf+a5G3eiBo
 qz29lWEkYZ+jCGe3KfM0543mgg0fJH1DNS32yfChg36ESaebBkp+5PiUj4TLvqXaNtAB
 hFiO0kxoSePedtkr8Bj6ref1wJrQW2YrtDSKlp8QvVVMHgn0EQdjXFyD+DRBJhVULj3G
 3PMAGlJ4zKL0SJ3SmGf40soyRQiN8+kQzPniaDWJ4WGCcVg5SX+5l2znBCumkn7e5N/I
 ggLw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=bytedance-com.20210112.gappssmtp.com
 header.i=@bytedance-com.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=bT696kWD
Subject: [Intel-wired-lan] [PATCH] ice: Remove
 pci_aer_clear_nonfatal_status() call
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
Cc: netdev@vger.kernel.org, Zhuo Chen <chenzhuo.1@bytedance.com>,
 Sen Wang <wangsen.harry@bytedance.com>, linux-kernel@vger.kernel.org,
 Muchun Song <songmuchun@bytedance.com>,
 Wenliang Wang <wangwenliang.1995@bytedance.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

After 62b36c3 ("PCI/AER: Remove pci_cleanup_aer_uncorrect_error_status()
calls"), Calls to pci_cleanup_aer_uncorrect_error_status() have already
been removed. But in 5995b6d pci_cleanup_aer_uncorrect_error_status was
used again, so remove it in this patch.

Signed-off-by: Zhuo Chen <chenzhuo.1@bytedance.com>
Cc: Muchun Song <songmuchun@bytedance.com>
Cc: Sen Wang <wangsen.harry@bytedance.com>
Cc: Wenliang Wang <wangwenliang.1995@bytedance.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index c1ac2f746714..6bf6d8b5a967 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5313,12 +5313,6 @@ static pci_ers_result_t ice_pci_err_slot_reset(struct pci_dev *pdev)
 			result = PCI_ERS_RESULT_DISCONNECT;
 	}
 
-	err = pci_aer_clear_nonfatal_status(pdev);
-	if (err)
-		dev_dbg(&pdev->dev, "pci_aer_clear_nonfatal_status() failed, error %d\n",
-			err);
-		/* non-fatal, continue */
-
 	return result;
 }
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
