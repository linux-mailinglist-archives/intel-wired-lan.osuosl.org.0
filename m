Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B5DBC1873EF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2020 21:23:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 44AF087612;
	Mon, 16 Mar 2020 20:23:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h3JhyJUWHWZn; Mon, 16 Mar 2020 20:23:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 608ED8762A;
	Mon, 16 Mar 2020 20:23:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 73FE51BF3A4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2020 20:23:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 706BE88D0D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2020 20:23:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ztP3kVSx0ZIs for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Mar 2020 20:23:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6755B88CE6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2020 20:23:36 +0000 (UTC)
IronPort-SDR: /I1sN/MkJ/jCKCrsBEn2YLr4nAhs6avTOuhZe8CILLErekOtzg0APPOIb7pmmanh7YLHPdPQum
 Tqe0HiinpO9Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2020 13:23:35 -0700
IronPort-SDR: RHEfo9cHnYboeGQmwbxQS2BKz/s0XVI1+2XlM317LXMtDgVeQYwu3jiGpfRskABFQE8wO6sdMR
 WD6PnUn54g5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,561,1574150400"; d="scan'208";a="290804119"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Mar 2020 13:23:35 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 16 Mar 2020 13:23:35 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 16 Mar 2020 13:23:34 -0700
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Mon, 16 Mar 2020 13:23:34 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3 8/9] ice: add basic handler for
 devlink .info_get
Thread-Index: AQHV+BG+KVmMHD+yTEOhbxIxzyHVw6hLsUaQ
Date: Mon, 16 Mar 2020 20:23:34 +0000
Message-ID: <f248147f82294cb6893f3799a6ab2999@intel.com>
References: <20200312015818.1007882-1-jacob.e.keller@intel.com>
 <20200312015818.1007882-9-jacob.e.keller@intel.com>
In-Reply-To: <20200312015818.1007882-9-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v3 8/9] ice: add basic handler for
 devlink .info_get
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

-----Original Message-----
From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jacob Keller
Sent: Wednesday, March 11, 2020 6:58 PM
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Cc: Jakub Kicinski <kuba@kernel.org>
Subject: [Intel-wired-lan] [PATCH v3 8/9] ice: add basic handler for devlink .info_get

The devlink .info_get callback allows the driver to report detailed version information. The following devlink versions are reported with this initial implementation:

 "fw.mgmt" -> The version of the firmware that controls PHY, link, etc  "fw.mgmt.api" -> API version of interface exposed over the AdminQ  "fw.mgmt.build" -> Unique build id of the source for the management fw  "fw.undi" -> Version of the Option ROM containing the UEFI driver  "fw.psid.api" -> Version of the NVM image format.
 "fw.bundle_id" -> Unique identifier for the combined flash image.
 "fw.app.name" -> The name of the active DDP package.
 "fw.app" -> The version of the active DDP package.

With this, devlink dev info can report at least as much information as is reported by ETHTOOL_GDRVINFO.

Compare the output from ethtool vs from devlink:

  $ ethtool -i ens785s0
  driver: ice
  version: 0.8.1-k
  firmware-version: 0.80 0x80002ec0 1.2581.0
  expansion-rom-version:
  bus-info: 0000:3b:00.0
  supports-statistics: yes
  supports-test: yes
  supports-eeprom-access: yes
  supports-register-dump: yes
  supports-priv-flags: yes

  $ devlink dev info pci/0000:3b:00.0
  pci/0000:3b:00.0:
  driver ice
  serial number 00-01-ab-ff-ff-ca-05-68
  versions:
      running:
        fw.mgmt 2.1.7
        fw.mgmt.api 1.5
        fw.mgmt.build 0x305d955f
        fw.undi 1.2581.0
        fw.psid.api 0.80
        fw.bundle_id 0x80002ec0
        fw.app.name ICE OS Default Package
        fw.app 1.3.1.0

More pieces of information can be displayed, each version is kept separate instead of munged together, and each version has an identifier which comes with associated documentation.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 Documentation/networking/devlink/ice.rst     |  67 +++++++
 Documentation/networking/devlink/index.rst   |   1 +
 drivers/net/ethernet/intel/ice/ice_devlink.c | 189 +++++++++++++++++++
 3 files changed, 257 insertions(+)
 create mode 100644 Documentation/networking/devlink/ice.rst

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
