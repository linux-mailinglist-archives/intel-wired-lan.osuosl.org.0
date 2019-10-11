Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCD69D3699
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Oct 2019 02:56:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id ED0BD88045;
	Fri, 11 Oct 2019 00:56:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nFZdUh-FjNlm; Fri, 11 Oct 2019 00:56:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4311787ED2;
	Fri, 11 Oct 2019 00:56:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3AAA01BF9C1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2019 00:56:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 36224203BF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2019 00:56:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UkoudlTz8B64 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Oct 2019 00:56:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id 2A2F1203BE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2019 00:56:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Oct 2019 17:56:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,282,1566889200"; d="scan'208";a="197425138"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga003.jf.intel.com with ESMTP; 10 Oct 2019 17:56:52 -0700
Received: from orsmsx162.amr.corp.intel.com (10.22.240.85) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 10 Oct 2019 17:56:51 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.9]) by
 ORSMSX162.amr.corp.intel.com ([169.254.3.170]) with mapi id 14.03.0439.000;
 Thu, 10 Oct 2019 17:56:52 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1] e1000e: Add support for S0ix
Thread-Index: AQHVbFtsudRuKVVf+0eYlnLdYKHKXKdUxFdw
Date: Fri, 11 Oct 2019 00:56:50 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B9714C814@ORSMSX103.amr.corp.intel.com>
References: <20190916065240.41486-1-sasha.neftin@intel.com>
In-Reply-To: <20190916065240.41486-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZmQwZDVlZGQtZmEzNi00ZTI5LWI5N2EtZTkwMzUzNWMxMDYzIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiV3h5Z1l5VEUwRCtaWlwvSDJlanptZWFQaGZ0MkhtVG44aHpYbUdZWnNqdXlZeUFiZ3d4akh0cjdIU2x1VnAwMU4ifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v1] e1000e: Add support for S0ix
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
Cc: Rajneesh Bhardwaj <rajneesh.bhardwaj@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On Behalf Of
> Sasha Neftin
> Sent: Sunday, September 15, 2019 11:53 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Rajneesh Bhardwaj <rajneesh.bhardwaj@linux.intel.com>
> Subject: [Intel-wired-lan] [PATCH v1] e1000e: Add support for S0ix
> 
> Implement flow for S0ix support. Modern SoCs support S0ix low power
> states during idle periods, which are sub-states of ACPI S0 that increase
> power saving while supporting an instant-on experience for providing
> lower latency that ACPI S0. The S0ix states shut off parts of the SoC
> when they are not in use, while still maintaning optimal performance.
> This patch add support for S0ix started from an Ice Lake platform.
> 
> Suggested-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> Signed-off-by: Rajneesh Bhardwaj <rajneesh.bhardwaj@linux.intel.com>
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/e1000e/netdev.c | 186
> +++++++++++++++++++++++++++++
>  drivers/net/ethernet/intel/e1000e/regs.h   |   4 +
>  2 files changed, 190 insertions(+)

I do not yet have access to an Ice lake platform but this does not seem to harm any of my regression systems, so...
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
