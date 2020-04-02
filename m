Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B62D119BAB2
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Apr 2020 05:41:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3F16A84C20;
	Thu,  2 Apr 2020 03:41:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F7crjvTZBgoX; Thu,  2 Apr 2020 03:41:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 47ADD84C23;
	Thu,  2 Apr 2020 03:41:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C6CF11BF836
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2020 03:41:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C091586D2D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2020 03:41:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y0-oXB9Z8knD for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Apr 2020 03:41:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0022786D24
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2020 03:41:11 +0000 (UTC)
IronPort-SDR: VfDUAwJTyGeh+CN8P1PXa+ZvDbZuwNwgcFliaOk3yHfivHiD9bGeaLMZEhGSULC9Sus6yQcBl8
 UbO+18HSfkRw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2020 20:41:11 -0700
IronPort-SDR: eZNFU+1hLNxS0+q6fxRHGKNVkFhIErRPz5MN8nW2Zik90c4CexP0aJp+MRRItOqd08bDTnI4Ei
 lKDhkv11UTkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,334,1580803200"; d="scan'208";a="449463690"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by fmsmga005.fm.intel.com with ESMTP; 01 Apr 2020 20:41:11 -0700
Received: from orsmsx121.amr.corp.intel.com (10.22.225.226) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 1 Apr 2020 20:41:10 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.6]) by
 ORSMSX121.amr.corp.intel.com ([169.254.10.66]) with mapi id 14.03.0439.000;
 Wed, 1 Apr 2020 20:41:10 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 05/10] igc: Use netdev log helpers in
 igc_base.c
Thread-Index: AQHWAj2/yhqE+oA/uUau/Z7SECQDgqhlPIiQ
Date: Thu, 2 Apr 2020 03:41:10 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B9722EC34@ORSMSX103.amr.corp.intel.com>
References: <20200325003824.5487-1-andre.guedes@intel.com>
 <20200325003824.5487-6-andre.guedes@intel.com>
In-Reply-To: <20200325003824.5487-6-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 05/10] igc: Use netdev log helpers in
 igc_base.c
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Andre Guedes
> Sent: Tuesday, March 24, 2020 5:38 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 05/10] igc: Use netdev log helpers in
> igc_base.c
> 
> This patch coverts one pr_debug() call to hw_dbg() in order to keep log
> output aligned with the rest of the driver. hw_dbg() is actually a macro
> defined in igc_hw.h that expands to netdev_dbg().
> 
> It also takes this opportunity to remove the '\n' character at the end
> of messages since it is automatically added to by netdev_dbg().
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_base.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
