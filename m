Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A400C76BAE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Nov 2025 01:19:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B261540AD9;
	Fri, 21 Nov 2025 00:19:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eR5nd0485ZSA; Fri, 21 Nov 2025 00:19:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E31C240B50
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763684361;
	bh=C5najYmMTGM/r4QikbQcZys9HtbnogZImJYek72VoxM=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=F1khOtu7gw7jVq+7XS3mLY3yO+jV5+E30DLB3lfULA3hrbTVe2Ab6Ckhs6EEgPtqy
	 kIOL3Q5gg6yIyZf2psK4DFnglcO4yDy+kKHxCO+5pS/ALIYEjylQfWDyvCvP8pirwb
	 HRl9m1PsjL8G/9cK+37FW+e6sAlj/2FNSHjXdwQWMypelgjNETlAO//sbPVVlL5hRY
	 ba5yGzEcT3mZhKH4pvChehmspeK68vDBRB/zotRN/uHSd6SaZxzHJdKd0AR8hPuJyB
	 P2FhMr6jNXMMVhBvptTvTzCuNSlSF29LDVD/9Sznd5iUGnBxbSARUfrYXGikfxH+vl
	 35tFfBfQQPEaQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E31C240B50;
	Fri, 21 Nov 2025 00:19:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0D061158
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Nov 2025 00:19:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B04BC612E9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Nov 2025 00:19:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E41ZnphcpH78 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Nov 2025 00:19:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B6D76613B7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B6D76613B7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B6D76613B7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Nov 2025 00:19:16 +0000 (UTC)
X-CSE-ConnectionGUID: MWsrpnZRSX6pNol3BDBB8Q==
X-CSE-MsgGUID: 0gBP7TG9T/ydfw/X+f3V/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="65704070"
X-IronPort-AV: E=Sophos;i="6.20,214,1758610800"; d="scan'208";a="65704070"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 16:19:15 -0800
X-CSE-ConnectionGUID: 9patfTSeSl+wYjuBlrU3vQ==
X-CSE-MsgGUID: F4qIXi24T2evqRHr5rP5dw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,214,1758610800"; d="scan'208";a="190815179"
Received: from estantil-desk.jf.intel.com ([10.166.241.24])
 by orviesa010.jf.intel.com with ESMTP; 20 Nov 2025 16:19:15 -0800
From: Emil Tantilov <emil.s.tantilov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Aleksandr.Loktionov@intel.com,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, decot@google.com, willemb@google.com,
 joshua.a.hay@intel.com, madhu.chittim@intel.com,
 aleksander.lobakin@intel.com, larysa.zaremba@intel.com,
 iamvivekkumar@google.com
Date: Thu, 20 Nov 2025 16:12:16 -0800
Message-Id: <20251121001218.4565-4-emil.s.tantilov@intel.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20251121001218.4565-1-emil.s.tantilov@intel.com>
References: <20251121001218.4565-1-emil.s.tantilov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763684357; x=1795220357;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=ac+SqF+nclpj0220XqgkFGA2lonSr+pAqOAfRRXyCyk=;
 b=h5d9btq7pfppK5c6H8hFaaKnpm+Y7UZTzZkRF22UwXm0zywB3xnPqXHW
 pJH8ejQ9zxp9SJUYm0L7gCjwqopRqnuC9buPdOX+T1B7kPdCPIEJrrwyb
 d2eJ0OKgABwzVX1hdphnrqHbzKCk+oAk3tbQlh8Xae1LSMG+bKsjGKihe
 f9Y7nRgrb2lESmjIySfTmS2e+bzvqfYBXkrgwf4V0IowUM3D85/D4L5il
 I0T58VnLwiYS5mT15iNxiZJ8ULCoBFpjlXaMNzsbjxS6N7qwuitI3LBdy
 X8Q+k5qyOHGucTOyC3WwIpzH/7WHRiQ5AQLKyOJoVqhrb05ukuqp/wyva
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=h5d9btq7
Subject: [Intel-wired-lan] [PATCH iwl-net v2 3/5] idpf: fix memory leak in
 idpf_vport_rel()
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

Free vport->rx_ptype_lkup in idpf_vport_rel() to avoid leaking memory
during a reset. Reported by kmemleak:

unreferenced object 0xff450acac838a000 (size 4096):
  comm "kworker/u258:5", pid 7732, jiffies 4296830044
  hex dump (first 32 bytes):
    00 00 00 00 00 10 00 00 00 10 00 00 00 00 00 00  ................
    00 00 00 00 00 00 00 00 00 10 00 00 00 00 00 00  ................
  backtrace (crc 3da81902):
    __kmalloc_cache_noprof+0x469/0x7a0
    idpf_send_get_rx_ptype_msg+0x90/0x570 [idpf]
    idpf_init_task+0x1ec/0x8d0 [idpf]
    process_one_work+0x226/0x6d0
    worker_thread+0x19e/0x340
    kthread+0x10f/0x250
    ret_from_fork+0x251/0x2b0
    ret_from_fork_asm+0x1a/0x30

Fixes: 0fe45467a104 ("idpf: add create vport and netdev configuration")
Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_lib.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 5c81f52db266..5193968c9bb1 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -1105,6 +1105,8 @@ static void idpf_vport_rel(struct idpf_vport *vport)
 		kfree(adapter->vport_config[idx]->req_qs_chunks);
 		adapter->vport_config[idx]->req_qs_chunks = NULL;
 	}
+	kfree(vport->rx_ptype_lkup);
+	vport->rx_ptype_lkup = NULL;
 	kfree(vport);
 	adapter->num_alloc_vports--;
 }
-- 
2.37.3

