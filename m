Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A78A86F404
	for <lists+intel-wired-lan@lfdr.de>; Sun,  3 Mar 2024 09:33:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 002D2831FB;
	Sun,  3 Mar 2024 08:33:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0rxSULnxycFg; Sun,  3 Mar 2024 08:33:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 23F8B8276E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709454782;
	bh=itaI91wisnjw/oyI7C1uWnGbyQZtJQnFpyk117k4zF0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BTOiYctJSM0SO5AWiyOfeG6SXcssiVgnhI9adwdoUWZ+7O1SlyDiBy0y/2I+wZjr/
	 yVQYaZgPu3EWnJ44Q8H8kDp6RN5zy8NQ+532dO3y6dcxTRGuSo2i5VrogTUO1+rbLJ
	 OYn82XQvjcJiaIglmuayhhAvjgChVqchM9NxIkcYSEfyFa7UlmdAqD6/+Zplcnpixh
	 mg9DB1f2Yb++bjAm73ZG7Xg2yk65/lV4kpeirBbdKxNr/1HdQLHv24rpCYj4DIkUl4
	 V+rryvb1VE7KGT/mTqdIeJDuLTKZzL0Ncl8Z3gCLs5qe1nQ9bLSNFNjgo5IDmAaH5d
	 G6gQO5trqq3Nw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 23F8B8276E;
	Sun,  3 Mar 2024 08:33:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 08D871BF38B
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Mar 2024 08:33:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EA9D9410A2
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Mar 2024 08:32:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZbUskDXMBHEY for <intel-wired-lan@lists.osuosl.org>;
 Sun,  3 Mar 2024 08:32:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=yoong.siang.song@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4614541061
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4614541061
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4614541061
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Mar 2024 08:32:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11001"; a="7769301"
X-IronPort-AV: E=Sophos;i="6.06,200,1705392000"; 
   d="scan'208";a="7769301"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2024 00:33:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,200,1705392000"; d="scan'208";a="13357189"
Received: from p12ill20yoongsia.png.intel.com ([10.88.227.28])
 by orviesa005.jf.intel.com with ESMTP; 03 Mar 2024 00:32:51 -0800
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
Date: Sun,  3 Mar 2024 16:32:24 +0800
Message-Id: <20240303083225.1184165-2-yoong.siang.song@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240303083225.1184165-1-yoong.siang.song@intel.com>
References: <20240303083225.1184165-1-yoong.siang.song@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709454781; x=1740990781;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=a9Icqs4XaEB3VNC9uusOctcAw+EqQqaKssugc4WBFfg=;
 b=YV/uARH0MWswXqyHXzA7UOL046Ds+cx/OmnpjskvrvXfWKyMWtKGGyof
 PZBA0Vr3lPoAm482fV4fQlSFhjRTW3+YR/eRU+Khi7K91ZTEfR/VtQaBX
 s3zoulglSrVpxcvKyb/PqbWgk7jiIsqBrac27TfWDNLidXM9smy/LuHqo
 yu98JNK++vp6rT/wlrx8tDc0+NRosGmKPl1zBIK7vpQ1Kfsz9IOkJ+0R3
 BvZmrpiy1+Hh/ev2NuGFOgfrVIkbiK26rZVr6MM7bZcsv6AQp9quAxKNv
 ID7u0qI4j1x8tFKq86U6j/AhCIXnJvw0yqSDoA/PGKV4prE/+MarZxl1i
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YV/uARH0
Subject: [Intel-wired-lan] [PATCH iwl-next,
 v3 1/2] selftests/bpf: xdp_hw_metadata reduce sleep interval
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
Acked-by: John Fastabend <john.fastabend@gmail.com>
Acked-by: Stanislav Fomichev <sdf@google.com>
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

