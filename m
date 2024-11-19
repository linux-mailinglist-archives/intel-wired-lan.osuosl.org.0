Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5234D9D2661
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Nov 2024 14:06:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9843E6F63C;
	Tue, 19 Nov 2024 13:06:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wxOFeLna7a-0; Tue, 19 Nov 2024 13:06:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F19806160A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732021593;
	bh=fz0uPjyIVN1kBjmHGNZ/SIoaGXNd3FPFEvBETeBiuz0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=bFrXALQnCFekWgBXk06dInFHuUDDwOEOmUITWl3CWbnb03zPIVUfxyKsKct5gsjcP
	 mzHPF8h109ImzZLdAfCvxewTSevlyhZl4SzSDOMRdI0iDBqt4+OFfzZFGkZE/mKK+D
	 dbr6q5NRGDWIh2NHSBQpXCE32GdJKh5T1FYz7BK57xPQocPHd7b2lbcpSjXlNVThdc
	 Ba7LB130z5brwzky6/eUoYuGJ4hQD8tF47ipjqfKWlOER0Mh/IHerb60N97AQVN4Wf
	 VE4+zzLgfCmPzwqXHhcD2dLsSjzF90xo3O/rwekdAb5wLkjBuLj6Hkx6MFRuRGTlAe
	 aMJp2m7ieIhtA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id F19806160A;
	Tue, 19 Nov 2024 13:06:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 144C427EB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2024 13:06:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 01AE360BA8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2024 13:06:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JN1XBdJs38xA for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Nov 2024 13:06:30 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2894260B46
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2894260B46
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2894260B46
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2024 13:06:29 +0000 (UTC)
X-CSE-ConnectionGUID: kn991X7+RJa55DsQMSJ7Hg==
X-CSE-MsgGUID: 5cnom1GkStyvi31oV01LaQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="32079337"
X-IronPort-AV: E=Sophos;i="6.12,166,1728975600"; d="scan'208";a="32079337"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2024 05:06:23 -0800
X-CSE-ConnectionGUID: uY19qBjARq+CPLeORd7DPA==
X-CSE-MsgGUID: 5wjo9gUwQVSkcjYH1Qw7vQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,166,1728975600"; d="scan'208";a="89711994"
Received: from enterprise.igk.intel.com ([10.102.20.175])
 by fmviesa008.fm.intel.com with ESMTP; 19 Nov 2024 05:06:21 -0800
From: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Tue, 19 Nov 2024 13:33:59 +0100
Message-Id: <20241119123358.2066324-1-martyna.szapar-mudlaw@linux.intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732021591; x=1763557591;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XeIUaCt66h1ujavpSVi7D1RoD19WLqwJkOR4t8krfes=;
 b=Ks9OI/OxKYWVq/W1tFIrMzj18/nRlitW5Zv9nQM5nWJPKKubuL9aJ4e2
 sFbciMnSKJ/82xodRI2e+onju0QjJzCJrSAMFhaFqm6EJPjCyVFfek+Yy
 YLcmqyugnOtlS48phgL5Ka18Su51/db2pGhGOpTlL6r+d7X9Nxw2yIvl1
 pH0ZifgUUm/JwWuaIa/KYpom8QT4Zp9NCGcv1FF36BwlXVren568UvwlI
 tVWN9AA++2NOXgs9DkVwBgxXOVLFqtjJiCXEjNx5sIWil7UNeEiXhkycN
 AWNMg/kd2IJ12Ptth3+Bvrxg8SdFzXRLtxnBIYNXchcMZGyzoCKgvweRl
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Ks9OI/Ox
Subject: [Intel-wired-lan] [PATCH iwl-next] ixgbe: Enable XDP support when
 SRIOV is enabled
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

Remove the check that prevents XDP support when SRIOV is enabled.
There is no reason to completely forbid the user from using XDP
with SRIOV.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 459a539cf8db..a07e28107a42 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -10637,9 +10637,6 @@ static int ixgbe_xdp_setup(struct net_device *dev, struct bpf_prog *prog)
 	bool need_reset;
 	int num_queues;
 
-	if (adapter->flags & IXGBE_FLAG_SRIOV_ENABLED)
-		return -EINVAL;
-
 	if (adapter->flags & IXGBE_FLAG_DCB_ENABLED)
 		return -EINVAL;
 
-- 
2.36.1

