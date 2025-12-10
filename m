Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 18F7DCB43A5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Dec 2025 00:22:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BECC4849A1;
	Wed, 10 Dec 2025 23:22:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4TS3sfweU4Nd; Wed, 10 Dec 2025 23:22:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3486F849AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765408920;
	bh=yVko/BAbuFooEwR7RelbrR0zhdA7jt0pdlvPkDv1H4I=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EmQk8rYYjROwx6vECMNwV8HiTLysvDpR/nvhRmUlj1BWlleIDdtwFaOgCs9mTq5i1
	 TuZX52E459eXennQkafUgkYrHzAKYa6XaAusjflX129ORmiwvieGn+dBXtWgEuQO6G
	 ShKgVf05h8pQ54A50rIZk+FpBA2avP5eik3RRqC9nF2N1c1R4VGTqgdzDRYs8HbBzQ
	 DjedEnSAcmom2qOYy5V7jBNl6bNhFwsUbXW+LGvbdXdfBFXwFt7osVD9iV15VCz78L
	 8P1QeokcuiT+Hue35BNXGNois9KupO9WuJPGNQI65ykYIE313VGbBc5DNNd9o7voMY
	 WZ/QqVHmiPVeg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3486F849AD;
	Wed, 10 Dec 2025 23:22:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 80C0C2C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 23:21:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 733938499E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 23:21:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QMxUgJ_IQQqq for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Dec 2025 23:21:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C738A84998
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C738A84998
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C738A84998
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 23:21:57 +0000 (UTC)
X-CSE-ConnectionGUID: kOolPH7YR3ecycc71KZZBg==
X-CSE-MsgGUID: bYxGg30YR2+gC8PKyrchXw==
X-IronPort-AV: E=McAfee;i="6800,10657,11638"; a="78088362"
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="78088362"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 15:21:57 -0800
X-CSE-ConnectionGUID: /7MreeAvRfmjz2S118/9+g==
X-CSE-MsgGUID: YX1UQS7MS9Ks1yIW9QtzEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="197129121"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 15:21:57 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 15:21:56 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 10 Dec 2025 15:21:56 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.21) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 15:21:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q3bQlk3+jitDAHvc76HbA2RdTHFo/bOsetXg4wBF3adKNegK4A6bxpgrwZYVIbb/3N/i+w+Hgwh7Yfw9Ydo7X8dCtF9PDxMFuLTTHr2lMPY+1r35gSD7qMsjM4RWv1vzyj9tfi4oWZR3ynQPhJyCDtv62rYjfFZTGyFI2tWYkoSWvd7G8pfa+ORwlf/VHGwZ8dYeYLlvQb/jTywbqGWQv1cI4muhBkVVZwoTgYFfBv7y+6Pxv0LgXiGkESp4kDHlKZWq57VuiJ+Oni83eJ8SBGRwptmG+CILevpKvLWWnM7ZZIFO+Ux7siAHLCd+RRPkoPu/SzzGSmmdidHeHeZOEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yVko/BAbuFooEwR7RelbrR0zhdA7jt0pdlvPkDv1H4I=;
 b=a/zcR5xPK/GWafCOtLsEMMWLemVZiwYtEZCnW4gpaPQnZqjlceD/HxecB3BOUSRJKwBzgcouwf2LQvkNz+GB/ISuMRrRmHLMgeh6A73fCtO/Qf3o7gH7+KyUa09FOeYOGKDAzuNBpe/57sT0mHy23N/s6B1EQsiMIVCFSP0M7cx7hq4RLb1Bya6wwkQhba+IpRHCZmckPnWID+F9TR7rHZZFmpfZPJiX0f6a0CfNfEj3kTCYb5cyfvCAyEn1FqcCH4C3lKzShucyPKtOjd0hSsSI1YPBJ4AmHdoHeXetmbbm7KUSZ/NYAxENkLPSSgt8jTwUonGIUg7Ps7vLbKENLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by SN7PR11MB7510.namprd11.prod.outlook.com (2603:10b6:806:349::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.7; Wed, 10 Dec
 2025 23:21:54 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.9412.005; Wed, 10 Dec 2025
 23:21:54 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v10 02/10] idpf: introduce
 idpf_q_vec_rsrc struct and move vector resources to it
Thread-Index: AQHcVDTm1DrcNUFwzk+D3C2LMdwL8LUbrCiQ
Date: Wed, 10 Dec 2025 23:21:54 +0000
Message-ID: <SJ1PR11MB62973B208E572CAC4C8A962E9BA0A@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20251113004143.2924761-1-joshua.a.hay@intel.com>
 <20251113004143.2924761-3-joshua.a.hay@intel.com>
In-Reply-To: <20251113004143.2924761-3-joshua.a.hay@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|SN7PR11MB7510:EE_
x-ms-office365-filtering-correlation-id: 96d53eed-dd40-46e0-4d0c-08de3842e81f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Il9NqB4AmmHo596dZfsoAxkVKfEKSQhm/VCThCmurTR5Vnf8Xbu4la3maaV+?=
 =?us-ascii?Q?vwFMiZ8p08i0fxAth2YZcZ6DTy7gVGMF0rDtasVKrgZnFcMBvk3b3ClSj8CM?=
 =?us-ascii?Q?3hs1sxokHHCG/eqnNh6jR5At7L+rErDD8Tsrv7CMfDk+hoA0Zm3+6VREdMNx?=
 =?us-ascii?Q?qS55SlpOuX0ZGk2Wr/f2AVaGvxaXPLH3OfxbJvRRJEO7FIP5scKxUZOZZ2DW?=
 =?us-ascii?Q?TTynOeDyvtmWqVzuK2MnfuAn1sfwcg4Degiby63vfyLiX3Md96hgZOxECHuq?=
 =?us-ascii?Q?CUjWJ8JwjRhMJkRdkEyf/xcfmEoJVaiH2ih6PbFiNOXNEWQxu/AHeI9D7nnW?=
 =?us-ascii?Q?fFKAts8AqcM+zqpBFtY+epbZbob4ae6kRgPY4G37bKOH2reVnTqWgzWuV/B1?=
 =?us-ascii?Q?Hq0ffmJqlg7T4d+DmdmT0aP1Rv36qyaLZzEU+TTXJaGwo1O1zjqiP/8UHO2y?=
 =?us-ascii?Q?IrGa3Bkgct3IK1OUk6exWuUlbVmduYs4G8l4YOTKOJuIWrJbtFs2mydmozkg?=
 =?us-ascii?Q?l9o58oSJUyn7IWyWSCtRc4w4w8wUbynpdbTASIbvxnS/xF8b4C4n+bxfJEk7?=
 =?us-ascii?Q?Wuouk5UdZ3hep5IaXTr+NBzGrFxeIxcddgwfeZHoB+eE2Y6/SeA3L4pw5Xu3?=
 =?us-ascii?Q?7hB5xPRUgZj4yCPtG+KwX8J8FmH02ZUw7LeEtpX1OdY6P8jrULGYGmRYeuOu?=
 =?us-ascii?Q?0heYKfjwBqZykobl2blJt+TQGhRAQ7CB9CGBxX9B04gwF5RzV+y+pVu+mq3a?=
 =?us-ascii?Q?gj5LZSE7FXIN281k2c2MJB0JEG7WsPnNxs2VSQX3FIMy9GHzZrvSfADkc5pN?=
 =?us-ascii?Q?5waqSBihlNVfmqw3bkmoNMViGI3bYpGyRpbXiejr1XQXcGz2T3LhH6poz9OJ?=
 =?us-ascii?Q?akgeEoTyBpWhlwRKfYjxLV8APi1HPwsqXVLc+giYlIa7EKuLcgSSrmkqQ/pA?=
 =?us-ascii?Q?hU+bc/rf4B1G8bPxqxhqkj95JbiHrRiX+UH4TXxQ5ARSfoCPr4SkMvDhDJrs?=
 =?us-ascii?Q?/G47Fh3ZyNKFe+A9paerbO76z7h5CzNGLSIJ2hPKKXU6lDuQvnbFV6tO9jSf?=
 =?us-ascii?Q?/MFTx5dsba+tiylt7yWAjHAibItEBFaE5KgKhPKutROyjH+hdKeCm/E3km/o?=
 =?us-ascii?Q?8j4tLBaC7ANJ1iP+3MoaVtR058DITUEOjLpFlyiSOTrdsEe6w6KrZE25s3FN?=
 =?us-ascii?Q?dx2l0mcdeyQ8hXPp19eZr9e02hVfnGhoJDARjw08IiUJMbuiYeLqiBI9I/14?=
 =?us-ascii?Q?EfKaDSwtRoZr5+krCLXNbnNXwitsrmILuDTiIQPH6LNRUjFTCfcFDql7NjN+?=
 =?us-ascii?Q?6A1jNaSMOyYpVH+lGb0xbPBVCPKHgAUYIblSTfW8kVuZHI827QUJdXO6lqWv?=
 =?us-ascii?Q?G9XnYsl6JMciUHz6z7Y9xSL8ljE5wPlK1Jfrb/mf+FeRtJIZ46eX8d4vsFGn?=
 =?us-ascii?Q?PRlg3U1wPPCfC+R/y16mCtnj4YMQdWz88i03uav1QjWNp8P1maCURkdZa5SP?=
 =?us-ascii?Q?PRKWNdcKtd1lydjZCQc5iK0a7vVhgRlp0T+n?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gag28aLrKQmB1hxZqas8qK6mZT7hat9X+SwAJr5yraFQqvwcpS4X5dwOPxey?=
 =?us-ascii?Q?9VUX2NoXv3kfn8PF+VcCb6tRjnNW8ajg0kp43A2S5gale3yz4Azp3Gl2y7SJ?=
 =?us-ascii?Q?6CUWmxO0TqugEuxvbBCqEFzp1GMabpJ7P7NOVOG7lkLMt6RYXIGZJCVP0lsP?=
 =?us-ascii?Q?6TQNlzMqT8Jae4oCfNYqk9vCCXa52ydPOQ8F+vCTLuNvV8RYPKdy6U5cdKO7?=
 =?us-ascii?Q?ZtfiKZwBkYAqO1lLo3taoZrAWuYbYv7ga/dVOzb54TZEOTcd8uVfVQ1Ts32X?=
 =?us-ascii?Q?NFg/L2xCOrKNSgt6iy6i4JyigP3Lh/zh8BPOfzpfFDRKLtyYY371ZP3LDD+0?=
 =?us-ascii?Q?mhSVeh2poThajSoldDaLPCRKv0zLsHTQW9dZzlROY7Zj/Td5bbxX+qTb6jgI?=
 =?us-ascii?Q?hGYirri5Y9gZf9mgG9VE5BM41NxPozU02AHSX3+U+i73l3jW+FUXqsqVuPgn?=
 =?us-ascii?Q?T+JQMqxaEEErrZU9yjh+8+otC3tjqGeIBTal6pxrmFxw0i8EmsMWxtcw6Muy?=
 =?us-ascii?Q?SqvxEXnAvmv3NEGtqm//nOncmYj2ddsf995Qbsx/dpktBiH7U44cZroudgkz?=
 =?us-ascii?Q?pFhlQ0vGut0kg2ZrB8H7l7g1cLpQ4qU27uF2OsIqg7p7wdRZttpWQ5rp4h5L?=
 =?us-ascii?Q?t+bersMg4kLTMsv6PzTIV3RJqzNHKIXUoEp11/9Os48yJoP+7IAB/q1amkYA?=
 =?us-ascii?Q?1XAcb0BMV90j/s1R74m/+wNGlMbPqzCQQYXjSA9Pa8BsRbAUqOHrEOQ+VzbI?=
 =?us-ascii?Q?gnkL1OJqPhoD/D4cwpxlXr0q8tFOBVN7iK6QPowl46zjvwc0fn0BJIxvOFP1?=
 =?us-ascii?Q?oGBb6rki7JLoXw4cvgWniEATlgybYe7xN1HjO/PLWgww+JLWHafTPviwMkb1?=
 =?us-ascii?Q?h2kLj7p79g7RQN/n+h9drr1v4zfEFgaQLxsGtDpqOQ4NEDHvlP5Vh0tTN/Mg?=
 =?us-ascii?Q?xLYnVIphWrH2tFOdfbaQicwcAXk1vAAZf7dlvJTD4BbJyqw+AWTVLqXHkgHe?=
 =?us-ascii?Q?HESwLU84ccw4lvonOaSY+4edZiqNWxNl+9b/4tzPlm2fMR1tu0ugcPfcu79V?=
 =?us-ascii?Q?LOzQ9Lg11YoWUzZhA8+MKH5lpSFWiZLGGi4oNzkWdg41qVDJSgSd0NE5L3vF?=
 =?us-ascii?Q?ZdeF/9WdJcrigMFwFnAiawYQdCDpr00JW/6Pllt4GZVTKGtdMQT4y79mqxD2?=
 =?us-ascii?Q?Q8es8uaUH3oqYcAmlxnLj4C+QxVMJX8Ody3jOmfLA1q4jXuiuxHsxkgY2p1d?=
 =?us-ascii?Q?lSomGojOEqbiIbDkMcswfwYiAvwjluo582gvAolB18vlvP8gnzthId5ny83c?=
 =?us-ascii?Q?icX5eGyYHuFG26QffINY21cO9dyEclRM7PAkY+5qVQvs6kgo1LaPaq6qAMNt?=
 =?us-ascii?Q?kILST1wKqYIziIsCQEMKw7s93MEZ+Qhrk3rkKdDhbOA1f04KPouk5NpUg5Ej?=
 =?us-ascii?Q?yT6eEuD1z4ByGE8lU10L7MRxLQmayU1sjzVh0qqPktO1JSi4wJI3ziJM8TzN?=
 =?us-ascii?Q?2BC7dJxgohDz+tT1jxxcvb05wpEqMgumyoTrl0pCp6DtcuEFhYiZEuC0GEAd?=
 =?us-ascii?Q?iTl0s/O+6xdI+rxX3tBVGZr6AzgDrdoG1Z2k0gDe?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 96d53eed-dd40-46e0-4d0c-08de3842e81f
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2025 23:21:54.6017 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NDIc3OTszYr1F3cPBiYdKtwpouYprGQMZjOH7CVVDhCr9FB9fOyGHLWWdLy0rtvinXULQQ12JWb9xYZIsLB6aQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7510
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765408918; x=1796944918;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yVko/BAbuFooEwR7RelbrR0zhdA7jt0pdlvPkDv1H4I=;
 b=iamvmKzQ2SbHKYt2pJJDHR9aWzpMLl5RbD5ueZsDs5RAjGjIDkDqWWy5
 ki8KZ4lIsYWcf/fLNMmBMyr5noh06TCdzW6vs/lP8hk44WnrjwA4Cgqmr
 oW8oFOoJMqpaIbereRLe1s5FFQ0r5m4/M8+1xncDBPBp048mNKKg31S8b
 Q+85KWsq/62IW12abw4ePO4rOiWtGzD7BegezvkKGX3MC0fJhPzunvf2K
 QKLYY3imQhlQcSmclBbb4YmX1HYAT+bUgn3jYjTvHNlQFPB91vTv3Kjb2
 hH1INNyPVyj8PdUS/jdvLJXSdlcNtj3N54Xbdt+dvfFz4KpX1Jvx8npkv
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iamvmKzQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v10 02/10] idpf: introduce
 idpf_q_vec_rsrc struct and move vector resources to it
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Joshua Hay
> Sent: Wednesday, November 12, 2025 4:42 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v10 02/10] idpf: introduce
> idpf_q_vec_rsrc struct and move vector resources to it
>=20
> From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
>=20
> To group all the vector and queue resources, introduce idpf_q_vec_rsrc
> structure. This helps to reuse the same config path functions by other
> features. For example, PTP implementation can use the existing config
> infrastructure to configure secondary mailbox by passing its queue and ve=
ctor
> info. It also helps to avoid any duplication of code.
>=20
> Existing queue and vector resources are grouped as default resources.
> This patch moves vector info to the newly introduced structure.
> Following patch moves the queue resources.
>=20
> While at it, declare the loop iterator for 'num_q_vectors' in loop and us=
e the
> correct type.
>=20
> Include idpf_q_vec_rsrc backpointer in idpf_alloc_queue_set along with vp=
ort.
>=20
> Reviewed-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
>=20
> ---
> v8: rebase on AF_XDP series
> ---
> 2.39.2

Tested-by: Samuel Salin <Samuel.salin@intel.com>
