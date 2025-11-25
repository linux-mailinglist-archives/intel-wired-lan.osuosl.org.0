Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 788D2C863A8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Nov 2025 18:36:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2ABEA40678;
	Tue, 25 Nov 2025 17:36:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id txSme7YA9X0y; Tue, 25 Nov 2025 17:36:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A40A740B6A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764092205;
	bh=YtX8NjL0n2iEfae7zsokaswYNn6dnOqRfslkw3388js=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=A0WeKaa/nbt5EbxP7tUBUT6srL69eNYaL7uRAdBeF2D0l02J0TMzRBUqDV63JLzWc
	 y4u6pdpN+WNLCoQwqkgdi0FH/dujY3D2dTghMCLi+n1LPac2+wL2yfXa2RZKZl62VF
	 P6zdt1CgXFB6+rxrIy9gV36YI7yESUP3HfOIy3ptsciHuTba8jeqUrkvgrJIXu6nrR
	 44rEs51vH7hEWiOlvZKq6c1kwW7sUZZhkIiEObr1aBb0nB4WEM/oHmrr72qPQqAWEf
	 uBfu+O6zPbuBADpDLOAVa483zTZPjN8qSUd74S5ONb2ex5LIWGPI6PsnTF9LX6/h69
	 xKRFlavjEKGNQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A40A740B6A;
	Tue, 25 Nov 2025 17:36:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7C08F359
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 17:36:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5F217404A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 17:36:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xMy3C7DxtCRS for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Nov 2025 17:36:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6DF004041A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6DF004041A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6DF004041A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 17:36:42 +0000 (UTC)
X-CSE-ConnectionGUID: uzpl25QFRnerN66SsgG1aQ==
X-CSE-MsgGUID: JnHITFgFSvyghEKrftaaiA==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="69979865"
X-IronPort-AV: E=Sophos;i="6.20,226,1758610800"; d="scan'208";a="69979865"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 09:36:36 -0800
X-CSE-ConnectionGUID: bRI8blVfQseTCql2nZm1wg==
X-CSE-MsgGUID: yf6AW/GnTLqefgeEQhZ0SA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,226,1758610800"; d="scan'208";a="216040307"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa002.fm.intel.com with ESMTP; 25 Nov 2025 09:36:31 -0800
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
Date: Tue, 25 Nov 2025 18:35:58 +0100
Message-ID: <20251125173603.3834486-1-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.51.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764092202; x=1795628202;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=L4ZZnBUfnNasEjDRyNYykpzYJ1ucWv9kcc26REtqwT4=;
 b=BjBQQOWRh6tx6SNXNIl2p+CCtmAShKEPwT+1vLOxCRP/sT2Ddl4Qe2IT
 hGPHGh58dkXqbuwBCcC7GL7HZbhzkYyUsJ6qlsCHgGdBl3kojrX/f1hCZ
 6bLfnvD/hg9nDiYkQ5UgBUQ0fjveUS/2DVlWgvtDCB9Dk04KrdWj7JiRO
 VvXPNumGdWJEGehajyds573mKYON3vL5UmtD98/GlaTov/JAT8dVNrNsc
 ap/j/e2rGrIp1PZYfu3vYfSQcdKlhTNRCdt4CBTLqiOVW8M0ocq9L5nVK
 6LySC48OzJBdyMt5TZ+VB42544pAYtDZOmdeYC5K2CmQjg5E+DtA9uL9U
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BjBQQOWR
Subject: [Intel-wired-lan] [PATCH iwl-next 0/5] ice: add support for
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
 drivers/net/ethernet/intel/libeth/rx.c      |  43 +++++
 14 files changed, 322 insertions(+), 103 deletions(-)

---
Testing hints:
* regular Rx and Tx for regressions;
* <kernel root>/tools/testing/selftests/drivers/net/hw/ contains
  scripts for testing netmem Rx and Tx, namely devmem.py and
  iou-zcrx.py (read the documentation first).
-- 
2.51.1

