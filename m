Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CC7F49E139F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Dec 2024 07:58:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9BB7040716;
	Tue,  3 Dec 2024 06:58:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6YvRriOrzSFG; Tue,  3 Dec 2024 06:58:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D1569401FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733209109;
	bh=0t7Bc1+2qws8lxJpne4JvdX55UCtCjWNcTRcccpJMsQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7otpp4Mrmd0EukQLv0TbD1QK15065Zueq1pOdwNyCgxQItQ6Qjl86cwSYyaBWboaF
	 TZJ3qS+QC0xDKs02DqCnXk6uYBTj6I8xSf6u3P7BNrwvxodrGP93JIaEa/Axv/OLkf
	 XwSqizGLWL9kKoIuJnbQUly7PGksenXbZkYmASp0BDYE2fZW47ANuArx/D5oKN/82q
	 oxpCw97hqbfMWoeTx3YZ7saqZK4bGo/jbF8R+rFY5pMwYJNLtsDfEBT5MGpOomzRiH
	 KsCGP0c92b6Hevxsnq6dD9fYh4tBvmvd2PEtH+7lxF446Ls11pM0thZQu8NqCuBj3R
	 lgxmvBB9+Rzfw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D1569401FE;
	Tue,  3 Dec 2024 06:58:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1CB792366
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Dec 2024 06:58:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 16B38404DD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Dec 2024 06:58:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qRAQ1Z0tGfR0 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Dec 2024 06:58:26 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 318B2405C7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 318B2405C7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 318B2405C7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Dec 2024 06:58:26 +0000 (UTC)
X-CSE-ConnectionGUID: jQzrmX8lSX2rhQWIy0d8sg==
X-CSE-MsgGUID: ulBCZhGOS3yZbzt4vzjN2A==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="33330471"
X-IronPort-AV: E=Sophos;i="6.12,204,1728975600"; d="scan'208";a="33330471"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 22:58:26 -0800
X-CSE-ConnectionGUID: IztY6tBRTEGf5kFWe6+OMQ==
X-CSE-MsgGUID: 1xDIO8pCQ9u2o+Z3x3m9UA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,204,1728975600"; d="scan'208";a="93673690"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa010.fm.intel.com with ESMTP; 02 Dec 2024 22:58:22 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  3 Dec 2024 07:58:09 +0100
Message-ID: <20241203065817.13475-2-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20241203065817.13475-1-michal.swiatkowski@linux.intel.com>
References: <20241203065817.13475-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733209106; x=1764745106;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kUYnqLnamd/0s815hFdGqpO272z6ZiKc/d0xfk27it4=;
 b=EIL3f0h7kliw+ESK3/hWKOYyLkJ4mz8l+2jFguCH+XFA04ymj5MORyjF
 iC59gjzQA0gVTlTZQVPQ/A5HGh45FCUdfyWA0t3nhMUoczR9ZhT5n1CvC
 fGxO35qr4ikvJMB3wJPyv2skwJUfj0W4gshqwrynXmGYDPfmD0PLKU5DP
 Sy5xxX6mzj3DzCAhLFLQ2GHGNbac/4dS/MjlkUgFTahV575zkblFCLq98
 lrrJBYYHh/O2vTizJp5/i2M4TT1DWJ/mwXd74kO2p/NS0jXjGWGukCAVU
 7YyBBik3iE+aDe9bt/7Aa01YoTa2c6p75HYnYy+2khXQzjOF1jjIPN+Dw
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EIL3f0h7
Subject: [Intel-wired-lan] [iwl-next v9 1/9] ice: count combined queues
 using Rx/Tx count
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
Cc: himasekharx.reddy.pucha@intel.com, pmenzel@molgen.mpg.de,
 wojciech.drewek@intel.com, marcin.szycik@intel.com, netdev@vger.kernel.org,
 rafal.romanowski@intel.com, konrad.knitter@intel.com,
 pawel.chmielewski@intel.com, horms@kernel.org, David.Laight@ACULAB.COM,
 nex.sw.ncis.nat.hpm.dev@intel.com, pio.raczynski@gmail.com,
 sridhar.samudrala@intel.com, jacob.e.keller@intel.com, jiri@resnulli.us,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Previous implementation assumes that there is 1:1 matching between
vectors and queues. It isn't always true.

Get minimum value from Rx/Tx queues to determine combined queues number.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index b552439fc1f9..c2f53946f1c3 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3818,8 +3818,7 @@ static u32 ice_get_combined_cnt(struct ice_vsi *vsi)
 	ice_for_each_q_vector(vsi, q_idx) {
 		struct ice_q_vector *q_vector = vsi->q_vectors[q_idx];
 
-		if (q_vector->rx.rx_ring && q_vector->tx.tx_ring)
-			combined++;
+		combined += min(q_vector->num_ring_tx, q_vector->num_ring_rx);
 	}
 
 	return combined;
-- 
2.42.0

