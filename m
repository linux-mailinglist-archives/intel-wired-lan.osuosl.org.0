Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C611588C161
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Mar 2024 13:00:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 799A460ACA;
	Tue, 26 Mar 2024 12:00:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UYC9kHd2xv43; Tue, 26 Mar 2024 12:00:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 893DD60AD2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711454415;
	bh=RR2QF+AoH+ziToJYLjzSgJKM6rMTfVJYjBj0FexxBHY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=65ZhMVFBn8Wt238FR6hu/2Ssjq/e4fdsH57QI4FIOnh3sFMTezTvRnNNaZggX21ob
	 A1kUIjU4T9ciGrZZTFANFTd0WH2bIZwVfqlIw5G5lyQi5ZAbUELL8Qy3jwYmVm4Qxp
	 2nLRxtFaeWbcMs70L0x/XOUQZywhgJBIKo/K9jsc7Fo00X2fqCkPRCFNje6b26Gtpp
	 QPeUF1c+QGspvUr+/+Oin95CCdZljGOdILR2LzqQZ7iUupvsXO0Zq5V/G4ku2HyTl3
	 FvB4Au+ZXwalEOTCl2SKSyI9r4L0+xLEPXR58xOWGtMNESt5JudXiv4aLS+/4Nfx6g
	 iLkn4su/DOY2g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 893DD60AD2;
	Tue, 26 Mar 2024 12:00:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EE9DA1BF45A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 12:00:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DA09181D4D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 12:00:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9kJAVW3odFuM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Mar 2024 12:00:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2203A8161D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2203A8161D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2203A8161D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 12:00:11 +0000 (UTC)
X-CSE-ConnectionGUID: k8wyptyKQnKr8xXU2pTMDA==
X-CSE-MsgGUID: jDN9mqKHRIG3TPZtX/a02A==
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="6394634"
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; 
   d="scan'208";a="6394634"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 05:00:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="16018970"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa008.fm.intel.com with ESMTP; 26 Mar 2024 05:00:09 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 0E5AF28160;
 Tue, 26 Mar 2024 12:00:08 +0000 (GMT)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 26 Mar 2024 07:51:05 -0400
Message-Id: <20240326115116.10040-1-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711454412; x=1742990412;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iqvdqY3+SyI8MqwvX2TyXnFMTGS7lZ8+NJ37Q9Twfjg=;
 b=OfnSFOhMQskFHpDHO/r2EiVvHuCrKQC7rMke67RroBqI115okVKnmeUs
 CbN/EO1fmunP9lM4w/2Wkz/65VU3kNw6jSVyBzhIZT+UItQ++1pepuIsH
 FT7s/5bjp+b3y1hS7WnbwiBaLdnSsyzUm6RotwJFuL5vvIFTn9BraH7Bl
 SDzTenqz/Z2C25D5UFuZy44iog9A7OMNypo1XAalb17nIBrqCxAqmKBHg
 c4D5yNvfI5oL2inbkD9dsg/UftmcwgXzjU9UIUTSWIjDfhkB5ugRomH9x
 jYQ4z89MOLcFv2BR2wXYEr6A4QYaWTY0KNk+a3Ch3DXO94L2ssLOgPLan
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OfnSFOhM
Subject: [Intel-wired-lan] [PATCH iwl-next v1 00/12] Add support for Rx
 timestamping for both ice and iavf drivers
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
Cc: netdev@vger.kernel.org, Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Initially, during VF creation it registers the PTP clock in
the system and negotiates with PF it's capabilities. In the
meantime the PF enables the Flexible Descriptor for VF.
Only this type of descriptor allows to receive Rx timestamps.

Enabling virtual clock would be possible, though it would probably
perform poorly due to the lack of direct time access.

Enable timestamping should be done using SIOCSHWTSTAMP ioctl,
e.g.
hwstamp_ctl -i $VF -r 14

In order to report the timestamps to userspace, the VF extends
timestamp to 40b.

To support this feature the flexible descriptors and PTP part
in iavf driver have been introduced.

Jacob Keller (10):
  virtchnl: add support for enabling PTP on iAVF
  virtchnl: add enumeration for the rxdid format
  iavf: add support for negotiating flexible RXDID format
  iavf: negotiate PTP capabilities
  iavf: add initial framework for registering PTP clock
  iavf: add support for indirect access to PHC time
  iavf: periodically cache PHC time
  iavf: refactor iavf_clean_rx_irq to support legacy and flex
    descriptors
  iavf: handle SIOCSHWTSTAMP and SIOCGHWTSTAMP
  iavf: add support for Rx timestamps to hotpath

Mateusz Polchlopek (1):
  iavf: Implement checking DD desc field

Simei Su (1):
  ice: support Rx timestamp on flex descriptor

 drivers/net/ethernet/intel/iavf/Makefile      |   3 +-
 drivers/net/ethernet/intel/iavf/iavf.h        |  33 +-
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 242 +++++++-
 drivers/net/ethernet/intel/iavf/iavf_ptp.c    | 530 ++++++++++++++++++
 drivers/net/ethernet/intel/iavf/iavf_ptp.h    |  46 ++
 drivers/net/ethernet/intel/iavf/iavf_txrx.c   | 424 +++++++++++---
 drivers/net/ethernet/intel/iavf/iavf_txrx.h   |  26 +-
 drivers/net/ethernet/intel/iavf/iavf_type.h   | 150 +++--
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 237 ++++++++
 drivers/net/ethernet/intel/ice/ice_base.c     |   3 -
 drivers/net/ethernet/intel/ice/ice_ptp.c      |   4 +-
 drivers/net/ethernet/intel/ice/ice_ptp.h      |   2 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   2 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  86 ++-
 drivers/net/ethernet/intel/ice/ice_virtchnl.h |   2 +
 .../intel/ice/ice_virtchnl_allowlist.c        |   6 +
 include/linux/avf/virtchnl.h                  | 127 ++++-
 17 files changed, 1762 insertions(+), 161 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/iavf/iavf_ptp.c
 create mode 100644 drivers/net/ethernet/intel/iavf/iavf_ptp.h

-- 
2.38.1

