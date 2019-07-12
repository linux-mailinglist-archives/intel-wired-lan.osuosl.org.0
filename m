Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15FF067506
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Jul 2019 20:11:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 58E19869D8;
	Fri, 12 Jul 2019 18:11:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 21Y2EHcDc+oU; Fri, 12 Jul 2019 18:11:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BEC5585AE2;
	Fri, 12 Jul 2019 18:11:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BD81A1BF41E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2019 18:11:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B996F83597
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2019 18:11:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eyDzY4h-vCMW for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Jul 2019 18:11:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7602783167
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2019 18:11:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 11:08:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,483,1557212400"; d="scan'208";a="341767788"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
 by orsmga005.jf.intel.com with ESMTP; 12 Jul 2019 11:08:02 -0700
Received: from orsmsx154.amr.corp.intel.com (10.22.226.12) by
 ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 12 Jul 2019 11:08:02 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.232]) by
 ORSMSX154.amr.corp.intel.com ([169.254.11.96]) with mapi id 14.03.0439.000;
 Fri, 12 Jul 2019 11:08:02 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 18/19] fm10k: convert
 NON_Q_VECTORS(hw) into NON_Q_VECTORS
Thread-Index: AQHVNeKznlPikbAbwk2nlnA0Q05HdqbHTagQ
Date: Fri, 12 Jul 2019 18:08:01 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D40AC9B@ORSMSX104.amr.corp.intel.com>
References: <20190708231236.20516-1-jacob.e.keller@intel.com>
 <20190708231236.20516-19-jacob.e.keller@intel.com>
In-Reply-To: <20190708231236.20516-19-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNTRhNDYzYWMtZWNjYi00MWZjLWJhM2EtM2U4NjUwODRmY2NhIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiYlgxOEtIbnRDOFpSXC91NTdLYlFOXC9OczVPWWFQMFVLXC9ka2V5N1YwUEt0dDJ3NEdxVjd6aitoVlwvVENocEF4NGgifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 18/19] fm10k: convert
 NON_Q_VECTORS(hw) into NON_Q_VECTORS
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
> Sent: Monday, July 8, 2019 4:13 PM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [PATCH 18/19] fm10k: convert
> NON_Q_VECTORS(hw) into NON_Q_VECTORS
> 
> The driver currently uses a macro to decide whether we should use
> NON_Q_VECTORS_PF or NON_Q_VECTORS_VF.
> 
> However, we also define NON_Q_VECTORS_VF to the same value as
> NON_Q_VECTORS_PF. This means that the macro NON_Q_VECTORS(hw) will
> always return the same value.
> 
> Let's just remove this macro, and replace it directly with an enum value on
> the enum non_q_vectors.
> 
> This was detected by cppcheck and fixes the following warnings when
> building with BUILD=KERNEL
> 
> [fm10k_ethtool.c:1123]: (style) Same value in both branches of ternary
> operator.
> 
> [fm10k_ethtool.c:1142]: (style) Same value in both branches of ternary
> operator.
> 
> [fm10k_main.c:1826]: (style) Same value in both branches of ternary
> operator.
> 
> [fm10k_main.c:1849]: (style) Same value in both branches of ternary
> operator.
> 
> [fm10k_main.c:1858]: (style) Same value in both branches of ternary
> operator.
> 
> [fm10k_pci.c:901]: (style) Same value in both branches of ternary operator.
> 
> [fm10k_pci.c:1040]: (style) Same value in both branches of ternary operator.
> 
> [fm10k_pci.c:1726]: (style) Same value in both branches of ternary operator.
> 
> [fm10k_pci.c:1763]: (style) Same value in both branches of ternary operator.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/fm10k/fm10k.h         | 10 +++-------
>  drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c |  6 ++----
>  drivers/net/ethernet/intel/fm10k/fm10k_main.c    |  4 ++--
>  drivers/net/ethernet/intel/fm10k/fm10k_pci.c     |  9 ++++-----
>  4 files changed, 11 insertions(+), 18 deletions(-)


Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
