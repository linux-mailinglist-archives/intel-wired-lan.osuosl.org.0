Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BA2B4716B72
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 May 2023 19:46:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 239AA81F36;
	Tue, 30 May 2023 17:46:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 239AA81F36
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685468791;
	bh=Mgr/yTEuI6YYO6pXjD/iXnkM5B8JBgFxCi3doNzMKlM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=zEtcf9Zsh2odUjxtCW05mYB0jIvsWw9gr+kT0WWFlFO7TqeR+SRzRPrPofRacMtgS
	 H06V7eEg+2O31cIMKmBLkIKyJ0RynQd8A+jA/cIH4SqDIcGUJekTZy+68KN6hZCGl9
	 3bPzUdFcAT+t+IZtl4VY4RBGYxiwwG3Fr6QOA11RHx7TD/tm49PNaMB8Bx6sy4fdJN
	 QUMzcwxsk5W61T79KJTNunkzhN5+0V/lkiCaAL3PBSZipYMm9AyVaeEaTdmAR0hJJG
	 rWW1HTEjeOzJp2wkd/dP61WiNBmG8rz2OJ53U7aEzUWHJnlZ7dJLT7Fb7vKwLcM6A6
	 ulse+59oXIeQA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4l4El7FLp5-J; Tue, 30 May 2023 17:46:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 82AC981F38;
	Tue, 30 May 2023 17:46:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 82AC981F38
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 621F21BF5DA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 17:46:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 37B8F81F38
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 17:46:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 37B8F81F38
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id coWA0pRTfapn for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 May 2023 17:46:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 13C3381F19
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 13C3381F19
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 17:46:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="358253141"
X-IronPort-AV: E=Sophos;i="6.00,204,1681196400"; d="scan'208";a="358253141"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 10:46:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="776430980"
X-IronPort-AV: E=Sophos;i="6.00,204,1681196400"; d="scan'208";a="776430980"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 10:46:21 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Date: Tue, 30 May 2023 10:46:00 -0700
Message-ID: <20230530174605.2772054-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.40.0.471.gbd7f14d9353b
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685468783; x=1717004783;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+JEaEciqhRqdJcCkdT2jNfytMvbrg2ZSavJUzZDluZ0=;
 b=OZeqNoGy6+Sh6R3GkU9uB63Ny7RUu2/7hONHyMuDZx42lXlKwq3C/YT2
 25/erAyyDNmrfpAITtQwVzbCKzRHgd9z1CFMjkp3Mgl0cz88z9GYfJM1v
 sYsIBePxyMinZHzwj2+bpTsR24LnFOzz2O3XoA04zCpETHrtk1SwHD65y
 JVRe7h03DKSPJyP3Z08/OP/7rD86jJYVUseWE+acbuW4t1P1eEdqDUeNC
 k4PDj/aKBdmHEpPGy2pUv80skBOHO6+FaeK21fChOSmxIWb2WtLIzPa3v
 7CXqlH3NafRlQxy1ocq+MCmo1pSIhf+Desf7FiQ2nEfTUSZv1aAFqfR9c
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OZeqNoGy
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/5] ice: Improve
 miscellaneous interrupt code
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series fixes issues that occur due to the interaction with the hard IRQ
ice_misc_intr() function and the soft IRQ ice_misc_intr_thread_fn().

First, Karol fixes an issue with the external timestamp being handled by the
PTP kworker, resulting in a disruption of timestamping an input signal on
the external software defined pins with a frequency of 100Hz.

Second, Karol fixes an issue when running on PREEMPT_RT kernels due to such
kernels not allowing queue_work() inside of the hard IRQ. The scheduling of
the service task is moved into the soft IRQ thread function instead.

Following this, I have three patches intended to fix an issue with the
handling for E822 hardware involving a rather subtle and complicated race
between the hard IRQ function and the soft IRQ thread function. Ultimately
the code is refactored so that we stop polling in the thread function, and
ensure that the OICR (Other interrupt control register) is disabled for the
duration of the thread.

I think that while this does fix a race condition issue, the amount of
changes required to refactor the interrupt function is large enough that it
does not warrant going into net.

The race itself manifests only if multiple Tx timestamps are outstanding at
once. This is atypical behavior for most applications. For example, ptp4l
synchronously waits for timestamps before continuing processing.


Jacob Keller (3):
  ice: introduce ICE_TX_TSTAMP_WORK enumeration
  ice: trigger PFINT_OICR_TSYN_TX interrupt instead of polling
  ice: do not re-enable miscellaneous interrupt until thread_fn
    completes

Karol Kolacinski (2):
  ice: handle extts in the miscellaneous interrupt thread
  ice: always return IRQ_WAKE_THREAD in ice_misc_intr()

Changes since v1:
* Re-write commit message for the second patch involving the
  ice_schedule_work() change.
* Remove unused more_timestamps variable

 drivers/net/ethernet/intel/ice/ice.h      |  1 +
 drivers/net/ethernet/intel/ice/ice_main.c | 52 +++++++++++++------
 drivers/net/ethernet/intel/ice/ice_ptp.c  | 62 ++++++++++++-----------
 drivers/net/ethernet/intel/ice/ice_ptp.h  | 16 ++++--
 4 files changed, 83 insertions(+), 48 deletions(-)


base-commit: 1e806efa4f2837a829044df27e1196a4fd520ba3
-- 
2.40.0.471.gbd7f14d9353b

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
