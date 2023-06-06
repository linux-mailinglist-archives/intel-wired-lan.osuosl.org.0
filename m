Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE6C72348D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Jun 2023 03:33:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 70AAA81E4E;
	Tue,  6 Jun 2023 01:33:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 70AAA81E4E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686015234;
	bh=vy9OtRkcIV61l3Mz4Hh/+o6om6AtyaJW2PM/gxzDElM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=juzQ+tdIYB0wNi7wY5yXFgtz5szVUZqHdIpiUxUEb7ob/phel3TsYcKKRSzamMmSE
	 BarXMJ7yQq0scR5PEofpNWmmj3hGIHDULyJY7sJVHgxUCwZY+h0pnRERnzKZT2qyLJ
	 45Dj4KowMnYyLRvIb7Nx5eLMYMCZutAnurw+v9li9ykcGQMb92MKypYIpgK8kkCc9+
	 NZuux3C+UHU6RnCrluPcM/uX7KWxQVLwnIkM/J0qxj+X+zWLTYQqgGWMEKAcmqpln3
	 iu25J+pcehyGD4oVILH9KVY9bXTUxPKtutMzeGl2U2B7hzMJOgEdwx7SWi1adA4trA
	 gjOnqll7NCW5g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IlTs2Rw-4Dbo; Tue,  6 Jun 2023 01:33:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 13DA6817D3;
	Tue,  6 Jun 2023 01:33:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 13DA6817D3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 572911BF4DD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 01:33:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 03C5940864
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 01:33:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 03C5940864
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fqgL85-gxoEH for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jun 2023 01:33:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 327274077D
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 327274077D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 01:33:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="336887979"
X-IronPort-AV: E=Sophos;i="6.00,218,1681196400"; d="scan'208";a="336887979"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 18:33:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="833020977"
X-IronPort-AV: E=Sophos;i="6.00,218,1681196400"; d="scan'208";a="833020977"
Received: from unknown (HELO vcostago-mobl3.jf.intel.com) ([10.24.14.106])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 18:33:30 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  5 Jun 2023 18:33:21 -0700
Message-Id: <20230606013325.602823-1-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686015212; x=1717551212;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kqXvEmqFTl76bBznxgdZACXf3vDm/9KKyshHBUdJL/U=;
 b=EZANoOUqgz00UD0ktgMCRbpUtjP6Fx3didc5D0IEzs3OnUx1HKqrdxpc
 e7ysM7GC1yLddMq74rlVdspNUwXvcLPRxEaXO/O4VhKNLOI3i3hqnllBl
 O/UEjHpWY43DuIRRVQdSfGAbYD+0MBlnqaPvtAUvrNlxr50Df8aGLnmJq
 NveukDEQo082VGZuoIeDqhb74R+9nWwfIaD9tOwJQfdZRXuYVWEmsuHD8
 nJlf2WEMAQxmCAQMsKGg/7bKGr4yaV7F56qw+25ZbedV724MWu2q5dp/j
 h97Xhf/4F2QlA8AMkktK+BDy+LEhNJSNhLBkIcxo3uRpOY5Pu55IXsAF1
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EZANoOUq
Subject: [Intel-wired-lan] [PATCH iwl-net v3 0/4] igc: TX timestamping fixes
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

Note: the workaround has a simpler alternative, but it would involve
adding support for the other timestamp registers, and only using the
TXSTMP{H/L}_0 as a way to clear the interrupt. But I feel bad about
throwing this kind of resources away. Didn't test this extensively but
it should work.

Also, as Marc Kleine-Budde suggested, after some consensus is reached
on this series, most parts of it will be proposed for igb.


Vinicius Costa Gomes (4):
  igc: Fix race condition in PTP tx code
  igc: Check if hardware TX timestamping is enabled earlier
  igc: Retrieve TX timestamp during interrupt handling
  igc: Add workaround for missing timestamps

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
