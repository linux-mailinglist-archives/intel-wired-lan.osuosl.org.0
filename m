Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A4048C48813
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Nov 2025 19:15:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1B0A980D77;
	Mon, 10 Nov 2025 18:15:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bfrfG1KgNKyu; Mon, 10 Nov 2025 18:15:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 975BA8175D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762798526;
	bh=kNPJu8PEJyu60KobmH+fYEDuMvndet0NQfhaRxCAlTg=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AuQz4S7TRMsopK29AZxpM5ry9/VNZ6YlpSXEjlwLMLxIQDXH9qhZnxmQbnPYiHI8k
	 U8Tq+ZXchsaE3NtpVglRCkl3Jbn3CA2qkEiQaMboPQ3YC9t7zZ+lHiTNlpjmIe4U36
	 mtTrA7E+rqJT6GasSdAzN262ahN6i6NInK5oIw3IkFoWHMN6ND4vQZh1p+FhwU1B3f
	 ugUxgzoA/dOm836mueVRqpHsWKlrJTbOBKAwgutr87TTwvbgvdceWHkAiAz+JJedlz
	 O7ikQJRpVIW/jaVPPddtQz7yhikRF732JsPY0+BXB8S9ONbnl5ybnLuPGs+2bGZ6sE
	 0prq1UbYpjsUA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 975BA8175D;
	Mon, 10 Nov 2025 18:15:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 158F31CC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 18:15:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BD424400F8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 18:15:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 32OR6IIgEvvR for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Nov 2025 18:15:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C4D954066D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C4D954066D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C4D954066D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 18:15:21 +0000 (UTC)
X-CSE-ConnectionGUID: jGVR9yshThSEi+oGK7r1aQ==
X-CSE-MsgGUID: BnvJVuAzS+Kwo6c2P4m+8Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="68497110"
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="68497110"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 10:15:21 -0800
X-CSE-ConnectionGUID: kDROKgB/Qk6HQ03TxUqxJA==
X-CSE-MsgGUID: AdDmsryzRkGE5lGvLEgczA==
X-ExtLoop1: 1
Received: from estantil-desk.jf.intel.com ([10.166.241.24])
 by fmviesa003.fm.intel.com with ESMTP; 10 Nov 2025 10:15:21 -0800
From: Emil Tantilov <emil.s.tantilov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Aleksandr.Loktionov@intel.com,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, decot@google.com, willemb@google.com,
 joshua.a.hay@intel.com, madhu.chittim@intel.com,
 aleksander.lobakin@intel.com, larysa.zaremba@intel.com,
 iamvivekkumar@google.com
Date: Mon, 10 Nov 2025 10:08:22 -0800
Message-Id: <20251110180823.18008-4-emil.s.tantilov@intel.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20251110180823.18008-1-emil.s.tantilov@intel.com>
References: <20251110180823.18008-1-emil.s.tantilov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762798522; x=1794334522;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=ZcG6etlUmAxtrygkrGXXAEDFPwEwT7oT7TuLRNXMsJo=;
 b=KaJ+/LZAFJDE7qVdaY/2rljWkngMlQ9qWbjf53zsuFijSxn6Tx93/31l
 PIGRsay7qYL8J5Bi7GO41IHASY9couswTKz+KwHgP6olpU3ESLqwurwtL
 K39fSDN8jyLUdXxRq5OiF9TAdqs2xGPL16G58hWXS8mt2F+Q6or7Mg8xy
 0uyYpSxD4aseuvP0uH5FjjCZjpWDVq3DIzwRXT95jfZpvsc7pM5XCMiJT
 QLvS7qesvppt4EEUJeQmVKiWqO6RsHjA0aZ2hq0VfVEol3e/URDU5jNxN
 TJWJoDMC/+aD05gyryKx06slkLAz/F0zBjAtyKdzB/31SZW9DqvfjSamU
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KaJ+/LZA
Subject: [Intel-wired-lan] [PATCH iwl-net 3/4] idpf: fix memory leak in
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
index 8c7c3e6bccc7..8c3041f00cda 100644
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

