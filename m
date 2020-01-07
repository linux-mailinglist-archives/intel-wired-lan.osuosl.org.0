Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 87909133767
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jan 2020 00:28:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 01199858B8;
	Tue,  7 Jan 2020 23:28:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IjzBAYJ3bauh; Tue,  7 Jan 2020 23:28:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 292B78561D;
	Tue,  7 Jan 2020 23:28:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0DBAB1BF312
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2020 23:28:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0935485572
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2020 23:28:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QX_8dK-2NBqq for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Jan 2020 23:28:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6D3328513B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2020 23:28:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jan 2020 15:28:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,407,1571727600"; d="scan'208";a="422731404"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga006.fm.intel.com with ESMTP; 07 Jan 2020 15:28:18 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 7 Jan 2020 15:28:17 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 7 Jan 2020 15:28:17 -0800
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Tue, 7 Jan 2020 15:28:16 -0800
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next v3] i40e: remove unused defines
Thread-Index: AQHVxO9eiYtOVV4w7kKuwuYR442X26ff2klg
Date: Tue, 7 Jan 2020 23:28:16 +0000
Message-ID: <d7126a86c6a5427db7d68d5ca97ab9d0@intel.com>
References: <20200107000933.906614-1-jeffrey.t.kirsher@intel.com>
In-Reply-To: <20200107000933.906614-1-jeffrey.t.kirsher@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMmYxZWJlNTMtMTVjMS00Y2ZkLWJlYzEtYzhjZWU5ZjYyZGZmIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiZzRmS0RoTks0bERTMEJcL3FVekpLaERzQ1Y5VWViT1IzSFJGZ0pmN3UwSkVhT1ptc1wvU1NcL2dpNXFHa3JwYmdnQyJ9
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [net-next v3] i40e: remove unused defines
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
> Behalf Of Jeff Kirsher
> Sent: Monday, January 6, 2020 4:10 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [net-next v3] i40e: remove unused defines
> 
> From: Jesse Brandeburg <jesse.brandeburg@intel.com>
> 
> Remove all the unused defines as they are just dead weight.
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
> v2: fix patch to apply to current dev-queue branch (where i40e_client.h
>     has moved to include/linux/net/intel/)
> v3: add back 2 defines that were still in use
> 
>  drivers/net/ethernet/intel/i40e/i40e.h        |   20 -
>  .../net/ethernet/intel/i40e/i40e_adminq_cmd.h |  482 +-
>  drivers/net/ethernet/intel/i40e/i40e_common.c |    4 -
>  drivers/net/ethernet/intel/i40e/i40e_dcb.h    |    5 -
>  .../net/ethernet/intel/i40e/i40e_debugfs.c    |    1 -
>  drivers/net/ethernet/intel/i40e/i40e_devids.h |    3 -
>  drivers/net/ethernet/intel/i40e/i40e_hmc.h    |    1 -
>  drivers/net/ethernet/intel/i40e/i40e_main.c   |    3 -
>  drivers/net/ethernet/intel/i40e/i40e_osdep.h  |    1 -
>  .../net/ethernet/intel/i40e/i40e_register.h   | 4664 -----------------
>  drivers/net/ethernet/intel/i40e/i40e_txrx.h   |   25 -
>  drivers/net/ethernet/intel/i40e/i40e_type.h   |   81 -
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |    1 -
>  include/linux/net/intel/i40e_client.h         |    5 -
>  14 files changed, 1 insertion(+), 5295 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
