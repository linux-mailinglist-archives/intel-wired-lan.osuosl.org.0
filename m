Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 75689A09EC2
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 Jan 2025 00:38:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 25213608B9;
	Fri, 10 Jan 2025 23:38:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bYu0ZXgZa_j0; Fri, 10 Jan 2025 23:38:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6FBC3608BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736552300;
	bh=mYZTyjbbu8IQiMpVWqK0WFcCqvZ/j0ruiMSQTTyccLA=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=XUKeMPtHBPylPyxtcR311mgeHtLuuW2AK4jNs1iZYN1QTmD7W81LgkHvdkd5i6Lx9
	 8lLh2+LsSR816L+d/KUDqLtBxKINnuK/NP9DH//s26q7IJRlpDyPV12EYwStIsATWu
	 m9bqffmj3n62Fl8rFsyP0ohH6A1Se21NrZ7TOfOkHu4kb2jNhZGudh4TnVFIiA8ZDF
	 cDr1DZAbPKL/arvvjPL7cyOvuVE2vwlcSVO6VcF5lrlk0oELlB6tC8YK9Ihfrv3OP1
	 iYgjs7mnij1Zpe2ccYQkMGI4R01tk4biBqAWury+b029pRzcBLSAItUvfhFYTVQjwP
	 hiffBd9OUHReA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6FBC3608BB;
	Fri, 10 Jan 2025 23:38:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C6AE5940
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jan 2025 23:38:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A74404060D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jan 2025 23:38:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2jR54S_-0r1D for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jan 2025 23:38:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=sridhar.samudrala@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BFD3B400F1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BFD3B400F1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BFD3B400F1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jan 2025 23:38:17 +0000 (UTC)
X-CSE-ConnectionGUID: UPbPCp/FRvqQGWhZnYcmkQ==
X-CSE-MsgGUID: yqPoguMmSFqmSX4WRT/tSg==
X-IronPort-AV: E=McAfee;i="6700,10204,11311"; a="40799736"
X-IronPort-AV: E=Sophos;i="6.12,305,1728975600"; d="scan'208";a="40799736"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2025 15:38:17 -0800
X-CSE-ConnectionGUID: mkAyTctXQzm6oZG1RJ8RHA==
X-CSE-MsgGUID: 4zAoolm/Rj6H3HyaCGzd8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="107916555"
Received: from jf3418-16b10-250812-p7.jf.intel.com ([10.166.80.88])
 by fmviesa003.fm.intel.com with ESMTP; 10 Jan 2025 15:38:16 -0800
From: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	netdev@vger.kernel.org
Cc: Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>
Date: Fri, 10 Jan 2025 16:29:58 -0800
Message-ID: <20250111002957.167327-2-sridhar.samudrala@intel.com>
X-Mailer: git-send-email 2.46.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736552298; x=1768088298;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+vUQF0Ms6rApdjCEWLAUXJx8qXMAxLYASyTa7ZmSe9o=;
 b=DoIGFtwhNYJ88axQaSqe1YMnS/4AFSFekrQ5Wi7iV0xDaOQz1AJV8lAr
 QTs+xkiNagLhGMeoh5Ca+yzzB7VVGjpTMJWcnVcBjMrrGHfWOyrT+peBQ
 zheuDE78vN5Nv4DPw6ErQs12kybd9q1b8NvtvhqSb0dUx0ppSD5MI5W82
 JcYo4L95vp+81sRaCpxlVXIquXl2ToFAC9xrF2JTisooM+kJBJQLdIPPC
 IDWR+FkhOtDMn2rqkF0Wp9u9q7hzn3w6JsDIzaa3mLuu+qnoBfDoWXRc4
 SksIKvY0vkZwTu55Fl8vyJmVgQEzdrZm/8lze3pBBKaUy8hJdqsQH8P77
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DoIGFtwh
Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: record rx queue in skb for
 RSC packets
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

Move the call to skb_record_rx_queue in idpf_rx_process_skb_fields()
so that RX queue is recorded for RSC packets too.

Fixes: 90912f9f4f2d ("idpf: convert header split mode to libeth + napi_build_skb()")
Signed-off-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index c9fcf8f4d736..9be6a6b59c4e 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -3070,6 +3070,7 @@ idpf_rx_process_skb_fields(struct idpf_rx_queue *rxq, struct sk_buff *skb,
 	idpf_rx_hash(rxq, skb, rx_desc, decoded);
 
 	skb->protocol = eth_type_trans(skb, rxq->netdev);
+	skb_record_rx_queue(skb, rxq->idx);
 
 	if (le16_get_bits(rx_desc->hdrlen_flags,
 			  VIRTCHNL2_RX_FLEX_DESC_ADV_RSC_M))
@@ -3078,8 +3079,6 @@ idpf_rx_process_skb_fields(struct idpf_rx_queue *rxq, struct sk_buff *skb,
 	csum_bits = idpf_rx_splitq_extract_csum_bits(rx_desc);
 	idpf_rx_csum(rxq, skb, csum_bits, decoded);
 
-	skb_record_rx_queue(skb, rxq->idx);
-
 	return 0;
 }
 
-- 
2.46.2

