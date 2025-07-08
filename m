Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CF9D1AFC539
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Jul 2025 10:16:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 25BB24082B;
	Tue,  8 Jul 2025 08:16:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bV3u4IeZnrmz; Tue,  8 Jul 2025 08:16:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9B2BF4071D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751962582;
	bh=zX0N14y+ivi1tBXRE49xrBFjeTOrZmJtWYI5xIIo6pc=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Wu1spDt9GyHQ4hJ8FNu8M/B6RtAov0LCepN+G+F92HZa9Drtrd44xZ70yfjeVcl2g
	 3oDLorE/HVKmIhlqqgGbdzYc41Z67vBWWLTPSDh1ltL65xKDqZd45Nox3hLJQxVNS9
	 xU7OSzCWm42MBuXM+0RUMrDRbanHYSAYg4EtTAHZE6Zm8XTJEhvw2dCWk05R5jRmX+
	 Qwyev0EYCv1z56vtRfnZQj2VrXRd1d72nbGoyECzpw3UBPtMSlgEP8+hrugJWrbv4G
	 K/eNly/zjCWHxHZOWfrljeWeOzwku16i3olIHgS+LCNoT9SAKHcGUTMqpGJ7UpPar/
	 kaX1fnKjvhpCw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9B2BF4071D;
	Tue,  8 Jul 2025 08:16:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1337815F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 08:16:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ECE6E60BEC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 08:16:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8NEZ7w4zZ6Nn for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Jul 2025 08:16:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::535; helo=mail-ed1-x535.google.com;
 envelope-from=jacek@jacekk.info; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3E85060BC3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3E85060BC3
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com
 [IPv6:2a00:1450:4864:20::535])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3E85060BC3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 08:16:18 +0000 (UTC)
Received: by mail-ed1-x535.google.com with SMTP id
 4fb4d7f45d1cf-60702d77c60so8037427a12.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 08 Jul 2025 01:16:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751962576; x=1752567376;
 h=content-transfer-encoding:content-language:cc:to:subject:user-agent
 :mime-version:date:message-id:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=zX0N14y+ivi1tBXRE49xrBFjeTOrZmJtWYI5xIIo6pc=;
 b=mU22TNNdcxgcCuyuEPHkAYdZLvpqPEpYL8xtczDrTCQNGVzYyRj9nxq8esLoHZ5y37
 z79LZ623CpsqjI58kk8x5NwK5yUdA9qVdDK8LxCAN7IG2RwpVrxlO0BzxESxUZvIEZVg
 K+ev2Qz11EevJu/KUy+/Ey3DY5SQd5wDxfyHxaBHVoK8jgiA3011STobeLNYWklzYm5e
 GpmgaROF8T0u5GvJj/37UEEhSo6Y/j0qbwZ4R4PBtdxgoCYv9x0ooXzL1W4nVwvMyMr7
 7YQIFXGnYXslfs+KWb81+Bsw4Tbv0arb5H9Zei0yNyKv4G9WSI3aSASnX9dYyOvptWVJ
 c7uw==
X-Gm-Message-State: AOJu0YyF8lfWMSb7dnkhiHMagembU473y0nc9/hoKhqvOC3h7yxh2Thm
 MABte7MUDRDEJbDPQ1nCtKhk+jlthS9QpjJQaYv/r9f47QAwbY0N0t1oPC3x8lrYhA==
X-Gm-Gg: ASbGnct8/IHaeX5aYnobqrO7lJIs/gPUaqSMcNGdG02PV3PBMErLIYyDi1IOmNO19Is
 yFeUDWHPQwHZgZJFGVkbvNpRnSuEdNjWOzGJPo7BWrQ2e9kIlDsgkLENuYHiyZcN87/+nZqTvoM
 1qNz7nSeoN6N/Shrzy/zble6LCxZ1/2B7d4Emk81MQLA5j2RO2qCBxzHfm4D2W0EfMR/fB5Vfgb
 FcPbtN4rHxzn0PECDv/E6cfakmtr1eTb6L2Fi/pxbCYe4CcAD+joVVcQzcfoSOr3xttRb94Tmbi
 BR/P080eN5lUT3b9YlIpNwZkwHEqBufS1bfcIgHFJXeJhlsp91iu7f/WGwymL/AU
X-Google-Smtp-Source: AGHT+IEEfsdJuAwx2RBd/D25PHj+3LLnLlD9Rv5k7fwF6VFsK1BsqBstgUYy7xzOJP6DzbbwMbM8CQ==
X-Received: by 2002:a17:907:3f87:b0:ad5:7bc4:84be with SMTP id
 a640c23a62f3a-ae6b0eaf680mr201405766b.52.1751962576253; 
 Tue, 08 Jul 2025 01:16:16 -0700 (PDT)
Received: from [192.168.0.114] ([91.196.212.106])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ae3f6929ab5sm834750566b.46.2025.07.08.01.16.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Jul 2025 01:16:15 -0700 (PDT)
From: Jacek Kowalski <jacek@jacekk.info>
X-Google-Original-From: Jacek Kowalski <Jacek@jacekk.info>
Message-ID: <b4ee0893-6e57-471d-90f4-fe2a7c0a2ada@jacekk.info>
Date: Tue, 8 Jul 2025 10:16:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jacekk.info; s=g2024; t=1751962576; x=1752567376; darn=lists.osuosl.org;
 h=content-transfer-encoding:content-language:cc:to:subject:user-agent
 :mime-version:date:message-id:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=zX0N14y+ivi1tBXRE49xrBFjeTOrZmJtWYI5xIIo6pc=;
 b=BK02nSlHmdfucfYT9xby4MJMROWdAvyWp5ttBhKQ4WHTc7pnoxvcbUwDQFBMzckHyF
 JY6eT+UQW4VSbfN7TZmOPDEau310uyUO87RMRlxdv+xh2kfRWonySVN1qVWjO8pvlyh1
 JTmG/B1vy8m413wcvlKBS33LjyL6fF0iWmL/MYmK2wdjqrL1NDOrbY2VQvfZuA2mQ59b
 l5ES3JJi8PwKBHsR6tcbGmPXQ0gJImuJc0hJt076BUCkMCyG12sGabP0wWBv2xUzZi5B
 UMs4DpawiebaUnYuXRVZYKJz43pwefheJob4Oaw0PYOwbeq9o+231rRZyyjFv3kG6ih8
 DbHA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jacekk.info
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=jacekk.info header.i=@jacekk.info header.a=rsa-sha256
 header.s=g2024 header.b=BK02nSlH
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/5] drop unnecessary constant
 casts to u16
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

As requested by Simon Horman, here's the patch set to drop casts of
constants to u16 in comparisons and subtractions.

Changes are applied across all Intel wired drivers.

No behavioural changes intended.
Compile tested only.

v1 -> v2: drop casts in subtractions as well

Jacek Kowalski (5):
  e1000: drop unnecessary constant casts to u16
  e1000e: drop unnecessary constant casts to u16
  igb: drop unnecessary constant casts to u16
  igc: drop unnecessary constant casts to u16
  ixgbe: drop unnecessary constant casts to u16

 drivers/net/ethernet/intel/e1000/e1000_ethtool.c | 2 +-
 drivers/net/ethernet/intel/e1000/e1000_hw.c      | 4 ++--
 drivers/net/ethernet/intel/e1000/e1000_main.c    | 2 +-
 drivers/net/ethernet/intel/e1000e/ethtool.c      | 2 +-
 drivers/net/ethernet/intel/e1000e/nvm.c          | 4 ++--
 drivers/net/ethernet/intel/igb/e1000_82575.c     | 4 ++--
 drivers/net/ethernet/intel/igb/e1000_i210.c      | 2 +-
 drivers/net/ethernet/intel/igb/e1000_nvm.c       | 4 ++--
 drivers/net/ethernet/intel/igc/igc_i225.c        | 2 +-
 drivers/net/ethernet/intel/igc/igc_nvm.c         | 4 ++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_common.c  | 2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c    | 2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c    | 2 +-
 13 files changed, 18 insertions(+), 18 deletions(-)

-- 
2.47.2

