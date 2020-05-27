Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 30BE91E5126
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2020 00:24:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D1D8786E96;
	Wed, 27 May 2020 22:24:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3BEk8mmSx3ht; Wed, 27 May 2020 22:24:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B6E5D86EB5;
	Wed, 27 May 2020 22:24:23 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A66731BF4E2
 for <intel-wired-lan@osuosl.org>; Wed, 27 May 2020 22:24:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A0F4986E40
 for <intel-wired-lan@osuosl.org>; Wed, 27 May 2020 22:24:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LoMxV0OBwcXT for <intel-wired-lan@osuosl.org>;
 Wed, 27 May 2020 22:24:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id ADD4486DA6
 for <intel-wired-lan@osuosl.org>; Wed, 27 May 2020 22:24:20 +0000 (UTC)
IronPort-SDR: Cr1HRbOwS4x7ruhuVM0M8j4L1Mql4DItrE9r2JxzFYqc0PkTeemPQ98VNmq5AeiCcCVHOm9OLX
 iIUcwy1eIFUA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2020 15:24:20 -0700
IronPort-SDR: LZxL3/OCPYFuTW0D8lIDcD0lc3pmBmyKG0rx/R7znyRiYAnGNV9HV1JKdMTO30leTbG0pFJll9
 XK/L1SiLlKDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,442,1583222400"; d="scan'208";a="302608049"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga008.jf.intel.com with ESMTP; 27 May 2020 15:24:19 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 27 May 2020 15:24:19 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Wed, 27 May 2020 15:24:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IRqLe4h7zeVjDNs9y4OURzOBke4UR6GTWwkqcoGB5nnTngBhhg0VTRAjzqBAo04HmKG1KCk7mWFEoW7EbQT4LUr8GUSprZ4SjyZ44F4+9L9UbkGbQZ/ONMFdYDtDjX8Z7fIeDClsocuS9v3cRqcuNg5oAtNG++cEHsFUVnUCEGNlW2QS+/bjfqifweKq6lpboOCIAGNlIr9LfTJF9tqvEqPxM9h3MyJBrLZTwgcufItSGyvmvZVuvAxiAla7DEo8MZep43Og1SkN7TmOEGKUWBD+Ftf20vwxLMs8Gn/Fgyek2+Qi5E8EiS7SwDW7gFm5+a2hWt6KcbB8AfGL/yhtiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M+FRlhKTh0NM8BfN3bV8BGUWmvMLNZ8edk9fIY1wenM=;
 b=T/kmAqYH2u0YUrKCpYVuQ1ghdS7DVrP8tMfC7jEtQEENw985wecZksS0Q5L0484J7WZH2uqGkvI25XO3Dzr2bdlh76aNJ1w2/sZTGxx3irimL8XA4VzdkQ0xjal4WEwhTiFKANMQdxYXQ9t5WUhD0JqM9dhyoGjl3aCbDC7n3p/pOasFGTgNVD2f4a5LBVwiy3jBHYNt704jxfLQcLr8x0OVzLv65J3t7j+O8r7rL2gZ1JIIAv88qHx9SHeoCP94cMYeKce42gg8Dbrx91dkMMMVRvosA9dxQAt0cOi5XL0hMbpXtOSMN4+yyqssC6e8mxNfdyna7hdPSPaASw1D7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M+FRlhKTh0NM8BfN3bV8BGUWmvMLNZ8edk9fIY1wenM=;
 b=wPXQ8oyjveW3HhfwRGeh+QlU1AT1XpgEUO2esUcoEiHW2Su3nlbxBxE4a76Gg90f/19ms/VgZtZ0KQrVm4WZ3Mprw9tRwfyCNJelqbMdi47AkEoiHP0nQS8VmzYKbAp4/WGUCHvh9JD09dOmGMMSYnp+JrVfDBWiwQCIMIKep9M=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1500.namprd11.prod.outlook.com (2603:10b6:4:b::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.23; Wed, 27 May 2020 22:24:08 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3045.018; Wed, 27 May 2020
 22:24:08 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "Brown, Aaron F" <aaron.f.brown@intel.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] Is it just me? next-queue_dev-queue Compile
 problems with ice as a module.
Thread-Index: AdY0b7kTQuC96jFPR6yw9RrJSnQF7QABbsNw
Date: Wed, 27 May 2020 22:24:08 +0000
Message-ID: <DM5PR11MB165925D2DF7AB44B2F2D064C8CB10@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <BYAPR11MB2888ACE728EDA5B9B758F5E8BCB10@BYAPR11MB2888.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB2888ACE728EDA5B9B758F5E8BCB10@BYAPR11MB2888.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.214]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e7e25449-986c-473f-0cdf-08d8028cac91
x-ms-traffictypediagnostic: DM5PR11MB1500:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1500C38C7B1A6F75934D030C8CB10@DM5PR11MB1500.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 04163EF38A
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FWV+Dy9lvwUIPbhP7/Brnkb5meirFz/rAzcMWegatY55Isyc1uXyoR92NFVYpUQaTgBnQdT6E5PhcW9t1Nkt4ZAPDz7IxzzomCXcIOLJGqguHIxKlktL7oLiQ5MaThLSqZsDr8vTztlWgQAazgHPV6uu6pYJnPwEOQMtWvjdbthMsr0ReETMlRHrTJw/2KwEJ014+YhBQqrVLDpBSLAYE2EXxEyTUScVPO3fTwiqElVKALkF1xXZY5hsWc4kFKxUZCm31WqfRVmf7AV5oL8FLvhQ3wfpV1V8g7VrFpuBxc9uyzzzud0TttXXme1Gw6ksHfSDqMHGvmdct60+YBPfzS+dhuQiXHWZ7lOrwhdqMBcMzXSVcpQQwtmaABswSaa5HIH17fGbiakV/JzvGf22lg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(346002)(136003)(376002)(396003)(39860400002)(9686003)(53546011)(6506007)(316002)(33656002)(110136005)(71200400001)(2906002)(7696005)(186003)(83380400001)(55016002)(26005)(5660300002)(8676002)(66946007)(8936002)(64756008)(66556008)(66446008)(86362001)(66476007)(52536014)(966005)(478600001)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 40tjr1FRZCZuaHsw4iWqIOxNWjsGr6ut3GEPuyhK9Rx20TEEKtmei7Piviftn5XbstmxsileE5HNNmYTLQEl/XcM1rpkueH40qjweVS48ye1VgfBpWymr1Lggl057m8O9s7dp0jXX149s7E8Ac1EvzRQ3Lb6MEhwhuTnJozoBYWxwGPfz4lHIVJbpmM1ikaIJajjx2cpGiHRwD2an4b3QWkGq3CidaId2OWTwS167nhtdWgXO+KP5BZTZBm2kDTE7LyCuw/0AFLU4/59nqSExVCM35pqCro4CXKZ2SXJ7XOTfV2T2Ns63cIFF2KSIOi9Bqo2XjMfBnbb6SoLTYjP+vwizKTtXRvdoHb3k5s5JmDozH/x9sp14RQJkq84IcOkbp/eoRAnjC/7Odq1Z1rsykHXbCnqhrcDg8RVIk2UrCwOSNE8cbr4g6HLrfQET6X0F2SQW1lnGMk59z1w3XYCWwKKpBXlYSlhKsoPbpmt45BfNST7kzWROvt3L7r/Sl3F
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e7e25449-986c-473f-0cdf-08d8028cac91
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2020 22:24:08.5379 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sQ1O+w8kklZgprR8K+gSz9lOWUkdC8ilmj5tLUFEJQK9W+XsxIQClLwF6uRCDBBB4+K5GiBNmLOZvP+dsO06AJtBbtPvXvUg3y2HODsBqTk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1500
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

Let me do a fresh pull and see if I'm getting the same thing, wasn't getting any errors a few days ago. 


> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Brown, Aaron F
> Sent: Wednesday, May 27, 2020 3:07 PM
> To: intel-wired-lan@osuosl.org
> Subject: [Intel-wired-lan] Is it just me? next-queue_dev-queue Compile
> problems with ice as a module.
> 
> Hi all,
> 
> I'm getting a compile failure on a fresh pull of next-queue_dev-queue if I try
> to build a kernel with the ice driver included as a module.  It builds fine when
> I checkout master branch and build or if I de-select CONFIG_ICE in the
> .config.  The failure I get is as follows:
> -----------------------------------------------
>   AR      net/core/built-in.a
>   AR      net/built-in.a
> u1519:[2]/usr/src/kernels/next-queue> cat err_make.log
> drivers/net/ethernet/intel/ice/ice_base.c: In function 'ice_vsi_cfg_rxq':
> drivers/net/ethernet/intel/ice/ice_base.c:410:37: error: 'struct xdp_umem'
> has no member named 'chunk_size_nohr'
>     ring->rx_buf_len = ring->xsk_umem->chunk_size_nohr -
>                                      ^
> drivers/net/ethernet/intel/ice/ice_base.c:412:8: error: 'struct ice_ring' has
> no member named 'zca'
>     ring->zca.free = ice_zca_free;
>         ^
> drivers/net/ethernet/intel/ice/ice_base.c:412:21: error: 'ice_zca_free'
> undeclared (first use in this function)
>     ring->zca.free = ice_zca_free;
>                      ^
> drivers/net/ethernet/intel/ice/ice_base.c:412:21: note: each undeclared
> identifier is reported only once for each function it appears in
> drivers/net/ethernet/intel/ice/ice_base.c:414:9: error:
> 'MEM_TYPE_ZERO_COPY' undeclared (first use in this function)
>          MEM_TYPE_ZERO_COPY,
>          ^
> drivers/net/ethernet/intel/ice/ice_base.c:415:14: error: 'struct ice_ring' has
> no member named 'zca'
>          &ring->zca);
>               ^
> drivers/net/ethernet/intel/ice/ice_base.c:422:8: error: 'struct ice_ring' has
> no member named 'zca'
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
> 714c21f ice: Check UMEM FQ size when allocating bufs I am not exactly sure
> as I had 0 steps left when I got here, but received a different message on
> compile instead:
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
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
