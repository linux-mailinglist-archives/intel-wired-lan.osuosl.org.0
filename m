Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A0BA886DA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Apr 2025 17:20:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0830461032;
	Mon, 14 Apr 2025 15:20:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5_Vg_s4f5DIN; Mon, 14 Apr 2025 15:20:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6DAFB60F06
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744644036;
	bh=jrc9Yy1PzgCFjX+NHqHe/gPvbxLEMwfRYZpvhZ/FS0A=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=X5X6RLNVywG82eZh8vUEiaV7gwoI0wcQ7JKhFZ07GuzhMOuDO26+WnEZwbSan3A1S
	 uZhoX8eS2uj3hQxmmSl45KiFJXeQ7EvjUfvsVqz5l2pn0V7dRztPiEt9S3rmnJgUnw
	 17EG2wHqXD7wEVB3DAawDF/i/IOoa/PfcqdIiN4oNHih1ws8SETFOSWoCNAg32DqNI
	 mM0TWHl1B27+zAoIPuio2LMwTexSbJVxtbQeQDmhnIFzFAOOd94nGf0JEXQB/knsY9
	 PG1Doom4kPNN+MlHJ+oAUiC3YvpXyunwim1k7yEBBxu6CptVWPk3PvoOeMQVNFuYmw
	 nb7B5nMWUFM2Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6DAFB60F06;
	Mon, 14 Apr 2025 15:20:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with UTF8SMTP id 2A03A250
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 08:34:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with UTF8SMTP id BB0C881A47
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 08:34:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024)
 with UTF8SMTP id ZLlbdBXzrVQF for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Apr 2025 08:34:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=t-8ch@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A362881F52
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A362881F52
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp1.osuosl.org (Postfix) with UTF8SMTPS id A362881F52
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 08:34:24 +0000 (UTC)
From: =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>
Date: Mon, 14 Apr 2025 10:26:01 +0200
Message-Id: <20250414-restricted-pointers-net-v1-0-12af0ce46cdd@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAJnG/GcC/x2MQQqDUAwFryJZN/C1CqVXKV3Iz2ubTZQkFEG8u
 79dDszMTgFXBN27nRxfDV2sQX/pqH5me4NVGtNQhqmMZWRHpGtNCK+LWsKDDcnzrYpIuWKSnlq
 9Ol66/c8P+gmGLel5HCeLK549cwAAAA==
X-Change-ID: 20250404-restricted-pointers-net-a8cddd03e5d1
To: Jeff Johnson <jjohnson@kernel.org>, 
 Loic Poulain <loic.poulain@linaro.org>, 
 Brian Norris <briannorris@chromium.org>, 
 Francesco Dolcini <francesco@dolcini.it>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>, 
 Tariq Toukan <tariqt@nvidia.com>
Cc: ath10k@lists.infradead.org, linux-kernel@vger.kernel.org, 
 ath11k@lists.infradead.org, ath12k@lists.infradead.org, 
 wcn36xx@lists.infradead.org, linux-wireless@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-rdma@vger.kernel.org, 
 =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744619172; l=2519;
 i=thomas.weissschuh@linutronix.de; s=20240209; h=from:subject:message-id;
 bh=BORzOQMujEQoEZ1/2bV+p8+YHtYSGgUIbSUnDvITbw0=;
 b=nygQqQzI+POOkmd4HUPMbkxcLkdDeVe3FLi1mMvmt2xMpHokr9kq0+dmMGqAVzLbgbGctLw7P
 7VQYQJVB0MyCdd69OEvNE7wWyCtsM12NiJoSol6jf5d2f/1FWxdOYwI
X-Developer-Key: i=thomas.weissschuh@linutronix.de; a=ed25519;
 pk=pfvxvpFUDJV2h2nY0FidLUml22uGLSjByFbM6aqQQws=
X-Mailman-Approved-At: Mon, 14 Apr 2025 15:20:28 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1744619173;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=jrc9Yy1PzgCFjX+NHqHe/gPvbxLEMwfRYZpvhZ/FS0A=;
 b=yk3WhpFdZmssQZ72lhB1qTZyyfyRxUMGb509WQ1XvYBshseihS05xwBznxHhRaTSuvl2/r
 EV94ezp88ycSGWp7iOyTpqrj5t+3wGtxAiaM9vEX47RmKk5P48wS0XMSxxBOdg/4jJqAHD
 iHBl8abWHKqitQ+lC99k0cGXVhaRkjhGljSMANJ78YhV8KbI3RqgpbXkvKd92G5a9GW2nS
 tIBmRwss1Fuv6LjD9Y7xqZj8VGTlEtB6qHwYn6Tlye1uu66CfvxVl6aULoNDAziN+j01pg
 XkPcQInqq/spXCdJv9D13D3LtBdTdeebkK0YlMI2cFrQF3INyTTmpgSTQMASeg==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1744619173;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=jrc9Yy1PzgCFjX+NHqHe/gPvbxLEMwfRYZpvhZ/FS0A=;
 b=ZUTVDh8TwrC2G20/dfmdoIzBLROL3SA9B70xNJai5NOfSK/ZlnlfAJyXQYz/eR/yLSEC1D
 jaRVzn4m4tTolrBQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=yk3WhpFd; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=ZUTVDh8T
Subject: [Intel-wired-lan] [PATCH net-next 0/7] net: Don't use %pK through
 printk
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

In the past %pK was preferable to %p as it would not leak raw pointer
values into the kernel log.
Since commit ad67b74d2469 ("printk: hash addresses printed with %p")
the regular %p has been improved to avoid this issue.
Furthermore, restricted pointers ("%pK") were never meant to be used
through printk(). They can still unintentionally leak raw pointers or
acquire sleeping looks in atomic contexts.

Switch to the regular pointer formatting which is safer and
easier to reason about.
There are still a few users of %pK left, but these use it through seq_file,
for which its usage is safe.

Signed-off-by: Thomas Weißschuh <thomas.weissschuh@linutronix.de>
---
Thomas Weißschuh (7):
      wifi: ath10k: Don't use %pK through printk
      wifi: ath11k: Don't use %pK through printk
      wifi: ath12k: Don't use %pK through printk
      wifi: wcn36xx: Don't use %pK through printk
      wifi: mwifiex: Don't use %pK through printk
      ice: Don't use %pK through printk or tracepoints
      net/mlx5: Don't use %pK through tracepoints

 drivers/net/ethernet/intel/ice/ice_main.c          |  2 +-
 drivers/net/ethernet/intel/ice/ice_trace.h         | 10 +++++-----
 .../mlx5/core/sf/dev/diag/dev_tracepoint.h         |  2 +-
 drivers/net/wireless/ath/ath10k/ahb.c              |  2 +-
 drivers/net/wireless/ath/ath10k/bmi.c              |  6 +++---
 drivers/net/wireless/ath/ath10k/ce.c               |  4 ++--
 drivers/net/wireless/ath/ath10k/core.c             |  4 ++--
 drivers/net/wireless/ath/ath10k/htc.c              |  6 +++---
 drivers/net/wireless/ath/ath10k/htt_rx.c           |  2 +-
 drivers/net/wireless/ath/ath10k/mac.c              | 22 +++++++++++-----------
 drivers/net/wireless/ath/ath10k/pci.c              |  2 +-
 drivers/net/wireless/ath/ath10k/testmode.c         |  4 ++--
 drivers/net/wireless/ath/ath10k/txrx.c             |  2 +-
 drivers/net/wireless/ath/ath10k/usb.c              |  4 ++--
 drivers/net/wireless/ath/ath10k/wmi.c              |  4 ++--
 drivers/net/wireless/ath/ath11k/testmode.c         |  2 +-
 drivers/net/wireless/ath/ath12k/testmode.c         |  4 ++--
 drivers/net/wireless/ath/wcn36xx/testmode.c        |  2 +-
 drivers/net/wireless/marvell/mwifiex/pcie.c        |  2 +-
 19 files changed, 43 insertions(+), 43 deletions(-)
---
base-commit: 8ffd015db85fea3e15a77027fda6c02ced4d2444
change-id: 20250404-restricted-pointers-net-a8cddd03e5d1

Best regards,
-- 
Thomas Weißschuh <thomas.weissschuh@linutronix.de>

