Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 496FF799EAC
	for <lists+intel-wired-lan@lfdr.de>; Sun, 10 Sep 2023 16:42:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 698FA8164B;
	Sun, 10 Sep 2023 14:42:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 698FA8164B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694356923;
	bh=UcI8P2DMvmiuXfb19Fkj1nGU38IgqiIoyLKAYDS6pyw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Jj7tZHspCCmsv229yQLGImlLUrjKm0RnbA9KEvd2eBxvNUbci8T1XPvzNueze8mTc
	 C1bAa8ueXQjQ2X2yKO7yr0fY8jGaJ0Vzxm1XG2HTZDWAW/O4tsZc5HQ++FSo8SNYg6
	 VxtN1wBMteeR8rmWfUhXVNldSxqjvcwSvEGMHRILa4bAw94ssW24FZNEjuxfTYrWO/
	 3gd7/fscH1itUlRbJ7isrXaSBJ6ZKPQleUtetJXfIgU/o60dzZYUG8yl1uN5hT4uGP
	 ZBwfIwL7zRzRlZc9Cc5lTkyZ1pirQ1j1OAXT9rkKk8jPy7ubVh+zcpk+X1M0E1N/bf
	 MsVwMlcXsoqVA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kUIxFAmDnXeA; Sun, 10 Sep 2023 14:42:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5CD1281516;
	Sun, 10 Sep 2023 14:42:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5CD1281516
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 02DDB1BF255
 for <intel-wired-lan@osuosl.org>; Sun, 10 Sep 2023 14:41:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ADAD160AD2
 for <intel-wired-lan@osuosl.org>; Sun, 10 Sep 2023 14:41:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ADAD160AD2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H7lwCPRurhgh for <intel-wired-lan@osuosl.org>;
 Sun, 10 Sep 2023 14:41:55 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 36443607A4
 for <intel-wired-lan@osuosl.org>; Sun, 10 Sep 2023 14:41:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 36443607A4
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="377816573"
X-IronPort-AV: E=Sophos;i="6.02,241,1688454000"; d="scan'208";a="377816573"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2023 07:41:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="743036500"
X-IronPort-AV: E=Sophos;i="6.02,241,1688454000"; d="scan'208";a="743036500"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Sep 2023 07:41:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Sun, 10 Sep 2023 07:41:53 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Sun, 10 Sep 2023 07:41:52 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Sun, 10 Sep 2023 07:41:52 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Sun, 10 Sep 2023 07:41:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KxWY90Zq5GxAXPEBO87xWMOGok3PzNvYfhnAs9N3G4yxnDpvcBLiUndWK68degd6e6Y88U4BzW+H+1f1TMB+jUGC8Lajk5my+jMxCZxBoZay8FKhnJ9tWXlNlD0TC/3SUJcvxluLSj0muXCdQnDdHHx5fH6iGAWAgVwDvzIaE8RpL+9uzuDv9gPKuKLtOpCYFkB1FiSmhWiOVQsBGzrWWWteIU22+WibS4WthiT/ZrrGScvn2H6QH1DmWVX2sRIRUVDc3s25jt9smgj8LezlyE9IljCysKdFh0EQKlpGCbza1Oeb8Kz9rhMgjbt9h+ldPxBUi/N9oiceWH/3hziLBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kMOaD933CcM5919/s7X9QGv4Eoa7t9BfrfY3qUBvLq8=;
 b=HrVllAWUGj/h+2eCsFAs4SS+Y/SumjcNnjHeSFoTfnqZp2ARLLqs+6W82IOKkwSIN5AEcXZ5dbLROuNnJ68LW+rWvS8Yr5CwvE5AQUdd/odV8d74Y4bRyluru+cjAUQQ6K7WFvdg6F8HMh8ccH3DsO7IE+plchvMb6qUI1itnW53UK9OqPymfR3hcbvS5zan5Ykxjv9pVrKCYneJs3RTV2H5hsRPEEKtZW+MOmdv2X7k3TzInjdjAB4CfEJoGy4t6aOfhJYLYKpxC2KWSwxnv/D+SAMSJAayWrc3ftfAGnlunAMQG086si89SuMbYenbgIvHvhjNv9E7JojAIAqoEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by CY5PR11MB6258.namprd11.prod.outlook.com (2603:10b6:930:25::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Sun, 10 Sep
 2023 14:41:51 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::5c05:24f1:bd1b:88f8]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::5c05:24f1:bd1b:88f8%4]) with mapi id 15.20.6768.029; Sun, 10 Sep 2023
 14:41:50 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: Simon Horman <horms@kernel.org>
Thread-Topic: [PATCH iwl-net v5] igc: Expose tx-usecs coalesce setting to user
Thread-Index: AQHZ4i0bjqcSkAO5LUiiK1NKgim0I7AUIJoAgAAAqVA=
Date: Sun, 10 Sep 2023 14:41:50 +0000
Message-ID: <SJ1PR11MB6180C920CED9ABECC9FD022EB8F3A@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20230908081734.28205-1-muhammad.husaini.zulkifli@intel.com>
 <20230910142416.GD775887@kernel.org>
In-Reply-To: <20230910142416.GD775887@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|CY5PR11MB6258:EE_
x-ms-office365-filtering-correlation-id: 2a0bb7a4-e108-4aaa-ee13-08dbb20c1191
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AeydWhLtjcKNn6E3/4NiSvK0e0ZQ4w07PPmlf12/YQxYo/MlKWmpGM8NKmY/A7QFtmF9Nw7Za8l2iwz5QQCz9E4FT0mr+gbDChxLkErbKVDa6KPtXgL0WO6zCt8O341NM43+BanVMcGGGcsTwYi4lunhzyOYE3omnDiYNqSSnggU7YditkxC4cR6vpjYqPTC9EOOxjFCn31ru0iJxtdx6n8YGIJTVQyPTMoUuK6SRYb/qyjZGNgRXegCQ3U5CwfG3+AAadgd5WXRurZNu5Q0FkJ5an83Z4Z/FtAC9v1cGPN57HZoyYArGEntyBkBd8w7EL6aAj9jTbamOiSUXGd1ZP0dFBq6y8znEvHsYasYzQJ0bGW7iV1iqIHJB08kQH9N/VAzktk0nD1shu5LdUYBvz0BScr7VnjhRQr0aIAfj55ZiZQGVc6qXBMMjXphcIko3HiEMeqz3Ct1kG9XnqfwmtfN6mOdJ4Ijm7wzIsSOSdYsLGlD9eAOnIwUoTo0Vy/A7iKLMMWK+PmyUwrFTJg1fo6SlRH5rOPuk4NUmFiPo+oNhdrX7aTo9L4VZR5emyl1kFkpHLxCv5mhNht3/iz3ErG0sj8zgyVndLEI9hQAF5Q=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(346002)(396003)(39860400002)(136003)(186009)(1800799009)(451199024)(71200400001)(6506007)(53546011)(7696005)(83380400001)(41300700001)(478600001)(76116006)(9686003)(26005)(966005)(2906002)(66446008)(7416002)(66476007)(54906003)(66556008)(64756008)(316002)(6916009)(4326008)(52536014)(5660300002)(8676002)(8936002)(66946007)(86362001)(33656002)(55016003)(38070700005)(38100700002)(122000001)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zHvn3Pk84Ehu+W4ZpjFrtJDsDD4sfDSrdamPHnQ7AUltGTNG+KXWllArwB1k?=
 =?us-ascii?Q?lGhTn+BLb5R5P5/II69rvOPc1ODhLOcK1WRucFl47joULkkN0Sc4FSDwI9pm?=
 =?us-ascii?Q?Y/1EXvU6o750gtBw2LzCb0+oU4njtBKvXneavEcqBDpDWnPVNDjp15P8lcy4?=
 =?us-ascii?Q?FBzn3JzEM9Ggl92y0W0d/19juNiPn2d4tka4WCmbDFQtE6jwzBBekkasNhaJ?=
 =?us-ascii?Q?HyDPi3yN6dzKnUowmUqqGsIh/BLILtPWQ6V3Nj3p6jUcpjjj1XOoO6ciyjSv?=
 =?us-ascii?Q?EN1ZKesJDYoti8GLzHOrYZsq513iRLxBdo72vXeh+bBiPPrvJTaMyhMTdv81?=
 =?us-ascii?Q?IO66oAaaX5kh6kRT2BNHOiT26ZdE75Yc/vijLyIQwZEgVYIfBf+EijUDcMWI?=
 =?us-ascii?Q?t+QdSULVqeB6n73UcUGMuW0a8c/L9Z1pRjN6Zy+RKgbXmGHFXNwAil0QdhDY?=
 =?us-ascii?Q?IO/JKhTQSr0Xf8GqSsNvnrOVKxjI1V/JG4SrcAVc71j7X5w6o8Xj9ZUx9vCU?=
 =?us-ascii?Q?r63E3js0EPEXnvrJzMT9kWVFBjetiabfRHMtzD3H3WCPqjQYjlRxkZfPZMZq?=
 =?us-ascii?Q?omuDDBaFuB37Xu3ewt8FZQ+I4h3oMkk4CoLHBVHZr/YebPG2K14tyZgaxjys?=
 =?us-ascii?Q?hVhoJiy80BvX4Lf5E8CA+/u0zvPCG2vqwUJQxtA1dIXznypYQp75ZmS8/xd8?=
 =?us-ascii?Q?bZdLUjaR2xMUgZJrUe7AKaiPflXoh05UuV5QYdTvW8/KKK4U9M2fdepO0UpF?=
 =?us-ascii?Q?+WZboeuClxsloBfWKot9Ygsuh65nWl365+LkPR+BZY3OeFk1/TWjFKgOWXD+?=
 =?us-ascii?Q?SIMb9714VI3bEx7YAKzs/InrEt59TRR/DIsg96Hhvi3v3Aaea+ez+q9guwjh?=
 =?us-ascii?Q?b+liMQDf5jqmIfBF+eOhGnTy78xjJQ7BnOwgf5OUEx10aZMXvCVuwwf7Hkmz?=
 =?us-ascii?Q?X2Pmg28dgtItU9dQKvt2Bmi1vX+xzQQAQ9kCrRKbG7eo502ZgX+J+8WCYR4D?=
 =?us-ascii?Q?yCLngbKGE4nkqyvfUj5D+yYnf9pNzG0rTGrfnSYjQGJzhsBAT755s+dMCEBF?=
 =?us-ascii?Q?8nw6YuluRlU82r9AkKPWX0hx7uxmv8lHwojEda5t4YHUTEt6bH7Z0J4d5ZhJ?=
 =?us-ascii?Q?9uq2qa8WT8t5+xYAmQ3BWlKzwuMn5ATpRpd2+NPumPWN4Z30p9kOf7WNVJGd?=
 =?us-ascii?Q?BhwwVpDADKqpffftAV67V26RVPovBPJw/pnTwRKUsDkCuTuWZK6nS9TpzC8a?=
 =?us-ascii?Q?7uSoQGOTtMlOOTrbJuncnlMsc1+W1T0d8+F8QhNOEuJopkWOgpcNBFsze9GA?=
 =?us-ascii?Q?Jh4x4CQnsTV1vuniLNjcPNwa0YimxT8isdR3hsjWx3DsXvwEHAJ1lj+m0yOV?=
 =?us-ascii?Q?3uA9SNsxRQK/PJHZMMjKGPYYk3qmHys0pO71+DC+YLRPzNXymSIX5lQs4B7F?=
 =?us-ascii?Q?uLOtb3uhCPXUr4PIGtIJhlWe458phag0xKHkjeFetP2F92m7WIepw5x/eGyi?=
 =?us-ascii?Q?ONFQ3nB6LIWj2VEJrZrNwHbpF98J6PzX9phCVPZnLmPMQHJ7IGnQr7SewbCF?=
 =?us-ascii?Q?RDw9E4bIxReT6qowzS2m9f+PMv6JmS3MXBb+4lVfT83Fdq3gOZnMPd6+COm0?=
 =?us-ascii?Q?fm7a+UU6taUaEiwNiiWCprs=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a0bb7a4-e108-4aaa-ee13-08dbb20c1191
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Sep 2023 14:41:50.6808 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YzviYm80K8CaAf+k7iWIfye6fK9WmLteLkPQbR5V+N3otGM6P6b9IA0wHEoFDffNHeWKlTvIirB8o7gRmUeDCFOskqvA+qvy8YRz2JUFaalkb3h3dD7O2BLfR0Dp3hGK
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6258
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694356915; x=1725892915;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MbyDh+qZ+uw+1ZjBTVu12My8VFM0bW2MsdjQZYpVkCE=;
 b=EyiNeDf2BYimcID+tPB4gGiSlwVhbRPSHTod4owgiQkmSBuc8H86QXAJ
 4zxD+i8wW0809FVciW2XRHsomhoMhbY5EWcmSJs7mdU/0AxBNPQmlZ1Lj
 pIa8f4t1rQwPsdHTPsSFLGhQJgYXaxbIK7KI1w6UuQyc6MmBuydbi9I2Y
 iwg8ipsbUiwVr9S9PBxiABJws1jYsRv9nEbRycOMg2uo7wxcdtShpLK/Y
 Bvn02lUOiEGcpuuMmSYqbG5VVJ7dCybFd5CiKvu7DhxZ5uVgOZib6889R
 RAKEn1h8R6hAGAqUeVtYNKdBsoE/7AezS1YpuCgH52TbfA5vB+/Po9ob8
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EyiNeDf2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v5] igc: Expose tx-usecs
 coalesce setting to user
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
Cc: "bcreeley@amd.com" <bcreeley@amd.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>,
 "edumazet@google.com" <edumazet@google.com>,
 "husainizulkifli@gmail.com" <husainizulkifli@gmail.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Simon,

Thanks for reviewing. Replied inline

> -----Original Message-----
> From: Simon Horman <horms@kernel.org>
> Sent: Sunday, 10 September, 2023 10:24 PM
> To: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>
> Cc: intel-wired-lan@osuosl.org; Neftin, Sasha <sasha.neftin@intel.com>;
> bcreeley@amd.com; davem@davemloft.net; kuba@kernel.org;
> pabeni@redhat.com; edumazet@google.com; netdev@vger.kernel.org;
> naamax.meir@linux.intel.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; husainizulkifli@gmail.com
> Subject: Re: [PATCH iwl-net v5] igc: Expose tx-usecs coalesce setting to user
> 
> On Fri, Sep 08, 2023 at 04:17:34PM +0800, Muhammad Husaini Zulkifli wrote:
> > When users attempt to obtain the coalesce setting using the ethtool
> > command, current code always returns 0 for tx-usecs.
> > This is because I225/6 always uses a queue pair setting, hence
> > tx_coalesce_usecs does not return a value during the
> > igc_ethtool_get_coalesce() callback process. The pair queue condition
> > checking in igc_ethtool_get_coalesce() is removed by this patch so
> > that the user gets information of the value of tx-usecs.
> >
> > Even if i225/6 is using queue pair setting, there is no harm in
> > notifying the user of the tx-usecs. The implementation of the current
> > code may have previously been a copy of the legacy code i210.
> > Since I225 has the queue pair setting enabled, tx-usecs will always
> > adhere to the user-set rx-usecs value. An error message will appear
> > when the user attempts to set the tx-usecs value for the input
> > parameters because, by default, they should only set the rx-usecs value.
> 
> Hi Muhammad,
> 
> Most likely I'm misunderstanding things. And even if that is not the case
> perhaps this is as good as it gets. But my reading is that an error will not be
> raised if a user provides an input value for tx-usecs that matches the current
> value of tx-usecs, even if a different value is provided for rx-usecs (which will
> also be applied to tx-usecs).

Yes you are right. This is what I mentioned in previous version discussion.
https://lore.kernel.org/netdev/20230905101504.4a9da6b8@kernel.org/
But at least IMHO, better than current or my previous design submission.

Previously, I had considered changing the ".supported_coalesce_params" during ethtool
set ops to only set ETHTOOL_COALESCE_RX_USECS with a new define of 
ETHTOOL_QUEUE_PAIR_COALESCE_USECS. But, if we change the queue/cpu during
runtime setting, I believe this ".supported_coalesce_params" need to change as well...

> 
> e.g. (untested!)
> 
>   # ethool -c <interface>
>   ...
>   rx-usecs: 3
>   ...
>   tx-usecs: 3
>   ...
> 
>   # ethool -C <interface> tx-usecs 3 rx-usecs 4
> 
>   # ethool -c <interface>
>   ...
>   rx-usecs: 4
>   ...
>   tx-usecs: 4
>   ...
> 
> ...
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
