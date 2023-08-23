Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF06785F46
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Aug 2023 20:11:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D2D06612C2;
	Wed, 23 Aug 2023 18:10:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D2D06612C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692814258;
	bh=eP/EXbp5A2SDy6eGmpzFIaUkBAhpABPjrYPU2LFojDM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ACVi7DDCXrPR5MxAd5u9cyG8EJBztcj6Ko5/RL/jYnq+hNPJmjaufM0DickYwGPdn
	 qD6fz2MQ0+Pvtjhnzjdktd+rncTksi5xCKXmdli5rOurwoVDdbH8/y900gt3fANooo
	 t44IEntBR7I90teVLbC2b47aWCZsRsd25iGHsWr3Ctqx/8bfssgckaFMkltm/5dySP
	 8Bj7Lx9O6p2CfM44Mm+q6H0hrI0Kp4dDA779vaecilU/OmMaQS3TeCLXunEzxpKKDx
	 0UvtgFnxSCgIQz7YZDtQ+EtEcXc1d4eo53XxhWxYEKir9JUEB0i63yVa/KSMXnH0pC
	 tuSajild465pQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PmFdRJpKaLRl; Wed, 23 Aug 2023 18:10:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 924F260E00;
	Wed, 23 Aug 2023 18:10:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 924F260E00
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5B98A1BF343
 for <intel-wired-lan@osuosl.org>; Wed, 23 Aug 2023 18:10:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 31FF4417D6
 for <intel-wired-lan@osuosl.org>; Wed, 23 Aug 2023 18:10:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 31FF4417D6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 09L25rMnB2gX for <intel-wired-lan@osuosl.org>;
 Wed, 23 Aug 2023 18:10:52 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4A16E417D4
 for <intel-wired-lan@osuosl.org>; Wed, 23 Aug 2023 18:10:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4A16E417D4
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="364412281"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="364412281"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 11:10:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="802233624"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="802233624"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga008.fm.intel.com with ESMTP; 23 Aug 2023 11:10:45 -0700
Received: from baltimore.igk.intel.com (baltimore.igk.intel.com [10.102.21.1])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 7E393333FB;
 Wed, 23 Aug 2023 19:10:44 +0100 (IST)
From: Pawel Chmielewski <pawel.chmielewski@intel.com>
To: intel-wired-lan@osuosl.org
Date: Wed, 23 Aug 2023 20:06:24 +0200
Message-Id: <20230823180633.2450617-1-pawel.chmielewski@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692814252; x=1724350252;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=F85yF+dwSJT1mBnPsAjv6DMxkAEK5WD17S+AJ4oF0zM=;
 b=cwyeY8FmB8I82/2LUrFQlkYkTv77hoaCJsxxVeHEsoOthaZP5v0In8GS
 Iau4ym82IMbWXNMruJsAQfTQMfcq7uNhy3GranbFQEtPp7CA0eWBmgjQq
 es9insxVPQNGEXCYiWXdctrSLKSGkWwKYxxxRAximofALCiZiYF5VKrrd
 ia+82c9KAP12v8s9w+LReMVEn2cbc1ZBoGCC76gRERmRDkHENe/uLtFZB
 Ov4XAGTdcMbNDTvhJ884C5K54mlXHfWkeXW8438o1ctaYilTe18k2l2Yg
 Ij4LljNnkkn4WOodgdu06UTApmfXQGxN56AKfzhV7Ks8NHOKPVYVdWB9D
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cwyeY8Fm
Subject: [Intel-wired-lan] [PATCH iwl-next v3 0/8] ice: Add basic E830
 support
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
Cc: netdev@vger.kernel.org, aelior@marvell.com, manishc@marvell.com,
 andrew@lunn.ch
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This is an initial patchset adding the basic support for E830. E830 is
the 200G ethernet controller family that is a follow on to the E810 100G
family. The series adds new devices IDs, a new MAC type, several registers
and a support for new link speeds. As the new devices use another version
of ice_aqc_get_link_status_data admin command, the driver should use
different buffer length for this AQ command when loaded on E830.

Alice Michael (1):
  ice: Add 200G speed/phy type use

Dan Nowlin (1):
  ice: Add support for E830 DDP package segment

Paul Greenwalt (3):
  ice: Add E830 device IDs, MAC type and registers
  ethtool: Add forced speed to supported link modes maps
  ice: Add ice_get_link_status_datalen

Pawel Chmielewski (3):
  ice: Refactor finding advertised link speed
  ice: Remove redundant zeroing of the fields.
  ice: Hook up 4 E830 devices by adding their IDs

 drivers/net/ethernet/intel/ice/ice.h          |   1 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  48 +-
 drivers/net/ethernet/intel/ice/ice_common.c   |  94 ++--
 drivers/net/ethernet/intel/ice/ice_ddp.c      | 426 +++++++++++++++---
 drivers/net/ethernet/intel/ice/ice_ddp.h      |  27 +-
 drivers/net/ethernet/intel/ice/ice_devids.h   |  10 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 218 ++++++---
 drivers/net/ethernet/intel/ice/ice_ethtool.h  |   8 +
 .../net/ethernet/intel/ice/ice_ethtool_fdir.c |  24 +-
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |  52 ++-
 drivers/net/ethernet/intel/ice/ice_main.c     |  73 +--
 drivers/net/ethernet/intel/ice/ice_type.h     |   6 +-
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    |  29 +-
 .../net/ethernet/qlogic/qede/qede_ethtool.c   |  22 +-
 include/linux/ethtool.h                       |  20 +
 net/ethtool/ioctl.c                           |  15 +
 16 files changed, 818 insertions(+), 255 deletions(-)

-- 
2.37.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
