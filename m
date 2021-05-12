Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA7D37EA14
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 May 2021 23:57:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F2A9160682;
	Wed, 12 May 2021 21:57:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DReLyenDH8ZF; Wed, 12 May 2021 21:57:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E87E560629;
	Wed, 12 May 2021 21:57:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 802E51BF295
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 May 2021 21:56:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7AF5483E2D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 May 2021 21:56:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nQbhkG9p7rB0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 May 2021 21:56:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AAE0083CB3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 May 2021 21:56:55 +0000 (UTC)
IronPort-SDR: zTyvrhkpOZLNF2o0OfBlZLndNRzdQPg4hJu1525qOxrax8M+dgBQTXSc5pK1LsHxYzyPY+FgpU
 FNP2I9rTw6zA==
X-IronPort-AV: E=McAfee;i="6200,9189,9982"; a="199869803"
X-IronPort-AV: E=Sophos;i="5.82,295,1613462400"; d="scan'208";a="199869803"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2021 14:56:52 -0700
IronPort-SDR: F65lYAUd9kNWebyFsnHHJzjvuLqZVop3xk11vZtMu4Yg1xIj0Ht1ldfhaJrI80DfFAANo6z4/1
 O5Dh2WATFP4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,295,1613462400"; d="scan'208";a="400560437"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 12 May 2021 14:56:52 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 12 May 2021 14:56:51 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 12 May 2021 14:56:51 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 12 May 2021 14:56:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ESFY3SoATWL/m5wqCja1tvSK5W6vteQzedhrWfhxXmE6zbyGywZEk6ABPSV4D5+JwvBKes8IUC577iKQJRp8OodYII5aYZg1NslIxKK42ktaUSEjBYW22HPYG/DNcGzRJfYpoHTSazjOU4gvU2neDjtL4wnG3I90bkKpHEPRuT1MXEo0ePDLXjk2VYJto9Wr/36WXRQeH9z/Yghgd6uJlCf6vPqAJZ4q5tG0MUWG+82Yz5RCZOheM7prMXqVJIlS4HI+Nn9wUfLomQBINF1UlPQLXMUAB1UAvqBgC2CVrrmMvZ5Ggy2QE99sy6pr0IXbrP04pbZKG/Ni2P63tENdDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lmAoKub5l6r1q/fe5PzIc3TDOKvPbVTiKHaVxiiVV8o=;
 b=jHPyl+Jcm7p6oVxYbAn5bvJawjkMTEp2Uq8aagJSUeNNf5yRU4wVM14GIS3xcUVOJQG+AR1+by1czMNWHbKrdih4niVxs9k9y5FIX8jk35FkRwrrYlt2Rl/88GmsT9CKb3a7r+vnXM2qMsttZkzShnf3GP+s5T82o7MVRbeW/jv4JLAfAAQKSwsfDQvj3WCyyHHidyo9tLKzdBWI7/7Vws8bZR0VGqheOpFy3j7dd09GHiZh8j15LDz2SVDdovUPQ7SHtI+dv7sfFKz2UrvzaNgp4zPewhzEtX7NcZLU0kmsmaBS/TvOVVT0+UmEwRMqpQJOt2/eGeIL+uav0popBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lmAoKub5l6r1q/fe5PzIc3TDOKvPbVTiKHaVxiiVV8o=;
 b=vb1p5E/YnIaAHSvGOdYF37mWZb+WsafTJOL9+TBbjvwj7ydGXY7zUbrCuc0csAJN4IAsMsECKe772CGi8pFrOdIlfz8XjulJ9+RQzdgtus7MkfpIy0vjUorMBjGbLYelKbEGuqTSiky1Lnvp1p5aig9WyiheiSzEMR+zHkP2r4w=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR1101MB2095.namprd11.prod.outlook.com (2603:10b6:301:5b::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.26; Wed, 12 May
 2021 21:56:50 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43%7]) with mapi id 15.20.4108.031; Wed, 12 May 2021
 21:56:50 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S59 05/13] ice: (re)initialize NVM
 fields when rebuilding
Thread-Index: AQHXQo+v8/bCyKp4h0KlwJNEXUmsZKrgbjRg
Date: Wed, 12 May 2021 21:56:50 +0000
Message-ID: <CO1PR11MB51054D67DF3DF58DAD7DADBEFA529@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210506154008.12880-1-anthony.l.nguyen@intel.com>
 <20210506154008.12880-5-anthony.l.nguyen@intel.com>
In-Reply-To: <20210506154008.12880-5-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [71.236.132.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0516c3bb-8c8f-4293-8b4d-08d91590d88e
x-ms-traffictypediagnostic: MWHPR1101MB2095:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR1101MB2095EDCB513E677AE5B8222BFA529@MWHPR1101MB2095.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: K5obLTOg9EjhLHVcK8AP5VYeyCceUtAaw2tuQLUh6+LqYAPbkB15ewljoChvIix9wapJ7s5Vh8x6q84p4gU+dkqJRNd6iqyWb/2N/IYg/TAYbP7D+g70UrJM37IipGNqPp8suSq34d7MOYP1YCZ69fJBMIEsXhJB6fqDQftdUEJ3SdJ/Jp4euTEhlefMfbtUdxK/W0f9+6V/J+jSKP2HTjCod4s3Iwmn+ZK6kC08brtHE3IpJiii/6neqeHDzf7magTL9ytv/AHFVy7S6n+WwaKmnCCdro/FgwsHXheUKMRp89/cWY64WltidDSTABtfILzvHyilftbCAClhExXhyMqAm3dZ+KHAPb64AkcDZ/miEONHh9nppgtQYLQgjXYiUziVNtMGql9q6D2gipwHB25s8zqiyO+Q801hOzANEuyGMtcuRkRsee3QoSf1wijLhKmq7mB2dQzJLYc4hSgN9SPOl5n0C9VRd3sq1SIm+GABJLqcYXRERKgxQiH6V8IDfFmbqVxEPSQAGmIyID0N0Xre5AOp6F65g25i9KhAVRJ7GUyXqOaRUHwniogvCw3JiBtRNQxfJsRBdz269JopZzyMejDXoc71JpPCaMhVhnQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(39860400002)(136003)(376002)(396003)(346002)(316002)(122000001)(7696005)(38100700002)(55016002)(83380400001)(9686003)(478600001)(110136005)(66556008)(66476007)(76116006)(2906002)(66946007)(71200400001)(33656002)(186003)(86362001)(8676002)(66446008)(5660300002)(6506007)(26005)(53546011)(64756008)(52536014)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?F1CbSnfHW0RJ7qMt7ozXGTfGVoWmnjBxz7IqrKmzAQiBsSGDvktHDaPmD4q/?=
 =?us-ascii?Q?2iOOhF3acXtSU/c5qGwOKAR2wQuu6Pe7Ld0zRJt+znwHH4xxL0wIjREtid5L?=
 =?us-ascii?Q?NKN5vO1JC3MIVka+8oaywmGYtGdABZukCPkv8KBl5ea1ZdAstyKoBK4knTPc?=
 =?us-ascii?Q?X5BPKf7RnSgMtXb3zXFI+skaWNso3vllvzm2vrctR+2FHTbhBjp884FKqvlg?=
 =?us-ascii?Q?fSPieybnZlLMQwioJYYoZPCvZZ81rbEBKYiQx8b17rcuxO748EhdhbpGonvg?=
 =?us-ascii?Q?Jzx2h1Bh18gkSgKl1clvYDWVSD5Xq38Fp8FCM7FC+AtnIF/Lh9f8QPnRfzQ/?=
 =?us-ascii?Q?gKy1mAsid8AkeCEUizI3v+QobMVQ4D85jF2kdDxQpAM4eW8q42ZBnSFW3G/k?=
 =?us-ascii?Q?wQch8gXRA8zzgowojYMDHiSQKD55XclJyVjuyEZY//6wd4auNbWQFXC3Zixx?=
 =?us-ascii?Q?kqNm3QdNfdgz1XffXMPVLPTig15DFdTkz2NGSoct9bfumnf31xnl4he1MBmv?=
 =?us-ascii?Q?hdvQf2/TxL2Rra/bVv1EG5pDr5DtXxhzxGoJ2RjutVa09yTjr1IG/sOJnV1w?=
 =?us-ascii?Q?QyrmioKeAny8akqwRIhnhYf+Glhk9hOXcMJMOcc29NsRjSP/++zNHCuSQgDw?=
 =?us-ascii?Q?mD3bLqRv0aIPYAjz9Mcn36opHdlEj3pHQLlp5+oaeF81YSWa8bsetseDnnXp?=
 =?us-ascii?Q?zXGRoYXMOvgC6SDYEAwnHtgbnLMfoemyZmI8APjIdiAsTF68sL+5ITHh6X/z?=
 =?us-ascii?Q?zG671ZlbfVOaf40juvV30CXmLW10rPYG220NqICa2NgrecsYcqFoAAYo25ap?=
 =?us-ascii?Q?LKrmUdlg7FuNDcOCHO/nZbMmS4aEh5y/vR5gjGIURLktLmcAlu9GtZ61ZHlI?=
 =?us-ascii?Q?Vp0ozUJAYJfjeWcDY/OyYreqOfwIMLV5LrsAB7qJD2PTwgguWafQWUD93odk?=
 =?us-ascii?Q?w1jn6h5G4J4dIxM6i06BLn2UzcOr7xvXtup4ZfD1510xvJmMfuHndd2SbUfJ?=
 =?us-ascii?Q?hmoSYQ3s6pLWH3AyAKm/ZMQ5detr2G+nY3MqwEguDcdnOyZtCHjRtoEY5FTR?=
 =?us-ascii?Q?x/xXpr5PhS0HRAHfE1q95sxlowzPj1lS9EEARjBWQG9LcfQ78y/lPOMB+xCT?=
 =?us-ascii?Q?+2j3USSv5lgCgPnIDgVcZLNTtlUnl4tr7lKP/We+YJZod7HYe71HIxMwsjk0?=
 =?us-ascii?Q?dKYEhhl57drQQgED+oSPtG1V+oMziuq16n0cO2zlsjUIxpY8DBGaLiiscq8W?=
 =?us-ascii?Q?yZxpb0lbuKXP4cBJ4YydXYTXFcIMzM5Zs+1TWYcuGOBi/ewKOnb4DLr1boch?=
 =?us-ascii?Q?M3i5nAA7HPsp9oT5j2TAHf60?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0516c3bb-8c8f-4293-8b4d-08d91590d88e
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2021 21:56:50.1762 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hMiB5F4IhFKC7bpwZdhimFkG7NSq0Ld+ELQ1wLL/oD0bQX19ddK9SdxPvQUd47fwYCnwncLfrWYKdLnMPAi5i1T1g44No6v8uHyC6xbGGdM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2095
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S59 05/13] ice: (re)initialize NVM
 fields when rebuilding
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Thursday, May 6, 2021 8:40 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S59 05/13] ice: (re)initialize NVM fields
> when rebuilding
> 
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> After performing a flash update, a device EMP reset may occur. This reset will
> cause the newly downloaded firmware to be initialized. When this happens,
> the driver still reports the previous NVM version information.
> 
> This is because the NVM versions are cached within the hw structure.
> This can be confusing, as the new firmware is in fact running in this case.
> 
> Handle this by calling ice_init_nvm when rebuilding the driver state.
> This will update the flash version information and ensures that the current
> values are displayed when reporting the NVM versions to the stack.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 6 ++++++
>  1 file changed, 6 insertions(+)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at Intel)


 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
