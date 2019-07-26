Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D18D773B4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jul 2019 23:47:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 15DFA898F7;
	Fri, 26 Jul 2019 21:47:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5ba7DNgs7nY9; Fri, 26 Jul 2019 21:47:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8817D898E7;
	Fri, 26 Jul 2019 21:47:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 017211BF361
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2019 21:47:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F1721898D9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2019 21:47:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FkZGTykmvYOa for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jul 2019 21:47:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7B31E89696
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2019 21:47:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jul 2019 14:47:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,312,1559545200"; d="scan'208";a="164723602"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga008.jf.intel.com with ESMTP; 26 Jul 2019 14:47:17 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.30]) by
 ORSMSX107.amr.corp.intel.com ([169.254.1.186]) with mapi id 14.03.0439.000;
 Fri, 26 Jul 2019 14:47:17 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next PATCH S8 07/12] i40e: Fix crash caused
 by stress setting of VF MAC addresses
Thread-Index: AQHVQYOqAvoxjseTO0CyFwdbngjvPabddErg
Date: Fri, 26 Jul 2019 21:47:17 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D40CEB8@ORSMSX104.amr.corp.intel.com>
References: <20190723100144.57435-1-alice.michael@intel.com>
 <20190723100144.57435-7-alice.michael@intel.com>
In-Reply-To: <20190723100144.57435-7-alice.michael@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZjI3ZDI2ODAtZThlZC00ODgwLTg4YjgtMzkzMWJkZWZhMTNmIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiN0l2b2hnTjQyZU1aMFFMeEV1WDROams5bCtscElZU0hjcVBCck9lYW5aVklTZ0NvSDZVbzJvWHYwUVVcL0JENXIifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next PATCH S8 07/12] i40e: Fix crash caused
 by stress setting of VF MAC addresses
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
> Behalf Of Alice Michael
> Sent: Tuesday, July 23, 2019 3:02 AM
> To: Michael, Alice <alice.michael@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: Laba, SlawomirX <slawomirx.laba@intel.com>
> Subject: [Intel-wired-lan] [next PATCH S8 07/12] i40e: Fix crash caused by
> stress setting of VF MAC addresses
> 
> From: Slawomir Laba <slawomirx.laba@intel.com>
> 
> Add update to the vsi pointer passed to the i40e_set_vf_mac function.
> If VF is in reset state the driver waits in i40e_set_vf_mac function for the
> reset to be complete, yet after reset the vsi pointer that was passed into this
> function is no longer valid.
> 
> The patch updates local vsi pointer directly from pf->vsi array, by using the id
> stored in vf pointer (lan_vsi_idx).
> 
> Without this commit the driver might occasionally invoke general protection
> fault in kernel and disable the OS entirely.
> 
> Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
