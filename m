Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A5B6C136453
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jan 2020 01:23:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D168286F87;
	Fri, 10 Jan 2020 00:23:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P6stVq4+j4UF; Fri, 10 Jan 2020 00:23:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D7B8786E1D;
	Fri, 10 Jan 2020 00:23:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 79AC11BF335
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jan 2020 00:23:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6DE9287EC5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jan 2020 00:23:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EhhDCRd1Wzzq for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jan 2020 00:23:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D580D87EB0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jan 2020 00:23:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jan 2020 16:23:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,414,1571727600"; d="scan'208";a="212069827"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by orsmga007.jf.intel.com with ESMTP; 09 Jan 2020 16:23:31 -0800
Received: from orsmsx112.amr.corp.intel.com (10.22.240.13) by
 ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 9 Jan 2020 16:23:31 -0800
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.250]) by
 ORSMSX112.amr.corp.intel.com ([169.254.3.41]) with mapi id 14.03.0439.000;
 Thu, 9 Jan 2020 16:23:30 -0800
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1] igc: Add support for TSO
Thread-Index: AQHVw8QKLdq50Zdg8UCYbeN50ksZnqfjEJyA
Date: Fri, 10 Jan 2020 00:23:30 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B971A9B8F@ORSMSX103.amr.corp.intel.com>
References: <20200105122053.2512-1-sasha.neftin@intel.com>
In-Reply-To: <20200105122053.2512-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMGMxMDBhZjYtM2E4Ny00MTQzLTkzMzQtYmMyZmVjNGRlZDI5IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiMlBLYURUbnhpSEczZHdJM2VGdkJTaDhlbFdTZVNlbVwvdjJUMVBFWld3XC80blA5OUtDS3BVQTQxbFpYK25UUWpZIn0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v1] igc: Add support for TSO
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Sasha
> Neftin
> Sent: Sunday, January 5, 2020 4:21 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v1] igc: Add support for TSO
> 
> TCP segmentation offload allows a device to segment a single frame
> into multiple frames with a data payload size specified in socket buffer.
> As a result we can now send data approximately up to seven percents fast
> than was previously possible on my system.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_defines.h |   4 +
>  drivers/net/ethernet/intel/igc/igc_main.c    | 113
> ++++++++++++++++++++++++++-
>  2 files changed, 116 insertions(+), 1 deletion(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
