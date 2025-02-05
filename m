Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF6CA281DA
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Feb 2025 03:36:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4D26D60F1F;
	Wed,  5 Feb 2025 02:36:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IDXkV6CMkC4H; Wed,  5 Feb 2025 02:36:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB24060EF9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738722974;
	bh=lYUk3HgZK/OxuTwUJNJgldgba8YRdBAqpnfxSMP5L4w=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=1ZeycW/+Wm+ZOoJw4d+0CooK3NzENTErDmgZKaH5+Zia/PgPf3y2qvgRCURUxLpns
	 NCldy4E6Vw3eUaNC0dlIlrcJULq297CwB1esGDCeyVZye/ipusmCpJeFdD4XJLfGxB
	 IIlACbgAJZfVp/DIxUCGUnn0i2GjLxfyZVduSIeGU3aGqHbMGDRUyUJ/uE47Gk2uAK
	 09Uvn/FLbNwHHCaTIbbKnSyKmWaMm899muIApk8ULYTQurm8+BtZBzdzKXvwbIbVwg
	 bf8rpbhdVsLbaHuT3ocluHK9udUG4RTSAm5rpblPmYnTVnFc8wQdIXcNZU4bYZJu1j
	 yu2oc4TqE/qsQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AB24060EF9;
	Wed,  5 Feb 2025 02:36:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C3D7212A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 02:36:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B2B4540445
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 02:36:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4Q--KQ0vV05p for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Feb 2025 02:36:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=yoong.siang.song@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7A18340274
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7A18340274
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7A18340274
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 02:36:11 +0000 (UTC)
X-CSE-ConnectionGUID: 3O5sNf3ZRZO7/bPFtg1uhA==
X-CSE-MsgGUID: MQuoR+omTO+FroG5mDwEKw==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="50265596"
X-IronPort-AV: E=Sophos;i="6.13,260,1732608000"; d="scan'208";a="50265596"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 18:36:11 -0800
X-CSE-ConnectionGUID: Y4AIYHQJRZeWzE+Xt9rY5Q==
X-CSE-MsgGUID: 5p4O0Ya+S1ibxn2bhXFbGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,260,1732608000"; d="scan'208";a="111351076"
Received: from p12ill20yoongsia.png.intel.com ([10.88.227.38])
 by fmviesa009.fm.intel.com with ESMTP; 04 Feb 2025 18:36:06 -0800
From: Song Yoong Siang <yoong.siang.song@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Malli C <mallikarjuna.chilakala@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
Date: Wed,  5 Feb 2025 10:36:03 +0800
Message-Id: <20250205023603.798819-1-yoong.siang.song@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738722972; x=1770258972;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HhCIS7TjDEYPBJlyHuTw26lt0WykU+1bGAGU6W+Mqco=;
 b=Rm9M4qjy8Mj7hnjfy+0bfoODWKtGwwDfldO7Vxp9vjXfV4XYA7VIoYm+
 qQWEnDjj6hZOKoTUeX0mwUpqRh24FKo/0aPeA1q10awOl2ZXLEJ3ZPOou
 JbOlvSAMRh4957dD4KmxfR+jJdbIvIVGVQavvbwMoiujJ4KD7zaCQ1PP+
 RjWInE76nxiaL7pI2azuX/iHiwhaBIoTHbGH2BXOxArdkx0H4POrTKiFs
 mmCJFZAT4HEu8irYQEP36JnToLzYAV35dn73Kv36+Uk+1lS8ncjXI2Lv+
 K/XROqtz6MDxjaSi7FZCD7Ulv8uibePUznOi+tZIk7DLJWaIo4iTgl1Jb
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Rm9M4qjy
Subject: [Intel-wired-lan] [PATCH iwl-net v1 1/1] igc: Set buffer type for
 empty frames in igc_init_empty_frame
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

Set the buffer type to IGC_TX_BUFFER_TYPE_SKB for empty frame in the
igc_init_empty_frame function. This ensures that the buffer type is
correctly identified and handled during Tx ring cleanup.

Fixes: db0b124f02ba ("igc: Enhance Qbv scheduling by using first flag bit")
Cc: stable@vger.kernel.org # 6.2+
Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 56a35d58e7a6..7daa7f8f81ca 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -1096,6 +1096,7 @@ static int igc_init_empty_frame(struct igc_ring *ring,
 		return -ENOMEM;
 	}
 
+	buffer->type = IGC_TX_BUFFER_TYPE_SKB;
 	buffer->skb = skb;
 	buffer->protocol = 0;
 	buffer->bytecount = skb->len;
-- 
2.34.1

