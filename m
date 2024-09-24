Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C779842E3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Sep 2024 12:02:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5870440BC7;
	Tue, 24 Sep 2024 10:02:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8z3sVPCVrdoa; Tue, 24 Sep 2024 10:02:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 804FB40BBF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727172138;
	bh=wG5c13nnCWbHWZyJHWnMG/nWVzMpLPHAUjZZ/mfBnA0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2OXJ6v8U6i1nOQuHNufdHysuNgD7+vThcongJkCFF3r/xW42XfSsp7qPZVKml1T7w
	 RAylSEVCGm1MtaMlk8wV12CHXN/UHRV6EuD9pgZTIIfOlx+XAWHwH3+aAP/oT1DGSP
	 K7C1bAoWvJTig7jxN5tGZQxxnRZOfOllBirXNt5WsEYqSJ6f4/4ygj6pOQDseMBxIz
	 mFD8lJk7CQ29TKewe+r06Acn5WIkiicvVurx435f/KBSd0nyVqXheWzfNum3TRJArU
	 uSJEQVOtcNolruInBLdNXgX3g2vSKa7CG9xmeZUjmiKcrhdZ+sX3p+eExMhPOXOseT
	 P2N8uno+YdhuA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 804FB40BBF;
	Tue, 24 Sep 2024 10:02:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AD9371BF954
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 10:02:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9BE6D8149A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 10:02:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R1GSWWxK_mhy for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Sep 2024 10:02:16 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BD77681425
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BD77681425
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BD77681425
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 10:02:15 +0000 (UTC)
X-CSE-ConnectionGUID: 3+L+j9u/RAyDUgwcLZctOg==
X-CSE-MsgGUID: 49ClSbd5T3GwQnp/SxO+sQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="36725593"
X-IronPort-AV: E=Sophos;i="6.10,254,1719903600"; d="scan'208";a="36725593"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 03:02:14 -0700
X-CSE-ConnectionGUID: k4NHMK89TyeiUggX//f82g==
X-CSE-MsgGUID: TCMOIc3WTj29KK6OBIcttg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,254,1719903600"; d="scan'208";a="76285974"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa004.jf.intel.com with ESMTP; 24 Sep 2024 03:02:13 -0700
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 8269027BA0;
 Tue, 24 Sep 2024 11:02:11 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 24 Sep 2024 12:04:24 +0200
Message-ID: <20240924100422.8010-4-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20240924100422.8010-3-marcin.szycik@linux.intel.com>
References: <20240924100422.8010-3-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727172136; x=1758708136;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9pTCtvoU8bZ1CmLxI3yN4pIXZkad/QyzLZAJMugUkNo=;
 b=Z+uK1mmeo3Ve8z/a0x0GB3H1/0goxKDhJDJf6kLO0kGp+blcocYAYveI
 lmHZPYDZgynrC7UxlgLwZ8k+uetXhmyxXTLWOW2iGs+uh2yi89UMDsKAw
 54cLFLeFTyOJ8GAKX9DgLGLLFmRn4X0GlhWWICGJ3K50mOUPpCaH5zdXu
 eHPSwZBc7PFHzvCngaQzftj4gYsNpTE7h75576Jca2r76M1gTUHekQov3
 oBWvvotA9h8EqEk0YqYl4NNrvg/DT/thuEVKTsDx5BTyPGXuFxSI5eP5m
 VQkuiFG9Dn7O3sqbgYjdxhQTxV/OBEMUTs5ys0NAImahU3K6ARFxf7TV7
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Z+uK1mme
Subject: [Intel-wired-lan] [PATCH iwl-net v3 2/2] ice: Fix netif_is_ice() in
 Safe Mode
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
Cc: maciej.fijalkowski@intel.com, netdev@vger.kernel.org,
 mateusz.polchlopek@intel.com, Marcin Szycik <marcin.szycik@linux.intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, bcreeley@amd.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

netif_is_ice() works by checking the pointer to netdev ops. However, it
only checks for the default ice_netdev_ops, not ice_netdev_safe_mode_ops,
so in Safe Mode it always returns false, which is unintuitive. While it
doesn't look like netif_is_ice() is currently being called anywhere in Safe
Mode, this could change and potentially lead to unexpected behaviour.

Fixes: df006dd4b1dc ("ice: Add initial support framework for LAG")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 7a84d3c4c305..b1e7727b8677 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -87,7 +87,8 @@ ice_indr_setup_tc_cb(struct net_device *netdev, struct Qdisc *sch,
 
 bool netif_is_ice(const struct net_device *dev)
 {
-	return dev && (dev->netdev_ops == &ice_netdev_ops);
+	return dev && (dev->netdev_ops == &ice_netdev_ops ||
+		       dev->netdev_ops == &ice_netdev_safe_mode_ops);
 }
 
 /**
-- 
2.45.0

