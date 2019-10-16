Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E42C4D96D1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Oct 2019 18:17:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 76141203AB;
	Wed, 16 Oct 2019 16:17:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E+RT4fABQxNq; Wed, 16 Oct 2019 16:17:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 70009203C7;
	Wed, 16 Oct 2019 16:17:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0A8DD1BF30E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2019 16:17:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 06A08878A0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2019 16:17:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LYyCzKNPrlyS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Oct 2019 16:17:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5271C8789C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2019 16:17:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Oct 2019 09:17:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,304,1566889200"; d="scan'208";a="395945058"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga005.fm.intel.com with ESMTP; 16 Oct 2019 09:17:44 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 16 Oct 2019 09:17:43 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 16 Oct 2019 09:17:43 -0700
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Wed, 16 Oct 2019 09:17:43 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S31 03/15] ice: Add support for FW
 recovery mode detection
Thread-Index: AQHVfvKHu+VuKB1swkOf956VlS9fJqddfIPQ
Date: Wed, 16 Oct 2019 16:17:42 +0000
Message-ID: <ce4e132b64224b7fbd28d017183bc4c5@intel.com>
References: <20191009140953.14087-1-anthony.l.nguyen@intel.com>
 <20191009140953.14087-3-anthony.l.nguyen@intel.com>
In-Reply-To: <20191009140953.14087-3-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiY2RmMWNmNGQtOWNkMS00MDYzLWEwNDItZTVjMGVhNTY0NmMxIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiekZtb1RGSmphcms0UzRnK2VyMTkwYkxlbkJKeEg3YU9TTXNMSjFWN1lvWno0M0RrdlpyZ3NDVWlMUkhiXC9NVzIifQ==
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S31 03/15] ice: Add support for FW
 recovery mode detection
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

> -----Original Message-----
> From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On
> Behalf Of Tony Nguyen
> Sent: Wednesday, October 9, 2019 7:10 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S31 03/15] ice: Add support for FW
> recovery mode detection
> 
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> 
> This patch adds support for firmware recovery mode detection.
> 
> The idea behind FW recovery mode is to recover from a bad FW state, due to
> corruption or misconfiguration. The FW triggers recovery mode by setting the
> right bits in the GL_MNG_FWSM register and issuing an EMP reset.
> 
> The driver may or may not be loaded when recovery mode is triggered. So on
> module load, the driver first checks if the FW is already in recovery mode. If
> so, it drops into recovery mode as well, where it creates and registers a single
> netdev that only allows a very small set of repair/ diagnostic operations (like
> updating the FW, checking version, etc.) through ethtool.
> 
> If recovery mode is triggered when the driver is loaded/operational, the first
> indication of this in the driver is via the EMP reset event.
> As part of processing the reset event, the driver checks the GL_MNG_FWSM
> register to determine if recovery mode was triggered. If so, traffic is stopped,
> peers are closed and the ethtool ops are updated to allow only
> repair/diagnostic operations.
> 
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |   3 +
>  drivers/net/ethernet/intel/ice/ice_common.c   |  52 ++++-
>  drivers/net/ethernet/intel/ice/ice_common.h   |   9 +
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  |  20 ++
>  .../net/ethernet/intel/ice/ice_hw_autogen.h   |   1 +
>  drivers/net/ethernet/intel/ice/ice_main.c     | 179 +++++++++++++++++-
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |   6 +
>  7 files changed, 259 insertions(+), 11 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
