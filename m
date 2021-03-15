Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AFB2E33AD31
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Mar 2021 09:19:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 570B26F54F;
	Mon, 15 Mar 2021 08:19:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oLFHL4RkAbb1; Mon, 15 Mar 2021 08:19:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5AEB06F4E7;
	Mon, 15 Mar 2021 08:19:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B63811BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:19:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A1D5245F30
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:19:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 95WPnIuC6_Cm for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Mar 2021 08:19:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7CFC44528A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:19:40 +0000 (UTC)
IronPort-SDR: U4Ptv/mdri2390QSSXMR7TEN6EEyw8zbCyKavZoCHWoPXXduAurM0y4r9jqu5L8rOaMy7LGqdr
 MltGwemvZExw==
X-IronPort-AV: E=McAfee;i="6000,8403,9923"; a="176647900"
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="176647900"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 01:19:38 -0700
IronPort-SDR: tbdkE6ew0+LAPZuvo48j/oM9c5yYwb9VLD9zZ/gZ1U2hxfLIupb+7Iyyg2KqJ/I+XW8aRI1txb
 wuO8b6OrbLRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="378427318"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 15 Mar 2021 01:19:38 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 01:19:38 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 01:19:37 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 15 Mar 2021 01:19:37 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 15 Mar 2021 01:19:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lJ+GUXsmpN/ZiOWHF/YwEd4p5yH+O/blLSYLLYE9GKETap9rtG2GvOrf8XiLJ3VRQgvG+azNhV8TkIMaeB4Pknmu6H4tpgkyYovnr0qrimJD9P/Jj6eIBLPQoVmnbtbppVKtgMEXbFUzfiuFg2FFbYpYvNqLiIufr93QwUjg/Emm/lpfv60+RsoZ2UeQDpq7gXwMYlYAbR0gaGYZLUWxWw3Uda91PcBMKZiio96/mvN72KVoWmj0MOAmOH/HXeD0C7LaiOqKOzjp5i8wjZHqq9HX06ZqiXzEpe8ohZIrKVjmrp8p9KlvsZ7BwwM+O/dCWf7oFI1FEwjKVhM2PBlP6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6l5Q7Qau7R4YBFHAjDuyiF8gkxCwvPtUFlcBu87ooCI=;
 b=JB9T2jn6CwUrfmuUR/Lvvq1O38E6RyRkOQTvqlsyW5BqCOupdJLvBum5ZIFcFmpZljIjhXmtsX8FEd0cEcSJeZbud2oVqtz1/nMVzU0ywRDw2fh2ryAJRx0zeqjhuLyQAyPJHoVgHLhiNg92NAm6FWj6lQKb1gb4rfqQmIx5qu3Y/nrNtFYibrUDCGUV9R0GnjnAiUjh8cA5vp1pcUTnTT+jHGtZxhPnTpIlqog446U7LJ5KcmmgcXyiVHxAPjpeS1eRssKWMEikZvxUScByus32K4U5ov8DxFz4Y3juGDfv5QGiMCXaFth/StLxWqCzOqf6AvM/f1dOxEQHCFzdiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6l5Q7Qau7R4YBFHAjDuyiF8gkxCwvPtUFlcBu87ooCI=;
 b=wD5oooiuld4NUmNT6udfNNCYZltiDXtXfyPTUphvU2lWJYGouViBA5bV+8Ik1ALuTVWMhZ0f2cArtjfs1ZrbHTwurbuMlkARzBFJs+ELjkaK3xO1pgBtSYKlUIVQq7VaagEumiUOolHaYPn5/TzejJN1ozAD9bFRByAifzYwDyM=
Received: from BN8PR11MB3795.namprd11.prod.outlook.com (2603:10b6:408:82::31)
 by BN7PR11MB2801.namprd11.prod.outlook.com (2603:10b6:406:b4::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.38; Mon, 15 Mar
 2021 08:19:26 +0000
Received: from BN8PR11MB3795.namprd11.prod.outlook.com
 ([fe80::ec6a:25a8:8c59:89e]) by BN8PR11MB3795.namprd11.prod.outlook.com
 ([fe80::ec6a:25a8:8c59:89e%2]) with mapi id 15.20.3933.032; Mon, 15 Mar 2021
 08:19:26 +0000
From: "Wang, Haiyue" <haiyue.wang@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [Patch v5 08/18] ice: Add FDIR pattern action
 parser for VF
Thread-Index: AQHXFJQgPg+t1tVSrUm5ZdiwSnawZaqEvo/g
Date: Mon, 15 Mar 2021 08:19:26 +0000
Message-ID: <BN8PR11MB37959E6CB9A88E2DE3F40403F76C9@BN8PR11MB3795.namprd11.prod.outlook.com>
References: <20210309030815.5299-1-haiyue.wang@intel.com>
 <20210309030815.5299-9-haiyue.wang@intel.com>
In-Reply-To: <20210309030815.5299-9-haiyue.wang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.0.76
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.46.56]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 568da321-0047-4312-58f1-08d8e78b0c86
x-ms-traffictypediagnostic: BN7PR11MB2801:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN7PR11MB28017772EE12E0A05BD170D8F76C9@BN7PR11MB2801.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QFsHxX77zLVqGOGEWG1xnyCdm8jhGXCpqG8bmKETEQhAcs5b6HMlSM2EI80Oy2xoNSIaZajaL/tYL2wWFvjnkO/vK6NFpErv1aCsjwqGf2FZgyOCaF5IBYzneEnDlCqTWNsvjKYr0R4a760gTd1TOr7VQlY383vXb2c8ZwZzYLI6wu2RboeJ2cTA0pyCwcHlQ2rGWfRJl6D7Np6TM2LDErYvvFx3ogV4SofZq1pr0Hjd4OehBNBWeh4g3fsm91T+e72vfdOdph9Ca+0tldnZdUrEXAHr9tyhvX3Q0Vjb49W2kvAKZWTY7RSVk7KUwA8x83Ng+ydwjZnI6Y1OoxS+O6pog4fzL9gB7uV64hIxubjNsJWMdyIIT48bV1oabJVNiMmmjJzOBMTw8vW4EtDNwxAbjXapxpeds8qcNFCnxOAoL2hJiRKb1rLHBXwuARaueFv+rfdoCYkL37WmmdBLjAPPztMfWy09klU6Zb7ivxrWUp2k/Rij/i4NI9djN8h1XO4R7WUQbWiDtOdsN2XE8SObmS23aQaVfwQykZbFoAn2FN6C+PkNt836PrH/p7VivpASsBSIh/tG/3uTl+4sh6CJcOR/hGk56jdouEbQXA0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3795.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(39860400002)(136003)(396003)(366004)(346002)(54906003)(2906002)(52536014)(4744005)(71200400001)(64756008)(83380400001)(8936002)(76116006)(107886003)(66556008)(316002)(5660300002)(6506007)(66446008)(4326008)(8676002)(55016002)(26005)(6916009)(7696005)(86362001)(66476007)(186003)(66946007)(53546011)(33656002)(478600001)(966005)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?quDzIPMD28lW+Fd7N3Vefg4HiJaAK7x1zTdGi3X0yidI6blEoXJ8QAzTzXHE?=
 =?us-ascii?Q?ZF3oFrgsTjQ1DQbQ9EdeooxAlANHnH+dNUk+8rWyqf+rNEh/64x97n8hIFuV?=
 =?us-ascii?Q?ra7U3aLZZOtFF3G78y8h+Knw8LvwDO4XLbSWIwgOiexWuMmjHdcSaEQedhC3?=
 =?us-ascii?Q?mYsITZfw+OcevuhuA2mWnhRWzMWsdH6zN9ejzcOPf6XH/GI8Cx537gpTklvl?=
 =?us-ascii?Q?MopM1judkgTxix7EbzvhdbLMN9BFc8xCakdfvDFI9XyvntcykgI6x9vHwyk0?=
 =?us-ascii?Q?2VUB2TpzLTCaBnFVAFiiCSqs0vKOLNkQAkNHSnSn43/WKz86lV5tllHgTTtp?=
 =?us-ascii?Q?3/4pIwj/n++Z8Pfszz66tz9C1XbUFVenKEULsb174rQJVf0RrJqg5lV6Yfck?=
 =?us-ascii?Q?2DeZfyesmdCnaiwtehuuCrDbary0v4UQK/Pli36xH7CKni1d9B4fIz2DBmH/?=
 =?us-ascii?Q?c5+KKEqPMo5f8u1ADnd4wqVYlsxnF2QwgywXkrb6/XL46UdL8+BC1FVycPOs?=
 =?us-ascii?Q?yj2hvdMyk2PTRa0MBxCsdgrWUslEjWKbk633GSirthQ7MsrxJCvt+lPNzmY1?=
 =?us-ascii?Q?yiQ8YnvhXVVUHVbCGk5gCWoiDsS77f4jKg9SX0seCOz4yj3KWRLxOMb0HUbA?=
 =?us-ascii?Q?vV6IcyfnIU2bcIccVCoa5n3HyJ5q1f4ykTfmRrCN+DQkoxhiGhsgN3WVmtcg?=
 =?us-ascii?Q?rObaQMOySP+GLva27dqholZtT0W4TaYju4YkMV56H1lxzenmrKNTxBAsDH95?=
 =?us-ascii?Q?YIN2u5w3udgpB307tsjOzddsda2iJTJHRdxAOVS4d+UmzHx3QxhrvBsrhJGe?=
 =?us-ascii?Q?5E5WvN7xMFaak6c5wo40+kKN1eankLhCxci3RajMWnZg7pPIF89TtzNlHDuq?=
 =?us-ascii?Q?PiOqvcpVCDkxHMbL1nhAatMA1Slan6gLIEfpikRAfc/H4PGT8x+3kXrU61tT?=
 =?us-ascii?Q?NaUOHNqZcumxOisqL0sjbyUYweeNP1kBkdeECsu1QJJXXjjYJCRI2oXtVIGk?=
 =?us-ascii?Q?y/hV272Y4W2XHWsmn3y4/wnVALZnb7nP556b/gBsvykTL9HVtt4ITk9hDJSl?=
 =?us-ascii?Q?/j52ukvq7Gk3sebOkStzEdqux9HY3JXRZb71VLVRTjNKpkMr4uXUOyc1k20i?=
 =?us-ascii?Q?SWDrQ2kxMuJfHprKvuNpNMPtwFYqxFCezut2GOQAUCAQZk5rYJI4XDco+nsR?=
 =?us-ascii?Q?eJElxHKiScL7+YPwWUmYXJGRbT1aGFJxpwi6J5nVWod/bMWCr9vJSz/xlh1G?=
 =?us-ascii?Q?DEpIb0k1UhJmJLAymJp0pEwSGT+/zrQlx1WcG48ZcwGU9th5lTSKYsuZHVJC?=
 =?us-ascii?Q?ecn/oMWflzXgtZzpKqPAhcAX?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3795.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 568da321-0047-4312-58f1-08d8e78b0c86
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2021 08:19:26.7018 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OkG+alAu8uut+ZL1oAbleETiQ8WOcKUPB/72MNmhCj4gU9HxLit+MMFEC2wFJUgVatOYy5HPVMnzmqT9+UEq2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2801
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [Patch v5 08/18] ice: Add FDIR pattern action
 parser for VF
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
Cc: "Liang, Cunming" <cunming.liang@intel.com>, "Cao,
 Yahui" <yahui.cao@intel.com>, "Zhang, Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Haiyue Wang
> Sent: Tuesday, March 9, 2021 11:08
> To: intel-wired-lan@lists.osuosl.org
> Cc: Liang, Cunming <cunming.liang@intel.com>; Cao, Yahui <yahui.cao@intel.com>; Zhang, Qi Z
> <qi.z.zhang@intel.com>
> Subject: [Intel-wired-lan] [Patch v5 08/18] ice: Add FDIR pattern action parser for VF
> 
> From: Qi Zhang <qi.z.zhang@intel.com>
> 
> Add basic FDIR flow list and pattern / action parse functions for VF.
> 
> Signed-off-by: Yahui Cao <yahui.cao@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  .../ethernet/intel/ice/ice_virtchnl_fdir.c    | 348 +++++++++++++++++-
>  1 file changed, 346 insertions(+), 2 deletions(-)
> 

Re-send to Bo, as a new member.

> --
> 2.30.1
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
