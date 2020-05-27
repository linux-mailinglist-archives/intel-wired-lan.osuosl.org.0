Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A9321E5139
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2020 00:33:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 18971888F6;
	Wed, 27 May 2020 22:33:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K55w+ebYX4-A; Wed, 27 May 2020 22:33:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2EF8C888DF;
	Wed, 27 May 2020 22:33:28 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 47EA41BF4E2
 for <intel-wired-lan@osuosl.org>; Wed, 27 May 2020 22:33:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 36D6386E3E
 for <intel-wired-lan@osuosl.org>; Wed, 27 May 2020 22:33:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AjH_bJYdIM3U for <intel-wired-lan@osuosl.org>;
 Wed, 27 May 2020 22:33:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6ABB886DA6
 for <intel-wired-lan@osuosl.org>; Wed, 27 May 2020 22:33:23 +0000 (UTC)
IronPort-SDR: nqAm2OwFflaYE9mnwI6NBqbQQm5KKg6B+CpJTfPKrcG776V8Vo9VCxbTzTYJDN+/mQ7xQxb3n+
 KJbyB1fvwlsQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2020 15:33:23 -0700
IronPort-SDR: Rhd2H55DCNWygU2cgn2QpB9eOqpx2/PloJVxmGWtyTlKK3mksKu+UX/CPxK2NzRI+QmL7OcqmN
 V6YbNoLCdIHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,442,1583222400"; d="scan'208";a="468884705"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga005.fm.intel.com with ESMTP; 27 May 2020 15:33:23 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 27 May 2020 15:33:22 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 27 May 2020 15:33:22 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 27 May 2020 15:33:22 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Wed, 27 May 2020 15:33:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cLtsEWrG3vpsmy4gwb20njcS1H0U6tT4vZ2W2toUZ3n++buGxgC4DSVZjotjolHNfJYLD+2Ioyy6VIquOoviEnB5op9izwDIGfjBvnKRxLSz1B8pefS219It4ZXDEZ4mZ100O8Etnh7mbK5EhR1gCFBb4PHh53fpJlc5hGioj54RpicGqUIVF4RjbRdVbJM0JX66ZM4qTpiVL9XJbHTYryMTZ6lBXUfj7Qw8CSfuqvCIWuzY17gPcl/HC0dPsEEm9tNy9N+1jMS6hwX6oZiU5ITJXvqdDe90RXzH1mZg4Fcf3go1eWFVp9hg5Iab8dq9rVpF1fBFXp28I899SiQXsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YSlyrq0onYn82s8MWZLQHSJDNUPfaMrEp3desbj2+WA=;
 b=H0JbkK8d9i0HaEv7pBo4Lj1p9nnbXQva7GbGxgJBIHL1iivrOXhFf0H1674NhRRVdSzpa9MkWEW4bfyoymjN6jNG+/lvT8xVG9EWaXUg2jVOZhBdf9JVvgrId8ZoYBbrVPQh4EZHGRYZSU6eNfFu/lLXg2R78gc+WdKP/na3tkytcuVCn8QJPwfupbwNkdNlflaUeZ2CKBVBz6KNrA/3gbsbrzWqp5701JaNc9TAHtPuskpzjrpF78+hvCliJGBaJehLHkQxWGRpLJMH1lLNYl78m2jjT83Z9uRTq7tTSqI5CQCt1hywOCKdpiI5zN0SlbZo3Oe1U1KVtDIXt7cSxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YSlyrq0onYn82s8MWZLQHSJDNUPfaMrEp3desbj2+WA=;
 b=M9Q1TEjqi2gwbRVVW4sqnpwGpsNR8w+kyJ2LNwAUQ6M7cImjzioSRDFRUx1DrKFM2bve0OAItkdcryhSiw0NYhcBzfeOlZXhDWo8Yhg99O+2HMluQKJQAaFxz4Jfkwf05NEIEjtq7XwYmie4BngxuYpHoMnHhEz/vnf1863uAuo=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB4362.namprd11.prod.outlook.com (2603:10b6:5:1dd::27) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3045.18; Wed, 27 May 2020 22:33:19 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.3045.018; Wed, 27 May 2020
 22:33:19 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Bowers, AndrewX" <andrewx.bowers@intel.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] Is it just me? next-queue_dev-queue Compile
 problems with ice as a module.
Thread-Index: AQHWNHWKcD9L2+8o40a6osa2MiYKtKi8hHxA
Date: Wed, 27 May 2020 22:33:19 +0000
Message-ID: <DM6PR11MB2890C986B1188158118A9407BCB10@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <BYAPR11MB2888ACE728EDA5B9B758F5E8BCB10@BYAPR11MB2888.namprd11.prod.outlook.com>
 <DM5PR11MB165925D2DF7AB44B2F2D064C8CB10@DM5PR11MB1659.namprd11.prod.outlook.com>
In-Reply-To: <DM5PR11MB165925D2DF7AB44B2F2D064C8CB10@DM5PR11MB1659.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.195]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 71191f16-49fd-4a93-7880-08d8028df4e0
x-ms-traffictypediagnostic: DM6PR11MB4362:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB4362EC017A3522EB61B09340BCB10@DM6PR11MB4362.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 04163EF38A
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3QPCl0Ng/GJehnCkys4w3x41HdaAQJ+FZ4EJ/sO1N8mFqJRnINhzzDzQlk1JKbfRX6YUmwaV6N+TvCXvcAwHqXjouQSbY+5t2jTYJK6evthLMrw3pN+sHFilG0jrOuRUPUEe28sBQWysL7G1Veu+t5Kxd9ZPL4giw6ZMR3A6DNTSLmiCbccs3MUv+2F9BjdWbhdwR4B0U1ofC2/+KQba/Jen8L5OdPpTEWoVo7zctPhSZoZKzPEumiEgOSm2VfpZxPoJEYhPKPPLiu0cx3QGb6z2CAyG6tiWUMTsIJFfRlNaxt2EPSZogSuwmO43FUHeZIsQD5ib2QN3Rj2AMGqod+7yjvYqZwq80qUFKmAo1E1CgcRc8e2soM858vJWNbBobMX4GRZedzLanRcpunoFYw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(396003)(136003)(346002)(376002)(39860400002)(6506007)(66446008)(966005)(66556008)(64756008)(53546011)(66476007)(83380400001)(26005)(7696005)(186003)(2906002)(8676002)(5660300002)(316002)(8936002)(110136005)(55016002)(66946007)(86362001)(478600001)(33656002)(76116006)(52536014)(71200400001)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: BS19NMS26KKJfizIYlQ65YDQiJlBfoICCuAU7KEnwJZ3vivWeaK6F3ghdGv1szGJjB0wSkQWOFb5wX0qP11mmtrqB49I18JtrMfgYzim4Rq14OgAu9Zq+Qm415x1wj5SvV3uwLBuAobVK+qTbkHpJom4LaFefBZR+29fGZMZVd+AIW5B5UvchADRcOKWLQIE036ZkkvHHGAjDO42yMLH5IQPGLd+MbT1Domvs138iEz0Evn6vc0VK4xqbcc7ndiOTETi+fbJQ4vRIsPg8dFZzwZ4F5PlXvnYsiCNz6az6YCztFLHBE23uHIFrowc1MpvOMj1InnvxwHIbcbOi8ZjhZdjG4JMqiV+JMkQpWeqo+cpfhwXx1YJxxyT17dh8A75DdJtwgWTAPkv5DMWjwptXdS+E17Mjz8B5T1MG+jhoc+mW1oXKo3r21lGmasmPAjTru9uaGY1fYb68kbIcz7TzaVOy8ThqCjziSgV+xd25Jxlv74FbqMImrsKxD5+y9dm
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 71191f16-49fd-4a93-7880-08d8028df4e0
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2020 22:33:19.4101 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ma8sL7IQy1nyXEqw/GoZPsTjmgBj9oURXr/K+qFo38YCR+5HEUkaIf+Yh8nuue5SLAQweXzbpGdSiHnw5o30qg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4362
X-OriginatorOrg: intel.com
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

Cool...  but sounds like we know the answer.  And umm, yeah, don't pull fresh (or be ready to re-wind LOL.)

Thanks,
Aaron

> -----Original Message-----
> From: Bowers, AndrewX <andrewx.bowers@intel.com>
> Sent: Wednesday, May 27, 2020 3:24 PM
> To: Brown, Aaron F <aaron.f.brown@intel.com>; intel-wired-lan@osuosl.org
> Subject: RE: [Intel-wired-lan] Is it just me? next-queue_dev-queue Compile
> problems with ice as a module.
> 
> Let me do a fresh pull and see if I'm getting the same thing, wasn't getting
> any errors a few days ago.
> 
> 
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> > Brown, Aaron F
> > Sent: Wednesday, May 27, 2020 3:07 PM
> > To: intel-wired-lan@osuosl.org
> > Subject: [Intel-wired-lan] Is it just me? next-queue_dev-queue Compile
> > problems with ice as a module.
> >
> > Hi all,
> >
> > I'm getting a compile failure on a fresh pull of next-queue_dev-queue if I
> try
> > to build a kernel with the ice driver included as a module.  It builds fine
> when
> > I checkout master branch and build or if I de-select CONFIG_ICE in the
> > .config.  The failure I get is as follows:
> > -----------------------------------------------
> >   AR      net/core/built-in.a
> >   AR      net/built-in.a
> > u1519:[2]/usr/src/kernels/next-queue> cat err_make.log
> > drivers/net/ethernet/intel/ice/ice_base.c: In function 'ice_vsi_cfg_rxq':
> > drivers/net/ethernet/intel/ice/ice_base.c:410:37: error: 'struct xdp_umem'
> > has no member named 'chunk_size_nohr'
> >     ring->rx_buf_len = ring->xsk_umem->chunk_size_nohr -
> >                                      ^
> > drivers/net/ethernet/intel/ice/ice_base.c:412:8: error: 'struct ice_ring' has
> > no member named 'zca'
> >     ring->zca.free = ice_zca_free;
> >         ^
> > drivers/net/ethernet/intel/ice/ice_base.c:412:21: error: 'ice_zca_free'
> > undeclared (first use in this function)
> >     ring->zca.free = ice_zca_free;
> >                      ^
> > drivers/net/ethernet/intel/ice/ice_base.c:412:21: note: each undeclared
> > identifier is reported only once for each function it appears in
> > drivers/net/ethernet/intel/ice/ice_base.c:414:9: error:
> > 'MEM_TYPE_ZERO_COPY' undeclared (first use in this function)
> >          MEM_TYPE_ZERO_COPY,
> >          ^
> > drivers/net/ethernet/intel/ice/ice_base.c:415:14: error: 'struct ice_ring'
> has
> > no member named 'zca'
> >          &ring->zca);
> >               ^
> > drivers/net/ethernet/intel/ice/ice_base.c:422:8: error: 'struct ice_ring' has
> > no member named 'zca'
> >     ring->zca.free = NULL;
> >         ^
> > drivers/net/ethernet/intel/ice/ice_base.c:445:3: error: implicit declaration
> of
> > function 'xsk_umem_has_addrs_rq' [-Werror=implicit-function-
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
> > 714c21f ice: Check UMEM FQ size when allocating bufs I am not exactly sure
> > as I had 0 steps left when I got here, but received a different message on
> > compile instead:
> > u1519:[2]/usr/src/kernels/next-queue> cat err_make.log
> > drivers/net/ethernet/intel/ice/ice_base.c: In function 'ice_setup_rx_ctx':
> > drivers/net/ethernet/intel/ice/ice_base.c:432:3: error: implicit declaration
> of
> > function 'xsk_umem_has_addrs_rq' [-Werror=implicit-function-
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
> > I'm using a relatively minimal kernel so could easily be missing something
> that
> > gets defined elsewhere.
> >
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
