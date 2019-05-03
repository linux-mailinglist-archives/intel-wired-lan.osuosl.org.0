Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F16A113637
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 May 2019 01:36:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6A1EB88425;
	Fri,  3 May 2019 23:36:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TmssoN9fN-qa; Fri,  3 May 2019 23:36:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4A9C48858C;
	Fri,  3 May 2019 23:36:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B5D351BF31B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2019 23:36:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B030187A5D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2019 23:36:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pwFFwEihPPXc for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 May 2019 23:36:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4150B87896
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2019 23:36:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 May 2019 16:36:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,427,1549958400"; d="scan'208";a="167420242"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by fmsmga002.fm.intel.com with ESMTP; 03 May 2019 16:36:42 -0700
Received: from orsmsx163.amr.corp.intel.com (10.22.240.88) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 3 May 2019 16:36:42 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.1.121]) by
 ORSMSX163.amr.corp.intel.com ([169.254.9.163]) with mapi id 14.03.0415.000;
 Fri, 3 May 2019 16:36:42 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next PATCH S5 03/10] i40e: Use signed variable
Thread-Index: AQHU+t14WaA+ql0HZk6WycEgBz7lvKZaHFMw
Date: Fri, 3 May 2019 23:36:41 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D39C69F@ORSMSX106.amr.corp.intel.com>
References: <20190424122055.27896-1-alice.michael@intel.com>
 <20190424122055.27896-3-alice.michael@intel.com>
In-Reply-To: <20190424122055.27896-3-alice.michael@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZTc2NWEzOTYtN2ZiZS00MThlLWEwYjgtYWY0OWRhZjc2OTAzIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiTkMrdG1VeHU4RUFmUHVuZWYxTnR1Rk1UZkZ4NlkrWk9EWnRxMkJOdFwvNVBxOEFneUhic3lsWklsQitGU1duZzUifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next PATCH S5 03/10] i40e: Use signed
 variable
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
> Sent: Wednesday, April 24, 2019 5:21 AM
> To: Michael, Alice <alice.michael@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [next PATCH S5 03/10] i40e: Use signed variable
> 
> From: Mitch Williams <mitch.a.williams@intel.com>
> 
> The counter variable in i40e_clean_tx_irq starts out negative and climbs to 0.
> So it should not be defined as a u16. This was working by accident due to the
> fact the u16 overflows and underflows predictably.
> 
> Replace the u16 with int, which is signed and can handle the negativity.
> 
> Signed-off-by: Mitch Williams <mitch.a.williams@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
