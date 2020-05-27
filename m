Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F5C1E50E9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2020 00:07:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1480F87FA4;
	Wed, 27 May 2020 22:07:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pGNLzkWDINV6; Wed, 27 May 2020 22:07:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 441EC87D54;
	Wed, 27 May 2020 22:07:01 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E5D491BF4E2
 for <intel-wired-lan@osuosl.org>; Wed, 27 May 2020 22:06:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DAB07204E6
 for <intel-wired-lan@osuosl.org>; Wed, 27 May 2020 22:06:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eVPl87qvlmj4 for <intel-wired-lan@osuosl.org>;
 Wed, 27 May 2020 22:06:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id B9460203B9
 for <intel-wired-lan@osuosl.org>; Wed, 27 May 2020 22:06:56 +0000 (UTC)
IronPort-SDR: Lhe84zGbcK7KaHSkZiVZP3pwyUzsxZrKvI/BRRGxGOAzBA4jxJ+Xx0k6Y1EuT3Tf935uCPQJvB
 bIvbhuj27b7w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2020 15:06:56 -0700
IronPort-SDR: Wv+R5TsaCd40xe14BJjx165n0euenATyelZ+fiyMMl9mSsiuTEmZiWzfzU4nLvlVcElQ9YfzCp
 kOyuQRA2ZfjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,442,1583222400"; d="scan'208";a="270617494"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga006.jf.intel.com with ESMTP; 27 May 2020 15:06:55 -0700
Received: from fmsmsx112.amr.corp.intel.com (10.18.116.6) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 27 May 2020 15:06:55 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 FMSMSX112.amr.corp.intel.com (10.18.116.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 27 May 2020 15:06:54 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Wed, 27 May 2020 15:06:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c2NrOOwZui/oU8S/32vth5eXVY+ja2JYDl6wfNDCij/SyV2eyqwHP4nJCD0Mt9/nyFfGuyLtAL41BFhTupSCk5LV3nooqRUPwSfjQLbXkNSrecf7jk1H6FlcQjwjRjDPM4Ee/3IFA5KqzbI4NQJgxe0q23ZhvPvew5IpJ2H6eSQL3PEORR6Ly2v8Ud/gFdUC82niVcWHWkEQ9OOfTbbaTVSj52cWzoBZgiLgtZxe3yycByX8UV9NuKNtHee5GBEcW4BitDF4Y7zhTFunELGBIr/a6rrkcRCeXRlaYX1wMsLzKhSHyQ7tcN8OwTQpPJXF0qPtwEnk9t/qhwKnKze0nA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xK6P/59X6tMSr/qpqSDR8yIUpj8mi/CLgIGZsbPinTI=;
 b=PZmkCdWYold5acryP6NP+Kl4VKqTDEhP7YVCT9nvKhXqqqODZswMZnQxVOrovYAZetmFDM79Vy8eN5cogqX39iJrqmm6AQCDTbpztAoF2iEvyhPAFpPHuY4wGGbqLO7OyZfTORc9MN0qmhExBNDuc03YKaUtG1c38LByD0ois1NtQSE7NaZtH0virh+JVIwqT0scIS9lyOw5LwIFnsKPn1HXH5OH7LmZtlJurZH+Cu3C8vkleSe3guQI1NYJWcOz+4WpS0Sx1+ZJgEOE25rji+hSS008zfLUcVbuPoicB6j7FqtZNdrwW+ddn3z5CbeTtFh9fd0ZN/8UsLjlH+N9yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xK6P/59X6tMSr/qpqSDR8yIUpj8mi/CLgIGZsbPinTI=;
 b=zWpgCmRAgNvvIaLmDmOZgEmL0Qv40p5cHAZltbhl2KVMKjmFKt1Y8h2vErLa/AVOHYC44g59WLpSwUQfXTCIwrb6ItR7wxzQg6ZLii2r8s/escM/I1qrcJQtgBTWskR5f/nDIdnwQPwixL+e+14oTalOcIhG58s+BFK/skXGuIs=
Received: from BYAPR11MB2888.namprd11.prod.outlook.com (2603:10b6:a03:8c::19)
 by BYAPR11MB3448.namprd11.prod.outlook.com (2603:10b6:a03:76::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19; Wed, 27 May
 2020 22:06:50 +0000
Received: from BYAPR11MB2888.namprd11.prod.outlook.com
 ([fe80::518:891f:ac48:de55]) by BYAPR11MB2888.namprd11.prod.outlook.com
 ([fe80::518:891f:ac48:de55%7]) with mapi id 15.20.3021.029; Wed, 27 May 2020
 22:06:50 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: Is it just me?  next-queue_dev-queue Compile problems with ice
 as a module.
Thread-Index: AdY0b7kTQuC96jFPR6yw9RrJSnQF7Q==
Date: Wed, 27 May 2020 22:06:50 +0000
Message-ID: <BYAPR11MB2888ACE728EDA5B9B758F5E8BCB10@BYAPR11MB2888.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: osuosl.org; dkim=none (message not signed)
 header.d=none;osuosl.org; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.195]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ec9f82b9-9bfc-4b7f-8d4a-08d8028a41fb
x-ms-traffictypediagnostic: BYAPR11MB3448:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB3448277F03F7ABBAED718C42BCB10@BYAPR11MB3448.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 04163EF38A
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Od9Fsi8DX+eZJHYibhTUNLvOpgsWWbh95Jpx73KkdvuGzVpNR0QrCB5v1l9BtjqHxgTIU6W+Bn+6gRY5wL3PI0APSnzonzzJTPyZhn2kBM3+reo1v9MXnMpYDhEUOV6cuz0nNtpcrD7YulX1S7WgdmbmwEAcU3Zar+JnSEVoE6IRoVefpRmW0Mj3//M6jEuA7T7JkTJvxiDik4zLzEaTYSrDdo3NjyQfR4ZaE+rs7JYqwHfpKNZdeddO2eIZOyZ0S8hJwWLrf/ogOLY9O5XpbMz5/cdiBZ8yNbAV1f6rs6AaT/PXKCIg3x+tyWruMZ2DUh2wvsMKq4ivPzvo5DFLLw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2888.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(6506007)(83380400001)(71200400001)(4326008)(66446008)(66556008)(66476007)(5660300002)(64756008)(26005)(33656002)(66946007)(107886003)(52536014)(76116006)(186003)(8936002)(86362001)(9686003)(7696005)(2906002)(498600001)(8676002)(55016002)(6916009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: MCxX1lb9VK3/Gb8j5C35vuwPFwDQ+WPFNp1LHP4q/rvBdYXwnwSOl5YkxrY8Hn2ZfXY8cSiDK0BTD/2vXmZ7OthMC7lbMqA/aQI4LxaDjyl/IkR443xOPjWT244QbZ1jG5bk3yc+f9RAwF4e5UZ7f10DUg2ti1zfK2ua0wG1BpbjlavpJOk0NaVQzin71PSArbe8LZe7UTTTEf0Vb/6EBdVXmMw8D1QkNYJrkJOs2wmeaKyah1D3svvX6m6NCB7e8gOEyXLqvJmy1Myq//AahBnpnu939AvqJdTTSji24iQ27jvY+41QDkQyQpjShGxegFWx5zgKudHM7YI5VKjt4YXFqC3abDqf0teUVU+gUNsZ8+pNRZPSkDQoBuFjD0K8ahCVn46geGOiIf1siiv12CHTTPs56xChEiD1EQs1HxNHZaoaSirjIcV6AHH+W73Po7aiAgtaIJsqTKBBIzw8+ofDjakQ6eDcs6PPbsFpeMOfpR/IKBvDV3s7d75cOCKh
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ec9f82b9-9bfc-4b7f-8d4a-08d8028a41fb
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2020 22:06:50.7423 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xy8gWhk+3vUkvMDc25YXFSfeybKtxRvr20ZZIGoNDsUY2FKmzGCX1zN3fOf1nQJh6+YjntXau3etVh4Z3lUDvw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3448
X-OriginatorOrg: intel.com
Subject: [Intel-wired-lan] Is it just me? next-queue_dev-queue Compile
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

Hi all,

I'm getting a compile failure on a fresh pull of next-queue_dev-queue if I try to build a kernel with the ice driver included as a module.  It builds fine when I checkout master branch and build or if I de-select CONFIG_ICE in the .config.  The failure I get is as follows:
-----------------------------------------------
  AR      net/core/built-in.a
  AR      net/built-in.a
u1519:[2]/usr/src/kernels/next-queue> cat err_make.log
drivers/net/ethernet/intel/ice/ice_base.c: In function 'ice_vsi_cfg_rxq':
drivers/net/ethernet/intel/ice/ice_base.c:410:37: error: 'struct xdp_umem' has no member named 'chunk_size_nohr'
    ring->rx_buf_len = ring->xsk_umem->chunk_size_nohr -
                                     ^
drivers/net/ethernet/intel/ice/ice_base.c:412:8: error: 'struct ice_ring' has no member named 'zca'
    ring->zca.free = ice_zca_free;
        ^
drivers/net/ethernet/intel/ice/ice_base.c:412:21: error: 'ice_zca_free' undeclared (first use in this function)
    ring->zca.free = ice_zca_free;
                     ^
drivers/net/ethernet/intel/ice/ice_base.c:412:21: note: each undeclared identifier is reported only once for each function it appears in
drivers/net/ethernet/intel/ice/ice_base.c:414:9: error: 'MEM_TYPE_ZERO_COPY' undeclared (first use in this function)
         MEM_TYPE_ZERO_COPY,
         ^
drivers/net/ethernet/intel/ice/ice_base.c:415:14: error: 'struct ice_ring' has no member named 'zca'
         &ring->zca);
              ^
drivers/net/ethernet/intel/ice/ice_base.c:422:8: error: 'struct ice_ring' has no member named 'zca'
    ring->zca.free = NULL;
        ^
drivers/net/ethernet/intel/ice/ice_base.c:445:3: error: implicit declaration of function 'xsk_umem_has_addrs_rq' [-Werror=implicit-function-declaration]
   if (!xsk_umem_has_addrs_rq(ring->xsk_umem, num_bufs)) {
   ^
cc1: some warnings being treated as errors
make[6]: *** [drivers/net/ethernet/intel/ice/ice_base.o] Error 1
make[6]: *** Waiting for unfinished jobs....
make[5]: *** [drivers/net/ethernet/intel/ice] Error 2
make[4]: *** [drivers/net/ethernet/intel] Error 2
make[3]: *** [drivers/net/ethernet] Error 2
make[2]: *** [drivers/net] Error 2
make[1]: *** [drivers] Error 2
make[1]: *** Waiting for unfinished jobs....
make: *** [sub-make] Error 2
u1519:[2]/usr/src/kernels/next-queue>
-----------------------------------------------
I bisected it down to this patch or one on either side: 
714c21f ice: Check UMEM FQ size when allocating bufs
I am not exactly sure as I had 0 steps left when I got here, but received a different message on compile instead:
u1519:[2]/usr/src/kernels/next-queue> cat err_make.log
drivers/net/ethernet/intel/ice/ice_base.c: In function 'ice_setup_rx_ctx':
drivers/net/ethernet/intel/ice/ice_base.c:432:3: error: implicit declaration of function 'xsk_umem_has_addrs_rq' [-Werror=implicit-function-declaration]
   if (!xsk_umem_has_addrs_rq(ring->xsk_umem, num_bufs)) {
   ^
cc1: some warnings being treated as errors
make[6]: *** [drivers/net/ethernet/intel/ice/ice_base.o] Error 1
make[5]: *** [drivers/net/ethernet/intel/ice] Error 2
make[4]: *** [drivers/net/ethernet/intel] Error 2
make[3]: *** [drivers/net/ethernet] Error 2
make[2]: *** [drivers/net] Error 2
make[1]: *** [drivers] Error 2
make: *** [sub-make] Error 2
u1519:[2]/usr/src/kernels/next-queue>

I'm using a relatively minimal kernel so could easily be missing something that gets defined elsewhere.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
