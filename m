Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE2938374FF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jan 2024 22:11:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 454B041A08;
	Mon, 22 Jan 2024 21:11:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 454B041A08
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705957913;
	bh=Gwe5M3eNXaTQGN0iuTGm+7ClGEPyoD5BbHJbULEUrLo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=TdlkuqbQOH6iFoWEmwDl8ADCelLi3a2JAKAA3DLXYWH/qsqZlJkffcr4tau+4BNjc
	 h7svj1RBw6nINdPV/ko1Th5ushl3C36zVsZ1bWKU+9rT49siW+rEj5hTvvhru6UQ1a
	 QZbWXiLrjIcQrwj7WQKdlEBYpnm8ZwekPdES9uUVXPpwps2Ma2w2HUWOwEbqR4JlGf
	 5N6+nzH2aS2GiedwSIEpklKw1EjiRe/rtmhGqBxI4wkr21AaypLkNYDq9lkiFb1GdZ
	 MuXITWDMuTJ8aWeclOwN1OgXMmJhkhg+9ZhEyThtsVfnno8xSCFKyfAEpASDk5klHd
	 AWn9/XCfsIxng==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4m5LQQJJNtdx; Mon, 22 Jan 2024 21:11:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4468B4097C;
	Mon, 22 Jan 2024 21:11:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4468B4097C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1FDEF1BF3A4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jan 2024 21:11:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 03143409DF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jan 2024 21:11:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 03143409DF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AW39qVGxrDiN for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jan 2024 21:11:44 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EE9A84098B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jan 2024 21:11:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EE9A84098B
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="19897116"
X-IronPort-AV: E=Sophos;i="6.05,212,1701158400"; d="scan'208";a="19897116"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2024 13:11:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,212,1701158400"; d="scan'208";a="27494313"
Received: from dev1-atbrady.jf.intel.com ([10.166.241.35])
 by orviesa002.jf.intel.com with ESMTP; 22 Jan 2024 13:11:43 -0800
From: Alan Brady <alan.brady@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 22 Jan 2024 13:11:19 -0800
Message-Id: <20240122211125.840833-1-alan.brady@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705957904; x=1737493904;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NMviHsi9EYih85i/6i3JRFfS3Ww6Wn2XLC62VAxNFlc=;
 b=X0gjvv6lFh0V6Gwa3a1lfQ1SNkf2f36SHzP/fZn6abnDGu5whKX0S2IB
 I7nGV9j38sCRzem0T4Uvf46T9kUe6ElK4KDgE2h8AFhwnM3PZGvfkQCoL
 dFglrtvZuHcOTiOH9Hv4Wo2FsbVAZOBUOi564pzxfm1q4vv+o/VZ0aEOL
 StrgXKUqXmottbZhZqCR4QpnNV4B56O9yXsN6K4vR0jBK+3sXqWEUVh8i
 FFbKu0qWCLbX6dbMfqqFJAOOLTChSo0H4YOc5AjG7a3FSHW7uq6CX/Nn5
 Cc/FOlEVf5vhSv0b6f1wT2wHp+HAqgnIvZR2RoBvs9drJEuneXs/ts45L
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=X0gjvv6l
Subject: [Intel-wired-lan] [PATCH 0/6 iwl-next] idpf: refactor virtchnl
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
Cc: netdev@vger.kernel.org, Alan Brady <alan.brady@intel.com>
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

Alan Brady (6):
  idpf: implement virtchnl transaction manager
  idpf: refactor vport virtchnl messages
  idpf: refactor queue related virtchnl messages
  idpf: refactor remaining virtchnl messages
  idpf: refactor idpf_recv_mb_msg
  idpf: cleanup virtchnl cruft

 drivers/net/ethernet/intel/idpf/idpf.h        |  192 +-
 .../ethernet/intel/idpf/idpf_controlq_api.h   |    5 +
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |   29 +-
 drivers/net/ethernet/intel/idpf/idpf_main.c   |    3 +-
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |    2 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 1984 ++++++++---------
 6 files changed, 1045 insertions(+), 1170 deletions(-)

-- 
2.40.1

