Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B7E6714E8F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 May 2023 18:38:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CF6DF61222;
	Mon, 29 May 2023 16:38:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CF6DF61222
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685378290;
	bh=pt13hk5DZWvgedDl1NBtE6YPlX+/bpMQOWRcV1a7XiA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wakDiWpZCd82xXPeCm3H385GTC4V54P17PaGzg+YsdJAw5LujO9aFxpUSJaoB+Q5d
	 SzLeV+OR/neEus8qv+2WxEzFRN3eomQGz12TGDRtHMLwvpPgintvhmmuGxeflR5rh7
	 hLZkOaAhzXYOMQrk75PFNze7hRIegCoHyABXcdpBppHOCpKjhupTvJHNiza28NTDBn
	 1h32j5ZSYq4ik2TQDBvw8pjkKA/oviVUMDGkI4BqvTvUMNkiqlQvAIPhG4U6cMF4Mv
	 tF2yaC6To91wSa3p1DX2Y+umg/DTLSCADgPlsHx4EKnJXbg8ufE6FehP+YW0S2rWLg
	 2CwTtEAIMe7YA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QfhngSrPo2wU; Mon, 29 May 2023 16:38:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C4C7161206;
	Mon, 29 May 2023 16:38:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C4C7161206
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A8BA61BF82D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 May 2023 16:38:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8CCBD837D2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 May 2023 16:38:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8CCBD837D2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FE4Y1x7A6u73 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 May 2023 16:38:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A1409837CD
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A1409837CD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 May 2023 16:38:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="335091686"
X-IronPort-AV: E=Sophos;i="6.00,201,1681196400"; d="scan'208";a="335091686"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2023 09:38:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="709346956"
X-IronPort-AV: E=Sophos;i="6.00,201,1681196400"; d="scan'208";a="709346956"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP; 29 May 2023 09:38:02 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 29 May 2023 09:38:02 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 29 May 2023 09:38:01 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 29 May 2023 09:38:01 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 29 May 2023 09:38:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HVKOKcbxCyEMuFyPKNx3qNc0buvDDcChp4VdEVEnmOB2Io9k9MQ+HUkpbyMe/2yeVnCuEXQ2Bpm+GXxYuiQ5c/Ua771QcleIbCXYZt+jEz4bO79rx/mycy8wTyTZjwbBOzc8k0kal0lRa/AiYhxXMkcm3ccgThjGC/NqaPKCdbZMQY/daHG7xQjet8yUgVlSIXiVkkD7AC8S6Xl32YcHVSo+ejz2sscXArzlaqkj5TVTlibeSjYuHV0KeCblomfOfww0kflM+7kBFdLcTPTSbz4d6bSHY0xJXjWWzUyMjA5akKKdK2Y8oZOZlggss8GYXm6ppdfgmivErykJL6a2uQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XaYfIdxceEXpmR/a0lGiGC2fMVMki7Pi8x3vUFDxAeM=;
 b=NTZZNNBBGwPeeHKsyMYZi+I6eFJZvkX+aTNTjvV84bfSnocNNUuFkGy7jYXdTwtvZkTfUG1g5V5cXPs55XM1kJIxRAo4NJ5aVhBbbqhMpUF70fYtrH8nxBqomlB8wT9gh8bheMibSSsYOks4n/CQzYK+McMARTMMlqaX5BnRic5VI323Aq1tIosczmbXpnkuzgS8eTZb9Mj2XVbvkcg4q3KVMJc2Bn5ph/sn3iVUjOjVuVvpF8L5y6dTdEaFuAmBfFd/eUEjHzOTBGGlvhuxOwE1Qjfs3j+wwoobagEAH+AlpyprsQ2grCFb5lv74AJJpadhlbaqdbqEe8DGaD1zjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN2PR11MB4045.namprd11.prod.outlook.com (2603:10b6:208:135::27)
 by BN9PR11MB5369.namprd11.prod.outlook.com (2603:10b6:408:11a::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.23; Mon, 29 May
 2023 16:37:59 +0000
Received: from MN2PR11MB4045.namprd11.prod.outlook.com
 ([fe80::4d2e:40a8:ddf4:f278]) by MN2PR11MB4045.namprd11.prod.outlook.com
 ([fe80::4d2e:40a8:ddf4:f278%6]) with mapi id 15.20.6433.022; Mon, 29 May 2023
 16:37:59 +0000
From: "Rout, ChandanX" <chandanx.rout@intel.com>
To: "Maziarz, Kamil" <kamil.maziarz@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] ice: Fix XDP memory leak
 when NIC is brought up and down
Thread-Index: AQHZjvcMjCm51/c7/kuiNd3/5VjWbq9xeWKg
Date: Mon, 29 May 2023 16:37:58 +0000
Message-ID: <MN2PR11MB40451AFAFCE05760E5FC07D9EA4A9@MN2PR11MB4045.namprd11.prod.outlook.com>
References: <20230525105155.105870-1-kamil.maziarz@intel.com>
In-Reply-To: <20230525105155.105870-1-kamil.maziarz@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR11MB4045:EE_|BN9PR11MB5369:EE_
x-ms-office365-filtering-correlation-id: 6a016b34-8801-41d5-08f5-08db60630f88
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ej5uEtROk0++UfToyiynNbS10ndTnCiiN6qXgiiZ9j6sVGbgSYahWnnziB8zcGNMm6+r1Q7s/JVHok9uvKgepBz8Iya4vSFbdwz1lAXcenfpDvU3/L0vkvkPW2rDgVkaLrP1tN4EkqDEYbuiVBSFqEcB0q6wqsjVkpU6YhQXwdH58SJxuSKp2X7chXNox4a2UkeDQ3zdPuKBCCgMXAu72M1GZkCghv/XdGpnVGM/7ndv/dhf+z4CAAK/nWEa0Whd1WK0Rc7SqalwqJAHwfsmBRwCqhVG+EO3HtrWFdmiOoveskxS8yLAi4zyg0Nv1WHwgZU95NIc0lUdh9RM5/1kIIu5cr/QOFaERMzJnCLnXkGg7ugyYcOOqHY05glwf77LQAg0VhalosSO7NJwFA9UOwbH1ccLJL2CEgTt37pcgC1rD+8T9/QeHYINGQ9KHXPtAYAvls0JrrDK8d6l4RTy5L6VCQJNIkH7GSZCiPCUfHPMJc4hzD93s8nMnNp14/L47Fq3whQZJKde0zou+lSuNJyG5Bgqk406LbAvlNbuGMamp/WgpKJZ0Z0cdsGTkwo4WnFgDaxALfPmWIfvvwoDmn7h3FTnx46sL9npAmTVPDWvAJeKk4NtNCv2ICO1j6un
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4045.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(396003)(366004)(376002)(136003)(39860400002)(451199021)(9686003)(26005)(83380400001)(6506007)(107886003)(52536014)(186003)(5660300002)(82960400001)(8936002)(8676002)(54906003)(38100700002)(110136005)(122000001)(4744005)(478600001)(2906002)(7696005)(41300700001)(38070700005)(86362001)(33656002)(71200400001)(316002)(76116006)(66946007)(64756008)(66446008)(66556008)(66476007)(4326008)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HoNWycuZVeiJgiOBh7lyjUY187Q+UCeB/7wQkznvIB57SFtIQ3vauBKwydDn?=
 =?us-ascii?Q?YVqdqSeZNrNmyVlKnedd1P35z+t7P2nQqBuotplmff78j4x0PSri3VzIt1hy?=
 =?us-ascii?Q?Ph5swQfbS58W2PV5fmAtBPCvPR8ucTAM2Af+FHW2PY0gi0UW+f8FKdKN3gZO?=
 =?us-ascii?Q?awf6xP5hB9Bskg/pzjUz0MmEOOrOBteYxx/WVQhDvIibeyn9ymG5QRhuusaX?=
 =?us-ascii?Q?0AnbgaFO+QZ50d+4SZiRPEFelpW17ucwZ1sebaGLjni710ymg9QEFhbnlbtu?=
 =?us-ascii?Q?shTuOzUq4qV040lJDnagt/P7BrKrJRPy+KdkjuNkv/ZmsQZGdzHjzbkUM9Uw?=
 =?us-ascii?Q?YVjLOw5N7A6GPHwghNW60p0i60ZOKIIhTbDQYsV9A/0+thRvS/u9sS9IYoQC?=
 =?us-ascii?Q?MMQit7jbPgMvR1pxAX7Kjb9GEbWleIVIluGhIBvISjuZACe9YT5bB6N/OD2Z?=
 =?us-ascii?Q?vM0eTm14MQxjgYRSOxi8rLqO9HBQ3vkB/RngoXspdsxmIsE/nbNJoOJ5NQ4M?=
 =?us-ascii?Q?0SMLhxtWprHbc9BzjbN1sokjKOvuLOQ/QDu331gfbUkyr3zP1N/MCNSRYtFr?=
 =?us-ascii?Q?Mlo/apqSkDAN75HxO5tYcSLU2oyJY+05iQxSMMA9aLWjR7nSBlMHq0oFofgc?=
 =?us-ascii?Q?BkZwZymzOb1VNUvlxZtIY3vS5I2Fdk/KGfYyvHQWQbO5/Mbgy1Gf/SeSNeDm?=
 =?us-ascii?Q?56fJMf4zfa3mYQZJv1ndiGolZUxlSlSQuG6GBzPYdnQcNFgWFn/v0U2FwAH0?=
 =?us-ascii?Q?NMXcACCrL/znaiju7btcREEOsVBYGUmS/Q18mGeLiMIlIuNPTS9FnlT09/BG?=
 =?us-ascii?Q?ZwocB8NMJsVIaIHgnYPuryIl3MTypU9EHEj6O7TzL4sncqSaTkEesdut42hR?=
 =?us-ascii?Q?qMAS8TleRVv3NQnES3DcIm/+sAj5HAxEHx/dEswpLgh5OI2IdKSFsqrcF/yO?=
 =?us-ascii?Q?EjFhQB+teyWuZ39jUFAwE66K+Auyse/4/3bi8b/S/LX9016f/96ApW5yHCLl?=
 =?us-ascii?Q?v3FeAMSBCoyqGKS6nZFvJZhxYvI18IDc7hi4nk11aoTwmDEL6rgJ3MgZ5ccg?=
 =?us-ascii?Q?AyY2tTYQlificQ45WhoRpChaoGeg4SO3yPcMaNTmitDF+T4JRURmFU50ZTtd?=
 =?us-ascii?Q?Nh1CVGgAmRVN2A8NqXf0Wzwu55+UFTreF2dwn7i58z1+Q+DMRl19lSmo61R2?=
 =?us-ascii?Q?dnamwUKpIrv4JcLeA/Ctv3A385pjVNAQMw2XR7nJtP19HT9yqhp+G+USGNdP?=
 =?us-ascii?Q?BQPhorHW5cZ6fs2crd4wtRElBb47ZcHmao+M+wYsmB+hqoctD4rXlHQDyU5b?=
 =?us-ascii?Q?t52T3rMoNs+pjkmOeKbxEZZN/J97J/dQoyQDW2/79NAbcPGbkmoMHIsWrWvH?=
 =?us-ascii?Q?8GEwiCc4lZw10Yxx1Tp62qDZ2hVLcyX8uypQYQBZwt+fRu7hq/Ep756jKvWH?=
 =?us-ascii?Q?EUG3d3ypzYm+IYcwUv74CejLps9oAwhKXkd6vQBYX+DhXRH9a8z+jmMAU1l3?=
 =?us-ascii?Q?zrK8Pf7//IdzQ0GtciQLJvaj/nukkiS6Tn300De7G+Xu6zBOhoLB+ttInsmp?=
 =?us-ascii?Q?6FiSUFZAnstFgwNE3Jt4a5sGDlnHqHeN8wNck8jO?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4045.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a016b34-8801-41d5-08f5-08db60630f88
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2023 16:37:58.1066 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BhCKRW9aj5UYzhpsMaQPjruFPsTqleMUEWuDWt7Y/e6dybnW5HGcqeclnHJvm2EuV1/yw3KYFSnj0chk6R2qUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5369
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685378283; x=1716914283;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XaYfIdxceEXpmR/a0lGiGC2fMVMki7Pi8x3vUFDxAeM=;
 b=HGpDaThZyeEcTV0paWi19jnPb/QIfhbg4gx36w24yuEyMCxXv+9MwWLC
 M7PWR0N9GiByPoeuF5hPYbubgOSa3GHGtw8ktOyrdqCVWR0DRSGC2QVhR
 6veRTLCkXI6fPIKt8DImqGrsCnFrO3KUEcavsZjZKOKOFnPYouXgsDONE
 9eCdxzyHBKPb9XCcQQV6roQCYqAkZpCPXLoaMWqs4Il8ux88jAU52A/si
 YwwMi3kMT72mplrmWv0/zSHmsAZmnQcT8/7lqs2A8Ti2IuxdjpncGhfN9
 h2ApcLbkG1gUf6wrhXZepLKs371qx+/yY8bECvE+hALMS4BGgL9O1xaXj
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HGpDaThZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: Fix XDP memory leak
 when NIC is brought up and down
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
Cc: "Nagraj,
 Shravan" <shravan.nagraj@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Maziarz, Kamil
>Sent: 25 May 2023 16:22
>To: intel-wired-lan@lists.osuosl.org
>Cc: Maziarz, Kamil <kamil.maziarz@intel.com>
>Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: Fix XDP memory leak when
>NIC is brought up and down
>
>Fix the buffer leak that occurs while switching the port up and down with
>traffic and XDP by checking for an active XDP program and freeing all empty TX
>buffers.
>
>Fixes: cdedef59deb0 ("ice: Configure VSIs for Tx/Rx")
>Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_main.c | 4 ++++
> 1 file changed, 4 insertions(+)
>

Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
