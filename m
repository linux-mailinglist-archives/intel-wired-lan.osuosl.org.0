Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 000C38616EA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Feb 2024 17:06:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 77D6240540;
	Fri, 23 Feb 2024 16:06:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tylTXZqT7YDE; Fri, 23 Feb 2024 16:06:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7D9E3404EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708704398;
	bh=aMGguu1Ktu1nvWRuOsF6NhXL9aDDL8y79VziI5WGqro=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=I4F2wHQOq8zXVUjKkDjGrn6pxQrH+AbZZzyxuWIz1xFDegLcAnVN5vhk5gj2OvavK
	 mFLbJ6e0jKpuHCp7HBvvfUiiu/Qe9gMf0rbvuWjnJ21l5k7Ozro6mBA1fhhl7LDJ3x
	 P4r/8tIpNeP1a6IlHReaCj/V543e7IZ1qB5IIQbYuQ1qm0JUMABrAIsYt2dbN3R8Ly
	 i0cq0ceU9Nlox2cSCaoaC/v1yreqEhquY1DSh0a5W+wyHsf2CAT+9sdn83eCoj94PV
	 cnuNFw44etBxWuUTUoO2JTkPWjKoS6YaSHn+k9eSRR6KwUrqDqhf9A+dzfvU9qUN6j
	 82lX4P87OpoFg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7D9E3404EB;
	Fri, 23 Feb 2024 16:06:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9E5181BF41D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Feb 2024 16:06:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8A2EE60909
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Feb 2024 16:06:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aipHYv06gZn2 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Feb 2024 16:06:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A4485608D9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A4485608D9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A4485608D9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Feb 2024 16:06:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10993"; a="14454665"
X-IronPort-AV: E=Sophos;i="6.06,180,1705392000"; d="scan'208";a="14454665"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2024 08:06:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,180,1705392000"; 
   d="scan'208";a="6161950"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmviesa006.fm.intel.com with ESMTP; 23 Feb 2024 08:06:33 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 23 Feb 2024 17:06:26 +0100
Message-Id: <20240223160629.729433-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708704396; x=1740240396;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=amXJ5OqYkpkcN0XNwwHOV+XH0OIfi/r0ru8qguX3XpM=;
 b=LJXW2hbwaCK4ganmWODqS4ay1wV31N1XovabNb1LhXvwA2o1sfYIE+FE
 bmieg7vS/jd+4ahVMBxKdHuT4P6m8pKzUljuPHh7/LfHLucEDtTAR9RYh
 fGgUZXjASpBWpzOrBFdtijwjEzozXX49PGD5WfkSbHh+ObXQFWuahKU2Z
 RXCXj3U+RCUFPh6zWLq7iwJjHDjgKAv9zBNJNSQ+eacyiTB6HoFlEVhmC
 7IoMJY5SPxEXdyPfC/zAKAZOU/fI4xE03EWb4XPmkeMH80z11WZiUiEFG
 NDmhV90bMc74L9D3hMGTFKumqSegrZ2N3nHFbxMxFQ1X9Te8/4mh74EkG
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LJXW2hbw
Subject: [Intel-wired-lan] [PATCH v2 iwl-next 0/3] intel: misc improvements
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
Cc: netdev@vger.kernel.org, Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 anthony.l.nguyen@intel.com, magnus.karlsson@intel.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

here are not related improvements to ice and ixgbe. Spotted while
working on other issues. First one takes care redundant Tx disabling on
ifdown. Second one is about rather obvious getting rid of devm_ usage
and last one is plain refactor of stats update.

Thanks!

Przemek, I didn't include your tag, would be good if you could look if I
did what you suggested.

v2:
- remove unused variables after removing devm_ calls [kernel test robot]
- use __free(kfree) decorator [Przemek]


Maciej Fijalkowski (3):
  ice: do not disable Tx queues twice in ice_down()
  ice: avoid unnecessary devm_ usage
  ixgbe: pull out stats update to common routines

 drivers/net/ethernet/intel/ice/ice_common.c   | 34 ++++--------
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 10 +---
 drivers/net/ethernet/intel/ice/ice_lib.c      | 55 -------------------
 drivers/net/ethernet/intel/ice/ice_lib.h      |  2 -
 drivers/net/ethernet/intel/ice/ice_main.c     | 44 +++++++++++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 54 ++++++++++++++----
 .../ethernet/intel/ixgbe/ixgbe_txrx_common.h  |  7 +++
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c  | 17 ++----
 8 files changed, 111 insertions(+), 112 deletions(-)

-- 
2.34.1

