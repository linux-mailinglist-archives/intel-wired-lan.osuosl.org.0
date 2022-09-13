Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2615B6E7C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Sep 2022 15:38:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 13F3340354;
	Tue, 13 Sep 2022 13:38:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 13F3340354
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663076327;
	bh=9q5OMjcNRginaCasRbok8Q1Nt0V28eLbAu+gwNxphgI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=rdpN3MspKUUY439mGH2aszHL9EhwQTwR2ODupPobvix95VjDwxuUyqORrYqhKdtzs
	 qlIgA0QiAFT33D7qHjDc1XzoWOd5HPihhD4+gBBnp3XwasZZoGEAiSulvmCLC1scyx
	 mV6hKPECmHtk8c6UZ603yANXx0ysyf4VYYSFat76lmbUz/jUbQjKNHdTuPXqnobaC9
	 6wgb/8XG4kF5AdpD1cuL8dgBNdpM8+EuO43gIIrlhIpgsyKkVu+qqbZYW20TMOwpeo
	 OLD3hB5Vie6C1oKgpjqngTY9OOKA3muL1oUOOD3IunR0RxpcWK/3a61J4bormA/DZo
	 HDDbc8wAJA/Ug==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bnyblmOgzeyI; Tue, 13 Sep 2022 13:38:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CCA3C40356;
	Tue, 13 Sep 2022 13:38:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CCA3C40356
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 37B6C1BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Sep 2022 13:38:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0EC4B40982
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Sep 2022 13:38:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0EC4B40982
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FfCaaheeHOIW for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Sep 2022 13:38:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4C79F40490
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4C79F40490
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Sep 2022 13:38:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="298141325"
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="298141325"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 06:38:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="678569549"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmsmga008.fm.intel.com with ESMTP; 13 Sep 2022 06:38:37 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 13 Sep 2022 15:38:34 +0200
Message-Id: <20220913133836.48284-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663076319; x=1694612319;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8Ko2csT6dFjmYW8iy8RMdZxrszdp2MZ9OZCpLJAo1CI=;
 b=gK5ZNz85kHoHJz/G8CziMELCg7Z1l6EOIEGGFNFKIZgoY9sFM/tlPYrq
 vgvR1ZvfPBDKCGn9BIkOYsolzc5DsFICflgMJuRkf+aCZUQswFxp7KZ7J
 FMWHPvvx8PmoEWz3IjLsrqbqbTy4nWYCe8Bbs2fMz2tjcSN5nSHTg6gbT
 OwNFCDlL/SuaLwH11ubdKD2dpDOHSFA9Gbv+hQSCzqOEdAVMBfwpulzPO
 L2MNidxTAtyI2ed2CiepI+c6oqh7zf1uAvQXRkbC85yWouxN8BphbWtBN
 yf945ZlPvyUYrZvUPNC388WRudAMrnx+Mupt3Qz1tZNqe/v5ankVQA/jF
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gK5ZNz85
Subject: [Intel-wired-lan] [PATCH net v2 0/2] Fix vf set max mtu size with
 port vlan and jumbo frames
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

Fix "PF returned error -5 (IAVF_ERR_PARAM) to our request 6" error and
possible page_frag_cache_drain crashes that is a result of this error
when port vlan and jumbo frames are set on vf .

---
 v2: Fixed one check regarding !max_frame
---

Michal Jaron (2):
  iavf: Fix vf set max mtu size with port vlan and jumbo frames
  i40e: Fix vf set max mtu size

 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 20 +++++++++++++++++++
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  7 +++++--
 2 files changed, 25 insertions(+), 2 deletions(-)

-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
