Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C94992A514
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Jul 2024 16:48:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4952940AE2;
	Mon,  8 Jul 2024 14:48:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1_OBs-8ORH9G; Mon,  8 Jul 2024 14:48:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7A5B340AC9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720450126;
	bh=hfheOGVN7srLCxnsphLoegpsiSbUks68GDCqWwg8JDY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=udT/IZmjSxPkdrcRrw3GvG0cjxwjE7EfIJ3PgtMORjav+pIVl4WnHSm4hWvx6gxI+
	 za+ONtOMsmomqypjcjNhSsCVZOjhQQMqafgcbau6M+0pSIU848LPoszbAQ7mTojjE/
	 jNR3jnx4jGuoaQmXH9HywYRw339Yg7QRokiZrurJuyjGgXPW0oZbbPzcFLHQ4qUD+2
	 yUHMFVnGj4GngR0Agw0k0H2PQusbXBg0A1/9ecgYVSO35kyxHY8lspybupinbA5X2X
	 6TPn+SSKrA3NAbFXTHNVFQxPY6hBFmxvriW1qI94kf+TrnV+JXy9GsYQxZFqTUYIku
	 AySjHA0isB1vA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7A5B340AC9;
	Mon,  8 Jul 2024 14:48:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 888241BF348
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2024 14:48:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 81AD540252
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2024 14:48:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YDShLYaQhhez for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jul 2024 14:48:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=anil.samal@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E72AD4023E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E72AD4023E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E72AD4023E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2024 14:48:41 +0000 (UTC)
X-CSE-ConnectionGUID: pmwGU9L6RXi8Bj/1Rpo/zQ==
X-CSE-MsgGUID: oY9aIqQhRmugzGDA4v05cQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11127"; a="43076725"
X-IronPort-AV: E=Sophos;i="6.09,192,1716274800"; d="scan'208";a="43076725"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2024 07:48:40 -0700
X-CSE-ConnectionGUID: gBHba+CvSEOqkvtZR+6xAA==
X-CSE-MsgGUID: YdnraGfETZiqQdu0+Wa9DA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,192,1716274800"; d="scan'208";a="52473629"
Received: from c3-1-server.sj.intel.com ([10.232.18.246])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2024 07:48:40 -0700
From: Anil Samal <anil.samal@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  8 Jul 2024 07:46:25 -0700
Message-ID: <20240708144833.1337075-1-anil.samal@intel.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720450122; x=1751986122;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IxEqi9qT8OnCSoFgvs5YR2V8yjk86g3jfGDFlmXy/aA=;
 b=B1pzj0dBvn/ZOur4+k9Xfdw+0/hSqe9zA+0nuntzYWvVszWHkquKEos7
 SCWrFDIEuQ5ZoNF/z+e+9GQInewEhmjCptE/arJsSvKVPfWz6UbcYBRb/
 xKXRyR3O+7hj9kzB0TZM0u0p/QnXGfSUuX3gWDodFPn+RCOkL+92IdfmI
 zc5uBYSvwsUYycp5pWKIUGC3T/eXC6xSkYV6Bj/mIZukQmK934s7M5552
 8I8v2yXIkYkr8EtK82RDx6DxXFI5Z6KAPPJybIbL3Z/Pu8EwEKZOTNmJ/
 ILHTloDJ42MrSnfsUNKST2tSjTkQSGrnfc14vBaGdxqab0MxSDPcnBRYB
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=B1pzj0dB
Subject: [Intel-wired-lan] [PATCH iwl-next v4 0/3] ice: Support to dump PHY
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
 jacob.e.keller@intel.com, kuba@kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Implementation to dump PHY configuration and FEC statistics to
facilitate link level debugging of customer issues. Implementation has
two parts

a.     Serdes equalization
        # ethtool  -d eth0
        Output:
        Offset          Values
        ------          ------
        0x0000:         00 00 00 00 03 00 00 00 05 00 00 00 01 08 00 40
        0x0010:         01 00 00 40 00 00 39 3c 01 00 00 00 00 00 00 00
        0x0020:         00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
        ...
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

b.    FEC block counts
        # ethtool  -I --show-fec eth0
        Output:
         FEC parameters for eth0:
        Supported/Configured FEC encodings: Auto RS BaseR
        Active FEC encoding: RS
        Statistics:
        corrected_blocks: 0
         uncorrectable_blocks: 0

This series do following:
Patch 1 - Implementation to support user provided flag for side band
queue command.
Patch 2 - Currently driver does not have a way to derive serdes lane
number, pcs quad , pcs port from port number.So we introduced a
mechanism to derive above info.
          Ethtool interface extension to include FEC statistics counter.
Patch 3 - Ethtool interface extension to include serdes equalizer
output.
v3 -> v4 : Minor review comment update.

 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  51 ++
 drivers/net/ethernet/intel/ice/ice_common.c   |  99 +++-
 drivers/net/ethernet/intel/ice/ice_common.h   |  28 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 442 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_ethtool.h  |  29 ++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |  20 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   8 +
 7 files changed, 662 insertions(+), 15 deletions(-)


base-commit: a2e5d978f3e2b12197ba858462a5c1ea1ee810a1
-- 
2.44.0

