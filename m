Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C94F86021B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Feb 2024 20:04:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D593F41981;
	Thu, 22 Feb 2024 19:04:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GdZaeuP03VE6; Thu, 22 Feb 2024 19:04:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BDA9641973
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708628691;
	bh=yQr8YpLkKgQRAWraIdomDPL1E8X/+TjhAh+XSzrn/L0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=0eis8vSK3CUAKyeMZ8cQp42TUugkK/QQ7G2xtCLvPFM9n5nN3XGswDp1WntQOAmdA
	 e6Gt4Zro4tmyNG2ugBPXvFJ+kzzO4YVstj+GA96c2jpUO2dQtBs0H/Mc5Nd+JFZTfL
	 wpr1epXx6aQwXI+825axCIhQ+6qzWab3IzFO6p/jCCoFplXCl75SRcWF8nbtqYOQnS
	 aA/EeP4UxWsrIyvqDGq2bRnO2nfiHxy5ZhYxuwFOVplJpul4ZfVjWkbegcKqT2mMQ2
	 VlGri9lAlk0g4Guydj0TtvDDtKgDTenJXSsSZ04TP4BpgTtuG2SP3turQc0U3P92oF
	 mznloyl/S1myg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BDA9641973;
	Thu, 22 Feb 2024 19:04:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8B35A1BF2F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 19:04:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 768214196B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 19:04:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ptHc9HvgyXM5 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Feb 2024 19:04:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=alan.brady@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4B51C40103
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4B51C40103
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4B51C40103
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 19:04:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="13506341"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; d="scan'208";a="13506341"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 11:04:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; d="scan'208";a="10171036"
Received: from dev1-atbrady.jf.intel.com ([10.166.241.35])
 by fmviesa004.fm.intel.com with ESMTP; 22 Feb 2024 11:04:45 -0800
From: Alan Brady <alan.brady@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 22 Feb 2024 11:04:30 -0800
Message-ID: <20240222190441.2610930-1-alan.brady@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708628687; x=1740164687;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NgxvxBF0w8X0BNHImFGgRyaZyUn4Ud8JUgJCJSQRDp8=;
 b=CukmG7TeuP3A5xT3LZatY4TTn8LKRaied406KkD49KpoXC5mKPnFc4of
 1/u9alUyuli6O9vwJrJ+5e4K45AUj0aE1816Ib2hJ3gmdIvaQMPCis2Xj
 v+Uv1MMNmyIUFUXYq1Gu3fA3fHzB6q6w4Xjs113MtIZeiq4I/A6sCLMgo
 Q+PYvnp8w/1uwPvKG5L350H+S9b97iYVxpwqleK1z/jGie6V13FMKk4+J
 Rd/J/mldKihyPdpL90fiE6/ABWYQhRq4uUVtM7XDKGw1Oinf4/wTi6BDl
 0JAOLMWWEgabRLrgeuTP66rzGFo+GirxZeQjSHCMpvz0fChOdJUYg2yLS
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CukmG7Te
Subject: [Intel-wired-lan] [PATCH v6 00/11 iwl-next] idpf: refactor virtchnl
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

To start the series, we introduce an idpf_virtchnl.h file. This reduces
the burden on idpf.h which is overloaded with struct and function
declarations.

The conversion works by conceptualizing a send and receive as a
"virtchnl transaction" (idpf_vc_xn) and introducing a "transaction
manager" (idpf_vc_xn_manager). The vcxn_mngr will init a ring of
transactions from which the driver will pop from a bitmap of free
transactions to track in-flight messages. Instead of needing to handle a
complicated send/recv for every a message, the driver now just needs to
fill out a xn_params struct and hand it over to idpf_vc_xn_exec which
will take care of all the messy bits. Once a message is sent and
receives a reply, we leverage the completion API to signal the received
buffer is ready to be used (assuming success, or an error code
otherwise).

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

---
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
v4 -> v5:
    - change signature on idpf_vc_xn_exec to accept a pointer @params
      argument instead of passing by value, also make it const
v5 -> v6:
    - add patch which introduces idpf_virtchnl.h, this fits in with a
      'virtchnl refactor' series and makes idpf.h much nicer
    - move structs added in this series instead to idpf_virtchnl.c, we
      don't need to make idpf.h worse if we can avoid it
---

Alan Brady (11):
  idpf: add idpf_virtchnl.h
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

 drivers/net/ethernet/intel/idpf/idpf.h        |  146 +-
 .../net/ethernet/intel/idpf/idpf_controlq.c   |    7 +-
 .../ethernet/intel/idpf/idpf_controlq_api.h   |    5 +
 drivers/net/ethernet/intel/idpf/idpf_dev.c    |    1 +
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |   39 +-
 drivers/net/ethernet/intel/idpf/idpf_main.c   |    6 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   |    1 +
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |    3 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 2278 ++++++++---------
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   70 +
 10 files changed, 1182 insertions(+), 1374 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_virtchnl.h

-- 
2.43.0

