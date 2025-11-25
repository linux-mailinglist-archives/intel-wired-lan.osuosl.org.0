Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 87966C846CA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Nov 2025 11:19:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2339261091;
	Tue, 25 Nov 2025 10:19:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6Be-KsCRUY7G; Tue, 25 Nov 2025 10:19:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5F98C6081E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764065997;
	bh=g05kT9Gmx4BSPfCDDhwHBvTwhk82htkq5Gbuhokl7ss=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=orNr76dlcoBFcPmmKGcBKW+GbP6Ro1eyTDgAuq+tdHW8QEP7RQuaGzuFrN9k+U6v/
	 FbGfwD1y7BiswieyYlb5RBGNw3918kvMbUON3OAH+9BryFxewE0/kaGiKG6XriqVzn
	 U5PKTl1XrPPPhb+XlANxXh4c2/1sfTHuXYbnIlNcMvRQkaHVhfMROhNfy3LhEoszCk
	 AVLxDBsPAGh94oCV7I7cKqR49wQ0QwS0N6I7sACQ7BJkDt6u2quNAUz3ZISPEy4DZR
	 OaJ62BURGf3zvBbpF92rNZYYEl9Pzj21DsbQO4I8+5GJAsUPlX1WNIKPuTMygW10NV
	 2rAlK116MzKSg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F98C6081E;
	Tue, 25 Nov 2025 10:19:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E7F9C359
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:19:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E59AD80F31
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:19:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HM_16U7mNK3V for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Nov 2025 10:19:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.52;
 helo=mail-ot1-f52.google.com; envelope-from=breno.debian@gmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D988880E29
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D988880E29
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com
 [209.85.210.52])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D988880E29
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:19:54 +0000 (UTC)
Received: by mail-ot1-f52.google.com with SMTP id
 46e09a7af769-7c6d3676455so1555043a34.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 02:19:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764065994; x=1764670794;
 h=cc:to:content-transfer-encoding:mime-version:message-id:date
 :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=g05kT9Gmx4BSPfCDDhwHBvTwhk82htkq5Gbuhokl7ss=;
 b=iiLth80MbpX0/An1SSfDgExdMGrRPEPqDOTXaDG/1b2xcKROftqYyXnRmRRWdtOr7m
 EEcwpc5oFvERnhs+TLF2S4dWX5MVaSf42mc93nERWE5cqI4O6QViRWQpOj3LA59dAdPL
 RXc/O70cHyahLQl9CSmytEiuhBRgeADlKeG+Eu9z/RVxslO+7F1YyujmruaJSwVKP9uT
 Yb3ETIDJdlGAtLyb1WAo+DKrR1r+cz1JyKkTO2ptyVfxAF/nQe3rAiMYEZ/cf1MjZFGV
 vfG3+JTPbxEv1sl0Ktwx+B9wTlqND+hmBF5HOq3zpy5/9lzdSzKUtc41qJ8GrJjseWxE
 0cEg==
X-Gm-Message-State: AOJu0Yx/UWFQSF9sY19uSilt7JOjh2yCaal/g7/qfWw+3FMwUsqnrAUE
 YxTKL2UxR6PxpyCbZdyGcSsF5mAiWTkLUkTTK+k2LcMRY5ceFMTrEMba
X-Gm-Gg: ASbGncuj9fS3VHJv2CKqXG2/GxMBL+DTY9oOoN6znQLL4EZpTR8Syv1iSBxhsH/UGr8
 PPHZesfdRMDl1HAUnNKxqCyyilDCC/3l1lpdcuFWWibY9At4eaRxnqH+7F1roV3NC/skKlGmSRP
 wJJ7QxoLmGjBPFnb15ibTadFU3U+qK/Au/CbMzBBiqpI3gfD8JrOLg98ROjN7Ku4i+tmFqyg5uo
 7FCXvgEcEIctZZzdfrKbTOuSjmGhOC+54xYS9dq1tSXr/1KrKlujy1BYKvwibZv+yoWFi/BFvxX
 Bk0sD8qj25xMeBWBWaZsR2/uIcIKy30ddWuChaemvw028A3G7V/E+aqSPztVopAMXY7SseU01IB
 rId5gFvigSo/6nBf5hjCM3cxRM6As1GfGfQSZc2d0JjZbVVhhWd4Ki+x+XeEurCI+xc01YSv3F7
 XOTCsVocnKLMzOGECkYtcHUrY=
X-Google-Smtp-Source: AGHT+IHE4V5NTuOH8bbG/N9yxpgJpQLuSzv999Cg20Cgl2Ybtbyoy0Lt5iA2XiS4xWaVp3UAcyOR0g==
X-Received: by 2002:a05:6830:6f26:b0:7c7:2cff:64f9 with SMTP id
 46e09a7af769-7c7990ae617mr4940120a34.35.1764065993715; 
 Tue, 25 Nov 2025 02:19:53 -0800 (PST)
Received: from localhost ([2a03:2880:10ff:9::])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-7c78d30618bsm6179067a34.5.2025.11.25.02.19.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Nov 2025 02:19:53 -0800 (PST)
From: Breno Leitao <leitao@debian.org>
Date: Tue, 25 Nov 2025 02:19:43 -0800
Message-Id: <20251125-gxring_intel-v2-0-f55cd022d28b@debian.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAL+CJWkC/23NQQqDMBBG4auEf22KCSlGV72HSIk6jQNlLEkQi
 3j3guuuH3zvQKbElNGpA4k2zrwKOmUrhWkJEknzjE7B1vZujHU67oklPlkKvTWZ0LrJeTc2HpX
 CJ9GL94vrIVS00F4wVAoL57Km7/XZzNX/k5vRtfbtSMbPNjTOPWYaOchtTRHDeZ4/h8Dy4bMAA
 AA=
X-Change-ID: 20251124-gxring_intel-e1a94c484b78
To: aleksander.lobakin@intel.com, Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, kernel-team@meta.com, 
 Breno Leitao <leitao@debian.org>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
X-Mailer: b4 0.15-dev-a6db3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2064; i=leitao@debian.org;
 h=from:subject:message-id; bh=MAklqc7o8W4o7BQ9XilDPW96ctceBdYcX5JX7qTSmaI=;
 b=owEBbQKS/ZANAwAIATWjk5/8eHdtAcsmYgBpJYLIaPqouI9ytd/UViXR2Dorx9/9aetyjxiCK
 Qp7jdOgUfeJAjMEAAEIAB0WIQSshTmm6PRnAspKQ5s1o5Of/Hh3bQUCaSWCyAAKCRA1o5Of/Hh3
 bXyeD/9PiSEeVEYV1m7oMxhwLCvTl0K/ZsAcmd0PwNw2d+qzad/RAZ9lhzwLLJfgNVT5HNRdmzK
 ZyLzpV5WJR/CYQ/gzj3cHM4nCUd1mewPG0/YHfKLeG+o9yWRXcrNeYzny4CaGLNI5jRkDFq11tf
 KP5HS7+FIr6SJBuZwg40qZ+M/Xq/iD+K5G+uop45RKvQBQUbrVgZoFWzwKeq+g5Hx+0x8b7uFzl
 SOEX906Y4FyLjU41IwgkB1Ci9km8b/H1VnGnuyPJz+zLRGXgC4t+Qrf40MZwSoI4madc+7KNirx
 cBXsToz0cN/aWMB06YFbnBTWv+OAR59AIVabuvbtQ8t0zDFgp5jlL4g3ZKBm/jCLEGeLg9UWHlH
 YmJ85Rzkck+v4+Hun3zg2a+3SeskcX/JOZLFjZzL/eLWcdTAUjrinJ8s1wLSLQwAlRLIwx6knmf
 Q+ZuNhqz27RM3wbQpNV/CncccIP/sQEpVuHwgmSxhfkbC7D/LXhqbB0CjVRYtEVlXb9vrQnTRBr
 kmUDW/PIc3HSnnQpQbHaxaZrIjSJEjzTloupY9WTjyBqYl+WAB/f1eHe4thzHmRNrD0lc3dMnbd
 TpeBH+zI3loVE8HfBGfMzj1Vkr2I/hntJFPIruBp0lnk2xbImcHHIEoTjsDEmqk185rSlMkGg+A
 tJyhni01PqZGdtQ==
X-Developer-Key: i=leitao@debian.org; a=openpgp;
 fpr=AC8539A6E8F46702CA4A439B35A3939FFC78776D
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=debian.org
Subject: [Intel-wired-lan] [PATCH net-next v2 0/8] net: intel: migrate to
 .get_rx_ring_count() ethtool callback
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

This series migrates Intel network drivers to use the new .get_rx_ring_count()
ethtool callback introduced in commit 84eaf4359c36 ("net: ethtool: add
get_rx_ring_count callback to optimize RX ring queries").

The new callback simplifies the .get_rxnfc() implementation by removing
ETHTOOL_GRXRINGS handling and moving it to a dedicated callback. This provides
a cleaner separation of concerns and aligns these drivers with the modern
ethtool API.

The series updates the following Intel drivers:
  - idpf
  - igb
  - igc
  - ixgbevf
  - fm10k

PS: These changes were compile-tested only.

---
Changes in v2:
- Fixed the kdoc for the new functions (Jakub)
- Fixed a typo in a git summary (Aleksandr Loktionov)
- Appended the SoB in all the patches
- Link to v1: https://patch.msgid.link/20251124-gxring_intel-v1-0-89be18d2a744@debian.org

---
Breno Leitao (8):
      i40e: extract GRXRINGS from .get_rxnfc
      iavf: extract GRXRINGS from .get_rxnfc
      ice: extract GRXRINGS from .get_rxnfc
      idpf: extract GRXRINGS from .get_rxnfc
      igb: extract GRXRINGS from .get_rxnfc
      igc: extract GRXRINGS from .get_rxnfc
      ixgbevf: extract GRXRINGS from .get_rxnfc
      fm10k: extract GRXRINGS from .get_rxnfc

 drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c | 17 +++--------------
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c   | 19 +++++++++++++++----
 drivers/net/ethernet/intel/iavf/iavf_ethtool.c   | 18 ++++++++++++++----
 drivers/net/ethernet/intel/ice/ice_ethtool.c     | 19 +++++++++++++++----
 drivers/net/ethernet/intel/idpf/idpf_ethtool.c   | 23 ++++++++++++++++++++---
 drivers/net/ethernet/intel/igb/igb_ethtool.c     | 12 ++++++++----
 drivers/net/ethernet/intel/igc/igc_ethtool.c     | 11 ++++++++---
 drivers/net/ethernet/intel/ixgbevf/ethtool.c     | 14 +++-----------
 8 files changed, 86 insertions(+), 47 deletions(-)
---
base-commit: e05021a829b834fecbd42b173e55382416571b2c
change-id: 20251124-gxring_intel-e1a94c484b78

Best regards,
--  
Breno Leitao <leitao@debian.org>

