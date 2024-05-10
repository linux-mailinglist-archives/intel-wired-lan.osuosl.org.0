Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 268EC8C2742
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 May 2024 17:03:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D7786845D7;
	Fri, 10 May 2024 15:03:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SZVb-jXTNdvp; Fri, 10 May 2024 15:03:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CD746845E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715353380;
	bh=XP07+vkCxdSKlihXKSbSb95nNM60k5INPLMAfBnOi68=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=2oqot0d7rIgCXu9kR8VZyz9WhWoenqKohByOeLD3ounMKcBj0nyTWVZEcXY7qbv1L
	 4W8ixO3hU2ndNgEuOUnTK21YNF1xsIfCp5Tcf1aqOHMXTZGMLabM98yMuAcfIkaxMY
	 eSZ8tdZxK3gXRuOSOomPJeYjr4qygZXonEMP4Mjc+5UHT8Lyb/3rEZ2pfdDh+lq7Cc
	 jfCKa7jq+cE6VyapAGqvwOhULOfP+BI0QTBQXrLqzW7Fl31s0SeR+lQ8IS65/pSIph
	 wUn+uhAikXrU+gKnJGuVO+ixY1p9RwrAZICd7kpEqaXidfFhY16o2iOjjIz3dI5S/Q
	 ++doi85MPH19Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CD746845E1;
	Fri, 10 May 2024 15:03:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9B8881BF846
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 06:52:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 845C742377
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 06:52:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Uc9ATAI4RvtT for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 May 2024 06:52:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=anil.samal@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 055F44236C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 055F44236C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 055F44236C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 06:52:54 +0000 (UTC)
X-CSE-ConnectionGUID: jxpA/ZlWTF6MpIv/GGIAGg==
X-CSE-MsgGUID: JpITGBuqT1CkwJLYJ/2AjA==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11138273"
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="11138273"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2024 23:52:51 -0700
X-CSE-ConnectionGUID: tP77ZQuVSre6n8pBcTfEPQ==
X-CSE-MsgGUID: yIGfrnsNR/uJoX5GvLk0kw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="33950256"
Received: from c3-1-server.sj.intel.com ([10.232.18.246])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2024 23:52:50 -0700
From: Anil Samal <anil.samal@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  9 May 2024 23:50:39 -0700
Message-ID: <20240510065243.906877-1-anil.samal@intel.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 10 May 2024 15:02:58 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715323975; x=1746859975;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gbkVy2+trRuV9MdrGvE0T5uK0uCOcQo3hmLnECHqz3Y=;
 b=g2ennY/y4FIsRjhLl3skz96pwn05zhpBkqtzobzyVhxosC+Ly4W60fy0
 uVfd84hkTbS8E77efczLNvyUqBBP7dh64KRPBCaQ+BALt4E4SCR+RI+FS
 10nKidupjxUpzhvJ213GjhrW0zt9KnFKNuA/1WScdVkEL7xcNfxm9RGi9
 vXRnfU6mO3FwZvQdVKzIYo2bc4eE/ccp+2WrofmCYleM7RcHFC54+O1xZ
 MdRI0G8P+GYo0DuF/n8ni65q57mVctBVXN4vR0bKA4uNZRSnBokkx5PZR
 ZZGSRrwdJhIgnVAXwuY+3Tou0KXB0FZE7YtTzluExAdgOjLHwjes9dknm
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=g2ennY/y
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/3] ice:Support to dump PHY
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
Cc: --cc=anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 --cc=jesse.brandeburg@intel.com, --cc=leszek.pepiak@intel.com,
 Anil Samal <anil.samal@intel.com>, --cc=przemyslaw.kitszel@intel.com,
 --cc=lukasz.czapnik@intel.com
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

v1 -> V2, 
   Squashed 4 commit to 3 commit. 
   Removed extra null check of arguments.
   Removed initialization of local variable that are not required.

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

