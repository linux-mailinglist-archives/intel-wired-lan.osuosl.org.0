Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BDC3B30D08
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Aug 2025 05:53:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 13EE6407DD;
	Fri, 22 Aug 2025 03:53:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lOE-6SmVTjmI; Fri, 22 Aug 2025 03:53:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1CE7C407D9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755834823;
	bh=PgujND3CJxoU+X/6Cm5MdFpj3oEyVFYtRbCp97i97VI=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=wvVxqOhPWPQqMKo3WEPK24F5NyddJdAg5kIS8cOPEN0UE/483gcpMx5pmzTdfe2vq
	 Sksf3JzIKRFOsHkox9bOO48sYsP0GLKLNrqge77oH3JpTe4iDBUu9dTdVmGGOKRPWz
	 K1Bsq8reHRnRXy2qFqUnHSB0dMNyKMISdQuaYUD3lts6ayTOfCi3V/5UustO07J4A5
	 hJ640wx1O5HqVTMwHA0DUqG4MSvTj1gwtju8QZBqhY/tukAW6WAZk4ObJvulv2U4lC
	 DTD7N2JWzHiC8lb+VokedsY45nsU6NVXFKEgrdkkpHFBQpSwWbVT6u9Dlkx/KrwXpi
	 sQwtW8dtu+RZg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1CE7C407D9;
	Fri, 22 Aug 2025 03:53:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2AD871C8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 03:53:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1BA7681298
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 03:53:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k9bQY4LsZbBo for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Aug 2025 03:53:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3759981290
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3759981290
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3759981290
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 03:53:40 +0000 (UTC)
X-CSE-ConnectionGUID: XIvwoXO2RcuW7im9ILwuuA==
X-CSE-MsgGUID: wfpNeKtFRYOWhdnhcAGr1g==
X-IronPort-AV: E=McAfee;i="6800,10657,11529"; a="69508572"
X-IronPort-AV: E=Sophos;i="6.17,309,1747724400"; d="scan'208";a="69508572"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2025 20:53:40 -0700
X-CSE-ConnectionGUID: YVQ6LBE1R3abFw1s3Y4o0A==
X-CSE-MsgGUID: kEA06p//Q8KGqG7jrFV9pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,309,1747724400"; d="scan'208";a="192253205"
Received: from estantil-desk.jf.intel.com ([10.166.241.24])
 by fmviesa002.fm.intel.com with ESMTP; 21 Aug 2025 20:53:39 -0700
From: Emil Tantilov <emil.s.tantilov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Aleksandr.Loktionov@intel.com,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, decot@google.com, willemb@google.com,
 joshua.a.hay@intel.com, madhu.chittim@intel.com
Date: Thu, 21 Aug 2025 20:52:46 -0700
Message-Id: <20250822035248.22969-1-emil.s.tantilov@intel.com>
X-Mailer: git-send-email 2.17.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755834821; x=1787370821;
 h=from:to:cc:subject:date:message-id;
 bh=ADoLOsWifGjrYBSUnJen568SncRhss7JIBHOtlvnQSE=;
 b=SmRNDO2s+c3w7zFB3IongDXUUJ7/du6KFaDx/+eDopcSo4zhma/3sii1
 rOMt3S6LDJAE/44Gk9KxdXcx36QN50sNK5nuFLFTMjytnrPccQgaTn0KT
 m5PKTkqVpezrTzuTb9cjuyLtiwT130CUXWH7MizKDUg0Vb5qyKF2VYiib
 XoCFfXp7uQBeW0MJyqfVgThaPKiNK6aTFQ6SvTi0DYS+ZcAlplzJ/Ysy4
 MAd7h0D5sbf6hB6Z9daDE3ir7mycVLh3d5cHTCmNgRk+YsvGJW6RiHn63
 mVVuWmjsKaiAYKZmBsIwKJzSqHsrsu+o9sc1BiuX1ghLUodrXnqc1A3w5
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SmRNDO2s
Subject: [Intel-wired-lan] [PATCH iwl-net 0/2] idpf: Fix vport state handling
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

While testing the support for setting the MAC type [0], rmmod while 
multiple vports are up would occasionally report an error, caused by a 
VC message being sent with opcode 536, attempting to delete a MAC filter 
that was already deleted by the call to idpf_vport_stop():
idpf 0000:83:00.0: Received invalid MAC filter payload (op 536) (len 0)

This can happen as idpf_addr_unsync() is called via ndo_set_rx_mode() 
while idpf_vport_stop() is called  by rmmod:
rmmod-231066  [004] ..... 100851.014226: idpf_add_del_mac_filters <-idpf_vport_stop
systemd-resolve-1364    [029] b..1. 100851.159457: idpf_add_del_mac_filters <-idpf_addr_unsync

Though the issue was discovered while testing the MAC type change, it is 
not specific to that flow, hence why it is posted in a separate series.
While it can be applied on its own, for the purpose of testing it is 
recommended to be applied on top of [0].

The changes are split in 2 parts:
- The first commit is just a conversion to bitmap for the vport state.
- Second commit plugs the race by making sure the IDPF_VPORT_UP bit is
  cleared by idpf_vport_stop() on entry.

[0] https://lore.kernel.org/intel-wired-lan/20250814234300.2926-1-emil.s.tantilov@intel.com/

Emil Tantilov (2):
  idpf: convert vport state to bitmap
  idpf: fix possible race in idpf_vport_stop()

 drivers/net/ethernet/intel/idpf/idpf.h        | 12 ++++------
 .../net/ethernet/intel/idpf/idpf_ethtool.c    | 10 ++++----
 drivers/net/ethernet/intel/idpf/idpf_lib.c    | 23 +++++++++----------
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   |  2 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   |  2 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   |  4 ++--
 6 files changed, 25 insertions(+), 28 deletions(-)

-- 
2.37.3

