Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 454F772708E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Jun 2023 23:32:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D430F4180B;
	Wed,  7 Jun 2023 21:32:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D430F4180B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686173567;
	bh=07aZGKlkXGobb/EaeWDgqbFipV6hA7GqT2In/YJc6Bs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=9oJVka1XVXa22d3uH2KZgICZgNJNWgdX3PU92bVqJ7xFzQhodTvwMnhQbgGWw8z5c
	 fnkX7uhlXJefvH2X+RoB3TTSBZWnFyArjfzfN1GCp6idJQrQZD66RNez1+M2X7hqw2
	 4hfLOvk5vlLLucX3lDZbHlTlq9K9SNxp31bBygtLWWiZuZ0nPlFieu++cXHqgKTXXt
	 2WnTnYGdP+gRO4jPvwtDhCYRCrjK5JbGMM5o0tF/qhCDpPAlXLHsILyPlBP6QYuFrj
	 k8XiZWYDSm0rwfwIAZBOU715YyOH9wbwx/CP7US72SZ9Z+3Y3WNKnkMBKmoXyf7QwL
	 nV993vq8bszRw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XRIu4bt5phRk; Wed,  7 Jun 2023 21:32:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6487941736;
	Wed,  7 Jun 2023 21:32:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6487941736
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A754B1BF3CD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 21:32:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8AC6C612D7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 21:32:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8AC6C612D7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xoaWaVsv940S for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jun 2023 21:32:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5859160B36
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5859160B36
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 21:32:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="336741869"
X-IronPort-AV: E=Sophos;i="6.00,225,1681196400"; d="scan'208";a="336741869"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 14:32:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="742853909"
X-IronPort-AV: E=Sophos;i="6.00,225,1681196400"; d="scan'208";a="742853909"
Received: from adtotpal-mobl.amr.corp.intel.com (HELO
 vcostago-mobl3.intel.com) ([10.209.21.176])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 14:32:38 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  7 Jun 2023 14:32:28 -0700
Message-Id: <20230607213232.875138-1-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686173560; x=1717709560;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6iV+6S4OpkrSRaWa4Pjyg2A6iuSCRweq0rfR6NScJh0=;
 b=I5N4pexltt9DQlC54qM7ZkO+We5VcVBQSuiaXYEvq61WtSjPsSxRHmAw
 agCcvMZ7BZ7rnR4jFa6zTkgM91MXmplAEZJ446/66ELUwoypWrLnaFSwq
 +JBt9RD2wf606xYMjXj+O2zB2NSLoskJ1WDGX2/I4hRsom/auyU8APC8R
 KalHKCYJ7RgQk4G+8IxSGT5s01SCj4JCDCYqOjGNTZVVk0uE8EEdsjTZR
 itWL1E0EEmaZQwjK74vD4DABLv7h331yyKhGJ10zi111yH1BDKA3ibv+U
 iZ0M8cgw+aSOM4qXAznzYW8sa2mdV+lbJJReFc4eVseiwjPyXmEhhxVe4
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=I5N4pexl
Subject: [Intel-wired-lan] [PATCH iwl-net v4 0/4] igc: TX timestamping fixes
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

Changes from v3:
 - Improved commit message, added more details about how to trigger
   the hardware issue, and more details about the alternative
   workaround to the cover letter (Paul Menzel);

Changes from v2:
 - Fixed possible race condition when disabling TX timestamping, added
   a per queue flag, should make the hot path (no timestamps enabled)
   a bit nicer (Jakub Kicinski);
 - Renamed the igc_ptp_tx_work() to something more sensible (it's no
   longer called in a workqueue) (Marc Kleine-Budde);
 - Added some numbers, from the cover letter, to the commit message
   itself (Paul Menzel);

Changes from v1:
 - Squashed 3/5 into 1/5 (from v1), into 2/4 (v2) (Tony Nguyen);
 - Improved the commit message of 1/4 (Kurt Kanzenbach);
 - Added "Reviewed-by:" tags;

v1 link:
https://lore.kernel.org/intel-wired-lan/20230504235233.1850428-1-vinicius.gomes@intel.com/

Changes from the "for-next-queue" version:
 - As this is intended for the iwl/net-queue tree, removed adding
   support for adding the "extra" tstamp registers;
 - Added "Fixes:" tags to the appropriate patches (Vladimir Oltean);
 - Improved the check to catch the case that the skb has the
   SKBTX_HW_TSTAMP flag, but TX timestamping is not enabled (Vladimir
   Oltean);
 - Ony check for timestamping timeouts if TX timestamping is enabled
   (Vladimir Oltean);

for-next-queue version link:
https://lore.kernel.org/intel-wired-lan/20230228054534.1093483-1-vinicius.gomes@intel.com/

This is the fixes part of the series intended to add support for using
the 4 timestamp registers present in i225/i226.

Moving the timestamp handling to be inline with the interrupt handling
has the advantage of improving the TX timestamping retrieval latency,
here are some numbers using ntpperf:

Before:

$ sudo ./ntpperf -i enp3s0 -m 10:22:22:22:22:21 -d 192.168.1.3 -s 172.18.0.0/16 -I -H -o -37
               |          responses            |     TX timestamp offset (ns)
rate   clients |  lost invalid   basic  xleave |    min    mean     max stddev
1000       100   0.00%   0.00%   0.00% 100.00%      -56      +9     +52     19
1500       150   0.00%   0.00%   0.00% 100.00%      -40     +30     +75     22
2250       225   0.00%   0.00%   0.00% 100.00%      -11     +29     +72     15
3375       337   0.00%   0.00%   0.00% 100.00%      -18     +40     +88     22
5062       506   0.00%   0.00%   0.00% 100.00%      -19     +23     +77     15
7593       759   0.00%   0.00%   0.00% 100.00%       +7     +47   +5168     43
11389     1138   0.00%   0.00%   0.00% 100.00%      -11     +41   +5240     39
17083     1708   0.00%   0.00%   0.00% 100.00%      +19     +60   +5288     50
25624     2562   0.00%   0.00%   0.00% 100.00%       +1     +56   +5368     58
38436     3843   0.00%   0.00%   0.00% 100.00%      -84     +12   +8847     66
57654     5765   0.00%   0.00% 100.00%   0.00%
86481     8648   0.00%   0.00% 100.00%   0.00%
129721   12972   0.00%   0.00% 100.00%   0.00%
194581   16384   0.00%   0.00% 100.00%   0.00%
291871   16384  27.35%   0.00%  72.65%   0.00%
437806   16384  50.05%   0.00%  49.95%   0.00%

After:

$ sudo ./ntpperf -i enp3s0 -m 10:22:22:22:22:21 -d 192.168.1.3 -s 172.18.0.0/16 -I -H -o -37
               |          responses            |     TX timestamp offset (ns)
rate   clients |  lost invalid   basic  xleave |    min    mean     max stddev
1000       100   0.00%   0.00%   0.00% 100.00%      -44      +0     +61     19
1500       150   0.00%   0.00%   0.00% 100.00%       -6     +39     +81     16
2250       225   0.00%   0.00%   0.00% 100.00%      -22     +25     +69     15
3375       337   0.00%   0.00%   0.00% 100.00%      -28     +15     +56     14
5062       506   0.00%   0.00%   0.00% 100.00%       +7     +78    +143     27
7593       759   0.00%   0.00%   0.00% 100.00%      -54     +24    +144     47
11389     1138   0.00%   0.00%   0.00% 100.00%      -90     -33     +28     21
17083     1708   0.00%   0.00%   0.00% 100.00%      -50      -2     +35     14
25624     2562   0.00%   0.00%   0.00% 100.00%      -62      +7     +66     23
38436     3843   0.00%   0.00%   0.00% 100.00%      -33     +30   +5395     36
57654     5765   0.00%   0.00% 100.00%   0.00%
86481     8648   0.00%   0.00% 100.00%   0.00%
129721   12972   0.00%   0.00% 100.00%   0.00%
194581   16384  19.50%   0.00%  80.50%   0.00%
291871   16384  35.81%   0.00%  64.19%   0.00%
437806   16384  55.40%   0.00%  44.60%   0.00%

During this series, and to show that as is always the case, things are
never easy as they should be, a hardware issue was found, and it took
some time to find the workaround(s). The bug and workaround are better
explained in patch 5/5.

Note: the workaround has an alternative, we could use the first set of
timestamp registers (TXSTMP{H/L}_0) as *only* a way to clear the
interrupt, and the problem won't manifest. But that means that we
would only have 3 sets of "useful" registers to store timestamps,
wasting the first set. Support for these extra registers is going to
added in a later series. My impression is that wasting these resources
is not a good a idea, as it is already easy to request more timestamps
than what can be serviced by the hardware.

Also, as Marc Kleine-Budde suggested, after some consensus is reached
on this series, most parts of it will be proposed for igb.

Vinicius Costa Gomes (4):
  igc: Fix race condition in PTP tx code
  igc: Check if hardware TX timestamping is enabled earlier
  igc: Retrieve TX timestamp during interrupt handling
  igc: Work around HW bug causing missing timestamps

 drivers/net/ethernet/intel/igc/igc.h      |   8 +-
 drivers/net/ethernet/intel/igc/igc_main.c |  14 ++-
 drivers/net/ethernet/intel/igc/igc_ptp.c  | 146 +++++++++++++++-------
 3 files changed, 119 insertions(+), 49 deletions(-)

-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
