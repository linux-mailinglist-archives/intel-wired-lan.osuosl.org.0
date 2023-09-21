Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 124E07A9477
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Sep 2023 15:01:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9E47F83C6C;
	Thu, 21 Sep 2023 13:00:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9E47F83C6C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695301258;
	bh=O34ETlYqGNMxmPMMs5bs/QJrVNsZGd7BxPHqVW2Lv+Y=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Gq3lXei5WeKbfTr34vZysDTANaA0zv3+ZOwlwuABzgpoNhFPUSoHncs3qArYiLreB
	 eUzW6+babMoAfjjAj8WC8a89oQNFwAB6ebzyW73AIVXBjb9r2dFjLz6xNz8iZqw1Lw
	 K+bg2UsJtv8OnYpSiqlnTpeAUqqe+DqYVwgOxP6cs3LhaMv8NqZAEolpQ5lTEO57e4
	 IjxiIA77Y7leI+zwcKc3rwECpSe+TOEsO7R4/Nlwwql7PtZ7oEmy/7hW2nTNze/N8m
	 ubDatsymgqx6ora0sTjRudF0vth6OM0WlX57z91/lhOHHDIUqQ9AQ2XbN6jNwD2JCo
	 Lh/kwAJyrA9Pw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CHddP4qG5veS; Thu, 21 Sep 2023 13:00:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A6C3783B41;
	Thu, 21 Sep 2023 13:00:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A6C3783B41
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BD8411BF3AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Sep 2023 13:00:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 94B3280F54
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Sep 2023 13:00:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 94B3280F54
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9O7CxWaDj214 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Sep 2023 13:00:50 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 209B080ECD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Sep 2023 13:00:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 209B080ECD
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="379396207"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="379396207"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 06:00:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="812639263"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="812639263"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmsmga008.fm.intel.com with ESMTP; 21 Sep 2023 06:00:40 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Thu, 21 Sep 2023 14:59:36 +0200
Message-ID: <20230921125936.1621191-1-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695301250; x=1726837250;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CB1e+1tDos0izps6y7bKpYTFHFvWb1uVC0e3ziRvTvY=;
 b=Vhsadh3oeKNcRDiKNnFtxzXam6G10fBkgBu1sJF/l2d0aQ1kMTh92hVr
 PKPjxUCe73fV3tCjE01WvxWlFpaWarp8dm+s2cUPVUG42kkiUAS87wP9Y
 f1OJQJP+jbjuEx3ty3rmjI9hQcIkHPHzo48Wpzg9a42pt4SqMFAAGUayu
 2vfAHfSG+PVhvA6d+GUyxXT7M8vG2Oypn5m8YIW22QSZusJJtvbj7dmmB
 27g95B5Gb/MYWo/t7YkpEEvlp/S3WXQIk8rr8sshcTWJRpis933g2zPEv
 oiLji0PlcuPMGvsNxeGbLu0oNgs13H8rga6kA6t7e2sYb1VS0EzitLCEv
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Vhsadh3o
Subject: [Intel-wired-lan] [PATCH net-next] idpf: fix undefined reference to
 tcp_gro_complete() when !CONFIG_INET
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
Cc: netdev@vger.kernel.org, Randy Dunlap <rdunlap@infradead.org>,
 linux-kernel@vger.kernel.org, Alexander Lobakin <aleksander.lobakin@intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
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
Tested-by: Randy Dunlap <rdunlap@infradead.org>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
Directly to net-next, build bots are not happy :s

From v1[0]:
 * post the patch as standalone;
 * pick the received tags (Randy, Jake, Przemek).

[0] https://lore.kernel.org/netdev/20230920180745.1607563-1-aleksander.lobakin@intel.com
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
