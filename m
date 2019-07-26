Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B099773B7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jul 2019 23:47:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8A79E88C67;
	Fri, 26 Jul 2019 21:47:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tEYURF6+l-oq; Fri, 26 Jul 2019 21:47:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DF56888C80;
	Fri, 26 Jul 2019 21:47:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 08D3B1BF361
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2019 21:47:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 04C5788C67
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2019 21:47:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OFQxqwEWM4wJ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jul 2019 21:47:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7E17F88C5B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2019 21:47:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jul 2019 14:47:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,312,1559545200"; d="scan'208";a="164723686"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga008.jf.intel.com with ESMTP; 26 Jul 2019 14:47:48 -0700
Received: from orsmsx159.amr.corp.intel.com (10.22.240.24) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 26 Jul 2019 14:47:48 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.30]) by
 ORSMSX159.amr.corp.intel.com ([169.254.11.26]) with mapi id 14.03.0439.000;
 Fri, 26 Jul 2019 14:47:47 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next PATCH S8 08/12] i40e: Remove function
 i40e_update_dcb_config()
Thread-Index: AQHVQYOxPrPPBwT8MUSG2KILS3/246bddHAA
Date: Fri, 26 Jul 2019 21:47:48 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D40CEC9@ORSMSX104.amr.corp.intel.com>
References: <20190723100144.57435-1-alice.michael@intel.com>
 <20190723100144.57435-8-alice.michael@intel.com>
In-Reply-To: <20190723100144.57435-8-alice.michael@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZTM2NGUzNmEtN2VjOS00ZDgzLThmYmEtZWU4NjgwNTI5NjNkIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoielJOS3lBXC84QjlLOTRzSXVqZzlXK3lhNW50WXYrbCtiZVVWK0pieVFmb01qbjFmTWdoQ2RpOG9YN0pcL3RYMEI0In0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next PATCH S8 08/12] i40e: Remove function
 i40e_update_dcb_config()
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
> Cc: Siwik, Grzegorz <grzegorz.siwik@intel.com>
> Subject: [Intel-wired-lan] [next PATCH S8 08/12] i40e: Remove function
> i40e_update_dcb_config()
> 
> From: Grzegorz Siwik <grzegorz.siwik@intel.com>
> 
> This patch removes function i40e_update_dcb_config(). Instead of
> i40e_update_dcb_config() we use i40e_init_dcb(), which implements the
> correct nvm read.
> 
> Signed-off-by: Grzegorz Siwik <grzegorz.siwik@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 46 +--------------------
>  1 file changed, 1 insertion(+), 45 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
