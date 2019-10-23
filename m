Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC79E0FEE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Oct 2019 04:10:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 533D220242;
	Wed, 23 Oct 2019 02:10:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ugkgXcG9MVPn; Wed, 23 Oct 2019 02:10:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6C7DF2284A;
	Wed, 23 Oct 2019 02:10:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9C2C71BF418
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2019 02:10:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 97C9B22843
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2019 02:10:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eJit1rOpHvDZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Oct 2019 02:10:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by silver.osuosl.org (Postfix) with ESMTPS id AD5DD20242
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2019 02:10:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 19:10:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,219,1569308400"; d="scan'208";a="227955514"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by fmsmga002.fm.intel.com with ESMTP; 22 Oct 2019 19:10:09 -0700
Received: from orsmsx159.amr.corp.intel.com (10.22.240.24) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 22 Oct 2019 19:10:09 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.9]) by
 ORSMSX159.amr.corp.intel.com ([169.254.11.61]) with mapi id 14.03.0439.000;
 Tue, 22 Oct 2019 19:10:09 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: Alexander Duyck <alexander.duyck@gmail.com>,
 "alexander.h.duyck@linux.intel.com" <alexander.h.duyck@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>
Thread-Topic: [Intel-wired-lan] [next-queue PATCH v2 2/2] e1000e: Drop
 unnecessary __E1000_DOWN bit twiddling
Thread-Index: AQHVgEl6YHHR8y+xKk22zja70f7iIadnjU4A
Date: Wed, 23 Oct 2019 02:10:09 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B97154E17@ORSMSX103.amr.corp.intel.com>
References: <20191011153219.22313.60179.stgit@localhost.localdomain>
 <20191011153459.22313.17985.stgit@localhost.localdomain>
In-Reply-To: <20191011153459.22313.17985.stgit@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMjIxZGEyMjgtYTNhMy00ZDkxLTkwMjgtNmMxODIwMDUxNjkwIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoidmIyUmpNZVNYUWROeTk3K01xR25CZWY2MVhhZzN1U0VnYk83bjVGWEJFdzU0ejhtc0F2R0x4SUI5YlwvZVdHU1EifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next-queue PATCH v2 2/2] e1000e: Drop
 unnecessary __E1000_DOWN bit twiddling
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "zdai@us.ibm.com" <zdai@us.ibm.com>,
 "zdai@linux.vnet.ibm.com" <zdai@linux.vnet.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Alexander Duyck
> Sent: Friday, October 11, 2019 8:35 AM
> To: alexander.h.duyck@linux.intel.com; intel-wired-lan@lists.osuosl.org;
> Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>
> Cc: netdev@vger.kernel.org; zdai@us.ibm.com; zdai@linux.vnet.ibm.com
> Subject: [Intel-wired-lan] [next-queue PATCH v2 2/2] e1000e: Drop
> unnecessary __E1000_DOWN bit twiddling
> 
> From: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> 
> Since we no longer check for __E1000_DOWN in e1000e_close we can drop
> the
> spot where we were restoring the bit. This saves us a bit of unnecessary
> complexity.
> 
> Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/e1000e/netdev.c |    7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)
> 

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
