Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA636A6C0A
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Mar 2023 13:00:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9D86E6125F;
	Wed,  1 Mar 2023 12:00:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9D86E6125F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677672027;
	bh=oUOkAJApbElKPnzsxmQiqiq8WYwECuAr+CatfBedlIU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=h8qcXP36MUBEHwU3+R3xvxM8bGLZfRxTtyn/crvwHklOQuC4JSJPSFwylhk0Qgj4w
	 N2WlQnSxDQZXdi0EwflfpLEc4AG6bCuqNIXzdjlivdcSsDAnLn1pkUrRZ6HI+2nXkr
	 N550dEJq40h795PFxvPyN+Al826c0iAPp9z/IGRkUXTusCP1GP/YEi4QqXKMIGA01k
	 nJeT5fu8SWhcpUXAIRb+1kGS6M256bO3/3oIY4h6zLQ0poKe+J17yK4aLz0bAEZrXw
	 AyUN1Zsnz9WyJ9Cf8LkcDkKjN59y9l2ohsZRJrGgiFVhMMKTzh4syOeBhimMnGZbrL
	 CrV6TR6unV3OQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WH2M2Cus9jaB; Wed,  1 Mar 2023 12:00:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9943260E96;
	Wed,  1 Mar 2023 12:00:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9943260E96
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1C5081BF5B5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Mar 2023 12:00:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A3C256123A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Mar 2023 12:00:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A3C256123A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gzqT8JSyEijC for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Mar 2023 12:00:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ED96A60FBC
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ED96A60FBC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Mar 2023 12:00:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="331870271"
X-IronPort-AV: E=Sophos;i="5.98,224,1673942400"; d="scan'208";a="331870271"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 04:00:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="743405109"
X-IronPort-AV: E=Sophos;i="5.98,224,1673942400"; d="scan'208";a="743405109"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga004.fm.intel.com with ESMTP; 01 Mar 2023 04:00:11 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 8240636A18;
 Wed,  1 Mar 2023 12:00:10 +0000 (GMT)
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Wed,  1 Mar 2023 12:59:08 +0100
Message-Id: <20230301115908.47995-3-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230301115908.47995-1-aleksander.lobakin@intel.com>
References: <20230301115908.47995-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677672015; x=1709208015;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1BRx1cFZ8aFmlbAEYzeOUIKMH3jxuLSG/wPSL5VXqZs=;
 b=jY148CYHBNCTc1WqC0DJUZP6hAFXhy0qkZEmkl6y9TMWHnAOl3/9emNp
 hqc/ag8cDUyqYo2PxXD0e0tTNQMC7JwUZ63SsOQM0kMMMcwwbknio3N4N
 o2AcmgAkYXm8X+7qNNokNM4zTKS+Dz8Gu1XxdWXKu95e8qRy+h2mXasWG
 nyvPkBAyMK+c0Xp4B9xK4IEEVACFPT3PSWmL7aswS9Y9iY4uP9Mj5pmCr
 /PXamDYAS8kd4KAb9iXma1TFgw+FcIlz8akXWHBO4cUGLbE0Ws3520Yo6
 t+grr4WkJ0YbzknbpyGrkmP73G8zRMjlAdt34t3huZB4gZB/N3WWfggdd
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jY148CYH
Subject: [Intel-wired-lan] [PATCH RESEND net v1 2/2] iavf: fix non-tunneled
 IPv6 UDP packet type and hashing
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
Cc: Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently, IAVF's decode_rx_desc_ptype() correctly reports payload type
of L4 for IPv4 UDP packets and IPv{4,6} TCP, but only L3 for IPv6 UDP.
Originally, i40e, ice and iavf were affected.
Commit 73df8c9e3e3d ("i40e: Correct UDP packet header for non_tunnel-ipv6")
fixed that in i40e, then
commit 638a0c8c8861 ("ice: fix incorrect payload indicator on PTYPE")
fixed that for ice.
IPv6 UDP is L4 obviously. Fix it and make iavf report correct L4 hash
type for such packets, so that the stack won't calculate it on CPU when
needs it.

Fixes: 206812b5fccb ("i40e/i40evf: i40e implementation for skb_set_hash")
Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_common.c b/drivers/net/ethernet/intel/iavf/iavf_common.c
index 16c490965b61..dd11dbbd5551 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_common.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_common.c
@@ -661,7 +661,7 @@ struct iavf_rx_ptype_decoded iavf_ptype_lookup[BIT(8)] = {
 	/* Non Tunneled IPv6 */
 	IAVF_PTT(88, IP, IPV6, FRG, NONE, NONE, NOF, NONE, PAY3),
 	IAVF_PTT(89, IP, IPV6, NOF, NONE, NONE, NOF, NONE, PAY3),
-	IAVF_PTT(90, IP, IPV6, NOF, NONE, NONE, NOF, UDP,  PAY3),
+	IAVF_PTT(90, IP, IPV6, NOF, NONE, NONE, NOF, UDP,  PAY4),
 	IAVF_PTT_UNUSED_ENTRY(91),
 	IAVF_PTT(92, IP, IPV6, NOF, NONE, NONE, NOF, TCP,  PAY4),
 	IAVF_PTT(93, IP, IPV6, NOF, NONE, NONE, NOF, SCTP, PAY4),
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
