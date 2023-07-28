Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 03CF8767121
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jul 2023 17:54:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 87729844B9;
	Fri, 28 Jul 2023 15:54:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 87729844B9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690559648;
	bh=gALNCMeZjaPrACkG/lA+b5WX40NZHtcdQQ4fB62tG8k=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=tPZGSgGWiniMf8L5ESyLV4ahdtMaRCnfJ7G7s41eeVZGOGUCs9TUD+NsARG/XYXde
	 AJIIBrECCYmlyOe9dV+jo/V09s4n2bzO8gM/1EjKG+cuVHnn6s7Qsfmn3ghK/xwK/U
	 C8sWbzZnNPXzNBK+XhRUNNLjqb2pPUHB8g+wploTC+4jlL1Pp/VqPXGtXRVn7HBid9
	 63mIrG5HMxapv4M54VV6pjIIJ4q0O4JqP03+8NI3wNkMASyIrFVuAHhO6boLpw3snn
	 ciEldOBNBsfN2ZkMeNJbnePYlOQB1SkKbR4BfkqVThXE0g7mf7qdKNAWp8FuRfwPM0
	 sFmIiHAqAa+xQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2xl_tDYmPm1U; Fri, 28 Jul 2023 15:54:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2DBE08443D;
	Fri, 28 Jul 2023 15:54:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2DBE08443D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 994B61BF28B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jul 2023 15:53:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7122840AAE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jul 2023 15:53:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7122840AAE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s62GJssemxlU for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jul 2023 15:53:36 +0000 (UTC)
Received: from mgamail.intel.com (unknown [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4001740025
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jul 2023 15:53:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4001740025
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="372246657"
X-IronPort-AV: E=Sophos;i="6.01,237,1684825200"; d="scan'208";a="372246657"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2023 08:53:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="727512158"
X-IronPort-AV: E=Sophos;i="6.01,237,1684825200"; d="scan'208";a="727512158"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orsmga002.jf.intel.com with ESMTP; 28 Jul 2023 08:53:31 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Fri, 28 Jul 2023 17:52:04 +0200
Message-ID: <20230728155207.10042-1-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690559616; x=1722095616;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oQf/S1ueoDews0oxh0qBtYpU3yruH6wicxcwWAyEZqk=;
 b=cqvS5Nmf5KlLiejrfQrH4H5mUdWAX6BPcffh+8q4J6i0RIO95nV9pDss
 TmB/SeI2KeKwL07iCFa9fY0c//DL82kexey+LWgRxWUpiO2aNIUPIw2nl
 uNCpyQKpmEj0ur5RgpNTpdDRk3db+yzeOy+1HwMePLbsurW/qaZwLx5Aa
 EaNpnH9a5+lfihi1S+ZpE5Sq5lBUElPVqWxV91sUbfPo2hAh4D1CKKD20
 mFxxAofM2HrjGb5TPBKzalh8+m4WMSFRvXOj2l0TkEGIw0eIK2EWWxDGY
 agH/WcbX0/nIP0YzfqX4Gm/WsRnJD3fPjrq3jgISzIDvrRJJ9dDjgMncp
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cqvS5Nmf
Subject: [Intel-wired-lan] [PATCH net-next 0/3] virtchnl: fix fake 1-elem
 arrays
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
Cc: Kees Cook <keescook@chromium.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

6.5-rc1 started spitting warning splats when composing virtchnl
messages, precisely on virtchnl_rss_key and virtchnl_lut:

[   84.167709] memcpy: detected field-spanning write (size 52) of single
field "vrk->key" at drivers/net/ethernet/intel/iavf/iavf_virtchnl.c:1095
(size 1)
[   84.169915] WARNING: CPU: 3 PID: 11 at drivers/net/ethernet/intel/
iavf/iavf_virtchnl.c:1095 iavf_set_rss_key+0x123/0x140 [iavf]
...
[   84.191982] Call Trace:
[   84.192439]  <TASK>
[   84.192900]  ? __warn+0xc9/0x1a0
[   84.193353]  ? iavf_set_rss_key+0x123/0x140 [iavf]
[   84.193818]  ? report_bug+0x12c/0x1b0
[   84.194266]  ? handle_bug+0x42/0x70
[   84.194714]  ? exc_invalid_op+0x1a/0x50
[   84.195149]  ? asm_exc_invalid_op+0x1a/0x20
[   84.195592]  ? iavf_set_rss_key+0x123/0x140 [iavf]
[   84.196033]  iavf_watchdog_task+0xb0c/0xe00 [iavf]
...
[   84.225476] memcpy: detected field-spanning write (size 64) of single
field "vrl->lut" at drivers/net/ethernet/intel/iavf/iavf_virtchnl.c:1127
(size 1)
[   84.227190] WARNING: CPU: 27 PID: 1044 at drivers/net/ethernet/intel/
iavf/iavf_virtchnl.c:1127 iavf_set_rss_lut+0x123/0x140 [iavf]
...
[   84.246601] Call Trace:
[   84.247228]  <TASK>
[   84.247840]  ? __warn+0xc9/0x1a0
[   84.248263]  ? iavf_set_rss_lut+0x123/0x140 [iavf]
[   84.248698]  ? report_bug+0x12c/0x1b0
[   84.249122]  ? handle_bug+0x42/0x70
[   84.249549]  ? exc_invalid_op+0x1a/0x50
[   84.249970]  ? asm_exc_invalid_op+0x1a/0x20
[   84.250390]  ? iavf_set_rss_lut+0x123/0x140 [iavf]
[   84.250820]  iavf_watchdog_task+0xb16/0xe00 [iavf]

Gustavo already tried to fix those back in 2021[0][1]. Unfortunately,
a VM can run a different kernel than the host, meaning that those
structures are sorta ABI.
However, it is possible to have proper flex arrays + struct_size()
calculations and still send the very same messages with the same sizes.
The common rule is:

elem[1] -> elem[]
size = struct_size() + <difference between the old and the new msg size>

The "old" size in the current code is calculated 3 different ways for
10 virtchnl structures total. Each commit addresses one of the ways
cumulatively instead of per-structure.

I was planning to send it to -net initially, but given that virtchnl was
renamed from i40evf and got some fat style cleanup commits in the past,
it's not very straightforward to even pick appropriate SHAs, not
speaking of automatic portability. I may send manual backports for
a couple of the latest supported kernels later on if anyone needs it
at all.

[0] https://lore.kernel.org/all/20210525230912.GA175802@embeddedor
[1] https://lore.kernel.org/all/20210525231851.GA176647@embeddedor

Alexander Lobakin (3):
  virtchnl: fix fake 1-elem arrays in structs allocated as `nents + 1` -
    1
  virtchnl: fix fake 1-elem arrays in structures allocated as `nents +
    1`
  virtchnl: fix fake 1-elem arrays for structures allocated as `nents`

 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |   9 +-
 drivers/net/ethernet/intel/iavf/iavf.h        |   6 +-
 drivers/net/ethernet/intel/iavf/iavf_client.c |   4 +-
 drivers/net/ethernet/intel/iavf/iavf_client.h |   2 +-
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  75 +++++------
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |   2 +-
 include/linux/avf/virtchnl.h                  | 127 +++++++++++-------
 7 files changed, 124 insertions(+), 101 deletions(-)

-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
