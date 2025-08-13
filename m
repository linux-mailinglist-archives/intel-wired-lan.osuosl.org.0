Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5253BB2433F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Aug 2025 09:53:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 168EF81771;
	Wed, 13 Aug 2025 07:53:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7grddzfgy0Am; Wed, 13 Aug 2025 07:53:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 644B981780
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755071591;
	bh=xsW2gkaKHutRZdC4N3bM+pd59a4BhzwYQTJta5k2tx4=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Qy2sUrsoNxah5slxp2TCw7kZIdrxlR/S4/qQOL/RqaUBy3QBVHV9OYR7G8QZ4VCNW
	 dhn8MiWWQvRy1NQt9mNBCTknLaenEYle9MnxiJEEROvLymFnXElpMtegQNdpChNlCN
	 O2VSv4jgzQIXcf2XZeenAeZwVWSKpDYF/85XY/txa4DM7L+2gZjnVqEE7T1Zgu5HOD
	 IPoZQZ9XipqD+JyGlrpKBhnC4BSJo3Jc3rnHYJJpTyrEBCbIOqXhbhzjiDpkWw0SGV
	 OM5SGQEyEvQOr6uJBpu1N4386DtzjNlorJp3USHFZhvHt1FuFvcURmmlDBjtftFdFb
	 ygQILTzN6f6UA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 644B981780;
	Wed, 13 Aug 2025 07:53:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id BFF6B1B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 07:53:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B2001400E6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 07:53:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ay2tDS38_wNy for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Aug 2025 07:53:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=35.83.148.184;
 helo=pdx-out-014.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=31388b11e=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 18E9540137
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 18E9540137
Received: from pdx-out-014.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-014.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [35.83.148.184])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 18E9540137
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 07:53:09 +0000 (UTC)
X-CSE-ConnectionGUID: OkofuCaJTiCtcTq87+dEAQ==
X-CSE-MsgGUID: ouDRRQDdTFayBMqx/djIMw==
X-IronPort-AV: E=Sophos;i="6.16,315,1744070400"; 
   d="scan'208";a="988935"
Received: from ip-10-5-12-219.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.12.219])
 by internal-pdx-out-014.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Aug 2025 07:53:06 +0000
Received: from EX19MTAUWB001.ant.amazon.com [10.0.38.20:65328]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.22.75:2525]
 with esmtp (Farcaster)
 id 8e9ae4e8-78a5-4d0e-a086-e6ffcd9c0947; Wed, 13 Aug 2025 07:53:06 +0000 (UTC)
X-Farcaster-Flow-ID: 8e9ae4e8-78a5-4d0e-a086-e6ffcd9c0947
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWB001.ant.amazon.com (10.250.64.248) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1544.14;
 Wed, 13 Aug 2025 07:53:05 +0000
Received: from b0be8375a521.amazon.com (10.37.244.11) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.17;
 Wed, 13 Aug 2025 07:53:03 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <kohei.enju@gmail.com>, Kohei Enju <enjuk@amazon.com>
Date: Wed, 13 Aug 2025 16:50:51 +0900
Message-ID: <20250813075206.70114-3-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250813075206.70114-1-enjuk@amazon.com>
References: <20250813075206.70114-1-enjuk@amazon.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.244.11]
X-ClientProxiedBy: EX19D036UWC001.ant.amazon.com (10.13.139.233) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1755071589; x=1786607589;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xsW2gkaKHutRZdC4N3bM+pd59a4BhzwYQTJta5k2tx4=;
 b=XFSwHDlxb0UGZybxC+1zdkgwXRoKI0EwQObSElHzVN0hL2LRx0h/f+sw
 3IWrk0QT05gMpj6cMtX8RCT4EMHoEqP/VlwMmPeiBtBj7hDXWy11No6/J
 FDKBGgnrJFyH1ZWLUIWhoTpIF89E6nuxuHqabyzJHFIsxrC4onxvrqY5f
 W+eduOUCc8p6a0Yl8O9f3oKUG3Jw1sdlI22RtPkD5q3O3xq9DX9PNBkCy
 9qsvpjIgUpdvf30g4KUDdW67f+3y2zJuyCtgPtLrKI3HBBCA4D1pY2o4d
 +DGY8L8e4KYzlU0HMItmBH1EK0M2Zxlzo0VTLaoCJpG6ItpHzv9tNCu6m
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=amazon.com header.i=@amazon.com
 header.a=rsa-sha256 header.s=amazoncorp2 header.b=XFSwHDlx
Subject: [Intel-wired-lan] [PATCH v1 iwl-next 2/2] igbvf: remove duplicated
 counter rx_long_byte_count from ethtool statistics
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

rx_long_byte_count shows the value of the GORC (Good Octets Received
Count) register. However, the register value is already shown as
rx_bytes and they always show the same value.

Remove rx_long_byte_count as the Intel ethernet driver e1000e did in
commit 0a939912cf9c ("e1000e: cleanup redundant statistics counter").

Tested on Intel Corporation I350 Gigabit Network Connection.

Tested-by: Kohei Enju <enjuk@amazon.com>
Signed-off-by: Kohei Enju <enjuk@amazon.com>
---
 drivers/net/ethernet/intel/igbvf/ethtool.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igbvf/ethtool.c b/drivers/net/ethernet/intel/igbvf/ethtool.c
index c6defc495f13..9c08ebfad804 100644
--- a/drivers/net/ethernet/intel/igbvf/ethtool.c
+++ b/drivers/net/ethernet/intel/igbvf/ethtool.c
@@ -36,7 +36,6 @@ static const struct igbvf_stats igbvf_gstrings_stats[] = {
 	{ "lbtx_bytes", IGBVF_STAT(stats.gotlbc, stats.base_gotlbc) },
 	{ "tx_restart_queue", IGBVF_STAT(restart_queue, zero_base) },
 	{ "tx_timeout_count", IGBVF_STAT(tx_timeout_count, zero_base) },
-	{ "rx_long_byte_count", IGBVF_STAT(stats.gorc, stats.base_gorc) },
 	{ "rx_csum_offload_good", IGBVF_STAT(hw_csum_good, zero_base) },
 	{ "rx_csum_offload_errors", IGBVF_STAT(hw_csum_err, zero_base) },
 	{ "rx_header_split", IGBVF_STAT(rx_hdr_split, zero_base) },
-- 
2.48.1

