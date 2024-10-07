Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FCCD993811
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Oct 2024 22:17:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 24A5580D6C;
	Mon,  7 Oct 2024 20:17:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bnO4YiHbrTae; Mon,  7 Oct 2024 20:17:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5BB5480D72
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728332255;
	bh=5SGIma5cgP63XBFaBrxf1rEl2MrRfgMmZ0Y9FUN4N3c=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=B62hT4zea22od/9/YQbMRK4KV//JokFY538+AVGI9fTTW6zuVE7mA8l0AdM1YGznG
	 ebKJirUMEBV9dSVJfRB/6ntoIjLMjOjI7/9c5QteCoHMJ5F18+DJh29dflKzJeAJjc
	 6i3oxcMv1w3XJF9ju4SgybvHzZDrUcEeNVhB/Z4a0t2KtzQiuSEv6X8PwMWq89/dwk
	 7nxNRIgy7mS5o6IXWv5K3RDoXXJK7oJklvNh0MwAQTxFVzZscWbDqarMwCr/w1bzRG
	 /LHeYOZTcKnm6oD5YzSjaXmFRNKmtSh5y1JLcDc6o3FJHkAIbIuYbPr+lD3W3JmXWS
	 TcVMtz+yjloQw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5BB5480D72;
	Mon,  7 Oct 2024 20:17:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 588D41BF38E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2024 20:17:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 462574025B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2024 20:17:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id StFlyaJ0L8bz for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Oct 2024 20:17:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0CFAE40252
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0CFAE40252
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0CFAE40252
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2024 20:17:32 +0000 (UTC)
X-CSE-ConnectionGUID: BHD9xCYXRACWTocMU6YZlQ==
X-CSE-MsgGUID: 1lR420B1T6mf3HBgHyPbBw==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="38066443"
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="38066443"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 13:17:31 -0700
X-CSE-ConnectionGUID: h+KGnEy/QVydIlyV5f6wiw==
X-CSE-MsgGUID: MrRYPvxqQ+i+0IqF8kEnsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="76023755"
Received: from dcskidmo-m40.jf.intel.com ([10.166.241.13])
 by orviesa007.jf.intel.com with ESMTP; 07 Oct 2024 13:17:31 -0700
From: Joshua Hay <joshua.a.hay@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  7 Oct 2024 13:24:35 -0700
Message-Id: <20241007202435.664345-1-joshua.a.hay@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728332253; x=1759868253;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=t8eRMXgHM65A8SAT5uZ6vgW3918+43f43JG1igKF8M8=;
 b=eVF5BQzna7vrPi6b2sZzgaZf2Flp11+68VYljPNZh123DCIiE4eUQhGQ
 3omdDkTKAXbhNC7HmUEJZKe0QGlGQFau0WARu6g4PiNLlmLLZzWjPRRVh
 yTha7y67XhKoIPC/KNnqlLpMa39Um40pKxj6EyjD+U8T+21P0e7VmyNGa
 D8P1LikI7vI4XBgwhSr3AaJTRsfSGJuZMyf3b+aByXscotOqDT1ZEXCBW
 IRNqK26KvI5KE4S5KPa+9gL035CJh4/t20eeHD3viW68z0DLylCWDFF6P
 W+ebrU3uXLtHjj4EKA3AjOV7Ynr21HfOuhKarcQTZS+Y+8DDwedGtU14c
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eVF5BQzn
Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: set completion tag for
 "empty" bufs associated with a packet
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
Cc: aleksander.lobakin@intel.com, madhu.chittim@intel.com,
 netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Commit d9028db618a6 ("idpf: convert to libeth Tx buffer completion")
inadvertently removed code that was necessary for the tx buffer cleaning
routine to iterate over all buffers associated with a packet.

When a frag is too large for a single data descriptor, it will be split
across multiple data descriptors. This means the frag will span multiple
buffers in the buffer ring in order to keep the descriptor and buffer
ring indexes aligned. The buffer entries in the ring are technically
empty and no cleaning actions need to be performed. These empty buffers
can precede other frags associated with the same packet. I.e. a single
packet on the buffer ring can look like:

	buf[0]=skb0.frag0
	buf[1]=skb0.frag1
	buf[2]=empty
	buf[3]=skb0.frag2

The cleaning routine iterates through these buffers based on a matching
completion tag. If the completion tag is not set for buf2, the loop will
end prematurely. Frag2 will be left uncleaned and next_to_clean will be
left pointing to the end of packet, which will break the cleaning logic
for subsequent cleans. This consequently leads to tx timeouts.

Assign the empty bufs the same completion tag for the packet to ensure
the cleaning routine iterates over all of the buffers associated with
the packet.

Fixes: d9028db618a6 ("idpf: convert to libeth Tx buffer completion")
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Acked-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Reviewed-by: Madhu chittim <madhu.chittim@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index d4e6f0e10487..60d15b3e6e2f 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -2448,6 +2448,7 @@ static void idpf_tx_splitq_map(struct idpf_tx_queue *tx_q,
 			 * rest of the packet.
 			 */
 			tx_buf->type = LIBETH_SQE_EMPTY;
+			idpf_tx_buf_compl_tag(tx_buf) = params->compl_tag;
 
 			/* Adjust the DMA offset and the remaining size of the
 			 * fragment.  On the first iteration of this loop,
-- 
2.39.2

