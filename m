Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E880E6747F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Jul 2019 19:44:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D991A88355;
	Fri, 12 Jul 2019 17:44:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OM+IASAUodHZ; Fri, 12 Jul 2019 17:44:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7E67388362;
	Fri, 12 Jul 2019 17:44:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ADE2F1BF83A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2019 17:44:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A908587456
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2019 17:44:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oJe7gJ2jTjMc for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Jul 2019 17:44:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B7A4E86DCC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2019 17:44:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 10:44:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,483,1557212400"; d="scan'208";a="160452341"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by orsmga008.jf.intel.com with ESMTP; 12 Jul 2019 10:44:50 -0700
Received: from orsmsx159.amr.corp.intel.com (10.22.240.24) by
 ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 12 Jul 2019 10:44:49 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.232]) by
 ORSMSX159.amr.corp.intel.com ([169.254.11.26]) with mapi id 14.03.0439.000;
 Fri, 12 Jul 2019 10:44:49 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] ixgbevf: Link lost in VM on ixgbevf
 when restoring from freeze or suspend
Thread-Index: AQHVMm9fXUmtD+qkZkaoRSyvj0mQ/KbHThVw
Date: Fri, 12 Jul 2019 17:44:49 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D40AB7E@ORSMSX104.amr.corp.intel.com>
References: <20190704134842.7900-1-radoslawx.tyl@intel.com>
In-Reply-To: <20190704134842.7900-1-radoslawx.tyl@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYzI3OGY4NzgtZjFiOC00OTMwLWFhYWMtOGIxZWVhMGE5N2FlIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoianZCZ1luY1ZFVU9kSUJ6bklISktVYkRnNHFDNmJiNEpuNGpXVnFYOHhcL3E3T25lOHZMYnM3SVlLM21mQk00TmQifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] ixgbevf: Link lost in VM on ixgbevf
 when restoring from freeze or suspend
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
> Behalf Of Radoslaw Tyl
> Sent: Thursday, July 4, 2019 6:49 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH] ixgbevf: Link lost in VM on ixgbevf when
> restoring from freeze or suspend
> 
> This patch fixed issue in VM which shows no link when hypervisor is restored
> from low-power state. The driver is responsible for reenabling any features
> of the device that had been disabled during suspend calls, such as IRQs and
> bus mastering.
> 
> Signed-off-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c | 1 +
>  1 file changed, 1 insertion(+)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
