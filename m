Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D35A3173B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Feb 2025 22:07:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A632740613;
	Tue, 11 Feb 2025 21:07:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O4BIC4AKMtlp; Tue, 11 Feb 2025 21:07:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D3C9340551
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739308049;
	bh=joBYxA9AdYPCWbQmTeCRApEQxVetawwEjNWu1mKrVYw=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rTZvwiI8b+6FoYWXuKO3GU3ggZum6Mb2CWFodJKBsvUk8v2UeBENerHN4jAqbQpYP
	 JaZaCZAXDCTeTr4cqU7fKTfHni5P5tgD1I4ZGznAl+S3mCP15wT1JnLTQ3Ym/dHl1h
	 7G598DiUdcDTosPhqsdl7GXgD610XcYSO6Qobh6rV2s3LIb74Jy03orXAZCnTYHROM
	 EUiMYZX10DZbX1Gw5eWfVHyVxsf+lc4LBBUk6mO00U2OM0qzk8yXXbmg2QDpbWSrir
	 9ae8MhuBfpYqgONvP/YGn5ZFurAD7FBnDVQJVXpxNACv73okAvJtEHV5JwDlww+z3u
	 31L/EGE88dr7A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D3C9340551;
	Tue, 11 Feb 2025 21:07:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7CB4C6C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 21:07:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6702E40402
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 21:07:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lIf9KLCTOkT1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Feb 2025 21:07:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CFF5B40511
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CFF5B40511
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CFF5B40511
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 21:07:25 +0000 (UTC)
X-CSE-ConnectionGUID: /7ssUvEXRU+PhzK4DXneGg==
X-CSE-MsgGUID: Cnn6e03hT+iDWxQ/2t6VNA==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="51339603"
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="51339603"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 13:07:25 -0800
X-CSE-ConnectionGUID: dywcXyhHS92M+IZjIoEe3w==
X-CSE-MsgGUID: /mWha7aXSiCz6ZUr9kBFLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116713235"
Received: from lstrano-mobl6.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.108.7])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 13:07:18 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, horms@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jdamato@fastly.com, shayd@nvidia.com, akpm@linux-foundation.org,
 shayagr@amazon.com, kalesh-anakkur.purayil@broadcom.com,
 pavan.chebbi@broadcom.com, Ahmed Zaki <ahmed.zaki@intel.com>
Date: Tue, 11 Feb 2025 14:06:52 -0700
Message-ID: <20250211210657.428439-2-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250211210657.428439-1-ahmed.zaki@intel.com>
References: <20250211210657.428439-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739308046; x=1770844046;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=u7ZXvh3AZnI7NZucsGOvY2jvV+xhRphXyYjNuxXfBrw=;
 b=bOALd53WKFrb7OXsLIGJjUgr4nbqJ2saQhKv/wu00o9dRPkmXE8D8zVD
 AXOtQvbmfHsm9qg6PcxqkcV+WkLkCo1R16CLsJDaMo4ghV/qxnKWdRxVq
 mLJ9p8wZSLr3C7qJWuHrDNtR9SqTstITT6Nde9wLC3gpRmYgsIkdRH8R5
 W3gLSDkFAG/KnD0xMY7TdWdBndSXaTE1CpIveGJTy3TFFLzupxGi9qYs5
 c4HOAKtcO/BDM+roWch0U6sFmVqI25P4a6MHRVT0sVYy8q2yuJ7nCsx/y
 +0A6YH0mPgKQ8jomFyFHp95JMGA+U3kww94L91/k4v0wRkc4/TLYB91+g
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bOALd53W
Subject: [Intel-wired-lan] [PATCH net-next v8 1/6] ice: clear NAPI's IRQ
 numbers in ice_vsi_clear_napi_queues()
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

We set the NAPI's IRQ number in ice_vsi_set_napi_queues(). Clear the
NAPI's IRQ in ice_vsi_clear_napi_queues().

Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 16c419809849..b2467dc17681 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2766,11 +2766,18 @@ void ice_vsi_set_napi_queues(struct ice_vsi *vsi)
 void ice_vsi_clear_napi_queues(struct ice_vsi *vsi)
 {
 	struct net_device *netdev = vsi->netdev;
-	int q_idx;
+	int q_idx, v_idx;
 
 	if (!netdev)
 		return;
 
+	/* Clear the NAPI's interrupt number */
+	ice_for_each_q_vector(vsi, v_idx) {
+		struct ice_q_vector *q_vector = vsi->q_vectors[v_idx];
+
+		netif_napi_set_irq(&q_vector->napi, -1);
+	}
+
 	ice_for_each_txq(vsi, q_idx)
 		netif_queue_set_napi(netdev, q_idx, NETDEV_QUEUE_TYPE_TX, NULL);
 
-- 
2.43.0

