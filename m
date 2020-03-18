Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 048C218A16D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2020 18:20:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ACCB6861A1;
	Wed, 18 Mar 2020 17:20:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 31AORdCRh4KU; Wed, 18 Mar 2020 17:20:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C0BA28693D;
	Wed, 18 Mar 2020 17:20:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C60EA1BF2F1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 17:20:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BE39F88293
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 17:20:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4j81qLptyYPa for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2020 17:20:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E15038819F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 17:20:51 +0000 (UTC)
IronPort-SDR: c0ubPng57j72p9h309R9bNNOUbahaGdQABipoEZ11JWRsRUwEIlhNyTFRP8ASVQ5b8TLtBknIy
 ZjO7WjEvNNLg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 10:20:51 -0700
IronPort-SDR: fifPT9ukBzFlmI7HsxLVwnl5e5EFPuH1bvrrCbLVJtxUn4dRvM/YMR/u3TelRh0apK87P7h3/p
 iMfoe2PfVv6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,568,1574150400"; d="scan'208";a="279803706"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga002.fm.intel.com with ESMTP; 18 Mar 2020 10:20:49 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 18 Mar 2020 10:20:39 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 18 Mar 2020 10:20:39 -0700
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Wed, 18 Mar 2020 10:20:39 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] i40e: trivial fixup of
 comments in i40e_xsk.c
Thread-Index: AQHV+3wNvXEbfBEs1kCDia4++aK6v6hOm8BQ
Date: Wed, 18 Mar 2020 17:20:39 +0000
Message-ID: <25812f58f1e1431580115028dfdbb0ad@intel.com>
References: <158435379870.2479973.8293720099992666964.stgit@carbon>
In-Reply-To: <158435379870.2479973.8293720099992666964.stgit@carbon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next] i40e: trivial fixup of
 comments in i40e_xsk.c
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jesper Dangaard Brouer
>Sent: Monday, March 16, 2020 3:17 AM
>To: Jesper Dangaard Brouer <brouer@redhat.com>; netdev@vger.kernel.org
>Cc: Topel, Bjorn <bjorn.topel@intel.com>; intel-wired-lan@lists.osuosl.org; Karlsson, Magnus <magnus.karlsson@intel.com>
>Subject: [Intel-wired-lan] [PATCH net-next] i40e: trivial fixup of comments in i40e_xsk.c
>
>The comment above i40e_run_xdp_zc() was clearly copy-pasted from function i40e_xsk_umem_setup, which is just above.
>
>Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
>---
> drivers/net/ethernet/intel/i40e/i40e_xsk.c |    4 +---
>1 file changed, 1 insertion(+), 3 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
