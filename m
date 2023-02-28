Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B40D6A52B3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Feb 2023 06:46:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7A764610DC;
	Tue, 28 Feb 2023 05:46:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7A764610DC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677563174;
	bh=Przq3zgSpVAW582At05qG1PQbMVgZTHoAzg8Wjqi65I=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=F0G0YKcgHe1DzPnwIJXc7KjkLiiDeSdc2c4HAazs2HAvr6pciTInq3snj3z5Yhz6Z
	 d2eXZKcjqLj7AlRiZAkmpVJ9ziBZnQVARwl9ZwvKWmD5zas1wOtu9sWriVYvDvTxhC
	 Nx/3lkp+84ZsWEVfVqvbfYBFo8UavY/se0cf2bBkQPL4u1/W18zHpfUKldhUo3vw1d
	 YQOOx3iAlWF5U4KZlcOzJ0u9nU57s1xVlnzL9feo1cg8uYTSh+g4+2N9f1RA3wtJ3R
	 XF2wRZWqcBmlHqNyDorRTEiqphghv4dBtWXymFaL455MIBbVQKCNkSlOGTS0pndenE
	 NK+f6B591wxRQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yfuF1yMZX_Qs; Tue, 28 Feb 2023 05:46:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 620BB610BE;
	Tue, 28 Feb 2023 05:46:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 620BB610BE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AD68F1BF36E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 05:46:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8EB48610C2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 05:46:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8EB48610C2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cizf5K2AHMaP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Feb 2023 05:46:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 71384610BA
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 71384610BA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 05:46:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="313729835"
X-IronPort-AV: E=Sophos;i="5.98,221,1673942400"; d="scan'208";a="313729835"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 21:46:06 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="676183301"
X-IronPort-AV: E=Sophos;i="5.98,221,1673942400"; d="scan'208";a="676183301"
Received: from keverson-mobl.amr.corp.intel.com (HELO
 vcostago-mobl3.intel.com) ([10.209.84.181])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 21:46:06 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 27 Feb 2023 21:45:31 -0800
Message-Id: <20230228054534.1093483-1-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677563167; x=1709099167;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=m1/JZt6Vpvs6uV/6Zroed9MZ5SRVonHAhFD29ubMpFc=;
 b=Yn4TEOroIzZtkxD16C6EPE3I4TFJdm+RUWPBagdj+rfJjGExk9bbt35Y
 +FMhvywUxUpnUoqsF5JqY2r/wSvUrAmxxHQVE3unCruENsMW61cuh1+bU
 R3sC7aCmtOXORK2GYvR6e17nwBu6bl9qtGMWlKLLctoxKrvvEc5ZTWgl6
 QivXtzKWWRY/SttMFtd1UQfF/Wu8V7y0m2pzZF384wwtvikVVS5biPu5s
 1cNizwmnT66VIRpJ3VNhvphbQgof/MMCdVF1AgGUZynjyFA6bqTvBqqq0
 AvrL/LADvWjQ2KHa8R/ELB54r0hfXPApVUJO8UAOZMA1j+lNAvYr36LuW
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Yn4TEOro
Subject: [Intel-wired-lan] [PATCH next-queue v1 0/3] igc: Add support for
 multiple TX tstamp requests
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
Cc: vladimir.oltean@nxp.com, kurt@linutronix.de, anthony.l.nguyen@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

Intel I225 and I226 have 4 sets of registers used to store the result
of transmission timestamp requests, until now only one those sets was
used.

Add support for using those extra registers, so the driver is able to
handle multiple applications doing requests at the same time. This
will become more useful when support for PTP multi-domain is more
common.

The series is divided into three parts:

Patch 1 - The idea is to use spinlocks to handle concurrent access to
      the resources, the original version of the patch was proposed
      here:
      
      https://lore.kernel.org/all/20200728233754.65747-5-andre.guedes@intel.com/
      
      It has received some modifications to make it easier to
      integrate with later patches, and some fixes for issues found
      with lockdep.

Patch 2 - Use the 4 registers sets, the idea is simple, we have a pool
      of registers, and we use the first one from the pool that's
      free. Each element of the pool is pre-allocated with the
      register address from each timestamp register set.

Patch 3 - More of an optimization. Use the ptp_aux_work kthread to do
      the work, and also try to do the work "inline" if the timestamp
      is ready already. Suggested by Vladimir Oltean and Kurt
      Kanzenbach.


Evaluation
----------

To do the evaluation I am using a simple application that sends
packets (and waits for the timestamp to be received before sending the
next packet) and takes two measurements:
  1. from the HW timestamp value and the time the application
  retrieves the timestamps (called "HW to Timestamp";
  2. from just before the sendto() being called in the application to
  the time the application retrieves the timestamp (called "Send to
  Timestamp"). I think this measurement is useful to make sure that
  the total time to send a packet and retrieve its timestamp hasn't
  degraded.

(all tests were done for 1M packets, and times are in nanoseconds)

Before:

HW to Timestamp
	min: 9130
	max: 143183
	percentile 99: 10379
	percentile 99.99: 11510
Send to Timestamp
	min: 18431
	max: 196798
	percentile 99: 19937
	percentile 99.99: 26066

After:

HW to Timestamp
	min: 7933
	max: 31934
	percentile 99: 8690
	percentile 99.99: 10598
Send to Timestamp
	min: 17291
	max: 46327
	percentile 99: 18268
	percentile 99.99: 21575

The minimum times are not that different, but we can see a big
improvement in the 'maximum' time.


Andre Guedes (1):
  igc: Fix race condition in PTP tx code

Vinicius Costa Gomes (2):
  igc: Add support for multiple in-flight TX timestamps
  igc: Use ptp->aux_worker to retrieve TX timestamps

 drivers/net/ethernet/intel/igc/igc.h         |  25 ++-
 drivers/net/ethernet/intel/igc/igc_base.h    |   3 +
 drivers/net/ethernet/intel/igc/igc_defines.h |   7 +
 drivers/net/ethernet/intel/igc/igc_main.c    |  58 ++++-
 drivers/net/ethernet/intel/igc/igc_ptp.c     | 225 +++++++++++++------
 drivers/net/ethernet/intel/igc/igc_regs.h    |  12 +
 6 files changed, 240 insertions(+), 90 deletions(-)

-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
