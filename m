Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 318A510340
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 May 2019 01:20:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A81B485FFC;
	Tue, 30 Apr 2019 23:20:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BHOsFsgBgSuF; Tue, 30 Apr 2019 23:20:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2227585FD5;
	Tue, 30 Apr 2019 23:20:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 99A461BF357
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2019 23:20:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 950F686B0B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2019 23:20:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6EYEl9cZRteR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Apr 2019 23:20:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CAD89825A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2019 23:20:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 16:20:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,415,1549958400"; d="scan'208";a="169444569"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by fmsmga001.fm.intel.com with ESMTP; 30 Apr 2019 16:20:02 -0700
Received: from orsmsx158.amr.corp.intel.com (10.22.240.20) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Tue, 30 Apr 2019 16:20:01 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.1.121]) by
 ORSMSX158.amr.corp.intel.com ([169.254.10.159]) with mapi id 14.03.0415.000;
 Tue, 30 Apr 2019 16:20:01 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S19 08/15] ice: Gracefully handle
 reset failure in ice_alloc_vfs()
Thread-Index: AQHU9Hln2u7x8bRcJkq21oU3RQ0iBqZVbXYw
Date: Tue, 30 Apr 2019 23:20:00 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D39B06D@ORSMSX106.amr.corp.intel.com>
References: <20190416172439.27908-1-anirudh.venkataramanan@intel.com>
 <20190416172439.27908-9-anirudh.venkataramanan@intel.com>
In-Reply-To: <20190416172439.27908-9-anirudh.venkataramanan@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMjA2MTE3OTYtMWIyNy00NjBkLWJiODUtM2RlN2JjNjFhMGY1IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiUXhGXC9IU3A4TDNZd203c1N2SUNSbG0wMndqSENPREphcXpLSGJSSE4ya0tRWE5ObGVcL2dwMlBjMU1EaG92RGZUIn0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S19 08/15] ice: Gracefully handle
 reset failure in ice_alloc_vfs()
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
> Sent: Tuesday, April 16, 2019 10:25 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S19 08/15] ice: Gracefully handle reset
> failure in ice_alloc_vfs()
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently if ice_reset_all_vfs() fails in ice_alloc_vfs() we fail to free some
> resources, reset variables, and return an error value.
> Fix this by adding another unroll case to free the pf->vf array, set the pf-
> >num_alloc_vfs to 0, and return an error code.
> 
> Without this, if ice_reset_all_vfs() fails in ice_alloc_vfs() we will not be able
> to do SRIOV without hard rebooting the system because rmmoding the
> driver does not work.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
