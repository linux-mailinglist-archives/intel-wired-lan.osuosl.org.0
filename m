Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB13133768
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jan 2020 00:28:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3B7D7855DF;
	Tue,  7 Jan 2020 23:28:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lyMOigE2aHiD; Tue,  7 Jan 2020 23:28:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8DCD88561D;
	Tue,  7 Jan 2020 23:28:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 924011BF312
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2020 23:28:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8D81585572
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2020 23:28:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UHRB219Jd0lB for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Jan 2020 23:28:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E81D28513B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2020 23:28:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jan 2020 15:28:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,407,1571727600"; d="scan'208";a="395556603"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga005.jf.intel.com with ESMTP; 07 Jan 2020 15:28:53 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 7 Jan 2020 15:28:52 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 7 Jan 2020 15:28:52 -0800
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Tue, 7 Jan 2020 15:28:52 -0800
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net] i40e: Fix receive buffer starvation for
 AF_XDP
Thread-Index: AQHVw6SUWA51p8+QYUq5fY0K3bQJwKff3Qjw
Date: Tue, 7 Jan 2020 23:28:52 +0000
Message-ID: <9cca5b6987e343cb844a549651aa9648@intel.com>
References: <20200105084600.4025394-1-jeffrey.t.kirsher@intel.com>
In-Reply-To: <20200105084600.4025394-1-jeffrey.t.kirsher@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMWI5NjIyM2YtMTU3My00ZDA0LTkyOGMtZjM1MWYxODc4MmUwIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiMVVvMGo1ZU5tTTFZUWZEdVwvMjZFN2xOXC9RNExSVElvd0NtR1NvNk94XC9OMnRRY3RSQitxQUl4U0ZyM04zTEVNZyJ9
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [net] i40e: Fix receive buffer starvation for
 AF_XDP
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
> Sent: Sunday, January 5, 2020 12:46 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Karlsson, Magnus <magnus.karlsson@intel.com>
> Subject: [Intel-wired-lan] [net] i40e: Fix receive buffer starvation for AF_XDP
> 
> Magnus's fix to resolve a potential receive buffer starvation for AF_XDP got
> applied to both the i40e_xsk_umem_enable/disable() functions, when it
> should have only been applied to the "enable".  So clean up the undesired
> code in the disable function.
> 
> CC: Magnus Karlsson <magnus.karlsson@intel.com>
> Fixes: 1f459bdc2007 ("i40e: fix potential RX buffer starvation for AF_XDP")
> Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_xsk.c | 5 -----
>  1 file changed, 5 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
