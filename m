Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CE9148D17FE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 May 2024 12:03:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 395A381AEF;
	Tue, 28 May 2024 10:03:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HKvj7cPzi5Wm; Tue, 28 May 2024 10:03:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0CF2481B01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716890610;
	bh=6WRU7oiqAgX1SgryE9dbJiu4Oq2IxMJRrC30Dv4YbFE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=PFLHBYFaCyZBMUM2bpXs6+Fo2tlYb1sZf8wocqz8afPWhV4igEH5JJWDjkQphcPwF
	 7q++SUKbOsYSRu+rj8u5OzuszhAyYR8eixMQByiDH1PiGF+us3mCXBjlrQJ0iWFAvT
	 bVqTG9GtWl3Fr/zuvbQlhNEkLWTYpboiXmN/KpSDj5U1Up9pJhT/og30QWap4uuBg9
	 LIYNezEnb4h/mgIEGo5SNOO0YsvgpwjaN60Ph6IduzGrdOH4aJLUMpQirObDgyGJEO
	 PIlLfYr2BfepZShSorJE/wCsx7e1uoGCrfKSbViUPwX2xRbfKv4Dp1X3P6PJT5WkNu
	 YqNH8U8mvGyEQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0CF2481B01;
	Tue, 28 May 2024 10:03:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2A7B81D2663
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 10:03:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 16B774061F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 10:03:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id StOpfKxGDIHk for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2024 10:03:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.122;
 helo=smtp-relay-internal-0.canonical.com;
 envelope-from=en-wei.wu@canonical.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A4A82401D8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A4A82401D8
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A4A82401D8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 10:03:26 +0000 (UTC)
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com
 [209.85.214.200])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 65AA9411F8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 10:03:23 +0000 (UTC)
Received: by mail-pl1-f200.google.com with SMTP id
 d9443c01a7336-1f44b455dd5so6121735ad.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 03:03:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1716890602; x=1717495402;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=6WRU7oiqAgX1SgryE9dbJiu4Oq2IxMJRrC30Dv4YbFE=;
 b=FCWwwa7oSaWYsyIvq3IjCRbDxK31cTdu5zCYT1rpRPZyFNQ0t+qnj02hUprfjORux2
 k3qzkbdNbQLEzh+BwmWe5264b+jS8+IV6yviy8OvxFzICH7x3IJPrqC7fYH0DoANzIJE
 RArYpswc35dDOINPI7DDGVfXMTLJqr4QU17kARAMAuUJ+zI+AZjaAUs5fU+kpLQsMawt
 S8RVL7QnFLCuAWR3nupZSrAazhsVcHPtedbK4i11RyhW+SV4+f8FzOTioQ49Lei3YrPZ
 BhVDoWpdfeiBCfRCKiTFuYJOcDO4TbEQ4VqpQHvOdGVqS2BHsfLM2HsbB2zoq/KG2RFU
 1Jrw==
X-Forwarded-Encrypted: i=1;
 AJvYcCW+DcGISf6aGfMuLLPV7HQo8cW73uLeawR6wkZpLNzddoa20uZ1iaof7szzzq1JLBHTxEtE72avtNppbGNHsv85R2CiIINp3EQRRzkC9mbDfQ==
X-Gm-Message-State: AOJu0YwMQNX/HGQBPu8tB1V3lcXL4zjaE0UJ/AY2r5lex9FUWqaZOmx0
 +/GNLVo6Ob7DmHZfBWiGgKL+yYxe6pX0rE6lScNLYZjzos40aTjXaOWI6/8OLoRSfdDTAj5Q69H
 FaHA+Vd1aNt1lJQbKrrOhn0NKAftRlpx3Y4eyoyl8m6wUhhYwcrMjzWQOCnDBLsNDv2Xk0NdArG
 Gc2UxjpFg=
X-Received: by 2002:a17:902:c40e:b0:1ea:26bf:928 with SMTP id
 d9443c01a7336-1f4497d4f41mr127749225ad.50.1716890601667; 
 Tue, 28 May 2024 03:03:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFr7mQdxwJ5uObWTqJnfBsmGsiLDRd7S61bF/cj5zmUV790lNuVg+GUHeIftezcSrwY30vjCQ==
X-Received: by 2002:a17:902:c40e:b0:1ea:26bf:928 with SMTP id
 d9443c01a7336-1f4497d4f41mr127748755ad.50.1716890601069; 
 Tue, 28 May 2024 03:03:21 -0700 (PDT)
Received: from rickywu0421-ThinkPad-X1-Carbon-Gen-11.. ([150.116.44.221])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-1f44c96ccfasm76871095ad.147.2024.05.28.03.03.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 May 2024 03:03:20 -0700 (PDT)
From: Ricky Wu <en-wei.wu@canonical.com>
To: jesse.brandeburg@intel.com
Date: Tue, 28 May 2024 18:03:15 +0800
Message-ID: <20240528100315.24290-1-en-wei.wu@canonical.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1716890603;
 bh=6WRU7oiqAgX1SgryE9dbJiu4Oq2IxMJRrC30Dv4YbFE=;
 h=From:To:Cc:Subject:Date:Message-ID:MIME-Version;
 b=SsYsZ3KlJNfupE3HEdc4LOe+Ll8lYT/uqAvY/VYJ7UqGyZpclki4yMMijtAx9HxtR
 ZbR3K5kJQsfHbGJSL/jNb7Vf44nwsovVVfAXbWRoHLDOG6O9j9G1CB4B3L/XBYFla4
 m/Ooe/jmzcm4RIYvv+0n8yB8qe30mDiYx/mvzBQZPBabd4iDH9/Ip9bIZB9yWJ+FIk
 B5WCzGeWB84Ebll3+AE80b0Us3Ize95XvzswMH2yTmcT5geeifKgMHjZXB7gESALl/
 HFIFUkLJyHgB2ZAbzfNYM56NSa+rNeUXjDD+mYyYMDTYihDups6KJFk26GYoGa9Wj/
 MI6M91N0zvbfA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=SsYsZ3Kl
Subject: [Intel-wired-lan] [PATCH] ice: irdma hardware init failed after
 suspend/resume
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
Cc: intel-wired-lan@lists.osuosl.org, rickywu0421@gmail.com,
 linux-kernel@vger.kernel.org, en-wei.wu@canonical.com, edumazet@google.com,
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
irdma if we've dynamically allocated them). On Resume, we call
ice_init_rdma() to rebuild the ice_pf->msix_entries (and allocate the
MSI-X vectors if we would like to dynamically allocate them).

Signed-off-by: Ricky Wu <en-wei.wu@canonical.com>
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

