Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B77246F79DB
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 May 2023 01:53:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2B4D54026D;
	Thu,  4 May 2023 23:53:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2B4D54026D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683244390;
	bh=jSYubj7FI9R/TPLBBjOa/06ydb/Bt2fOHUx5VUHagP4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Bpe8znKxU/xaPuGrkdpwBaXHHJvjm7qRmnihbXWHKd3g3eNi7CCP6vo6ZOIpNQI0W
	 k3qmFK1tO/3nK1lmnCQhu1RmYlIzV7FBju3yVDO9aau4I+II31kH4ne7BtLfNkotBA
	 Yz8QPUFun7BP4NFkfv9b/4N8rolA9zbW5OF3m3sJbERT2JsBB/K3B/nqe1gJpDc5c4
	 cw56Ou/1eSxpMFGUeJmZDT1Lh917pgK48ZTUAPowQHRI7MhtN/K2f7BApMEJqJ/fuZ
	 9IBZ/Fd3fHx1Jw20SShIsr1tH91eH5/7EsNyIG++84GuTZrs4Qc3fUB8VdIkd5i3zm
	 d3xmr1WFKvj+A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oF00yC228y_v; Thu,  4 May 2023 23:53:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 909BC41F0D;
	Thu,  4 May 2023 23:53:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 909BC41F0D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 729F11BF3A7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 May 2023 23:52:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 983F541C7A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 May 2023 23:52:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 983F541C7A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gnaCQcRbHd1j for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 May 2023 23:52:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F383A400EF
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F383A400EF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 May 2023 23:52:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="412301455"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="412301455"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 16:52:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="841423487"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="841423487"
Received: from haitianc-mobl2.amr.corp.intel.com (HELO
 vcostago-mobl3.intel.com) ([10.209.47.201])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 16:52:41 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  4 May 2023 16:52:28 -0700
Message-Id: <20230504235233.1850428-1-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683244363; x=1714780363;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+JazCt2kkqXdOOHYMl30KQiVzX+gVXnZjlqTJk9dxLw=;
 b=ZX3o9UrkIMeA67uzZYbcm5tTR/ElCRFFmH/wxqt1WQfqW/C0JLSuJpLN
 r8nHTri6d1op5KK48uM+KFtQYY/uTWx3y3g2ZGbkQbjd4B4ce6UkYPLcZ
 MPUfyZBr3vYCMqRKmlqY1PW94tlWKOR8vw4o7DdaxDydlb1JZ+hW6TRoX
 7wl2JlPIZCpsVe7Ex86Deo9Fs/Wp8gMub1Cc5X718jtDw4FOEttOc3Tln
 QdcES/MLFItrd1e2363s4hGuVJeh8GBgzLu8zOEmPHU3r7K/T3wjb1UCO
 o7wqYpU/eOnMkwRHb2/x+6R04HlzcB6bHeNCgwo/58Mv7qZRKcmX/7jLs
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZX3o9Urk
Subject: [Intel-wired-lan] [PATCH iwl v1 0/5] igc: TX timestamping fixes
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

BTW: I hope this is the correct usage of the "iwl" subject prefix.

Cheers,

Vinicius Costa Gomes (5):
  igc: Fix marking some timestamps as skipped wrongly
  igc: Fix race condition in PTP tx code
  igc: Fix checking for tstamp timeouts TX tstamp is off
  igc: Retrieve TX timestamp during interrupt handling
  igc: Add workaround for missing timestamps

 drivers/net/ethernet/intel/igc/igc.h      |   7 +-
 drivers/net/ethernet/intel/igc/igc_main.c |  14 ++-
 drivers/net/ethernet/intel/igc/igc_ptp.c  | 119 +++++++++++++++-------
 3 files changed, 95 insertions(+), 45 deletions(-)

-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
