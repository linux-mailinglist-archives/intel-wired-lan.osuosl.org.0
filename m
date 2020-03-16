Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EA2241873EE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2020 21:22:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 14081885D0;
	Mon, 16 Mar 2020 20:22:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eBmdmFJzpJLP; Mon, 16 Mar 2020 20:22:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id F32BB88557;
	Mon, 16 Mar 2020 20:22:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AB1AA1BF3A4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2020 20:22:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9B49920472
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2020 20:22:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1e5hF8jmB5Rd for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Mar 2020 20:22:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id 7577F203AA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2020 20:22:42 +0000 (UTC)
IronPort-SDR: 1ZvleImgJL4AxKaButJNbjhJ2qyBqb2SD8r/8LyR+oPGYSmZ/Mw6KMhkKrgZvZOb5VNNEZQ+Ys
 XTenxOTtIYEQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2020 13:22:42 -0700
IronPort-SDR: QkhBTGAHbKjc3pjrLSRgbJiTnX0+VMxjRvKYRFDP/eQ4ATMn1f4ELRq6bzDcP1IZ8au6nPqYhX
 +ahs9qPy1s/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,561,1574150400"; d="scan'208";a="238070294"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga008.jf.intel.com with ESMTP; 16 Mar 2020 13:22:41 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 16 Mar 2020 13:22:24 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 16 Mar 2020 13:22:23 -0700
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Mon, 16 Mar 2020 13:22:23 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3 6/9] ice: enable initial devlink
 support
Thread-Index: AQHV+BG/UdbuljkgOEys2BZDVDY7bKhLsPTQ
Date: Mon, 16 Mar 2020 20:22:22 +0000
Message-ID: <600873e52a72403e99af6aacc188489a@intel.com>
References: <20200312015818.1007882-1-jacob.e.keller@intel.com>
 <20200312015818.1007882-7-jacob.e.keller@intel.com>
In-Reply-To: <20200312015818.1007882-7-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v3 6/9] ice: enable initial devlink
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

-----Original Message-----
From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jacob Keller
Sent: Wednesday, March 11, 2020 6:58 PM
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Cc: Jakub Kicinski <kuba@kernel.org>
Subject: [Intel-wired-lan] [PATCH v3 6/9] ice: enable initial devlink support

Begin implementing support for the devlink interface with the ice driver.

The pf structure is currently memory managed through devres, via a devm_alloc. To mimic this behavior, after allocating the devlink pointer, use devm_add_action to add a teardown action for releasing the devlink memory on exit.

The ice hardware is a multi-function PCIe device. Thus, each physical function will get its own devlink instance. This means that each function will be treated independently, with its own parameters and configuration. This is done because the ice driver loads a separate instance for each function.

Due to this, the implementation does not enable devlink to manage device-wide resources or configuration, as each physical function will be treated independently. This is done for simplicity, as managing a devlink instance across multiple driver instances would significantly increase the complexity for minimal gain.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/Kconfig           |   1 +
 drivers/net/ethernet/intel/ice/Makefile      |   1 +
 drivers/net/ethernet/intel/ice/ice.h         |   4 +
 drivers/net/ethernet/intel/ice/ice_devlink.c | 117 +++++++++++++++++++  drivers/net/ethernet/intel/ice/ice_devlink.h |  14 +++
 drivers/net/ethernet/intel/ice/ice_main.c    |  33 +++++-
 6 files changed, 166 insertions(+), 4 deletions(-)  create mode 100644 drivers/net/ethernet/intel/ice/ice_devlink.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_devlink.h

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
