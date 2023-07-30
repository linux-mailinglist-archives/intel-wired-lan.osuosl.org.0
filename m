Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F0AA276867F
	for <lists+intel-wired-lan@lfdr.de>; Sun, 30 Jul 2023 18:47:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 034FC4167E;
	Sun, 30 Jul 2023 16:47:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 034FC4167E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690735670;
	bh=OnU8g/Efz5BhnLPQ4BQpJeMYz5emcCFG65LlTfidt3o=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sYfR0p1DW1qY1mxRlxgDdLpPoXpo5ejWABdo6YYgj+MKScQIUbJBT5+MY7WxzafAM
	 DVAlbwunJ/Trd9drB8Uu6xmkh3Cx1+bQwNYin88VB9W2KAH3/SQtXsjSkxhkse0dOe
	 6K0e1YvHsqFvhL7FnTrdalM45lpYHLkX6j+nMyS1lqZlznll+zdNlguOd/idKv76Wj
	 p4uVYFxo00od1yRU81wC/Oesk6Hkgz5qETD0tqof/9sh2eq7Vv5xyWpd53+iPV0VU5
	 mDLozc4FMzb9uax3wxCxfb2S1QnQCf6x/VJAusbs/cZIVcWy84j251sBrKbAU3+RoZ
	 d7fSFr1fjrQoA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HD9F5dSSqyMf; Sun, 30 Jul 2023 16:47:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 78A98414CE;
	Sun, 30 Jul 2023 16:47:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 78A98414CE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 173D51BF392
 for <intel-wired-lan@lists.osuosl.org>; Sun, 30 Jul 2023 16:47:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D8AFB813F4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 30 Jul 2023 16:47:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D8AFB813F4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b7dm80A0ClBX for <intel-wired-lan@lists.osuosl.org>;
 Sun, 30 Jul 2023 16:47:42 +0000 (UTC)
Received: from mgamail.intel.com (unknown [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 02A78813D7
 for <intel-wired-lan@lists.osuosl.org>; Sun, 30 Jul 2023 16:47:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 02A78813D7
X-IronPort-AV: E=McAfee;i="6600,9927,10787"; a="399810859"
X-IronPort-AV: E=Sophos;i="6.01,242,1684825200"; d="scan'208";a="399810859"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2023 09:47:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="871375721"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 30 Jul 2023 09:47:42 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sun, 30 Jul 2023 09:47:39 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sun, 30 Jul 2023 09:47:39 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Sun, 30 Jul 2023 09:47:39 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Sun, 30 Jul 2023 09:47:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BCrRBXI4DFoU1tDW5POYa9E4K6U2K5QT29/bELfWK/KCdCSy15kVrf5n0AYnn3GkI9fuczwSmJOoR7ep29rNhO+TU7I0xR6upJioLzm7dNSJDtktgIydRLT431rgMKs9WNGqLpyZZMs7rSZZGCK5L2jMXfCBEAf/1zBnH4wz2ZbDgOnXWcvOPHTUz9L4otW/w7qAxPi7NcgRWaOBl5bgcKAJUkZJC2pswiYpdtu5R6m5V/UdHSwLKPwqT1fxqAhxhYYSm/Zpxjc4fgOtjFnD6mBtZ6PtoWrgJp+fmUZo9GDXWLdpuklT5s0i6iBqAtWw7RPaJFkeCwHeoH7apjxXIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kumbSTMG3mBLewMHkHErAwU/9zJlChXEV4xcgOzye7g=;
 b=HVGfxomTv0NO9M7wKsqyySMgWgWU98ftJ6xcb24xIoAwfh/bwB5XYhhw8yF368NIChqoRzaD62ekmZ5BpyAx1wZ6cc5ueHgSneMlbKmk6D+hNz7dXakYqGprtR7LKbWQOs4j/gU/N6tulQw2gcXIAu12rgVFlUqqJIOXNAANYzwL1RLNL6IpuMZug5bYyUiaudfvDP3PF2iRDJSrdWAuHsVhcbHNODNApUULmLcT/KVWG1fcBti6N5mHMBdQhN4JU6FBLne/QY4KO8bQtYPphdDraQahB3m42kg0xVrXcxzXv2v30hsSk9jJWHPSwbCLczWFWMQt0If5a9nDGWcGRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by PH7PR11MB8570.namprd11.prod.outlook.com (2603:10b6:510:2ff::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.42; Sun, 30 Jul
 2023 16:47:35 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::f04:5042:e271:9eec]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::f04:5042:e271:9eec%7]) with mapi id 15.20.6631.039; Sun, 30 Jul 2023
 16:47:34 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Zaborska, Olga" <olga.zaborska@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v4 3/3] igb: Change IGB_MIN to
 allow set rx/tx value between 64 and 80
Thread-Index: AQHZvs/MNrWXR0RuXE+TDNRYt9Ge7a/SjO2Q
Date: Sun, 30 Jul 2023 16:47:34 +0000
Message-ID: <BL0PR11MB3122CF4FFEF5D5AAD31158D4BD04A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230725081058.92158-1-olga.zaborska@intel.com>
 <20230725081058.92158-4-olga.zaborska@intel.com>
In-Reply-To: <20230725081058.92158-4-olga.zaborska@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|PH7PR11MB8570:EE_
x-ms-office365-filtering-correlation-id: 15b3977b-807a-48d7-39ff-08db911cacb8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pOo1NTHAb+kks5cZGuw1ciSDrh9rW19VkFM07yHUxeuGkf3zB8+FsS3OIzq+oMlwa2EiFa0N9CvMi5e7QAsAW4m8IR/gb/PTB/gMUmdP+DLseQRVSG7ZKn84AEGDCoTz7bIXV37ToWBuEuHClhNQ+jN8fEJWqih/WkFZnPnGUNhUu4XQAlo0tulngzIUs6mvm5J/qIVVq9cpf4PDQaH3lDiNBH4IIZ8oi2a+bQB3gZt9XTPd2HGToaituk2mWOz5MtbgrsczcU7XZLcnhRR6M7kxsA9Ebrc0IxG+K1fiFeKkam2tzp3OGMzUiy7q6cpP4fUf1KuVdDCaia09xrb6Kt7igCIGzgPwJc3GaccoeOKfF5xcu/ycwVYwTsAn+KuKWDx10ZKo/vuPZgXI9UUOkZljFe7ENIaxS2FIfqIgcgwm3+C5BZ7Q2/LVLMBJ+Eug38P5TbxVQ+BNjdoe0rUzGFWTC1mls6lUtW18ryrmrgfSNYarW4AJiFIiPmIbk9wtWgziEeMWNZRm1eOiqJkCVwI9TifhCddM58i74vhw05UNIR+eMSpcKNVlum7rihBPRkMwaybnhz2BLVrRufqxYGJWu4Xu+kWTdFi4obp8l5AzoU104OakE+jh2DUeyKuU
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(39860400002)(376002)(346002)(396003)(136003)(451199021)(9686003)(7696005)(55016003)(55236004)(53546011)(6506007)(26005)(83380400001)(107886003)(186003)(33656002)(76116006)(66946007)(52536014)(66556008)(38070700005)(122000001)(110136005)(82960400001)(41300700001)(86362001)(66476007)(316002)(66446008)(64756008)(4326008)(5660300002)(8936002)(8676002)(38100700002)(2906002)(71200400001)(478600001)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?uMMqDQOxDAbiUZSRncNuozp+c4PzA3KI0tLNrDoGn6fk8x3wPF2oFkrAEdeF?=
 =?us-ascii?Q?Baeslyf32qkRQ+ZoeGxiLBXZTkAXf+jCHzhSZLO3MgpqLQi+5mSgTCTg/2VS?=
 =?us-ascii?Q?rGXRR8yYBu5Irb0KycLbL/Y7iGd/GYoDjZeuMSEaycU3m8vlBpcCmoPbqB/X?=
 =?us-ascii?Q?ckWZkln/DoZ2j/I499LIlARtHf+5yZLtHbOEO1tSCfSLsnjZQbcOMMWbixgz?=
 =?us-ascii?Q?mVoTRTirHZ9xboX2HYTNqn8m/zc5NgITou1IXvPf2VFws1c/95po+I/KV3s+?=
 =?us-ascii?Q?vHvhfEJGtWMNZ7jHX8r72B2OoilVgRTApVc/dXElvlryTHRGW9icVfv27bbf?=
 =?us-ascii?Q?WGYO1Bhi+ifwEDV4e93eb5zBxBVtD7VkDJMMkoiyDet+EAOMwV79PD2qzyDM?=
 =?us-ascii?Q?OKJIlKnJeSEyQ5UJq6sAe15XSDByO603vqa7NdfT/uuRo6mLRzfeeTWiQuFB?=
 =?us-ascii?Q?N1pNvOd9UtdN+hk0JBQ/UjJ3R0OW92/0z+nqGjeeKh66DGV72E97MPjotM2K?=
 =?us-ascii?Q?Mh6nhl/i4FuRX6/nXLWy+mev6yp37sqR6YhvmrnT+zJxaCGLExWrRyGOnBQv?=
 =?us-ascii?Q?cQPKHvEVEUvEWXW/6wR5Xf18VJQfGdVe+X8prDxT5kp5Ykxq/BlSLTUpy6eL?=
 =?us-ascii?Q?UIsv4cOYgXVuLxIsqZ1FuzYQq82sBmwD46626YhykrEzxnArutr0nouPNsNu?=
 =?us-ascii?Q?gIPiIR3WW2TFad8X2yiwwXMe0CaG/U0FeHAoZa8P3ItxhqCfvLg0ZA5Pq52c?=
 =?us-ascii?Q?WfvbfFUJwv2+6c6OJ5lBlD/KprO+IBnVfxJMWgsy5uwwp4oR6t0FMWbkmuD+?=
 =?us-ascii?Q?9mH5mRUFch6XqvPjzZJaz+6LPRbPvVSRwgwj6AVtXPRSCLkXAuE/9AbccTQx?=
 =?us-ascii?Q?rgEmUKrYsyrlcrXFHRNRVNpP6z0BiVQpHfeK06bL/Md55TMiI7PKeSlQPV+D?=
 =?us-ascii?Q?Ij6TNr+EzYD9ieNvolVWjJEQtQfYQ7Vp/ZUxta3+23zmq3mYtFYtSfwW3rwi?=
 =?us-ascii?Q?284cJSoigc3qqOyLBl8GSDbaockvdk2cP10nmyIPoHZBp5KGIKcSDQ2Tfv3L?=
 =?us-ascii?Q?8A4OHxyQ9oLnIUsBHNjei/0hg7KM8/1Fw+hbJ9dheR9ZT+5r/0IZXDeDFa+H?=
 =?us-ascii?Q?+ufnbDnjry6yj1MSSqXtjEqbfloSdJX6hnc3j6JoHIXzVcqg/6EMqlUv5Znx?=
 =?us-ascii?Q?od6yv1VV8++NHsHHW3C2r+xWlqvTYtvtbC6GGA10VOJnaAs2+GqDi3UpVX13?=
 =?us-ascii?Q?7vPIpWRNwpp3b2eXy04ro5rSguhE2JokGtGIsa/y7Xif8WyLzRZLhB6TKZSx?=
 =?us-ascii?Q?/Q7RaFyHcxnVOB3Eunr/P8FGpfQB5sJj2kfzy1yDhXsll4pvYIjq7HNTksOn?=
 =?us-ascii?Q?9lAxjEx/AK1uleOURi1rVVv8uegJ0Ks5byG3Qh9URrsdHMXy4GenEkzLZYZU?=
 =?us-ascii?Q?hoYZ0eQUPxWDPPTLZoulpeHpQuZ3qMduCQQKTYq6rNSMDcjVHFOjMWMgcN/3?=
 =?us-ascii?Q?SLCucaDyj0osGVvKWFhuPEBe1yOch1tu45b12iKcue0f+wNvMY7Kl2Fqmslb?=
 =?us-ascii?Q?bw3mjgKrEzUa8PicGYJqiVi3W4GfedwEHGv2UhTAbLAuYCQPPeCzgIIEIzDr?=
 =?us-ascii?Q?2w=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 15b3977b-807a-48d7-39ff-08db911cacb8
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jul 2023 16:47:34.5707 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: APLtfbi0O4j9WWPFvaFKHfk1NnbIRuFtk7grrr1fsKc+iopOimJPGpQWHB0lLnBVDljEvXdWLkywql0TYqqYcseXmk6IfPalDYKOIW1biySIZl2vDSsg9fu/WhdP0ua1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8570
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690735662; x=1722271662;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=txbNTGAMQDJdKulypop0vLgvCkMB962vhSs3REpuUIA=;
 b=LWk0aPirmlLTVnsO+aHrP9nqffequeqKS3hBRHY6W6vl+TB6f18ks8zN
 d8PPzBIrnXgcCXyHdfRnqm0/gIDEjZUOSPznlY0hL6VWjNBU1MqzBK2bK
 Gz7QAeUOjQj3psk3VJUcVpvQa7nFCDbViPC1efjxBnMZZ33su2k3oKSBH
 5Nx9wj3QThaK1QMXLQBOw2QWWus5fkdHltHxk8Cb2p7yWPVmhajYVHUVy
 knxCKTyKld7kKqG990ZXyV/deGT8t/sGL6dheMmInoJ6oA2UfFhZtDqb0
 auIFD9phqp359pylaUnqmsg2DrVvXSBvardnyY5ejaJfRHR6KczA4U0zi
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LWk0aPir
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4 3/3] igb: Change IGB_MIN to
 allow set rx/tx value between 64 and 80
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
Cc: "Zaborska, Olga" <olga.zaborska@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Olga Zaborska
> Sent: Tuesday, July 25, 2023 1:41 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zaborska, Olga <olga.zaborska@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v4 3/3] igb: Change IGB_MIN to allow set rx/tx value between 64 and 80
>
> Change the minimum value of RX/TX descriptors to 64 to enable setting the rx/tx value between 64 and 80. All igb devices can use as low as 64 descriptors. This change will unify igb with other drivers. Based > on commit 7b1be1987c1e ("e1000e: lower ring minimum size to 64")
>
> Fixes: 9d5c824399de ("igb: PCI-Express 82575 Gigabit Ethernet driver")
> Signed-off-by: Olga Zaborska <olga.zaborska@intel.com>
> ---
> v1->v2 fixed commit title and message
> v2->v3 fixed commit title and message, added changes for igb and igc
> v3->v4 fixed commit message
> ---
>  drivers/net/ethernet/intel/igb/igb.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
