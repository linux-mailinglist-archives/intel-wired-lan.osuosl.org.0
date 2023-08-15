Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7592177D63C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Aug 2023 00:36:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0FC4D611E1;
	Tue, 15 Aug 2023 22:36:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0FC4D611E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692138986;
	bh=dOf3LAc/LUsIJ5i29lFi4oxqL02CDaqRYw9GoEw6utQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pHYBUCjgKkiDXwbVfCubFnuqMPh2volALa6s0MTRIWoqipdIYF6AcQL6qQNBwtSJZ
	 js3Dj7B5yORsa1pjt47COFHstYoRW1ED2MQgwkInXzFN7oFA90sIlnFLD/f1kFp58g
	 iwg2qsGq3Va0YUaa70FGs8YPoFGW0Ym9jYJ7hNlkiJSxC36EMcBduMJwi2/QGwsce9
	 8KhJbiO1k3/ASNyV7eNPfwdKTEe1W/YgjT0A17j9qrmU6+HlTCjEFNOGjE5C6NR+h9
	 E5H3Sbsy6mclrgp/+WRGB7uGzKi3jJtgALoU391uA9iaHSbto/SK6d6JL6jgSH2zyN
	 pLfkauvn4Ef6A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RawqGl2t8QFQ; Tue, 15 Aug 2023 22:36:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0512B60AB9;
	Tue, 15 Aug 2023 22:36:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0512B60AB9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8A6631BF47F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 22:36:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 75FEF414A2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 22:35:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 75FEF414A2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7mS7mVDgVtBO for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Aug 2023 22:35:59 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6DDF6414B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 22:35:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6DDF6414B8
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="352718853"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="352718853"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 15:35:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="710905993"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="710905993"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 15:35:56 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 15 Aug 2023 15:35:47 -0700
Message-ID: <20230815223551.1238091-6-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0.1.g9857a21e0017.dirty
In-Reply-To: <20230815223551.1238091-1-jacob.e.keller@intel.com>
References: <20230815223551.1238091-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692138958; x=1723674958;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SRQcXgBDubMF8ApKYK/hX1XCacvaVjxy/MSVdCLj2w4=;
 b=WjZMi20vALXLA5IzoSa/bOIMoh8GypavHaDb+J1fRddKVl85sU4EYxNC
 AmnbXgcbqX5gfpetfQnVGy3APG0675jeV5Ba4Sl+Ek4bcHeqUglX1ylPW
 eqdBsvl9RV+HlC73MEgqjwhrlEtKV134wNW38nPZkim+qOQfuOK+MGX6N
 nKvkQN3eOH/OQftqKxFAs0UuCa6jlr07OMi4UZQQponKh6COzpgIQFwSE
 92g3bZcHOnLDV2M2FxiCGhlRVXV+YE1PuU2R4JQrU/WOAkwIFEpVHHomS
 kosVyzS33AIlbfwCOkczYB6Dwvs54bfuj1YXvbSUdFmXLlWp01cjWqZSw
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WjZMi20v
Subject: [Intel-wired-lan] [PATCH iwl-next 0/4] ice: refactor PTP feature
 flags
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series refactors and extends the feature flag detection for a couple of
PTP feature flags. This includes ICE_F_GNSS and ICE_F_SMA_CTRL. Instead of
blindly assuming the feature is enabled on all E810-T devices, check the
netlist to confirm that the feature is supported on that device and
platform.

For SMA control, this allows the driver to fallback to the fixed pin
configuration that is supported by default E810 configurations when the SMA
control is not accessible.

For GNSS, this ensures that we do not attempt to read the GNSS portion of
the device if its not present, avoiding some unnecessary warning messages.

For ICE_F_SMA_CTRL this could be seen as a fix, but given the scope of the
code I decided that its next material. I think of it more as extending the
feature capability to support pins on more platforms.

Jacob Keller (4):
  ice: remove ICE_F_PTP_EXTTS feature flag
  ice: don't enable PTP related capabilities on non-owner PFs
  ice: check the netlist before enabling ICE_F_SMA_CTRL
  ice: check netlist before enabling ICE_F_GNSS

 drivers/net/ethernet/intel/ice/ice.h          |  1 -
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  8 +++-
 drivers/net/ethernet/intel/ice/ice_common.c   | 46 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_common.h   |  3 ++
 drivers/net/ethernet/intel/ice/ice_lib.c      | 12 +++--
 drivers/net/ethernet/intel/ice/ice_ptp.c      |  4 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 31 +++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  2 +
 8 files changed, 96 insertions(+), 11 deletions(-)


base-commit: 361b86237e1afbf2c3be7cb604b6aac6f8b8c38c
-- 
2.41.0.1.g9857a21e0017.dirty

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
