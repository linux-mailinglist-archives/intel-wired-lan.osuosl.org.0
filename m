Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 34750CA125D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 03 Dec 2025 19:49:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C0DAF83F06;
	Wed,  3 Dec 2025 18:49:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PzlHCyMBQ-xI; Wed,  3 Dec 2025 18:49:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1A49C840E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764787758;
	bh=yFQGJBbzhKpupl53C9z1XKuSoyNLWu5aQo4vlgaEtbM=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=BI8ek2iP/fMFDEcsAuRou8TpRWU4yykhaUhS1SMLjZp3U6BtMCdeY2fpNhdEk11j5
	 j9BpDn9VFlgld+HaCKadwIlWW3DBt+wxaYH1PMs3oulkyeoPhrfDhEvh5R7oKR/xJW
	 CEGtKUuMGQNIXXoD8nwVsWwVfcud1n24Lo2dpHS081w6rV0V0/Iu/e+Uwdb0S6jReW
	 zeimC3nWUCyyindwA0NzggjcNzQ9NO41WbHGfJEmzmOoomV2Ldn11k7tYb8zwom8cI
	 shPTUHxVv3V4fCCCSrVe3S5WygtF95/acGOWN/Dy2RNjM2S3fIVlAQXqblyJ8cpBG0
	 euHbwZzqTPBAw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1A49C840E7;
	Wed,  3 Dec 2025 18:49:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 998EFE4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Dec 2025 18:49:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8BA1F83F06
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Dec 2025 18:49:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mHQ7P9TNk4Ti for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Dec 2025 18:49:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::631; helo=mail-pl1-x631.google.com;
 envelope-from=chaas@riotgames.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7A3BC83EFA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A3BC83EFA
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com
 [IPv6:2607:f8b0:4864:20::631])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7A3BC83EFA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Dec 2025 18:49:14 +0000 (UTC)
Received: by mail-pl1-x631.google.com with SMTP id
 d9443c01a7336-29d7b019e0eso1173775ad.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 03 Dec 2025 10:49:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764787753; x=1765392553;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=yFQGJBbzhKpupl53C9z1XKuSoyNLWu5aQo4vlgaEtbM=;
 b=kvVG1xqNcTg9Npiibp9P8bmvlB/tjY8Fe8Ociptj7L2u8a3tKfTN0CrVZCxlnJ7Mjc
 hXSQwTgGZL0a7b1BGo9L8HBfIS8ufqQUYA6rCvfBrhULX81w6+o6jcBCtpSQEaUJaUl7
 66pjE+7B973xBTmcpIVHAU7av8EhQJF/fgc4T1P/kY0/Qf+LJLYnR1C7+oD5xpJKe3lI
 xVyISudhjP1lxRRbuh63EwzVUiyUhgagsJtbZQ8p14n61XaYpj/ipgIzSIeDU4lOW+D0
 Q3L2Fvz+TUtFBtqayCD5+MnDSDUU3Db+wp8IZTNEW3wk5XPnbtVe9mnnr7YHzjrJ2fPZ
 4A+A==
X-Gm-Message-State: AOJu0YylujGcW/L+vQJmQhhFoniOHed+NyVBGors2YWVomcL7MG4/388
 gYNWMpPJ6aL5pbCfLuaXuy3ZoYoFZkazaTVyQQrreJMdsBjZkw1ptUbsqq5MBUEcIfoGUH6+htU
 j3c3f1UA=
X-Gm-Gg: ASbGnctgByIPvqC2RoEtC5+oeedBzpuwfFvXtdzl6U/IHOZmmYr5woQw26eViAjGdXJ
 jAJbdLopOW8UOgpfmplulNzJPHv37oHmic+tpkSCxGc2bBt1gTUoudyR1Jm+77ZPGogCpvlV9XZ
 tD1Zxa7M9XCBs6LNmXJ0kE2xb2Yutt3itQKKfy1TKVONJLB1+8kXfYdtSyGM7Jvo5RG0x9KwNqp
 2uWsXcDlew8j9PdgNXeY85hVTyOZ7MowpkMLXcLaqy6vs2Yr15sctk4xA4ePTqlOvNb2A72aaxb
 MNjJw4WewB/G3fUklySUuEKAjc+zlIjyo/bv27mJ7NvkjVokstrYsDX+poGBqtEyIgBpFhT7ep/
 ROmCGY9F+9qkz0tqwCqs+a8KMrA3RImlkPl1U92RQ4+vawI9Pe0dh96p1SOkSOToK5GdCiDqImg
 VUuLVqWn57tEuS1XwZLzUzEzdjrVgzgg==
X-Google-Smtp-Source: AGHT+IF0QS6ZWHJV5o8uytQbYFkceTdrQmlMy1LeIEI3sAeXuNW8XJqGTqKqNr+tVC62uQLUlmDzGg==
X-Received: by 2002:a17:902:f712:b0:295:4d62:61a9 with SMTP id
 d9443c01a7336-29d68413f5amr45809885ad.38.1764787753228; 
 Wed, 03 Dec 2025 10:49:13 -0800 (PST)
Received: from fedora-linux-42 ([104.160.130.6])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-29bceb4af8bsm191703995ad.81.2025.12.03.10.49.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Dec 2025 10:49:12 -0800 (PST)
From: Cody Haas <chaas@riotgames.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, kuba@kernel.org,
 pabeni@redhat.com, Cody Haas <chaas@riotgames.com>
Date: Wed,  3 Dec 2025 10:49:08 -0800
Message-ID: <20251203184909.422955-1-chaas@riotgames.com>
X-Mailer: git-send-email 2.51.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=riotgames.com; s=riotgames; t=1764787753; x=1765392553; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=yFQGJBbzhKpupl53C9z1XKuSoyNLWu5aQo4vlgaEtbM=;
 b=BuesQE+Wi1KXgo9rOTcpgIP4mjYI1JTNy3az5by2EpjOS6mAYWUbpqFipPGpA+URL2
 faoPHpNZEN31IW6X4VY4F7Yq8756a4qJHZ49pONBqWlXJu6uCDI92vohDlWizR+foe9j
 6Bq3UdXGptXbgLVXuTbjW/n9W3xGx881TA59Y=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=riotgames.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=riotgames.com header.i=@riotgames.com
 header.a=rsa-sha256 header.s=riotgames header.b=BuesQE+W
Subject: [Intel-wired-lan] [PATCH iwl-next 0/1] ice: Fix persistent failure
 in ice_get_rxfh
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
2.50.0

