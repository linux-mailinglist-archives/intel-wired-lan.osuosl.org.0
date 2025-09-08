Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 87670B48C6B
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Sep 2025 13:43:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F068661C46;
	Mon,  8 Sep 2025 11:43:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V6Lg7d4V_fax; Mon,  8 Sep 2025 11:43:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 775B561C26
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757331833;
	bh=NRenJOOJcodvtGXgZ1ou0ol6Kc1L6hYXIXSx9T9irk8=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=z2ln9hD7Ag6uufQMZhQ5d2wNALIgXBIEDjzOMZxm7KMpYSe9iRcxjhtREZIMjCLy5
	 3mDlp8asX5pyrWYCV/DzJdv/V+W2TbRB+8mYbHwjVjkTK46pZfVdc72W5nEO9f+b+l
	 NTHyIPtlHTiflnlb6jBGFgZkQDqEStiHgdHyueWdAitv0hTtWy6Y9XukFb69kKfW+1
	 L8QnyDcM596mxptH5RvTOiPA8XABxN6TdJyOZaW8FoFxmGWUZxIj13A2opNvic8c0w
	 eyWbpww/pkUJqT2++M8M/xQ3LV301xeFe1ytqcOgiJPwcF6iX9AphmJho/rhdf3YgE
	 SRdNgYpHK4lXA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 775B561C26;
	Mon,  8 Sep 2025 11:43:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 712E7CA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Sep 2025 11:43:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5769184EEE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Sep 2025 11:43:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GvjPlaeJRs22 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Sep 2025 11:43:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9A41E8454B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A41E8454B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9A41E8454B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Sep 2025 11:43:50 +0000 (UTC)
X-CSE-ConnectionGUID: cSVKf8/PSLGY5dG7ffvH6g==
X-CSE-MsgGUID: LsKau9qpSr+WQoIbSooBnA==
X-IronPort-AV: E=McAfee;i="6800,10657,11546"; a="63412829"
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="63412829"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 04:43:49 -0700
X-CSE-ConnectionGUID: /1bOsHKHRp+RsY/XapnyjA==
X-CSE-MsgGUID: x4/7f681QdedMmB6hl5CWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="177126082"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmviesa005.fm.intel.com with ESMTP; 08 Sep 2025 04:43:48 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Date: Mon,  8 Sep 2025 13:26:27 +0200
Message-Id: <20250908112629.1938159-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757331830; x=1788867830;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cj3DufsB9KuohV6+o1exFCW2sERmdm38ERn1NLLh3KQ=;
 b=T5hkS/I9ROc2hp5dXjYXrdbZ1fd9kgjyi91T6WG5vqEh2ewCuBWhaXvt
 aUdlsla1ZBQ70rAti9g4T6GUb6/b3MsnZJDpJAiYl2LkTbkHxC++LbOPc
 xKeFXFHzubEKS4vit2FjEGRjvfnzoT6UVNTiuC5vowL/STUGaBedS6iFP
 Fej5heZsbFFrIwOlQLeBAouZdK5xogV0RGV9EEYUPRfkAMOZzqy4+rnkE
 S22Xlin9GlHBAfu6n9AkzipAg0gGZuci7xOTrCMWGlcVeB/d+epc1tPxJ
 D5RULgHQhX2cRU67k1i+NIRCIOCYQ2JJTt8bH3G5DZDivCgClAhWL7gbg
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=T5hkS/I9
Subject: [Intel-wired-lan] [PATCH iwl-net v2 0/2] ixgbe: fix aci.lock issues
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

There are 2 mutex (aci.lock) issues in ixgbe driver:
1) call trace on load - addressed by the 1st patch
2) call trace on unload - uncovered by the 1st patch and fixed by the
   2nd one

Both issues are highlighted by the commit 337369f8ce9e
("locking/mutex: Add MUTEX_WARN_ON() into fast path") and appear only
when CONFIG_DEBUG_MUTEXES flag is set.

Jedrzej Jagielski (2):
  ixgbe: initialize aci.lock before it's used
  ixgbe: destroy aci.lock later within ixgbe_remove path
---
v2: introduce additional patch in order to fix call trace appearing  after
applying 1st patch - call trace on reload
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 22 ++++++++++---------
 1 file changed, 12 insertions(+), 10 deletions(-)

-- 
2.31.1

