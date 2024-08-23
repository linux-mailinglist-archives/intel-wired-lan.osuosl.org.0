Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 37CEB95C9E6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Aug 2024 12:08:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9B67981EBA;
	Fri, 23 Aug 2024 10:08:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ooWwNcmERdmB; Fri, 23 Aug 2024 10:08:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6BA1C81EB8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724407682;
	bh=coCQbOcSiJ2ZmePiq7ubNPjKXQME2tfx772jEa/QcHs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=rpnX9EcWbzO7XsQI6LT+MfgEVITLiGl4GW07A4SSM04Sh08fc367WukzpWx50Xcn9
	 oVda+xcK/rxVRDmNg/ySdvm9C7XP5cHV2dhg1fOizhTgTLpARWJdGuZAqCl8kxIs+W
	 PwFRTzrIYpExB38Rm1ELi6fFP3AIhYsit84t4icXDP1ITL7zwNaf0Zf2d7U+tVSF4t
	 MVIesHUAguuMPchdCXjOkgBw7ZBVgggHnwJlO/dZxZCoyooeESEsqjDGUJMgCwecPO
	 rm85VnGCHvk16qPdqrua37Ws/ldhcLXz0kaBkSCe9M+UvYGe1KvBU7HxpoS6xiN9Ec
	 8i/TT5xm8i/5g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6BA1C81EB8;
	Fri, 23 Aug 2024 10:08:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 592A01BF304
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 10:08:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 50DB9400D1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 10:08:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3sHPkGbhSavC for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Aug 2024 10:07:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org F0ACA400C7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F0ACA400C7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F0ACA400C7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 10:07:58 +0000 (UTC)
X-CSE-ConnectionGUID: NhJZb+pNSqa4lgD+Q/ZtEA==
X-CSE-MsgGUID: ffPtOna6SUuin8frl1mOuA==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="34284985"
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; d="scan'208";a="34284985"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2024 03:07:57 -0700
X-CSE-ConnectionGUID: hjSUTHu/RPi/mr1my+HMwg==
X-CSE-MsgGUID: ziZzWOGcSTCS9B0lXqleqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; d="scan'208";a="62478929"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa008.jf.intel.com with ESMTP; 23 Aug 2024 03:07:53 -0700
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id B358F33BD5;
 Fri, 23 Aug 2024 11:07:50 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Fri, 23 Aug 2024 11:59:25 +0200
Message-ID: <20240823095933.17922-1-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724407679; x=1755943679;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WuIZRInqS7NanstfrvWuds+EIAZ+q+AIuTPIbKp/L7I=;
 b=Pr58wDUkXerfeTmhAeij7DI7ci1EyXNuvhjQni0cMLYNNdq+5+x/LE2N
 DOLruzRdPaLS+QzcPbJvnULfTQro8vMKu/Us4wl3cOKt6AJtfsoqWQaB0
 pqNnghiBfgpVtfe1p6sbS0s4OwWUHxbQ7br0dsC1DpzlotcI83o9rOPcJ
 eEIvZFawtp6yAAtaMz/n6TuWooubaPhPq1OfER7JE+wR70Q1JHsu6xx/w
 oft5L3/ARIPv9aeuHkXDVI6BQaQu6Vfc2Mm+YSRjrVgPmlRGrGYbdlddO
 O8ry4Z0CumktZvo00M+TTtarUJmGD16UvMBcYRIkKt01V6oB+/WJjmL8/
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Pr58wDUk
Subject: [Intel-wired-lan] [PATCH iwl-net v4 0/6] ice: fix synchronization
 between .ndo_bpf() and reset
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 anirudh.venkataramanan@intel.com, John Fastabend <john.fastabend@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 przemyslaw.kitszel@intel.com, Eric Dumazet <edumazet@google.com>,
 Michal Kubiak <michal.kubiak@intel.com>, sridhar.samudrala@intel.com,
 Amritha Nambiar <amritha.nambiar@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 bpf@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PF reset can be triggered asynchronously, by tx_timeout or by a user. With some
unfortunate timings both ice_vsi_rebuild() and .ndo_bpf will try to access and
modify XDP rings at the same time, causing system crash.

The first patch factors out rtnl-locked code from VSI rebuild code to avoid
deadlock. The following changes lock rebuild and .ndo_bpf() critical sections
with an internal mutex as well and provide complementary fixes.

v3: https://lore.kernel.org/netdev/20240819100606.15383-1-larysa.zaremba@intel.com/
v3->v4:
* fix kdoc and add an additional "Fixes:" tag in the first patch
* clear rebuild pending flag only when ice_vsi_rebuild completes successfully
* remove the deadlock part from the commit message in the fifth patch,
  this particular aspect was recently fixed in another patch
* update tags

v2: https://lore.kernel.org/netdev/20240724164840.2536605-1-larysa.zaremba@intel.com/
v2->v3:
* deconfig VSI when coalesce allocation fails in ice_vsi_rebuild (patch 2/6)
* rebase and resolve conflicts in patch 3 and 4
* add tags from v2

v1: https://lore.kernel.org/netdev/20240610153716.31493-1-larysa.zaremba@intel.com/
v1->v2:
* use mutex for locking
* redefine critical sections
* account for short time between rebuild and VSI being open
* add netif_queue_set_napi() patch, so ICE_RTNL_WAITS_FOR_RESET strategy can be
  dropped, no more rtnl-locked code in ice_vsi_rebuild()
* change the test case from waiting for tx_timeout to happen to actively firing
  resets through sysfs, this adds more minor fixes on top

Larysa Zaremba (6):
  ice: move netif_queue_set_napi to rtnl-protected sections
  ice: protect XDP configuration with a mutex
  ice: check for XDP rings instead of bpf program when unconfiguring
  ice: check ICE_VSI_DOWN under rtnl_lock when preparing for reset
  ice: remove ICE_CFG_BUSY locking from AF_XDP code
  ice: do not bring the VSI up, if it was down before the XDP setup

 drivers/net/ethernet/intel/ice/ice.h      |   2 +
 drivers/net/ethernet/intel/ice/ice_base.c |  11 +-
 drivers/net/ethernet/intel/ice/ice_lib.c  | 179 ++++++++--------------
 drivers/net/ethernet/intel/ice/ice_lib.h  |  10 +-
 drivers/net/ethernet/intel/ice/ice_main.c |  47 ++++--
 drivers/net/ethernet/intel/ice/ice_xsk.c  |  18 +--
 6 files changed, 106 insertions(+), 161 deletions(-)

-- 
2.43.0

