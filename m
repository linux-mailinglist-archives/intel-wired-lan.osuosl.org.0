Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DB4C384AD13
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Feb 2024 04:45:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6689641BAA;
	Tue,  6 Feb 2024 03:45:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6689641BAA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707191129;
	bh=9LbJYUSgMOba8icxYuj/3AcwKfoj5lN3qDaNU2bZYvM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=HoWYIO6zx7xFGLhDz8NCNIWhuCtYx/Y7q7A0hTspB7YhhqZmtHZ52iAu3lzfuD3R+
	 7gUKWg0djq9WClFdVYA+9mWvbL0xGB3oXWpWQp15YexFc3Hyhj1G2KlfwuI2bG97zf
	 Fz+diEkNrEuTVCjJJO89xUkzFtVQwwjkfeRMxS391XzR6JKP+0vBvDcQxtdtwE2qIh
	 GE4JMGfB9/LfAf3F0zBkAOZMcvpE4sgjbXTlH8+yDOz6BPvYPmUogz8nYqxCtqR+Fs
	 POqEClLsl+IUf9Aup9DNSuDHAIa8xRQ6FlUOZz9/ieqsrH0H1/IwxqfhK78ifM7WAz
	 E5FpqZZ9gGS1A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yQ3SnpzIbsBl; Tue,  6 Feb 2024 03:45:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1DB66418AF;
	Tue,  6 Feb 2024 03:45:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1DB66418AF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7A9FD1BF215
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 03:45:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5EE3560F3D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 03:45:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5EE3560F3D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QTHCP6wwCbyS for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Feb 2024 03:45:21 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 06 Feb 2024 03:45:21 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6358160AF0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6358160AF0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 03:45:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10975"; a="824747"
X-IronPort-AV: E=Sophos;i="6.05,246,1701158400"; 
   d="scan'208";a="824747"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2024 19:38:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,246,1701158400"; 
   d="scan'208";a="5653855"
Received: from dev1-atbrady.jf.intel.com ([10.166.241.35])
 by orviesa004.jf.intel.com with ESMTP; 05 Feb 2024 19:38:13 -0800
From: Alan Brady <alan.brady@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  5 Feb 2024 19:37:54 -0800
Message-Id: <20240206033804.1198416-1-alan.brady@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707191121; x=1738727121;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SivssqEd2AifeIrqAszgd/JFRTzLlRswVDVW8rQyOZw=;
 b=iQ0NzCA7Ov68pBkl09zT3bYAVZYDS8BJS2kxOkYo+Y3YViIWDA8JNn3b
 4CidJoNO49Lj94rAsMkg0LBN/r7V8MFO0N3mh6cqhBD1Q6gi5ZfDnZfdJ
 lnwQFL/joTb7MqawNcpgLK9IZCazwKfCHGN7H8Wj6vxxPTgLHCgrS4EJ1
 bMWXtd/NHr9ajDRubhwfSX/vRGdY2f4rDxi8DFLuxUQM923znozDya42s
 Rqc8jMCUvLMD2KpgAqo+ymR88wqlSD3n4t/hNH3yQ3wEvkF3GTDXjlYUT
 hHCPqLP0quo62wBGx5GWXu2XVZIpG8Rl8sMoP3/vBf+FpLXZ+tJqYSsNm
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iQ0NzCA7
Subject: [Intel-wired-lan] [PATCH v4 00/10 iwl-next] idpf: refactor virtchnl
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
Cc: willemdebruijn.kernel@gmail.com, netdev@vger.kernel.org,
 aleksander.lobakin@intel.com, Alan Brady <alan.brady@intel.com>,
 przemyslaw.kitszel@intel.com, igor.bagnucki@intel.com
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
but is obviously not correct. I also managed to remove fairly
significant more lines than I added which is a win in my book.

Additionally, this converts some variables to use auto-variables where
appropriate. This makes the alloc paths much cleaner and less prone to
memory leaks. We also fix a few virtchnl related bugs while we're here.

Alan Brady (10):
  idpf: implement virtchnl transaction manager
  idpf: refactor vport virtchnl messages
  idpf: refactor queue related virtchnl messages
  idpf: refactor remaining virtchnl messages
  idpf: add async_handler for MAC filter messages
  idpf: refactor idpf_recv_mb_msg
  idpf: cleanup virtchnl cruft
  idpf: prevent deinit uninitialized virtchnl core
  idpf: fix minor controlq issues
  idpf: remove dealloc vector msg err in idpf_intr_rel

 drivers/net/ethernet/intel/idpf/idpf.h        |  194 +-
 .../net/ethernet/intel/idpf/idpf_controlq.c   |    7 +-
 .../ethernet/intel/idpf/idpf_controlq_api.h   |    5 +
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |   38 +-
 drivers/net/ethernet/intel/idpf/idpf_main.c   |    3 +-
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |    2 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 2175 ++++++++---------
 7 files changed, 1096 insertions(+), 1328 deletions(-)

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
v2 -> v3:
    - fix 'mac' -> 'MAC' in async handler error messages
    - fix size_t format specifier in async handler error message
    - change some variables to use auto-variables instead
v3 -> v4:
    - revert changes to idpf_send_mb_msg that were introduced in v3,
      this will be addressed in future patch
    - tweak idpf_recv_mb_msg refactoring to avoid bailing out of the
      while loop when there are more messages to process and add comment
      in idpf_vc_xn_forward_reply about ENXIO
    - include some minor fixes to lower level ctrlq that seem like good
      candidates to add here
    - include fix to prevent deinit uninitialized vc core
    - remove idpf_send_dealloc_vectors_msg error
2.40.1

