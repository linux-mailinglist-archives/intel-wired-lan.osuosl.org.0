Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3F3AD77D1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Jun 2025 18:16:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 87B284089D;
	Thu, 12 Jun 2025 16:16:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5pqAiktdQ7Zl; Thu, 12 Jun 2025 16:16:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0365E4089F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749745013;
	bh=PwA1gK3ywNpEqJYR5IfEz0DnydqoK8nP+fxiaxpfICE=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=G7SylaKmQuYJQKylq4WGlSdPMXz5dKkCj4lU/qsqW20foYDr2cQ4TT7vc7RBXKGDd
	 /gxDh7HOn6I453ozHd5IVxYy/jm9Fd1Y9Z3wK7b6kB+NQWojKVQnBL2OgQhPGRtZF2
	 uKXYzw9HPap1I2uVpQgfRR256ZBM6EMX+VCs6aXrFcDFZ+6H6n/IdfxPco5H3jB5Fo
	 0lduTR3OmIuSln1ezHRW3t/KIBG0hqpgNkFeCoBCQi86oZlW1CeiFsT4oNfl/mZjIt
	 bxtJn2s+BJps9SwMcL1aP/st8oYU5l+HL3jOVpPsyg+AkeMRPWFpkrOZNEuLHemGQX
	 VriHhmjlz79RA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0365E4089F;
	Thu, 12 Jun 2025 16:16:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 62E761BD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 16:16:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5478540891
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 16:16:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7RQW02_7Y_SN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Jun 2025 16:16:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.119.213.152;
 helo=smtp-fw-52003.amazon.com; envelope-from=prvs=251035ea3=enjuk@amazon.co.jp;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8EADA40894
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8EADA40894
Received: from smtp-fw-52003.amazon.com (smtp-fw-52003.amazon.com
 [52.119.213.152])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8EADA40894
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 16:16:50 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="6.16,231,1744070400"; d="scan'208";a="103514933"
Received: from iad12-co-svc-p1-lb1-vlan3.amazon.com (HELO
 smtpout.prod.us-west-2.prod.farcaster.email.amazon.dev) ([10.43.8.6])
 by smtp-border-fw-52003.iad7.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Jun 2025 16:16:48 +0000
Received: from EX19MTAUWB001.ant.amazon.com [10.0.38.20:11930]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.20.42:2525]
 with esmtp (Farcaster)
 id e9fa0be0-c8a7-44d3-b95f-f3e7bfff92f5; Thu, 12 Jun 2025 16:16:46 +0000 (UTC)
X-Farcaster-Flow-ID: e9fa0be0-c8a7-44d3-b95f-f3e7bfff92f5
Received: from EX19D003ANC003.ant.amazon.com (10.37.240.197) by
 EX19MTAUWB001.ant.amazon.com (10.250.64.248) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1544.14;
 Thu, 12 Jun 2025 16:16:44 +0000
Received: from b0be8375a521.amazon.com (10.37.245.11) by
 EX19D003ANC003.ant.amazon.com (10.37.240.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1544.14;
 Thu, 12 Jun 2025 16:16:40 +0000
From: Kohei Enju <enjuk@amazon.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Kohei Enju <kohei.enju@gmail.com>, Kohei Enju
 <enjuk@amazon.com>
Date: Fri, 13 Jun 2025 01:16:26 +0900
Message-ID: <20250612161630.67851-2-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.245.11]
X-ClientProxiedBy: EX19D040UWA001.ant.amazon.com (10.13.139.22) To
 EX19D003ANC003.ant.amazon.com (10.37.240.197)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1749745011; x=1781281011;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PwA1gK3ywNpEqJYR5IfEz0DnydqoK8nP+fxiaxpfICE=;
 b=bHHBK51lSlU0OkRbiPuIK72Fg56Ex5ZGURy9fj1/MQNURXMVF6peZ0xN
 +eqCMuWeQgYmF4lYTuW7ZP6BoaOe3IzCotaASOtwzoT62VvFE7luoixEt
 sEgPzUlb3RTGUD9PDtslUHtFzQTGagoMMxsWXQBIYjAL4pn0nRPNddVvb
 GluGUp5wDrEvrd2wTjtOZE10kho/N5I3gHLg0rpMaPl8bOC+kYXSejRLH
 gno2i7/eV7VA/PVFEYXqJ7Alm6ldyrgucJBPsFqBWP4A/KAFNKFRPlITA
 3U4ht1luxStao20Nx6FCEhvoVrkLh0YVvvdWopK97NYj917pFbEGsEzgQ
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=bHHBK51l
Subject: [Intel-wired-lan] [PATCH iwl-next v1] igbvf: add tx_timeout_count
 to ethtool statistics
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

Add `tx_timeout_count` to ethtool statistics to provide visibility into
transmit timeout events, bringing igbvf in line with other Intel
ethernet drivers.

Currently `tx_timeout_count` is incremented in igbvf_watchdog_task() and
igbvf_tx_timeout() but is not exposed to userspace nor used elsewhere in
the driver.

Before:
  # ethtool -S ens5 | grep tx
       tx_packets: 43
       tx_bytes: 4408
       tx_restart_queue: 0

After:
  # ethtool -S ens5 | grep tx
       tx_packets: 41
       tx_bytes: 4241
       tx_restart_queue: 0
       tx_timeout_count: 0

Tested-by: Kohei Enju <enjuk@amazon.com>
Signed-off-by: Kohei Enju <enjuk@amazon.com>
---
 drivers/net/ethernet/intel/igbvf/ethtool.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/igbvf/ethtool.c b/drivers/net/ethernet/intel/igbvf/ethtool.c
index 83b97989a6bd..773895c663fd 100644
--- a/drivers/net/ethernet/intel/igbvf/ethtool.c
+++ b/drivers/net/ethernet/intel/igbvf/ethtool.c
@@ -33,6 +33,7 @@ static const struct igbvf_stats igbvf_gstrings_stats[] = {
 	{ "lbrx_bytes", IGBVF_STAT(stats.gorlbc, stats.base_gorlbc) },
 	{ "lbrx_packets", IGBVF_STAT(stats.gprlbc, stats.base_gprlbc) },
 	{ "tx_restart_queue", IGBVF_STAT(restart_queue, zero_base) },
+	{ "tx_timeout_count", IGBVF_STAT(tx_timeout_count, zero_base) },
 	{ "rx_long_byte_count", IGBVF_STAT(stats.gorc, stats.base_gorc) },
 	{ "rx_csum_offload_good", IGBVF_STAT(hw_csum_good, zero_base) },
 	{ "rx_csum_offload_errors", IGBVF_STAT(hw_csum_err, zero_base) },
-- 
2.49.0

