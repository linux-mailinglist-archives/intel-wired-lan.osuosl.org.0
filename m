Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 37EE0898790
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Apr 2024 14:30:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D92F941960;
	Thu,  4 Apr 2024 12:30:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Pgy7TJxsS9nL; Thu,  4 Apr 2024 12:30:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F0B7B41955
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712233809;
	bh=hbw+PnKqHyh9PGbt7+Ir2KJOCgT5sVZJADHsDqz5UVg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vwD5S1EoQ2vxe18QuADJXp210zONZos4IX6DEFwRvm2jYQc3RVtrBw4SclK57JwWX
	 nrbiiGzEDzwe4ydE35PkazeH2ep6VWynHA1nEQTvxZsLlTq2sco7KL/B/ys9sDmNim
	 wugFgX2SzOqDDIH0PpxYvXRMDoE5CoiT4NhirGLRlUlflgsYjyWSI0KU/r6QZgwXwA
	 YopRNRInTiuz3nXZyRUF4FvFH92tqxGsDn8m49Z4qiBS/xj2ui/+OLmnzhyJzOjBxR
	 6Cn1W4GLNlzOPpY6Dv0pVFBCBfp8GTknkNJlLyE30vifEcaUTm8orlVoh00tJiHGGu
	 KgRzLnZmtbH6g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F0B7B41955;
	Thu,  4 Apr 2024 12:30:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5B08B1BF3D8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 12:30:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 46DE98215D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 12:30:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iuhDznAA8S4Y for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Apr 2024 12:30:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2A53C82145
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2A53C82145
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2A53C82145
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 12:30:04 +0000 (UTC)
X-CSE-ConnectionGUID: d3wlrPb1QmKxkxas0wRlGg==
X-CSE-MsgGUID: 1G/EofSoQsK6mxdy9PSJ6w==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="7407040"
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; 
   d="scan'208";a="7407040"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 05:30:04 -0700
X-CSE-ConnectionGUID: GwZNfWZCR7KLuZM5YgpJNA==
X-CSE-MsgGUID: wfzKWty/RHumSwazQ4zPyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,179,1708416000"; d="scan'208";a="18623054"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Apr 2024 05:30:03 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 4 Apr 2024 05:30:00 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 4 Apr 2024 05:30:00 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 4 Apr 2024 05:30:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n/LhV1p4pXZqau/XifzwYBsbkjBxUKtVWgKZgjENpsl1ZHO55eT424jhqLZg4OYUyo+qYxrJ/3dMIz9+TSQggJwZ5Au1xdeKMuU+cKYyBwSPzKNjtHEchHGz1HGp9FyWQV5vzaSkTAU1RvGNhdHeCOVJIRmdggt33E3tZuADj/KmgNNLiqxIhnp3P4MGAd0GjQ/HSV2xc6sEtGknJX9LDJ5cPxxL8asQpsueNht3+LD810HvvOFaYKrqRgYuOl1MQlx9lozblZKr7lTLSLl1pd0QEPddunf6ScfoRYzl8zj1WrlgRMsX1iovTb8aohxPWG7AY2A6IjP2H6Mctm/2Xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hbw+PnKqHyh9PGbt7+Ir2KJOCgT5sVZJADHsDqz5UVg=;
 b=M4WtUNOisoOOo+BbuGYts3sJlyL2eMyZHShwku/s+RW6lcvoVTClubhXcBiWRgHe73t1g1LAtZMH3sPkjMHsCDmf++l+jXs2wsfPQefnxvHbaNJvXbbPMx1c+xInOU/rHHUhg/BwF48EdXoVALattO+4z4bZi6L0vm2zYA6L11XkzITrzVoKUDkHhoSzL9kEKu4P/Nt3tFxfKeqGS80Az++zh9k+Ri6cIe664mmncqiBzhS6E2V3KB9YqeQKE/9UK6JI4IhaDMQPPnIM2StyGkke+JtlFzCShdz2z2Sx2v5/0kwB2j+yY+S8+Pli1W73ICp+BFSwV5BkbhkLgcGJoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5800.namprd11.prod.outlook.com (2603:10b6:303:186::21)
 by CH3PR11MB8444.namprd11.prod.outlook.com (2603:10b6:610:1ba::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.25; Thu, 4 Apr
 2024 12:29:58 +0000
Received: from MW4PR11MB5800.namprd11.prod.outlook.com
 ([fe80::b022:a668:b398:77a4]) by MW4PR11MB5800.namprd11.prod.outlook.com
 ([fe80::b022:a668:b398:77a4%7]) with mapi id 15.20.7452.019; Thu, 4 Apr 2024
 12:29:58 +0000
From: "Kolacinski, Karol" <karol.kolacinski@intel.com>
To: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v5 iwl-next 09/12] ice: Add support for
 E825-C TS PLL handling
Thread-Index: AQHahnHEJ1LudDsnJEmK4mvLIZne6rFX9LiAgAAU94w=
Date: Thu, 4 Apr 2024 12:29:58 +0000
Message-ID: <MW4PR11MB58005728FD74C12F9552E520863C2@MW4PR11MB5800.namprd11.prod.outlook.com>
References: <20240404092238.26975-14-karol.kolacinski@intel.com>
 <20240404092238.26975-23-karol.kolacinski@intel.com>
 <5238eaf3-cc47-470e-85ba-4930a2acbc15@intel.com>
In-Reply-To: <5238eaf3-cc47-470e-85ba-4930a2acbc15@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: pl-PL
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5800:EE_|CH3PR11MB8444:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tnKotS2lot3hlmE46UsvxPZ5Ew4KJbDB5NCC/PeI0cfCTwdkLvloQt03Wr8qk0P28JRMs0RpNEQt3Nk+73gYxD6Z39fUmdLepm7YqorVg262byzuf4i56uT8UNkYT0/sLBkx/d9yyzOfqNS/yK4ZZ+oPvs+0adr6+kQKh7vrC3DZHrFUr0a0gHAncbCQYg8flMP6DcgdWIL34mivYZroP8sXQxqIEd9hiU7X/Z6cSwtYP7+TetYt8HPMlaIjgAy+SwkmpTIWpBjpWTZrbapzSHaTI1TqS7Uij33Kn0+vKpNwNPEWAUDuPTwEPpsyRg5VkARlZmJx4WT5/Tpgwi4dMeSmsN0/k7Lw+vwQG39ADseJ76peoyC1HNBaVROScn1Q9yC9sHkqb1SXwZB4CQn0J68Q6AjAgR57U+zIRViTFvPhP4/RN4gl6ZhUURniiGJ6a0O0oN15CcjM7iVsXuzSUcVh4LpFP1Q/Jl5r9m22F3S140Wg4nQk5QGdDtvR0HXlqjmwktMYiFZyhCkJr113cKmd2vfqz38IO84LEJjDTJwgTggL4iguDT7rhKCduyaLR+4Az5y91ZoRBi04HmL4qQxNLFeQOqpVeBfHm6VZ9WGYRE1RjjPCkRVYmxcWrROtYWu7wuU8BJkbnuVVhJKQKjrF+VyrFLIdyl/aATTV4Hg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5800.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?sLncuhrhqejg7HemCmCNLl606G07gqUHqFx0pzubJ/pgqds1Qyn4eS3AWI?=
 =?iso-8859-2?Q?VVHcMzVzcGvWbmjzvHeU/6DTz4yFmYc9gJUuPk+7DNaN71LGW3jUVJ4bOY?=
 =?iso-8859-2?Q?O5bivoXb8Bsn/4qtSsOFs3pyiZFKrGoddH6hb1fDuY9D0ZVvMDbJ7dDZHw?=
 =?iso-8859-2?Q?rxnDVq4r8ZcbX2ygbH0n/QrVUF4s6Z2WrYA12I0w7Yx0TRPRdQpflvkMo1?=
 =?iso-8859-2?Q?vYktMwXVhCirxnmFiTKQek6tOUxxnEVWPdnv1woN048z400DtZ29xKAieh?=
 =?iso-8859-2?Q?OQDTcjHki79mrFTJIBFiBL851WWUlYa7FU1B0tchhvjegIz6cmtz76TIB8?=
 =?iso-8859-2?Q?B/3nyrhXvsgrG0JCu+jw549blwRh5LywxH5yVC93+fxcSrzovyhKuet+l3?=
 =?iso-8859-2?Q?+ubQ3/l8+oBnLas0YIGRLfQwZJSwi0Zs0Rdu193rsvfAduU2QzqNS16Tmo?=
 =?iso-8859-2?Q?nc2VIYFMCzEbiWbm32sw2dY8NA8/bZC4YS35hkAi/5f6UAUMUVyp2qEVn5?=
 =?iso-8859-2?Q?LaTdWXUyjL4Mjshe8qz0astQq06yCs/WQfZa17C9+6nyru+JeHUmoZGTX/?=
 =?iso-8859-2?Q?4jkvA378TcLx4G4hpqQDQ6vuSuNWwmT1SqXQWAckrajk/bPMzrVwr1qJ/B?=
 =?iso-8859-2?Q?hEPrNDkDVVGatfpvnDgtOJvZoGoKRDLd21aLHFh8poHNtgxBxJGnp79Jt/?=
 =?iso-8859-2?Q?10FxbLzGroCvP3j2P0rqGzeReEwrF72LGadCa7V7EzxKJQnprfHZTpvnuW?=
 =?iso-8859-2?Q?//Sn8IlBbEYQ1NvdpeBVmiKVPQi3u0BYy31kA/HnQwIoc/VyNwE6uXs6Ct?=
 =?iso-8859-2?Q?nrfAwPwBmRXmLJ7hCPrDTa2PgNxGqCrODKxSLKp0eG+SvIXXoGsM3EOZCz?=
 =?iso-8859-2?Q?KHA1ClJH7t5d1kks7tOd1U30c2Hb1bwonmaUD2PPDW+7XJcuxGsmcZ1Uwm?=
 =?iso-8859-2?Q?toXsvLyEt67pnQWItPu43ooPb+m04UI2l5KC/k9FGeJolWS+7pGgHlrQ7S?=
 =?iso-8859-2?Q?rNDGTRbTCSkA/GvDM0XgoNaalqmcDjQPzxLKxkPvDUNc3fijZixop78PAM?=
 =?iso-8859-2?Q?kcFGYQ0IIJX4iO71z8V3wR9SOrSl5T7QRjcFKR5THY03WpXhvjnicQwLZW?=
 =?iso-8859-2?Q?xOzMbTinEHAZL4S+tiUwT+RTjlmIPQaVXQXhcC/90K6HnaikC1GxY6vz3c?=
 =?iso-8859-2?Q?zGnWX+Za/V5CoXF51gL9AR2sux9mkwPl8t8Xqem7GRl1lcGPY2S8gptNqr?=
 =?iso-8859-2?Q?zOedX1VDLW+KD1MQtVxBqNot91RNi3IEFl/QJ1CnFrVj2X1agUeRy0f/d+?=
 =?iso-8859-2?Q?bbvFOkdWZw+Ec2vIe60rfQMVRymKubRDAUDRU7B7el/TXAFOGEQsY0WgUm?=
 =?iso-8859-2?Q?mpPit63HZM32sQhx0pYzMA10MxoPnQ/WiLR8IIzCYUqrtqINEDauN4zS6Z?=
 =?iso-8859-2?Q?Vtzjshvi9UyZoGY1CmK5+UR87/CJcHhdpdF5/7k+Ob1APh13lOvZlPWMRW?=
 =?iso-8859-2?Q?c+g3Kg5FLwRtahGqbTrYzsYeRLr2SzDeqDOlXxd8fUWjGNaGqW84M9+9wY?=
 =?iso-8859-2?Q?dnIRTUKhje2HWDu46Nt2/vEGeAfXW1L81A+2a3MokDb26N4I4aDRhwpLXK?=
 =?iso-8859-2?Q?k1vWHIg8r8fpqZ/Oxe591V6Vh2DarncO6znlsKVTgdj+n8y4BSMjyPbg?=
 =?iso-8859-2?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5800.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3fa40c8-45ca-4664-d4d3-08dc54a2f12f
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Apr 2024 12:29:58.7159 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: M+FgArm+G6bqR41gjvVlUbgdwHt/lwW8SFZ1OGaVPvS1S8THamF3BLSfvZbkaNl6Ld5UVs/6hVMj5oIkow+ye6XYj1nJYjzsyRxtUnXLmsU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8444
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712233805; x=1743769805;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hbw+PnKqHyh9PGbt7+Ir2KJOCgT5sVZJADHsDqz5UVg=;
 b=SfQGnusIkcXKAqOGj9hob0Ynsaq1Vpfgja2CxpFyuSxSY3PhUkPSf9fK
 TkoZSrMO8somKERToECxuiR82ZmiAgkA4paYUN61b6TROmu5neLzPkvto
 44nWd40pzyU3C2tB8zLGvX0v3xkcx2/cwoEc2jpoGWDQ4NmIFo6BCmZMX
 5wIOVF9j7z6J/FKykrltQVoFI69SGahbr1kjllqtBYaWDO0LBuD5oWV9a
 Y0Gz7f4m0V2NCo8HB8rMtVLyehlXKvghM55AujdX6PZRnk4CrRszvWnkj
 6jPc3hFlyeQGtl+zVT/DAvcVHx8UwPRY4/cboaqU+ChAb86TGbMAT+Tbh
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SfQGnusI
Subject: Re: [Intel-wired-lan] [PATCH v5 iwl-next 09/12] ice: Add support
 for E825-C TS PLL handling
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
Cc: Michal Michalik <michal.michalik@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Aleksander=A0Lobakin=A0<aleksander.lobakin@intel.com>=0A=
Date: Thu,=A0 4 Apr 2024 13:11 +0200=0A=
=0A=
[...]=0A=
> > +#define NAC_CGU_DWORD16_E825C 0x40=0A=
> > +union nac_cgu_dword16_e825c {=0A=
> > +=A0=A0=A0=A0 struct {=0A=
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 synce_remndr : 6;=0A=
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 synce_phlmt_en : 1;=0A=
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 misc13 : 17;=0A=
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 tspll_ck_refclkfreq : 8;=0A=
> > +=A0=A0=A0=A0 };=0A=
> > +=A0=A0=A0=A0 u32 val;=0A=
> > +};=0A=
> =0A=
> Will this work on Big Endian systems?=0A=
=0A=
I guess it won't, not sure about compiler behaviour.=0A=
It would probably work better with masks defined and le32_to_cpu().=0A=
=0A=
[...]=0A=
=0A=
Thanks,=0A=
Karol=
