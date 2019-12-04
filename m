Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C690C1134A4
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Dec 2019 19:26:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7327086F63;
	Wed,  4 Dec 2019 18:26:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vaZsEIAuDF8Q; Wed,  4 Dec 2019 18:26:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AE2EB86F60;
	Wed,  4 Dec 2019 18:25:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CC4BD1BF25B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2019 18:25:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C756487DEB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2019 18:25:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KuAyfgZ8RCou for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Dec 2019 18:25:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 03E4C87DE1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2019 18:25:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Dec 2019 10:25:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,278,1571727600"; d="scan'208";a="242942985"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by fmsmga002.fm.intel.com with ESMTP; 04 Dec 2019 10:25:54 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 4 Dec 2019 10:25:54 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 4 Dec 2019 10:25:53 -0800
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Wed, 4 Dec 2019 10:25:53 -0800
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] ixgbe: Fix calculation of queue with
 VFs and flow director on interface flap
Thread-Index: AQHVqT+sRBWDmorGrk+LGmHTdjVjZ6eqTcLQ
Date: Wed, 4 Dec 2019 18:25:53 +0000
Message-ID: <da48f1f5ff794532b951591f5406ca21@intel.com>
References: <20191127090355.27708-1-cambda@linux.alibaba.com>
In-Reply-To: <20191127090355.27708-1-cambda@linux.alibaba.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNjhiY2Y5ZTUtYjg3NS00ZjJiLWE5ODEtYzk0ZTVlOWMwODVhIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoibzU4bWVHWUxGeEpCbkdONHNiNnVHQmd1WGJXanM1eGVqaFNiNlRsTXlRdmEwWlpwdEJjdWpRVUZLMHpLYVIxOSJ9
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Fix calculation of queue with
 VFs and flow director on interface flap
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
> Behalf Of Cambda Zhu
> Sent: Wednesday, November 27, 2019 1:04 AM
> To: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>
> Cc: Cambda Zhu <cambda@linux.alibaba.com>; Tyl, RadoslawX
> <radoslawx.tyl@intel.com>; netdev@vger.kernel.org; Joseph Qi
> <joseph.qi@linux.alibaba.com>; intel-wired-lan@lists.osuosl.org; David S.
> Miller <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH] ixgbe: Fix calculation of queue with VFs
> and flow director on interface flap
> 
> This patch fixes the calculation of queue when we restore flow director filters
> after resetting adapter. In ixgbe_fdir_filter_restore(), filter's vf may be zero
> which makes the queue outside of the rx_ring array.
> 
> The calculation is changed to the same as ixgbe_add_ethtool_fdir_entry().
> 
> Signed-off-by: Cambda Zhu <cambda@linux.alibaba.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 37
> +++++++++++++++++++--------
>  1 file changed, 27 insertions(+), 10 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
