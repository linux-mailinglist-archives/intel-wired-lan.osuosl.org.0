Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3C48369CB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jan 2024 17:12:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 349FC60FC7;
	Mon, 22 Jan 2024 16:12:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 349FC60FC7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705939942;
	bh=op8+puFUBQ0HGhLoj/M968f0BhKOR1Shj+6HmxTCqzA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=aSPYTYpIS/xCaNvH2M1Hcl4aO8zBnAFv6hjYLLO9OmxnOMBWbo2B4CYp627y8Cbfw
	 WVXUntJp3AKw7JkRajwKnfdbjSIrMmt0tZsDmvp/aVKTNe4Tf9ed5rNwfBeMgu4H8P
	 LQHKnuwHkNFYUKfne3WaPprNSHs3TbEoWAAqdjAcVGYoDie3RVnPxnlps9+1rqgH/s
	 LL9T+bYO7ae/UGUcqA5xYCx6xFAJ9AcMOWiXpWqNo57x/XB3bTS/EEEZ6+5E2LWCP5
	 SmN+iOJV8qXTHAhWD6OirJr3MFyGP5vXNapqUylIcS+KejcGCZPpW6ohiGs9ISv3QZ
	 jAHoKZ98Qub+A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6SaRmiqFPJiW; Mon, 22 Jan 2024 16:12:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6565A60F93;
	Mon, 22 Jan 2024 16:12:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6565A60F93
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C2A681BF33B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Jan 2024 07:28:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 95FFC60EC1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Jan 2024 07:28:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 95FFC60EC1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6Q8FnAmaBACG for <intel-wired-lan@lists.osuosl.org>;
 Sat, 20 Jan 2024 07:28:45 +0000 (UTC)
Received: from mail-il1-x12d.google.com (mail-il1-x12d.google.com
 [IPv6:2607:f8b0:4864:20::12d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C321060AEE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Jan 2024 07:28:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C321060AEE
Received: by mail-il1-x12d.google.com with SMTP id
 e9e14a558f8ab-3606ebda57cso7429255ab.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jan 2024 23:28:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1705735724; x=1706340524;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=op8+puFUBQ0HGhLoj/M968f0BhKOR1Shj+6HmxTCqzA=;
 b=cB9y8kKfYn1ZqOih6lxEP43yrsubyrdLr/fTIbyTOzRT9NN3rKoMu7y87u+llezkYA
 3oJcs8+4GtPyLDdth8KmKBM9dumU8nNWMshZjOrYM1rbjGU4H5uVRIzX7Eat0MI9zqc4
 kdbtCbdwEZ9wgsw7VCaM0x5T1UulQv+nGc9mVGq6hk4PLq26x4bXNBQMMCqE9ZgEjUqZ
 dxoFU4PZvQC+Oqv76GnOlLjN5Dd5lmYv1vfr1PqZfpJrosa93E+51wuGJupVYc+lbiqh
 +WI2pNH/CB4m7kNM79MRK7w/gyenqOOMAEyYvSQLhC3boAw6DAEb/rHsDoAt+gw7KvI4
 jLJQ==
X-Gm-Message-State: AOJu0Yycy9EQezYHbwY6jpFo/NhoPWU2vQ301511JUf15DgJU3qMatt2
 3brJCRPpN6qOFx2rtkgLOtshPf7YKxZeZE/0/oqsv0Eh8ssxh+4G
X-Google-Smtp-Source: AGHT+IFCRPs1/tBVCZVWysUDtfO6FYq2BkYpRS7ZbSw9HL6hXinF0O1vRTzqZ9rM73oHYIUU5tKG1Q==
X-Received: by 2002:a92:d9c3:0:b0:361:ac32:5c7f with SMTP id
 n3-20020a92d9c3000000b00361ac325c7fmr1216491ilq.36.1705735723818; 
 Fri, 19 Jan 2024 23:28:43 -0800 (PST)
Received: from fedora.. ([2402:e280:3e0d:606:d0c9:2a06:9cc6:18a3])
 by smtp.gmail.com with ESMTPSA id
 s11-20020a170902ea0b00b001d50766546dsm4017809plg.184.2024.01.19.23.28.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jan 2024 23:28:43 -0800 (PST)
From: Suresh Kumar <suresh2514@gmail.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Sat, 20 Jan 2024 12:58:06 +0530
Message-ID: <20240120072806.8554-1-suresh2514@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 22 Jan 2024 16:12:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1705735724; x=1706340524; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=op8+puFUBQ0HGhLoj/M968f0BhKOR1Shj+6HmxTCqzA=;
 b=Re2KwVZWcycYZ0eRLcoS5zgqqfzlUOl5GQQoJ3QuDjREYpLljft3E+GoshypErWXE+
 7sNnPlCge0qW6M//cmwdTUdiJU47Z8gUIGKueCWJcain0cfO/wk+R04WbLiHVeU4mCpA
 YSw+n6EbQrntItKLEJ0JZiFPkkJiKsvc7y5d5EtBykBIWD8NFA8puZJXY0rgcCcJVaGW
 +xF94FrEvLcS/YyVsZmI2AXF7uP8yj62JACmqT3HEDbg/Ip0v512aqf08wkwGyrI/I5E
 cCy5n/wZwkYd7+vjKxLpiWGVf9OgVbwMQIkMq2v7gA5oMcE3kC3xQKrPzQ0P8qtkAA9y
 nAZA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=Re2KwVZW
Subject: [Intel-wired-lan] [PATCH iwl v2] i40e: print correct hw max rss
 count in kernel ring buffer
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

pf->rss_size_max is hardcoded and always prints max rss count as 64.

Eg:
  kernel: i40e 0000:af:00.1: User requested queue count/HW max RSS count:  104/64

whereas  ethtool reports the correct value from "vsi->num_queue_pairs"

Channel parameters for eno33:
Pre-set maximums:
RX:     n/a
TX:     n/a
Other:      1
Combined:   104
Current hardware settings:
RX:     n/a
TX:     n/a
Other:      1
Combined:   104  <-------

and is misleading.

Change it to vsi->num_queue_pairs

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

