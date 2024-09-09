Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 773A397258E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Sep 2024 01:08:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B97AC60832;
	Mon,  9 Sep 2024 23:07:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id em4li7DydwvU; Mon,  9 Sep 2024 23:07:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C442D60828
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725923277;
	bh=aYAyMfLl/WUrDLg4a8DaG06/0qHg3UpC2Vl5hbZIRbk=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=tnYTdR8UILGaN7LLblLEemFZQZ4bBFNbBhqt9BLOalfEgK8z2lx5FZnGTrZNahgtF
	 +145VRHg8uahktWtwg/LLqV83Om2PrfXCQxxlRAUxpXU1DxPOIsMACa+Ske9QdjOFs
	 uyzczIBeo5XbI1FltUoms9bO8TNCJqnHoOm5XuWNu4by1BLtwWSoD73QBEJErpHhJm
	 7doDy3TYEjIbt4K3JtUCsiKwRQgrYBD5S9C9/Snvg4k8GYcARvYmQhdu49ebEoSAHZ
	 2mIdC4L3/3S+MAUvq2QGJ8Ccx3Ys63Lgj+NWGa1hRgPTfEc/Qn7JKl0RyXBuSBi9xZ
	 uV1ZbtfwZkDhg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C442D60828;
	Mon,  9 Sep 2024 23:07:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DEDEA1BF300
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2024 23:07:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CA0B16082B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2024 23:07:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id em8L8jAobxvB for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Sep 2024 23:07:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BF6D860824
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BF6D860824
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BF6D860824
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2024 23:07:54 +0000 (UTC)
X-CSE-ConnectionGUID: GybAOTq1TFGILXAHOJZujQ==
X-CSE-MsgGUID: rnQeBH+nQpOp7Ot1rHrEVg==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="13448221"
X-IronPort-AV: E=Sophos;i="6.10,215,1719903600"; d="scan'208";a="13448221"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 16:07:55 -0700
X-CSE-ConnectionGUID: 836AJHWrRwGkaJVLHwodSg==
X-CSE-MsgGUID: p3wVobsTTPCsYivRXW/mDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,215,1719903600"; d="scan'208";a="70940069"
Received: from jekeller-desk.jf.intel.com ([10.166.241.20])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 16:07:54 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Mon, 09 Sep 2024 16:07:43 -0700
Message-Id: <20240909-e810-live-migration-jk-per-queue-max-frame-rx-buf-len-v1-0-f955205bc78f@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAL9/32YC/6WOTQ6CMBCFr2Jm7ZgWSQBX3sOwKHSA0VJwgIoh3
 N2GK7h8P3nf22AiYZrgdtpAKPDEg49Cn09Qd8a3hGyjhkQlqcqTAinXCh0Hwp5bMXPs4/OFIwm
 +F1qibVZsxPSEsmK1NOjIo1VZrc210spmELdHoYbXg/sA/jj0tM5QxqTjaR7kexwK+sj/ZAeNC
 otK27ROlMkLc2c/k7vUQw/lvu8/HSrnSQQBAAA=
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>
X-Mailer: b4 0.14.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725923275; x=1757459275;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=VgAXP5zJbU+kjVnhnW7wmCq7L79zL/IE3NNPEpYScUk=;
 b=nCH5s7OBB7bgkOfqVrxbUHlOvDk8LnJFL+eB2BB8MukH7vGV3dx9zmJJ
 EAAS/D57/qFDIw6FPBD99dnifcqOj7dsUgGkJEwu6xdPryKMDcRfEmHT+
 Th43Jf+z9Rwop4p6ozAQ2QC1xvDBovISleCccdPoxqBeU4XFw/Lih/YSp
 6hQt+BFa+W1L02JJrR05sTy76F5goz8gxG+7D6lylUDbMHrkiTVfujLqh
 +bbYvFIG/gTBqsb09QyS4rYhDnttNLAaMk5AlXEudi7wKJzPooJB8Mb+q
 jzsoFoajkknFOXpC55PtTthbRVO7+UUtMuVzdF53qe2V9cFQPEnRkWvpN
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nCH5s7OB
Subject: [Intel-wired-lan] [PATCH iwl-next 0/2] ice: store max frame and
 rx_buf_len only in ice_rx_ring
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
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

While working on ice VF Live Migration support, I noticed some oddities
with how the vsi->max_frame and vsi->rx_buf_len fields are used.
Technically, both the hardware and virtchnl interface allow a VF to set
per-queue maximum frame size and buffer lengths. The existing code does
this in a surprising and non-intuitive way by setting the VSI variables for
each VF queue in between programming the queues during bring-up.

I ran into this when accidentally assuming that the max_frame variable was
constant for a given VF VSI, and not per-queue.

Instead of keeping the per-VSI values, replace them with per-ring values.
We already have rx_buf_len for the hotpath, so we can just add max_frame.
Better yet, the structure has gaps, so we're not wasting any additional
space.

This refactor simplifies the logic for programming the VF and removes the
surprise of overwriting the ring->rx_buf_len with the vsi->rx_buf_len when
programming.

While implementing this change, I also noticed that the ring accessed when
programming the Rx rings was sometimes indexed via the q_idx and sometimes
indexed by the 'i' iterator over the queue pair array. Nothing validated
that these two values are equivalent. It makes sense to only interact with
the ring via the q_idx so that we are consistent in the event that these
values differ.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
Jacob Keller (2):
      ice: consistently use q_idx in ice_vc_cfg_qs_msg()
      ice: store max_frame and rx_buf_len only in ice_rx_ring

 drivers/net/ethernet/intel/ice/ice.h          |  3 ---
 drivers/net/ethernet/intel/ice/ice_txrx.h     |  3 ++-
 drivers/net/ethernet/intel/ice/ice_base.c     | 34 ++++++++++++++-------------
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 26 ++++++++++----------
 4 files changed, 32 insertions(+), 34 deletions(-)
---
base-commit: bfba7bc8b7c2c100b76edb3a646fdce256392129
change-id: 20240829-e810-live-migration-jk-per-queue-max-frame-rx-buf-len-d07c1a3b10d7

Best regards,
-- 
Jacob Keller <jacob.e.keller@intel.com>

