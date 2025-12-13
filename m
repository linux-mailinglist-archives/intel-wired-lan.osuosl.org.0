Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C76CBA1CA
	for <lists+intel-wired-lan@lfdr.de>; Sat, 13 Dec 2025 01:22:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F0DB040A12;
	Sat, 13 Dec 2025 00:22:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T0AHG5S4PLRN; Sat, 13 Dec 2025 00:22:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 556E840A89
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765585364;
	bh=ygpkiDbZjJvjZf+AJjz4EzzCS+085NwneWPh5RGHKtI=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=iBUsn0vLnmyxq5n+MUqOzv4R5SAxC1T6/tlEevTkCayWPEYLXv+vhVANsV1qz9da3
	 n8PQ9s6bxpSY3XoR79xSbnvMq7zzE8Yi7Z2bGISrTZjcFcYYzjEXJ6jrvGaqb/3CXo
	 KcU9FUZhPGPzDFZT2jyLLA4QwHCdyYbCoOxStP7gLBKYSDSU9OQFoHiQzTATxWbTtf
	 qKl63zRHSlaZzoAe1SZdG1dKLqOe7gHe0UTpjww0MCLfQCZrLflxf9d9RninLpGARJ
	 f5m9wqA+NUdv5wLAK/Uxs0x/VTBfknbtaA8E00//hEVbwzoiM9/gR36WXWInn6/f8a
	 7MZrFkNQyhyzQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 556E840A89;
	Sat, 13 Dec 2025 00:22:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E6DC22C1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Dec 2025 00:22:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E3E8F828D1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Dec 2025 00:22:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZdAiu0QNHtsO for <intel-wired-lan@lists.osuosl.org>;
 Sat, 13 Dec 2025 00:22:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1034; helo=mail-pj1-x1034.google.com;
 envelope-from=chaas@riotgames.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BDFB9828C5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BDFB9828C5
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com
 [IPv6:2607:f8b0:4864:20::1034])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BDFB9828C5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Dec 2025 00:22:41 +0000 (UTC)
Received: by mail-pj1-x1034.google.com with SMTP id
 98e67ed59e1d1-34a2acb736eso1438554a91.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 16:22:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765585360; x=1766190160;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ygpkiDbZjJvjZf+AJjz4EzzCS+085NwneWPh5RGHKtI=;
 b=WHuEA/Eh9GDj4yU6WfhbJls24+ttQ9dJvSIjOKwZhKBQ8+KSqoC4x/eATBflycDhaa
 ruzq+gZND/vFipAIpUI7ZhXkVl1q/a7uU5dcVXYcDrrnT79U4LNtEBCGDaN4wGC1PZ0U
 3axTayVTPkaVREMkjUWQWacfB/iOFKG2RBXpnUQd3NfEaKEeJM2Dl/AFGL4U2rcV7S0Q
 3qdmI38WijDggkN2fyCehanZwS8gyHqu4qqOmQ9jbopoWhwZhIWaDxBLgku0ojrBXtu9
 /FmdKg/0xGj/xK7zRcThYaFOf0K8BgtLb6iVOKvvxxfSi1GL/AIaV5cu9tnapgkB3Q2+
 9XTg==
X-Gm-Message-State: AOJu0Yztra4keUK9ofF+HfGDBhJcYYjp+aamkTR2iuKuzFC0EqDPPJVQ
 64AinMcmjSdb0iGZWLtujRYzjKQFPVAWqWll40igK4T9m1DgOc2EKK3MzHjJfTiR9quMkR3aNgH
 I4l6F2no=
X-Gm-Gg: AY/fxX6O6IzNyj4AoaGdIzYmQNR2TZgSQDed2g+yKKQz79JTk7CrDRRzqRZnYhSCYul
 r/5U9e/nOAlYTb+pRh0tKFiGO+tJn+8b9enSvcu7WPGsrRNon4lG6r41J8znM+gcK/9RNqjBpMr
 KiWzKDimwXmMgBB/MHDVpIS/ZllDknzYfBNoEClgqrVwMgv7VqccVex68I6ga7PhMRqsl5K7h9M
 AiY4KL69BkmqZCcrj3qFRJ3hBiYAtSEVGTx8X+xb1Jst7a5hgkanCjpjMT8HyCvbRh/NpgI9+ZJ
 xOOwWEhQVDlxMB1h2A+AHjkSMa3NVxOHd4gFEbSxGyjeW6Ei26xyN2EwiEdqBe/W1UsgOkIQfDD
 8WnzjB1iHdFXQWvtQLoKlrJGgcBcjDpk9jYUkUbPWJTycfrYzx/YVK/ewkQO9hJ4L4n/MmSIrdc
 vfRgX68mgAbirsNf6jA1nHI4DqN7x4AyOf
X-Google-Smtp-Source: AGHT+IG0QiYTdCHSIsEkeQltqDYtw5/P8taR7PvtjQwb68+KpS6nA4pHgaLRQkALdrQsTkpgs3B5Xw==
X-Received: by 2002:a17:90b:380f:b0:340:66f9:381 with SMTP id
 98e67ed59e1d1-34abd6d873bmr3073525a91.10.1765585360489; 
 Fri, 12 Dec 2025 16:22:40 -0800 (PST)
Received: from fedora-linux-42 ([104.160.131.201])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-34abe1ffdf0sm2904719a91.4.2025.12.12.16.22.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Dec 2025 16:22:40 -0800 (PST)
From: Cody Haas <chaas@riotgames.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, kuba@kernel.org,
 pabeni@redhat.com, netdev@vger.kernel.org, Cody Haas <chaas@riotgames.com>
Date: Fri, 12 Dec 2025 16:22:25 -0800
Message-ID: <20251213002226.556611-1-chaas@riotgames.com>
X-Mailer: git-send-email 2.51.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=riotgames.com; s=riotgames; t=1765585360; x=1766190160; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=ygpkiDbZjJvjZf+AJjz4EzzCS+085NwneWPh5RGHKtI=;
 b=iX5u8OVrDH/NrUWbiHBi/pBiGdpfpArRtUdP5x0sCByO8Jl6Efvr8es6kcZVRyItrr
 plDl2y9t+93WZOeyDXCYiLpcuBqfe2VTYylNQpYt/l2FbItuq689fZK+ELK0EUlnWAdP
 Eody2BIvOtfkouIFaQPX1/mRR8L30MPaALGUA=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=riotgames.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=riotgames.com header.i=@riotgames.com
 header.a=rsa-sha256 header.s=riotgames header.b=iX5u8OVr
Subject: [Intel-wired-lan] [PATCH iwl-net v2 0/1] ice: Fix persistent
 failure in ice_get_rxfh
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

Hey all,

This is a small bug fix for an issue I found when testing some e810 NICs
on kernel 6.16.5-200.fc42.x86_64. I originally reported the bug in
https://lore.kernel.org/intel-wired-lan/CAH7f-UKkJV8MLY7zCdgCrGE55whRhbGAXvgkDnwgiZ9gUZT7_w@mail.gmail.com/

User Impact of the Bug
----------------------
In the current in-tree ice driver, if a user tries to get the
indirection table using the SIOCETHTOOL command and the
ETHTOOL_GRXFHINDIR subcommand the subsequent function call with always
fail with -EINVAL. 

Cause of the Bug
----------------
When a user gets the indirection table using SIOCETHTOOL and ETHTOOL_GRXFHINDIR
ethtool_get_rxfh_indir is called. This function will end up calling
ice_get_rxfh which then calls ice_get_rss_key. The function
ice_get_rss_key expects its *seed parameter to never be null. This *seed
parameter is the key field in ethtool_rxfh_param. Neither ice_get_rxfh
nor ethtool_get_rxfh_indir set this value, so it will always be null.
This causes the *seed parameter for ice_get_rss_key to always be null,
ultimately causing ice_get_rss_key to always return -EINVAL.

Fix for the Bug
---------------
To fix this, I went ahead and implemented ice_get_rss which checks if
the rss_key is not null before calling ice_key_rss_key. This follows
suit with the i40e driver's implementation.

Cody Haas (1):
  ice: Fix persistent failure in ice_get_rxfh

 drivers/net/ethernet/intel/ice/ice.h         |  1 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c |  6 +----
 drivers/net/ethernet/intel/ice/ice_main.c    | 28 ++++++++++++++++++++
 3 files changed, 30 insertions(+), 5 deletions(-)

base-commit: 67181985211850332c8ff942815c1961fd7058b9
-- 
2.51.1

