Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F21D9867D58
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Feb 2024 18:05:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 124EF60AFC;
	Mon, 26 Feb 2024 17:05:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kA_U34RzkkVb; Mon, 26 Feb 2024 17:05:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5A94160ACD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708967124;
	bh=ggSMR+RHnY2GCJGryihKnFJEL8f2cUTrEgUT8mO/ygQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=VnZ21wwqdPMVVvCFgLcd7sJkeNB6831dqj8a07ztYuCnf0kFXLmy254wA/vS3y7yk
	 8Hee0y6SlCJJ3nyZ0j08yeoWoGjQzTqYmPdIOUVIgtgHtSd4vJxkwQc+td0JQpwmiC
	 e3ptTycLjd/DWjBmrFlEn2oOob1XURyrflZsdxuZMR2gciYMKZi1JYvLQFtDM4OA2D
	 RG2Tvfde9Ng143W53jQvdB+ovz/wk6y2L1eUjMrMIYAcgVusyr3lmd2fr4vHeXOoc/
	 A9VqswhyVuEr9QxdNWqLoETOlHpMZqnJOWJU9cxvqQ4Rs5FO8AuDOty1FHVPG4avXZ
	 X3/fSf0gc9jeA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5A94160ACD;
	Mon, 26 Feb 2024 17:05:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9F4E71BF31C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 13:23:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8A3C7407DF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 13:23:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ajo1sF9G3-Ua for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Feb 2024 13:23:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::22a; helo=mail-lj1-x22a.google.com;
 envelope-from=aleksei.kodanev@bell-sw.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8EB83407F6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8EB83407F6
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com
 [IPv6:2a00:1450:4864:20::22a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8EB83407F6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 13:23:26 +0000 (UTC)
Received: by mail-lj1-x22a.google.com with SMTP id
 38308e7fff4ca-2d09cf00214so48008821fa.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 05:23:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708953803; x=1709558603;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ggSMR+RHnY2GCJGryihKnFJEL8f2cUTrEgUT8mO/ygQ=;
 b=kUaqFiqj7MMccRG3KR7tspydS420Qhv0hW56FJxqOkq6a1EfTKwscCnHVjnYv6r0OF
 kyfOBvMMgxBCODTs+Dpakv7bsgDJg7uYcnSqcJGRXMJbJ8pCfurvXtFzCbUXulX5Ff1z
 VABNoF4v92QvE1O3t9Tq9RYbvONYkF1yv8OuidbJ4g6D29cBg2XKqq9cn7BPdiqXMKfi
 96d3FL8DN5fNh13t/nK1fE/yKH1mm1e/e2Slq7jmk8FR/GhUSAJlwN1Syc7xaB9hq4pS
 gw0/NurPpsBB/9uW4ecWw9SarEVR2Fl7bivuyZv3dkZjdHX8f4PiTB414ZLFOpyZSV9a
 H9mQ==
X-Gm-Message-State: AOJu0YwGK8HNoGQmmwEQ5kgSurPw4KgDqmSHK4gjTboARru9zEVazjwK
 kAotfIrKakoJok1/l2zabbaBi6fTsqXEikTuw0WY38k96BEnIo/Ns67ocktF1nC+qIF4oVqpxWE
 =
X-Google-Smtp-Source: AGHT+IFDbxRXbJgWVMevqATQQnYSx/ZGF3byGzHxRpfq+9yOkbHRrQw9bv03unP/Vf1giI3ONlR2LQ==
X-Received: by 2002:a05:651c:211d:b0:2d2:8ba4:49b2 with SMTP id
 a29-20020a05651c211d00b002d28ba449b2mr1992750ljq.16.1708953802982; 
 Mon, 26 Feb 2024 05:23:22 -0800 (PST)
Received: from belltron.int.bell-sw.com ([95.161.223.241])
 by smtp.gmail.com with ESMTPSA id
 x9-20020a2ea989000000b002d289e7f18asm397984ljq.104.2024.02.26.05.23.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Feb 2024 05:23:22 -0800 (PST)
From: Alexey Kodanev <aleksei.kodanev@bell-sw.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 26 Feb 2024 13:21:02 +0000
Message-Id: <20240226132103.69122-1-aleksei.kodanev@bell-sw.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 26 Feb 2024 17:05:21 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bell-sw-com.20230601.gappssmtp.com; s=20230601; t=1708953803; x=1709558603;
 darn=lists.osuosl.org; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=ggSMR+RHnY2GCJGryihKnFJEL8f2cUTrEgUT8mO/ygQ=;
 b=SwR1lcd4AjQzC1kvyTxvZBWwFB939kHWqMYrAiWuumkpTFxIRcQSieVjn24HSlrr9K
 gLA4DVRoCf6pvLWRin6y/TiJSkG0fhJjw2w2xeIym+DuMdVMWY85f2I8yrQ1Sl0+faCM
 w9KyfBvl91xnnw1I7AF5xult3nfAIp48zft5p0AT4bBIlGGA8kChNhVTt243A2c3yIf1
 D0450AfsxOxO628jdVrh8++n8AKyYWFTOJ79mok5k1J8dS58Cy6vHzh57cW6OSon74r3
 TNspVZoviMdLJImsjmVUxSY4rIN57/OoKgzWw+4ezPY6iNF+tw6M27iGUElpluc7oH96
 e8qw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=bell-sw.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=bell-sw-com.20230601.gappssmtp.com
 header.i=@bell-sw-com.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=SwR1lcd4
Subject: [Intel-wired-lan] [PATCH iwl-next 1/2] iavf: drop duplicate
 iavf_{add|del}_cloud_filter() calls
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
Cc: Alexey Kodanev <aleksei.kodanev@bell-sw.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

There are currently two pairs of identical checks and calls
to iavf_{add|del}_cloud_filter().

Detected using the static analysis tool - Svace.

Signed-off-by: Alexey Kodanev <aleksei.kodanev@bell-sw.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 335fd13e86f7..5097efa2e1cd 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -2170,19 +2170,10 @@ static int iavf_process_aq_command(struct iavf_adapter *adapter)
 		iavf_add_cloud_filter(adapter);
 		return 0;
 	}
-
-	if (adapter->aq_required & IAVF_FLAG_AQ_DEL_CLOUD_FILTER) {
-		iavf_del_cloud_filter(adapter);
-		return 0;
-	}
 	if (adapter->aq_required & IAVF_FLAG_AQ_DEL_CLOUD_FILTER) {
 		iavf_del_cloud_filter(adapter);
 		return 0;
 	}
-	if (adapter->aq_required & IAVF_FLAG_AQ_ADD_CLOUD_FILTER) {
-		iavf_add_cloud_filter(adapter);
-		return 0;
-	}
 	if (adapter->aq_required & IAVF_FLAG_AQ_ADD_FDIR_FILTER) {
 		iavf_add_fdir_filter(adapter);
 		return IAVF_SUCCESS;
-- 
2.25.1

