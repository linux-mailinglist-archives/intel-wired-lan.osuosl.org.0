Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E9BB09257
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Jul 2025 18:57:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 72ED480493;
	Thu, 17 Jul 2025 16:57:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KKvG6Kq-pdLd; Thu, 17 Jul 2025 16:57:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CB8B583AF7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752771471;
	bh=eHY+Qi9Y9KYKuSGVNdw3c9Yuhvca72VbguRIQhzbMIg=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=QUmHkyTQxRsgzo28KPO8B60g8FP+pm6ihk51YiMnOzGCdRhzSwdtZY0Smaw4hS0ZG
	 jFe2d36CxcOqaOjS+IAJdE9iiR0D4z+ujL7EHMqE2Vt8SzOb+kS/BvH9BAN0au+bMI
	 7/ksSnAKEVEh4p1Thsd1Ad/HuVMeBZ2S7IP3MCYUKJwj2Vfa6ZAJDh4K2udC9ycqOK
	 6gIf+yKlxyKWCWUmKS/43V9XZTSimw8rrmSI237DTwFHaaaf754XF/8ybIVuPbqBSX
	 RH9r0bGFtehIh8xknBpqJMCWAVNfCztSrvaZ29oCtAzKhmWt2LsCKhe2dM5Tln4617
	 ZXRDOh5KXWP2g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CB8B583AF7;
	Thu, 17 Jul 2025 16:57:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id ED96495B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 16:57:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D3B67615D8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 16:57:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HZoceSo3fmj0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Jul 2025 16:57:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 08622608BE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 08622608BE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 08622608BE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 16:57:44 +0000 (UTC)
X-CSE-ConnectionGUID: kPZvSnEsSNe+dDuOw0a6hw==
X-CSE-MsgGUID: fzdM0Bf8TaCYeA5oTAjJkg==
X-IronPort-AV: E=McAfee;i="6800,10657,11495"; a="55211382"
X-IronPort-AV: E=Sophos;i="6.16,319,1744095600"; d="scan'208";a="55211382"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 09:57:43 -0700
X-CSE-ConnectionGUID: OHe/S9e2Rgmd6vz9FMqp9g==
X-CSE-MsgGUID: gYiBZbCKQGG/xu+Vej/mAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,319,1744095600"; d="scan'208";a="158199866"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 09:57:42 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Thu, 17 Jul 2025 09:57:07 -0700
Message-Id: <20250717-jk-ddp-safe-mode-issue-v1-0-e113b2baed79@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGQreWgC/x2MywqDMBAAf0X27EKS4oP+inhI3VW3rVGy2griv
 xs8DsPMAcpRWOGZHRD5JypzSGDzDLrRh4FRKDE44wpT2RLfHyRaUH3POM2UvOrGSKV9mFfd1c4
 UkOIlci/7PW5A/l8MvEJ7nhcuVLQzcQAAAA==
X-Change-ID: 20250716-jk-ddp-safe-mode-issue-d6130b8c8205
To: Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: Jacob Keller <jacob.e.keller@intel.com>, vgrinber@redhat.com, 
 netdev@vger.kernel.org
X-Mailer: b4 0.15-dev-d4ca8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1894;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=R6ZIJbG5oiO2OVRSdh2xmX6TYpkdnjtkWsrRFvDZ1sw=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhoxK7aYqR5MtIl9LjFI27L7zMvWuycabBnfMFpS84W87s
 bDvppVcRykLgxgXg6yYIouCQ8jK68YTwrTeOMvBzGFlAhnCwMUpABO5LsDwVypKTSDhAKvYE4sj
 z6YKHY9znb7arUok95bo7+2bV2gbdjEynEgxEV7KLCkT/9g/ar76xXOtwalXg45s3v1uunSXe/t
 nTgA=
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752771466; x=1784307466;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=R6ZIJbG5oiO2OVRSdh2xmX6TYpkdnjtkWsrRFvDZ1sw=;
 b=DzeH2LpbxT/68jT3EYZhiDogVSO4h+hbps9sFD2jkvkmgF+Zal5W7IJV
 x3elB7K8Qe3dgQtQcBHXFbQWV5mjV5Ja1+c2JD+Vin5HYEVgBEG5hQlAo
 pt2SQQZf7NACt3xs3YNlZOUvAXzvp5PhzapWHRzSPRfcbUAMWDgFJWQTV
 WS2gD/ePQ6napKLta8gzWVMpQkdbrz4Cvewa1opMf52lWwU1jo9bY65FS
 5sKE5GYSsSn22AD3I7m6K1F6D2Dsv7R+RvgARlShWm+4Qz6aO8YNZjCxg
 iSnoqU4b9UKZMR1LfZdcvecYG3+VNcPClixD4DdVGWm8ZhMpgVOI2Jn57
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DzeH2Lpb
Subject: [Intel-wired-lan] [PATCH iwl-net 0/2] ice: fix issues with loading
 certain older DDP packages
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series contains two fixes to improve the software handling for certain
error conditions when loading an older DDP package on a device. In
particular, some combinations of DDP and firmware version can result in the
driver accidentally locking the device up due to blocking the global
configuration lock used for DDP programming.

Also, fix an error in the cleanup logic for a failed probe could result in
memory corruption due to a use-after-free from double-calling
ice_deinit_hw().

It is not clear if any publicly released DDP versions suffer from the exact
issues that caused the ice_cfg_tx_topo() failure. However, it is entirely
plausible that the error could be triggered in the future. Thus, it is
important to ensure the error flow is safe and won't make the device
inaccessible for such tasks as updating the firmware. Additionally,
degrading functionality simply because a user has not updated a DDP package
is wrong.

I settled on -ENODEV as the error code for handling ice_init_hw() failures,
to ensure probe stops in the rare cases where this fails. I am open to
alternative suggestions for how to handle errors from ice_cfg_tx_topo()
through into ice_init_tx_topology().

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
Jacob Keller (2):
      ice: fix double-call to ice_deinit_hw() during probe failure
      ice: don't leave device non-functional if Tx scheduler config fails

 drivers/net/ethernet/intel/ice/devlink/devlink.c | 10 +-----
 drivers/net/ethernet/intel/ice/ice_ddp.c         | 44 +++++++++++++++++-------
 drivers/net/ethernet/intel/ice/ice_main.c        | 38 ++++++++++----------
 3 files changed, 53 insertions(+), 39 deletions(-)
---
base-commit: dae7f9cbd1909de2b0bccc30afef95c23f93e477
change-id: 20250716-jk-ddp-safe-mode-issue-d6130b8c8205

Best regards,
--  
Jacob Keller <jacob.e.keller@intel.com>

