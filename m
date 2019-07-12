Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 558B4674DA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Jul 2019 20:01:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0A62F22817;
	Fri, 12 Jul 2019 18:01:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6z8Ke3r1yXeT; Fri, 12 Jul 2019 18:01:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3CA3922850;
	Fri, 12 Jul 2019 18:01:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EA5F61BF83A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2019 18:01:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E742586670
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2019 18:01:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U5hAeOG5k1Ly for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Jul 2019 18:01:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 738D786610
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2019 18:01:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 11:01:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,483,1557212400"; d="scan'208";a="157200400"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by orsmga007.jf.intel.com with ESMTP; 12 Jul 2019 11:01:26 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.232]) by
 ORSMSX106.amr.corp.intel.com ([169.254.1.52]) with mapi id 14.03.0439.000;
 Fri, 12 Jul 2019 11:01:26 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 05/19] fm10k: reduce the scope of the
 q_idx local variable
Thread-Index: AQHVNeKsLOzdWgJ5qkSBfcsQVEN4VabHS9Aw
Date: Fri, 12 Jul 2019 18:01:26 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D40ABCF@ORSMSX104.amr.corp.intel.com>
References: <20190708231236.20516-1-jacob.e.keller@intel.com>
 <20190708231236.20516-6-jacob.e.keller@intel.com>
In-Reply-To: <20190708231236.20516-6-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMTExZWZjZDUtODEwOC00YWY5LTgwYTgtOWZmOGVmMDM0NmFiIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiRTRvd2tZcjNVOCtJNU1VUEM4dGdcL2tqVzl0bFE0MnR1UVgwRVpXbndBSlVDeDZZeUsxVVJFK3djR0laYzQrMzMifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 05/19] fm10k: reduce the scope of the
 q_idx local variable
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
> Subject: [Intel-wired-lan] [PATCH 05/19] fm10k: reduce the scope of the
> q_idx local variable
> 
> Reduce the scope of the q_idx local variable in the fm10k_cache_ring_qos
> function.
> 
> This was detected by cppcheck and resolves the following style warning
> produced by that tool:
> 
> [fm10k_main.c:2016]: (style) The scope of the variable 'q_idx' can be
> reduced.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/fm10k/fm10k_main.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
