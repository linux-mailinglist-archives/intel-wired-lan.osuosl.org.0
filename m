Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A6BD8569F7B
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Jul 2022 12:20:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2BFD58264A;
	Thu,  7 Jul 2022 10:20:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2BFD58264A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657189256;
	bh=AC82lLqNzO0scPMoZZDlLq0VMTse1C9iGvnK3ZxHKmA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Eespn6GGTvbu7qm0GTlcjhF2Sw7CcQG9fESP4Q841VXLm6X/n38hoPWw1wHcTbUU6
	 oCOWxBf2bHbDTs3jt+QJIGZVhJRXyTnf9DqoPRI+7kOiYpOr5Kd62RJaWKxBVkXgkT
	 lXmgdLb1dE3EhOUD0nrK66zj9AfZqY1rEI9XLz0yLq2aBGrpMZV89jaKFp7TuhEzWE
	 JQl56CwmKI/uDMyHV3KOMkIYqAH1nnx07Zs/uzbpvxzYmMBSbxZY/jTeWhPaEBEf9n
	 nGYgpB/dUBmhY431fPAtr28+u31fM01Au2/5FCrCXE5v2LgoVnrvQ0A4PTojrhDCe2
	 71SCpGZq0+Q7g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8HEMlsesU8_0; Thu,  7 Jul 2022 10:20:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 07E7E82B1B;
	Thu,  7 Jul 2022 10:20:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 07E7E82B1B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C36301BF86C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Jul 2022 10:20:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9D04841886
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Jul 2022 10:20:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9D04841886
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wus7G7SrC7BK for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Jul 2022 10:20:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 98BB6418B8
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 98BB6418B8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Jul 2022 10:20:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10400"; a="267018009"
X-IronPort-AV: E=Sophos;i="5.92,252,1650956400"; d="scan'208";a="267018009"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 03:20:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,252,1650956400"; d="scan'208";a="696458190"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmsmga002.fm.intel.com with ESMTP; 07 Jul 2022 03:20:46 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  7 Jul 2022 12:20:41 +0200
Message-Id: <20220707102044.48775-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657189249; x=1688725249;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BJz5x00XvVwPqcqZX6fSPsHie3Nu/3IdrjAJQfPjjMQ=;
 b=d0sY9F48GlA0ikPh33IE4c/xTEmBKqTyRnnmma0N1BtpCyjTxNt1QOcT
 uxwwIlfBLs3CVe1AW7lMnLh94EKu5sG41XqL43pXFb3KBQ3VGZv17k8NH
 gEeFNEhzo+gib5YUgJu+Rlh0ZypbRYeNExaWVMGEVLti9R4/gQZTvnZWw
 DBxBZ7rdZqC1kgYcP9QwN6ckv3JEqlkI31GDUp8sdWEbw40uDX6uOUiHM
 ISfJc/HTVQmDiUuqAFu8DAvc9Evm/FA1ZNfRf++JQkY3xS0raUjZO40or
 TNhYKEymiZNLwg52Y1mi2wmQ02kYCZ3JoyEr8mr4CIruPTmHreF4bEyYV
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=d0sY9F48
Subject: [Intel-wired-lan] [PATCH intel-net 0/2] ice: bring up ethtool
 selftests
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
Cc: netdev@vger.kernel.org, john.fastabend@gmail.com,
 anatolii.gerasymenko@intel.com, kuba@kernel.org, davem@davemloft.net,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently `ethtool -t $IFACE` fails for loopback testing.
These two small patches bring it back to life.

These were pulled out from
https://lore.kernel.org/bpf/20220616180609.905015-1-maciej.fijalkowski@intel.com/

and now I route them via net tree as fixes.

Thanks!
Maciej

Maciej Fijalkowski (2):
  ice: check (DD | EOF) bits on Rx descriptor rather than (EOP | RS)
  ice: do not setup vlan for loopback VSI

 drivers/net/ethernet/intel/ice/ice_ethtool.c | 3 ++-
 drivers/net/ethernet/intel/ice/ice_main.c    | 8 +++++---
 2 files changed, 7 insertions(+), 4 deletions(-)

-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
