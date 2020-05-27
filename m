Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 888171E512C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2020 00:29:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4396D87FC2;
	Wed, 27 May 2020 22:29:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RR7bhWNGeYW8; Wed, 27 May 2020 22:29:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0063F85DBB;
	Wed, 27 May 2020 22:29:40 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3CB9E1BF4E2
 for <intel-wired-lan@osuosl.org>; Wed, 27 May 2020 22:29:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 383C286B96
 for <intel-wired-lan@osuosl.org>; Wed, 27 May 2020 22:29:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zqPObo1ZLM5c for <intel-wired-lan@osuosl.org>;
 Wed, 27 May 2020 22:29:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 511A786B81
 for <intel-wired-lan@osuosl.org>; Wed, 27 May 2020 22:29:38 +0000 (UTC)
IronPort-SDR: 2E7kn7JRklmnFp/EbOHfx6f8Txok2YmmwMVJuLZ58423/u4JenUiyTxd0601jCZX0RVCLvP/8u
 4YeIVy6OmYCw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2020 15:29:37 -0700
IronPort-SDR: byJ1DIIF5foyJa5xaljHhV7O/tYRjldzS3Vx8enCohE5hja50nXdmQC/3Kc4xVBerTYwuRGvOg
 cbIUSKRexBww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,442,1583222400"; d="scan'208";a="310714663"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by FMSMGA003.fm.intel.com with ESMTP; 27 May 2020 15:29:36 -0700
Received: from orsmsx161.amr.corp.intel.com (10.22.240.84) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 27 May 2020 15:29:36 -0700
Received: from orsmsx112.amr.corp.intel.com ([169.254.3.61]) by
 ORSMSX161.amr.corp.intel.com ([169.254.4.154]) with mapi id 14.03.0439.000;
 Wed, 27 May 2020 15:29:36 -0700
From: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>
To: "Brown, Aaron F" <aaron.f.brown@intel.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
Thread-Topic: Is it just me?  next-queue_dev-queue Compile problems with ice
 as a module.
Thread-Index: AdY0b7kTQuC96jFPR6yw9RrJSnQF7QABnHVg
Date: Wed, 27 May 2020 22:29:35 +0000
Message-ID: <61CC2BC414934749BD9F5BF3D5D94044986DBDD0@ORSMSX112.amr.corp.intel.com>
References: <BYAPR11MB2888ACE728EDA5B9B758F5E8BCB10@BYAPR11MB2888.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB2888ACE728EDA5B9B758F5E8BCB10@BYAPR11MB2888.namprd11.prod.outlook.com>
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

Nope it is not just you.  I have been working on fixing it since last night.  The XDP changes from Bjorn is what caused all these issues.  I just have it all fixed up here in the next hour.

> -----Original Message-----
> From: Brown, Aaron F <aaron.f.brown@intel.com>
> Sent: Wednesday, May 27, 2020 15:07
> To: intel-wired-lan@osuosl.org
> Cc: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>
> Subject: Is it just me? next-queue_dev-queue Compile problems with ice as a
> module.
> 
> Hi all,
> 
> I'm getting a compile failure on a fresh pull of next-queue_dev-queue if I try to
> build a kernel with the ice driver included as a module.  It builds fine when I
> checkout master branch and build or if I de-select CONFIG_ICE in the .config.
> The failure I get is as follows:
> -----------------------------------------------
>   AR      net/core/built-in.a
>   AR      net/built-in.a
> u1519:[2]/usr/src/kernels/next-queue> cat err_make.log
> drivers/net/ethernet/intel/ice/ice_base.c: In function 'ice_vsi_cfg_rxq':
> drivers/net/ethernet/intel/ice/ice_base.c:410:37: error: 'struct xdp_umem' has
> no member named 'chunk_size_nohr'
>     ring->rx_buf_len = ring->xsk_umem->chunk_size_nohr -
>                                      ^
> drivers/net/ethernet/intel/ice/ice_base.c:412:8: error: 'struct ice_ring' has no
> member named 'zca'
>     ring->zca.free = ice_zca_free;
>         ^
> drivers/net/ethernet/intel/ice/ice_base.c:412:21: error: 'ice_zca_free' undeclared
> (first use in this function)
>     ring->zca.free = ice_zca_free;
>                      ^
> drivers/net/ethernet/intel/ice/ice_base.c:412:21: note: each undeclared identifier
> is reported only once for each function it appears in
> drivers/net/ethernet/intel/ice/ice_base.c:414:9: error: 'MEM_TYPE_ZERO_COPY'
> undeclared (first use in this function)
>          MEM_TYPE_ZERO_COPY,
>          ^
> drivers/net/ethernet/intel/ice/ice_base.c:415:14: error: 'struct ice_ring' has no
> member named 'zca'
>          &ring->zca);
>               ^
> drivers/net/ethernet/intel/ice/ice_base.c:422:8: error: 'struct ice_ring' has no
> member named 'zca'
>     ring->zca.free = NULL;
>         ^
> drivers/net/ethernet/intel/ice/ice_base.c:445:3: error: implicit declaration of
> function 'xsk_umem_has_addrs_rq' [-Werror=implicit-function-declaration]
>    if (!xsk_umem_has_addrs_rq(ring->xsk_umem, num_bufs)) {
>    ^
> cc1: some warnings being treated as errors
> make[6]: *** [drivers/net/ethernet/intel/ice/ice_base.o] Error 1
> make[6]: *** Waiting for unfinished jobs....
> make[5]: *** [drivers/net/ethernet/intel/ice] Error 2
> make[4]: *** [drivers/net/ethernet/intel] Error 2
> make[3]: *** [drivers/net/ethernet] Error 2
> make[2]: *** [drivers/net] Error 2
> make[1]: *** [drivers] Error 2
> make[1]: *** Waiting for unfinished jobs....
> make: *** [sub-make] Error 2
> u1519:[2]/usr/src/kernels/next-queue>
> -----------------------------------------------
> I bisected it down to this patch or one on either side:
> 714c21f ice: Check UMEM FQ size when allocating bufs I am not exactly sure as
> I had 0 steps left when I got here, but received a different message on compile
> instead:
> u1519:[2]/usr/src/kernels/next-queue> cat err_make.log
> drivers/net/ethernet/intel/ice/ice_base.c: In function 'ice_setup_rx_ctx':
> drivers/net/ethernet/intel/ice/ice_base.c:432:3: error: implicit declaration of
> function 'xsk_umem_has_addrs_rq' [-Werror=implicit-function-declaration]
>    if (!xsk_umem_has_addrs_rq(ring->xsk_umem, num_bufs)) {
>    ^
> cc1: some warnings being treated as errors
> make[6]: *** [drivers/net/ethernet/intel/ice/ice_base.o] Error 1
> make[5]: *** [drivers/net/ethernet/intel/ice] Error 2
> make[4]: *** [drivers/net/ethernet/intel] Error 2
> make[3]: *** [drivers/net/ethernet] Error 2
> make[2]: *** [drivers/net] Error 2
> make[1]: *** [drivers] Error 2
> make: *** [sub-make] Error 2
> u1519:[2]/usr/src/kernels/next-queue>
> 
> I'm using a relatively minimal kernel so could easily be missing something that
> gets defined elsewhere.
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
