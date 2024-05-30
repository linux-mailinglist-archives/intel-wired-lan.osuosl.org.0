Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32D948D4DBD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 May 2024 16:21:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D4D0D40151;
	Thu, 30 May 2024 14:21:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yVt7MwEQ0nuV; Thu, 30 May 2024 14:21:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 82104409A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717078905;
	bh=B2vGdF2dGkt21QsIPszG+5j1gbhrGScywHg+DXLmaj8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=du30McqWwbxpq4jDdT1BujWQFvp0eNRnKYQCKE0WQ/CEuth+rqCh0J2ypBHK7LVfT
	 Ac7DeGxZBeaHkE+pSqqJ9a6EO9qKpRA+KIE6pBckOU5N9P5V537mW3OUG4OUMQ9gLO
	 iT3jrzWSb/M3H0BUk/QeLL7krHiiX43VcyeMsyhLqtsyeLdUGJucr2QDXy7yTDZAm5
	 WWLcv9QBdWtJInqXHiRro0rQIhi2y9PG6QlE5jXdhpKu+Dm0a+bWiHdzkoJiRCPHp+
	 N0nHFJUqUf1dpWj+eaZOqJaar/9J6ajyNpWJGZ7Ykec6iUCfu6HQ8cD51Qr0GD3nCO
	 ATt1gdGhKePpg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 82104409A6;
	Thu, 30 May 2024 14:21:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A69C11D476F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 14:21:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 90B50842BB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 14:21:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id apk_sw8ini9u for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 May 2024 14:21:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.123;
 helo=smtp-relay-internal-1.canonical.com;
 envelope-from=en-wei.wu@canonical.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1B86B84294
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B86B84294
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1B86B84294
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 14:21:41 +0000 (UTC)
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com
 [209.85.214.197])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 443033F316
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 14:21:39 +0000 (UTC)
Received: by mail-pl1-f197.google.com with SMTP id
 d9443c01a7336-1f4f00cff60so9516295ad.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 07:21:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1717078898; x=1717683698;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=B2vGdF2dGkt21QsIPszG+5j1gbhrGScywHg+DXLmaj8=;
 b=dK3zMTZTB5mxkChxXRj1zHKMN7L9mbbjJqsMNykhwGZ+Eop+RDajZE4lbEc9OYCvEq
 RFnVG0UqiKdmTQKEu1R2ceEhPOfNXNy63jaA1iCHX2TwBg/oCe5GKNbjFxqu51EbUnFN
 LxekhzT0bsQD6nRjhoT43D3gy3NSj/sqs76vHGtmziPVnEIl/m0Qz2PMGlX3zfOzqACu
 nA38tV2xKrYsS7QOt112xjcThl3pNKlMixiW4WEGJmASL+/VcOkJISn21TUYJuH7p9pO
 dBMzXBJcTWichnw+ylr+HDFrfQxS5jIQBHxVcH1a0dyn6U/2c09sU+a6m95WXYGQOF2O
 Fjnw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXiagxHnN1H9YvbWUZM0ltnT5pTBoh9uQGqX3c62nS5ipCR2TyLvzaKnfnQjiMa+esqdC62xm1Vh5RZZqqfiEjV0oFcFZjkiYz2GycQ0ZOcrw==
X-Gm-Message-State: AOJu0YwpS5rqnmCVgtsHIEOq7q0N/CYH0tijp+5ZdTcOcqykHDkfrOSu
 3RI+f/L5DjRfJQBMQmqUZkTfG5ZLCr2VBHok5lUEwxTa57MYn/q4FG3bHtOXHVwNkzNEjQ6AE4Z
 F9ZX0Oo9UsGri1fO28tMpYDl/+kxphOfp9aMSj44FK7gLyGz7uS4RE78HI0nbgP90LlUpb/FGMr
 DmVA7QxKc=
X-Received: by 2002:a17:903:234f:b0:1f4:6252:dba9 with SMTP id
 d9443c01a7336-1f6192ed35bmr21911695ad.9.1717078897726; 
 Thu, 30 May 2024 07:21:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFj4WhAEo6jH3/j42l91y2guETPciufxMGGZdNuOrkvNj5+sjOxoLTEayUXIdr7icIln7gdog==
X-Received: by 2002:a17:903:234f:b0:1f4:6252:dba9 with SMTP id
 d9443c01a7336-1f6192ed35bmr21911375ad.9.1717078897341; 
 Thu, 30 May 2024 07:21:37 -0700 (PDT)
Received: from rickywu0421-ThinkPad-X1-Carbon-Gen-11.. ([150.116.44.221])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-1f44c967cd2sm118577925ad.166.2024.05.30.07.21.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 May 2024 07:21:37 -0700 (PDT)
From: Ricky Wu <en-wei.wu@canonical.com>
To: jesse.brandeburg@intel.com
Date: Thu, 30 May 2024 22:21:31 +0800
Message-ID: <20240530142131.26741-1-en-wei.wu@canonical.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1717078899;
 bh=B2vGdF2dGkt21QsIPszG+5j1gbhrGScywHg+DXLmaj8=;
 h=From:To:Cc:Subject:Date:Message-ID:MIME-Version;
 b=GuxQ7xrz1nI0Dvkc8cIa3qufBmJFpGHQwIEark+91R7hevP3vvODWrGeZ6cwY2DQ+
 rod0ErNiU8L1WSEj8xeDLH3qkCSePSCxfJ4DIQR5mSkMvi9gerA4RKJW+ynnrFxFMO
 aGYofT4Aoq7UGl4c2kO6ABwnMCvSqw1gW+jDcW7VwwF+kQdHLkh7eA0ixUQEarpdyX
 tj8lGAQ++ot4yYHmnf+bXme3mNR64KxIPmYoWxHnnXR7J6dQXcCzODPcNbLiJjFE5H
 zc3b00fUNnShTk60em/T7mB791H0+BDmYyWbw4lPs/VtWvlEnUbJqGE9JhvrxLTJMb
 ii69fxePczU/w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=GuxQ7xrz
Subject: [Intel-wired-lan] [PATCH net,
 v2] ice: avoid IRQ collision to fix init failure on ACPI S3 resume
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
Cc: pmenzel@molgen.mpg.de, michal.swiatkowski@linux.intel.com,
 wojciech.drewek@intel.com, intel-wired-lan@lists.osuosl.org,
 rickywu0421@gmail.com, linux-kernel@vger.kernel.org, en-wei.wu@canonical.com,
 edumazet@google.com, Cyrus Lien <cyrus.lien@canonical.com>,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

A bug in https://bugzilla.kernel.org/show_bug.cgi?id=218906 describes
that irdma would break and report hardware initialization failed after
suspend/resume with Intel E810 NIC (tested on 6.9.0-rc5).

The problem is caused due to the collision between the irq numbers
requested in irdma and the irq numbers requested in other drivers
after suspend/resume.

The irq numbers used by irdma are derived from ice's ice_pf->msix_entries
which stores mappings between MSI-X index and Linux interrupt number.
It's supposed to be cleaned up when suspend and rebuilt in resume but
it's not, causing irdma using the old irq numbers stored in the old
ice_pf->msix_entries to request_irq() when resume. And eventually
collide with other drivers.

This patch fixes this problem. On suspend, we call ice_deinit_rdma() to
clean up the ice_pf->msix_entries (and free the MSI-X vectors used by
irdma if we've dynamically allocated them). On resume, we call
ice_init_rdma() to rebuild the ice_pf->msix_entries (and allocate the
MSI-X vectors if we would like to dynamically allocate them).

Fixes: f9f5301e7e2d ("ice: Register auxiliary device to provide RDMA")
Tested-by: Cyrus Lien <cyrus.lien@canonical.com>
Signed-off-by: Ricky Wu <en-wei.wu@canonical.com>
---
Changes in v2:
- Change title
- Add Fixes and Tested-by tags
- Fix typo
---
 drivers/net/ethernet/intel/ice/ice_main.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index f60c022f7960..ec3cbadaa162 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5544,7 +5544,7 @@ static int ice_suspend(struct device *dev)
 	 */
 	disabled = ice_service_task_stop(pf);
 
-	ice_unplug_aux_dev(pf);
+	ice_deinit_rdma(pf);
 
 	/* Already suspended?, then there is nothing to do */
 	if (test_and_set_bit(ICE_SUSPENDED, pf->state)) {
@@ -5624,6 +5624,10 @@ static int ice_resume(struct device *dev)
 	if (ret)
 		dev_err(dev, "Cannot restore interrupt scheme: %d\n", ret);
 
+	ret = ice_init_rdma(pf);
+	if (ret)
+		dev_err(dev, "Reinitialize RDMA during resume failed: %d\n", ret);
+
 	clear_bit(ICE_DOWN, pf->state);
 	/* Now perform PF reset and rebuild */
 	reset_type = ICE_RESET_PFR;
-- 
2.43.0

