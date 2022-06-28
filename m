Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D40755E50C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Jun 2022 15:43:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B922581A34;
	Tue, 28 Jun 2022 13:43:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B922581A34
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656423808;
	bh=/mYp7aXNzaHkl5w9sSxWjSrMmSIfq6NCzsOgyKvxgqU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Ti4JacK/eBzBTIdE81T1DZu+Z53VMsLeQWdwfSkDDZYW1Bdgg5vgeN5aQ4WqWVJlJ
	 kDolGtodRd3ODudRk47bGIp3/4ZQpjL9LOnYFI4cki+wErYZdAPaqf2IJsq9xcez0C
	 YlfJaeSViMPMY/Ej6bfiLfJl46IZiB/y9Qa4M8rHSi6DVuj/MuN7B+8jX8QaC/rfWi
	 gJVfty7/qLjyBilfSFffWQjIeUdZV7WBfT/YeOnL9O3w4xwG+eQHzA42uFxHo3u1rA
	 d1uYOVHx3ZryoQSwfKMdZj5sK5dpoi8hnzBcyIDDYe7HG2w/2HJgKxljFxqtJ+yLL8
	 H7nrWx3CAd3NQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uPSJJEc-5mdV; Tue, 28 Jun 2022 13:43:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9ADF8814B3;
	Tue, 28 Jun 2022 13:43:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9ADF8814B3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AADFF1BF28B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 13:43:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 83D674087E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 13:43:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 83D674087E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J40KCvHe-JoU for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Jun 2022 13:43:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9CACE4006B
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9CACE4006B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 13:43:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10391"; a="261546594"
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="261546594"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 06:43:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="836678159"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by fmsmga006.fm.intel.com with ESMTP; 28 Jun 2022 06:43:20 -0700
From: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 28 Jun 2022 15:43:08 +0200
Message-Id: <20220628134308.706012-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656423801; x=1687959801;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KTQ6RpJFT/xHNddEGva2SgecDnp2aFY4bDOlMbhM3ac=;
 b=gyXwVHHAbW28I/Gt50CIySHJ/Ujh29hociG3K1lqF6UyLOHl2HrJ79z0
 68676PaYCT5oroovPL68O4qBJSduZ2p3cqYKOz0jZ1Uwuv1HRyIpssyN0
 HE61/dDn9mV0wlAcDacNDes9haZ8fnzL2b0yIa2aa/Cv9KyRiBQUu+QQl
 j3SRvVpu3aYLMa7UAywgVK36gP6gwRNso6G3zGXwZyvn6o8uxRilRmkrX
 WtomZTU4YbjXv2OE+5GMWjAOXtNvY8SDRCrYChyDxzf3zTf2C3H5Wjwto
 F1jj7hdr8vPLOYU3y1oVzr/BWXMPcQxsYmHDAjre4aCHwGV3O3uOWIIAq
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gyXwVHHA
Subject: [Intel-wired-lan] [PATCH net v2 0/3] iavf: Fix pending DMA
 allocations while released from device
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix multiple issues that can arise, when VF cannot configure ASQ/ARQ properly.
Failing to do so can lead to driver hang, null ptr dereference and possible
DMA allocations leak.

---
 v2: Add comment to make code more understandable
---

Przemyslaw Patynowski (3):
  iavf: Fix reset error handling
  iavf: Fix NULL pointer dereference in iavf_get_link_ksettings
  iavf: Fix adminq error handling

 drivers/net/ethernet/intel/iavf/iavf_adminq.c  | 15 +++++++++++++--
 drivers/net/ethernet/intel/iavf/iavf_ethtool.c |  6 ++++++
 drivers/net/ethernet/intel/iavf/iavf_main.c    | 14 ++++++++++----
 3 files changed, 29 insertions(+), 6 deletions(-)

-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
