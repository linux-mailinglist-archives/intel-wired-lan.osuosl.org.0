Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B5CECC48804
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Nov 2025 19:15:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3672780DBF;
	Mon, 10 Nov 2025 18:15:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WaeYyZizYti3; Mon, 10 Nov 2025 18:15:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B724480D5E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762798522;
	bh=GXWu8N/ctSbzUI53K19R+y15EyI3hBcg3xrguAW9HQ4=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=wJIg1JB7DnFJ6MvB1gZlQYYER5KqcXrGcZMdwbTA6JLT4apMXKTPGTZ1NTFSF8bcG
	 PAKVPmMtRyT4dY/8x2ANRHh+7Gp3rnlKiHFZvhVgnqvKrnz6jfpqo/Mjr4gziplogU
	 9yTX6pP8MH7CLcqeMiqVsoPv4FMN3RBegfUGQpf+YvVhrVEAva47hj7OiHs65WVPQL
	 tFlRAR5lOFO+EgEdVLjUNC5NMQH0ugiCBVO4iz1AyoySuIKkqkNBsCgy57syTeF6QM
	 kE9DcqV/j3hai7MCeWPXmwYNASeZ9GztjKiNUQ+DVESUXzqPbUobBrsNOKEs4XYYT7
	 qwsnBeUf8PmOg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B724480D5E;
	Mon, 10 Nov 2025 18:15:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id F3DF71CC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 18:15:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DACDB40672
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 18:15:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4khn15r9Jh9u for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Nov 2025 18:15:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 10D42400B7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 10D42400B7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 10D42400B7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 18:15:20 +0000 (UTC)
X-CSE-ConnectionGUID: OSjhIc3ORPi+Aey6FPxwFw==
X-CSE-MsgGUID: X23QdYIRRI6Z458pVwQNVg==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="68497104"
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="68497104"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 10:15:20 -0800
X-CSE-ConnectionGUID: tw9YI+ROTjqr1pSyETJvAg==
X-CSE-MsgGUID: P0ukl+KcQqynqAwoQ4zjaw==
X-ExtLoop1: 1
Received: from estantil-desk.jf.intel.com ([10.166.241.24])
 by fmviesa003.fm.intel.com with ESMTP; 10 Nov 2025 10:15:19 -0800
From: Emil Tantilov <emil.s.tantilov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Aleksandr.Loktionov@intel.com,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, decot@google.com, willemb@google.com,
 joshua.a.hay@intel.com, madhu.chittim@intel.com,
 aleksander.lobakin@intel.com, larysa.zaremba@intel.com,
 iamvivekkumar@google.com
Date: Mon, 10 Nov 2025 10:08:19 -0800
Message-Id: <20251110180823.18008-1-emil.s.tantilov@intel.com>
X-Mailer: git-send-email 2.17.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762798521; x=1794334521;
 h=from:to:cc:subject:date:message-id;
 bh=Ei+dXbQkQZkM/XAmXN7PEMQ5Pe0gq7Nnvq8DCvj0OFg=;
 b=NMwIrbrafTrYa7x3O+IpbtLZaIsMuCVdA6URybCyA7OI7O9pG1vrLEsx
 oO4gKF0U3l3FNV7RKGXwHOjUXqyLACGfYuLi0itDKrq7MIVaJl5Dem0Xy
 229fn/vjB/sc860NB1cGZpPjvuzr5VdnBCOmWDdNvjFnO4KLI+eOxmd/R
 jG6qomMUCTeVwq7LEKxQlPyqps7GUiPe8117oUrpbxscAIOfNnbFyIfEM
 Vsm46Tgr6Ndlm5iRj6biEsl39siojMNlhr4t3xdtReQNeTo+0ttZymF5+
 eZL94GlFnp12FzVvUOSgdq16TTvVZ8Zb03zPR8wVx4qmqHVYG2AlhRZww
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NMwIrbra
Subject: [Intel-wired-lan] [PATCH iwl-net 0/4] idpf: fix issues in the reset
 handling path
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

Resolve multiple issues in the error path of reset handling of the IDPF
driver:
- Mailbox timeouts in the init task during a reset lead to the netdevs
  being unregistered.
- Reset times out and leaves the netdevs exposed to callbacks with the
  vport resources already freed.
- Simultaneous reset and soft reset calls will result in the loss of the
  vport state, leaving the netdev in DOWN state.
- Memory leak in idpf_vport_rel() where vport->rx_ptype_lkup was not
  freed during a reset.
- Memory leak in idpf_vc_core_deinit(), where kfree() was missing for
  hw->lan_regs.

Emil Tantilov (4):
  idpf: keep the netdev when a reset fails
  idpf: detach and close netdevs while handling a reset
  idpf: fix memory leak in idpf_vport_rel()
  idpf: fix memory leak in idpf_vc_core_deinit()

 drivers/net/ethernet/intel/idpf/idpf_lib.c    | 139 ++++++++++--------
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   |   4 +
 2 files changed, 83 insertions(+), 60 deletions(-)

-- 
2.37.3

