Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55FF5583591
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Jul 2022 01:16:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B951D40538;
	Wed, 27 Jul 2022 23:16:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B951D40538
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658963808;
	bh=Gw6dUOKNOQce5PAtDVLQ0WLfSpUrkW06ALxamj63jvU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=iX5M01kW670KLQtlBuFYXUBByDvALtHhPEMNFQvxIUzBCEMKTdY89KGPuteFm+o2t
	 W31Q2ajf+dbvugCxomDCEzCWy1mGMkipj1ioCmmglCJczpLfOpPC7vWLv4Z71EzUkJ
	 p8oDD1id4wiwpOwF156dXBQ5UjUMobf4opREPmuo9nJEJlvxAOvl73iNO1ADIEuGX3
	 BfY86qToIFW2kJJiTrwfiPN+BRYm3KBBPwlazkIf+9Ca/r0XF6nTRxMuhn0g0Wqu3k
	 Q0kF5T4Kh8vpPKQuu945NhGwF5XNp/ezFYOt/T4r5Ejj/4QRAIa01q+A9zcGqplSf9
	 JIZFHxFBlRaUA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hGQphZrEJ2XU; Wed, 27 Jul 2022 23:16:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A9E2B40002;
	Wed, 27 Jul 2022 23:16:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A9E2B40002
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8C7941BF42D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 23:16:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 65778416E9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 23:16:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 65778416E9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 34Z4rJzTte1F for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Jul 2022 23:16:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DEBC2416F5
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DEBC2416F5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 23:16:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="352365991"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="352365991"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 16:16:10 -0700
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="846447998"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.7])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 16:16:09 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 27 Jul 2022 16:15:56 -0700
Message-Id: <20220727231602.1625980-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.37.1.208.ge72d93e88cb2
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658963794; x=1690499794;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0RMk3MJzHeRsuFBfYpFtbQqxHqtWthDvB0iiARrIYY4=;
 b=BGJUsqy5wacOOK3xufI4S0ixmpeI7Y1p+un0AJQ/6hMM0NUz61qfenHx
 rzM7oKaHvd3U+u9tTMn5MpQuoqJIAFA2lnou1eCp8PgeF9X4B9MLk1WHA
 L7BTb9tBoIEYtpT2xIwLj4SB8Udm9rlT8W2gs2SCFwD4JGB0BE84qkdhP
 c4gLVo8B0GpGQSL5T+vzDYBrW5PEciznnidqbmeMJC1XjHROWD86L4/Po
 gjhEFUQyAWCRlu3Odn4gybZVh4fal6IbW5jXQvcudB7+C3Pdkv+QBM3R+
 e0+/D6fU6xkDERM1kGjPO5kebo5peUC/JVssIutull5bx/TMdxRIcZKEu
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BGJUsqy5
Subject: [Intel-wired-lan] [net-next v2 0/6] ice: detect and report PTP
 timestamp issues
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series fixes a few small issues with the cached PTP Hardware Clock
timestamp used for timestamp extension. It also introduces extra checks to
help detect issues with this logic, such as if the cached timestamp is not
updated within the 2 second window.

This introduces a few statistics similar to the ones already available in
other Intel drivers, including tx_hwtstamp_skipped and tx_hwtstamp_timeouts.

It is intended to aid in debugging issues we're seeing with some setups
which might be related to incorrect cached timestamp values.

Changes since v1
* Fix kdoc and checkpatch warnings

Jacob Keller (6):
  ice: set tx_tstamps when creating new Tx rings via ethtool
  ice: initialize cached_phctime when creating Rx rings
  ice: track Tx timestamp stats similar to other Intel drivers
  ice: track and warn when PHC update is late
  ice: re-arrange some static functions in ice_ptp.c
  ice: introduce ice_ptp_reset_cached_phctime function

 drivers/net/ethernet/intel/ice/ice_ethtool.c |   7 +
 drivers/net/ethernet/intel/ice/ice_lib.c     |   1 +
 drivers/net/ethernet/intel/ice/ice_ptp.c     | 752 ++++++++++---------
 drivers/net/ethernet/intel/ice/ice_ptp.h     |  13 +
 drivers/net/ethernet/intel/ice/ice_txrx.c    |   4 +-
 5 files changed, 440 insertions(+), 337 deletions(-)


base-commit: 5245eb4f3cf8ba1e9e0e6d58d810eceae9edc0c1
-- 
2.37.1.208.ge72d93e88cb2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
