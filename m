Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CAC5AB618E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 May 2025 06:32:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2FED981096;
	Wed, 14 May 2025 04:32:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2OI5hgaysqHZ; Wed, 14 May 2025 04:32:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9DDBC8110C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747197125;
	bh=NiQa3eoyhKkzQKlq4rOABh3rMe7Mfs+ztxrN/Y7yXQk=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=psWvGNS8AKnfZND10p6WQgVVd5Fn9dc45O6fASB5nF/kCSSlj6BZSbwDs0ScwwpGm
	 zwK+/HwVoH9txCqM3pHNo6DT9PAkjR/VHk7YEewpjrCw9/G8XOBld8cpKvW7LzGSz0
	 rVzplV8cVLGaBTxFesAdvJ6gpOWk+A9r6maVQH6MYRq0mmWYPmpD8wHE/9LFH22RdO
	 ArPpfwLRLalUu7NxGVbag8L6R9J3k/TgmvQ5ciZ4allOoyrtvV8YQpp0DpDHaq+6Je
	 pFjyiaMGzgBJsD5X12KtI6B/UfrY5MerHhU6wrlV1KP8HDM3dJAKQAeRThopr6fvUd
	 iCC0qxCRLWsBA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9DDBC8110C;
	Wed, 14 May 2025 04:32:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2C8E012A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 04:32:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2D30460A59
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 04:32:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n6V9_njJ0kzU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 May 2025 04:32:02 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7821560803
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7821560803
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7821560803
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 04:32:02 +0000 (UTC)
X-CSE-ConnectionGUID: Qhj/z4JdTiuN3JjMuB0eLQ==
X-CSE-MsgGUID: CwuA5cFuS72aO7OXVzBH9Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11432"; a="36699597"
X-IronPort-AV: E=Sophos;i="6.15,287,1739865600"; d="scan'208";a="36699597"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 21:31:41 -0700
X-CSE-ConnectionGUID: E7KPBRBrQEeKE/TbktqJvA==
X-CSE-MsgGUID: s7PFcjVURUm1j9RdIQp0cg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,287,1739865600"; d="scan'208";a="142861962"
Received: from mohdfai2-ilbpg12-1.png.intel.com ([10.88.227.73])
 by orviesa004.jf.intel.com with ESMTP; 13 May 2025 21:31:31 -0700
From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Chwee-Lin Choong <chwee.lin.choong@intel.com>
Date: Wed, 14 May 2025 00:29:45 -0400
Message-Id: <20250514042945.2685273-9-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250514042945.2685273-1-faizal.abdul.rahim@linux.intel.com>
References: <20250514042945.2685273-1-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747197122; x=1778733122;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0fgO+QvVf9+rVnYvZZT700A8z0ZC/9q1mzSMkC20Zdw=;
 b=d4jNRRJPH+Rv6J2EV4g017VLCxqBmKlHcMQrXmjWSaHFj6xvc/h8XcXq
 lhZ/xkxULLoS+n/UoRkxudEhCuq2Aq12CvsZPz8HvI3paeGefKQf51gor
 QT7QvWwZ7iAZftpKKlVqblZz8Yp0s/LYfJQME1ZN7VLQ/VMzDo7lFF426
 7W/aR4BpN99l8tOW+mtekdrUcvJKugI+MVc7INjhbA22tpCIkgYuHhTyw
 G7TEjalnvRnH4eFq+i7dqzlwX4stuFI8AnuaKblP3KGiVgrrRU4I9E9WX
 lszbXS6/BFZ06SfOUZSf3UOOaQ9UztvlKRQ5geWYrnyrwn/PmfXMc7cJw
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=d4jNRRJP
Subject: [Intel-wired-lan] [PATCH iwl-next v2 8/8] igc: SW pad preemptible
 frames for correct mCRC calculation
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

From: Chwee-Lin Choong <chwee.lin.choong@intel.com>

A hardware-padded frame transmitted from the preemptible queue
results in an incorrect mCRC computation by hardware, as the
padding bytes are not included in the mCRC calculation.

To address this, manually pad frames in preemptible queues to a
minimum length of 60 bytes using skb_padto() before transmission.
This ensures that the hardware includes the padding bytes in the
mCRC computation, producing a correct mCRC value.

Signed-off-by: Chwee-Lin Choong <chwee.lin.choong@intel.com>
Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 4d748eca0c6c..509f95651f25 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -1685,6 +1685,15 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
 	first->tx_flags = tx_flags;
 	first->protocol = protocol;
 
+	/* For preemptible queue, manually pad the skb so that HW includes
+	 * padding bytes in mCRC calculation
+	 */
+	if (tx_ring->preemptible && skb->len < ETH_ZLEN) {
+		if (skb_padto(skb, ETH_ZLEN))
+			goto out_drop;
+		skb_put(skb, ETH_ZLEN - skb->len);
+	}
+
 	tso = igc_tso(tx_ring, first, launch_time, first_flag, &hdr_len);
 	if (tso < 0)
 		goto out_drop;
-- 
2.34.1

