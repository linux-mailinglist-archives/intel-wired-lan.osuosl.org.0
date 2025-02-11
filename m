Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A87C4A30B5B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Feb 2025 13:12:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 047A54057B;
	Tue, 11 Feb 2025 12:12:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q0HDZPuzbJSS; Tue, 11 Feb 2025 12:12:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 20DDE405B9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739275972;
	bh=BdUbzhOYDDTgJZ/cI7u4qABdKMBxcOdCxJEpQCqPL+Q=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hm8sdCBDa/4WwuIy+KM+Iiu+Fg5Ecz51zUB+UVjoXQrusC98wkeFik5Q4ztN3Pm0b
	 OwnspFtH+KxSnqK7stQSXZyeqf6Jb28m0t47WEswWm1npIuRp82p+OM8VkXZND1ZsP
	 vVLV543O+DRzXqn78Ln6H9KSeqNLz68tgJC3OorrPkcCdLwK6oR+2F4C+Hep3CxFdH
	 Ki1c98R42hKXfOEUkG0aWgSWAB2FXej9di+NBZCY4x9vxS+7M6wAoIPBInR712c9db
	 1PHGC1fa4wInY4J0qjJSw9IF7ivW2BVNuSUo2zghWccRs7AJDX6ag6tfDCAljFOyau
	 uSGl0xsCoFf8w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 20DDE405B9;
	Tue, 11 Feb 2025 12:12:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 21F75194
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 12:12:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 04B8A60AC6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 12:12:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pyyJIP7jx_K4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Feb 2025 12:12:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0787060822
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0787060822
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0787060822
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 12:12:48 +0000 (UTC)
X-CSE-ConnectionGUID: g+s1izZCSp6oV3Kx1zInWw==
X-CSE-MsgGUID: OgACXqiGQ4mvYoorM8a/IA==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="27491115"
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="27491115"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 04:12:45 -0800
X-CSE-ConnectionGUID: cm9zkkFeTZm+8A3AkWDH6w==
X-CSE-MsgGUID: zQs07vaYQQunQ9yqYVv3DA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="112977904"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Feb 2025 04:12:45 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 11 Feb 2025 04:12:44 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 11 Feb 2025 04:12:44 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Feb 2025 04:12:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nuyQpVBQ7vc84344Zmdj6c6RbM6bs73eOfHeG37s3p0L8dIxdyyYVfXlKFHGkUBphgqDEYRUH0G0hASClM/idm/3lCuz29cw/qCoC7wHdAMA3ChFCgLppWRvsDNWP6hFvwjwazEKxrD7vhTTuPwXPr1jkdjN+Rglh0GW9JA4mSwuc0VzhTvean2ZPKJhMKNTjEXHipO9eSRmoBx21qpoZrOPs0RiwqyuWlXCIpPxVBKcAibYBumsLcze+QrA0I49c3neSUL8FBgCbFcIALS8YepJLcS2romeNtg4mohPkhQN0qiyaQY8D3yw1ifpOWWueT6Cu7mNRqY1UhySU1hhbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BdUbzhOYDDTgJZ/cI7u4qABdKMBxcOdCxJEpQCqPL+Q=;
 b=mxD0XU1mn0Bj0G89t6c4xANZPIutmNm9twi5aNPgGONIG815ExzHMpAgTmbH4l7jOueLFpU7iqswd7gcFx/zd1T6ucFn3oBqy2LhS2Zh9lWd3Ku2ngCQ7at4aBrWb5YY3G4pc0DHX5E0RE3lhFEaZXWR56eaph0d9M8qSrWkEGkmj8Awx/EqvXHh8aGue51bMJRe9h6/wgG/xtO4hS4cUbg+r9BlClcjUojIPMKMhCZ9jZF842ibWJQZfSUpFIipd6RWndGjIFgECnbviGPCPlRzIFGTIguNYzKgRp1r3vLsf2fxZDZeXlhNvEb/R2V8Ia7kkZ1AUqob+LBCmt4cwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7785.namprd11.prod.outlook.com (2603:10b6:8:f1::8) by
 CY8PR11MB6915.namprd11.prod.outlook.com (2603:10b6:930:59::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8422.18; Tue, 11 Feb 2025 12:12:13 +0000
Received: from DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::7a4d:ceff:b32a:ed18]) by DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::7a4d:ceff:b32a:ed18%6]) with mapi id 15.20.8445.008; Tue, 11 Feb 2025
 12:12:12 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: Jiri Pirko <jiri@resnulli.us>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "horms@kernel.org" <horms@kernel.org>, "Polchlopek, 
 Mateusz" <mateusz.polchlopek@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [PATCH iwl-next v2 02/13] ixgbe: add handler for devlink
 .info_get()
Thread-Index: AQHbe8WRBpDizRwElEK4y47b31LHBLNAuWmAgAFLPaA=
Date: Tue, 11 Feb 2025 12:12:12 +0000
Message-ID: <DS0PR11MB7785B1EF702ED5536D4B4CCBF0FD2@DS0PR11MB7785.namprd11.prod.outlook.com>
References: <20250210135639.68674-1-jedrzej.jagielski@intel.com>
 <20250210135639.68674-3-jedrzej.jagielski@intel.com>
 <bxi2icjzf37njzl4q5euu6bbrvbfu2c557dksqtigtegxcnowo@yyfke6ocrtpf>
In-Reply-To: <bxi2icjzf37njzl4q5euu6bbrvbfu2c557dksqtigtegxcnowo@yyfke6ocrtpf>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7785:EE_|CY8PR11MB6915:EE_
x-ms-office365-filtering-correlation-id: 2723c9d4-0031-4576-7b17-08dd4a955133
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?b133BC8SIEwTK3ME5/KHPGIaanOiiNlm0AhwglYnWzRiT7HJYyjTeteElP7r?=
 =?us-ascii?Q?wqxQcR9E0dIRNtWBCQrUAHytpNsjxQjQjbb9Ziha1pPUBay6iLNTT/qxhys7?=
 =?us-ascii?Q?ectK31Rc6Rxc5ok+32XqyzOnsQShfFhCZ2utL7AZiT90cHrazjsgnXz3QNrT?=
 =?us-ascii?Q?++hDrFGUtDo94afEBCXqeU2B69KnfcwzPxpq6XRiaQkuFdgL8Xie5T0wtRy2?=
 =?us-ascii?Q?HgbKhHYVRN8FOHnM0JdYiM3YyC0Lrx/1jNeshv/EaO6u290oI1pV9uIGRZRU?=
 =?us-ascii?Q?4pfMoj0x6L14U32eg5MPfmRxRA0MQJ2LounoMHO/trwzmiuAko2zQOZDXsxR?=
 =?us-ascii?Q?oUoSijE+ZIU4ZsRhFnhbddVwK9vCKPSwROQRdyqQox/kIUblOQj5yboWMpLN?=
 =?us-ascii?Q?UfaTHTnz5guBA+KHPFy6t7sBg1crvWxm7Mcr9oPwS6n9b+JcQJcLWJo0NbiN?=
 =?us-ascii?Q?LbMcO1mjBRrBg89hQ8yYY/V86M/U6SWOfJKkgvN9QKWanBwPHz0wjLR9IhDi?=
 =?us-ascii?Q?N9eb+nn0/kiiqbguq5b1HJT+9i15sj53wtfIqKMtsVaBjY4f3iRLemCULDXV?=
 =?us-ascii?Q?gWom3vIvxbaxWqUF8mKbZE3Z0R/+MZP0qc/+5Hw1NVFEByvwxRdTmVLBhLc9?=
 =?us-ascii?Q?HRWbff323Eq49DcswNKC7CngRPWkT4Xo9qrE3q7EjU0rWryZKZCrxXE6APbq?=
 =?us-ascii?Q?7BsxmrC/Ax6YgJO79B9FLxNUyxT/mtWEZB8Z/hsicBL6TFDojKdyIipSgtk8?=
 =?us-ascii?Q?jCDX39moqGLucWBYlsT+E3Dx+PQHSawojnP/hyaBwOVEzU4Yt6id5qYRj+vy?=
 =?us-ascii?Q?0xODlaW7F4NKLAfXBS/XJULSQZphS1C0O07Tb4YuzQ7jcWEeWmkLIi5Zow51?=
 =?us-ascii?Q?9beK4Dqonf1u+nX8dNBGZVaY/q6PK0tjS6J6+gTNa4Kmff8OZQ+mVj0JiLdG?=
 =?us-ascii?Q?X7+744YOQimqExZRgBsg14tz8Bg1XjGW2d0Cz0p3ipEPA0fFvRkA/I19ZA4+?=
 =?us-ascii?Q?MdBiIjzxCkCvALVDIxVnMTkE4JQM97ifiyHwBfeR55nE6vmYaIiftVvh+kff?=
 =?us-ascii?Q?cqaOiHSVQPdZbMEIT2RCiqN1qZPjRqZebpLTZ4PfcU6tttJVvCdvANIDnkj+?=
 =?us-ascii?Q?c8ZcDUOJz3dM3hjHZtOyNciiNJ6qEgUJ2ZK6KuurSN+D3kySNTHpRs62pOPx?=
 =?us-ascii?Q?m2vNljPpNQwQlG/dY7PNNEFE9gctJRBiZm3bIdSJNOt4bmcRbKtGDhGC6LE3?=
 =?us-ascii?Q?PGTKTauf69W6LWis7yoMlnMlDJbJ9FmhANs3IDFmrWdvBrdQpp8Ke35RpFhZ?=
 =?us-ascii?Q?RsCwjqFZO0iKkvLjd+GqYB51Jwmubkyu14r25EBPctlCyycyCbaUnVklVpEJ?=
 =?us-ascii?Q?/JG3W0VP9+YthQFW+iCuzAxsUuw1kYBojmWzUyuHnN6SaCVRUyfYPE5EWsGK?=
 =?us-ascii?Q?Y2oD7S1uiCwwTzbG22I8rm4z7igjstE3?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7785.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7JHYfj+yzgMp/QTZ2/PLX3y0XXAb5PE731AXiNd/BMP3iLPbmatBWXCg8J6C?=
 =?us-ascii?Q?RUhc5EVK0ayeBgxJpkkPg88l/OjAGJJKwVEh87f6gUunyD+5m72gFUdC0TvS?=
 =?us-ascii?Q?SUh4sRei39bYuy1ApAAUIiK8b21jCjCSN+aageNzKqlRuwVehHDEqCMgF6K1?=
 =?us-ascii?Q?8vE4IgXNCUhDp2p72pt4NPGQTOnWOKF3kdvqG6Jnt1FLY2wYYu/QqkJT6zBx?=
 =?us-ascii?Q?w7UhSGpRUXXhNnrHk1znZeQcXmzjvvk22bvmVSwBZe9yUYSROfXEcd2jN3Kv?=
 =?us-ascii?Q?2q6PL1mmKnng7lv279wFfBQKowUGTOERmyreRmvANLjphpeMQy6EyJU8HDve?=
 =?us-ascii?Q?pU7RiNR7lX9mCMsQSJLwFlV1aEwEHzmjqI8qkFKjA7WIollgOOB+0H1arX2M?=
 =?us-ascii?Q?gy+hv5kYFajKPEvdM8iaEr08+XJwRGy8afvYZjGtk183rLqENctBwjw/2JB+?=
 =?us-ascii?Q?tNJ52rS4h6VPv591AR1VOyciCgQjgOVw47ZqY0nt5zPw4iXM97WHeRc2IxY1?=
 =?us-ascii?Q?8tHHnCK7L6cYkZqRKh9Vt0Evb+xy6TGEDxYKbnOwQa1i5dC1+tQObuGP5Cg1?=
 =?us-ascii?Q?GzE3DGxw1TG0Gb8Wu7KNDdRBlWMHnLEPK178eaJ0NfxwPU97eO/hDkmGTHC+?=
 =?us-ascii?Q?YpHjsL8hqf5DwS/7AyaP30zS1q24PUKjO2tGXIpvUgctT53VLhdRlCgyaUFD?=
 =?us-ascii?Q?mpXmEkU6jTMPJykdeJyZq6ZKKyADYjoo2HoKXgKyjmbxplllpy0qn30R4rP+?=
 =?us-ascii?Q?BnCBNTtU4Y3UIOZdV0q7HMHtEmsM5ttsZQ0Z0cvnC2aGl/yjWob3VUsOFJXe?=
 =?us-ascii?Q?Ufxuah8Ug4fKVYBCmQ7dssHWz9lQ2bTOFHOX/ltm6qW2Vb8g5mqszLp695Ni?=
 =?us-ascii?Q?U2CSJSP5mOELTbZjC3Ej1p56QZcprmvnu4rQgbnNmFLnuGFxyYG43LcHsTZG?=
 =?us-ascii?Q?y1y/q/aKbW4xUPzAyxJEuJwJXsbhCtsbH76WUkgLGR61UO6XslfPOIy0sf1M?=
 =?us-ascii?Q?7UhfDV2a7kwNO8+5JZ0VbkHlO6QBwyaQ0fPGFy8e2W6Lpvtfzr0u7Dv5fknX?=
 =?us-ascii?Q?wicVjYZbaqbAegsKIJmNaf02V8DnZBbcMI22aWQNQ9mu1mnAXYYV4VZ9yFzJ?=
 =?us-ascii?Q?PLuUO/1IJy3M3Cx6z5HFXYdeBFAeS+N85AC9592szKKSsGZwLW4Jtiys26hg?=
 =?us-ascii?Q?3IdylS7A94wLxCoqvWIat3zhUGgRhmfcEvzMv0fmaKPLj/4zzETidi6410AS?=
 =?us-ascii?Q?B/n7gM+994OCkzpKd2AxuT//+YNQcEPmRuSUiJxhsiqO2wl6JNcRY5xhAyR3?=
 =?us-ascii?Q?4wMCaiZ16Za8S969b+Mvhy43jUuIHt6Yzq21Vnv6GcUnDmvl4gE5NtX4DJQP?=
 =?us-ascii?Q?N3Ed/VxeZ/Vyl+HdEszK1JjYFONaQ9pP7Vo7wfzoooKfKvrFcc5DRhbApdNQ?=
 =?us-ascii?Q?oVRiwoHpPPBc3jNzB/2gu2duvCghm4ZiM2QGIcj3HDjrPWG7wEW3q637Xx1c?=
 =?us-ascii?Q?TXvEM3UZP30o0Ldr/mDzsMb0YsejeGOSwvf0aB7qReQDvSg+iphNnK1DBhsw?=
 =?us-ascii?Q?jUJZtD+72FqU3VIvrJO3T0l7nsZmQFfWSMYFNLLIn7LTC+eh65pVydos3CCr?=
 =?us-ascii?Q?PA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7785.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2723c9d4-0031-4576-7b17-08dd4a955133
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2025 12:12:12.8827 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nnfdO4tNkg6wo02HDZj4w+D4ehmIOI8ZbZ0QSZ3vn8rgbbWQRZ92r7bpjT/BsiiwN+sTIfhAd4l0RarS/h/PQcbWhfuu6llT2GTCfpJKFAg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6915
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739275969; x=1770811969;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cjrcCEIq8FD1Ew0j3wDDIS0HgWH7NrvxalwDZYqhCxQ=;
 b=k6TqyeUyiAJ3RdS2fQ11CrBGKM8AhtCRVYxxHceYgAVfYnZtgf48WqGE
 MiA0SNBUH/EGxAAHBw+8JzbjzlJDpM4p7fkAGLQ5x2EDFhwNzu3k+3vER
 B0QNrmYF/taQwBgIo2u+LQKstpZnGVOsgQ+WXT6TAAMXpLjx+bhSbXBOf
 Wtk/vaJvEbjKuksDX3EDZdC1CAPE0YrwuO6lgaK3JZFPcCsAcZSY7rcvF
 rnGZL8+0nsjvpKQpxGP47aqcTEtyM8o7pZBVPnEs3bR/qb9erReIm1vI7
 N9uM1UjPl9rdW/n3xS68ej0MQZEr7fdQvu15ymHETg88mS3hDOivZQf6T
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=k6TqyeUy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 02/13] ixgbe: add handler
 for devlink .info_get()
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

From: Jiri Pirko <jiri@resnulli.us>=20
Sent: Monday, February 10, 2025 5:26 PM
>Mon, Feb 10, 2025 at 02:56:28PM +0100, jedrzej.jagielski@intel.com wrote:
>
>[...]
>
>>+enum ixgbe_devlink_version_type {
>>+	IXGBE_DL_VERSION_FIXED,
>>+	IXGBE_DL_VERSION_RUNNING,
>>+};
>>+
>>+static int ixgbe_devlink_info_put(struct devlink_info_req *req,
>>+				  enum ixgbe_devlink_version_type type,
>>+				  const char *key, const char *value)
>
>I may be missing something, but what's the benefit of having this helper
>instead of calling directly devlink_info_version_*_put()?

ixgbe devlink .info_get() supports various adapters across ixgbe portfolio =
which
have various sets of version types - some version types are not applicable
for some of the adapters - so we want just to check if it's *not empty.*

If so then we don't want to create such entry at all so avoid calling
devlink_info_version_*_put() in this case.
Putting value check prior each calling of devlink_info_version_*_put()
would provide quite a code redundancy and would look not so good imho.

Me and Przemek are not fully convinced by adding such additional
layer of abstraction but we defineltly need this value check to not
print empty type or get error and return from the function.

Another solution would be to add such check to devlink function.

>
>
>
>>+{
>>+	if (!*value)
>>+		return 0;
>>+
>>+	switch (type) {
>>+	case IXGBE_DL_VERSION_FIXED:
>>+		return devlink_info_version_fixed_put(req, key, value);
>>+	case IXGBE_DL_VERSION_RUNNING:
>>+		return devlink_info_version_running_put(req, key, value);
>>+	}
>>+
>>+	return 0;
>>+}
>>+
>
>[...]
>
>
>>+static int ixgbe_devlink_info_get(struct devlink *devlink,
>>+				  struct devlink_info_req *req,
>>+				  struct netlink_ext_ack *extack)
>>+{
>>+	struct ixgbe_devlink_priv *devlink_private =3D devlink_priv(devlink);
>>+	struct ixgbe_adapter *adapter =3D devlink_private->adapter;
>>+	struct ixgbe_hw *hw =3D &adapter->hw;
>>+	struct ixgbe_info_ctx *ctx;
>>+	int err;
>>+
>>+	ctx =3D kmalloc(sizeof(*ctx), GFP_KERNEL);
>>+	if (!ctx)
>>+		return -ENOMEM;
>>+
>>+	ixgbe_info_get_dsn(adapter, ctx);
>>+	err =3D devlink_info_serial_number_put(req, ctx->buf);
>>+	if (err)
>>+		goto free_ctx;
>>+
>>+	ixgbe_info_nvm_ver(adapter, ctx);
>>+	err =3D ixgbe_devlink_info_put(req, IXGBE_DL_VERSION_RUNNING,
>>+				     DEVLINK_INFO_VERSION_GENERIC_FW_UNDI,
>>+				     ctx->buf);
>>+	if (err)
>>+		goto free_ctx;
>>+
>>+	ixgbe_info_eetrack(adapter, ctx);
>>+	err =3D ixgbe_devlink_info_put(req, IXGBE_DL_VERSION_RUNNING,
>>+				     DEVLINK_INFO_VERSION_GENERIC_FW_BUNDLE_ID,
>>+				     ctx->buf);
>>+	if (err)
>>+		goto free_ctx;
>>+
>>+	err =3D ixgbe_read_pba_string_generic(hw, ctx->buf, sizeof(ctx->buf));
>>+	if (err)
>>+		goto free_ctx;
>>+
>>+	err =3D ixgbe_devlink_info_put(req, IXGBE_DL_VERSION_FIXED,
>>+				     DEVLINK_INFO_VERSION_GENERIC_BOARD_ID,
>>+				     ctx->buf);
>>+free_ctx:
>>+	kfree(ctx);
>>+	return err;
>>+}
>>+
>> static const struct devlink_ops ixgbe_devlink_ops =3D {
>>+	.info_get =3D ixgbe_devlink_info_get,
>> };
>>=20
>> /**
>>--=20
>>2.31.1
>>
>>
