Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E9F196B53
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Aug 2019 23:20:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 41AC422D33;
	Tue, 20 Aug 2019 21:20:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vEsxtYlV9hhq; Tue, 20 Aug 2019 21:20:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5317722E1C;
	Tue, 20 Aug 2019 21:20:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0B7EA1BF3A3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2019 21:19:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 02313876FC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2019 21:19:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4+Uh3Lwj-Efx for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Aug 2019 21:19:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AB1D687778
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2019 21:19:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 14:19:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,410,1559545200"; d="scan'208";a="186037225"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by FMSMGA003.fm.intel.com with ESMTP; 20 Aug 2019 14:19:52 -0700
Received: from orsmsx121.amr.corp.intel.com ([169.254.10.57]) by
 ORSMSX107.amr.corp.intel.com ([169.254.1.32]) with mapi id 14.03.0439.000;
 Tue, 20 Aug 2019 14:19:31 -0700
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] fm10k: add support for
 ndo_get_vf_stats operation
Thread-Index: AQHVV4DA2i6TmyjydU+XTWl5c6nmdacE1EaA//+2SSA=
Date: Tue, 20 Aug 2019 21:19:31 +0000
Message-ID: <02874ECE860811409154E81DA85FBB5896856881@ORSMSX121.amr.corp.intel.com>
References: <20190820175731.32609-1-jacob.e.keller@intel.com>
 <253CF818969A9240AB2054BF91F2C2BC920ED517@ORSMSX114.amr.corp.intel.com>
In-Reply-To: <253CF818969A9240AB2054BF91F2C2BC920ED517@ORSMSX114.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMWE2ZTk1NmItODNhZi00ZmVmLTk1NzMtNGFkYzBkNjM1ZmU5IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiRXU2MHBKYWpZXC9lZzFhbnBrbXB4aXAycytnbkRpdEdrazNKVER2UWhPWCtBa1o0d1lvZ2ZBamVDRkhBcG5sOTIifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] fm10k: add support for
 ndo_get_vf_stats operation
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
Cc: nosbuild <nosbuild@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Brandeburg, Jesse
> Sent: Tuesday, August 20, 2019 11:42 AM
> To: Keller, Jacob E <jacob.e.keller@intel.com>; Intel Wired LAN <intel-wired-
> lan@lists.osuosl.org>
> Cc: nosbuild <nosbuild@intel.com>
> Subject: RE: [Intel-wired-lan] [PATCH] fm10k: add support for ndo_get_vf_stats
> operation
> 
> 
> 
> > From: "nosbuild (Code Review)" <nosbuild@intel.com>
> 
> Please fix the "From:"

Hah, yep that got messed up. Will fix and send a v2.

Regards,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
