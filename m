Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF306F1F7B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Apr 2023 22:35:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BA0A042944;
	Fri, 28 Apr 2023 20:35:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BA0A042944
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682714139;
	bh=ZreenJb2NnPTYHkMWVpIhM30CYIhe757eLLk7IZGgIc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=gVC6vf/C0X3hgH1ZQVroqRREywQH9BmpNHMghppj89LQ/4mT2r8R7wCkKFB00oJd+
	 FqDCm4dcrMk4jmNGSiQHWu6S7hOL0cuxGU2NQqjhu0AWy7wC4FW/cD5IktY1utjbRj
	 c2QiQ5iVEuYWfMaPnXs9guYpHNeT4vrY1k3LiOj4ayK5T5lLRMbi+RvwphBZFTF0ge
	 p5d/aRlScb8oW0ut/Z3XXmPR0owJZRiqRk34CJ4MrbAlyzsmjcePbsHGwSGhSNGvtL
	 3b1xic32SpSOeF3B7rf3NPMKh8gOSqf7p8eW+SBMJ87k5kn05mSLcgqW8WuWJ1EJ8c
	 vFnSVYvqArPlQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LrkjLHXcOVXa; Fri, 28 Apr 2023 20:35:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 511EF428CD;
	Fri, 28 Apr 2023 20:35:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 511EF428CD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 39DA11BF575
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Apr 2023 20:35:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0F8D8428CD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Apr 2023 20:35:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F8D8428CD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M89x6CzCEE49 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Apr 2023 20:35:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DD234428A3
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DD234428A3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Apr 2023 20:35:31 +0000 (UTC)
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-664-CsKFgCKjMJSAfyjkL6FehQ-1; Fri, 28 Apr 2023 16:35:29 -0400
X-MC-Unique: CsKFgCKjMJSAfyjkL6FehQ-1
Received: by mail-qk1-f199.google.com with SMTP id
 af79cd13be357-74e3f0a8349so15244085a.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Apr 2023 13:35:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682714128; x=1685306128;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=QTPz7eQjXeuR2VgVi4hv9A45H01RIqdRghA7/gA//1E=;
 b=V1iVpM9Ht5E8SRPPmYEJf4RFTxQ1MOxHUqL76iGRq2VLabBE0xFMbIkZAqHow792ip
 j/FJScEVjg2PSevaGI8YqFY+99FstgW4AY0isCP5bc3y0DimPoqSzF4TID1ftwMnI1Ni
 7M8PrCpYxdqMR6Um9onSzc2uiUqYq1KQiTB/13vVe/kkp1VWwSY6pTqxNKcEO1HgKPs2
 WrDWigpgwJ7X0sgOoliLC+ifIyEeJ2AIgTYoqnqzswde5vfpO/YBArOu6wS2JIpXwZjH
 JcH+HFwynzou04CnbzLDxJ4gefISzfVSitrN7SVQbZIw98ptQs7RExApls1yO4e6tQB0
 3Yrw==
X-Gm-Message-State: AC+VfDyyDBbrolEixsvcAE9rQF3cV6QFyXRQLmXpMqGMA6+whBzJ5I/b
 PQI2yZfYycZCIanMgGJ8H0GedEQKbkJxkpc0rkachpI0EyLRiblglquvfWR5+xZZD4S/02l1CZj
 a2YCHsrF8+4gdzffvx/TkvRAAdlpZVA==
X-Received: by 2002:a05:622a:394:b0:3ef:3dac:44e7 with SMTP id
 j20-20020a05622a039400b003ef3dac44e7mr9906869qtx.2.1682714128580; 
 Fri, 28 Apr 2023 13:35:28 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5XGP3FpKHgGxVj6RqKSawttiSiOXczzRy5FAhiPQUMuftmadSZcMvSRWAY2z0hjSDX5E7ACQ==
X-Received: by 2002:a05:622a:394:b0:3ef:3dac:44e7 with SMTP id
 j20-20020a05622a039400b003ef3dac44e7mr9906842qtx.2.1682714128334; 
 Fri, 28 Apr 2023 13:35:28 -0700 (PDT)
Received: from dell-per740-01.7a2m.lab.eng.bos.redhat.com
 (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id
 a145-20020ae9e897000000b0074de7b1fe1csm7044947qkg.17.2023.04.28.13.35.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Apr 2023 13:35:27 -0700 (PDT)
From: Tom Rix <trix@redhat.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com
Date: Fri, 28 Apr 2023 16:00:09 -0400
Message-Id: <20230428200009.2224348-1-trix@redhat.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1682714130;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=QTPz7eQjXeuR2VgVi4hv9A45H01RIqdRghA7/gA//1E=;
 b=PpAmFl7YfXUcOtUCfEgwxE90wjJjyd1JME0Sg+5dnXi/bm8TH3tppdpc/pLckh05RYloQ1
 FuliWvYDv3fzT0Qts46iViV9pdNvPNVqqVsLZmATBZmIrpqU8EOKOvhQd0qoSNdifw/3Rj
 id3j97T4SbeME4KdoD/dFI8s+DbzK14=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=PpAmFl7Y
Subject: [Intel-wired-lan] [PATCH] igb: Define igb_pm_ops conditionally on
 CONFIG_PM
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, Tom Rix <trix@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

For s390, gcc with W=1 reports
drivers/net/ethernet/intel/igb/igb_main.c:186:32: error:
  'igb_pm_ops' defined but not used [-Werror=unused-const-variable=]
  186 | static const struct dev_pm_ops igb_pm_ops = {
      |                                ^~~~~~~~~~

The only use of igb_pm_ops is conditional on CONFIG_PM.
The definition of igb_pm_ops should also be conditional on CONFIG_PM

Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 58872a4c2540..c5cdb880774d 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -183,11 +183,13 @@ static int igb_resume(struct device *);
 static int igb_runtime_suspend(struct device *dev);
 static int igb_runtime_resume(struct device *dev);
 static int igb_runtime_idle(struct device *dev);
+#ifdef CONFIG_PM
 static const struct dev_pm_ops igb_pm_ops = {
 	SET_SYSTEM_SLEEP_PM_OPS(igb_suspend, igb_resume)
 	SET_RUNTIME_PM_OPS(igb_runtime_suspend, igb_runtime_resume,
 			igb_runtime_idle)
 };
+#endif
 static void igb_shutdown(struct pci_dev *);
 static int igb_pci_sriov_configure(struct pci_dev *dev, int num_vfs);
 #ifdef CONFIG_IGB_DCA
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
