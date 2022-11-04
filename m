Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CD20619C33
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Nov 2022 16:55:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 59D0841296;
	Fri,  4 Nov 2022 15:55:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 59D0841296
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667577302;
	bh=hkqSB9p1Guaeeh5P3aQ6pVeLZvhSacvRNg1HQgkPucg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lOuEyU805L5T7TObLEuwoUPXxdFQpZjdf+PtJLBM+FVYJMxSmggzUnLWn36/pplha
	 +MC+/s6icM3Nj/1dwlj9gGqqgTTx93mm+KR2HmCYPf5vMIkpAmqMQ64zfVlyOVOGox
	 PnfgAVp3c/ASefG9OI1tiqpiBhfD5VlCmocTCP/veiesN18Nxe3mRaWtX72NWfEFqC
	 MMJ8fY+GSXxPWo3Dov8SCdvrSlwhJvnhgjJ52J2oShjfHZYr7Pzxoo0iwjtFZ7DATZ
	 3TXMxYCVNbVybApbmDcDHgdylraRLuJaP6xtdC+RTMzzKZXBpgqq2NhHadJsj7bgln
	 GADDYvbRXssJQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ljyB4BBokI87; Fri,  4 Nov 2022 15:55:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0E68D4027C;
	Fri,  4 Nov 2022 15:55:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0E68D4027C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D13B11BF281
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 15:54:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AA7E240C6A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 15:54:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AA7E240C6A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AOkJnfsPqkHA for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Nov 2022 15:54:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DE77940C73
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DE77940C73
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 15:54:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="293326725"
X-IronPort-AV: E=Sophos;i="5.96,137,1665471600"; d="scan'208";a="293326725"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2022 08:54:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="668397167"
X-IronPort-AV: E=Sophos;i="5.96,137,1665471600"; d="scan'208";a="668397167"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 04 Nov 2022 08:54:54 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 4 Nov 2022 08:54:53 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 4 Nov 2022 08:54:53 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 4 Nov 2022 08:54:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nzn8YurLT2XvoLx1YhW0qQqxkl7VBcTKLEa2Zfl5a0dkOfEm/uGCHWwuPS+Sud0N+Ibbg+x3n+CWwf+hxlONPd1W8/m4Ez5BVpyfDp5qqgrUiStIQByFbD8xoNa1yjT93tWYdbBHqyNeM1Au9Y8lVmTuv1SrlCWUPr5RuEW5FSVnIRP8jgXHIEvNcIgGujwzwIChSXa0MA+vKjMamJwtA6Kivnj39mPz0jhaAzHhaz4qt8yHQD9BHt1xuqAEI6oPktVzyWcKvxPHxqpuGipcY8TSpa4Y3aWYZDdJY8mmVxZvQ4VxJfCu761M231HoZOERpakN4XSgzuPisdWNvr1PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=stenQ17ttXhNxuR7ERKfCGQB9nmHLuNAyh4Y2JE1MVM=;
 b=beOy8kSZlO78z65NDklYBWdSItH9Nm0pxIw4d9U80Rf4QGAD4Q2IBdwBkFi+ofFDvZDirmIJ3wEM1/kubG+JrxPiSeNaPwyRI6sUOey2qUvQmr3xHAY7dfuttJw8XrizECSvDhYnx+7Eu9B7iFDB0wuw2EslqVnYPP3TuKsEAw6dBCVzCkdLbvg0V0Liip3CZdPgtVzgwuxQcdnUy2huw5tBYzU06QhuK0z5FeXNRHBnlDj1Oh4olfuzhYCMsLeo57SEMQXpeJlFR+kAFx1sseLvNcVeyLURFFlMBdlecn4mW8l19AFmluoS5oTtqYaM3utab0QQQknethB+Sikfvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by IA0PR11MB7402.namprd11.prod.outlook.com (2603:10b6:208:432::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.22; Fri, 4 Nov
 2022 15:54:52 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::888:2df7:7c31:e1e5]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::888:2df7:7c31:e1e5%7]) with mapi id 15.20.5769.021; Fri, 4 Nov 2022
 15:54:52 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Gerasymenko, Anatolii" <anatolii.gerasymenko@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] ice: Use ICE_RLAN_BASE_S
 instead of magic number
Thread-Index: AQHY75DjfY+tnadtZkmH/Io83gc7ca4u7E3w
Date: Fri, 4 Nov 2022 15:54:51 +0000
Message-ID: <BYAPR11MB33678DD0F2CCCC2BFADE409EFC3B9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221103143005.578149-1-anatolii.gerasymenko@intel.com>
In-Reply-To: <20221103143005.578149-1-anatolii.gerasymenko@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|IA0PR11MB7402:EE_
x-ms-office365-filtering-correlation-id: 30b84ead-c1d6-46f0-e016-08dabe7ce8fb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Iuq/wvL9IjjCUKlccPQSoGnlkteOMdaP7uTeJeMHHNosEtHi0nlcnwa8I/07IJWRlaBJI1HXolDIo0BByyB4+vGbXFsoa0pUaKhQc1M94ru+D+soYKsgy88FuXGKeMQsUFC/cp5UxqIXgcPUzsNLvSMUMvuYVWO/0LH7MyHj6tNp8ZDVAbNpEncDpKT+yjzGTKu1DzBg07RVqfhoaFYaFHph7FvmKqfJed/NYUQ/lbugQFZvGJznAHwCljY2wXCwLT0SFVoP1Tyv5sQj6gwglC2RDtdPNCwnZdn04f7UW+rEh2KgKtwMHmRfk/cDvCbIe3CrldJ5eH2iGDpAhS8/wQe2D8wMEkGtP/YYHXTfbaOS0IX65lfHIz1f09ewFZKM4DmGkQrRki21Fdk+Ge1gaMKieK3DMjOssXjQT6YGUdwcFy02stBgGdyYgXOd2ysPYVTmDVXOjDJXD/xe3jSsGdXyz5NcGdbWpTmM7qHDa1WT2oUYP65x+zVvyubgxAhUez933jHNOEKXIGmj+nRreSl1xJMIbPUZTpvQpiTabp44ot9tE3NgvScFI0VaBZTF4v2xn+SjRVfEg1+zrfzNiWBWrCz/JqySUkhyqjUeW51/RFuvEFMnSlploSZOjXcPh7U44hSnIpahmHePJFHjWTp7y77exs6jfjqc7lALqF+fvTKORGN3twzlyB9t1a/5HcP9W9jqYc37pqUl5xXeYzvlFabNxOTV21PodZ0OsWBD7KF8paL11F9XJ9A0QjV2P7W7BBCCFC5KgXe/DE972Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(39860400002)(346002)(396003)(366004)(136003)(451199015)(71200400001)(66476007)(8676002)(66446008)(4326008)(64756008)(2906002)(53546011)(66946007)(66556008)(55016003)(107886003)(316002)(110136005)(76116006)(86362001)(7696005)(122000001)(33656002)(38070700005)(82960400001)(38100700002)(6506007)(4744005)(9686003)(478600001)(5660300002)(26005)(41300700001)(52536014)(8936002)(83380400001)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?U+FXfzKk13Kt5VCznzPNA0vFMDAhBX4MqsiRHEZP7d3vG/yEPmNMJ4zdmFiU?=
 =?us-ascii?Q?S0qo7hFiL/QeBBwIXqleuxssP6vxzhx3pZHVpH5MyFdMfzs4ClXWx6r8npIK?=
 =?us-ascii?Q?Q4T2G5JwWkHHdeciotZKSxuMZSfdFt3HiQwz5daNXotW2QxYSzDrN2NMCvQ3?=
 =?us-ascii?Q?myyT+Pqkct5nG1bC9KM5SOY6QmKfGrNhLTkyNOMNcJni1u7Q0lWA5e+Q6Knb?=
 =?us-ascii?Q?+vhYlzr64cytsqjzNnApDXiO5yEbmpRl5/++/LsYf+tqiLhn79gNLyW4A3dU?=
 =?us-ascii?Q?O+NNVJkRKBcdlKpwfiRSNgTjFjsCW1WjmmtFfjYNEqGoWvnL3Gl7oJjsNBuw?=
 =?us-ascii?Q?SOyhkRpa+GGVEhIgP3aDv78t1j4lcJZmTCvIPdgB4P3CEdxCdaJ5cuczQmrb?=
 =?us-ascii?Q?C4jO3M0nESLIIpDzYAwD5YNJYrvpx7DORSDx16D4ZOIhH1tyWBtxAC/eMqR2?=
 =?us-ascii?Q?Co7MI5bLyO/t0o0RI0FMyhpRk26qq00LWhdsZWj7nlMx3faefAKg5MoIImtp?=
 =?us-ascii?Q?dMkeaOxfmWM3PszvIzNBhBdSKelz8qsXMuY01wRRi4vzPrPZ1QN/N9mF/MWK?=
 =?us-ascii?Q?wVa80Aj3BKwY+Y9wZvA5qG/mdOWmg/8adnKiYE8HED+uUy/ttZ1wFVz6U533?=
 =?us-ascii?Q?PQ/8wmm02pg06crC2nRnmvMfuUr2ZuttRGA+x3keN3V6ZfyKRVC/kEiAIlun?=
 =?us-ascii?Q?A3xu1t1HHwpCwypf1muIuFPckb+4AXMb0qCUxcqGupdFF4JfG5HYz1ZBbs1H?=
 =?us-ascii?Q?YMGehFZFm+bGHmuCMF0mHDSitB8vY+kbfMIwrG4M3R20K7R6ruXNAaMHcjcA?=
 =?us-ascii?Q?edh4MYeILRQCrJeHwusIILpPGTNA8qLohYWZPvQy+ZO4EV0xuKBzxYFUFJ7R?=
 =?us-ascii?Q?pZ7IhUbDt2QlaENevnBW2mQxyX+2EIzHkeNsYsk+UulXSXJkadkxBfgTdfcX?=
 =?us-ascii?Q?OYdZikDPTKj1nwK/C0BNvz+qsFFdlbUjg3/I7YwgDLOVGZbqjPz3nbAq3ixI?=
 =?us-ascii?Q?/xbihxbPGIH03JmrhwGD1qtOITfJbQNTc+HIPKrXFkYZxnvbnTQZbryaMbMy?=
 =?us-ascii?Q?7Cw/+tj6ZNZH1DELhoYe0RFHJPmJPuSc2AY/RKb4NBiZdDI8RriBvOAKDxkc?=
 =?us-ascii?Q?reLb8Z6uiQQ/VvJIaz3mg3GxH1ksJjBfePbkWyS2+qchsY3r4F+ugJydv3Ld?=
 =?us-ascii?Q?UaUDzNSVdore40OdNYDBd+BbK6IZxLQevgxnCCs2tHVMDmEUC7wieDQ0IxX/?=
 =?us-ascii?Q?B4ruZgqkKk4r9rdZ7n9JJNYTwVKGBa9Wiqxll1FbDt/H+cVgrTke6uRKUtwX?=
 =?us-ascii?Q?9x7bRbv9R7W3ju9YZnNCIgVwcQBjO+0vRZjZjKskHN+wg8bOdVliMe0kCKZF?=
 =?us-ascii?Q?yrAfi77zYViyHffc5cqyGzrpeUVcS6gVLxqS3npSixFddOX0F4m3XJxZJPqu?=
 =?us-ascii?Q?1mEgVmezRJvHF21cTPVvGzRCco52ABnMt+k7246FM6sHUF++dol/G8A/Lpfu?=
 =?us-ascii?Q?B/B69bp4YDMOUas/H2fvnVWySoUHpVl1ykqfx7BKLBUo6fB2vZdJv2gDVIeK?=
 =?us-ascii?Q?q06Uq9SzDpNQoaUqiw+bJtl7ifmqQ793k6pP+YpN?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 30b84ead-c1d6-46f0-e016-08dabe7ce8fb
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2022 15:54:52.0077 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ckRgX7jYzNPHZYKAhsctkbXHTFm2TrrjpMzSXAekO1b4NeKBjDA2F/FViP/4WrE6IpXoKMZMM+HPvPI6p6w99Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7402
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667577294; x=1699113294;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=saHBcz/ytQlnlXGCPDqD4DVyPdErdt2+kI1NZ0oARJQ=;
 b=J+XsW5nK7HCCAcAB4H08F1Zp1YAVUAesm/AbmVEdMmgpCGm8OgUFt9fG
 d3CoQRPEj8CtetqXNZxdey/Iiz6oxpYpGqGBYLYrL54oTT+ufB9o8FhFs
 GdzafH31GWUaVRpI0j01ecgihPBGEJAPv3Ydn2qbVWUz67X+UV4UWP1ra
 e08GD3ztee0Wrcp7ET+EbYvoqPj8PcX9cohPf5P2AZpHJQqTz/bDXprT3
 O/Qmtm7uvv9YVuPlxLZWvKc8zA2TBGP2ADGWyc/K7CERKJz//dRqGmgGy
 rA5ZEn1m3FCQ99YjuJGJVY2Fu0gZsEzJacMzaW+Dq3/l/hiPyjwMHC9ok
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=J+XsW5nK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] ice: Use ICE_RLAN_BASE_S
 instead of magic number
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
Cc: "Gerasymenko, Anatolii" <anatolii.gerasymenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Anatolii Gerasymenko
> Sent: Thursday, November 3, 2022 8:00 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Gerasymenko, Anatolii <anatolii.gerasymenko@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v1] ice: Use ICE_RLAN_BASE_S
> instead of magic number
> 
> Commit 72adf2421d9b ("ice: Move common functions out of ice_main.c part
> 2/7") moved an older version of ice_setup_rx_ctx() function with usage of
> magic number 7.
> Reimplement the commit 5ab522443bd1 ("ice: Cleanup magic number") to
> use ICE_RLAN_BASE_S instead of magic number.
> 
> Fixes: 72adf2421d9b ("ice: Move common functions out of ice_main.c part
> 2/7")
> Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_base.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
