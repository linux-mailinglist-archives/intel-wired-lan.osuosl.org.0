Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EBACE83D405
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jan 2024 06:48:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 227076F504;
	Fri, 26 Jan 2024 05:48:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 227076F504
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706248101;
	bh=1UwKKU+CQQd5BLF//DCjLRpkKd3cgCaWF0evZYqRadE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=AOyACjGIhu+gFIZrzJFlhvrkTx0K78pol0uZjmjXEdzreF5D2/elg+w4GTtgFcd2l
	 Fx91D2wFn5ig54zS0eUpAE9Fvn09D1nWjRSe5tKwCawUmgynWl9FJ5Ji1qfvE9gECX
	 yKtAbGpev9tgzqSvTLHCU+LeumXN6cUqI8xgiqn1y8oeNrc9DqpfS4Yivt8WbvDv7k
	 Pfwz3rdtDGagXzPO8pea8w4Ssi4m4MljgBNqo3QCpay2WqXEqvKvUsxWlqq79lA7EI
	 BjQc/gMjGOZCY0gQFfMeaqOyrauVyjoHStUBijqHg/cC+eoFIx65Z8gANlntNKCu+/
	 PC/7JgBbK/SSw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6U6JST4LxtYz; Fri, 26 Jan 2024 05:48:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8BC4B615CC;
	Fri, 26 Jan 2024 05:48:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8BC4B615CC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A08D21BF292
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jan 2024 05:48:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6C62C84F1E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jan 2024 05:48:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6C62C84F1E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id abgF1nWKoJhM for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jan 2024 05:48:12 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 66F9284F11
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jan 2024 05:48:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 66F9284F11
X-IronPort-AV: E=McAfee;i="6600,9927,10964"; a="9779233"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; 
   d="scan'208";a="9779233"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2024 21:48:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="21305998"
Received: from dev1-atbrady.jf.intel.com ([10.166.241.35])
 by fmviesa002.fm.intel.com with ESMTP; 25 Jan 2024 21:48:11 -0800
From: Alan Brady <alan.brady@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Jan 2024 21:47:40 -0800
Message-Id: <20240126054747.960172-1-alan.brady@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706248092; x=1737784092;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WFjEF+dRVv/KkO7sXnjeGr7rlg143274V/UJFlzRB6o=;
 b=iaXNpRlgmgTGK95QBczPETjnsFIzlSU5iWdAes/CcD3szkZgATIrtTQ2
 Vyre0FNHSmGVg4/zLTIbzsKtI6M5pDnPiOZKNsN2pbVSizejszgISsvKY
 dQxstPsK6A9K+/FmiD1E9OW4d4nq0Kvb1PZ3Tm0Jm8qSpGqh6J4M5oa7a
 bD1aruVLEK/heCn+JSV1LUMl/GI2z5vhoSJsofJpB66FBQE41EmQwQlag
 +3IG9mqGE/s/t+EvPC4P6l//8J7AdJv09LeBPU2EOmLL+Tr8BihL6GNDJ
 oLC/a3zqRNmh/PjIWtYKiihBrRuT1orAMeCgQD2qJYiLP4RJj3AnZfdMp
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iaXNpRlg
Subject: [Intel-wired-lan] [PATCH v2 0/7 iwl-next] idpf: refactor virtchnl
 messages
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
Cc: netdev@vger.kernel.org, willemdebruijn.kernel@gmail.com,
 igor.bagnucki@intel.com, Alan Brady <alan.brady@intel.com>,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The motivation for this series has two primary goals. We want to enable
support of multiple simultaneous messages and make the channel more
robust. The way it works right now, the driver can only send and receive
a single message at a time and if something goes really wrong, it can
lead to data corruption and strange bugs.

This works by conceptualizing a send and receive as a "virtchnl
transaction" (idpf_vc_xn) and introducing a "transaction manager"
(idpf_vc_xn_manager). The vcxn_mngr will init a ring of transactions
from which the driver will pop from a bitmap of free transactions to
track in-flight messages. Instead of needing to handle a complicated
send/recv for every a message, the driver now just needs to fill out a
xn_params struct and hand it over to idpf_vc_xn_exec which will take
care of all the messy bits. Once a message is sent and receives a reply,
we leverage the completion API to signal the received buffer is ready to
be used (assuming success, or an error code otherwise).

At a low-level, this implements the "sw cookie" field of the virtchnl
message descriptor to enable this. We have 16 bits we can put whatever
we want and the recipient is required to apply the same cookie to the
reply for that message.  We use the first 8 bits as an index into the
array of transactions to enable fast lookups and we use the second 8
bits as a salt to make sure each cookie is unique for that message. As
transactions are received in arbitrary order, it's possible to reuse a
transaction index and the salt guards against index conflicts to make
certain the lookup is correct. As a primitive example, say index 1 is
used with salt 1. The message times out without receiving a reply so
index 1 is renewed to be ready for a new transaction, we report the
timeout, and send the message again. Since index 1 is free to be used
again now, index 1 is again sent but now salt is 2. This time we do get
a reply, however it could be that the reply is _actually_ for the
previous send index 1 with salt 1.  Without the salt we would have no
way of knowing for sure if it's the correct reply, but with we will know
for certain.

Through this conversion we also get several other benefits. We can now
more appropriately handle asynchronously sent messages by providing
space for a callback to be defined. This notably allows us to handle MAC
filter failures better; previously we could potentially have stale,
failed filters in our list, which shouldn't really have a major impact
but is obviously not correct. I also managed to remove slightly more
lines than I added which is a win in my book.


Alan Brady (7):
  idpf: implement virtchnl transaction manager
  idpf: refactor vport virtchnl messages
  idpf: refactor queue related virtchnl messages
  idpf: refactor remaining virtchnl messages
  idpf: add async_handler for MAC filter messages
  idpf: refactor idpf_recv_mb_msg
  idpf: cleanup virtchnl cruft

 drivers/net/ethernet/intel/idpf/idpf.h        |  192 +-
 .../ethernet/intel/idpf/idpf_controlq_api.h   |    5 +
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |   29 +-
 drivers/net/ethernet/intel/idpf/idpf_main.c   |    3 +-
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |    2 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 1982 ++++++++---------
 6 files changed, 1043 insertions(+), 1170 deletions(-)

-- 
v1 -> v2:
    - don't take spin_lock in idpf_vc_xn_init, it's not needed
    - fix set but unused error on payload_size var in idpf_recv_mb_msg
    - prefer bitmap_fill and bitmap_zero if not setting an explicit
      range per documention
    - remove a couple unnecessary casts in idpf_send_get_stats_msg and
      idpf_send_get_rx_ptype_msg
    - split patch 4/6 such that the added functionality for MAC filters
      is separate
2.40.1

