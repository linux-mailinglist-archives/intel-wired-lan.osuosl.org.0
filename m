Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AB3A832E3B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Jan 2024 18:35:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 03CE442C90;
	Fri, 19 Jan 2024 17:35:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 03CE442C90
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705685741;
	bh=+R0RsDZSnfmoC203MVbI0UM8DaIKySut/O5wSq6tGBI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=a0mbQxhMA6yJGAywHjyHV1vyPSrlPtrdnkYMUfKXiGTtZLu3xVG886uJiRIWZhfHT
	 eJ+lDiZ4Aow9jL6PL3ygFTIXwD2VPRdeejXye3gkuJSYaDddxHcrQCWO/Kd/whJzTS
	 dl1GcPQDtk46EcFG6BcHzlENPWpMBMLB3DivHEuSdsmD5SkfvvujlKcc6/gxXbiimo
	 bTwf0zbX8W2cftKT4CHCP9BoL/71bLdanl72rprA12nL6yBrceO6OkBggg1UEiWmjt
	 Lvs4c4ZQLoszY/z8xsCnGEuqEQjMu1YUkY0mrHzHXqSybMi3kteOtegmjr9QrP164E
	 SCyXqHBrgeZHg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I121DjpucT-1; Fri, 19 Jan 2024 17:35:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2BACE42CC1;
	Fri, 19 Jan 2024 17:35:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2BACE42CC1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0CD691BF239
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jan 2024 13:17:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D789381321
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jan 2024 13:17:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D789381321
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vjmjoVYcxcl6 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Jan 2024 13:17:12 +0000 (UTC)
Received: from mail-il1-x130.google.com (mail-il1-x130.google.com
 [IPv6:2607:f8b0:4864:20::130])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1C8D4812E7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jan 2024 13:17:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1C8D4812E7
Received: by mail-il1-x130.google.com with SMTP id
 e9e14a558f8ab-361a1f8c682so2284205ab.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jan 2024 05:17:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1705670231; x=1706275031;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=+R0RsDZSnfmoC203MVbI0UM8DaIKySut/O5wSq6tGBI=;
 b=fighTr+3nCQWlcnXCC9hOL4d4ZlhJoTqDYm9hu22lXEiM8ww/sTGiV0ce0FN/GRu/w
 HQDjI56F+NDiZCTiyOwdX+kTfTjCmmHiUmRm0j8vbWHXNRZaV4Q00y8HfBlixsoeBYO/
 U+Pw8Zy1cGWaQvd0s7dg/b7tjoq2CafC+vbYMhvVjKnzbhEOSM7VQkdCN9t/0IGX5Jlj
 LAGCtateDhTkYeFwGdXQWFEZsTvZGvLkYBZf9VDaG9Hplicfgrkawy+vlkf4CNM8yD5R
 9+wto23uTkT1K0iz6/fe7UnLEXS6xEvWT/znZ9XvzXl+ppwBKSW5rCsMKUOE9GMpSvX9
 wBeQ==
X-Gm-Message-State: AOJu0Yx1KijKWwC0L4LQVtN7Z9+BnoSUTZ82hxszMQxw3Npxkjd2tvHp
 LMpuqGplQzEsH9STIgfVFnxxZ+JszxsiJqoQwStKVp9VR3Dt+hq3
X-Google-Smtp-Source: AGHT+IF9ROGv7kTV+3XlHqLllyaOPt9wKeBA7Z45AQ19n+eX6sTpxEc1tatK5J2JpmjjbdkTXidQLA==
X-Received: by 2002:a92:da51:0:b0:361:ae73:2c0 with SMTP id
 p17-20020a92da51000000b00361ae7302c0mr335091ilq.21.1705670231055; 
 Fri, 19 Jan 2024 05:17:11 -0800 (PST)
Received: from fedora.. ([2402:e280:3e0d:606:d0c9:2a06:9cc6:18a3])
 by smtp.gmail.com with ESMTPSA id
 77-20020a630150000000b005cd8bf50c13sm3373442pgb.58.2024.01.19.05.17.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jan 2024 05:17:10 -0800 (PST)
From: Suresh Kumar <suresh2514@gmail.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Fri, 19 Jan 2024 18:46:52 +0530
Message-ID: <20240119131652.8050-1-suresh2514@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 19 Jan 2024 17:35:10 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1705670231; x=1706275031; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=+R0RsDZSnfmoC203MVbI0UM8DaIKySut/O5wSq6tGBI=;
 b=V7f4QRl5I7dCbXSp+F5BezTo42z0oY6FTltagTszUK8WQZvPwitcXyCVNcFMqg+Rt0
 +vOO+5UJMsuAU9JQqCcjH1L/6LtlTJ05v13VaukSnshyC2fFy6kouTPCarrxtRI4RJR5
 JaFRwU8iQNrHADf68ZurjSMnVNi+n/8c939OttRwjao+ZVUPP17jOYDzKQEMsHd643bP
 czz7iifEvfg/QkI1sH5Q2DGZ/THmaG2xxKwYY6sR3VqXq1guH6IyOn3+kmokpqlKSQ3y
 iblvfMCVCHPZ7J5FkIWroNAUGnicN+W3XDNqBFIiYGrczNiyP2omTSh67a1le4snQOP0
 vi2g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=V7f4QRl5
Subject: [Intel-wired-lan] [PATCH] i40e: print correct hw max rss count in
 kernel ring buffer
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
Cc: Suresh Kumar <suresh2514@gmail.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The value printed for  "HW max RSS count" is wrong in kernel dmesg for i40e
NICs:

  ... i40e 0000:63:00.0: User requested queue count/HW max RSS count: 48/64

whereas  ethtool reports the correct value from "vsi->num_queue_pairs"

Channel parameters for eno33:
Pre-set maximums:
RX:     n/a
TX:     n/a
Other:      1
Combined:   96
Current hardware settings:
RX:     n/a
TX:     n/a
Other:      1
Combined:   96  <-------

and is misleading.

This value is printed from 'pf->rss_size_max' which seems hardcoded.

Below commit also removed this 64 limit:

Commit e56afa599609d3afe8b0ce24b553ab95e9782502
Author: Amritha Nambiar <amritha.nambiar@intel.com>
Date:   Wed Nov 8 16:38:43 2017 -0800

    i40e: Remove limit of 64 max queues per channel

Signed-off-by: Suresh Kumar <suresh2514@gmail.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index d5519af34657..f5c1ec190f7e 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -12524,7 +12524,7 @@ int i40e_reconfig_rss_queues(struct i40e_pf *pf, int queue_count)
 		i40e_pf_config_rss(pf);
 	}
 	dev_info(&pf->pdev->dev, "User requested queue count/HW max RSS count:  %d/%d\n",
-		 vsi->req_queue_pairs, pf->rss_size_max);
+		 vsi->req_queue_pairs, vsi->num_queue_pairs);
 	return pf->alloc_rss_size;
 }
 
-- 
2.43.0

