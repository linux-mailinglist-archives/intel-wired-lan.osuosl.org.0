Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E111E5174
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2020 00:47:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D2CAD88A74;
	Wed, 27 May 2020 22:47:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B9Rphbj-9QxZ; Wed, 27 May 2020 22:47:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 199A5888FB;
	Wed, 27 May 2020 22:47:36 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E71CB1BF4E2
 for <intel-wired-lan@osuosl.org>; Wed, 27 May 2020 22:47:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D944488057
 for <intel-wired-lan@osuosl.org>; Wed, 27 May 2020 22:47:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g8WsxWHkr9VZ for <intel-wired-lan@osuosl.org>;
 Wed, 27 May 2020 22:47:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F01D487FEC
 for <intel-wired-lan@osuosl.org>; Wed, 27 May 2020 22:47:32 +0000 (UTC)
IronPort-SDR: BRvZG3KQB53WjbTSZntxH7ArWKzJ14M1rD53ajic+Gv8G1wiuh54tTeZXbGOwTecxpX6b3osQR
 sRfWUlSaA3uQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2020 15:47:32 -0700
IronPort-SDR: 4kNPaiSoxI6EK3DKJpuDx4cfPlUvT4Q/r9YEDWHV4itk76t9RGXgB56dMSkK26fFlbhMC+Uq1E
 lHrXiPiFL4XQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,442,1583222400"; d="scan'208";a="442705568"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by orsmga005.jf.intel.com with ESMTP; 27 May 2020 15:47:32 -0700
Received: from orsmsx154.amr.corp.intel.com (10.22.226.12) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 27 May 2020 15:47:32 -0700
Received: from orsmsx112.amr.corp.intel.com ([169.254.3.61]) by
 ORSMSX154.amr.corp.intel.com ([169.254.11.51]) with mapi id 14.03.0439.000;
 Wed, 27 May 2020 15:47:31 -0700
From: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>
To: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>, "Brown, Aaron F"
 <aaron.f.brown@intel.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] Is it just me? next-queue_dev-queue Compile
 problems with ice as a module.
Thread-Index: AQHWNHZVgaR4tYKKCUWPhMbOQLsdxKi8iHAA
Date: Wed, 27 May 2020 22:47:31 +0000
Message-ID: <61CC2BC414934749BD9F5BF3D5D94044986DBEA0@ORSMSX112.amr.corp.intel.com>
References: <BYAPR11MB2888ACE728EDA5B9B758F5E8BCB10@BYAPR11MB2888.namprd11.prod.outlook.com>
 <61CC2BC414934749BD9F5BF3D5D94044986DBDD0@ORSMSX112.amr.corp.intel.com>
In-Reply-To: <61CC2BC414934749BD9F5BF3D5D94044986DBDD0@ORSMSX112.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] Is it just me? next-queue_dev-queue Compile
 problems with ice as a module.
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

All is fixed up now...  I had to drop patch 9 of S44 of the ice driver, there was no easy solution with the recent kernel changes.

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Kirsher, Jeffrey T
> Sent: Wednesday, May 27, 2020 15:30
> To: Brown, Aaron F <aaron.f.brown@intel.com>; intel-wired-lan@osuosl.org
> Subject: Re: [Intel-wired-lan] Is it just me? next-queue_dev-queue Compile
> problems with ice as a module.
> 
> Nope it is not just you.  I have been working on fixing it since last night.  The
> XDP changes from Bjorn is what caused all these issues.  I just have it all fixed
> up here in the next hour.
> 
> > -----Original Message-----
> > From: Brown, Aaron F <aaron.f.brown@intel.com>
> > Sent: Wednesday, May 27, 2020 15:07
> > To: intel-wired-lan@osuosl.org
> > Cc: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>
> > Subject: Is it just me? next-queue_dev-queue Compile problems with ice
> > as a module.
> >
> > Hi all,
> >
> > I'm getting a compile failure on a fresh pull of next-queue_dev-queue
> > if I try to build a kernel with the ice driver included as a module.
> > It builds fine when I checkout master branch and build or if I de-select
> CONFIG_ICE in the .config.
> > The failure I get is as follows:
> > -----------------------------------------------
> >   AR      net/core/built-in.a
> >   AR      net/built-in.a
> > u1519:[2]/usr/src/kernels/next-queue> cat err_make.log
> > drivers/net/ethernet/intel/ice/ice_base.c: In function 'ice_vsi_cfg_rxq':
> > drivers/net/ethernet/intel/ice/ice_base.c:410:37: error: 'struct
> > xdp_umem' has no member named 'chunk_size_nohr'
> >     ring->rx_buf_len = ring->xsk_umem->chunk_size_nohr -
> >                                      ^
> > drivers/net/ethernet/intel/ice/ice_base.c:412:8: error: 'struct
> > ice_ring' has no member named 'zca'
> >     ring->zca.free = ice_zca_free;
> >         ^
> > drivers/net/ethernet/intel/ice/ice_base.c:412:21: error:
> > 'ice_zca_free' undeclared (first use in this function)
> >     ring->zca.free = ice_zca_free;
> >                      ^
> > drivers/net/ethernet/intel/ice/ice_base.c:412:21: note: each
> > undeclared identifier is reported only once for each function it
> > appears in
> > drivers/net/ethernet/intel/ice/ice_base.c:414:9: error:
> 'MEM_TYPE_ZERO_COPY'
> > undeclared (first use in this function)
> >          MEM_TYPE_ZERO_COPY,
> >          ^
> > drivers/net/ethernet/intel/ice/ice_base.c:415:14: error: 'struct
> > ice_ring' has no member named 'zca'
> >          &ring->zca);
> >               ^
> > drivers/net/ethernet/intel/ice/ice_base.c:422:8: error: 'struct
> > ice_ring' has no member named 'zca'
> >     ring->zca.free = NULL;
> >         ^
> > drivers/net/ethernet/intel/ice/ice_base.c:445:3: error: implicit
> > declaration of function 'xsk_umem_has_addrs_rq' [-Werror=implicit-function-
> declaration]
> >    if (!xsk_umem_has_addrs_rq(ring->xsk_umem, num_bufs)) {
> >    ^
> > cc1: some warnings being treated as errors
> > make[6]: *** [drivers/net/ethernet/intel/ice/ice_base.o] Error 1
> > make[6]: *** Waiting for unfinished jobs....
> > make[5]: *** [drivers/net/ethernet/intel/ice] Error 2
> > make[4]: *** [drivers/net/ethernet/intel] Error 2
> > make[3]: *** [drivers/net/ethernet] Error 2
> > make[2]: *** [drivers/net] Error 2
> > make[1]: *** [drivers] Error 2
> > make[1]: *** Waiting for unfinished jobs....
> > make: *** [sub-make] Error 2
> > u1519:[2]/usr/src/kernels/next-queue>
> > -----------------------------------------------
> > I bisected it down to this patch or one on either side:
> > 714c21f ice: Check UMEM FQ size when allocating bufs I am not exactly
> > sure as I had 0 steps left when I got here, but received a different
> > message on compile
> > instead:
> > u1519:[2]/usr/src/kernels/next-queue> cat err_make.log
> > drivers/net/ethernet/intel/ice/ice_base.c: In function 'ice_setup_rx_ctx':
> > drivers/net/ethernet/intel/ice/ice_base.c:432:3: error: implicit
> > declaration of function 'xsk_umem_has_addrs_rq' [-Werror=implicit-function-
> declaration]
> >    if (!xsk_umem_has_addrs_rq(ring->xsk_umem, num_bufs)) {
> >    ^
> > cc1: some warnings being treated as errors
> > make[6]: *** [drivers/net/ethernet/intel/ice/ice_base.o] Error 1
> > make[5]: *** [drivers/net/ethernet/intel/ice] Error 2
> > make[4]: *** [drivers/net/ethernet/intel] Error 2
> > make[3]: *** [drivers/net/ethernet] Error 2
> > make[2]: *** [drivers/net] Error 2
> > make[1]: *** [drivers] Error 2
> > make: *** [sub-make] Error 2
> > u1519:[2]/usr/src/kernels/next-queue>
> >
> > I'm using a relatively minimal kernel so could easily be missing
> > something that gets defined elsewhere.
> >
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
