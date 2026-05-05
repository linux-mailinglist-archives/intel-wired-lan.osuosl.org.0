Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8K+iIQF9+WmZ9AIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 07:15:45 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AC96B4C6BE9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 07:15:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 492E28125F;
	Tue,  5 May 2026 05:15:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g8m1mmpWvy-r; Tue,  5 May 2026 05:15:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1DF0581260
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777958141;
	bh=HIFbhp5Ny/NoHuekccYeH5DNYWNF1um+mCENH/cFPUA=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=FmPFaVqDV6kCY1x7bt8/T3ej6a6ZyXncrxi9JTbotBrRi6WzlCcDTKXglILROCWUQ
	 /tNpTqNuLuknr7lOlT2U7dG1dOy6MlVuwqSFB2oyo/ttACc3etRyaqtRtdC1fnyVyI
	 ViE43CeItq++jU7AldgPDPQbIt1KVp48O16YTsfg4RldIz5PDTJ+Z4uKO8pNk06m/W
	 PN/Sv1BGS/QoUhZOR3d5wdRxovRpb4CX25SJPXgcfHccjvHGwKiq9obzWxz1YqiRAK
	 +GC++7J+Fm4KmzLXlWsedEhGSw/AoNB86HcRcy3Byn3Gl+LEMy4NjvpXi44omPaL4V
	 HFz5H41arlUIw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1DF0581260;
	Tue,  5 May 2026 05:15:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 68A49280
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 05:15:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4DE208125E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 05:15:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0Aco-bKqEKyr for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 May 2026 05:15:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8E8178125D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8E8178125D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8E8178125D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 05:15:38 +0000 (UTC)
X-CSE-ConnectionGUID: HyR5W8MYRdONtSGjGziP8w==
X-CSE-MsgGUID: O3ukJnW+THStG5BgZeRFaw==
X-IronPort-AV: E=McAfee;i="6800,10657,11776"; a="89126417"
X-IronPort-AV: E=Sophos;i="6.23,216,1770624000"; d="scan'208";a="89126417"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 22:15:36 -0700
X-CSE-ConnectionGUID: gwAKZw3gSWaBXl0DMIOG5g==
X-CSE-MsgGUID: kyNdlXviR2ikO1/rB/o/9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,216,1770624000"; d="scan'208";a="239683482"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.109])
 ([10.166.28.109])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 22:15:36 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Mon, 04 May 2026 22:14:13 -0700
Message-Id: <20260504-jk-iwl-net-2026-05-04-v1-0-a222a88bd962@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yWMyw6CMBBFf4XcNZPUakH4FcJCcaqDppAWHwnh3
 x1geU7uPTMSR+GEOpsR+SNJhqBwyDN0j0u4M8lNGdbYwjhzov5J8n1R4IlWR8aRWl85W5zt0ZW
 lh37HyF5+W7eBbtHuMr2vPXfTWsSy/AE0Pb4bfgAAAA==
X-Change-ID: 20260504-jk-iwl-net-2026-05-04-f9526823577f
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Piotr Kwapulinski <piotr.kwapulinski@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>, 
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>, 
 Michal Kubiak <michal.kubiak@intel.com>, 
 Joshua Hay <joshua.a.hay@intel.com>, 
 Madhu Chittim <madhu.chittim@intel.com>, 
 Willem de Bruijn <willemb@google.com>, 
 Dave Ertman <david.m.ertman@intel.com>, Ivan Vecera <ivecera@redhat.com>, 
 Grzegorz Nitka <grzegorz.nitka@intel.com>
Cc: netdev@vger.kernel.org, stable@vger.kernel.org, 
 Jacob Keller <jacob.e.keller@intel.com>, Matt Vollrath <tactii@gmail.com>, 
 Sunitha Mekala <sunithax.d.mekala@intel.com>, Kohei Enju <kohei@enjuk.jp>, 
 Paul Menzel <pmenzel@molgen.mpg.de>, Simon Horman <horms@kernel.org>, 
 Emil Tantilov <emil.s.tantilov@intel.com>, 
 Samuel Salin <Samuel.salin@intel.com>, 
 Patryk Holda <patryk.holda@intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, stable@kernel.org, 
 Marcin Szycik <marcin.szycik@linux.intel.com>, 
 Bart Van Assche <bvanassche@acm.org>, intel-wired-lan@lists.osuosl.org, 
 Arpana Arland <arpanax.arland@intel.com>, Rinitha S <sx.rinitha@intel.com>
X-Mailer: b4 0.16-dev-ea14f
X-Developer-Signature: v=1; a=openpgp-sha256; l=4026;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=A8dqybLGdBd9AeDi/XiA0DySjlsRjMMkQbqYXoc7gNM=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhsyfNR8nLNzxUcAoS0991pWfubHHE/jELkVIcd/QjPi/f
 tpstU8HOkpZGMS4GGTFFFkUHEJWXjeeEKb1xlkOZg4rE8gQBi5OAZhIogsjw2uj6ct6Fm33jPBN
 b48s/rNP7UL9nW/NL7W72b4fD0vX0WRkeBgyI9DvXq64zmQdtftqlgfKN3p4ir1W0MyX81n/WOo
 lDwA=
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777958138; x=1809494138;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=A8dqybLGdBd9AeDi/XiA0DySjlsRjMMkQbqYXoc7gNM=;
 b=Bt008oxvpM4EfGmtQz761ieqr4PcPlr8fexcatUaBHJNzYC/7ESiig/h
 3udm9g5v0Ytdz7DOLvbAkWi+tIGlcvSfPxaQftmawwdFj4u4AapxZq1vZ
 fFIbUPCl1nKiprAUDruCXO3JoIPy1ZF5TajtF0AGLJ9sGM0bIl220ggbP
 9RRQoYjgqFU0sVeW/tVvFP+EzUwfN5dZO9WZtRpGbaveRvf4CSULfDr90
 zm+v7ZBH0Bdz+HjAgHmGJ2jSKU1fhmw2wKJVeCaMI1n/4WfI9cE0PR1ou
 8cMynMhwBK9E/JrnW0c9RDW+2B6HPl6g5rTiFgAlc7udy5kCs4oqfO3Iu
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Bt008oxv
Subject: [Intel-wired-lan] [PATCH net 00/13] Intel Wired LAN Driver Updates
 2026-05-04 (i40e, ice, idpf)
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
X-Rspamd-Queue-Id: AC96B4C6BE9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:piotr.kwapulinski@intel.com,m:aleksandr.loktionov@intel.com,m:arkadiusz.kubalewski@intel.com,m:maciej.fijalkowski@intel.com,m:michal.kubiak@intel.com,m:joshua.a.hay@intel.com,m:madhu.chittim@intel.com,m:willemb@google.com,m:david.m.ertman@intel.com,m:ivecera@redhat.com,m:grzegorz.nitka@intel.com,m:netdev@vger.kernel.org,m:stable@vger.kernel.org,m:jacob.e.keller@intel.com,m:tactii@gmail.com,m:sunithax.d.mekala@intel.com,m:kohei@enjuk.jp,m:pmenzel@molgen.mpg.de,m:horms@kernel.org,m:emil.s.tantilov@intel.com,m:Samuel.salin@intel.com,m:patryk.holda@intel.com,m:gregkh@linuxfoundation.org,m:anthony.l.nguyen@intel.com,m:stable@kernel.org,m:marcin.szycik@linux.intel.com,m:bvanassche@acm.org,m:arpanax.arland@intel.com,m:sx.rinitha@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[36];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,gmail.com,enjuk.jp,molgen.mpg.de,kernel.org,linuxfoundation.org,linux.intel.com,acm.org,lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]

Matt Volrath fixes two issues with the i40e driver probe routine, ensuring
that PTP is properly cleaned up if the probe fails.

Maciej fixes the i40e driver logic to keep the q_vectors array in sync with
changes to the channel count via ethtool.

Emil corrects the initialization of the read_dev_clk_lock spinlock in
idpf_ptp_init, ensuring it is initialized prior to when the
ptp_schedule_worker() is called.

Josh fixes the idpf driver to prevent enabling XDP if the queue based
scheduling is not supported by the firmware.

Josh fixes the idpf skb data path for handling queue based scheduling.

Josh fixes an XDP crash in the soft reset error path, restoring the
original configuration if idpf_xdp_setup_prog() fails.

Greg KH fixes a double free and use-after free in the idpf auxiliary device
error paths.

Marcin fixes ice_set_rss_hfunc() to use the correct q_opt_flags field,
correcting the assignment and preventing submission of invalid data to the
firmware.

Bart corrects the locking in ice_dcb_rebuild(), ensuring that the tc_mutex
is held over the entire operation.

Grzegorz fixes the ordering of ice_ptp_link_change() in ice_up_complete()
ensuring that the PTP timestamps will not be enabled before the PTP timer
is actually re-initialized.

Ivan fixes the rclk pin state get for E810 devices, ensuring the index is
properly offset by the base_rclk_idx value. This ensures that the correct
pin index is used to look up recovered clock state. He additionally adds
bounds checking to prevent attempting to access pins outside of the pin
state array.

Ivan also moves the CGU register macros to the top of ice_dpll.h, inside
the header guard to avoid duplicate macro definitions should the ice_dpll.h
header is included multiple times.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
Bart Van Assche (1):
      ice: fix locking in ice_dcb_rebuild()

Emil Tantilov (2):
      idpf: fix read_dev_clk_lock spinlock init in idpf_ptp_init()
      idpf: fix xdp crash in soft reset error path

Greg Kroah-Hartman (1):
      idpf: fix double free and use-after-free in aux device error paths

Grzegorz Nitka (1):
      ice: fix PTP hang for E825C devices

Ivan Vecera (2):
      ice: dpll: fix rclk pin state get for E810
      ice: dpll: fix misplaced header macros

Joshua Hay (2):
      idpf: do not enable XDP if queue based scheduling is not supported
      idpf: fix skb datapath queue based scheduling crashes and timeouts

Maciej Fijalkowski (1):
      i40e: keep q_vectors array in sync with channel count changes

Marcin Szycik (1):
      ice: fix setting RSS VSI hash for E830

Matt Vollrath (2):
      i40e: Cleanup PTP registration on probe failure
      i40e: Cleanup PTP pins on probe failure

 drivers/net/ethernet/intel/i40e/i40e.h          |  1 +
 drivers/net/ethernet/intel/ice/ice_dpll.h       | 32 ++++++-------
 drivers/net/ethernet/intel/idpf/idpf_txrx.h     | 12 +++--
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.h |  4 +-
 drivers/net/ethernet/intel/i40e/i40e_main.c     | 36 ++++++++++++---
 drivers/net/ethernet/intel/i40e/i40e_ptp.c      |  3 +-
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c    |  4 +-
 drivers/net/ethernet/intel/ice/ice_dpll.c       |  5 ++
 drivers/net/ethernet/intel/ice/ice_main.c       |  6 +--
 drivers/net/ethernet/intel/idpf/idpf_idc.c      |  6 +++
 drivers/net/ethernet/intel/idpf/idpf_lib.c      |  4 +-
 drivers/net/ethernet/intel/idpf/idpf_ptp.c      |  4 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c     | 61 ++++++++++++++-----------
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 19 ++------
 drivers/net/ethernet/intel/idpf/xdp.c           | 15 ++++--
 drivers/net/ethernet/intel/idpf/xsk.c           |  4 +-
 16 files changed, 132 insertions(+), 84 deletions(-)
---
base-commit: bd3a4795d5744f59a1f485379f1303e5e606f377
change-id: 20260504-jk-iwl-net-2026-05-04-f9526823577f

Best regards,
--  
Jacob Keller <jacob.e.keller@intel.com>

