Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 22CD7CA4583
	for <lists+intel-wired-lan@lfdr.de>; Thu, 04 Dec 2025 16:51:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C7EFD616E8;
	Thu,  4 Dec 2025 15:51:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 75_b4PCb3g8q; Thu,  4 Dec 2025 15:51:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1983A616D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764863511;
	bh=PIYu2Kn0Zy3goWGotq8Rcyr/SoVg7+UlXKIXxOmrlE0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=2evxajbV0QIgJDMosaAkSwdpGtEUU/elUFXF+dgxRRwRoNjUEONKBcC89Vw+d1qzG
	 DJh2dYMPykoz6Bdo6EDj2qCeAVy33gdiCctk3NfYWFKZJ5snNCPUDECOZPSC1SnP1W
	 9qtvwRnb/+Qm+adv/ZLmESpYavMic/kxTj+a7gAKqwOn2gQ5XjshufxeHCMLjJPmfJ
	 hDwENmKBh1JH0TDnudAvE3YGnSxg4/UV0zl4Q19+fZRr/2jJQ4CLAp3poAKTIlkkGc
	 P1HaWfyfum+P8/wfgwqstZl9Iis1awHki1tmyyXgnqnNjSDRrNdJUx1F1gST4FfFDu
	 0q5MX7aUq14Ug==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1983A616D7;
	Thu,  4 Dec 2025 15:51:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 76433D3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Dec 2025 15:51:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5D2C361030
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Dec 2025 15:51:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NDFZ5wFV6eMk for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Dec 2025 15:51:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5F31160ADB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5F31160ADB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5F31160ADB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Dec 2025 15:51:48 +0000 (UTC)
X-CSE-ConnectionGUID: 4IHhD9soSYOoFtR83BMEfw==
X-CSE-MsgGUID: z/L424J3TbyBePok1iK+CA==
X-IronPort-AV: E=McAfee;i="6800,10657,11632"; a="92365102"
X-IronPort-AV: E=Sophos;i="6.20,249,1758610800"; d="scan'208";a="92365102"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 07:51:47 -0800
X-CSE-ConnectionGUID: A7oCzQsbRBqTMzFfx1Tgnw==
X-CSE-MsgGUID: pZFFhipwRT2AvJY4bZ85ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,249,1758610800"; d="scan'208";a="194677256"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa007.fm.intel.com with ESMTP; 04 Dec 2025 07:51:44 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Alexander Lobakin <aleksander.lobakin@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 nxne.cnse.osdt.itp.upstreaming@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Thu,  4 Dec 2025 16:51:28 +0100
Message-ID: <20251204155133.2437621-1-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764863508; x=1796399508;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wntylzoSwqmqZ14w+vlx65T2d8TULoY/29mRPs1sjMw=;
 b=M9CBe9C36pocicQJZAIJLZd9ae21r2t/XgWzfnmYtcpwoJrqyPdjLFXN
 MpNatS9KwzpE51Yo44oQ4C2sCF9WQqD0ia11u4d+GpO/lK+blVDdm7mfv
 T8f283Y7+WYUqQNS7f6RsFGqPkQ1K6RbI+CjhTJVRiwsWGCgS2AyKFRBd
 8wpiDD3gPK+crv/nxKfJKwWBWkTXfKdlZNIn6EImrAwTzjHayUBmWXXs5
 8avpdM3gaqKp1PREbz1hAi0EzWwwq3So3D/dipyZyWCVdxtbNaraWFTuR
 Qw+xf2jlbpAGs4ZAcJGtCnjB+rivZetzh5blZJwNqhKiXDrD/4ePsKqdf
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=M9CBe9C3
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/5] ice: add support for
 devmem/io_uring Rx and Tx
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

Now that ice uses libeth for managing Rx buffers and supports
configurable header split, it's ready to get support for sending
and receiving packets with unreadable (to the kernel) frags.

Extend libeth just a little bit to allow creating PPs with custom
memory providers and make sure ice works correctly with the netdev
ops locking. Then add the full set of queue_mgmt_ops and don't
unmap unreadable frags on Tx completion.
No perf regressions for the regular flows and no code duplication
implied.

Credits to the fbnic developers, which's code helped me understand
the memory providers and queue_mgmt_ops logics and served as
a reference.

Alexander Lobakin (5):
  libeth: pass Rx queue index to PP when creating a fill queue
  libeth: handle creating pools with unreadable buffers
  ice: migrate to netdev ops lock
  ice: implement Rx queue management ops
  ice: add support for transmitting unreadable frags

 drivers/net/ethernet/intel/ice/ice_lib.h    |  11 +-
 drivers/net/ethernet/intel/ice/ice_txrx.h   |   2 +
 drivers/net/ethernet/intel/idpf/idpf_txrx.h |   2 +
 include/net/libeth/rx.h                     |   2 +
 include/net/libeth/tx.h                     |   2 +-
 drivers/net/ethernet/intel/iavf/iavf_txrx.c |   1 +
 drivers/net/ethernet/intel/ice/ice_base.c   | 194 ++++++++++++++------
 drivers/net/ethernet/intel/ice/ice_lib.c    |  56 +++++-
 drivers/net/ethernet/intel/ice/ice_main.c   |  50 ++---
 drivers/net/ethernet/intel/ice/ice_sf_eth.c |   2 +
 drivers/net/ethernet/intel/ice/ice_txrx.c   |  43 +++--
 drivers/net/ethernet/intel/ice/ice_xsk.c    |   4 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c |  13 ++
 drivers/net/ethernet/intel/libeth/rx.c      |  46 +++++
 14 files changed, 325 insertions(+), 103 deletions(-)

---
From v1[0]:
* rebase on top of the latest next-queue;
* fix a typo 'rxq_ixd' -> 'rxq_idx' (Tony).

Testing hints:
* regular Rx and Tx for regressions;
* <kernel root>/tools/testing/selftests/drivers/net/hw/ contains
  scripts for testing netmem Rx and Tx, namely devmem.py and
  iou-zcrx.py (read the documentation first).

[0] https://lore.kernel.org/intel-wired-lan/20251125173603.3834486-1-aleksander.lobakin@intel.com
-- 
2.52.0

