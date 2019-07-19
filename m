Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 600126E88A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Jul 2019 18:17:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2014C8838F;
	Fri, 19 Jul 2019 16:17:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PXo9LQt7PN2W; Fri, 19 Jul 2019 16:17:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AF82988395;
	Fri, 19 Jul 2019 16:17:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1D7691BF2F6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jul 2019 16:17:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 16E618838F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jul 2019 16:17:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nbOUGtQVJlu3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Jul 2019 16:17:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7E4058835C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jul 2019 16:17:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jul 2019 09:17:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,283,1559545200"; d="scan'208";a="367304238"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by fmsmga005.fm.intel.com with ESMTP; 19 Jul 2019 09:17:41 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.232]) by
 ORSMSX109.amr.corp.intel.com ([169.254.11.170]) with mapi id 14.03.0439.000;
 Fri, 19 Jul 2019 09:17:41 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ixgbe: fix possible deadlock in
 ixgbe_service_task()
Thread-Index: AQHVOzBnUYMXUvAInk6N8257DWERpqbSJHow
Date: Fri, 19 Jul 2019 16:17:41 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D40C2DB@ORSMSX104.amr.corp.intel.com>
References: <20190715045706.6140-1-ap420073@gmail.com>
In-Reply-To: <20190715045706.6140-1-ap420073@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNTI1YTkxN2MtNzhiMC00ZmViLWE4MTYtOGNmNDg1Y2RlYThmIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiKzFSZkdsRSt4bU1xaVpMXC9lY1cxVmo4VHBJem5ObTFncnVKQVNhdXVmaGdMNDg0Z2hTeXlZQ2JCVW1aRnBrZnEifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net] ixgbe: fix possible deadlock in
 ixgbe_service_task()
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
> Behalf Of Taehee Yoo
> Sent: Sunday, July 14, 2019 9:57 PM
> To: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>; intel-wired-
> lan@lists.osuosl.org; ap420073@gmail.com
> Subject: [Intel-wired-lan] [PATCH net] ixgbe: fix possible deadlock in
> ixgbe_service_task()
> 
> ixgbe_service_task() calls unregister_netdev() under rtnl_lock().
> But unregister_netdev() internally calls rtnl_lock().
> So deadlock would occur.
> 
> Fixes: 59dd45d550c5 ("ixgbe: firmware recovery mode")
> Signed-off-by: Taehee Yoo <ap420073@gmail.com>
> ---
> I did only compile test because I don't have the hardware.
> Could anyone test this patch?
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 2 --
>  1 file changed, 2 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
