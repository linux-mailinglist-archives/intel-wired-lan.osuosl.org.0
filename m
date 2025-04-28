Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9F7A9E7EC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Apr 2025 08:03:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EBA0160B8C;
	Mon, 28 Apr 2025 06:03:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AfHfULhR3hcu; Mon, 28 Apr 2025 06:03:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5BAB560B79
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745820234;
	bh=Qk6uWjLxi8O2H+yge9tsfe37hVj65UiN9YVvWkG0ZwY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cB6xGwjfyOXRjPaP5e6MGbdztCxf5W1hVACnsMcgsAklzD7Tg9G9Ulqbfyc0zbiwc
	 zoG46udD8VJXtrPT8q2t8Ijo6nVqLSXET+JGEujkIeb1wI00k4dnTICyZR0ky4AMBF
	 TWUIcFDjvm6IxgMiqpzLx5RMiFFQBny05Xoh7wJgogsGuDMu6hTUjFmqa/OI8L9XlN
	 ihNcCfdituci6X/lq7m5f71n6f2ernkafHJ0g+e49hdL8c2/iEIckwacHI8o4VDijW
	 zjHbZSOQEi1NHFVPOAXnCFUW1TFnxnvTmSYQFlgcM2yUnBcS9GDLzmzs8GxusTInlY
	 77f3ml6vYMNSg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5BAB560B79;
	Mon, 28 Apr 2025 06:03:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id EE91FC5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 06:03:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E0AE760B79
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 06:03:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dJK5JmIbJrGq for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Apr 2025 06:03:52 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3576360B8C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3576360B8C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3576360B8C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 06:03:52 +0000 (UTC)
X-CSE-ConnectionGUID: C8D19qonQ4aB8Mkgfp/2pA==
X-CSE-MsgGUID: y0H+VeijQ/6i+19x/wR10A==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="51064670"
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="51064670"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2025 23:03:52 -0700
X-CSE-ConnectionGUID: J/lL2KBgTs6w8ezYH0CU9A==
X-CSE-MsgGUID: h/Gmrk5KRauDuJDkVM/2xg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="133340847"
Received: from mohdfai2-ilbpg12-1.png.intel.com ([10.88.227.73])
 by orviesa006.jf.intel.com with ESMTP; 27 Apr 2025 23:03:49 -0700
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
 Chwee-Lin Choong <chwee.lin.choong@intel.com>
Date: Mon, 28 Apr 2025 02:02:25 -0400
Message-Id: <20250428060225.1306986-9-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250428060225.1306986-1-faizal.abdul.rahim@linux.intel.com>
References: <20250428060225.1306986-1-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745820233; x=1777356233;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Id+TWx5/otkd8lgaTSNghybHj9Zco76B3Ud7RehbGmk=;
 b=TEQLkMIEeGDwT2Fn/lIJOPIDrPZ126PiEM14VKNz+hHuqt1IFb0io3dq
 0BV67FFRYhfscrFFaMPd0XtELGFzNpSyGhHvnjhk6kiw6zbmnZVineGE/
 ciM5OBwJWYRG7+PjAtUzbZHXLp5H72iqJhx3h/3fmEoMRqyl8zx4IIA06
 cNwocnaQ+PPwkv5AN001HQeANJJVw2NW2a26kk6cU6UuKzgqAP/bSvFd6
 XKAeog7BxwoTPxrTPD4/Xh9LVLQGDo5v4qR6sDBcktH9dtDE9P2usmeo7
 3uw5Emk+9KmInJdAkO//iDX+fOkcXJQi+Az67wc3jHiWOyiHy2pWgvN20
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TEQLkMIE
Subject: [Intel-wired-lan] [PATCH iwl-next v1 8/8] igc: SW pad preemptible
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
index 6b14b0d165f0..d495aee58601 100644
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

