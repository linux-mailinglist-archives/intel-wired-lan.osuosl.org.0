Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CACB85CA37
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Feb 2024 22:46:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E8274606F5;
	Tue, 20 Feb 2024 21:46:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 983N7oUJ9J6F; Tue, 20 Feb 2024 21:46:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C91A860ADF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708465593;
	bh=wQg4G1a9ty+tLeenqhwVYUjgYpiZv3SOz9ur1FWmu9E=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=IKZVe5+P1fwd0aU70ugiAfjRB4PwfjpR5fcjLLaEpGLzH2+tqXvbWyPUQFB3irfkz
	 3fYru8DM5YRxrbzV4Zl1eNUryZE8qGaJdJUJrSVUXGyyQCrlmNiyWfh7CAJ4+6EHjQ
	 YqZIyz4UdSoGW33wYecfIHEfjOo1X00pO4m5paD/umKI+AOxQMN4Rusz9Bq2NbFjIc
	 b6YyRArMgrol7FXikGB8y03wqrl0FAO1lM2ZnbKrBmNjD9jbXXohELtYS1XUW2Kiu5
	 L63lpG3q57BYrkeXUXVcq1PuHN24Xz7v+vmX5GonDNKABoe6Tv29yMOahK2q/d8UrP
	 O0WJ7YTwflaYg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C91A860ADF;
	Tue, 20 Feb 2024 21:46:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3CE9C1BF475
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 21:46:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 357B9415CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 21:46:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QMtnIO_mL4qZ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Feb 2024 21:46:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 69FAA41596
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 69FAA41596
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 69FAA41596
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 21:46:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="2462662"
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; 
   d="scan'208";a="2462662"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 13:46:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; d="scan'208";a="35681878"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orviesa002.jf.intel.com with ESMTP; 20 Feb 2024 13:46:28 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 20 Feb 2024 22:45:50 +0100
Message-Id: <20240220214553.714243-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708465591; x=1740001591;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2XHz7+3JkvXaG06/fQQuuRquQdZa2NdRVMlfweA4+1M=;
 b=FchdcB8yFD03ha4ZUNxfewHfUQsKv0MfqHKjhB/x0gHV+XRP2uo+DvSO
 OnTOhp1Z/xifjy/beQuFQj9IQtkQmbefxrVNE0fkdg5FfTns/E5dl67MN
 vg8KRuW3/x/vcl8hNNW3kPrMt8JTGsYpEJE8SCyVNgsjn7nn0kwmrz0Se
 KbNZA3YX8z/++6R4FmPsDwzBC7A6YPnvVSpVdbAf+pQfDRcrJMsFK575P
 lrL7Wes19yNxl8Y7T54OJ2j7P+RYalKgTNyeuqC0H5ZPEllYuU3T1ubna
 0WaM/mKOyq8p/byOKAJF7ZcfTKWtWY/Ho9P04yYD14iWjp7dkq0araN6q
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FchdcB8y
Subject: [Intel-wired-lan] [PATCH iwl-net 0/3] intel: fix routines that
 disable queue pairs
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
Cc: netdev@vger.kernel.org, Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 anthony.l.nguyen@intel.com, magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

It started out as an issue on ixgbe reported by Pavel [0] which first
patch is supposed to fix, but apparently i40e and ice have queue pair
disabling flow a bit out of order, so I addressed them as well. More
info is included in commit messages.

FWIW we are talking here about AF_XDP ZC when xsk_pool is sent down to
driver. Typically these routines are executed when there is already XDP
program running on interface.

Thanks!

[0]: https://lore.kernel.org/netdev/CAJEV1ijxNyPTwASJER1bcZzS9nMoZJqfR86nu_3jFFVXzZQ4NA@mail.gmail.com/

Maciej Fijalkowski (3):
  ixgbe: {dis,en}able irqs in ixgbe_txrx_ring_{dis,en}able
  i40e: disable NAPI right after disabling irqs when handling xsk_pool
  ice: reorder disabling IRQ and NAPI in ice_qp_dis

 drivers/net/ethernet/intel/i40e/i40e_main.c   |  2 +-
 drivers/net/ethernet/intel/ice/ice_xsk.c      |  9 +--
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 56 ++++++++++++++++---
 3 files changed, 55 insertions(+), 12 deletions(-)

-- 
2.34.1

