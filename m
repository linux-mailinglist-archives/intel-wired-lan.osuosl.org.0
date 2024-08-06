Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C37C94996E
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Aug 2024 22:46:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 47B86404F9;
	Tue,  6 Aug 2024 20:46:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 14Q8hMby7-PD; Tue,  6 Aug 2024 20:46:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C40BE402B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722977202;
	bh=s2KLJEstit/ozsSTua/HnNyQISkvzs8Wh/0lMf1jZWg=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=bkb5UA9YGVFvTTRPuxE10lDvlTzxaT5VEyISi0MlbqrlvJ7t1CGmVHiVg3uQfq6f3
	 2qMXaiuPBTz/pKp2ccHE3zddgTs+vqQ/lNPoRDfUm2wS70R+y5ZRMytKQyaqaw4wjd
	 O3tBKmHp/kAEAEgYrZIrpR5chTW+3to9CB4L7PEuJav7EgwVUhnfW3g6Z3w6d8+tcN
	 0xHBJ//MCtHXrrn4Hl652QiSHdhBB81QB+e6dE8OA5ebrA31pvHejxG5sl5ZFbOnbo
	 F5Q4cDeJwkklPTVQV1+4/ekpfZpciH+/tTPgV7il0E167dJCB4zC+XcOc8TfXkqf5c
	 lmPILD+tEvRJg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C40BE402B0;
	Tue,  6 Aug 2024 20:46:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DF2F21BF33D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 20:46:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C8B6A40283
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 20:46:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FKO7wKQ_C88s for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Aug 2024 20:46:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C1DEA4000B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C1DEA4000B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C1DEA4000B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 20:46:38 +0000 (UTC)
X-CSE-ConnectionGUID: WoQAXeYVT4q6WpA7nil3sA==
X-CSE-MsgGUID: bmwRV+aVQXqe4T4pNR/XFA==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="20835910"
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="20835910"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 13:46:37 -0700
X-CSE-ConnectionGUID: 8N7uuT92QKqqRfzj0T8JHg==
X-CSE-MsgGUID: KCgPXV0+QhW7d2JKNdPETw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="56331574"
Received: from jekeller-desk.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.166.241.1])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 13:46:37 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Tue, 06 Aug 2024 13:46:20 -0700
Message-Id: <20240806-e810-live-migration-rd32-poll-timeout-v1-0-b5ada29ce703@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJ2LsmYC/5WOTQ6CMBCFr2Jm7Zi2/IiuvIdhUWCESUpL2loxh
 LvbcAOXL9/L+94GgTxTgPtpA0+JAzubgzyfoJ+0HQl5yBmUUKVoRIXUSIGGE+HMo9cx99EPhcL
 FGYORZ3LviEo2muqyLDrqIG8tnl68Hp4n8MegpTVCm8nEITr/PQ4kefA/XUmiQC31te4HXXW36
 sE2krn0boZ23/cf72kjO+QAAAA=
To: Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, 
 "netdev netdev"@vger.kernel.org
X-Mailer: b4 0.13.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722977199; x=1754513199;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=CFIuEgMfzEaWb/k6NG+ZaZuPHnlg/xtrPZpRsKaT2lg=;
 b=f/vTYkjgoZVBZyIUKCUAuKEoAgvot3mh86UtXsZwAh9S34AAYSXzrXFg
 g7aTv/6MzZAk4F4/vBYNTv/n1WIKMwViMxqPcaq8D5VIdyu4xHuuZ1W+7
 EBpMqmn6SiDPTKiQkME5Ty2UyBcTTWARc/c+2xf+ESAxdCP2bE7kANjD4
 Hp2urXdw8ZUnoMoI9x2eCpNgQE5LtHkOpRl2uLdbRY/XM+nTcP18n5Zc7
 +kYwxiOAAnFJmzpbijkX10KRyirY4pz2graI7nSabq/pkFFq/z9biH2Sw
 ZH3yIbURooPKLqo8p0wyG7zGJT3v8+eSzb3V1Wr1cshIvIKiKP2bKoCj0
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=f/vTYkjg
Subject: [Intel-wired-lan] [PATCH iwl-next 0/7] ice: refactor and cleanup
 control queue logic
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
Cc: Sergey Temerkhanov <sergey.temerkhanov@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Jacek Wierzbicki <jacek.wierzbicki@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series includes several minor improvements and refactors to the
control queue logic.

Jacob implements and uses rd32_poll_timeout to replace a jiffies loop for
calling ice_sq_done. The rd32_poll_timeout() function is designed to allow
simplifying other places in the driver where we need to read a register
until it matches a known value.

Jacob, Bruce, and Przemek update ice_debug_cq() to be more robust, and more
useful for tracing control queue messages sent and received by the device
driver.

Jacob rewords several commands in the ice_control.c file which previously
referred to the "Admin queue" when they were actually generic functions
usable on any control queue.

Jacob removes the unused and unnecessary cmd_buf array allocation for send
queues. This logic originally was going to be useful if we ever implemented
asynchronous completion of transmit messages. This support is unlikely to
materialize, so the overhead of allocating a command buffer is unnecessary.

Sergey improves the log messages when the ice driver reports that the NVM
version on the device is not supported by the driver. Now, these messages
include both the discovered NVM version and the requested/expected NVM
version.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
Bruce Allan (1):
      ice: do not clutter debug logs with unused data

Jacob Keller (4):
      ice: implement and use rd32_poll_timeout for ice_sq_done timeout
      ice: improve debug print for control queue messages
      ice: reword comments referring to control queues
      ice: remove unnecessary control queue cmd_buf arrays

Przemek Kitszel (1):
      ice: stop intermixing AQ commands/responses debug dumps

Sergey Temerkhanov (1):
      ice: Report NVM version numbers on mismatch during load

 drivers/net/ethernet/intel/ice/ice_adminq_cmd.h |   4 +
 drivers/net/ethernet/intel/ice/ice_controlq.h   |   5 +-
 drivers/net/ethernet/intel/ice/ice_osdep.h      |  28 ++--
 drivers/net/ethernet/intel/ice/ice_controlq.c   | 176 +++++++++++++-----------
 4 files changed, 116 insertions(+), 97 deletions(-)
---
base-commit: 10a6545f0bdcbb920c6a8a033fe342111d204915
change-id: 20240805-e810-live-migration-rd32-poll-timeout-218ae6443beb

Best regards,
-- 
Jacob Keller <jacob.e.keller@intel.com>

