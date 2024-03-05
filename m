Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A41E78711C7
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Mar 2024 01:37:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4D0A141511;
	Tue,  5 Mar 2024 00:37:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PGE_zn3I-U5K; Tue,  5 Mar 2024 00:37:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 45C31404F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709599069;
	bh=xTXzCyfHROd5aWzYZqAWuoZc2bzD2o5M85a0rNm+2hA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=EHFqYTLLPL+Pb5XPmyc5rZWMleVnz6/Zo5vIK6lxtRRYS+Vn2IDjzpMvKch3Qhvfi
	 hp2sRXPug6fkoE8gLhLTYxeGnluXS7z/sjdyjQcuPBoljHcu8rB3rLsM3LE1jRbMf8
	 tM4xu3S/As7JstRCbfhIRUlov/J7GtBrL56ruo/aXjpy8HBtT3IHEG9NEUlQMDKjAV
	 0vkxpyi/Wjl6sOWrcdxscRbIXMT79QG/s7lKb63iuckAWeQ7Af6zNmrIRbotl4TCCD
	 3WZ3NCXBRXxPHBvQQzxSPTNlXE9pPvbnPiUAR1Z2lzGu/ZePCMzcPa2ikigTj7Iwmf
	 J6CawwE1Y1AKA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 45C31404F5;
	Tue,  5 Mar 2024 00:37:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0B1511BF955
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 00:37:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E97D54040A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 00:37:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XaHLe17mQ9UC for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Mar 2024 00:37:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=jesse.brandeburg@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E2AEC400E6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E2AEC400E6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E2AEC400E6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 00:37:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="14768002"
X-IronPort-AV: E=Sophos;i="6.06,204,1705392000"; d="scan'208";a="14768002"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 16:37:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,204,1705392000"; 
   d="scan'208";a="9769970"
Received: from jbrandeb-coyote30.jf.intel.com ([10.166.29.19])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 16:37:42 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  4 Mar 2024 16:37:07 -0800
Message-Id: <20240305003707.55507-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709599065; x=1741135065;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=K9bkpzmDfx9tgWYMV1JZSyt1aawAzwpzvfo0ToK8RTc=;
 b=SxNbYLxORiJAd7WQb+NOkaFnMZZGtkeg/J7Nr33mw0PvDcv+Dx73eKK7
 ie1o7ROIWWzBBycscn1xX82Wbk4W6AgkPPSB4h8i8E8dZm16vKF2HihdI
 dyldRKU/9CL99+1Zwa75RemjH/3qQI00jL9623IgvPjLRV6eQsgEf4O5N
 2bd5ZA9vobcNOH7gKJwXfQZWwptcEWhwtsPpw1yfqbJmZ3vI/uojxyBZl
 MewnVv0dGku+422PKSeptj6zfFm2Weg8Jqq5f5viBeqWMeAIMZU1vfK02
 S4w8n3s2V2BLLPmmCNwNJihHB5dcAqORQErcv3LX3hykif1Ux0lLi9s8t
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SxNbYLxO
Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix typo in assignment
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix an obviously incorrect assignment, created with a typo or cut-n-paste
error.

Fixes: 5995ef88e3a8 ("ice: realloc VSI stats arrays")
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 097bf8fd6bf0..fc23dbe302b4 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3192,7 +3192,7 @@ ice_vsi_realloc_stat_arrays(struct ice_vsi *vsi)
 		}
 	}
 
-	tx_ring_stats = vsi_stat->rx_ring_stats;
+	tx_ring_stats = vsi_stat->tx_ring_stats;
 	vsi_stat->tx_ring_stats =
 		krealloc_array(vsi_stat->tx_ring_stats, req_txq,
 			       sizeof(*vsi_stat->tx_ring_stats),

base-commit: 948abb59ebd3892c425165efd8fb2f5954db8de7
-- 
2.39.3

