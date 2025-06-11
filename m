Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A4ED4AD4EB2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Jun 2025 10:46:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D87FC410CA;
	Wed, 11 Jun 2025 08:46:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3UDwr5DF_aFn; Wed, 11 Jun 2025 08:46:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5AD28411FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749631573;
	bh=PqyhDfYRH0ZfqG/O0chZNeBVr/FMgh5lWTAcb6Hajf4=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=aa+AAuh8K59JNaaOeb9lhOZRNkcftrKIOHezANsUaE48CA0GqPhOgzAwyGqtunlPm
	 VG9oCpxAZNr3EoR9w2qvgTaBNk0etLwVpCMDojI9q8O3gFgCNZ4xzV8gGUX/p4laYn
	 HZ5BZYT7FePdpZY4urRKffUR2/8oqoz4QcdO2tBqEAuFv3D9YavbEzeit9XoZxfA5E
	 jZQJWPVsQZkYaJQhZMzhoqtiNaY4LwVB4Z+22TcoAidlL91SDT8GKCLi6zKjlWyoBA
	 4EpN4zUNdn8L1KaUa1UGvjF7rkeG3+maPIf7BEQrcOGASdpHZr+10iDrfS80lYfTVy
	 yUiVORrCs/KAw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5AD28411FE;
	Wed, 11 Jun 2025 08:46:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 590F11F2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jun 2025 08:46:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4ABE7403BD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jun 2025 08:46:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o6Z3JTcX-NBK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Jun 2025 08:46:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=konrad.knitter@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org ED9A3403CA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ED9A3403CA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ED9A3403CA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jun 2025 08:46:08 +0000 (UTC)
X-CSE-ConnectionGUID: jjbg0gnTSuSdEQ+TJhYi5w==
X-CSE-MsgGUID: jJlfzjzYTrKepsAWu7HdKA==
X-IronPort-AV: E=McAfee;i="6800,10657,11460"; a="62046151"
X-IronPort-AV: E=Sophos;i="6.16,227,1744095600"; d="scan'208";a="62046151"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 01:46:08 -0700
X-CSE-ConnectionGUID: PgUZ6FMQQ5iE88b0EVrLEg==
X-CSE-MsgGUID: mv/cWiQBTwuxby+dZJQ7Nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,227,1744095600"; d="scan'208";a="152298372"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa004.fm.intel.com with ESMTP; 11 Jun 2025 01:46:06 -0700
Received: from kord.igk.intel.com (kord.igk.intel.com [10.123.220.9])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 834F5332AE;
 Wed, 11 Jun 2025 09:46:05 +0100 (IST)
From: Konrad Knitter <konrad.knitter@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
	Konrad Knitter <konrad.knitter@intel.com>
Date: Wed, 11 Jun 2025 11:01:19 +0200
Message-Id: <20250611090122.4312-1-konrad.knitter@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749631569; x=1781167569;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+hlyDmCmIQ4PsUfkbEueYhY4IaOnijscWCQJVN/4tnQ=;
 b=eva4gneovopDVBHYVDgnnGbiz02YkcW9Qmh2DXGU0WFzchOxh8QQ6sv+
 QZp3sP85dyGUMANKZ+/XpuqFiKoQ8l17S/ds6oxwRl3WSR7k6sIp4lEJn
 0QAlO9sft5FaAEsUkVk2b8b+c10imFKWu/pO3ILa5feVkcTJws7UpIfVk
 8F00IUn0pGDuRmf+tImlmgaEvCJGzcYZo6m205Qwbkft1J/Kxs0gA2WSY
 THEoKkOFI8gDZ4LtWZjYCWpKI4x/WayvsYaK6YqOfa5JulrkL/Vwm5Nuf
 FO5piKdjOZ18d6uJZtX267ih8THSqBuuMFzL8x5CBHS3QXTy9WEsuo8eD
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eva4gneo
Subject: [Intel-wired-lan] [PATCH iwl-next v1 0/3] add override mask from
 factory settings
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

Support for restoring settings and identifiers from factory settings
instead of using those found in the image during the update.
 
Restoring data from factory settings requires restoring both settings
and identifiers simultaneously. Other combinations are not supported.
 
The following command can be used to overwrite settings and
identifiers with data from factory settings.
 
$ devlink dev flash <pci-address> <update-image.bin> overwrite settings
     overwrite identifier overwrite from_factory_settings

Konrad Knitter (3):
  devlink: add overwrite mask from factory settings
  ice: add overwrite mask from factory settings
  ixgbe: add overwrite mask from factory settings

 Documentation/networking/devlink/devlink-flash.rst | 3 +++
 Documentation/networking/devlink/ice.rst           | 6 ++++++
 drivers/net/ethernet/intel/ice/ice_fw_update.c     | 4 ++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_fw_update.c | 6 ++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h | 1 +
 include/uapi/linux/devlink.h                       | 2 ++
 6 files changed, 22 insertions(+)

-- 
2.38.1

