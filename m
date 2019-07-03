Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CFBF5EEB0
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jul 2019 23:41:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 283E985DA4;
	Wed,  3 Jul 2019 21:41:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XpMD8raxkzYv; Wed,  3 Jul 2019 21:41:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5EA6885CA8;
	Wed,  3 Jul 2019 21:41:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EA1CC1BF488
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2019 21:41:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E24B121567
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2019 21:41:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HtspqBH-PbLj for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jul 2019 21:41:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id 7B3E8203E1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2019 21:41:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jul 2019 14:41:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,448,1557212400"; d="scan'208";a="166656731"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by orsmga003.jf.intel.com with ESMTP; 03 Jul 2019 14:41:27 -0700
Received: from orsmsx125.amr.corp.intel.com (10.22.240.125) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 3 Jul 2019 14:41:27 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.70]) by
 ORSMSX125.amr.corp.intel.com ([169.254.3.149]) with mapi id 14.03.0439.000;
 Wed, 3 Jul 2019 14:41:27 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next PATCH S7 6/9] i40e: Update visual
 effect for advertised FEC mode.
Thread-Index: AQHVMRhud4k4tHSzs02IsyZnGwuYH6a5beHg
Date: Wed, 3 Jul 2019 21:41:27 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D3FD26D@ORSMSX104.amr.corp.intel.com>
References: <20190702122259.79070-1-alice.michael@intel.com>
 <20190702122259.79070-6-alice.michael@intel.com>
In-Reply-To: <20190702122259.79070-6-alice.michael@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiOWI2OGFkNTAtNmRjMS00MWQ3LWExNDItNWZlNWVkZTlhMmU4IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiRktZM1FKYlhZMDZ3RkdnME1WeFlveWN1R1k0dFNJNVdmT0Z3OVNhc3ZBQnNkbzg0OEcwZjhSa0NqN0ZZSjNFUyJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next PATCH S7 6/9] i40e: Update visual
 effect for advertised FEC mode.
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
> Sent: Tuesday, July 2, 2019 5:23 AM
> To: Michael, Alice <alice.michael@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: Zagorski, CzeslawX <czeslawx.zagorski@intel.com>
> Subject: [Intel-wired-lan] [next PATCH S7 6/9] i40e: Update visual effect for
> advertised FEC mode.
> 
> From: Czeslaw Zagorski <czeslawx.zagorski@intel.com>
> 
> Updates visual effect for advertised mode after setting desired mode.
> The mode appears in advertised FEC mode correctly, when ethtool interface
> command is called. Without this commit advertised FEC is displayed
> regardless of the settings as "None BaseR RS".
> 
> Signed-off-by: Czeslaw Zagorski <czeslawx.zagorski@intel.com>
> ---
>  .../net/ethernet/intel/i40e/i40e_ethtool.c    | 63 ++++++++++---------
>  1 file changed, 35 insertions(+), 28 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
