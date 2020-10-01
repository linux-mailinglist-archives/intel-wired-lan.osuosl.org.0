Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 599FB28054A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Oct 2020 19:32:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1408E86A33;
	Thu,  1 Oct 2020 17:32:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MhdtnG0ceTZS; Thu,  1 Oct 2020 17:32:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4272786A4A;
	Thu,  1 Oct 2020 17:32:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 922A01BF857
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Oct 2020 17:32:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 88A2786B12
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Oct 2020 17:32:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tq-JmZnCKc80 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Oct 2020 17:32:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8537286AFE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Oct 2020 17:32:42 +0000 (UTC)
IronPort-SDR: vABwIBGaQUoEmfx8HDQ8si8wvln6WJRUlLk9JrE+LAMHWynodnHRTy2eaYjFRWB5RkxgbPITZy
 rv3GC7PSgvuw==
X-IronPort-AV: E=McAfee;i="6000,8403,9761"; a="162870719"
X-IronPort-AV: E=Sophos;i="5.77,324,1596524400"; d="scan'208";a="162870719"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2020 10:32:40 -0700
IronPort-SDR: H7Ny1cU029gQ7CRFBfG61NpamH1Zds2mbe1PieRXJ+yJnjIz4Ezxkt8qEf2437XFBNoqlYPJP9
 Tk+0eEgA9gMQ==
X-IronPort-AV: E=Sophos;i="5.77,324,1596524400"; d="scan'208";a="514815531"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.4])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2020 10:32:40 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Date: Thu,  1 Oct 2020 10:31:40 -0700
Message-Id: <20201001173144.712615-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.28.0.497.g54e85e7af1ac
MIME-Version: 1.0
Subject: [Intel-wired-lan] [intel-wired-lan 0/4] implement minimum security
 revision
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

The ice device has security revision fields associated with the ``fw.undi``
and ``fw.mgmt`` sections of the flash. Additionally each of these security
revisions has a minimum security revision device parameter.

The minimum security revision indicates the lowest security revision that
will be loaded by the device. If the associated flash section has a lower
security revision, the device will not load it.

Implement support for displaying and updating the minimum security revision
fields for the device as driver-specific devlink parameters.

Jacob Keller (4):
  ice: create flash_info structure and separate NVM version
  ice: cache NVM module bank information
  ice: read security revision to ice_nvm_info and ice_orom_info
  ice: add devlink parameters to read and write minimum security
    revision

 Documentation/networking/devlink/ice.rst      |  43 ++
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  17 +
 drivers/net/ethernet/intel/ice/ice_devlink.c  | 254 ++++++++-
 drivers/net/ethernet/intel/ice/ice_devlink.h  |   2 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |   8 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |   3 +
 drivers/net/ethernet/intel/ice/ice_nvm.c      | 532 ++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_nvm.h      |   4 +
 drivers/net/ethernet/intel/ice/ice_type.h     |  91 ++-
 9 files changed, 888 insertions(+), 66 deletions(-)


base-commit: f2e834694b0d92187d889172da842e27829df371
-- 
2.28.0.497.g54e85e7af1ac

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
