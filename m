Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A14102BF
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 May 2019 00:51:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8DE2A87823;
	Tue, 30 Apr 2019 22:51:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8za1gdYWGEWv; Tue, 30 Apr 2019 22:51:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8617A87A5E;
	Tue, 30 Apr 2019 22:51:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2353B1BF976
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2019 22:51:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1EB87258EB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2019 22:51:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lrzB5bNLffpN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Apr 2019 22:51:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by silver.osuosl.org (Postfix) with ESMTPS id 0E11E2314E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2019 22:51:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 15:51:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,415,1549958400"; d="scan'208";a="295936732"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
 by orsmga004.jf.intel.com with ESMTP; 30 Apr 2019 15:51:25 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
 ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Tue, 30 Apr 2019 15:51:25 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.1.121]) by
 ORSMSX151.amr.corp.intel.com ([169.254.7.24]) with mapi id 14.03.0415.000;
 Tue, 30 Apr 2019 15:51:24 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S21 04/14] ice: Use right type for
 ice_cfg_vsi_lan return
Thread-Index: AQHU9HrV+KudqgHXkkanvWX9TRJqQqZVZVvw
Date: Tue, 30 Apr 2019 22:51:24 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D39AF7D@ORSMSX106.amr.corp.intel.com>
References: <20190416173503.29847-1-anirudh.venkataramanan@intel.com>
 <20190416173503.29847-5-anirudh.venkataramanan@intel.com>
In-Reply-To: <20190416173503.29847-5-anirudh.venkataramanan@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNGVmNWQ3N2YtYTMyOS00YTM0LWE1ZmQtNGM1MWRiYzlmZjliIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoieEpzdXljUWg1WmVWNVMwTXJIZ0wydG1wWXhjcjNhYmNkMTFwamttSnN1UVFCUWlvYVFhRDhJSjExUDlwSWhTWCJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S21 04/14] ice: Use right type for
 ice_cfg_vsi_lan return
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
> Sent: Tuesday, April 16, 2019 10:35 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S21 04/14] ice: Use right type for
> ice_cfg_vsi_lan return
> 
> From: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
> 
> ice_cfg_vsi_lan returns a value of type enum ice_status. So use a local of the
> same type to capture the return value.
> 
> Signed-off-by: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> ---
> [Anirudh Venkataramanan <anirudh.venkataramanan@intel.com> rewrote
> commit message]
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c | 18 ++++++++++--------
>  1 file changed, 10 insertions(+), 8 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
