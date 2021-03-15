Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC5E33AD37
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Mar 2021 09:20:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2127C4B527;
	Mon, 15 Mar 2021 08:20:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HrJRAz1gNyaT; Mon, 15 Mar 2021 08:20:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CF96F46637;
	Mon, 15 Mar 2021 08:20:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 078BF1BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:20:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0088D45F30
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:20:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DPbpw6zj8SMH for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Mar 2021 08:20:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B255C46637
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:20:35 +0000 (UTC)
IronPort-SDR: 4K82SfpjnkmzGNKgaMWWmdPGO3aF2h2ROenc4T3xGI+sJA18jsLpBMg0NohHaI58sq6srRbC5C
 /WbuVxfQ8Lyw==
X-IronPort-AV: E=McAfee;i="6000,8403,9923"; a="208950775"
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="208950775"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 01:20:35 -0700
IronPort-SDR: 1dd13Ojn9I2KYAOYdCwv2rqLhXwRctgCZNRwRdwnU8zj6QWKxIvlP+6+Kc6sen1NJQC9Ake+ru
 I+stKfwB0Enw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="522079760"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga004.jf.intel.com with ESMTP; 15 Mar 2021 01:20:34 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 01:20:34 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 01:20:34 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 15 Mar 2021 01:20:34 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 15 Mar 2021 01:20:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Kk6pTiDeK6w6xYKa9yGqyAnTQO02JZXN5D94+pi938kHKkgsvaHfrzCxikEA00W3ylFXda1GT/gwHDmtxzulqR/3D+nhAiNzc+Uj7tqwZUCut5OIHdBy/ich0jcEDDJWrGupZjHpa92RsXvviC9o7VRjTW+tAVvw+/LQ/tRtOO797fI/HM/OAeqzmEGd3NmhSaU8J7GzxUrjFrKb3/KmuR89s8SZJSsLv993VCl8nxTXWdnd2/WaFhW5pIRY3zFfsQAeO5QDt/6wvLnZbE2VWzpvJwldQKjm77gZ/se3FVWB8ABEVYAWpR0I/IEqVS5mnS9rAT+8oKQ4Nb4SFDowzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FHevuWmBrBqjgtTj9TMdd9AQl8uawZCp0F0ZZavUOqw=;
 b=Suj8aNDy/ViiA1dtOY3NZwZy3CdpQfmruyYEV44TaNh1p8PBLrE84L3fBDNDOpdg7gweKoSuCJ7ImeYG710JeJpXbcYj8n7xz3hVyJpAO138QbhHBSKAHcZ4itVHtbs65fc2cFZcLmmZ1/zkcD7/5mpuoH5L197LwodIuFzBJa011xew6zhPx9qOIN+5NMD0ngviBEsgwm84fWVoKCxfFrHdLMzm3WoIRLIPNAUB7LNH1McuaQoCKj6qxyzIpKUreAajDyag787zZi6gm/+Di/20JafqeAhdMQhOiEr+D2wb9I7L/JONT1SKLV9wjfRfTb/qe7KV5VcrLVa54nGSGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FHevuWmBrBqjgtTj9TMdd9AQl8uawZCp0F0ZZavUOqw=;
 b=LUvrMlYBXBZBznfj0oZEuTnPqJGTYDGkf7Xp5Y3EKZ+CLdHBbd7ncEtiEz6z1V8F4y6BM2mpItfrh0NCM+VQPjkhI3gRKvI2dm//0CxmVQH/x0zJYof6J2jJJA0BWu2u+D3EKwcjaFn1xXYzzu6Dq2Zl/XhaPUDCLRA7gUipzWY=
Received: from DM6PR11MB3099.namprd11.prod.outlook.com (2603:10b6:5:6c::16) by
 DM6PR11MB4506.namprd11.prod.outlook.com (2603:10b6:5:205::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3933.32; Mon, 15 Mar 2021 08:20:32 +0000
Received: from DM6PR11MB3099.namprd11.prod.outlook.com
 ([fe80::fdb8:bfa8:ff9:b29f]) by DM6PR11MB3099.namprd11.prod.outlook.com
 ([fe80::fdb8:bfa8:ff9:b29f%6]) with mapi id 15.20.3933.032; Mon, 15 Mar 2021
 08:20:31 +0000
From: "Chen, BoX C" <box.c.chen@intel.com>
To: "Wang, Haiyue" <haiyue.wang@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [Patch v5 09/18] ice: Add new actions support
 for VF FDIR
Thread-Index: AQHXFJQiQnWgjYSalECbN/UeiJbomqqEvrCggAAAO5A=
Date: Mon, 15 Mar 2021 08:20:31 +0000
Message-ID: <DM6PR11MB3099A296B7850FCB58068DD7D96C9@DM6PR11MB3099.namprd11.prod.outlook.com>
References: <20210309030815.5299-1-haiyue.wang@intel.com>
 <20210309030815.5299-10-haiyue.wang@intel.com>
 <BN8PR11MB379576494123FB2B157ADF7FF76C9@BN8PR11MB3795.namprd11.prod.outlook.com>
In-Reply-To: <BN8PR11MB379576494123FB2B157ADF7FF76C9@BN8PR11MB3795.namprd11.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.102.204.51]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9f746b09-ed4f-409e-f695-08d8e78b3347
x-ms-traffictypediagnostic: DM6PR11MB4506:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB4506E955F4E72B6FAAFF4680D96C9@DM6PR11MB4506.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HM5G+4UbJ1pNuCQiW3nwRU951tVZY6GAzzx307KWYMW8YvvlE6zO1lwknWBP6tZ0bN/cuIjGopufV6AWcvkrCMsnMUeIVXOYbZEuL/BhcjSBPRFqexLax4XCf2qcBvHQpq2wbnRV3kYznUCXzzrKHO8g8CrgXgacBf3OgTOsq6B3osLReT2nTuDM6VJBZnMP9Dsognax4pRYzxo9hO2M5Tg0qk1b00/lGOsvWeoYWwFCGR5kjzaYhLYoqI0Sh1lEqv/NKXk/FUKX08Uuxx1fOogpAAWQrgpu1sJ+4Zq4RaQRWdQWI2p7y78bGP4J8Nqsv+waVFsfexSMaIt/1ho4k0dF3VFJImt2h8JJhtocH+cM2upWtnYY4NrA0FRDkMdjvxsJTjVBkR1K+0uF8AW/0e7qFsiWl6XO4yWO+3cdTMe1jbVRcgjZEJXF0o4TBZGuEd+kbaiteLDUmClWSzov0CICgX3M8oiLX0gLBq6DjybWHcEvDFalEytw1WUlh2/1IxLjCc5Y1737aunD4VOlB4BV5gScroq1xdQcY+78JZq1Bfpgjg1zJcjymwsCoQ4kBnvwd5f5MJS3OYRqiGqCqruXMkXXG2caQ36hNYi3UZkL1YHPEHbb31ZKsjEdPRk3uvqw8x9sEgha0KY/8hig0Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3099.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(39860400002)(346002)(376002)(366004)(136003)(8936002)(5660300002)(55016002)(86362001)(966005)(66556008)(64756008)(52536014)(66446008)(110136005)(7696005)(478600001)(66946007)(53546011)(6506007)(316002)(9686003)(66476007)(4326008)(76116006)(2906002)(26005)(71200400001)(33656002)(83380400001)(107886003)(8676002)(186003)(54906003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?7FVLlNFWPbgILgVrrS9Pupsj+yCPp4K+bviyip+oTEEdCbVBLNOdqGphtuAf?=
 =?us-ascii?Q?JOEwgnhSxbNq+V1CLIUjKAv2DisnZyfOz/kccrbafo6L5ZgLTFj3KnMEYO9Q?=
 =?us-ascii?Q?6gx3lp+uPvw8WE5KF0Sj3nZvbk8utx33iEkH2UulGtrweq4A4kgv6jPhvgAD?=
 =?us-ascii?Q?f+QFasKAX0nNsHNktqgg+qz6JqYvYQIDmABq8bT7XUOzhWPGxJ9Ebd52Bsi1?=
 =?us-ascii?Q?/GSiWAfUJU0p6Q6WM+oY76fZqChezpKU6DVrs69iDlOMiqKf6OWioqbNOf65?=
 =?us-ascii?Q?nTVpdW1e6JSEdoN/aoPZjoqZlEtgshM4I+foXINDxltYBJ0XaG/QSvTkVbni?=
 =?us-ascii?Q?ylkt2ULfcSl0E/Zp8Rzi7bz3c8Tbf/85sTHEyNHxftu9gZcAFo3kirN7oTuh?=
 =?us-ascii?Q?H/aiE3gfCFMyPGQylJm6CKKcl3Pc9BfVjCQ1a5P7m7BmzE1BHT7ogocUzmlJ?=
 =?us-ascii?Q?+d9vBiLepchzst9EWd/iKHHnJxFFOFEnTFBLs6XWMNVgF8kHzsLyu6RppU8j?=
 =?us-ascii?Q?hZ0zkhFI2KsSdrn1x17ZZASDOpYs1Wn74wuHlsFH+P5IAnJFszF07UxwKPpN?=
 =?us-ascii?Q?r2sM3BkdQVqE+da4mCcfYzzdVxwRnESGSNxlhHi0NWoYlxhVL71fpZCA64x7?=
 =?us-ascii?Q?F+wfmljcD8YPmPBkxbmXrL+vHqC/m/xGuk3MO777JpfjT0ugPepiJVAxCDW0?=
 =?us-ascii?Q?QAG602PlrOqAriqMgEGQ3HjjUlojDiCv4tvEKWZbHzfF3Jytxhtdvy0OwIGh?=
 =?us-ascii?Q?hsFb2vxbDzaAq+TL2gMFLvTYAF8kyphmMo9sR43fLSBbI5g6V/Er0rijf63Q?=
 =?us-ascii?Q?ETjxJmVnC/cfL522kNpAazXVl9xwlBGv6EuMP6ITnTj0cFXqI/XFa7tO3z9y?=
 =?us-ascii?Q?5U1/+ANPmtOB8YEEBSVS5RLcBvy4HiJbHkaVHK2pNNajFnfrBxmy96GCyAlO?=
 =?us-ascii?Q?idHkVGHNNKG8HldWl9jAnDZIRKN76IxPqrMbMXYul4sVpoZVPD9IOcvUMdNp?=
 =?us-ascii?Q?5AWBBFwNmLbYHwN04uWgWZAcbBIvkpnuOsVXahAFH9USmldw21qUuF0ZchQP?=
 =?us-ascii?Q?Dl4Nw15k/ueHpvVgMnDSaOX/gQf8FwBkeZvDH+t288G8m9E4Ts/EXlV1nkcn?=
 =?us-ascii?Q?ErzjzRuNgjFKshNDi/nV9nv+/zCYGgQR+D1UHlntUNkOPNDQsu0h1c2zwOVN?=
 =?us-ascii?Q?LR9A6PTbRTZh2jxFIN/ASq8hApsc4Ryv6rjc6gHzoTOpnaQH4FRhMSI2I7ok?=
 =?us-ascii?Q?8ZvI6iQ2N0pMwUj1hELVd0JyYXWe34AZdhgtqb5iTW4kl8BNL1YBz95bjnDp?=
 =?us-ascii?Q?9JYbKEK1sbmsEqV4V2agnk5U?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3099.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f746b09-ed4f-409e-f695-08d8e78b3347
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2021 08:20:31.8770 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: p3TSjnYyLiJEiPuuAzm15fQ/1akMYBVaj3B/isdfcY8TZH4hQxz8Tyy5OS1o4p5LTSryEvD860l/kcaX/v8cag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4506
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [Patch v5 09/18] ice: Add new actions support
 for VF FDIR
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
> From: Wang, Haiyue <haiyue.wang@intel.com>
> Sent: March 15, 2021 16:20
> To: intel-wired-lan@lists.osuosl.org
> Cc: Liang, Cunming <cunming.liang@intel.com>; Cao, Yahui
> <yahui.cao@intel.com>; Zhang, Qi Z <qi.z.zhang@intel.com>; Chen, BoX C
> <box.c.chen@intel.com>
> Subject: RE: [Intel-wired-lan] [Patch v5 09/18] ice: Add new actions support
> for VF FDIR
> 
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Haiyue Wang
> > Sent: Tuesday, March 9, 2021 11:08
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: Liang, Cunming <cunming.liang@intel.com>; Cao, Yahui
> > <yahui.cao@intel.com>; Zhang, Qi Z <qi.z.zhang@intel.com>
> > Subject: [Intel-wired-lan] [Patch v5 09/18] ice: Add new actions
> > support for VF FDIR
> >
> > From: Qi Zhang <qi.z.zhang@intel.com>
> >
> > Add two new actions support for VF FDIR:
> >
> > A passthrough action does not specify the destination queue, but just
> > allow the packet go to next pipeline stage, a typical use cases is
> > combined with a software mark (FDID) action.
> >
> > Allow specify a 2^n continuous queues as the destination of a FDIR rule.
> > Packet distribution is based on current RSS configure.
> >
> > Signed-off-by: Yahui Cao <yahui.cao@intel.com>
> > Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_fdir.c          | 12 +++++++++++-
> >  drivers/net/ethernet/intel/ice/ice_fdir.h          |  4 ++++
> >  drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c | 10 ++++++++++
> >  3 files changed, 25 insertions(+), 1 deletion(-)
> >
> 
> Re-send to Bo, as a new member.
> 

Tested-by: Chen Bo <BoX.C.Chen@intel.com>

BRs,
Chen Bo

> > --
> > 2.30.1
> >
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
