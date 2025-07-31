Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B9843B170D0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Jul 2025 13:58:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 436F084600;
	Thu, 31 Jul 2025 11:58:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U866nRMlsR1O; Thu, 31 Jul 2025 11:58:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A4BB845FC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753963117;
	bh=AHwdNAK0BUwmATVj/jVD51MJFWuGVN0heU/kghwtPLs=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=m/QA+hvt2ACGJ3MnSB/k0nhbHr6eJdN7y88OLQVimZul+tIRarMlB9f7W+wuPYEDa
	 BJCuiiAcWp3MSMrX0PPi5cSRN9ElsIk6U3nPOZETUb6dDV52dJfyOBBt+148yUxYMH
	 rLeOyRBCTdzS3y5ErZJaTjIvcUm3rua4g+sCmHou9hbLA6jxstPhpPFeEuGJy1ZeMd
	 C4im3NR7Fn9uB8b+DiK8gRJAyWsLW995KjVkDBWMxDCWJJcgEJZvha2Y3O00Mwx9g4
	 bGOOzRNXSnTOmb0VHpOo5Ll8TTiLDj5QzRNW2qKY/pUTwzWVw0nbblaB0SqaHMsbGJ
	 Xyq8DumWgm6Fg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A4BB845FC;
	Thu, 31 Jul 2025 11:58:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id CBB59168
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Jul 2025 11:58:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C069840C02
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Jul 2025 11:58:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 109-BDOwn4-T for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Jul 2025 11:58:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2CDF14018C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2CDF14018C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2CDF14018C
 for <intel-wired-lan@osuosl.org>; Thu, 31 Jul 2025 11:58:34 +0000 (UTC)
X-CSE-ConnectionGUID: cGeJq+9vSkuzt2+PPH/tYQ==
X-CSE-MsgGUID: f6tESdkyTia2SHmTOwfspQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11507"; a="55486662"
X-IronPort-AV: E=Sophos;i="6.17,353,1747724400"; d="scan'208";a="55486662"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 04:58:34 -0700
X-CSE-ConnectionGUID: Mxvt0orcRDe7+SYA0R1W2A==
X-CSE-MsgGUID: zKOi1+JLQ2qtW2cHbgTkPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,353,1747724400"; d="scan'208";a="164041336"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 04:58:34 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 31 Jul 2025 04:58:33 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 31 Jul 2025 04:58:33 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (40.107.102.40)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 31 Jul 2025 04:58:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=C0rcGVaTBOIVOJ4EkwZHnTbBj2YnqX5XjdMNfaUcE3DyPiJuquu5rOVhWLZ0fOqY2ZsIsxFyvSiO3gPXsKMVdI06XdqbVAjC2kLWPD2jxALA9WCcwJVR/F93Wlu3gZhxuI2dRWCZALgT1qJCHlGSEZjVZ8Pm681fdq/QRbdvoE+fkhPsU0CVKVqYwOFRRcbjKH2cJHzI/7TCREvli43HLlMvUvpsJpp3eVIpwI5BRTMjlYed0PR5VeMKVRvj+7hKvxdo8kJNDw36y3Zrna3S5VdCbIm5ouZGld4OwiwAupMRIk+LaujkIa+PVyMDgpR+gTmzgUN1GaGcZkthMl+vqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AHwdNAK0BUwmATVj/jVD51MJFWuGVN0heU/kghwtPLs=;
 b=WPp5lcoiUK3xfIvgo+Kn09XUQIogGT7bmqn7XGzHFnF5C+Os22ZlVJV+GgxXFS/iFoihZDGUxPSN43AC+NeUVp8LKQ82xaq847MGD4IK5VzL1wgdFEnB33U/ZAFJ0NRCXagdilRJ3LC1eneqSebNWWkpVoQrjbcCgjxgR3zjXuy3RK4mkyG9tmb2y2jjBofgLjDDMJyp9XVWj2bf39NHcWkNYzvPUZQEkb/pxepPBSgTLCAritkGmU40rdY7cgrXfSdg+2F6+fosDD3eyw17QVUsBQFfT3OrTZvDJbwZypx1OlK4CwmDJgRgCn2EO0r5115fdhCCveaOPnJUxdaXyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA1PR11MB6613.namprd11.prod.outlook.com (2603:10b6:806:254::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.12; Thu, 31 Jul
 2025 11:57:29 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.8989.013; Thu, 31 Jul 2025
 11:57:28 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
CC: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>, Mikael Wessel
 <post@mikaelkw.online>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1 1/1] e1000e: fix heap
 overflow in e1000_set_eeprom
Thread-Index: AQHcAgxpRyvW5y8uVkKLo4M+4o8QH7RMIEwQ
Date: Thu, 31 Jul 2025 11:57:28 +0000
Message-ID: <IA3PR11MB8986092FA5D41F1C9C069918E527A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250731111439.2039542-1-vitaly.lifshits@intel.com>
In-Reply-To: <20250731111439.2039542-1-vitaly.lifshits@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA1PR11MB6613:EE_
x-ms-office365-filtering-correlation-id: 6e45d9ec-fbbb-406d-4bfc-08ddd0296c6d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?BnK9eerG0C9n6X0PSgDLRU2sklhUIlC1ITUdzXrAenyaWBg/hI8QAaQSsEf/?=
 =?us-ascii?Q?ow5D/oe7NaHun5psnZKpLcLnjgZafKBTXg8OyU+SK4brdlZqJQdCOkI+UNh+?=
 =?us-ascii?Q?M4hYgeUGf2I7sKxgeZQVnYUL4MrpOskeWEwphxVWEHaumgx8o9jxgTYyfUxE?=
 =?us-ascii?Q?QwGQ73/kuySCntRI1skpyR2MGuRxuqQYF0WaU+4cpU6QUixNZ9p1gxquwHB3?=
 =?us-ascii?Q?bpwppZeJI7EjH2RI4XwFA4ahmv8hs2Y4d3XOjQcKXjB0JKSI/izej8Ey9WKv?=
 =?us-ascii?Q?vPdSRl/ElPGxQ1lVW5l9NumlNYj0nNHymqzxLo0fP6NaYtA4BS/6Fs68nQAY?=
 =?us-ascii?Q?BhLH6LPJjjEGSLHZtGsJJuzTZsVBHc4RJSIZbTu5PaDOPCX9vSJzLTs6xTn/?=
 =?us-ascii?Q?JYZN/FL7VDogwLVUnA81g+tVnuMPWjNOaP6uy8dJYhkZJ4FARTs5YLVeEpOj?=
 =?us-ascii?Q?2xcYVeZeKyK9xmrVVPK+l6TPP72tu1q73wQu2Y///0uZG14bwslZo6HpsyJ0?=
 =?us-ascii?Q?pWPIUbJ7IoWWlgoc1sR0PsqQSqEgi3HlOCqORBVZo5fFqHL0HuaBWwea4N5p?=
 =?us-ascii?Q?WHUQHuu/v+CY/Txv+EsDla3UZmXzxnsfyjz+yR20ByBvhs1dRNonbLRvIdFt?=
 =?us-ascii?Q?0NX13vxIe2y1RxvojS7fbWKp/Ynq8YgBu0mfpjk+nF4Pbvo7t5UXaobhSfrx?=
 =?us-ascii?Q?8n7WNKGee28T0rg9+eK3awObFUW4l02dp1/uo+0sBoLGrKN+mEL7CIJYUFmN?=
 =?us-ascii?Q?wuStX/RiX+QNVufBhiCOG0rt5q5Y4IOj/9KiZ7JPvzQOZpf7RhyAMu1bRYvD?=
 =?us-ascii?Q?H11j7M/+4mubg2cfFiEwniMvNLIngJzUtIlxad8oqWKHeO+VaCR3Pm4UYrmB?=
 =?us-ascii?Q?xPX9ea03zlM+IzdMs5OkjPM59fX+K6mGkdBO8yJHN29A+yFsUU4ah4cS7WYl?=
 =?us-ascii?Q?z8jLi/HN7xcgqnQPF6QorHETC/1fOg2KlUudVtlvnKVtybeThil6GtwOPF76?=
 =?us-ascii?Q?NNTS/t6H41VcHhmB0pkzIQwYZjreAs+Y+cq7mkdYVpZWjCGSOHVPWhbDRpA/?=
 =?us-ascii?Q?WDU95h1aIjuq2gnME2AuPfIoF57MElIGE+R7KuhaVVmuEpclLSE794jR8Ahy?=
 =?us-ascii?Q?wUFw4vE5ZH+P3Z3/NZtpBAB+WQxSkdCYD+Cm9TuouFs4MX3iSDh3HT8wVN2J?=
 =?us-ascii?Q?x5N8B5Aat9TjMa3GRdCbUSTVdAweW4Ubc0DLqq41eAJN3dlpFrIGUKDUR7Hs?=
 =?us-ascii?Q?S1CqZvPOY0cyWohc5vkwENgIWG7xbO6pBUsSvX9suEN3RjkIMbQyEVSh/cmd?=
 =?us-ascii?Q?a7Qctr9mce/lvj+gCa+Ak5Rz6PvzeuWeWeA/tMw7yy9Q9CjCh5fAkXSsTVhY?=
 =?us-ascii?Q?45wNljTxJ2YLXhhIB5zbQWunvI84sFPmZycJZrb6lCyKdoMZelI6FteTiWJb?=
 =?us-ascii?Q?4pVUX2Q/RkVV+bw2KPSEnrQM3SWZLDg3r5K+/n1kCoh8bjxd+FAHVA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?iBbiB08RnZjra+JLLA55s/QitVtg0e7H5sMaSZ2TuV1Uyb1bm0k5D+2IlmCA?=
 =?us-ascii?Q?ZQ7lM/nmdK2PgoHimaFAvKQBndsnilMSFmZxmHECYZLOmatTOE6ZIeFm4mGz?=
 =?us-ascii?Q?vz7TB+zwAgKQw1jnrydAFsZKx6ygIH+J9jj+VJkHXVr2D2rSxy1HSTPRUKh1?=
 =?us-ascii?Q?dYV+isrggGhktgtbEeMG5OXfDBf8cVOyw2g3ruPty8Pw6iAW6xf2HEQig0FS?=
 =?us-ascii?Q?nzZSTkf8oUNfIhTzeeksI3rdHaq37u8Xpsm+FmMCoGd+6Vt87NTxIG7S0Rrw?=
 =?us-ascii?Q?uxEVj2ouO4iDxiUTeBkCJDWR/XPu4Cab9Vtq2nMJB5ycA+ZpkeY/D8Ys4AMv?=
 =?us-ascii?Q?ty1a7y7rOB2N0s3ewQTYoruC8a5upmC4MhosYppSGQyQ51P9B44nGuwTmMxF?=
 =?us-ascii?Q?J6GitG7LnPmc4porcu73htBvIn8WwBCvSDtwZxODMSoM5zVXH3w4hXgGzb4l?=
 =?us-ascii?Q?v4PfcA98k0GxSOyOH8T8xW7h8Bb4Bv/FwCJe8L/bdDirxsINkZ7vq9NlvBCD?=
 =?us-ascii?Q?bu3GsSRXTtn4VjtW9nacl6WF2z97vRW+Ijw4ETYkrv8c+cY+iT8v0ZbgJYmU?=
 =?us-ascii?Q?Cfwp/H7j2OzjMM6Nm3qEtvfXNWyj/+nHKZ7YNWUSfajdkronnsMP66dLSyiT?=
 =?us-ascii?Q?TXA6rZ8xZ1DR1K71BjTFKygKeMS+eKdtCwgif6Lp0/0jqTPIsNMe6gXpLQEG?=
 =?us-ascii?Q?l52mH7VUyJLstzgkserb1xHVKYRxUvzGolCfq64+4kdnCqI5ZVun7TxBglwm?=
 =?us-ascii?Q?he60w0ncyllg8qeH2BGHcAbcWpHBvD1jc/9C2QqUcO49tV87V/WeT1+CwwAR?=
 =?us-ascii?Q?UBgln6DwyKNeCMoqdG/vUSxCxdWIcnHLfCQdaFKZohTL1+O9ingip3WrTOjB?=
 =?us-ascii?Q?rrgXsFS2GhbvTxNeR8BwX8k99jJODYzEuHvSEfpDwQdzDKOYa/xJQXtitiBb?=
 =?us-ascii?Q?7CqCY8SjLUv6D59VTTolxWxAC3DZLOBuQmHflNPDqzcs7woN0jL4RosoYSNf?=
 =?us-ascii?Q?1J2iKSRk1LK3fjp82RgWLtoNBer0eSD6GgzSlECMsmHVeWzu3FPveU4VFaP+?=
 =?us-ascii?Q?M7yV3JvsYWb7FvJn27hB1mlz3+7WK4ekltinYlOJJh6hwyLt9wJseDWu/7Iz?=
 =?us-ascii?Q?gpECgqqcKIVvt+XQXmfnQEJbMLszAyrxAP//INgO4IHTekam2o/Qbb4ULebl?=
 =?us-ascii?Q?79dPqW1AG9JH8DgV3vpdmkigPMeNH4F6zGs9XUGf7PQlIkHsdA7tTyViQsbs?=
 =?us-ascii?Q?2XxsDigDOJicwV4VpiBymq++a35tmv62oUTYNluRYo6eHWXOfAPqyAN7nbzT?=
 =?us-ascii?Q?9chKkNpE4/ah5whmSsQt/AgxtQ21/wBujvlQoSu7TwpVWXgzyEBsIiwNJBkP?=
 =?us-ascii?Q?XlfXC9T71L9RkfCoLG3nJV35vESBXXjSGIukYt+3Q226OupXRjjX9vBml+oi?=
 =?us-ascii?Q?Law6xduzyr6GqAAMCgBQFkDPhTpvoxlB7ly3/XY77w7tu5DaYaQIuq7onPhQ?=
 =?us-ascii?Q?ewRy4k1StOPHeVYcvkhUM3AtM0+O1AEbs5OEeGNWhHQHISA21OO5bjxh8FC+?=
 =?us-ascii?Q?61IOycveTDC4+m+6s8MxZ3ISViOh+bUuSx5WJincOu5sOM1mvPvG7ZfV4KZ0?=
 =?us-ascii?Q?LQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e45d9ec-fbbb-406d-4bfc-08ddd0296c6d
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2025 11:57:28.7534 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sYLvIqz7YgVCQEtAV1G9GzCML0jyCbq9eaNclNSFajGI0/E+DfED09aUQGiyy78ZZ9JgIRt3J9thU/Ge9ank4fkYRtXY7riMpG3xrB3AA9g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6613
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753963115; x=1785499115;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ylgJ3d06pkIAj0eq6Ym7oSGsl02cyBsvHzVBqJ/jvbw=;
 b=V6wuIGouOxfF28vqpFdAS7+rVtpAmReBsD6wUSSVIZZYTKujzitSBuOn
 9T6LB0JbAa09Nkzg3SCcvCqOQZKTWvQ9TCW/VbHyyvsNwQa7GQcssXJSl
 kTy10Cs++AFhl4HJAXfXYLg9MPfABj0FhpdweXCPIQueqIIVVhMf77Q4r
 5t8LkghghPzlgRh74LmGSMSBEHMe77qhr/O0N0aEGLUaBp8zXd+PjDBCY
 Bgrw0q6gS/zVX9xD/N23yX3gZUemqwYgSzzltkREt41aMsT5oIZnQmdzj
 DKiCMrXjjRxj9aI9TfdKvZgaAo242ddcPL7oKpsgiC4jGlpGKA+fRdXFr
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=V6wuIGou
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/1] e1000e: fix heap
 overflow in e1000_set_eeprom
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
> Vitaly Lifshits
> Sent: Thursday, July 31, 2025 1:15 PM
> To: intel-wired-lan@osuosl.org
> Cc: Lifshits, Vitaly <vitaly.lifshits@intel.com>; Mikael Wessel
> <post@mikaelkw.online>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1 1/1] e1000e: fix heap
> overflow in e1000_set_eeprom
>=20
> Fix a possible heap overflow in e1000_set_eeprom function by adding
> input validation for the requested length of the change in the EEPROM.
>=20
> Fixes: bc7f75fa9788 ("[E1000E]: New pci-express e1000 driver (currently
> for ICH9 devices only)")
> Co-developed-by: Mikael Wessel <post@mikaelkw.online>
> Signed-off-by: Mikael Wessel <post@mikaelkw.online>
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

> ---
>  drivers/net/ethernet/intel/e1000e/ethtool.c | 4 ++++
>  1 file changed, 4 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c
> b/drivers/net/ethernet/intel/e1000e/ethtool.c
> index 9364bc2b4eb1..a9f5ff047544 100644
> --- a/drivers/net/ethernet/intel/e1000e/ethtool.c
> +++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
> @@ -569,6 +569,10 @@ static int e1000_set_eeprom(struct net_device
> *netdev,
>=20
>  	max_len =3D hw->nvm.word_size * 2;
>=20
> +	if (eeprom->len > max_len ||
> +	    eeprom->offset + eeprom->len > max_len)
> +		return -EINVAL;
> +
>  	first_word =3D eeprom->offset >> 1;
>  	last_word =3D (eeprom->offset + eeprom->len - 1) >> 1;
>  	eeprom_buff =3D kmalloc(max_len, GFP_KERNEL);
> --
> 2.34.1

