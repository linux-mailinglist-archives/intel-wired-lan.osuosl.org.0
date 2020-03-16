Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C5B6318733C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2020 20:21:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7B94C22721;
	Mon, 16 Mar 2020 19:21:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yvEudVy2qWPf; Mon, 16 Mar 2020 19:21:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9D5E3226FC;
	Mon, 16 Mar 2020 19:21:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A1AB81BF3C6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2020 19:21:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9DD8C88F8C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2020 19:21:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id StPpv4mk8ik4 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Mar 2020 19:21:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BE6B18880C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2020 19:21:30 +0000 (UTC)
IronPort-SDR: AuXwa4qptuxAuO+ppiGQxA999e0tNBMP8s782jTl1AbZFN9WhSusJYkJzt18TEJ48P/m0zbQ/d
 Vln8t0NhF5IA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2020 12:21:30 -0700
IronPort-SDR: NbSncnuUUvqpe/WMLxBylkYQTsaq4rfFcxzFqHtlx5sW3VGoXVw5IG86qlW25KJYOSpNsZ5Jyf
 +M7OsPemTCcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,561,1574150400"; d="scan'208";a="267686779"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga004.fm.intel.com with ESMTP; 16 Mar 2020 12:21:29 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 16 Mar 2020 12:21:29 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 16 Mar 2020 12:21:28 -0700
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Mon, 16 Mar 2020 12:21:28 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3 4/9] ice: discover and store size of
 available flash
Thread-Index: AQHV+BG9IfnTNlE9lUi+9JAJXpM026hLn+/A
Date: Mon, 16 Mar 2020 19:21:28 +0000
Message-ID: <4f91790a1dd34b549589f26715d0cacc@intel.com>
References: <20200312015818.1007882-1-jacob.e.keller@intel.com>
 <20200312015818.1007882-5-jacob.e.keller@intel.com>
In-Reply-To: <20200312015818.1007882-5-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v3 4/9] ice: discover and store size
 of available flash
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
Subject: [Intel-wired-lan] [PATCH v3 4/9] ice: discover and store size of available flash

When reading from the NVM using a flat address, it is useful to know the upper bound on the size of the flash contents. This value is not stored within the NVM.

We can determine the size by performing a bisection between upper and lower bounds. It is known that the size cannot exceed 16 MB (offset of 0xFFFFFF).

Use a while loop to bisect the upper and lower bounds by reading one byte at a time. On a failed read, lower the maximum bound. On a successful read, increase the lower bound.

Save this as the flash_size in the ice_nvm_info structure that contains data related to the NVM.

The size will be used in a future patch for implementing full NVM read via ethtool's GEEPROM command.

The maximum possible size for the flash is bounded by the size limit for the NVM AdminQ commands. Add a new macro, ICE_AQC_NVM_MAX_OFFSET, which can be used to represent this upper bound.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  2 +
 drivers/net/ethernet/intel/ice/ice_nvm.c      | 62 ++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_type.h     |  1 +
 3 files changed, 63 insertions(+), 2 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
