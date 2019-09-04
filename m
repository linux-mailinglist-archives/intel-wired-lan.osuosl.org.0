Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AC687A967B
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Sep 2019 00:30:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5FD8886274;
	Wed,  4 Sep 2019 22:30:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eSOvRT3WDanX; Wed,  4 Sep 2019 22:30:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6284C864EE;
	Wed,  4 Sep 2019 22:30:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B9F281BF31A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2019 22:30:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id ADDEB88402
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2019 22:30:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yGM5uiOfmzM9 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Sep 2019 22:30:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1460B8836A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2019 22:30:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Sep 2019 15:30:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,468,1559545200"; d="scan'208";a="266812442"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by orsmga001.jf.intel.com with ESMTP; 04 Sep 2019 15:30:33 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 4 Sep 2019 15:30:28 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 4 Sep 2019 15:30:27 -0700
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Wed, 4 Sep 2019 15:30:27 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH v2 net-next 2/2] i40e: Implement debug macro hw_dbg using
 dev_dbg
Thread-Index: AQHVYoy755cDx9NN1EiWzgKEhOLZpqccG35Q
Date: Wed, 4 Sep 2019 22:30:27 +0000
Message-ID: <88b220e5a964498fbcf91e530ee67de0@intel.com>
References: <20190903192021.25789-1-maurosr@linux.vnet.ibm.com>
 <20190903192021.25789-2-maurosr@linux.vnet.ibm.com>
In-Reply-To: <20190903192021.25789-2-maurosr@linux.vnet.ibm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMDhjMTc3Y2YtMWFiOC00ZmVmLWEyZmItNzhiN2JkZjQ2NzUyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiUWpzc0MxM0tHNnpPVjRkbDJtZ0xGSzJONGwwRWQ3Z0xsVEtOUUl6dGZrS1wvZEJOSlhIdXdLYkhGanVwWGp4bUoifQ==
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next 2/2] i40e: Implement debug
 macro hw_dbg using dev_dbg
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
> From: Mauro S. M. Rodrigues [mailto:maurosr@linux.vnet.ibm.com]
> Sent: Tuesday, September 3, 2019 12:20 PM
> To: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org;
> davem@davemloft.net; Bowers, AndrewX <andrewx.bowers@intel.com>;
> Jakub Kicinski <jakub.kicinski@netronome.com>;
> maurosr@linux.vnet.ibm.com
> Subject: [PATCH v2 net-next 2/2] i40e: Implement debug macro hw_dbg
> using dev_dbg
> 
> There are several uses of hw_dbg in the code, producing no output. This
> patch implments it using dev_debug.
> 
> Initially the intention was to implement it using netdev_dbg, analogously to
> what is done in ixgbe for instance. That approach was avoided due to some
> early usages of hw_dbg, like i40e_pf_reset, before the vsi structure
> initialization causing NULL pointer dereference during the driver probe if the
> dbg messages were turned on as soon as the module is probed.
> 
> v2:
>  - Use dev_dbg instead of pr_debug, and take advantage of dev_name
> instead of crafting pretty much the same device name locally as suggested by
> Jakub Kicinski.
> 
> Signed-off-by: Mauro S. M. Rodrigues <maurosr@linux.vnet.ibm.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_common.c | 1 +
>  drivers/net/ethernet/intel/i40e/i40e_hmc.c    | 1 +
>  drivers/net/ethernet/intel/i40e/i40e_osdep.h  | 5 ++++-
>  3 files changed, 6 insertions(+), 1 deletion(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
