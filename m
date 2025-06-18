Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 53444ADF960
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jun 2025 00:25:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 723C360BD3;
	Wed, 18 Jun 2025 22:25:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 95URO7KrQW8M; Wed, 18 Jun 2025 22:25:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D2B5760BAC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750285515;
	bh=a0BUnsOMIqNt2cWiC9EEJRfnzNMNqshxcHO/Wsj2c/I=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1Kov++b8aT27jAdOruExncIWs3MbkNM0weamCfIiqEEGQRF4pwQG6SO/pZAO1NdqT
	 RK2dJudlZ5txyo7cF6yyQ8mp0D5v8pDnsOY4sns0ScUL04eSRk1nhK6OtcWsO3PCwX
	 HHvQjbkSsIJ1JVNKxsZTvlo7K9j6zCAGHLvGj6z26Pm7LEHUsY6DQSFy1I/HD8HOkJ
	 efClgOZJpfkAAuyhfKoc0CFY/8b0QTppMjzjD7qPrqixnmbbBxek/G/GnpZhHKqHqY
	 UdJ8FP3UkOVuu1fyxmgdnkNR8GI6Omh8IlUKhlLEzjVMp2Pa+jZeFBztdTcML/xPV/
	 uAzfM4mw6yTcA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D2B5760BAC;
	Wed, 18 Jun 2025 22:25:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 244A6E2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 22:25:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C638840776
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 22:25:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z9w-pYmIZbnu for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Jun 2025 22:25:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1342B4041E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1342B4041E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1342B4041E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 22:25:07 +0000 (UTC)
X-CSE-ConnectionGUID: ChctEzvOQsqtMYf3IT7aVA==
X-CSE-MsgGUID: xBzYfYyNTlmwCqOBFRz1MQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="52447756"
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="52447756"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 15:25:05 -0700
X-CSE-ConnectionGUID: iA/562HKRp64APOY1VwOzA==
X-CSE-MsgGUID: ywj2wYm0QsCfGureMMg9bA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="149870024"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 15:25:04 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 18 Jun 2025 15:24:42 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250618-e810-live-migration-jk-migration-prep-v1-7-72a37485453e@intel.com>
References: <20250618-e810-live-migration-jk-migration-prep-v1-0-72a37485453e@intel.com>
In-Reply-To: <20250618-e810-live-migration-jk-migration-prep-v1-0-72a37485453e@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org, 
 Madhu Chittim <madhu.chittim@intel.com>, Yahui Cao <yahui.cao@intel.com>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750285507; x=1781821507;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=akIz3xxNiiN7u74xtELhCQ8HlVlWQnYlHPtyCWi8B7U=;
 b=g7bfTxK2rRvTZZcWFo3cNBXEXdDpTQnwj/44Ep8R/aSNorvN95golDj3
 fWy/+gmb5JFbifsaOcHHYDAkLIY/g0xTj9SGZpP2bAbcY5E9HXcD8lzh7
 99i6QVa8ZRJ0LmBNiAFGaZIpUO+LwlYQ6UI4FXMwgOmI2axcy7QqX2jcd
 esUehbwBlbE3SXVakwoX2bMKYbBBXpJCh5J9GqHg86+DKFPIPe04R+hNA
 d0tYrrGyH8zWo6RbbbnsKoAqLQcs1Uh0tAt/SIpf084khUQayTGAz6M/P
 suexRtpOwjcUsTOZJnXMKT8UWQwQamjqDk9CruaoGGEsGwFBuGLADGJzZ
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=g7bfTxK2
Subject: [Intel-wired-lan] [PATCH iwl-next 7/8] ice: avoid rebuilding if
 MSI-X vector count is unchanged
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

Commit 05c16687e0cc ("ice: set MSI-X vector count on VF") added support to
change the vector count for VFs as part of ice_sriov_set_msix_vec_count().
This function modifies and rebuilds the target VF with the requested number
of MSI-X vectors.

Future support for live migration will add a call to
ice_sriov_set_msix_vec_count() to ensure that a migrated VF has the proper
MSI-X vector count. In most cases, this request will be to set the MSI-X
vector count to its current value. In that case, no work is necessary.
Rather than requiring the caller to check this, update the function to
check and exit early if the vector count is already at the requested value.
This avoids an unnecessary VF rebuild.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sriov.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 4c0955be2ad20c3902cf891a66f857585fcab98b..964c474322196fa8875767ac2667be5d550a6765 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -966,6 +966,12 @@ int ice_sriov_set_msix_vec_count(struct pci_dev *vf_dev, int msix_vec_count)
 		return -ENOENT;
 	}
 
+	/* No need to rebuild if we're setting to the same value */
+	if (msix_vec_count == vf->num_msix) {
+		ice_put_vf(vf);
+		return 0;
+	}
+
 	prev_msix = vf->num_msix;
 	prev_queues = vf->num_vf_qs;
 

-- 
2.48.1.397.gec9d649cc640

