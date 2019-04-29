Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 734F0E9EC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Apr 2019 20:15:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1C11D8610B;
	Mon, 29 Apr 2019 18:15:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SbtF-QopMquF; Mon, 29 Apr 2019 18:15:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E8B0B86483;
	Mon, 29 Apr 2019 18:15:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6B8141BF3DD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Apr 2019 18:15:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 679E987463
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Apr 2019 18:15:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k040TcO7MsES for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Apr 2019 18:15:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C126E8745A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Apr 2019 18:15:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Apr 2019 11:15:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,410,1549958400"; d="scan'208";a="165999932"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
 by fmsmga002.fm.intel.com with ESMTP; 29 Apr 2019 11:15:23 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.1.121]) by
 ORSMSX101.amr.corp.intel.com ([169.254.8.212]) with mapi id 14.03.0415.000;
 Mon, 29 Apr 2019 11:15:21 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S20 08/15] ice: Check all VFs for MDD
 activity, don't disable
Thread-Index: AQHU9HpAfE8g8XKG60WTMeMLkucBEaZThf6Q
Date: Mon, 29 Apr 2019 18:15:21 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D39ACA8@ORSMSX106.amr.corp.intel.com>
References: <20190416173052.28928-1-anirudh.venkataramanan@intel.com>
 <20190416173052.28928-9-anirudh.venkataramanan@intel.com>
In-Reply-To: <20190416173052.28928-9-anirudh.venkataramanan@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYjNjMzBmMGUtZWRiNC00ZDFlLTg4MTgtNTI2ZGE0Yjk4MTI2IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiV1RNUnM0UkpyZWMyQm5aUERwY0pSd3h2XC85d3A0bGFCXC81Z1lMYmxaT1RcL0pZeVFHZXE3Y09nMzhnbG9PNVFtRCJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S20 08/15] ice: Check all VFs for MDD
 activity, don't disable
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
> Sent: Tuesday, April 16, 2019 10:31 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S20 08/15] ice: Check all VFs for MDD
> activity, don't disable
> 
> From: Mitch Williams <mitch.a.williams@intel.com>
> 
> Don't use the mdd_detected variable as an exit condition for this loop; the
> first VF to NOT have an MDD event will cause the loop to terminate.
> 
> Instead just look at all of the VFs, but don't disable them. This prevents
> proper release of resources if the VFs are rebooted or the VF driver
> reloaded. Instead, just log a message and call out repeat offenders.
> 
> To make it clear what we are doing, use a differently-named variable in the
> loop.
> 
> Signed-off-by: Mitch Williams <mitch.a.williams@intel.com>
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 23 +++++++++++------------
>  1 file changed, 11 insertions(+), 12 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
