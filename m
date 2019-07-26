Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D4F9B773C4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jul 2019 23:54:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8AE4287BA3;
	Fri, 26 Jul 2019 21:54:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8K23KsSvPim4; Fri, 26 Jul 2019 21:54:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C79F987A58;
	Fri, 26 Jul 2019 21:54:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2764D1BF361
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2019 21:54:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 23A0A898E2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2019 21:54:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aB83FYduZJrR for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jul 2019 21:54:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 98E68898D9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2019 21:54:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jul 2019 14:54:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,312,1559545200"; d="scan'208";a="194425336"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by fmsmga004.fm.intel.com with ESMTP; 26 Jul 2019 14:54:42 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
 ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 26 Jul 2019 14:54:41 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.30]) by
 ORSMSX152.amr.corp.intel.com ([169.254.8.114]) with mapi id 14.03.0439.000;
 Fri, 26 Jul 2019 14:54:41 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next PATCH S8 12/12] i40e: fix retrying in
 i40e_aq_get_phy_capabilities
Thread-Index: AQHVQYOhnfEWrJtPFku3pK7Ey6K3Aqbddl7Q
Date: Fri, 26 Jul 2019 21:54:41 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D40CF0A@ORSMSX104.amr.corp.intel.com>
References: <20190723100144.57435-1-alice.michael@intel.com>
 <20190723100144.57435-12-alice.michael@intel.com>
In-Reply-To: <20190723100144.57435-12-alice.michael@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNzYzNjVkN2QtYjE4My00MzIxLThmZjktODhjOWU3ZjVlZjE1IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiejFydUJJUGsybm9CK2hvRVp6RkZ6WlU4YWZ6U3MwNWZLZXFcLzhwbHIydExmR1dHNFVSaEplMjh5VVh0YUNZa3MifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next PATCH S8 12/12] i40e: fix retrying in
 i40e_aq_get_phy_capabilities
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
> Cc: Formela, Marcin <marcin.formela@intel.com>
> Subject: [Intel-wired-lan] [next PATCH S8 12/12] i40e: fix retrying in
> i40e_aq_get_phy_capabilities
> 
> From: Marcin Formela <marcin.formela@intel.com>
> 
> Fixed a bug where driver was breaking out of the loop and reporting an error
> without retrying first.
> 
> Signed-off-by: Marcin Formela <marcin.formela@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_common.c | 17 ++++++++++-------
>  1 file changed, 10 insertions(+), 7 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
