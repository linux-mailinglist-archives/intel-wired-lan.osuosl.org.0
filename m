Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB9F8CEAC4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 May 2024 22:22:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0702681EBF;
	Fri, 24 May 2024 20:22:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bf5O5Yg0Knq1; Fri, 24 May 2024 20:22:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3215D81E5A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716582147;
	bh=s+N3r/ZhjEHvUJmgklHa7QjJU3cLnUXthZ+QmSAkA+8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=uP6eBrg6HW9gSfPjP0UIWw4g13IeU9XWpqvawggf3Iaas4+/2fxdYIxLSiO62+nXV
	 AM4ZaWMnMMniCGzeR9KCsuFZJfCti3JolnKankNcXaCxUZ6OCOhe83zfqciPVe9IpT
	 JvzVnshYPe1lbOOBCgLKtdiCGw7XHFc6npzJVntUPh9fr1+jCJkuzQrrQyOBd2+GI9
	 ZaA2rtrATg76yxQZYv7WWIq5sJBzwL+XDk672wsrrsz0RVOsHQOx0jyuKcdRDUiax+
	 CqUPiNpZt/GSpOwqVQcEGWSAOmJQloJtbOPIH9jZOOqziADS/t3t7g6ibdE2aK/nr1
	 MJLPVu3V/jS7g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3215D81E5A;
	Fri, 24 May 2024 20:22:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CB2DF1CFA05
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 May 2024 13:53:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B513B60B5A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 May 2024 13:53:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ey1xefabQdQq for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 May 2024 13:53:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=anil.samal@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4F9DD60624
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4F9DD60624
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4F9DD60624
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 May 2024 13:53:05 +0000 (UTC)
X-CSE-ConnectionGUID: X3y1fNrYR46Sa6XA/hUDJQ==
X-CSE-MsgGUID: NZGWt5kjQWKZSm5uTbhpuA==
X-IronPort-AV: E=McAfee;i="6600,9927,11082"; a="13111907"
X-IronPort-AV: E=Sophos;i="6.08,185,1712646000"; d="scan'208";a="13111907"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2024 06:53:04 -0700
X-CSE-ConnectionGUID: KbJy5UDOSACNI2VG/kaYcg==
X-CSE-MsgGUID: /VbFvpGzSraqOwReQ/fYmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,185,1712646000"; d="scan'208";a="64837185"
Received: from c3-1-server.sj.intel.com ([10.232.18.246])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2024 06:53:04 -0700
From: Anil Samal <anil.samal@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 24 May 2024 06:51:04 -0700
Message-ID: <20240524135255.3607422-1-anil.samal@intel.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 24 May 2024 20:22:24 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716558786; x=1748094786;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vp8mVpHVZr18u4xtphEKzFCH3Q2PP6Da3DQzHv5eyB8=;
 b=T8AsLl3IVzMTh+7Exqe5jKmBgpZ49H3p4fsPwGqvuJGRw2vT4MWisfFc
 tn3+Tu9KeTRATe260ZSWAtmFrdaWNlSNhc6tt1SyVAf35fij7S7T8HQUl
 eiS1JbzMoM5w2AwswJX2h5F4KsnZ0sNn1+234BFldDl4Ug5GiECMZ/Hq6
 3MGH3siWJWoeajqkz9odKhIuxYfg/JByfV/twxegnRJ/UCWQhmUeAQpFK
 RBHwrY0CcGQWqYFISx++JnQZD9sdKR0bjvGKCGV5bE7A7200MI/Ffl9zM
 84WqQHyn0K2uWuSO5xeDPmbjLqVhpjo22S1raN1JV98cZ1W+NR3rnHdDR
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=T8AsLl3I
Subject: [Intel-wired-lan] [PATCH iwl-next v3 0/3] ice:Support to dump PHY
 config, FEC
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
Cc: netdev@vger.kernel.org, lukasz.czapnik@intel.com,
 Anil Samal <anil.samal@intel.com>, leszek.pepiak@intel.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Implementation to dump PHY configuration and FEC statistics to
facilitate link level debugging of customer issues.  Implementation has
two parts 
  
a.     Serdes equalization
        # ethtool  -d eth0 
        Output: 
        Offset          Values
        ------          ------
        0x0000:         00 00 00 00 03 00 00 00 05 00 00 00 01 08 00 40
        0x0010:         01 00 00 40 00 00 39 3c 01 00 00 00 00 00 00 00
        0x0020:         00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
        ……
        …..
        0x01f0:         01 00 00 00 ef be ad de 8f 00 00 00 00 00 00 00
        0x0200:         00 00 00 00 ef be ad de 00 00 00 00 00 00 00 00
        0x0210:         00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
        0x0220:         00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
        0x0230:         00 00 00 00 00 00 00 00 00 00 00 00 fa ff 00 00
        0x0240:         06 00 00 00 03 00 00 00 00 00 00 00 00 00 00 00
        0x0250:         0f b0 0f b0 00 00 00 00 00 00 00 00 00 00 00 00
        0x0260:         00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
        0x0270:         00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
        0x0280:         00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
        0x0290:         00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
        0x02a0:         00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
        0x02b0:         00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
        0x02c0:         00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
        0x02d0:         00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
        0x02e0:         00 00 00 00 00 00 00 00 00 00 00 00
Current implementation appends 176 bytes i.e. 44 bytes * 4 serdes lane.
For port with 2 serdes lane, first 88 bytes are valid values and
remaining 88 bytes are filled with zero. Similarly for port with 1
serdes lane, first 44 bytes are valid and remaining 132 bytes are marked
zero. 

Each set of serdes equalizer parameter (i.e. set of 44 bytes) follows
below order 
    a. rx_equalization_pre2
    b. rx_equalization_pre1
    c. rx_equalization_post1
    d. rx_equalization_bflf
    e. rx_equalization_bfhf
    f. rx_equalization_drate
    g. tx_equalization_pre1
    h. tx_equalization_pre3
    i. tx_equalization_atten
    j. tx_equalization_post1
    k. tx_equalization_pre2
Where each individual equalizer parameter is of 4 bytes. As ethtool
prints values as individual bytes, for little endian machine these
values will be in reverse byte order. 

b.	FEC block counts
        # ethtool  -I --show-fec eth0
        Output:
         FEC parameters for eth0:
        Supported/Configured FEC encodings: Auto RS BaseR
        Active FEC encoding: RS
        Statistics:
        corrected_blocks: 0
         uncorrectable_blocks: 0

This series do following:
Patch 1 – Implementation to support user provided flag for side band
queue command. 
Patch 2 – Currently driver does not have a way to derive serdes lane
number, pcs quad , pcs port from port number.So we introduced a
mechanism to derive above info. 
          Ethtool interface extension to include FEC statistics counter.
Patch 3 – Ethtool interface extension to include serdes equalizer
output.

v1 -> v2, 
   Squashed 4 commit to 3 commit. 
   Removed extra null check of arguments.
   Removed initialization of local variable that are not required.

v2 -> v3
   updated the argument for sideband queue function from "flag" to
"flags"

 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  51 ++
 drivers/net/ethernet/intel/ice/ice_common.c   |  99 +++-
 drivers/net/ethernet/intel/ice/ice_common.h   |  28 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 449 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_ethtool.h  |  29 ++
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |   2 +
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |  16 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   8 +
 8 files changed, 669 insertions(+), 13 deletions(-)

-- 
2.44.0

