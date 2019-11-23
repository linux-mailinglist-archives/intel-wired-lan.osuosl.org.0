Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 522A2107CB6
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Nov 2019 05:03:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 117E588AA7;
	Sat, 23 Nov 2019 04:03:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pbHgOxZO+Jl4; Sat, 23 Nov 2019 04:03:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 97FB188BFB;
	Sat, 23 Nov 2019 04:03:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E17411BF989
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Nov 2019 04:02:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DC15188AA7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Nov 2019 04:02:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u9MDIMsgV2F8 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 Nov 2019 04:02:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6805288A6E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Nov 2019 04:02:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Nov 2019 20:02:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,232,1571727600"; d="scan'208";a="290827640"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by orsmga001.jf.intel.com with ESMTP; 22 Nov 2019 20:02:58 -0800
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.179]) by
 ORSMSX110.amr.corp.intel.com ([169.254.10.52]) with mapi id 14.03.0439.000;
 Fri, 22 Nov 2019 20:02:58 -0800
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1 06/15] igc: Remove no need
 declaration of the igc_set_interrupt_capability
Thread-Index: AQHVns68oPWBy/gXaUaWiw+FPYb36qeYKBPA
Date: Sat, 23 Nov 2019 04:02:57 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B9717BA6B@ORSMSX103.amr.corp.intel.com>
References: <20191119114419.42064-1-sasha.neftin@intel.com>
In-Reply-To: <20191119114419.42064-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYjY0MTljM2YtMTQxYS00MjE5LWE3NjktYjA5NWVkZTFhYzhmIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiV1ozN2xGaVJ0ZitDVWpxZmgwb2szSzZDR0kyQlB5RE16eFVhK21YWVVoYUlrWitOSEJ1MWJSUCtmVjg0TDFoOCJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v1 06/15] igc: Remove no need
 declaration of the igc_set_interrupt_capability
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Sasha Neftin
> Sent: Tuesday, November 19, 2019 3:44 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v1 06/15] igc: Remove no need declaration
> of the igc_set_interrupt_capability
> 
> We want to avoid forward-declarations of function if possible.
> Rearrange the igc_set_interrupt_capability function implementation.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 142 +++++++++++++++-----------
> ----
>  1 file changed, 70 insertions(+), 72 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
