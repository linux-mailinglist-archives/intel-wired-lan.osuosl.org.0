Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A5EF8A381E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Apr 2024 23:59:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A643541C40;
	Fri, 12 Apr 2024 21:59:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BwBOclL54Um5; Fri, 12 Apr 2024 21:59:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 16E2F41C6B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712959150;
	bh=RDcekkV2kQCcvXqsrAMzaTJoh8FnndWiwlRAmBilHzM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=An9scYq17vKYk2sZOaszCQbrCtlLS+teP19jEVEk4YdahqOOuhQ95gD+s3VFQOg4z
	 7d5342Qu3nhMPhPG9Ft68hC+VLt+H9nfqAPi0QRgplD04YYNxpHXfIlfwsx5SRTpeD
	 Kz2XuNrKLRGX8lFaZMcJarCkUYnaKfxfbvX2ikQr4TfadO+D1+DgnkEdjyxqC8PKGT
	 hoB1mdKpJrpAWaSQUVpsq0f6xxhdAKSgnO/6ul62jOVhMOgXd5B5pgyU6iWmyo3wKB
	 UoiV29UhtueEP1G2SLqkWgaY4GRyHZpdd/0QNm5irjcRUD/HUOdeYU16S+suyOlwRl
	 nsf5zfqUBqfMw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 16E2F41C6B;
	Fri, 12 Apr 2024 21:59:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8EE5F1BF4E2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 18:51:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8058C82148
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 18:51:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BC5aFMtasBZZ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Apr 2024 18:51:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=anil.samal@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1196A820A9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1196A820A9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1196A820A9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 18:51:41 +0000 (UTC)
X-CSE-ConnectionGUID: n0T2Pl8wSEaH+RvX2PQfYQ==
X-CSE-MsgGUID: L19GVnKXRFyuh/tpRbuezQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="8333631"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; 
   d="scan'208";a="8333631"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 11:51:41 -0700
X-CSE-ConnectionGUID: fFir2hx7S8ih3nSQffjrDQ==
X-CSE-MsgGUID: 4qiXO6vSSbKqQq9Sl716qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="26108555"
Received: from c3-1-server.sj.intel.com ([10.232.18.246])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 11:51:41 -0700
From: Anil Samal <anil.samal@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 12 Apr 2024 11:49:16 -0700
Message-ID: <20240412185135.297368-1-anil.samal@intel.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 12 Apr 2024 21:59:07 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712947902; x=1744483902;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tElETQhpo1xQDwAjQlAaYeaGzHUxKceJyXJlsyX7nCA=;
 b=G45o9qcgNEtbCUHphgoqrpio+74waGdOZlaJZJ/J+GIfjxOR2ySDdBFy
 ykcY5cqwd9B4yDKjx3hkrLp79Rj+wcXdDgf/DqGFHaXvV/JrlnB+1dVXn
 PKLrwDMx+qLoRw5C9VQBkHrO5JzD3IYuq0LErtrG+/Fe+OuYIZQedmHu+
 n3yPO6Ruupd32dtgGfG4m2llbrlnuZnP/0kBmGQwavi+Z70ck8JXRwuae
 FKbPkX86+SBKOxHYXrYEyuQWvcyUIzMvnkTkPhnMlcgTMdiSYkBxIuXaN
 SLSyERPNksyc39H5+Xi0Q8Q4vfeFshZZf7ijD5zMSGV6L1MVmVnnw1cf4
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=G45o9qcg
Subject: [Intel-wired-lan] [PATCH iwl-next 0/4]ice:Support to dump PHY
 config, FEC stats
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
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com
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
Patch 1 – Layer to construct admin queue message to read from firmware. 
Patch 2 – Currently driver does not have a way to derive serdes lane
number, pcs quad , pcs port from port number.So we introduced a
mechanism to derive above info. 
Patch 3 – Ethtool interface extension to include serdes equalizer
output.
Patch 4 - Ethtool interface extension to include FEC statistics counter. 

 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  51 ++
 drivers/net/ethernet/intel/ice/ice_common.c   |  99 +++-
 drivers/net/ethernet/intel/ice/ice_common.h   |  28 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 506 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_ethtool.h  |  29 +
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |   2 +
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |  16 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   8 +
 8 files changed, 726 insertions(+), 13 deletions(-)

-- 
2.44.0

