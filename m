Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 067A9821332
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Jan 2024 08:50:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6398B8125F;
	Mon,  1 Jan 2024 07:50:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6398B8125F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704095457;
	bh=miGLM2UHAQHGJZsFYUtXNYVv0Z36pRW34eWwQuMRqEM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Kh2mR2hqke1D17lnS08O0EMu8c/Ku8vxWk/df/0rWGqVryoi24kJxpUIZqRpUaLGc
	 Zk02D6fCB04XiSpnqSL8+ZE0fLxGq3s/Fq88kByoyHE2LzeaFhFOyXopQcL3YQ+a9N
	 rbNkdjbGWb/MVurjvdviyhSoxYJlXuV8j+l/rFVBhtlKftqrIoKV4ZynuUKnFNCVWW
	 5UGKkLyARfBsNMeQARvtvl4JO7Lqj3U2m75crkSBa1oLFULwB4CYxcxPCQnVuSDkI0
	 PjI46qZx6Gzgf9d+KNBpyE7TUZooO32YN1gkQ+ald+t8xxixOckR285gIKKep7Pv63
	 9mH/jmlxt2qJw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 95TRaH8gY5R5; Mon,  1 Jan 2024 07:50:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6DA0C81266;
	Mon,  1 Jan 2024 07:50:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6DA0C81266
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3394A1BF3EA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jan 2024 07:50:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0BD1F408DA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jan 2024 07:50:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0BD1F408DA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YX_Ct7EP3lym for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Jan 2024 07:50:49 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0C6BB408A9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jan 2024 07:50:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0C6BB408A9
X-IronPort-AV: E=McAfee;i="6600,9927,10940"; a="482957853"
X-IronPort-AV: E=Sophos;i="6.04,321,1695711600"; d="scan'208";a="482957853"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2023 23:50:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10940"; a="902817817"
X-IronPort-AV: E=Sophos;i="6.04,321,1695711600"; d="scan'208";a="902817817"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Dec 2023 23:50:47 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 31 Dec 2023 23:50:46 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 31 Dec 2023 23:50:46 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 31 Dec 2023 23:50:46 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 31 Dec 2023 23:50:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jwuWYP1/jtXuXxdYQ0wkX+/tqsCGM9usQkpx5VgoHI5NnWZVys9iOOqOm3YLnk9svqItEZZpcXWPqMXzYAwuH58Y6KC0SfzwoaGVA8mT7CFLX23y50iP+cDLwLGKrer3TYy+ArpD0jwnkSIAv/kMV/QAKeWfNliM6fflP7Wq+I0XM8lkvAv8ssM/zRtdSzBYP5t0Ebe7YyG3+/0OMhGyOQJxm1ZaIk1N7vwfAlWgtmy4Lr/v8/o9d2EVIu8jlSmKK5QM+6FanBVTaz5lKAM1b6qOxOailAL0yYIS+ab+ToxM8GmI0BLsekdP2czZO3wqhlHX9/dDBcf6I7ZNuJHo+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=miGLM2UHAQHGJZsFYUtXNYVv0Z36pRW34eWwQuMRqEM=;
 b=ik4jNOH1Z0n0dPkVSRAL/kMvKTD2qBmfyWNG1pgZsh/hbZuwrK2JkVTVcoQQDuixJOHHUDjxMBU2RO/MpdJawJkVZalfKTUdsUBglagjSKVZ+2dnO0fK/hq1LJPgIDPN5ZmUWME+y1YtAHTfpyqcyWfUwDl6nSHxraA5jNU9QP2wxCU9d+7rIU3lKcSRKUgY92Ni32oF5KGuhGZulTUg1WLLb2HCrJPWKgAlr/+j454B5SGfZI2QM7i5HH+SKr+f6A2zCWzE/p/5UPDA7y+cUiZXBz32Dke94bmSfEU9aux4rLWlREay66yyhlPowxJmqB5ehEaX8+kDKh6jZL1quA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by CO1PR11MB5154.namprd11.prod.outlook.com (2603:10b6:303:99::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7135.25; Mon, 1 Jan
 2024 07:50:44 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::159c:7c99:e99e:a3b0]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::159c:7c99:e99e:a3b0%7]) with mapi id 15.20.7135.023; Mon, 1 Jan 2024
 07:50:44 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Greenwalt, Paul" <paul.greenwalt@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: fix Get link status data
 length
Thread-Index: AQHaNFe7a19qkALsDEeMRzr4W6SXk7DEpT2w
Date: Mon, 1 Jan 2024 07:50:43 +0000
Message-ID: <CYYPR11MB8429F4E9ECB666196AB8D200BD62A@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20231221214028.515105-1-paul.greenwalt@intel.com>
In-Reply-To: <20231221214028.515105-1-paul.greenwalt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|CO1PR11MB5154:EE_
x-ms-office365-filtering-correlation-id: 63a00298-15c0-4b7c-c13c-08dc0a9e5b7a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ygE1X1k6l8Z8esJmsS2Y4mHYJ+dezICtrb+YCYzNxjMfkh0Rrr2jPr5M3a6ZPDh3AZ3KhdPDAe+kLznTzOXUa1iuMsBGN4k3Jn1xLJv1Z4TPPyGNESMY+P+kfv45tbuFMXR5V2F8hBIvwR2cKtiQCqdWrjTNdpbcRzLOKq7ccGWnqfDOKlu8XcB4hfthvyXDmHL13HY2PvsDZgWK75TqEkiB1fX52ZxsEG3MmwlM8hz26MNtrcXpdlLq4uHaTTRiuadgytzzfzd+r6Gnbfle1zZIhHoWQ4Npe6RmuIGvgZey+VvqPaeamd3OEt3IEpUGAe3IQOfexfExusRXFcIBe1sHZFKUVt0XGgw+jW5DD44Wh7LApcHFWbbllvE5sE/UTYeNLHJn2ieNvJ4tMbWdd8mQDjy+9xMi3E4d0hwiUB7tSQCsFPsRAgTehDzAEV/1G1Wku+dJ7wr2V26ZkHkihErhQDZKRpq6tW+hU+B0bWjMpqjNe7A2lKVU02dh9dfQU864fGHF8+QBdUba6jSSC3FCoW7561VsKAZhfjLQHDYdco+5VhGRnSAvJKiJFV9VxqejALsgnLV6o1uBFcB+n6jOV3UFjlAdaqkgx16lQma9faBn9OL+hUoWVZpAMUi2rtz1fYEx0bOL1TdOv6OZdxD4jSOwjH8uSR1g06d72Uc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(39860400002)(366004)(396003)(376002)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(55016003)(107886003)(83380400001)(26005)(86362001)(38070700009)(38100700002)(82960400001)(33656002)(4326008)(4744005)(52536014)(5660300002)(9686003)(53546011)(71200400001)(6506007)(7696005)(76116006)(54906003)(8936002)(8676002)(66946007)(316002)(122000001)(66556008)(66476007)(66446008)(64756008)(110136005)(2906002)(41300700001)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RJyQiNO4qKOD/5WqW8N+Zx2c3IU4FJt94AhJsrB0/9rNOau3cupJyALx0BCu?=
 =?us-ascii?Q?TEWCb6IH+p5NxOrMmzFqR+3IMCpyjC6WsPi+nxTT+rvKg8JlByXww9GcYnsi?=
 =?us-ascii?Q?xgkU3J8XnT+peblCRSchlne62Fm7IlXyy45oYzFlW8WeLeNHLNxYUPjRKTm0?=
 =?us-ascii?Q?s3AuFBjA6+8xQ0Kwu83HxkjT/SsSFfI84z48nXP9Vm9CpuKb+2sC2l0Ell9j?=
 =?us-ascii?Q?BIfYUz+BBhzaTOcLtf1KKVT7IY/4YVZ5vRcf+bWQV+pibB0fuVtVhOKpKgct?=
 =?us-ascii?Q?6ZLe4OaVFBTWwbaIRP+zTCNY/i8p3a83nRsT0R531ANiyqFGMAFSSthtOpSP?=
 =?us-ascii?Q?N4q0g9gWPomRYiyPJAVZUxL6haUQkoyi6HU4GZvEOcxZp7MU2Lply2H+jOxF?=
 =?us-ascii?Q?ZuI3Qw4XbqnIcgClYsbyE+bVFkkDKBWFSL78V62CnJDNN+cWO/XMVGldq+E9?=
 =?us-ascii?Q?B3ADWT5iVhADeF4YqC7QvbecuL+Cslc5RQWLIYVqZgHDQ3m7qBUiKUv9mhJ9?=
 =?us-ascii?Q?80yEAa02462LRKXIXqlNSOLinla3swcjKPQwEFuHX1KBdu45+g5zeBv5xCLc?=
 =?us-ascii?Q?lY8JCv9C4GLZEsGwoFsCYh7EKLdtglpqZfJxu6NsSAhry3D6aMCD6DWG9KtB?=
 =?us-ascii?Q?qtGiwHihElZsXfrqDhXCoFv08/2kkZdep+rY6xRC/DQxJ9fMWMeShN061gwp?=
 =?us-ascii?Q?vEsm1evjspbtRxHVkTaogrTPre7K2jpLi/j7lUwRHSXjapnUhdxw1pLGLWQP?=
 =?us-ascii?Q?D9BJfbU7FjYrswHpFiE2m3GU+UT/3/YAQUHNUFbDjwpf9LD/mI1aOnUOIWZq?=
 =?us-ascii?Q?+gx8KDB7WJDH2+Wj27aXtKC4WSM6BD6XJoXCVGuuFk73f0KWpYQkQAL6OsgB?=
 =?us-ascii?Q?XWMj9tAprnIosX7QQjM+I1enUJJU30EbodLY3zmzk+AEpbagqDPEb9QdNNj8?=
 =?us-ascii?Q?VmcPOqcZ4w6N/P3L/ibUWkMxDM1EDQnHynA9KGWuxkI9xWrcZVyfYYG8kvKA?=
 =?us-ascii?Q?JgraXqXCKYCU/sPeSnHX/NOdwA100tpfLIT5Z2ycgQti7lxoBeA3Ggp61VvR?=
 =?us-ascii?Q?f+Eo18UAVmIlsFN7+ruOweSFROwjnUoAtrgwy9RZqjk14ukegEA3O2Qf7ASD?=
 =?us-ascii?Q?L4/UfgQSKMzFALUE0YIiMHXfuJwXUMdk1vX0cQguuHnRt0f2qTk2l9Wsbz8w?=
 =?us-ascii?Q?o1CDKahu2yPiYa+b2PhAizyJrQWU2pCwiO+9w64UoQM86VRJ7QtqO+CgHXqh?=
 =?us-ascii?Q?86lPQKXr97T9LpH38MxoC5LVfG34DppGZQZSKuBX3nD61/V51CL7WNzxD9lb?=
 =?us-ascii?Q?i/PkGJiiZYiy8PMOs0j/d/ym1enOiSBaoS7GQrQcsh3jVCtndRC3azfczh6H?=
 =?us-ascii?Q?PgsoL5t/TLJWXQw9ZcXyoJktGo0F7gC9u4lJ5KYijYYfnQMLzCPhePxqEAc+?=
 =?us-ascii?Q?Y9K8UNLH/31GnBtobBLq234+1ovpk5e1jqS0yTaTLLKwKJobW4QfYX142rGp?=
 =?us-ascii?Q?u4ch4G34UNSIfHaMW6lT2B/lpKR746ZCHI8iDUCb74u0evkyg1T3LBHKyWBn?=
 =?us-ascii?Q?XCReFzRxt8E9eRT0H4dt4ArMn9q9QhOvdMm+JMR4IOLy/G/vudHm22rILnKD?=
 =?us-ascii?Q?cQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63a00298-15c0-4b7c-c13c-08dc0a9e5b7a
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jan 2024 07:50:43.5382 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mqblzwn3R2T8Qkc1CAQhnjsvShfysYV9bvxiC5Du4zugj3l8q7UsSieiYM+lxifTr7n8VsJt7EHh2hHfOLlwQGLYOZ7/FjxUf/X8wJgQ/U3KS3fO3ztihIxzfcXFpJmZ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5154
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704095449; x=1735631449;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7ceUTFb8qvt5HvuI+tOzWUn4LqdLPdDjh0UYnfrFMwM=;
 b=U4nea2tS+EFcDqgW+s7dZsc3VF8bdvVNismcE8jXbwspIHfiJBdx9OH2
 USw7dFgNOdNcZIiZUcQ/rPZ/A4qFpBlkofAL/+ZIxniEe8rVM9UwwQjMp
 ltaFW1ZGotp3YZGVK6k2m5TFaiNRYE7ZnSlRSxqOxUzsiaKjaSdsMzkl/
 UMj8lkZhGZ8OL1FZ35O4ArL7UFDesr+abK3iWyk+LwppNNVsFhhhp/dlt
 fdP72XUY4dQiaj+Go39JBcwJqNXl/UzVnOMCuFzUIbU8Q4+PNTC6XVUsz
 vCOncDDk2d4V3edeAnMx4F9FH1Tkc3wX0FmDLP/vs0FvePj92ZvYBoXAz
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=U4nea2tS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix Get link status data
 length
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Greenwalt,
 Paul" <paul.greenwalt@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
aul Greenwalt
> Sent: Friday, December 22, 2023 3:10 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Greenwalt, Paul <=
paul.greenwalt@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix Get link status data =
length
>
> Get link status version 2 (opcode 0x0607) is returning an error because F=
W
> expects a data length of 56 bytes, and this is causing the driver to fail
> probe.
>
> Update the get link status version 2 data length to 56 bytes by adding 5
> byte reserved5 field to the end of struct ice_aqc_get_link_status_data an=
d
> passing it as parameter to offsetofend() to the fix error.
>
> Fixes: 2777d24ec6d1 ("ice: Add ice_get_link_status_datalen")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_adminq_cmd.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

