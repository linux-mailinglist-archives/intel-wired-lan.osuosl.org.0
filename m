Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E477AA69C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Sep 2023 03:41:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3F44F83CD8;
	Fri, 22 Sep 2023 01:41:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3F44F83CD8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695346903;
	bh=AlkObJC+edVE0ZjheDYm+wqQ5c3fpeTseXwzf8mHDgg=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=wFyOB0vKTulEJJmUgDnBIZxh1jrQNtKjLoFTiE4CGnXPJGhLy46qaDw9iEk0UECJh
	 1ppOvW1RlaKDOsLWr55tqD5UBzj4nTcOfMMNHJlw0lNdgUJkB1P2zsRvmxG2AHtBKE
	 5gLWFXPXUGJ+ibK248OKq/bbf0TxtXfSfOWB6GOhI+if+rseqoAANCsTIrQjmnw+4e
	 dvFM0wfBCpjJ4pX0hDJAL1DFmgIaFgG0ipvzdWv61M0GvEmPLMghudGDAVp/PQEmXa
	 jOwVPvrtq7XCP4cIpjPbucieJ7rADPqw08Zg+bJf0xhxtT+RtbC2+isUf8LYVr5gn9
	 S+cYlott8QpmQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uOEa7MkFE5or; Fri, 22 Sep 2023 01:41:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B54D483D19;
	Fri, 22 Sep 2023 01:41:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B54D483D19
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D7E171BF375
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Sep 2023 01:41:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 34AF183D27
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Sep 2023 01:41:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 34AF183D27
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cLVXVR3SEK5Q for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Sep 2023 01:41:31 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 950C483CD8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Sep 2023 01:41:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 950C483CD8
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="360099511"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="360099511"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 18:41:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="776666486"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="776666486"
Received: from kemeng-mobl.amr.corp.intel.com (HELO [192.168.1.14])
 ([10.251.15.55])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 18:41:24 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Date: Thu, 21 Sep 2023 18:40:47 -0700
Message-Id: <20230921-igc-multiple-tstamp-vclock-v2-v1-0-aa0971cb0fe9@intel.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAKjwDGUC/x3MwQqDMAwA0F+RnBdoMxjTX5EdXMxcWK2lrV1B/
 PeVHd/lHZAkqiQYugOiFE26+QZ76YDfk18EdW4GMnQ1PVnUhXHdXdbgBHPK0xqwsNv4g4WQesM
 zG7G35x3aEaK8tP7/EfTr0EvN8DjPH+Hv+Q55AAAA
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Richard Cochran <richardcochran@gmail.com>, 
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
 Jesper Dangaard Brouer <hawk@kernel.org>
X-Mailer: b4 0.13-dev-0438c
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695346890; x=1726882890;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=UBwFj2Tvlp7ZpDbC847cCKpBoU4MoRLyYOqxA9VF1Fg=;
 b=OrjWxYIJCWcTNq1aaMGRTw7ZYJB/7xUs6zbxjbm3D7ZGdev5RmVPX+tv
 q5WmZ0x8JFKnHAR0LTORIRa4E2n/uZcGnBprPm5jGR1RS3vwTC1U1MrhT
 OhlxuWNSWwKG++e726N9+U2KDisu//6TnlJ7m7em2Wxj2mKjdfUM71Wuh
 GYZFFGrTVgCB2cCjcoim9sd4JnGy8cCaTlsuBzQj9pOdOeZXlm49vwTiN
 1gjO/Ano3ujEW4m3qiN9zOnAm922CJqwKlxj9ukcwh+ZHv+4pFm7siWhI
 QwzZooUPlub/aKJpMm814xDeQOA3h01H+1Wszj5u8ExC5WHBOUY1JXNnr
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OrjWxYIJ
Subject: [Intel-wired-lan] [PATCH iwl-next 0/2] igc: Add support for
 physical + free-running timers
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
Cc: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The objective is to allow having functionality that depends on the
physical timer (taprio and ETF offloads, for example) and vclocks
operating together.

The "big" missing piece is the implementation of the .getcyclesx64()
function in igc, as i225/i226 have multiple timers, we use one of
those timers (timer 1) as a free-running (non adjustable) timer.

The complication is that only implementing .getcyclesx64() and nothing
else will break synchronization when using vclocks, as reading the clock
will retrieve the free-running value but timnestamps will come from the
adjustable timer. The solution is to modify "in one go" the timestamping
code to be able to retrieve the timestamp from the correct timer (if a
socket is "phc_bound" to a vclock the timestamp will come from the
free-running timer).

I was debating whether or not to do the adjustments for the internal latencies
for the free-running timestamps, decided to do the adjustments so the path
delay when using vclocks is similar to the one when using the physical clock.

One future improvement is to implement the .getcrosscycless() function.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
Vinicius Costa Gomes (2):
      igc: Simplify setting flags in the TX data descriptor
      igc: Add support for PTP .getcyclesx64()

 drivers/net/ethernet/intel/igc/igc.h         | 21 ++++++++-
 drivers/net/ethernet/intel/igc/igc_base.h    |  4 ++
 drivers/net/ethernet/intel/igc/igc_defines.h |  2 +
 drivers/net/ethernet/intel/igc/igc_main.c    | 65 ++++++++++++++++++----------
 drivers/net/ethernet/intel/igc/igc_ptp.c     | 50 +++++++++++++--------
 drivers/net/ethernet/intel/igc/igc_regs.h    |  5 +++
 6 files changed, 105 insertions(+), 42 deletions(-)
---
base-commit: f30e5323a188cfc2d74b04f222cea0dbe9ffd6e6
change-id: 20230921-igc-multiple-tstamp-vclock-v2-290cdc0e16b8

Best regards,
-- 
Vinicius

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
