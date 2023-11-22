Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AB1A67F3E5F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Nov 2023 07:53:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 28B2781AF3;
	Wed, 22 Nov 2023 06:53:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 28B2781AF3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700635980;
	bh=lWGBl7nhqq5uvbi6r2RDegRfmwTtYMQvlk+1byR+zek=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=MIgaro8hcupWtFmueP+gtgEGys+y/zo6jaP2aFaeY1uMIyOZh7r4+WESSwNQHFgrH
	 LE+Iu3sopD6pC6H3WbqL78fniYJ6s+S96e2W3s0G7WKm4sPwidhoWLiflPRZfAf5xU
	 gLkNJJMXbDvfWG2n3RAtvWtbd2NQWohojhC4Q36XeHr5GQdW3UNmGwwPOeyC3CyGqJ
	 HwRuvGxVO8vErOz5oeRVGJ7XeD27rFznQxWNTRS/MTturHaA4k21y1xKpFhnTzcpgw
	 +HTDtJQQ3o+QDBlQoDLsLX85zXw9IYMrRUTfN7I5mtOD0ri0lwLCjza4K3J0O/MHm5
	 oX1hkle6b/D/g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 61dP3mA_fjZM; Wed, 22 Nov 2023 06:52:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F3A8681819;
	Wed, 22 Nov 2023 06:52:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F3A8681819
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1DD161BF39A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Nov 2023 06:52:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DFCBB40484
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Nov 2023 06:52:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DFCBB40484
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YhmbMJeqRPzt for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Nov 2023 06:52:53 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BF59E4011A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Nov 2023 06:52:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BF59E4011A
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="394831195"
X-IronPort-AV: E=Sophos;i="6.04,218,1695711600"; d="scan'208";a="394831195"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 22:52:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="770492390"
X-IronPort-AV: E=Sophos;i="6.04,218,1695711600"; d="scan'208";a="770492390"
Received: from fedora-sys-rao.jf.intel.com (HELO f37-upstream-rao..)
 ([10.166.5.220])
 by fmsmga007.fm.intel.com with ESMTP; 21 Nov 2023 22:52:51 -0800
From: Ranganatha Rao <ranganatha.rao@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 21 Nov 2023 22:47:14 -0500
Message-ID: <20231122034716.38074-1-ranganatha.rao@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700635972; x=1732171972;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lnk0AR0iJLU/GDfM/FT+r8pH4x2MEkHin41VaFUQH9s=;
 b=QpI1qwejBlWRu2nVK76L8ksdwfqef8jtxMbjsD/vJ/Li+HN5bH4eH2pb
 iXa8yB9vQgxwST81SZjAiECCO5YxIe/Ntr7WvGf2xSnhi+aaBMcitIBDZ
 XXZl1LCAWSMEc2At9tOsIqdcL3fxhoJ+Xei9i3b4ZrbcXZRzsSe68b/uo
 CODT8ZvXOgPCNWUv05s6RFRd/Tp2XoSD/b31/roGcefInGSh4pModghQo
 cpruN4I4DUZ7RMqy1v0TxeyjfJMbpuJY7OtJBX19Z7vdfhHtZr4zVyDPj
 MwepsNtC3s6A4PfSJIngx9JEcB1oS29d+EevDU5ROh092xQWgIA5EXXuz
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QpI1qwej
Subject: [Intel-wired-lan] [PATCH iwl-net v1 0/2] Introduce new state
 machines for flow director
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
Cc: Ranganatha Rao <ranganatha.rao@intel.com>, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fixes current design flaws in flow director by introducing additional state
machines.

Piotr Gardocki (2):
  iavf: Introduce new state machines for flow director
  iavf: Handle ntuple on/off based on new state machines for flow
    director

 drivers/net/ethernet/intel/iavf/iavf.h        |   1 +
 .../net/ethernet/intel/iavf/iavf_ethtool.c    |  27 +++--
 drivers/net/ethernet/intel/iavf/iavf_fdir.h   |  15 ++-
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 107 ++++++++++++++++--
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  71 +++++++++++-
 5 files changed, 198 insertions(+), 23 deletions(-)

-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
