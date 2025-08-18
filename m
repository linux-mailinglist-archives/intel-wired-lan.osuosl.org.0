Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A94C7B2AC71
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Aug 2025 17:19:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5BB3542797;
	Mon, 18 Aug 2025 15:19:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3z_Q48QEdnW8; Mon, 18 Aug 2025 15:19:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A2B4342790
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755530360;
	bh=6yuSU9QtOrPsASctmh4Lb/blPVMIH5637/TpUeKDT48=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=d/Sbc+8+Jo/S3enkLZQIbw90w6q39J+A/FmYk/cxg92mTpt3XvODsxGb03CHETahK
	 UmJNtb2X8jj+nqDjCDvKj7wNuvHq2/ySyjuQXBCkSkmWMYPMn0Vsyf2/uveCU7Mp85
	 4+lll/mnRDVxBzDzfBLO1yQwxmyxeKCkSm9tXdgRBI1lqjXllYhD1G/P76KlHLC/Qc
	 wIuCPvwWVd0XIqRtJtkOFlUVQSzPu6YM5huey8nkbG7XknDGNzREB903wMSJBPvgSW
	 4wj9j2C8Ku2DDzH87aCYGLd19ETz+ZnlyGjY5sCpB/Wo4agVTGSGNoK8RysCZFetvI
	 nSCyxy8OLQ+qQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A2B4342790;
	Mon, 18 Aug 2025 15:19:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 18BEF75
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 15:19:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F0BAB40346
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 15:19:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DJJgJ7wsmZUe for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Aug 2025 15:19:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=35.83.148.184;
 helo=pdx-out-014.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=318ef9ef4=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 511754008A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 511754008A
Received: from pdx-out-014.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-014.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [35.83.148.184])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 511754008A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 15:19:17 +0000 (UTC)
X-CSE-ConnectionGUID: 0d1gPxN4RMO49u0YWCL96w==
X-CSE-MsgGUID: bXrj//2bTay4wpr6HK24Vw==
X-IronPort-AV: E=Sophos;i="6.16,315,1744070400"; 
   d="scan'208";a="1194597"
Received: from ip-10-5-9-48.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.9.48])
 by internal-pdx-out-014.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Aug 2025 15:19:15 +0000
Received: from EX19MTAUWA001.ant.amazon.com [10.0.38.20:29098]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.45.64:2525]
 with esmtp (Farcaster)
 id fb48a1f8-a8bf-4ec8-b8a9-149eebf8bd5a; Mon, 18 Aug 2025 15:19:15 +0000 (UTC)
X-Farcaster-Flow-ID: fb48a1f8-a8bf-4ec8-b8a9-149eebf8bd5a
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWA001.ant.amazon.com (10.250.64.217) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1544.14;
 Mon, 18 Aug 2025 15:19:15 +0000
Received: from b0be8375a521.amazon.com (10.37.245.11) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.17;
 Mon, 18 Aug 2025 15:19:12 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <kohei.enju@gmail.com>, Kohei Enju <enjuk@amazon.com>
Date: Tue, 19 Aug 2025 00:18:25 +0900
Message-ID: <20250818151902.64979-4-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.245.11]
X-ClientProxiedBy: EX19D033UWC001.ant.amazon.com (10.13.139.218) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1755530358; x=1787066358;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6yuSU9QtOrPsASctmh4Lb/blPVMIH5637/TpUeKDT48=;
 b=EZU1dVjDsPNzGN9yMCjYkbD3S0+RDH9BbFTDJtbA6cyoTSPzdzD9OXfm
 Zz8mkvBgfHQsmr69XL4jg+On4lLGxr7JYw6aDnAxIuc3+y0XVPwdeDLz2
 FgOze9gx25Hvk+EAh/qpKOkw76vPlAKcGjtd5r1wggkRarnc8WyLLd7Ed
 yDZj52bAUS+QkQe512usfUSZ3dyaYFu7yCEpVwypmpNppjXZHOrK90tnc
 eaf64onD8a6SWTJh+lYHOHYVt9UkdQRVl3gXEcVEPoOsOvSh/QzP+NFlY
 SeNFLsd5LdTJckRfG559XGsO2um1eDpRVjfw/Os+T1ZzMBuGpRUftiKW2
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=EZU1dVjD
Subject: [Intel-wired-lan] [PATCH v2 iwl-next 0/2] igbvf: ethtool statistics
 improvements
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

This series contains:
1. Add missing lbtx_packets and lbtx_bytes counters that are available
in hardware but not exposed via ethtool
2. Remove rx_long_byte_count counter that shows the same value as
rx_bytes

Tested on Intel Corporation I350 Gigabit Network Connection.

Changes:
  v1: https://lore.kernel.org/intel-wired-lan/20250813075206.70114-1-enjuk@amazon.com/
  v2:
    - Remove Tested-by: tag
    - Add Reviewed-by: tag
    - s/duplicated/redundant/ in commit message of the 2/2 patch

Kohei Enju (2):
  igbvf: add lbtx_packets and lbtx_bytes to ethtool statistics
  igbvf: remove redundant counter rx_long_byte_count from ethtool
    statistics

 drivers/net/ethernet/intel/igbvf/ethtool.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

-- 
2.48.1

