Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E2CBC820E9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Nov 2025 19:19:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E24F610B2;
	Mon, 24 Nov 2025 18:19:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OWdFKYH7cPhS; Mon, 24 Nov 2025 18:19:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 87F23610AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764008353;
	bh=IrBYJv3jpcXtBLif6gwGlufqp80XQnYmUSZ0wjLcnKs=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=tG3ArCz6t63SiJXN38wCH2LlAYOjWr9k/CheG+6qVzXrz5e9F0XK+8sXrk2qtpdjM
	 67FyxFhQTmQWoN/XLOw9tG/26nYEKBH3S9/aw+qyOJzoLJCoYKoPCDVfNWzkm3ui64
	 oyzkxjmLfWE9aK++CsGy20eyGunj8tZcPeGCDwT8pbm4AF+SkHMlvUcp+s4noFJf0i
	 tO01yRkiZV7EKg8MLHGEHwnW8dfkG3opWiyJ2h/Q9wqN+iKiQCStbnDJqQNt8gI5co
	 rKp4kWDybmtcVneXAwVGetyD/m567OCK142rw/r2r5QptW6SUPhqxX0japPvnbteWv
	 U+k/HTDWz906g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 87F23610AC;
	Mon, 24 Nov 2025 18:19:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6587534E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 18:19:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6261A610A5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 18:19:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id StMWu6caCU-a for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Nov 2025 18:19:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.161.49;
 helo=mail-oo1-f49.google.com; envelope-from=breno.debian@gmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A08906103E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A08906103E
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com
 [209.85.161.49])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A08906103E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 18:19:11 +0000 (UTC)
Received: by mail-oo1-f49.google.com with SMTP id
 006d021491bc7-65745a436e8so2399189eaf.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 10:19:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764008350; x=1764613150;
 h=cc:to:content-transfer-encoding:mime-version:message-id:date
 :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=IrBYJv3jpcXtBLif6gwGlufqp80XQnYmUSZ0wjLcnKs=;
 b=WFNS8SE8JYTP07g7K5GBS66d+Ri+Gr2UDZgt5V63wpNrrB+5vdy0hJzVCdT0+7ONZL
 uZDW3rqS4IHZwFpIsSRYTp+tMd9jVot3sNyZsiSpZpPRev/xeOShrmTZQ0Ehoj6ApPLZ
 zfaJvmvg+NMQnBjWDUEW7IPstduRqZ7SbL3KgLHAa8VBcdtixht/jWcOI/aItReQbi9h
 qScdUkSBrSi3hSJ93nu+1e+q1ta9fXEk1dogxzzMJgSQgqGTBGaYoIP1Wk5838XBtQd/
 RG8UNWXQgqc1l5QfQVRskO24vG2O3oGm75Gx4vKekeDh27zAiDuQZetmxlYHkjVzSDZf
 bkBQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCV4HR/DlfZEc2pa/Asa4qLRDqyFwaInyiBu8te+WshWXdSINWY30dnHvtGs7wJoze7+TUkJolfynCtRDMSWtaE=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwtAfc/LWnVtC9x/iOrMQiSn3mx2WFVG8j11hQCfbZJGevw3d++
 no2R/IQw0DHNvcs94/hZgo4VwUALJWZXD4fICuYe9xO3PBAd8fOw9Xah
X-Gm-Gg: ASbGncusxpmPMxrkM4AWui9VYJimRSqOgUjUJRfSrIhqwkuLLTrCD82xYqZ7uS8Z9l0
 amQrx5qvj7hdCI5hAoqQ94UV5MDPtzjBMomL/84XIMX/J1XURHhtUIjVCJJXGdNMOraaHvjo68s
 +tezP12TD+SGN4xcnyjyGQGo1S6gfl/W6wX1K3aWyoDQvGwcyJcAjWX1WsauCajE+qarIEAMf/Y
 YacR3HowW1ho3WHWQJ9JeIcinH3OVqjV1bPl3PI7QuQJZSviSh/9XqPPtNZLcqGuvnNf/QaT30u
 afBgtEEok+tQhpiTwtS5Cxi2LM9+F2HzYvnI2pVok+O6cnjgPfj7imTVgtxpOvsmvLKcp7cahbD
 uEkFTRdEba64KYYxDdB0JnPdi4D+kCwP1KCOScZpSoU8731fcwiUKh80r1ekSjYRCApv0bB902W
 6M2Mxavg0M3Uhtu4RlJwXgyQk=
X-Google-Smtp-Source: AGHT+IHN2guu0lOJRAchvtzZtXVImuKk1r8c5bUrPHuOn465etORV5ArmjggyAzYO0W8Q8OTyoelgg==
X-Received: by 2002:a05:6820:c307:20b0:638:3df8:c802 with SMTP id
 006d021491bc7-6579253dda5mr3493925eaf.5.1764008350405; 
 Mon, 24 Nov 2025 10:19:10 -0800 (PST)
Received: from localhost ([2a03:2880:10ff:3::])
 by smtp.gmail.com with ESMTPSA id
 006d021491bc7-65782a38448sm3744154eaf.1.2025.11.24.10.19.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Nov 2025 10:19:09 -0800 (PST)
From: Breno Leitao <leitao@debian.org>
Date: Mon, 24 Nov 2025 10:19:04 -0800
Message-Id: <20251124-gxring_intel-v1-0-89be18d2a744@debian.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJihJGkC/x3MUQrCMBAFwKss77sBE1KsuYqI1PqMC7JKEkqg9
 O5C5wCzobIoK5JsKFy16teQxA+C5T1bptMnkiCcwuh9iC73opbvao0fRz9f4hKn+DhPGAS/wpf
 2o7vC2JyxN9z2/Q9J/rrXaAAAAA==
X-Change-ID: 20251124-gxring_intel-e1a94c484b78
To: aleksander.lobakin@intel.com, Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Cc: michal.swiatkowski@linux.intel.com, michal.kubiak@intel.com, 
 maciej.fijalkowski@intel.com, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, kernel-team@meta.com, 
 Breno Leitao <leitao@debian.org>
X-Mailer: b4 0.15-dev-a6db3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1808; i=leitao@debian.org;
 h=from:subject:message-id; bh=DQb/k2j72kq3h6DefjrDlkyB8NhxV1RHIqAAE20HbAw=;
 b=owEBbQKS/ZANAwAIATWjk5/8eHdtAcsmYgBpJKGcss5h66lWxzY/HzxdBVjCPRVyagLYFOqiR
 zR9KyrwA3mJAjMEAAEIAB0WIQSshTmm6PRnAspKQ5s1o5Of/Hh3bQUCaSShnAAKCRA1o5Of/Hh3
 bdWgD/9JmS+66OvWT6Zd4MHRTn9lgAAgOOgDJrBSJIvkn4dOS+Y2rm5z34h2DG2HxQTxnOWYSn6
 YKQn1uYrJ33e+cLLtvpSp1nq3IZ4KpcZziV6zXSb2sBHP/PuOlxcS/YvZ9V7W0mAhOl61RXXhGT
 tP5nkaQ7Z+3JKZAp/7HqSj+heRsuGRCdOOzRhvpy1vNUFTg+F+uk+6dFxB1fEnmoDnD44jVp68z
 TSGjqW9rbCK7mGFkox6mvc6Shl/0Sy5ldCRqt3CfrheqgmLRsUDfnG+tpgKYG53XHC07qQl1upS
 CSwOU5b5Lpb+WQTBqxq7jf/uWbg5JjYEUmp+dFb72AUEy+iVKeqipFe8xWIYxFnEFzzB+xRyRqt
 BBiLSjnDQOOI34oux2c0hF/tVKyWrZcfgxfRHV+e6n8UsRvwinmheXMtFiLebogsCx7ybxtSO40
 7994JL+AVGMKnajwBFpXIjr08mRyJE5UeR09PzuK7iYQatmKlJsBgywpiEkR02KfG9C3FOuAq6L
 r7zStRwaKJYTx2WzxlDRxJjI9Hgt1flz5xis6dgCEjc/19weGOmq4aTF7dwkPMGiMkk2dFe16zw
 Z5OCO0tZ3nYjPGumTYv73ap1wEIj0vWYTMF3If4HJ1MTm4ZRTCWp5XEIy7oPHBS6VcWjWXkQWvu
 VtY9n2v0FfY9vkw==
X-Developer-Key: i=leitao@debian.org; a=openpgp;
 fpr=AC8539A6E8F46702CA4A439B35A3939FFC78776D
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=debian.org
Subject: [Intel-wired-lan] [PATCH net-next 0/8] net: intel: migrate to
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

