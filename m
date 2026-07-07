Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bM6CO+cATWpgtQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Jul 2026 15:36:40 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4473B71BFC8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Jul 2026 15:36:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=UVu2vfGd;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F064E607A3;
	Tue,  7 Jul 2026 13:36:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tOB_MN2nfocu; Tue,  7 Jul 2026 13:36:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4BB57607A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783431396;
	bh=4vDgzNwk8WdYi7I3BDR8gO+AhVQeLlc1ASf93M/B1r4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UVu2vfGdRK0uBoh6bxsusR2s6zSRQviJMzVcHjqGS//wGV/rIGPWAzRRBeT7bFiGm
	 ReOTXOZE6C1/Atl1vvnncSHLSUvVCx+R/7ygpjksLCW9R5F5DOhnkCgHlHFLOwAMS1
	 ZToI6UuKrXp3lcbz/HcvmFyxi427LX7emyHW8t2D+9ZU6BXTaU6aXclAVuUaxGgCCa
	 GKdg1tGzkYqRHZcxbPfKTJ4Oq2ZN0NsNVTjUh0bMq+i8gcJVaQOQ6sB52n2oBuB/sa
	 uT7mfTTPZPRSoUyms3AUzNXuWWZODJrgZLzp3p7uyiRn7MwRcm4T+YimIZJpMtSMWR
	 QkKt/byJHEEFA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4BB57607A2;
	Tue,  7 Jul 2026 13:36:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4359933A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jul 2026 13:36:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 35252406E0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jul 2026 13:36:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NE9G-9nTdZXH for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Jul 2026 13:36:33 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8BF3F40688
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8BF3F40688
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8BF3F40688
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jul 2026 13:36:33 +0000 (UTC)
X-CSE-ConnectionGUID: 7aocutpFTMGXTh3ZHfVvzA==
X-CSE-MsgGUID: aJGkE7UXQI+HiyLxFIcO6A==
X-IronPort-AV: E=McAfee;i="6800,10657,11840"; a="83054233"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="83054233"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 06:36:32 -0700
X-CSE-ConnectionGUID: XGxydFPwQACJDE86ckPhzA==
X-CSE-MsgGUID: +V/iG9RbTpi41K23ItpmOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="251328338"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 06:36:32 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 7 Jul 2026 06:36:32 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 7 Jul 2026 06:36:32 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.37) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 7 Jul 2026 06:36:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aOSHPO0UzaeZ65bHhaWwYDDFKvPndZYETmUK3UGUFrd8MeGzKaWIPybBBUwYvTsRJYQk+350AL9EHwwktpKiFGXDA/PpUYtVguZLpSGs3AhVqhRI5jbrkv3Ba/K9Lb6z9wSLWKCE4aaDtvF9gAugDrp4GaeNncJ1+4Wx3pFYkfwYA8cguE6el64Yzhi1HuW1mgMOik1bnxBluGbtSDPCmH2eC+F50/vdYGTnD3h3JZR87aSlTxExn8Nz1ZFktmWM0u4ogumEj2teXEoWUMss1I/4RwuhmOjaXAiclnXmXSmEnAcwzNz9mKQaTqXnJNoXkJpT7v4yHRAcQhlYaklytg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4vDgzNwk8WdYi7I3BDR8gO+AhVQeLlc1ASf93M/B1r4=;
 b=XXzJWDxA1Y68VJ55EHL95EXm4ILULyi8oNl94F4+dfFFqxH4HrHnVan4+5P1qsaXedNZy1BnRqFtIaWmsYXu24QuV+gzFqudP3QF2F1ra/9gorNS0z5FpWRsHHDn9m+nYfgSN0Qpe0YR+LVVxaoHwM5M431bcKMntWDc/Rr2bzVvIrbaYjgucW2boqkodXwPO07kI3VWwyfNys1ahM1LKyqFRXjRjHVX6//9gNOkYW3WojiP+uCX9nJ4ud0j6E4CZkZ95FKmPVwlhdr4Y++tH41XZUf5/4lihhBB69W54NkETANmNPZYG33SyUCjkEsQ8w0zHzSStvIdXwM5pKjwNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA1PR11MB9873.namprd11.prod.outlook.com (2603:10b6:806:4d9::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.11; Tue, 7 Jul
 2026 13:36:30 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%6]) with mapi id 15.21.0181.008; Tue, 7 Jul 2026
 13:36:30 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Karlsson, Magnus"
 <magnus.karlsson@intel.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "horms@kernel.org"
 <horms@kernel.org>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, Sashiko AI Review <sashiko-bot@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH v5 net 2/7] i40e: avoid null ptr
 dereference in i40e_ptp_stop()
Thread-Index: AQHdCVeTBQTqiEi+MkOUlB5khw7CMrZiGIAg
Date: Tue, 7 Jul 2026 13:36:30 +0000
Message-ID: <IA3PR11MB898638C9AD5E5993D1F287FCE5F02@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260701124524.13644-1-maciej.fijalkowski@intel.com>
 <20260701124524.13644-3-maciej.fijalkowski@intel.com>
In-Reply-To: <20260701124524.13644-3-maciej.fijalkowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA1PR11MB9873:EE_
x-ms-office365-filtering-correlation-id: ceb1a5ab-3662-4eec-2a6c-08dedc2cc0ac
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|23010399003|376014|18002099003|22082099003|38070700021|56012099006|4143699003|11063799006;
x-microsoft-antispam-message-info: XTPWf+5MG+7jzjoC10lg8XfMVmKtbUyilUJ3ZG+zZSoLperd7fp6Ragqz+sgBrg/X/3xrY3ERDoNy1P8cTjBuTi9WmP+/6J5IYymaH2CwN5ymL+xzCXKJZ6XraQnfRn4CyNb0IKYqC12G1wcWffNTB2Z2y/aBEZBc+J65S5KEdih2XmDS4/nNt4z4wPK3c9U8Zn+D3tEi+ojrzukROkP9VmrQupj9MojFZsx17IRC117eIF7DOHtpu+mu+MWVWh2+7ETltsxcLFOdW9VIhRrrEpSOeNUDulDA9AEiwbaDDv6ZJiIEEfRYX9SeaWSiGJQ00nAqD0bg6EpgVYLymEOtFYs9KFp5TB9eUu7vlDyUp8+U4zcKp57yQCz87wqdHeeCNEMmxVFBS/Kc/i3F1axbsZpIf/hLY4CwwNcx+FiZC12ue/D8hjVZ11pk5vI7+aerop1lkAk/96nYrQcGsq1n7pT8+JqYc4QUAW8mBcR3J8Mh31bOjCRu6dcLwKt5DNbZZ2seHrw597c5zMC/Y4ADZz5i6DxtEprrLHeBpl3Rbw9573IRHpCUGWAgcgq5kjyBRacqpfZvV/6HKtERqxqWshHqXa7WfgDLr0ZPcpkaSqNs8R9EoUylByBR1AvXWDGRn8cbbEFXB43ERCFQgs7s1ZPPJVtaUGJ+J8412tE4ig1si9xDejf66Zym31KeTD0iBFNVolNM6sVW/viM2G+W1EmMgTrZmfmZsw800BWqTc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(18002099003)(22082099003)(38070700021)(56012099006)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sU4LyluzbgBtr47l0q8Lvh0WpPuOs0HTC42yGA1qZfRsP1w5qyIcejrJdk+k?=
 =?us-ascii?Q?6jirOc6lCUj8x7OLZTru3TrM33aALWZE1TZCRKOEVcgUI4ST983r7hRlJHz2?=
 =?us-ascii?Q?MpXTE9/b4n/9PJ51y9YMgt+bs0iP3jAOyYkBqMI0XTDYwr33rv3DruVy6NyF?=
 =?us-ascii?Q?fFZkejiRR52UvMCxGjtJTmF0hWa6tAHoOuPm6B4T+qIE+goeB/mXLhXBoCHE?=
 =?us-ascii?Q?o76BXgmeY+x2yafcUxEAKUTklxl6lvFtGNjx9aV1TL6yxUAhBc8gneQMCYVS?=
 =?us-ascii?Q?XaWjlobKdO2YhcLvPqeLXYoOGDORZHJAhKX+0BchSGDz49rA833kjhwKcYND?=
 =?us-ascii?Q?ZGd6l5CPsJvRnPV9nzVSpe9V1zcYKakIF0t8BnubefSvGUn0Wpl8KxOWG/XV?=
 =?us-ascii?Q?/BGwajmb9zt6Oqawzspo6rx5JDcrZG/2T2iNfSsMGcWQEECqymbLo5a8NG4d?=
 =?us-ascii?Q?NOQsxy1IBvlUyGCf3MdFZ6Q8RtYg0YtrHjYLxm4oYUiVUSmfn3VxdH6irbYF?=
 =?us-ascii?Q?fmZkcgyk3hiO9EUXRWrEG0w1m7mkEVMDekKQhmm+vYrDCv0Xumh1TKJ4YCBc?=
 =?us-ascii?Q?S3zAaoNsLiULPxyC6GEyfMhuXO+BlOw2FGD5DAxTFatmxc1Htg3LQhR+dpc7?=
 =?us-ascii?Q?C1nJ4U1jCDD+2U1KTYtAmKQ0HNXzK4ZrEhYmIpw71ySjBUEFtKhUyT3RTfsX?=
 =?us-ascii?Q?lfNRC5AeefJrxRyAeN/j7i3pBBIJcqgm+yHJrTD/9BP/obqA/cdT3+LtdYGu?=
 =?us-ascii?Q?uaVqGEvWum7QCDdukA6BDKJY8QoXLuGF6UjCEOpzXDyUV7eG+HUpyUaLlbvW?=
 =?us-ascii?Q?PJeFE9nAYCYLeR4J9Ud5iRedtyerz4khskfYnmO3iAI4QO3ZeDReB9QEG3Bc?=
 =?us-ascii?Q?2H6laAG5ddEl3KVU6AOHATDvFEJ9szqk1Xjgd0BXYS4XN13eZUirNmyW9FRi?=
 =?us-ascii?Q?F12gYuM1r5Ij+dwD8egG4jWA7VqqpWrzKZGSbEyFqZ60DkSfR74izvtIXhFQ?=
 =?us-ascii?Q?ADWvAWe0LUauiPJbBwK6BqQ1BPUNfhmjgdI88AmymYQxgPoonSaLqg/NTrBU?=
 =?us-ascii?Q?ayhUj4cjODLtuYA7XmDNeCEx13lbUkczRwOfB9nLKtbxNY1Xvfkvp4Wg7wwq?=
 =?us-ascii?Q?GjaGdsYivsyjPhqQuzW8cwDLdcMBNm/mzchUv4RT6qKH3VsdLUGU8wQNWL39?=
 =?us-ascii?Q?/72bYO1fOnqlktRddYTXsqMUrP2Ykwb+nAtApwMOPG52NI7l1LnyHhruVKJT?=
 =?us-ascii?Q?XXOz7H3dSz/SelevmC18pN8/uIGiMsV5FFhHVIDb2Nk/Wcoa8Uejm080b4o/?=
 =?us-ascii?Q?qasFxNi5Hq72xC13oODAnIf6Dgy3uywZrCnrO7x8foWc3p2FYDzNja6IChl0?=
 =?us-ascii?Q?yN3Y9Z+T7TnTNlZe0Xpbb43hkW5hVQXEinrQwkfIXWSra6MPW7orNYEM5Vn2?=
 =?us-ascii?Q?YMmSGW/OJSO36VPR8uYHUxjdU/+l+WwUCBUXr8LcV0QoDieQTCkGkEWrKqL2?=
 =?us-ascii?Q?3vbJbxhA8D4kxHh0QI+zgPXQqrGXdklWZXjPDuYL9oPtek26YAosb9jk18dV?=
 =?us-ascii?Q?cCqF9NywEkM58s/Xma65oJ0XJY1i86893AuYRTitMJAkN/i9VdxphapGeLX9?=
 =?us-ascii?Q?6FsBUBqubXMo3LbenqClDhH2XwvYZNDRfFEWBJl231M6tD9L7yFXD26gznVd?=
 =?us-ascii?Q?PmzPGBsJ/T6jQbch1d6VSBnFm8DZWqwRhhNKougQydNRO7zoRQ2CRphxs61y?=
 =?us-ascii?Q?tYzZBGHJY8ZvTqDQTMFZHQO9s8VntMI=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: jsPFBmBhCuly0yUrkXi3UpkYU9PykKdT7feRv+ohpSC4JFDzbE7aRMqB/YzYhWI+Sp2Hdcrn34u/5TTYIbr0USAhEuXtDacxmdC8lGukOdSJ8hOmpw+Ip0/oheMpcbW89V0ja4G2crP6LUsJ89cGV1Lzf7t2fcRCWP6qvcCFft+A0F3mSHF0Z4sZcXlUyqfCs+47kRt+urzQXQ/HFNV/cAIEqAqRj+L/OAlYAk+Fe65Mm8N5LoqyF2URTzhE+Ic+fRCUGEBho8UjcOh3WjPVAufiTjks3Ju4svQ4QUsz9cZnR45EY/cyuDC4HUh3lBYztL9xXBlQfQwdq6rJpz9KCw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ceb1a5ab-3662-4eec-2a6c-08dedc2cc0ac
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jul 2026 13:36:30.1891 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1u/6jowmOm2wgIBI4bPr0dFoo0K/9xT+1E4Po4bpblJCGulGumRvlusJXa2kCKdiLCzQqrz7kRMpAVoG62IEM4FKsGSQC93D90M7pmF+Zh8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB9873
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783431393; x=1814967393;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=J9cpjDP5xmzFcE0dTIEwCxQphqOv1oQLR8Pxu4TEwek=;
 b=kG05NiwOqTeUk1FDHqaKJxPWq0Sz2Iy8/5bTBCZSNRQnk9W8IN4AW3ZQ
 tXin+Y/prEDkPWfN6tc3U1hTcp797r52zxXl87me1zQwA+3rmGMfzCRnN
 kJlwziGSq0fPl5f3rsLzA+yoHbM/fypTmNoHv+SnzB2nooE1I6umeER1p
 05cIKv/7FpX1zz6cgeILzby/XtR9zGmjh2xnzUU8oTIYef7sZejUGISNL
 xdEuRVLc4p3e7xVC2NxD51I4jHR3Y/YyFEVfXp7xqzgaV9zryYFFeCWzB
 7uzAZw7CURtu3MuDqU2M1NqWFuy3IWaRFbqWfVKlXp3qZHaD0Ka1GQwor
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kG05NiwO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v5 net 2/7] i40e: avoid null ptr
 dereference in i40e_ptp_stop()
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:maciej.fijalkowski@intel.com,m:netdev@vger.kernel.org,m:magnus.karlsson@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:jacob.e.keller@intel.com,m:sashiko-bot@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4473B71BFC8



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Maciej Fijalkowski
> Sent: Wednesday, July 1, 2026 2:45 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Karlsson, Magnus
> <magnus.karlsson@intel.com>; kuba@kernel.org; pabeni@redhat.com;
> horms@kernel.org; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>;
> Keller, Jacob E <jacob.e.keller@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Sashiko AI Review <sashiko-
> bot@kernel.org>
> Subject: [Intel-wired-lan] [PATCH v5 net 2/7] i40e: avoid null ptr
> dereference in i40e_ptp_stop()
>=20
> Sashiko reports:
> ***
> If an allocation fails here during i40e_rebuild(), i40e_vsi_clear()
> frees the main VSI and sets pf->vsi[vsi->idx] =3D NULL, and the rebuild
> will abort without stopping the PTP clock.
> Later, if the device is removed or unbound, i40e_remove()
> unconditionally calls i40e_ptp_stop(), which does:
> drivers/net/ethernet/intel/i40e/i40e_ptp.c:i40e_ptp_stop() {
>     ...
> 	struct i40e_vsi *main_vsi =3D i40e_pf_get_main_vsi(pf);
>     ...
> 	dev_info(&pf->pdev->dev, "%s: removed PHC on %s\n", __func__,
> 		 main_vsi->netdev->name);
>     ...
> }
> Would this cause a NULL pointer dereference since main_vsi is now
> NULL?
> ***
>=20
> Check if main_vsi is not null before calling dev_info().
>=20
> Fixes: beb0dff1251d ("i40e: enable PTP")
> Reported-by: Sashiko AI Review <sashiko-bot@kernel.org>
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_ptp.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> index ff62b5f2c815..ca93df4d6785 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> @@ -1556,8 +1556,9 @@ void i40e_ptp_stop(struct i40e_pf *pf)
>  	if (pf->ptp_clock) {
>  		ptp_clock_unregister(pf->ptp_clock);
>  		pf->ptp_clock =3D NULL;
> -		dev_info(&pf->pdev->dev, "%s: removed PHC on %s\n",
> __func__,
> -			 main_vsi->netdev->name);
> +		if (main_vsi)
> +			dev_info(&pf->pdev->dev, "%s: removed PHC on
> %s\n", __func__,
> +				 main_vsi->netdev->name);
>  	}
>=20
>  	if (i40e_is_ptp_pin_dev(&pf->hw)) {
> --
> 2.43.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
