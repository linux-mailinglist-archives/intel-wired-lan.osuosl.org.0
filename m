Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 45C9CD36A2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Oct 2019 02:58:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A670A20498;
	Fri, 11 Oct 2019 00:57:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JaVdG150H0pH; Fri, 11 Oct 2019 00:57:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EC2182040B;
	Fri, 11 Oct 2019 00:57:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AEC421BF9C1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2019 00:57:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A76F287C30
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2019 00:57:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hUOKaEWnt0tC for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Oct 2019 00:57:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E28B387BD9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2019 00:57:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Oct 2019 17:57:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,282,1566889200"; d="scan'208";a="394240903"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by fmsmga005.fm.intel.com with ESMTP; 10 Oct 2019 17:57:54 -0700
Received: from orsmsx156.amr.corp.intel.com (10.22.240.22) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 10 Oct 2019 17:57:53 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.9]) by
 ORSMSX156.amr.corp.intel.com ([169.254.8.60]) with mapi id 14.03.0439.000;
 Thu, 10 Oct 2019 17:57:53 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [net-next v3 5/7] igb: reject unsupported
 external timestamp flags
Thread-Index: AQHVdJXc8aJ9UqMiT0GZBjsf6sJ1iKdUtIIw
Date: Fri, 11 Oct 2019 00:57:52 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B9714C829@ORSMSX103.amr.corp.intel.com>
References: <20190926181109.4871-1-jacob.e.keller@intel.com>
 <20190926181109.4871-6-jacob.e.keller@intel.com>
In-Reply-To: <20190926181109.4871-6-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMGViZGRjOGMtMGMwZS00YjFkLWJkMDQtNTU4Mzc5MDkyNzIyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiQUlDdERiZlVkSnU1aHdoSGMwWTB3bmpFRmFXQ3c1eTZIWW85ZVI1UGRiZTVVZ2pxR3hEZlFXSmxDdDdXQ0ZzQiJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [net-next v3 5/7] igb: reject unsupported
 external timestamp flags
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
Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On Behalf Of
> Jacob Keller
> Sent: Thursday, September 26, 2019 11:11 AM
> To: netdev@vger.kernel.org
> Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next v3 5/7] igb: reject unsupported external
> timestamp flags
> 
> Fix the igb PTP support to explicitly reject any future flags that
> get added to the external timestamp request ioctl.
> 
> In order to maintain currently functioning code, this patch accepts all
> three current flags. This is because the PTP_RISING_EDGE and
> PTP_FALLING_EDGE flags have unclear semantics and each driver seems to
> have interpreted them slightly differently.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/igb/igb_ptp.c | 6 ++++++
>  1 file changed, 6 insertions(+)

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
