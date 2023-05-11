Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 674D86FFCF1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 May 2023 01:07:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4B96E41D7F;
	Thu, 11 May 2023 23:07:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4B96E41D7F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683846469;
	bh=MMwimvZ3Nl1sPmrek5irSlWalj6C+y+tzvxazr9scNk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=xYLhki2tAcJF9NPuWEo13Am2eqr+3Ylg+/WWxKSghPRaR9K1/hZadOhYF3K2EkvMa
	 qFaPlYneiznrcSsVCEiVN/kyYHFX5eQq+lKaiHVpuzfGqCNt2ZiJ03uevWmZnSw8k+
	 qCFrwRlO3bAMvE+E2oLgXCYthtDAiALgGfcoEJK2wszbPR/BCg4pJ5dosyGKE9j4Dl
	 fMLWh0uSzHy1aYKVL0AT1MZaxRdwEl5ruJJug7liH9W2YHtoJtXgS19Uo7RawQBxvF
	 8Arbbu8xpKkV2vfsqA9+4zmrv/RPl9b864Dw3/wUaPYXU27NdO4gC7Axx87lSj161v
	 pMR6kDVoGhjlA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DW69Mtz4_ayH; Thu, 11 May 2023 23:07:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1D4B1415A0;
	Thu, 11 May 2023 23:07:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1D4B1415A0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4F3F61BF276
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 May 2023 23:07:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 211FA41D7F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 May 2023 23:07:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 211FA41D7F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7ykhYIFmwust for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 May 2023 23:07:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D1AF540105
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D1AF540105
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 May 2023 23:07:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="339959125"
X-IronPort-AV: E=Sophos;i="5.99,268,1677571200"; d="scan'208";a="339959125"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 16:07:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="946374602"
X-IronPort-AV: E=Sophos;i="5.99,268,1677571200"; d="scan'208";a="946374602"
Received: from vcostago-mobl3.jf.intel.com ([10.24.14.106])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 16:07:40 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 11 May 2023 16:07:27 -0700
Message-Id: <20230511230731.105152-1-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683846461; x=1715382461;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=M6vAIPnzhCAVIIr+1XnPZ/jhkN0dFR3byuTb+nZ58oM=;
 b=m/H2FsMWpgGq7+Y8TaZp55y3neEZgUxD5sFVb975kfj6U2vfLddV3KEF
 kVjlDnbJeTMHHLZW07uyCb7iLjvZU5RYa5Sxg1SuXHonp69SWjkuDtWXl
 uXgmPxcF9lHjFb8HRQnGcp8xRDsWGhY6aLXfSvRxvcdZdYxhYjcfvsiri
 lRRs0xK7gsLG0Wq3WtUBwJkrSYv1trMIEs79/iezln6qc7gykQvsft9Ty
 /i1TOOXGM57bM5j3tNSwqY9w/YmXG35OubwvQR+LzqWDVcBentE06ZRKz
 hJ1XMxztZeRN7Nu444XTq+vajkaL76BF87v21REtYPUPnvkYbtJZrCMZX
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=m/H2FsMW
Subject: [Intel-wired-lan] [PATCH iwl-net v2 0/4] igc: TX timestamping fixes
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


Cheers,

Vinicius Costa Gomes (4):
  igc: Fix race condition in PTP tx code
  igc: Check if hardware TX timestamping is enabled earlier
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
