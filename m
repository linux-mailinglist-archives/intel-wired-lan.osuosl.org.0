Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E634187334
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2020 20:18:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1152C2107F;
	Mon, 16 Mar 2020 19:18:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JTcIS+4R5Fah; Mon, 16 Mar 2020 19:18:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D95E9226D7;
	Mon, 16 Mar 2020 19:18:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 799411BF3C6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2020 19:18:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7544C220C4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2020 19:18:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x5N77tPHNTPz for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Mar 2020 19:18:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 360372107F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2020 19:18:38 +0000 (UTC)
IronPort-SDR: YL9QaHXewhg7pGxMbpSNShYnqrUTnCc7KylzVSTjhxdi1KOHUFbkUmPkKOKJ9DiAdbMLWoSRdB
 DvaqLWkfZRxA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2020 12:18:37 -0700
IronPort-SDR: c77sccnJ0DMWt3iVES0PhXl6y4FjSf730RTOtWlaLGdyknPxW5/9Be+awL+BR27z6+LT709p0I
 f1ozl40SGOGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,561,1574150400"; d="scan'208";a="323597194"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga001.jf.intel.com with ESMTP; 16 Mar 2020 12:18:37 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 16 Mar 2020 12:18:23 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 16 Mar 2020 12:18:23 -0700
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Mon, 16 Mar 2020 12:18:23 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3 3/9] ice: store NVM version info in
 extracted format
Thread-Index: AQHV+BHElXs856/jhUCEVAyU/jKM+6hLnxDg
Date: Mon, 16 Mar 2020 19:18:22 +0000
Message-ID: <f816e8904d804d49a813311c0fe227f8@intel.com>
References: <20200312015818.1007882-1-jacob.e.keller@intel.com>
 <20200312015818.1007882-4-jacob.e.keller@intel.com>
In-Reply-To: <20200312015818.1007882-4-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v3 3/9] ice: store NVM version info in
 extracted format
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
Subject: [Intel-wired-lan] [PATCH v3 3/9] ice: store NVM version info in extracted format

The NVM version and Option ROM version information is stored within the struct ice_nvm_ver_info structure. The data for the NVM is stored as a 2byte value with the major and minor versions each using one byte from the field. The Option ROM is stored as a 4byte value that contains a major, build, and patch number.

Modify the code to immediately extract the version values and store them in a new struct ice_orom_info. Remove the now unnecessary ice_get_nvm_version function.

Update ice_ethtool.c to use the new fields directly from the structured data.

This reduces complexity of the code that prints these versions in ice_ethtool.c

Update the macro definitions and variable names to use the term "orom"
instead of "oem" for the Option ROM version. This helps increase the clarity of the Option ROM version code.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c  | 23 -----  drivers/net/ethernet/intel/ice/ice_common.h  |  3 -  drivers/net/ethernet/intel/ice/ice_ethtool.c | 13 +--
 drivers/net/ethernet/intel/ice/ice_nvm.c     | 94 +++++++++++++-------
 drivers/net/ethernet/intel/ice/ice_type.h    | 30 ++++---
 5 files changed, 88 insertions(+), 75 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
