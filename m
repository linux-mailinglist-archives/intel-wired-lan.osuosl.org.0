Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BA0A7D0DD88
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Jan 2026 22:05:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D8BCB607E5;
	Sat, 10 Jan 2026 21:05:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wqPgnDpL94_y; Sat, 10 Jan 2026 21:05:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 03110607E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768079128;
	bh=lC30p+B2g5PX/MfNZDYtTYpmlqLfqwjvQthF+EF4ADY=;
	h=Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=v8429vZq9zeIQOTyX0ijM077KY1G8UifOiZdMR2VW3W2fPyhvEfREzs8kAdPFJ8DD
	 QUjvnPDaq0Bal+stdG4Us+xyyM82a1yY+dGevdy0Ec5+WivnFqqbYrpRMU7Op89P0n
	 3ZTjUv3nQGh/mDKD910IS1SwR31LtlCOYDxK26uO01pWthwNRdKL861zZP+EW/C6ki
	 +OkvrbRtrHlFstm2FrkhCjMd9Lbv52fdsvYT4sod00RNFKFlRTyZlg1C5+EBLIvtVW
	 caENzkSWfFQ5q1vPS82e4lLWnZ0Bx/IuBPSz4dTpbUgTTHREd7nM9/qcTf06S3r3lK
	 M7+jeGhwQUNww==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 03110607E7;
	Sat, 10 Jan 2026 21:05:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 96F4718D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 21:05:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 72EC360785
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 21:05:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0bV5eUOXlfI4 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Jan 2026 21:05:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::62d; helo=mail-ej1-x62d.google.com;
 envelope-from=jakub@cloudflare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 61289606A9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 61289606A9
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 61289606A9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 21:05:25 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id
 a640c23a62f3a-b8706ce18c0so31152366b.2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 13:05:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768079123; x=1768683923;
 h=cc:to:content-transfer-encoding:mime-version:message-id:date
 :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=lC30p+B2g5PX/MfNZDYtTYpmlqLfqwjvQthF+EF4ADY=;
 b=FZXP7ZdccxhPWAoIqv8BfoSxparTiuM9JG+/HXEX1bQFDiKYJmXBeax/NgMjRtWTpw
 tNPKXERL3SE5hWkd16gZtfhVDrIjoOG6csfHfN8lpNKspMgHQftmsEK5v5APEN6dgcta
 b2gRcKrt2zqPo+xYXUq2ItaYST5wCLQan/c12+LD38EnoP297IvnH0YF6tljjinYwQ/s
 5k79d1Xc6xdmraBPKAECPpLeapqDyFZ5GMJreofVuSne984EbnjiJC/WXvd1/SjhEukh
 OJrwf0mGNX6jJOdse5fy0zSOOdpbHOLBfnIN9p3NdJo9M9Et8OAV7QEqNJ91dvZf4UBS
 1bhg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVEDQC8Eu8Mcp9UW7Aak+yme+JJ7kzCESMAgtdr4nxoQdqb3DgNcOeau0B3jJxiFY6Dcc8PrzkinJHHp8JOX+k=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyX9WcWfg8541r4yGTbJxsPsndrKNnqtbglLdoWXqsJyrSCvaiS
 hrthhaiOu2mpTFSyHwa2sPAd4UO9KGWCBlfcUyz5yvCOJsxJR6gMSBOfvx2aYrCAW08=
X-Gm-Gg: AY/fxX4qfrx/vUgG3x1wDBUdSMUZQWDVPSTEauIVdAgTMvukBkqgoFQERuWXrQ5bGXW
 keuTzZZf8Nz9ryD5M6Pu25DUI3LiG+jdlAta+l97gHmu38IoLJRPIEPysUX2EFNKxVw4WSjYGkA
 B5/jD19/QuCzt0oLIOsoHzF0MvAv05BLITeC76zLuPQQuBYVsVHLMnGsPW1K9FDzoilVTGXBCr+
 KDp+MKWKVWiBKoFonmHo/0bRFBwWW1E5/kfSzjf7a4OEZ1FUbACaitXNJlEraPL5gCIVcqFRV+f
 eduJJaGdgHlKRPBWayw+YaHoKNWjD3WI5UR8nL3u8sFanCfJo+S85vXxNX0V+qraMYXh0EHru9D
 VqcN8koHa93S3V4O2iajzqRnojQQNbiHd391NESu4y+I6jzPNd6kMDIBWV8zFdvuyNgr5WjElC3
 NephkXVAhm+32u7xUvTUXCFOwdy3+rnIexedB8lqV4h/Sv3E7mqQeLtUXt1Vk=
X-Google-Smtp-Source: AGHT+IE4AcfstCcru9GHC8O+sbKkpLiZU/SVJ2RJZTUoj4FwyqUUl6TpJ4rXM8j6vltoVQ5e62sCOg==
X-Received: by 2002:a17:907:9802:b0:b7c:e320:5232 with SMTP id
 a640c23a62f3a-b8444c4ce48mr1225722466b.5.1768079123136; 
 Sat, 10 Jan 2026 13:05:23 -0800 (PST)
Received: from cloudflare.com (79.184.207.118.ipv4.supernova.orange.pl.
 [79.184.207.118]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b870bcd342bsm15151666b.56.2026.01.10.13.05.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 10 Jan 2026 13:05:22 -0800 (PST)
Date: Sat, 10 Jan 2026 22:05:14 +0100
Message-Id: <20260110-skb-meta-fixup-skb_metadata_set-calls-v1-0-1047878ed1b0@cloudflare.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAq/YmkC/x3N0QrCMAyF4VcZuTbQzDLFVxEZcY0anHU0VQZj7
 27m5Qc/5yxgUlQMTs0CRb5q+s4O2jUwPDjfBTW5oQ1tF4gC2vOKL6mMN50/08Z+Y+LKvUnFgcf
 RMCY5HONeInUEvjUV8f7/c4bsWZa5wmVdf8VUy+aBAAAA
X-Change-ID: 20260110-skb-meta-fixup-skb_metadata_set-calls-4de7843e4161
To: netdev@vger.kernel.org
Cc: "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, 
 Michael Chan <michael.chan@broadcom.com>, 
 Pavan Chebbi <pavan.chebbi@broadcom.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>, 
 Tariq Toukan <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>, 
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
 Jesper Dangaard Brouer <hawk@kernel.org>, 
 John Fastabend <john.fastabend@gmail.com>, 
 Stanislav Fomichev <sdf@fomichev.me>, intel-wired-lan@lists.osuosl.org, 
 bpf@vger.kernel.org, kernel-team@cloudflare.com
X-Mailer: b4 0.15-dev-07fe9
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloudflare.com; s=google09082023; t=1768079123; x=1768683923;
 darn=lists.osuosl.org; 
 h=cc:to:content-transfer-encoding:mime-version:message-id:date
 :subject:from:from:to:cc:subject:date:message-id:reply-to;
 bh=lC30p+B2g5PX/MfNZDYtTYpmlqLfqwjvQthF+EF4ADY=;
 b=Lso/3CALxXCqqQ90vhtXGWBufBOfv9TRaqVkkcViGTIfcGwmHnsGfhYHkfCe7IqacK
 lkV3kGdhrTVkcUwaZHR89SzvBF/ZeaVs7aviMOA8gb6tOR7DMUaEocYhhc6B4wPhzVvH
 vx47/9Irrhz57f+aD6lTKb7Avgsff9Z6tMp/VKlNP9heMEOh8njHfOzK935HBqOwghaf
 QBOEyZDE9Dwun1t2GOuGWPnNNaNvmXCakas1cuPaZX0+Oh5tSrBqAp3pXf2r1xFCkOz5
 HewmUlYyySDvL1aHfqOsmZYkco92znP8RZhhHqrqWC4RiIGJPZcO9IOEV+p0MbVw7XoY
 BY3Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=cloudflare.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=cloudflare.com header.i=@cloudflare.com
 header.a=rsa-sha256 header.s=google09082023 header.b=Lso/3CAL
Subject: [Intel-wired-lan] [PATCH net-next 00/10] Call skb_metadata_set when
 skb->data points past metadata
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
From: Jakub Sitnicki via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Jakub Sitnicki <jakub@cloudflare.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series is split out of [1] following discussion with Jakub.

To copy XDP metadata into an skb extension when skb_metadata_set() is
called, we need to locate the metadata contents.

These patches establish a contract with the drivers: skb_metadata_set()
must be called only after skb->data has been advanced past the metadata
area.

[1] https://lore.kernel.org/r/20260107-skb-meta-safeproof-netdevs-rx-only-v3-0-0d461c5e4764@cloudflare.com

Signed-off-by: Jakub Sitnicki <jakub@cloudflare.com>
---
Jakub Sitnicki (10):
      net: Document skb_metadata_set contract with the drivers
      bnxt_en: Call skb_metadata_set when skb->data points past metadata
      i40e: Call skb_metadata_set when skb->data points past metadata
      igb: Call skb_metadata_set when skb->data points past metadata
      igc: Call skb_metadata_set when skb->data points past metadata
      ixgbe: Call skb_metadata_set when skb->data points past metadata
      mlx5e: Call skb_metadata_set when skb->data points past metadata
      veth: Call skb_metadata_set when skb->data points past metadata
      xsk: Call skb_metadata_set when skb->data points past metadata
      xdp: Call skb_metadata_set when skb->data points past metadata

 drivers/net/ethernet/broadcom/bnxt/bnxt.c           | 2 +-
 drivers/net/ethernet/intel/i40e/i40e_xsk.c          | 2 +-
 drivers/net/ethernet/intel/igb/igb_xsk.c            | 2 +-
 drivers/net/ethernet/intel/igc/igc_main.c           | 4 ++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c        | 2 +-
 drivers/net/ethernet/mellanox/mlx5/core/en/xsk/rx.c | 2 +-
 drivers/net/veth.c                                  | 4 ++--
 include/linux/skbuff.h                              | 7 +++++++
 net/core/dev.c                                      | 5 ++++-
 net/core/xdp.c                                      | 2 +-
 10 files changed, 21 insertions(+), 11 deletions(-)

