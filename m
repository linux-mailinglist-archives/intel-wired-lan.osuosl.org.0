Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E9046B228FD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 15:46:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9DB3341D0B;
	Tue, 12 Aug 2025 13:46:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tnF-9vcmzOfR; Tue, 12 Aug 2025 13:46:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 70ECC415D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755006374;
	bh=lwhzrYtvQwE/T2R0PdvRI2nNufS5v3oYaxAwGcBNE+4=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=qIhkymnQQZlLi7wHDNv9f9MTUgcgsr0Ykhao2ZL7u3jFiKYvA7iw5j9cvpNaQvpmx
	 r6twacTCCmCk0EIc7WhcGsF1dV4hZBpNKlw/0O+8lvTPpGi1re8+nOBca8+m8uaFPU
	 VHW0oOdBojTCNU2ebT/SxHgxJ59QVHSLLggRVQryoeTGeO42kfm8oASxMqkfqmKJ34
	 MrIOOBHAxjBvy6HkkumbMs/SdH8PIKOjT12EkQ4+dGfTrzZFAMnfK2dMmdhL6YgsQ9
	 jLkCrfouz0RgNCVZBlfZGEoXnVZ7SSv4DDs8H1Ctn0AbmKJLAiwqsd0/1hWBknnwXB
	 QmCTs6CYdWU+g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 70ECC415D3;
	Tue, 12 Aug 2025 13:46:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3528F183
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 13:46:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 37A5441309
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 13:46:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9x1gc7l220ix for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 13:46:10 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 12 Aug 2025 13:46:10 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 111484123E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 111484123E
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 111484123E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 13:46:09 +0000 (UTC)
X-CSE-ConnectionGUID: qjcld+rOT0+gnJI7s6jjjQ==
X-CSE-MsgGUID: MLVvXS9/R76ezno4nPrpog==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="56994313"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="56994313"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 06:39:03 -0700
X-CSE-ConnectionGUID: 5fStNXzpTm6NL+iPSuqkyA==
X-CSE-MsgGUID: lDrHrFE0ThWRL9eSYz9dvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="170416049"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa005.fm.intel.com with ESMTP; 12 Aug 2025 06:39:00 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id D688C32CA9;
 Tue, 12 Aug 2025 14:38:59 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: netdev@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Kuniyuki Iwashima <kuniyu@google.com>
Date: Tue, 12 Aug 2025 15:28:58 +0200
Message-Id: <20250812132910.99626-1-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755006371; x=1786542371;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MhQnbbRJKJFo03WUy91c4aznF4eJWFz5905kdrgeldo=;
 b=Vs28g9ESpNcnoH5oJlXD1E5oWIsfW15m1hjmiGy9EH+XiSmU2RTm5paJ
 G6S2x8vtdPjahUv+Zo+R139+X0jNQolbFGa9k/h/wg8lKGilDofegT+V+
 L8epajF44oYL1lTcha1fmqhdlBptti335Nxx2YxEy3D5YPfMAPnNgBLZu
 eGOMJNDWJ3GqYt0fXa+OJTbYjm0jPulyw79drZZVqP7J+50lg4Rs+Rgqa
 FxRz7qQcShiy4C2Kb6+cs6jm4bxZRBXSsSNtxHtt8Zrzunfej+kyYxsaQ
 JAvI/a3HH/OGZWSFyi+NMiquSdfDjPqGaytjtW2vtmxSkyGH34GMpD7zy
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Vs28g9ES
Subject: [Intel-wired-lan] [PATCH 00/12] ice: split ice_virtchnl.c git-blame
 friendly way
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

Summary:
Split ice_virtchnl.c into two more files (+headers), in a way
that git-blame works better.
Then move virtchnl files into a new subdir.
No logic changes.

I have developed (or discovered ;)) how to split a file in a way that
both old and new are nice in terms of git-blame
There were no much disscussion on [RFC], so I would like to propose
to go forward with this approach.

There is more commits needed to have it nice, so it forms a git-log vs
git-blame tradeoff, but (after the brief moment that this is on the top)
we spend orders of magnitude more time looking at the blame output (and
commit messages linked from that) - so I find it much better to see
actual logic changes instead of "move xx to yy" stuff (typical for
"squashed/single-commit splits").

Cherry-picks/rebases work the same with this method as with simple
"squashed/single-commit" approach (literally all commits squashed into
one (to have better git-log, but shitty git-blame output).

Rationale for the split itself is, as usual, "file is big and we want to
extend it".

This series is available on my github (just rebased from any
earlier mentions):
https://github.com/pkitszel/linux/tree/virtchnl-split-Aug12
(the simple git-email view flattens this series, removing two
merges from the view).


[RFC]:
https://lore.kernel.org/netdev/5b94d14e-a0e7-47bd-82fc-c85171cbf26e@intel.com/T/#u

(I would really look at my fork via your preferred git interaction tool
instead of looking at the patches below).

Przemek Kitszel (12):
  ice: split queue stuff out of ice_virtchnl.c - p1
  ice: split queue stuff out of ice_virtchnl.c - p2
  ice: extract ice_virtchnl_queues.c: cleanup - p1
  ice: extract ice_virtchnl_queues.c: cleanup - p2
  ice: split RSS stuff out of ice_virtchnl.c - p1
  ice: extract ice_virtchnl_queues.c: cleanup - p3
  ice: split RSS stuff out of ice_virtchnl.c - p2
  ice: finish ice_virtchnl.c split into ice_virtchnl_queues.c
  ice: extract ice_virtchnl_rss.c: cleanup - p1
  ice: extract ice_virtchnl_rss.c: cleanup - p2
  ice: finish ice_virtchnl.c split into ice_virtchnl_rss.c
  ice: add virt/ and move ice_virtchnl* files there

CC: Kuniyuki Iwashima <kuniyu@google.com>

-- 
2.39.3

