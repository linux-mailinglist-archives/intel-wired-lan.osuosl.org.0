Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 214B27A8B3A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Sep 2023 20:09:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AB67681237;
	Wed, 20 Sep 2023 18:09:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AB67681237
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695233373;
	bh=69RFCqxKlVdpFQPxYvDkgdIbsLeS8/LhNiEU5QE7+0M=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hP1RvWmndKITSsDfHff9RSlQh3FmEuqNS07qYNsIV4TQeAgTgGr+IwOLFdpJcqxkO
	 cPyP9Q6X4fj3CpzLT8/9u1+4yL9UeW4nzhv2uT7N/LK1rUinDszqYL9/pJb37iIdjK
	 ZqqFu1Gwbo9TQYKgjnqval/fBcqYe1soSvS45ExcNP5xnl2RwTTYh0W2YIhiTLjJHr
	 JsMdkM2Xj8GwKA7G0JdMw30HE6wngTxT7IpJVKsiwGxVne8hmG+HK6atjJK6pKUtDp
	 L6XOhD7baybes2cg3QcX5/SnpDd1lQxYyiEBIYbPmSlIxDC5zqKYRJXoaZT7qvtwdV
	 h5o6nnW4Ca+/g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jWWiA0PM1VB4; Wed, 20 Sep 2023 18:09:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 86CAD80F62;
	Wed, 20 Sep 2023 18:09:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 86CAD80F62
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D51C01BF2AF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Sep 2023 18:09:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AE5A583C0D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Sep 2023 18:09:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AE5A583C0D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tdZHVn-8AUnW for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Sep 2023 18:09:19 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C639A83B94
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Sep 2023 18:09:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C639A83B94
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="359685200"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="359685200"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 11:09:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="870469703"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="870469703"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orsmga004.jf.intel.com with ESMTP; 20 Sep 2023 11:09:16 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Wed, 20 Sep 2023 20:07:45 +0200
Message-ID: <20230920180745.1607563-4-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230920180745.1607563-1-aleksander.lobakin@intel.com>
References: <20230920180745.1607563-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695233359; x=1726769359;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9v3tuq5QMpq6FKi4RwFSg7GiSz0pETN22pnlW81jpvc=;
 b=Gu0oIzlie/ACL7UpdhI6pUocntPigOJQG8c571qNh37/+8SqSL/fgt08
 b/hZf/sNAAm/FtrJSpPQG3CnsAayvI/UaeRqq1fXUI04mxlbYx71x8DsL
 lbM3rEudLP9wIGkW6MC43/BW+wxaoNVD408q7wUhqLDDmOapXkYeuumGC
 EP4rVBYZq1bGtlx9cICJ4qBwFeTcQEy+eklusA3VdidequtXufPMOPV8b
 0/ujVcllyGIovf0p0dAVCVfS9YoNyXSVxc57GoYQRwvx+8x8wxLj6eGAo
 /gsyvTv2OUqwK3oRN5+UW2RQIyV7Yrfm3tM/8BYjPxA8EAEXvTHiAeCWH
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Gu0oIzli
Subject: [Intel-wired-lan] [PATCH net-next 3/3] idpf: fix undefined
 reference to tcp_gro_complete() when !CONFIG_INET
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
Cc: Michal Michalik <michal.michalik@intel.com>, netdev@vger.kernel.org,
 Richard Cochran <richardcochran@gmail.com>,
 Randy Dunlap <rdunlap@infradead.org>, linux-kernel@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Milena Olech <milena.olech@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When CONFIG_INET is not set, tcp_gro_complete is not compiled, although
the drivers using it may still be compiled (spotted by Randy):

aarch64-linux-ld: drivers/net/ethernet/intel/idpf/idpf_txrx.o:
in function `idpf_rx_rsc.isra.0':
drivers/net/ethernet/intel/idpf/idpf_txrx.c:2909:(.text+0x40cc):
undefined reference to `tcp_gro_complete'

The drivers need to guard the calls to it manually.
Return early from the RSC completion function if !CONFIG_INET, it won't
work properly either way. This effectively makes it be compiled-out
almost entirely on such builds.

Fixes: 3a8845af66ed ("idpf: add RX splitq napi poll support")
Reported-by: Randy Dunlap <rdunlap@infradead.org>
Closes: https://lore.kernel.org/linux-next/4c84eb7b-3dec-467b-934b-8a0240f7fb12@infradead.org
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 6fa79898c42c..aa45afeb6496 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -2876,6 +2876,9 @@ static int idpf_rx_rsc(struct idpf_queue *rxq, struct sk_buff *skb,
 	if (unlikely(!(ipv4 ^ ipv6)))
 		return -EINVAL;
 
+	if (!IS_ENABLED(CONFIG_INET))
+		return 0;
+
 	rsc_segments = DIV_ROUND_UP(skb->data_len, rsc_seg_len);
 	if (unlikely(rsc_segments == 1))
 		return 0;
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
