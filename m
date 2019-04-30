Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 052BD1033B
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 May 2019 01:18:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7F7B087852;
	Tue, 30 Apr 2019 23:18:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GD+Dd2CTzfxJ; Tue, 30 Apr 2019 23:18:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 15B2487A80;
	Tue, 30 Apr 2019 23:18:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DAAAE1BF357
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2019 23:18:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D6BB987A60
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2019 23:18:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h5d5onoqV-r7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Apr 2019 23:18:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 25B0987852
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2019 23:18:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 16:18:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,415,1549958400"; d="scan'208";a="140232920"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by orsmga006.jf.intel.com with ESMTP; 30 Apr 2019 16:18:19 -0700
Received: from orsmsx156.amr.corp.intel.com (10.22.240.22) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Tue, 30 Apr 2019 16:18:19 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.1.121]) by
 ORSMSX156.amr.corp.intel.com ([169.254.8.17]) with mapi id 14.03.0415.000;
 Tue, 30 Apr 2019 16:18:19 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S19 01/15] ice: Implement LLDP
 persistence
Thread-Index: AQHU9HlkDV3tAZfpmkON3Ibn/gOUN6ZVbPww
Date: Tue, 30 Apr 2019 23:18:18 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D39B03D@ORSMSX106.amr.corp.intel.com>
References: <20190416172439.27908-1-anirudh.venkataramanan@intel.com>
 <20190416172439.27908-2-anirudh.venkataramanan@intel.com>
In-Reply-To: <20190416172439.27908-2-anirudh.venkataramanan@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMDZlNzZlNGItODBkNi00M2Y0LWE0YzUtNTU1MjQ0ZmM2YTc5IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiRmVuOFEwSlJcLyt4Z2plOWRqM2xtRDVHdVVDUnFlRUZDVndwRng2bUU4czVXWWxqdnd0RFRwS08rdERMSU1ONHUifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S19 01/15] ice: Implement LLDP
 persistence
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
> Behalf Of Anirudh Venkataramanan
> Sent: Tuesday, April 16, 2019 10:24 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S19 01/15] ice: Implement LLDP persistence
> 
> Implement LLDP persistence across reboots, start and stop of LLDP agent.
> Add additional parameter to ice_aq_start_lldp and ice_aq_stop_lldp.
> 
> Also change the ethtool private flag from "disable-fw-lldp" to "enable-fw-
> lldp". This change will flip the boolean logic of the functionality of the flag (on
> = enable, off = disable). The change in name and functionality is to
> differentiate between the pre-persistence and post-persistence states.
> 
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> ---
> [Anirudh Venkataramanan <anirudh.venkataramanan@intel.com> squashed
> multiple commits]
> ---
>  drivers/net/ethernet/intel/ice/ice.h         |  2 +-
>  drivers/net/ethernet/intel/ice/ice_dcb.c     | 16 +++++++++--
>  drivers/net/ethernet/intel/ice/ice_dcb.h     |  8 ++++--
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 30 ++++----------------
> drivers/net/ethernet/intel/ice/ice_ethtool.c | 10 +++----
>  5 files changed, 29 insertions(+), 37 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
