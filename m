Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE2D75A94CF
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Sep 2022 12:40:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8A573410EF;
	Thu,  1 Sep 2022 10:40:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8A573410EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662028851;
	bh=TsZWBLCujgHwySaFWNgoIp2snmPlQcUfXDZKQ7hB+6A=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=gtyfYnQquAapityojpKQ5Mp2WP2mdYAraQiDVW8poKYFyHicJB43knI1P+E3Q8IkG
	 gWTCn7GfVTqa+XBs1pB1EjCpnvpvzJNLlQDc34geo3Rdo9k2L0bOOXhyniOyFLkG3s
	 kNG1/qHwHGqC7AZMEmJjCbMW6iNjKbrmdAZNX9Hb8eLsWa8Hp3gkCy2vKQAi9fu7gK
	 AJMJ5VvIqCsQnTRkyAcZbb16br5DxgAffV3XJpqEGj6cp892pcHjqo8/ST33a7T8Wb
	 hocNrXlZ/NqokvmMShf+fago9zp7PibDSc7G8ESpxGcr4USHgXkgBs3iY6Qamq7QpT
	 2YlVM01oltVcg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s6C7hNBNXBB8; Thu,  1 Sep 2022 10:40:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 80A05400DD;
	Thu,  1 Sep 2022 10:40:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 80A05400DD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AC66C1BF3FB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 10:40:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 934FF410D6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 10:40:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 934FF410D6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3nHQYJCV6a07 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Sep 2022 10:40:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CBA0F400DD
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CBA0F400DD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 10:40:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="276082773"
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="276082773"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 03:40:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="857801156"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmsmga006.fm.intel.com with ESMTP; 01 Sep 2022 03:40:42 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  1 Sep 2022 12:40:38 +0200
Message-Id: <20220901104040.15723-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662028844; x=1693564844;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ldRO/Hqc+BxfjmQ0KMK1BIF3nGuLHXkqCkrsqB0q2WI=;
 b=Hc1kwoDADJHAyVCUCaZ+xDMzUreK/iRRKvbcfmOUNOPibWrvJ5XCyAml
 ngvdipVtgia4nhQbwuivrcdfZbvx/g4M7d3E+fnW7VUbgMGeufRp30kcB
 b0ZJiY2DqLz1RddN+lPXzR8h0T2nZwTYzP56CR3da/OhW3Wa1vxnMM3Wa
 t1bNDOp3ys/F0dYlA9+VZzh0f23xm8OHrMI0mRERmUYcus+pHlQAbU9Oq
 82NfSiZ8t3bQT4gXmXc6TWzBd730GZ+AlYNSK1KV1fhIcw5sSlp7E5rTv
 v1jjLhEmMT4ZBQPWpUxGYe2dduZ1fT2zzJySu04cHJQByZ7pXXnPhKd3g
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Hc1kwoDA
Subject: [Intel-wired-lan] [PATCH v3 intel-net 0/2] ice: xsk: ZC changes
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
Cc: alasdair.mcwilliam@outlook.com, netdev@vger.kernel.org, bpf@vger.kernel.org,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

this set consists of two fixes to issues that were either pointed out on
indirectly (John was reviewing AF_XDP selftests that were testing ice's
ZC support) mailing list or were directly reported by customers.

First patch allows user space to see done descriptor in CQ even after a
single frame being transmitted and second patch removes the need for
having HW rings sized to power of 2 number of descriptors when used
against AF_XDP.

I also forgot to mention that due to the current Tx cleaning algorithm,
4k HW ring was broken and these two patches bring it back to life, so we
kill two birds with one stone.

v3:
- make sure patches apply to net

v2:
- remove doubled fixes tag from patch 1
- add Alasdair to CC as he reported need for bigger rings used with
  AF_XDP ZC

Thanks!
Maciej

Maciej Fijalkowski (2):
  ice: xsk: change batched Tx descriptor cleaning
  ice: xsk: drop power of 2 ring size restriction for AF_XDP

 drivers/net/ethernet/intel/ice/ice_txrx.c |   2 +-
 drivers/net/ethernet/intel/ice/ice_xsk.c  | 163 +++++++++-------------
 drivers/net/ethernet/intel/ice/ice_xsk.h  |   7 +-
 3 files changed, 71 insertions(+), 101 deletions(-)

-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
