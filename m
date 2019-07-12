Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB0FA674ED
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Jul 2019 20:02:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5B5EF8836A;
	Fri, 12 Jul 2019 18:02:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9pFXff1KrcAn; Fri, 12 Jul 2019 18:02:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id ECDFD88367;
	Fri, 12 Jul 2019 18:02:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7160C1BF83A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2019 18:02:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6B74C87700
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2019 18:02:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l3iksAVc8Wip for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Jul 2019 18:02:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 92F878601B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2019 18:02:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 11:02:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,483,1557212400"; d="scan'208";a="193821407"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by fmsmga002.fm.intel.com with ESMTP; 12 Jul 2019 11:02:52 -0700
Received: from orsmsx156.amr.corp.intel.com (10.22.240.22) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 12 Jul 2019 11:02:52 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.232]) by
 ORSMSX156.amr.corp.intel.com ([169.254.8.199]) with mapi id 14.03.0439.000;
 Fri, 12 Jul 2019 11:02:51 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 08/19] fm10k: reduce the scope of the
 local i variable
Thread-Index: AQHVNeKwoi4GYSI8sU6o9czjMViE1qbHTDYA
Date: Fri, 12 Jul 2019 18:02:51 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D40ABFE@ORSMSX104.amr.corp.intel.com>
References: <20190708231236.20516-1-jacob.e.keller@intel.com>
 <20190708231236.20516-9-jacob.e.keller@intel.com>
In-Reply-To: <20190708231236.20516-9-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMjRjODBhMTgtMjM1Ny00NjA0LWE5YmYtOTVkNTllZjdiZTM3IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiYkN0eFYreGtQOFNKb0N1M3c3bCttRlhNTXZrd1BnWHgzVTR5amNRODVPMUZtOEZzaDlLazhtbmpKa0JvOVlEayJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 08/19] fm10k: reduce the scope of the
 local i variable
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
> Subject: [Intel-wired-lan] [PATCH 08/19] fm10k: reduce the scope of the local
> i variable
> 
> Reduce the scope of the local loop variable in the
> fm10k_check_hang_subtask function.
> 
> This was detected by cppcheck and resolves the following warning produced
> by that tool:
> 
> [driver/fm10k_pci.c:852]: (style) The scope of the variable 'i' can be reduced.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/fm10k/fm10k_pci.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
