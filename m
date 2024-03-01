Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 522DA86E562
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Mar 2024 17:24:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CB7E261761;
	Fri,  1 Mar 2024 16:24:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tIKenkI4pnN1; Fri,  1 Mar 2024 16:24:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 195016174B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709310281;
	bh=VmwqdqfYLNAWSIa9X6gV0SLbuMCABANcMNf8BZMPk/8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xjIpNjFjwqJk3/Z5Wrm3nIu57GWx47B63lcFAg9o8ECmCcUfNbI4Md1KRebzJTSBG
	 /VPSuEZHUiu13B5PzQFdQvbICY0mUoQHJuWUyFV9jviUnlAC1RcyMBEovEqSZS6l6T
	 7FU4IBILsZx/Z+AOWF49NODlz8vsIXHd1Nx6doOxB802l9B0VoDrrUTIFjmAFls0Pt
	 CQdg5lRHwuzEFSEvYvEXcEVtOd+o4CUKBTD8Qkht9ZzOsDRWP1Bltw59KC/aSgflDF
	 gp82ERqEpE5Ofh9/QFpe2QGxAxfDwoC5RpgZhtctSlLxjbAXJDUvYws5vpAhhxcabN
	 VGJxMzFn75lOA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 195016174B;
	Fri,  1 Mar 2024 16:24:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C22D61BF41A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 16:24:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AF8F741EEE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 16:24:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sTtWr4jyITSw for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Mar 2024 16:24:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=yoong.siang.song@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 11D4141EED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 11D4141EED
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 11D4141EED
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 16:24:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11000"; a="7673284"
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; 
   d="scan'208";a="7673284"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 08:24:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; 
   d="scan'208";a="8139571"
Received: from p12ill20yoongsia.png.intel.com ([10.88.227.28])
 by fmviesa007.fm.intel.com with ESMTP; 01 Mar 2024 08:24:30 -0800
From: Song Yoong Siang <yoong.siang.song@intel.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@google.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Florian Bezdeka <florian.bezdeka@siemens.com>,
 Andrii Nakryiko <andrii@kernel.org>, Eduard Zingerman <eddyz87@gmail.com>,
 Mykola Lysenko <mykolal@fb.com>, Martin KaFai Lau <martin.lau@linux.dev>,
 Song Liu <song@kernel.org>, Yonghong Song <yonghong.song@linux.dev>,
 KP Singh <kpsingh@kernel.org>, Hao Luo <haoluo@google.com>,
 Jiri Olsa <jolsa@kernel.org>, Shuah Khan <shuah@kernel.org>
Date: Sat,  2 Mar 2024 00:23:47 +0800
Message-Id: <20240301162348.898619-2-yoong.siang.song@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240301162348.898619-1-yoong.siang.song@intel.com>
References: <20240301162348.898619-1-yoong.siang.song@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709310278; x=1740846278;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eIZMwz94SXNchV9CIz2BNTuvEAHotx8FG/pnszibmd8=;
 b=gsfcyClNsyvfDIUj0udiK+uY+kr7csIxXogSOoZWIwX/Lf8rwNW/e04J
 5MvlyoSQBnciUnbUezwuyZJoSbL3wq+bV8pBm1ITsaOK+/rwsShWDK7gY
 xsmg9Re9A083t0FeL3hMJIdmFWmNnEGfeta31kHlE2ctddmL2RMGqPITZ
 wmS8jY35j8445bx8LZGuUxaJGt6ekDf4TfYKYFMs0t0Iao97JRU1nDH81
 AeyJS4sHxcL5fMyYZmZsPo+o9za/DnkjuJu04qYFVfATD8FGBDSDhpAxB
 VzY/2VWDxW7j8/nAM3xgbHXtDz7II8ChOcdRwmMzTsh0l3//URlT+4X/h
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gsfcyClN
Subject: [Intel-wired-lan] [PATCH iwl-next,
 v2 1/2] selftests/bpf: xdp_hw_metadata reduce sleep interval
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
Cc: xdp-hints@xdp-project.net, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kselftest@vger.kernel.org, bpf@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In current ping-pong design, xdp_hw_metadata will wait until the packet
transmition completely done, then only start to receive the next packet.

The current sleep interval is 10ms, which is unnecessary large. Typically,
a NIC does not need such a long time to transmit a packet. Furthermore,
during this 10ms sleep time, the app is unable to receive incoming packets.

Therefore, this commit reduce sleep interval to 10us, so that
xdp_hw_metadata able to support periodic packets with shorter interval.
10us * 500 = 5ms should be enough for packet transmission and status
retrival.

Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
---
 tools/testing/selftests/bpf/xdp_hw_metadata.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/testing/selftests/bpf/xdp_hw_metadata.c b/tools/testing/selftests/bpf/xdp_hw_metadata.c
index 878d68db0325..bdf5d8180067 100644
--- a/tools/testing/selftests/bpf/xdp_hw_metadata.c
+++ b/tools/testing/selftests/bpf/xdp_hw_metadata.c
@@ -480,7 +480,7 @@ static int verify_metadata(struct xsk *rx_xsk, int rxq, int server_fd, clockid_t
 					for (int j = 0; j < 500; j++) {
 						if (complete_tx(xsk, clock_id))
 							break;
-						usleep(10*1000);
+						usleep(10);
 					}
 				}
 			}
-- 
2.34.1

