Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DE790730132
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jun 2023 16:07:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 62F5883852;
	Wed, 14 Jun 2023 14:07:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 62F5883852
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686751656;
	bh=dwoO5vkOQdwkf9TraaZqaHqGFt5o8zh4ND+z+Gf+S84=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=zzTD+PI7gHu4Px2pzsGacf2iNl7GwcsIu715qQ5X/SkLYU4KPqO12jBNVnxyFbXPR
	 ROpvNywjQfIATuD2HhXdZfrPLbLbVQdDKVbnL/PD3JGQqaNmpGO0g28JglOVFz/2Zn
	 kpvH43kpdtulEERvZ5gVQF7H8yepbyennOfofU0MOL2K5CslK5RlOTjMERVG7fhVQ6
	 C1He7s0X0tGOLT49AM9POcCoOA8TiFQZ1wEgGZCgu7nge8i0hobq8XVYXpJeo0ypuI
	 PkRqKgcg5cTipYj+GUf9gl3Q9MG4V278fSIXFlqBnQIvy40IYvJ+E9ckIk9tf1rHgH
	 TSrUsRu1HVWug==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cH8c5I58HdLz; Wed, 14 Jun 2023 14:07:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4AD418378C;
	Wed, 14 Jun 2023 14:07:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4AD418378C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1F0A51BF2B7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 14:07:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 02EBF41D82
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 14:07:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 02EBF41D82
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OUBk1XYFAqyu for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jun 2023 14:07:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D8BE641C62
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D8BE641C62
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 14:07:28 +0000 (UTC)
From: Florian Kauer <florian.kauer@linutronix.de>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Tan Tee Min <tee.min.tan@linux.intel.com>,
 Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>,
 Malli C <mallikarjuna.chilakala@intel.com>
Date: Wed, 14 Jun 2023 16:07:08 +0200
Message-Id: <20230614140714.14443-1-florian.kauer@linutronix.de>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1686751646;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=EJvyE/C3PvQNTvDv0SaWnfKcEUXisJIN7Dyyhzdk0bk=;
 b=3Q9xpOFUIfL7l3ShdTyCf/oPmQEtVietstpFXDZcC2uxcw2CO16I3QM1SI6PtPAihPoEdQ
 WcSY4OWzi3pUEZylPYJ8dVld3HCtDHwoOV3yl4D+vBbq+xI1RlCBolQYjfUDGggqz64bxO
 /gYjusYOQcHiRgqTxI5dVqmGtvNIN0P4DfFkYjNhS7irCxcug1B5XRZElKy1oWg5j0HNIh
 Y84YDnr/bGYpHetH/WTZUIfR4o5AkGyL2toHMPM/xdd+Wr6wKl/1+3IBku/S5XXgT5xj4h
 a64dKSYV7/3Bp5Krjy5xGcMKjhNQwFDD8/S62mU0/W0H37Chyh79dDKNwyoQ8A==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1686751646;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=EJvyE/C3PvQNTvDv0SaWnfKcEUXisJIN7Dyyhzdk0bk=;
 b=mJ5bM/swMdWLiQBPI6q6TyY9ppPwCbZ9rstTumP66sDYj9b1FTLJZEarsSRivBST0aS3Wm
 YNFRVGe+ccxH+WBw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=3Q9xpOFU; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=mJ5bM/sw
Subject: [Intel-wired-lan] [PATCH net-next 0/6] igc: Fix corner cases for
 TSN offload
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
Cc: netdev@vger.kernel.org, kurt@linutronix.de,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The igc driver supports several different offloading capabilities
relevant in the TSN context. Recent patches in this area introduced
regressions for certain corner cases that are fixed in this series.

Each of the patches (except the first one) addresses a different
regression that can be separately reproduced. Still, they have
overlapping code changes so they should not be separately applied.

Especially #4 and #6 address the same observation,
but both need to be applied to avoid TX hang occurrences in
the scenario described in the patches.

Signed-off-by: Florian Kauer <florian.kauer@linutronix.de>
Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>

Florian Kauer (6):
  igc: Rename qbv_enable to taprio_offload_enable
  igc: Do not enable taprio offload for invalid arguments
  igc: Handle already enabled taprio offload for basetime 0
  igc: No strict mode in pure launchtime/CBS offload
  igc: Fix launchtime before start of cycle
  igc: Fix inserting of empty frame for launchtime

 drivers/net/ethernet/intel/igc/igc.h      |  2 +-
 drivers/net/ethernet/intel/igc/igc_main.c | 24 ++++++++-------------
 drivers/net/ethernet/intel/igc/igc_tsn.c  | 26 ++++++++++++++++++++---
 3 files changed, 33 insertions(+), 19 deletions(-)

-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
