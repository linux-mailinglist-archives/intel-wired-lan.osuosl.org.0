Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 974D1674E7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Jul 2019 20:02:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 44E7187700;
	Fri, 12 Jul 2019 18:02:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k7QbN9W6Kpyi; Fri, 12 Jul 2019 18:02:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 91B9E8770B;
	Fri, 12 Jul 2019 18:02:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 48BD41BF83A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2019 18:02:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 41D2822817
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2019 18:02:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id htBLODQvwlPV for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Jul 2019 18:02:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 383D21FEE0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2019 18:02:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 11:02:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,483,1557212400"; d="scan'208";a="174515419"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
 by FMSMGA003.fm.intel.com with ESMTP; 12 Jul 2019 11:02:28 -0700
Received: from orsmsx154.amr.corp.intel.com (10.22.226.12) by
 ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 12 Jul 2019 11:02:28 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.232]) by
 ORSMSX154.amr.corp.intel.com ([169.254.11.96]) with mapi id 14.03.0439.000;
 Fri, 12 Jul 2019 11:02:28 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 07/19] fm10k: reduce the scope of the
 err variable
Thread-Index: AQHVNeK1M+ugy+UydkOhtO49DSxWB6bHTBmQ
Date: Fri, 12 Jul 2019 18:02:27 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D40ABEB@ORSMSX104.amr.corp.intel.com>
References: <20190708231236.20516-1-jacob.e.keller@intel.com>
 <20190708231236.20516-8-jacob.e.keller@intel.com>
In-Reply-To: <20190708231236.20516-8-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiN2QxZTQ3MTAtZTU3NC00NTExLTk1NTYtOTk3ZWNlYWIzZmVhIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoidmpsaWVKclwvUHFKR29aU3d4aFBDNDNET25MREJYVkQ2MEdJSGdNVVNvZmY4OHoxMnFNdDRHOWtDSDNqd29VNXoifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 07/19] fm10k: reduce the scope of the
 err variable
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
> Behalf Of Jacob Keller
> Sent: Monday, July 8, 2019 4:12 PM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [PATCH 07/19] fm10k: reduce the scope of the err
> variable
> 
> Reduce the scope of the local variable err in the fm10k_detach_subtask
> function.
> 
> This was detected by cppcheck and resolves the following warning produced
> by that tool:
> 
> [fm10k_pci.c:403]: (style) The scope of the variable 'err' can be reduced.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/fm10k/fm10k_pci.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
