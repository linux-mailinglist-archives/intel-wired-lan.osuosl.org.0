Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 35B3284B574
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Feb 2024 13:41:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CE669822BA;
	Tue,  6 Feb 2024 12:41:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id npEtLTV8BpZM; Tue,  6 Feb 2024 12:41:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EB57D82112
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707223305;
	bh=eR2THllK0KtCPBhx39vx3WtiqXiZ23fHpHQZ2gPt2Mw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=B9WLKjXlh1oo1s+LRfwitW29xSxgVuEF6ggIjtLTP7C+qW9ZUZE+52zsDmnUtRX/m
	 nCAlz9i/jOTgR0q7T3jKWEJomYV9Ux6PTRwfMJ4y2kPOQ8tGtY1mGRBpfD1ZhoVP7e
	 0IWv0PWsp99FhzIXAkogobGwE2vLEIua1dgZa1p0fIS56/2h6wn+XHvAgQu8cHYZok
	 wFOqaQMUBegmt7fc+CvFZHXeZmVmVH5nPWSsx+2NBiT49bE5Pdv4YXhcAusOVIT5pD
	 vvweV72yEWOlLG5MOvuk5R6LunKHpGQDbdMUg4aiBJmaEuva4BmT6JG8QJUq1PKYDZ
	 /IVnLdaZj0x6g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EB57D82112;
	Tue,  6 Feb 2024 12:41:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B0C491BF33B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 12:41:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9CA5082155
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 12:41:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f4ELFP8eb-gh for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Feb 2024 12:41:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 193C281E22
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 193C281E22
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 193C281E22
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 12:41:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10975"; a="18255145"
X-IronPort-AV: E=Sophos;i="6.05,247,1701158400"; d="scan'208";a="18255145"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 04:41:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,247,1701158400"; 
   d="scan'208";a="5619960"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmviesa005.fm.intel.com with ESMTP; 06 Feb 2024 04:41:38 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  6 Feb 2024 13:41:30 +0100
Message-Id: <20240206124132.636342-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707223301; x=1738759301;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fxxjh3UqiJAydxb1IXIY8ysNe/Wha4hgqHcWwa+iSdw=;
 b=ipdjLfcVFR2z68sKQViS4su7HeYENOpVcsyuE8Yxgagf06qG2nmZ12zB
 LKfm83VhQ5qdUax21yDCe75Qx0+GoCWlZcUHlf1NQfT1TBAUlmEFb5lvM
 50MKWerlLetsiKoWcmbYdtT5elTvPtqHKZL1WS9ZWqPMH969dzIJXq9zV
 B+CWimzqwq4pdpBYo4hw5QA7lLztCPbawjek/fUeHqxtn1Rlc3h0sqMYp
 BPvJfKX8XIoxgw3hQ8WFx/QxoS9263+d68sv3zhiPXB7lguCebVEn1arK
 R15RYP3XMQYt2ukXHrjSgpTulSooZGdlGxBG0vc+hvx3gt2sC6u9vkxOu
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ipdjLfcV
Subject: [Intel-wired-lan] [PATCH v2 iwl-net 0/2] i40e: disable XDP Tx
 queues on ifdown
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
Cc: netdev@vger.kernel.org, Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 anthony.l.nguyen@intel.com, magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Seth reported in [0] that he couldn't get traffic flowing again after a
round of down/up of interface that i40e driver manages.

While looking into fixing Tx disable timeout issue I also noticed that
there is a doubled function call on Rx side which is fixed in patch 1.

Thanks,
Maciej

[0]: https://lore.kernel.org/netdev/ZbkE7Ep1N1Ou17sA@do-x1extreme/

v2:
- include vsi->base_queue when calculating tx_q_end
- add tags from Simon and Seth

Maciej Fijalkowski (2):
  i40e: avoid double calling i40e_pf_rxq_wait()
  i40e: take into account XDP Tx queues when stopping rings

 drivers/net/ethernet/intel/i40e/i40e_main.c | 22 +++++++++------------
 1 file changed, 9 insertions(+), 13 deletions(-)

-- 
2.34.1

