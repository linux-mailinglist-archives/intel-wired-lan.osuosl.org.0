Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B86FB6E2713
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Apr 2023 17:33:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5E37081388;
	Fri, 14 Apr 2023 15:33:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5E37081388
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681486382;
	bh=loGMdrjP7ccrVrzapSaVHOi2EvNNGXZdAxY0p4mF47o=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=B3BVK79CWNh9Vq1n2kzRBaneB9O+f64LAAxhvuS+cqoENye+1xTW5sw0kUK4KtidF
	 ChDrWM0n/UMy/78rBD4C+ou+tkZ6vUyvBhDabbwbGlR2+lSgtqjvDx3daLq9fbLqQe
	 1rtjd3dlFyRJCKQVShpf0iltD/d+9uxG/zmCsZRD2jlWAraIrhorZTc+wZGu/xM2fC
	 Q9Q5DEwX3nORQX/zR0Php6RcibIM5jL4++sw3Qsz2sRsRG3Kqsa/mxeZTLacQnK4jH
	 4sLfCrJN5cvsZVvp18RIouQZ/6Uc2NQs3BlLQpALVz5kNSu0PQu2gmeNG+k0/iJP/W
	 nnM0rutvnrpKA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mR1vvrNBT6N4; Fri, 14 Apr 2023 15:32:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BD3788151E;
	Fri, 14 Apr 2023 15:32:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BD3788151E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 39E441BF287
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 15:13:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1F507840A9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 15:13:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1F507840A9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WAaapdiexYVS for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Apr 2023 15:13:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0ED4C840A2
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0ED4C840A2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 15:13:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="344203271"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="344203271"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 08:13:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="666808531"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="666808531"
Received: from p12ill20yoongsia.png.intel.com ([10.88.227.28])
 by orsmga006.jf.intel.com with ESMTP; 13 Apr 2023 08:12:57 -0700
From: Song Yoong Siang <yoong.siang.song@intel.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Vedang Patel <vedang.patel@intel.com>,
 Jithu Joseph <jithu.joseph@intel.com>,
 Andre Guedes <andre.guedes@intel.com>,
 Jesper Dangaard Brouer <brouer@redhat.com>,
 Stanislav Fomichev <sdf@google.com>
Date: Thu, 13 Apr 2023 23:12:22 +0800
Message-Id: <20230413151222.1864307-1-yoong.siang.song@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 14 Apr 2023 15:32:50 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681398794; x=1712934794;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=f6ND7RnB4gbPxv8sBeifXq2wwq96IRhvnSOplOcfMXw=;
 b=iNEXWE4M7FgUyDKwHTObncUlTLY1qAi9fvR7JV1XWBN6Wlj8VYzEWcod
 aFBL2S9giWTcpJQq/EcBtENaAbiP5QpoI9+OlpNUflDey4Ox/cElSxe8p
 +ttK7dRE18U46K5rrRgvbhXqW1lUhnXvoPkKF2mYLQz2CZu+VBMH5MDer
 9R0Pw9DvqWjAlUrUewBDwYMx+vobiRM9TJXLLszk8Ja5rv2inuCez6DrZ
 xQ3Anl0rzGbHUuRTMI2facsVHhQVLwK3Au3W9i3W5dQIQhYeYDen6yBM+
 GZAle0gudyxemZDRli9bFsxu4G09txhDTx1AhmobMFVFStsBlPoRGmbFb
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iNEXWE4M
Subject: [Intel-wired-lan] [PATCH net 1/1] igc: read before write to SRRCTL
 register
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
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org,
 Song Yoong Siang <yoong.siang.song@intel.com>, bpf@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

igc_configure_rx_ring() function will be called as part of XDP program
setup. If Rx hardware timestamp is enabled prio to XDP program setup,
this timestamp enablement will be overwritten when buffer size is
written into SRRCTL register.

Thus, this commit read the register value before write to SRRCTL
register. This commit is tested by using xdp_hw_metadata bpf selftest
tool. The tool enables Rx hardware timestamp and then attach XDP program
to igc driver. It will display hardware timestamp of UDP packet with
port number 9092. Below are detail of test steps and results.

Command on DUT:
  sudo ./xdp_hw_metadata <interface name>

Command on Link Partner:
  echo -n skb | nc -u -q1 <destination IPv4 addr> 9092

Result before this patch:
  skb hwtstamp is not found!

Result after this patch:
  found skb hwtstamp = 1677762212.590696226

Fixes: fc9df2a0b520 ("igc: Enable RX via AF_XDP zero-copy")
Cc: <stable@vger.kernel.org> # 5.14+
Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_base.h | 7 +++++--
 drivers/net/ethernet/intel/igc/igc_main.c | 5 ++++-
 2 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_base.h b/drivers/net/ethernet/intel/igc/igc_base.h
index 7a992befca24..b95007d51d13 100644
--- a/drivers/net/ethernet/intel/igc/igc_base.h
+++ b/drivers/net/ethernet/intel/igc/igc_base.h
@@ -87,8 +87,11 @@ union igc_adv_rx_desc {
 #define IGC_RXDCTL_SWFLUSH		0x04000000 /* Receive Software Flush */
 
 /* SRRCTL bit definitions */
-#define IGC_SRRCTL_BSIZEPKT_SHIFT		10 /* Shift _right_ */
-#define IGC_SRRCTL_BSIZEHDRSIZE_SHIFT		2  /* Shift _left_ */
+#define IGC_SRRCTL_BSIZEPKT_MASK	GENMASK(6, 0)
+#define IGC_SRRCTL_BSIZEPKT_SHIFT	10 /* Shift _right_ */
+#define IGC_SRRCTL_BSIZEHDRSIZE_MASK	GENMASK(13, 8)
+#define IGC_SRRCTL_BSIZEHDRSIZE_SHIFT	2  /* Shift _left_ */
+#define IGC_SRRCTL_DESCTYPE_MASK	GENMASK(27, 25)
 #define IGC_SRRCTL_DESCTYPE_ADV_ONEBUF	0x02000000
 
 #endif /* _IGC_BASE_H */
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 25fc6c65209b..de7b21c2ccd6 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -641,7 +641,10 @@ static void igc_configure_rx_ring(struct igc_adapter *adapter,
 	else
 		buf_size = IGC_RXBUFFER_2048;
 
-	srrctl = IGC_RX_HDR_LEN << IGC_SRRCTL_BSIZEHDRSIZE_SHIFT;
+	srrctl = rd32(IGC_SRRCTL(reg_idx));
+	srrctl &= ~(IGC_SRRCTL_BSIZEPKT_MASK | IGC_SRRCTL_BSIZEHDRSIZE_MASK |
+		  IGC_SRRCTL_DESCTYPE_MASK);
+	srrctl |= IGC_RX_HDR_LEN << IGC_SRRCTL_BSIZEHDRSIZE_SHIFT;
 	srrctl |= buf_size >> IGC_SRRCTL_BSIZEPKT_SHIFT;
 	srrctl |= IGC_SRRCTL_DESCTYPE_ADV_ONEBUF;
 
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
