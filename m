Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4KrFNma3+2kXDwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 06 May 2026 23:49:26 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B8F4E0BA4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 06 May 2026 23:49:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 19DB040732;
	Wed,  6 May 2026 21:49:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tnHcptnkEUnE; Wed,  6 May 2026 21:49:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5E8CD406F6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778104162;
	bh=0AdL7K/GmgJEj6AUJF/kHE5QGx2meMGAEOk2nTTtjGw=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=MgN1tUUUs+DvCMAXDY684qjEs7b1Xai5tWFLKlaFlfF21/XH+AScVEgPSMvkYCxUs
	 piLhZrpbZ8ol0h0431PsBt5A+Ujw+wcFtJM2y3rhivWL2YTH2p3u3mUjuNWeDkYMEm
	 q9IqqhFKdxtyCHTMavm0aYYlBmhHxjrCXAWFbq9XEM1YTiQujLfrSGpkFuF90D6fyS
	 pvPZUl1X+gbEUCg8sb3dc7HN7+hXd02AoO2oJQfj6S/Bl2M16IwkOuMso1fLjtr0H2
	 EqeNIRdqrN1KdAm8lPSsPmMXyECCLnxY619MOeXPCpYhBz9Clrl2GIdLN+FPgLupwn
	 I771IiTyA+Dog==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5E8CD406F6;
	Wed,  6 May 2026 21:49:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id A51DB317
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 21:49:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 96F9760F4B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 21:49:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e0Mtva6Y4WuO for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 May 2026 21:49:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AC7CA60E95
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AC7CA60E95
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AC7CA60E95
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 21:49:19 +0000 (UTC)
X-CSE-ConnectionGUID: wN/nP8R+Svmnx016EBNRPw==
X-CSE-MsgGUID: GwK161XeSDO0HEIo8eFnUA==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="78982474"
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="78982474"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 14:49:18 -0700
X-CSE-ConnectionGUID: fFM+kkj7QVmpDoQdPxdvHQ==
X-CSE-MsgGUID: P6bq3gwlQLO5BZSe8Wzjlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="259698605"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.109])
 ([10.166.28.109])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 14:49:17 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 06 May 2026 14:48:09 -0700
Message-Id: <20260506-jk-iwl-net-2026-05-04-v2-0-a5ea4dc837a9@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/4WNSw6CQBBEr0J6bZuhdfi48h6GBZ9GGnEwMyNqC
 Hd3wAO4rJdXVTM4tsIOTtEMlidxMpoQaBdB3ZXmyihNyECKEqXVEfsbymtAwx5XhkpjoG2uKcn
 ooNO0hdB9WG7lve1eILhQ/KB7Vj3Xfl1ctU6cH+1ne5/iTf5zNMWosCSiMsuqJk/oLMbzsK/HO
 xTLsnwBrLXYs9EAAAA=
X-Change-ID: 20260504-jk-iwl-net-2026-05-04-f9526823577f
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Piotr Kwapulinski <piotr.kwapulinski@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>, 
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>, 
 Joshua Hay <joshua.a.hay@intel.com>, 
 Madhu Chittim <madhu.chittim@intel.com>, 
 Willem de Bruijn <willemb@google.com>, 
 Dave Ertman <david.m.ertman@intel.com>, Ivan Vecera <ivecera@redhat.com>, 
 Grzegorz Nitka <grzegorz.nitka@intel.com>
Cc: netdev@vger.kernel.org, stable@vger.kernel.org, 
 Jacob Keller <jacob.e.keller@intel.com>, Matt Vollrath <tactii@gmail.com>, 
 Sunitha Mekala <sunithax.d.mekala@intel.com>, Kohei Enju <kohei@enjuk.jp>, 
 Paul Menzel <pmenzel@molgen.mpg.de>, 
 Emil Tantilov <emil.s.tantilov@intel.com>, Simon Horman <horms@kernel.org>, 
 Samuel Salin <Samuel.salin@intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, stable@kernel.org, 
 Marcin Szycik <marcin.szycik@linux.intel.com>, 
 Bart Van Assche <bvanassche@acm.org>, intel-wired-lan@lists.osuosl.org, 
 Arpana Arland <arpanax.arland@intel.com>
X-Mailer: b4 0.16-dev-ea14f
X-Developer-Signature: v=1; a=openpgp-sha256; l=2786;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=UCMx9KGLx0pU5Z3g8AUDAOyv1zy/CnZ5A9pStdcQe+Y=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhszf28O54v7FL5kj9ypx8TX/KxzfZz1apm6z7dk6lpYjP
 /m6rhz631HKwiDGxSArpsii4BCy8rrxhDCtN85yMHNYmUCGMHBxCsBEntkxMjzvZ9D727bk54qN
 q+UaZgtcnZbx0j6rNHrupVNuBu62z0IYGf7N+JzG5PW5biIvk/L2mx5Wz5e0R3n6ln688Mnm2I0
 HFqwA
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778104159; x=1809640159;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=UCMx9KGLx0pU5Z3g8AUDAOyv1zy/CnZ5A9pStdcQe+Y=;
 b=H/brE9vWsKYsrph1pzFrIuYBJbBEYF5HVGq/Vm6vmP0aXwgjc7OSuGS+
 sCAOIe31tHhNpyWvgUDp3sFn6ETbrH5kzg7oMvxeqvLSWoh2Dbx6FhOEM
 btst9GTFNqPt27wWA9tTg+sp12RIvJrvrHfcCVanf1xAoEe7dq7yyMGYB
 MitAvCyuvEU7ls4ywS33VlEbliSL/QzNveL3SAK+4/U+uxZnWcNj8Uf95
 hm5GquuWRjBYiGMandoVk88wOcBYuednyxZGVluEXY02XYl6PfgZ2vzOG
 XAKWosp+PNd9a3+K3frF5bo/qsJHHCQLSRgZTg3L5jUcnhH2AFoY8hQcV
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=H/brE9vW
Subject: [Intel-wired-lan] [PATCH net v2 0/8] Intel Wired LAN Driver Updates
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
X-Rspamd-Queue-Id: 28B8F4E0BA4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [8.89 / 15.00];
	URIBL_BLACK(7.50)[osuosl.org:dkim];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	R_DKIM_ALLOW(0.00)[osuosl.org:s=default];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:piotr.kwapulinski@intel.com,m:aleksandr.loktionov@intel.com,m:arkadiusz.kubalewski@intel.com,m:maciej.fijalkowski@intel.com,m:joshua.a.hay@intel.com,m:madhu.chittim@intel.com,m:willemb@google.com,m:david.m.ertman@intel.com,m:ivecera@redhat.com,m:grzegorz.nitka@intel.com,m:netdev@vger.kernel.org,m:stable@vger.kernel.org,m:jacob.e.keller@intel.com,m:tactii@gmail.com,m:sunithax.d.mekala@intel.com,m:kohei@enjuk.jp,m:pmenzel@molgen.mpg.de,m:emil.s.tantilov@intel.com,m:horms@kernel.org,m:Samuel.salin@intel.com,m:gregkh@linuxfoundation.org,m:anthony.l.nguyen@intel.com,m:stable@kernel.org,m:marcin.szycik@linux.intel.com,m:bvanassche@acm.org,m:arpanax.arland@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[33];
	GREYLIST(0.00)[pass,meta];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,gmail.com,enjuk.jp,molgen.mpg.de,kernel.org,linuxfoundation.org,linux.intel.com,acm.org,lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_SPAM(0.00)[0.374];
	R_SPF_ALLOW(0.00)[+mx:c];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: add header
X-Spam: Yes

Matt Volrath fixes two issues with the i40e driver probe routine, ensuring
that PTP is properly cleaned up if the probe fails.

Emil corrects the initialization of the read_dev_clk_lock spinlock in
idpf_ptp_init, ensuring it is initialized prior to when the
ptp_schedule_worker() is called.

Greg KH fixes a double free and use-after free in the idpf auxiliary device
error paths.

Marcin fixes ice_set_rss_hfunc() to use the correct q_opt_flags field,
correcting the assignment and preventing submission of invalid data to the
firmware.

Bart corrects the locking in ice_dcb_rebuild(), ensuring that the tc_mutex
is held over the entire operation.

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
Changes in v2:
- Dropped patches which had comments from Sashiko pointing out issues that
  need to be addressed.
- Link to v1: https://patch.msgid.link/20260504-jk-iwl-net-2026-05-04-v1-0-a222a88bd962@intel.com

---
Bart Van Assche (1):
      ice: fix locking in ice_dcb_rebuild()

Emil Tantilov (1):
      idpf: fix read_dev_clk_lock spinlock init in idpf_ptp_init()

Greg Kroah-Hartman (1):
      idpf: fix double free and use-after-free in aux device error paths

Ivan Vecera (2):
      ice: dpll: fix rclk pin state get for E810
      ice: dpll: fix misplaced header macros

Marcin Szycik (1):
      ice: fix setting RSS VSI hash for E830

Matt Vollrath (2):
      i40e: Cleanup PTP registration on probe failure
      i40e: Cleanup PTP pins on probe failure

 drivers/net/ethernet/intel/i40e/i40e.h       |  1 +
 drivers/net/ethernet/intel/ice/ice_dpll.h    | 32 ++++++++++++++--------------
 drivers/net/ethernet/intel/i40e/i40e_main.c  |  2 ++
 drivers/net/ethernet/intel/i40e/i40e_ptp.c   |  3 ++-
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c |  4 ++--
 drivers/net/ethernet/intel/ice/ice_dpll.c    |  5 +++++
 drivers/net/ethernet/intel/ice/ice_main.c    |  2 +-
 drivers/net/ethernet/intel/idpf/idpf_idc.c   |  6 ++++++
 drivers/net/ethernet/intel/idpf/idpf_ptp.c   |  4 ++--
 9 files changed, 37 insertions(+), 22 deletions(-)
---
base-commit: bd3a4795d5744f59a1f485379f1303e5e606f377
change-id: 20260504-jk-iwl-net-2026-05-04-f9526823577f

Best regards,
--  
Jacob Keller <jacob.e.keller@intel.com>

