Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9577E6A6C05
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Mar 2023 13:00:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A8B7860FF9;
	Wed,  1 Mar 2023 12:00:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A8B7860FF9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677672019;
	bh=Gp57vdH7B6FsHme+d63j0TcVL5gXR234ZK4r1bfo3xI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=h8r6hqA10LalEhuJMPFQK4jQRM+6tSM9CmJfAuQ6SZM3f0fHhLC3FNoyGTZPVm1og
	 oDV3NmFf1jpBn68PSV5z07dcxZgIDnHVbuuAy/Uu41J+Jpl8K3ASOhUlMwZhlX6Gy3
	 TaYTnx+cWDB1jvHl2PODoLrBctfi492z8NLgPxHicaDieEXzExul0BF2ahia6L4JXV
	 UBFLBgJgfyPLLjYFPgsR2+TIA6LgHeiSVnP4hYc636NlzPa6tijAQJV0yLs8OspyAs
	 lBUAR5HPyEO/e1/vJP4b4X1bGo4XXncvlOh56bPVdeMhV5ldLwCLf3rEdzK1v8A6Fe
	 VFy2UdffMaCNg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IVuqP-4GoW5y; Wed,  1 Mar 2023 12:00:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9F27560E96;
	Wed,  1 Mar 2023 12:00:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9F27560E96
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B37881BF5B5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Mar 2023 12:00:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 99EEC60FF9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Mar 2023 12:00:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 99EEC60FF9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0VpPrMj2qLQJ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Mar 2023 12:00:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E97D560FBC
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E97D560FBC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Mar 2023 12:00:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="331870245"
X-IronPort-AV: E=Sophos;i="5.98,224,1673942400"; d="scan'208";a="331870245"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 04:00:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="743405092"
X-IronPort-AV: E=Sophos;i="5.98,224,1673942400"; d="scan'208";a="743405092"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga004.fm.intel.com with ESMTP; 01 Mar 2023 04:00:09 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id E2F9636A0B;
 Wed,  1 Mar 2023 12:00:08 +0000 (GMT)
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Wed,  1 Mar 2023 12:59:06 +0100
Message-Id: <20230301115908.47995-1-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677672014; x=1709208014;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WRHLtls8wXHkKG0wPUdAzJHiEECJD6P2u5mrgkq32og=;
 b=HaaHNII3jQINjpXqntN/xPeNsIQfwWSQNbPPwztJ42FIWLbPbM5m4NQi
 nv4IwoRFVeaJB7bviP5YCgH119QjfIdrffAlooyO55s47T+fwppUnE0+q
 R6CdWk/GPUErJ7TU03V0RFqsw6s9SC/1Vi+OSo3+mky2toOMQtlI5uq24
 gy5hGkXVHmQQhKipgUfXl/tlerp88H0WR2/kLML1BzERVTyXlvNvIepyN
 JjnfafN2pjgHKL+KEDq47CBoMBJ0nUbRnRsxbGQEGmQez1CHLhiI6Qhv5
 oyijKU+nGMyL8Nq2HUTlo1LpHGIwEoYIxmsAeznxxwA71FDMkiGjxj6dS
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HaaHNII3
Subject: [Intel-wired-lan] [PATCH RESEND net v1 0/2] iavf: fix double-broken
 HW hash report
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
Cc: Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently, passing HW hash from descriptors to skb is broken two times.
The first bug effectively disables hash from being filled at all, unless
%NETIF_F_RXHASH is *disabled* via Ethtool. The second incorrectly says
that IPv6 UDP packets are L3, which also triggers CPU hashing when
needed (the networking core treats only L4 HW hash as "true").
The very same problems were fixed in i40e and ice, but not in iavf,
although each of the original commits bugged at least two drivers.
It's never too late (I hope), so fix iavf this time.

Alexander Lobakin (2):
  iavf: fix inverted Rx hash condition leading to disabled hash
  iavf: fix non-tunneled IPv6 UDP packet type and hashing

 drivers/net/ethernet/intel/iavf/iavf_common.c | 2 +-
 drivers/net/ethernet/intel/iavf/iavf_txrx.c   | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

---
To Tony: this is very trivial and tested for a while already, I hope it
could hit one of the first couple RCs :p
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
