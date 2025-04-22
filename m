Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B3DA9711F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Apr 2025 17:37:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 03C8F80E8B;
	Tue, 22 Apr 2025 15:37:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f-pETfSBYizX; Tue, 22 Apr 2025 15:37:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 701A180F36
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745336240;
	bh=vuuHwVAGqQaQ+C7sZrOla7S4OpWQhHcoSxkfrDiyCE0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=9NgF+j++0hMPXl3P8TU0bmSvkZZG5PWo1EFto0rOFzmMahrvPNuC4i4ytGSceE6oM
	 4R5ljUNho5raumgBqLLf3H10yDpBKC1ihaI8OVVAin48jhTUryFLgTewzcl3HQ2JYq
	 Z9CqQeMwiqB3Rqnp7b15sKzhydxwrSHm33410+LNlr5FcexYdrxfyo7u6SgdZCDD4H
	 l824lBM2nRtonibojhZi85xakDVEcaJj5LDXJdmHSeDfRC3lzgKZj5su80uJOUu1q7
	 BplBe2oapA5KwNl7Z9/thhrq4iCuwey/fg+/d7h+5fDvXaqydzBCyPkK2xmWBGVMeH
	 7/+DgItc5hwDw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 701A180F36;
	Tue, 22 Apr 2025 15:37:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id C17D51BC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Apr 2025 15:37:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B2D9840422
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Apr 2025 15:37:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JtJrVL5oGglx for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Apr 2025 15:37:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=michal.kubiak@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CB7EE4031B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CB7EE4031B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CB7EE4031B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Apr 2025 15:37:17 +0000 (UTC)
X-CSE-ConnectionGUID: lAdfJLf/R7CMw2zUY78Aaw==
X-CSE-MsgGUID: jeuVsXLEQwyOaXD/D5/zdw==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="64312334"
X-IronPort-AV: E=Sophos;i="6.15,231,1739865600"; d="scan'208";a="64312334"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 08:37:17 -0700
X-CSE-ConnectionGUID: 993qaqTfRcylNdp9inO42A==
X-CSE-MsgGUID: Yfx8QJ6jRU6QZzwAgMXCOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,231,1739865600"; d="scan'208";a="131947817"
Received: from gk3153-pr4-x299-22869.igk.intel.com (HELO
 localhost.igk.intel.com) ([10.102.21.130])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 08:37:14 -0700
From: Michal Kubiak <michal.kubiak@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: maciej.fijalkowski@intel.com, aleksander.lobakin@intel.com,
 przemyslaw.kitszel@intel.com, dawid.osuchowski@linux.intel.com,
 jacob.e.keller@intel.com, netdev@vger.kernel.org,
 Michal Kubiak <michal.kubiak@intel.com>
Date: Tue, 22 Apr 2025 17:36:56 +0200
Message-Id: <20250422153659.284868-1-michal.kubiak@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745336238; x=1776872238;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=n/Ymh0EFbuVorEMi04SIWJFnWO9TGcRoXwxRzF2Endo=;
 b=Mz2pG2xdhCci3J525xKnSb5L4+Cb3BaUvuysZK97Zod9aHpHs0d5zZlz
 9jYHvyVmaopl6XPH9AEG4nJmY/mDQQL1TBV3jLziqfcE6wUIYoTkiHhb5
 yG/OA1o/yVqSzND9ijpCALEzRzazKt4/A78O0bjVuh+WSDQ5kyVJ8//rU
 JVmR65f4HJCzDG3C9YiJ8S4TbTSLI29QCiwtF/W8f6fkM0XWRx8jBaXwy
 MXLWjiB4KNqyMdMCw1+jwXhshksrKxDRevN0oQ9cHpKsl9v7oMPzntIaG
 iBJKKNw/CQz60TMzTPb3ghq8XyxO68R1WeIIi/9/OrC8cYl/2jYZG7w4v
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Mz2pG2xd
Subject: [Intel-wired-lan] [PATCH iwl-net 0/3] Fix XDP loading on machines
 with many CPUs
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

Hi,

Some of our customers have reported a crash problem when trying to load
the XDP program on machines with a large number of CPU cores. After
extensive debugging, it became clear that the root cause of the problem
lies in the Tx scheduler implementation, which does not seem to be able
to handle the creation of a large number of Tx queues (even though this
number does not exceed the number of available queues reported by the
FW).
This series addresses this problem.

First of all, the XDP callback should not crash even if the Tx scheduler
returns an error, so Patch #1 fixes this error handling and makes the
XDP callback fail gracefully.
Patch #2 fixes the problem where the Tx scheduler tries to create too
many nodes even though some of them have already been added to the
scheduler tree.
Finally, Patch #3 implements an improvement to the Tx scheduler tree
rebuild algorithm to add another VSI support node if it is necessary to
support all requested Tx rings.

As testing hints, I include sample failure scenarios below:
  1) Number of LAN Tx/Rx queue pairs: 128
     Number of requested XDP queues: >= 321 and <= 640
     Error message:
        Failed to set LAN Tx queue context, error: -22
  2) Number of LAN Tx/Rx queue pairs: 128
     Number of requested XDP queues: >= 641
     Error message:
        Failed VSI LAN queue config for XDP, error: -5

Thanks,
Michal


Michal Kubiak (3):
  ice: fix Tx scheduler error handling in XDP callback
  ice: create new Tx scheduler nodes for new queues only
  ice: fix rebuilding the Tx scheduler tree for large queue counts

 drivers/net/ethernet/intel/ice/ice_main.c  |  47 +++++++---
 drivers/net/ethernet/intel/ice/ice_sched.c | 103 +++++++++++++++++++--
 2 files changed, 126 insertions(+), 24 deletions(-)

-- 
2.45.2

