Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OKCLHrmw+GkdzAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 04 May 2026 16:44:09 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F1FFD4BFF47
	for <lists+intel-wired-lan@lfdr.de>; Mon, 04 May 2026 16:44:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 62D6B845AB;
	Mon,  4 May 2026 14:44:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2JjKDCg5sg79; Mon,  4 May 2026 14:44:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9E9CF845AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777905846;
	bh=9OJPchOLKnKjF1Giyck+amz4Xh8JCjtrswZ2QTe92YI=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=7YrQZZQJrmEuorAP7vOtFtCe/5pnIRjGvMeBuSohJI+HkVxHh8o72esHREYQeh4Qn
	 jyumFNHchNa1xDzyI3vM+4u3t6z2+/Pu0udZ6H5MlED98RNApYojefzwRghysiJZe2
	 A9gFsd0bvp4mjvUEcaAItODOqzisQ0wkqbHsNMV8dtTXieljygRyVx+AMqorxFtsKq
	 tRr7iSMgK9CzG2pSFB6XQORqOsvgfgqiuW6StbrmRnyT5ehxT/kJ09grMFIetBExmH
	 uN1C4UiApzKM7WJXIi6qJsvYdyMJFlejE+ubZuVkMHnQq3tWl3seqh5+Xk7wH1kx6g
	 6fAZjburee+qg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9E9CF845AC;
	Mon,  4 May 2026 14:44:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 31246190
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 14:44:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 16F9641B27
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 14:44:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YPT9QGCdCWbL for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 May 2026 14:44:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org F192741B23
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F192741B23
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F192741B23
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 14:44:03 +0000 (UTC)
X-CSE-ConnectionGUID: oVPIxFEfQKan/3ndybgv0A==
X-CSE-MsgGUID: Gz6N+bltQCavJ46/DjrhpA==
X-IronPort-AV: E=McAfee;i="6800,10657,11776"; a="104211935"
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="104211935"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 07:44:02 -0700
X-CSE-ConnectionGUID: oj3o4ySlTKuiwaDDHYKuVQ==
X-CSE-MsgGUID: dV99omDhT2OF7cZLzXNe6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="239830499"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa004.jf.intel.com with ESMTP; 04 May 2026 07:44:00 -0700
Received: from mglak.igk.intel.com (mglak.igk.intel.com [10.237.112.146])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id C17812FC54;
 Mon,  4 May 2026 15:43:57 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org, Jacob Keller <jacob.e.keller@intel.com>
Cc: Larysa Zaremba <larysa.zaremba@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Joshua Hay <joshua.a.hay@intel.com>,
 Willem de Bruijn <willemb@google.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>
Date: Mon,  4 May 2026 16:43:43 +0200
Message-ID: <20260504144345.293219-1-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777905844; x=1809441844;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YvBSeEFqbbJHPGpcBG9RqC3NXahLfq7pQptie9Q7N2Q=;
 b=KbmM7AeBbgzmeVHxZbzSezscjUckmWOu1pY0cKJa0xRnExAICVtkRsip
 w1ddPm8vCDMdeZ0dl/uZh6I4ckYHayMM52ns7K/pASNzt5guZCPENv1hN
 qRLiCKw0kmRBYDciT2wg7KNQJXGIxPv4X1PTJm/2ajGzjiwwHegCDaC3n
 GCupWXDVQVCB4Jz86UTd8p3WSzfuZf44VPaQ1W0mK3DvViHl1hoZlRMI1
 4Lq7bp4tcBso6rBDsbTfqwUkQ+zzBy7aHoTeUOxajRUMJJ9PMyJk7pU1g
 HSgh7y2w1w43aWdnnCSoQ9VdUPMRjKFB1G40pPgysgEEm2I5SDwK9RSHV
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KbmM7AeB
Subject: [Intel-wired-lan] [PATCH iwl-net v2] idpf: fix RSS LUT memcpy size
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
X-Rspamd-Queue-Id: F1FFD4BFF47
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,intel.com:mid,intel.com:email,osuosl.org:dkim,sashiko.dev:url];
	FROM_NEQ_ENVFROM(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-0.994];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]

Based on the following feedback from Sashiko (received for iXD phase 1
patchset, but valid for the net tree):

 "Is the bounds check xn_params.recv_mem.iov_len < lut_buf_size sufficient?
  Since lut_buf_size only represents the size of the array elements, should
  this check instead verify that the payload is at least
  sizeof(struct virtchnl2_rss_lut) + lut_buf_size?

  [...]

  Does memcpy copy the correct amount of data here? rss_lut_size stores the
  number of 32-bit entries, not the size in bytes. Should it use
  lut_buf_size or rss_data->rss_lut_size * sizeof(u32) instead?"

After inspecting the code, it was concluded that RSS memcpy size is in fact
4 times smaller than it has to be, since a single array entry in a u32, and
rss_data->rss_lut_size is clearly used as an array size. Required Rx buffer
size is also too small, but this is a common issue in the idpf code.

Use a full buffer size (lut_buf_size) instead of the array length
(rss_data->rss_lut_size) when doing memcpy of RSS lookup table.
While at it, increase required Rx buffer size to a whole flex-array
containing structure instead of just the array.

Link: https://sashiko.dev/#/patchset/20260323174052.5355-1-larysa.zaremba%40intel.com?part=8
Fixes: 95af467d9a4e ("idpf: configure resources for RX queues")
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
v1 -> v2: replace manual array size calculation with flex_array_size()

v1: https://lore.kernel.org/netdev/20260429074232.180528-1-larysa.zaremba@intel.com/

 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index be66f9b2e101..0fc7c68447f8 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -2915,8 +2915,9 @@ int idpf_send_get_set_rss_lut_msg(struct idpf_adapter *adapter,
 	if (reply_sz < sizeof(struct virtchnl2_rss_lut))
 		return -EIO;
 
-	lut_buf_size = le16_to_cpu(recv_rl->lut_entries) * sizeof(u32);
-	if (reply_sz < lut_buf_size)
+	lut_buf_size = flex_array_size(recv_rl, lut,
+				       le16_to_cpu(recv_rl->lut_entries));
+	if (reply_sz < lut_buf_size + sizeof(struct virtchnl2_rss_lut))
 		return -EIO;
 
 	/* size didn't change, we can reuse existing lut buf */
@@ -2933,7 +2934,7 @@ int idpf_send_get_set_rss_lut_msg(struct idpf_adapter *adapter,
 	}
 
 do_memcpy:
-	memcpy(rss_data->rss_lut, recv_rl->lut, rss_data->rss_lut_size);
+	memcpy(rss_data->rss_lut, recv_rl->lut, lut_buf_size);
 
 	return 0;
 }
-- 
2.47.0

