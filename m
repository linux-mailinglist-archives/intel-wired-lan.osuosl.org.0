Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A55694F0E8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Aug 2024 16:57:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7BD9E401B0;
	Mon, 12 Aug 2024 14:57:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Hne2udI6SzMk; Mon, 12 Aug 2024 14:57:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 92BF4405B5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723474626;
	bh=1oQV2bJ7RyME6CPZaiU3hjsvPi2H4xpFqeFRdoKurPw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=c4r1j6jQn4t+2w2M/EpRBUvMhiByjUQRIPw0XBVX4RCmyMnHJ5YmEXW1BFu67iMnL
	 b6Gaxr2KmkNR+6JqTRFhmSQGyJGOk2H7o2OC5GLthfekIUYiE30K7kgLv5DEKyMIho
	 5jzbXFfVRCy7AoAbbzLwk/cymQwyvmEa2AWI6SzO9comIvvByPJJ3vLZ7XiX5IFNsK
	 NxdjRpfmV7nQwoZan6hyFcWEdxtzclNssovYyLRnDGz8d1xclmI4MIYMgUOdit5OZx
	 FUQRI9w6gluIUmChM7wujL3Qedh1TbjHiiNQxVm3AWq3zhexpZ/GT8AM4yQ90uK6nd
	 HCsHFstfW7FPA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 92BF4405B5;
	Mon, 12 Aug 2024 14:57:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D63A81BF20D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 14:57:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CEBC7404BE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 14:57:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RSRKOvcp-0Ln for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Aug 2024 14:57:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62a; helo=mail-pl1-x62a.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CEF2D40510
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CEF2D40510
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com
 [IPv6:2607:f8b0:4864:20::62a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CEF2D40510
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 14:57:03 +0000 (UTC)
Received: by mail-pl1-x62a.google.com with SMTP id
 d9443c01a7336-1fd90c2fc68so29859985ad.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 07:57:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723474623; x=1724079423;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=1oQV2bJ7RyME6CPZaiU3hjsvPi2H4xpFqeFRdoKurPw=;
 b=lDnkgEp3wmq2W8mojcreD4al7xm8wH2nVl/G5I2plgI7SrgJ7qDsnFtDRhNzqtPGFX
 zB3w6xTyADz9rNYm22ts1/kZgnzw4yNGvUE+R1atHJYkKRPg84ydwmg4xWAjCetr0YvU
 rSMWHqy4aTrehnVmI8n5X6KGvQJ0BAdmM9GAyPOtsjEPxcEwGakQxL9ZKymrKPhhJnRh
 3wzOHcksTxEGZYrqAHIkQ511h2ukI2i+pzQPb8ueonusnzNYtkAv81XD52S+kC6gb2gU
 RFQBad5h8ezV56BVBjBSd0jFY0sQnJRMMOmsP5x2F7/4Rj8dWKIA0hqfZT6zgqWscujk
 mJMw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVjE6cyoBT2+A8Mx8rdl9muwu/xetLlqLFQz4ticcxM+WuQsFIpVSHMqv2Y5vETiH6hr5ehOVS8WpgzfP1VOdP8X+P8iw9EbSmqhtjGo2BREw==
X-Gm-Message-State: AOJu0YzxFA1cAEQCcE6Pu8m3DELvRWSa7XASu/9zvy4tlrm1J5xOEheR
 0rxs+JgXBfeJX3HJcx9oZKPb+9nR1zc5AqsbQqQnmnStU3J10ySfGdLK93xKqfc=
X-Google-Smtp-Source: AGHT+IHVlPXrDe+TvrQA2bE5/cgeIJbEgDv2n8mDRrGm9y6zRLuQHx0uDj0ZT+JiDZ119RROBsPRCQ==
X-Received: by 2002:a17:902:e5d0:b0:1fd:aac9:a712 with SMTP id
 d9443c01a7336-201ca153eecmr5873945ad.37.1723474622800; 
 Mon, 12 Aug 2024 07:57:02 -0700 (PDT)
Received: from localhost.localdomain ([2620:11a:c019:0:65e:3115:2f58:c5fd])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-200bb8fd835sm39006955ad.89.2024.08.12.07.57.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Aug 2024 07:57:02 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: netdev@vger.kernel.org
Date: Mon, 12 Aug 2024 14:56:21 +0000
Message-Id: <20240812145633.52911-1-jdamato@fastly.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1723474623; x=1724079423; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=1oQV2bJ7RyME6CPZaiU3hjsvPi2H4xpFqeFRdoKurPw=;
 b=f+oH2gBElR9thl62Q+1eeO0zdQDrPm+v6OhuuBmMccEXkLPTXdTmMmmWKi3uEpAYO5
 5qqEwBNwIpOPIl58s50Us/FQ8W3S5Rmu75pGVyt2g4XWCTz/00G2c6zEfEBo1KlPF/wt
 UIgptj7pEhDvNUxDAkBQGSIXE5Gcg6k4ULQjY=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=f+oH2gBE
Subject: [Intel-wired-lan] [RFC net-next 0/6] Cleanup IRQ affinity checks in
 several drivers
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
Cc: Joe Damato <jdamato@fastly.com>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Ziwei Xiao <ziweixiao@google.com>,
 Jeroen de Borst <jeroendb@google.com>, Leon Romanovsky <leon@kernel.org>,
 "open list:MELLANOX MLX4 core VPI driver" <linux-rdma@vger.kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Jiri Pirko <jiri@resnulli.us>, Shailend Chand <shailend@google.com>,
 Harshitha Ramamurthy <hramamurthy@google.com>,
 Willem de Bruijn <willemb@google.com>, Yishai Hadas <yishaih@nvidia.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 open list <linux-kernel@vger.kernel.org>, Tariq Toukan <tariqt@nvidia.com>,
 Praveen Kaligineedi <pkaligineedi@google.com>,
 Saeed Mahameed <saeedm@nvidia.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Greetings:

Several drivers make a check in their napi poll functions to determine
if the CPU affinity of the IRQ has changed. If it has, the napi poll
function returns a value less than the budget to force polling mode to
be disabled, so that it can be rescheduled on the correct CPU next time
the softirq is raised.

This code is repeated in at least 5 drivers that I found, but there
might be more I missed (please let me know and I'll fix them). IMHO,
it'd be nice to fix this in existing drivers and avoid future drivers
repeating the same pattern.

FWIW, it's possible that patch 4, 5, and 6 could be separated into
"fixes" for the type mismatches and then, separaately, new code, but
that seemed like a lot of noise for the list and maybe unnecessary.

If I should first send fixes for 4, 5, and 6 and then send this cleanup
series after, let me know and I'll do that.

Sending as an RFC because:
  - I wanted to see if this cleanup was desirable overall, and
  - If so, do I need to send fixes for 4-6 first?

Thanks,
Joe

Joe Damato (6):
  netdevice: Add napi_affinity_no_change
  mlx5: Use napi_affinity_no_change
  gve: Use napi_affinity_no_change
  i40e: Use napi_affinity_no_change
  iavf: Use napi_affinity_no_change
  mlx4: Use napi_affinity_no_change

 drivers/net/ethernet/google/gve/gve_main.c        | 14 +-------------
 drivers/net/ethernet/intel/i40e/i40e.h            |  2 +-
 drivers/net/ethernet/intel/i40e/i40e_main.c       |  2 +-
 drivers/net/ethernet/intel/i40e/i40e_txrx.c       |  4 +---
 drivers/net/ethernet/intel/iavf/iavf.h            |  1 +
 drivers/net/ethernet/intel/iavf/iavf_main.c       |  4 +++-
 drivers/net/ethernet/intel/iavf/iavf_txrx.c       |  4 +---
 drivers/net/ethernet/mellanox/mlx4/en_cq.c        |  6 ++++--
 drivers/net/ethernet/mellanox/mlx4/en_rx.c        |  6 +-----
 drivers/net/ethernet/mellanox/mlx4/eq.c           |  2 +-
 drivers/net/ethernet/mellanox/mlx4/mlx4_en.h      |  1 +
 drivers/net/ethernet/mellanox/mlx5/core/en.h      |  2 +-
 drivers/net/ethernet/mellanox/mlx5/core/en_main.c |  2 +-
 drivers/net/ethernet/mellanox/mlx5/core/en_txrx.c |  9 +--------
 include/linux/mlx4/device.h                       |  2 +-
 include/linux/netdevice.h                         |  8 ++++++++
 net/core/dev.c                                    | 14 ++++++++++++++
 17 files changed, 42 insertions(+), 41 deletions(-)

-- 
2.25.1

