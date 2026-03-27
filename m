Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IMcjHRz0xmmpQQUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 22:18:20 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E216934B9CB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 22:18:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C57AE40C93;
	Fri, 27 Mar 2026 21:18:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6Jo9w_jMhI_A; Fri, 27 Mar 2026 21:18:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3576540C72
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774646296;
	bh=IqBCo/0T83lAYksxjjFT1l9U6bRPqDKsbsmFx4f4VOc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PN/oaU135MaRaXm9H2KAUqK+BnH3wiVuRcYMhhldXBbzgIWMiLx3nNbnZHQz1d2Vj
	 5NCGrEPxSO6zxvGI2mMz9FAIlu+IAQmH9Alq3kKASbmrz4YAgomLmIie0+LWjwMsYx
	 w/o9Aqnz6uossjBDgYnUgTc0pJgibgAGepU3jcHbvbV6LFvZRuwaOt0LoN9DfyuM/T
	 Pnnus5JjdgTiCc/jySNH/pq4+B9bJu/nXVych4nhn/k1st03IpRzcWjPBgXyUivOT/
	 dzBANQTvZYKnxpZGAqKN295NeF3RJae5QfjSr5m7fZ5hJR2T4u3DHXrAE6uf0Nrr8u
	 6psmYsn+2L0BA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3576540C72;
	Fri, 27 Mar 2026 21:18:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 750212AA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 21:18:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5A8D540C50
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 21:18:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e4TMBsz4iTa4 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Mar 2026 21:18:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8905340C38
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8905340C38
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8905340C38
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 21:18:13 +0000 (UTC)
X-CSE-ConnectionGUID: WFltVGyaT86IoiPQzxrlXQ==
X-CSE-MsgGUID: G79gTcn0QhOGQIpXhcNWAw==
X-IronPort-AV: E=McAfee;i="6800,10657,11742"; a="78327664"
X-IronPort-AV: E=Sophos;i="6.23,144,1770624000"; d="scan'208";a="78327664"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2026 14:18:12 -0700
X-CSE-ConnectionGUID: m0xhWOuzQHG4saV9LuC/og==
X-CSE-MsgGUID: 2eGSPJLHSjibQ1HWx9j7Qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,144,1770624000"; d="scan'208";a="248463795"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2026 14:18:12 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 27 Mar 2026 14:18:11 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 27 Mar 2026 14:18:11 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.68) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 27 Mar 2026 14:18:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h7OeRiVblptS2SP8+N6Hlv9CW2Ox8dQa2AZeL4cBeREfmgb1NF4sbJljA24TIsUygtgV5zZemr7NV680VvMu7RC6znQfeB06Mk1fCt3cpAWBgFwPXDhmxsJCI3CS+w62WFPXd9AH5UPXVq+ubOY1H2VBoMdhICi8gUrgd79hwOcFDQKQ0pNkM/nN8LHzF/MeiyObucrn+t8VCBC9eh0zzICFIIwJlChNrDwwe1b/c9UbXDXjSA0BixQL2UzL8DrJKOzxd9xpSq03xeHSTgNo4L1m+zNE3jCVlZOsbr9hyvkjlS3fdtOQiJo15GmRRdQtfQPfFmu+nKDIFmlQ8iJpYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IqBCo/0T83lAYksxjjFT1l9U6bRPqDKsbsmFx4f4VOc=;
 b=HwH+2gXzvYQKiIeAY0Bd88UmXThUXvAI3455HoN37kvCdJ08I+KLashTrvDRKJ2KVI4EottneXFRoMPjBKgEAqohb0G0BshOmhkX7acOm0qYZVXhRW4ZRPy9F/9Y/pQ4C7Ug62PPCOcXl5IpEWw7Fhyd6DMCxyPiGtvQh1+s7MJewiP1D8Bhgle1qXrjMh+/+EAkuCeOplGf0e3jSluKNNk1oLRSo4YKVGc/R+yMakcoA+m8LmVujRBbOQeB28Yn+JzXpO2m71OiCmtClj7HK/dZiFcmW0PMtuq2qjZuW5nNdIwtC50n5iABb8g+b98zubgOSoi9w/tAWzbeWoPw0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 by DS0PR11MB7191.namprd11.prod.outlook.com (2603:10b6:8:139::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.8; Fri, 27 Mar
 2026 21:18:02 +0000
Received: from IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31]) by IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31%5]) with mapi id 15.20.9769.006; Fri, 27 Mar 2026
 21:17:59 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: "Oros, Petr" <poros@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [PATCH iwl-net] ice: fix PTP timestamping broken by SyncE code
 on E825C
Thread-Index: AQHcvb34udXBMjTtc0OHxzLflCr4iLXC4Z9w
Date: Fri, 27 Mar 2026 21:17:59 +0000
Message-ID: <IA1PR11MB6219F451E9B7C31E074C8EED9257A@IA1PR11MB6219.namprd11.prod.outlook.com>
References: <20260327074658.2963328-1-poros@redhat.com>
In-Reply-To: <20260327074658.2963328-1-poros@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6219:EE_|DS0PR11MB7191:EE_
x-ms-office365-filtering-correlation-id: be56b359-dd4a-4916-73ec-08de8c4652e2
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: C2d77Z4Ti8/DYGtH+XtF6BOZwyw701dkE3A7qDIwbhMto/LOjMuAy2wTQhcDjPHYCmWx/t+sPJjbxs+LKDLrKr6/CxZbl8YMmntAnf6SO9NKzQwxMnUJobfW9b+RsG0i6vogozmR86BjANIBgD0z5TkpPTophDwHZg8IDHaj0y81gN4V2IIOgFkSFfZ8gfGx0n0f0clUjq135BCJKL8nzOimGIdy5PRPxssoWaERJyOKY4h809qtE3HmGFeMexedE5C1Daec1x7pH5iMdvsli0Mp7WvgKqjOC98TTVg459tVV1uxBV5ON7fIlQfqKaZQhl9oy9SuL2/uEQ694gxQxtz/1fIuSrLD2/fhp6p5yN6nl5OczzCinSQomI3JUR4X2uku2Vn87ME2DHjOU12vZ0HHs1Id9+zV+3IkAgZJbqCrM5ta6Wa3OvTIpSriEmmnaYq2Q3vjXbmmAe6m3zE1ixFzR3eON1I1A8qHT8DXqzrnofeN1SsQKm/2xqXmpN22NnsrrFzl7oIjSXr6nzn5mXJ1dWuOacTAFPNzon9CfX0iEI/diNKa6uSQwDe0oAQ1B/bqD6qjR2XFMjhL3NLXKuUiKBVZuiH0R2ZBaHXjn9UKgHwf6vyBfkZl8A3++EvhByDfRG9Z3FxijQhgbxYnBuydEcq8+Fzk/MXK/kIuEyDTthzsYf8qaqINGbJdizzdK2jjoGh1B7XkbMYGQBRjo5Q3I05W1AbLNOtKADylqE7fTpXTdEQbhZRaULdfpQR9SN3Fxk7IEEtTJXsCphRTgzpYTjbSHats9SR8mUnHDbE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6219.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lkQJE/fIOBn8RO+yWEdaeDiMpuARr1r/b5gjHqV61fnjpxmTaFQEzlWDAzJ/?=
 =?us-ascii?Q?mS9pYWB3A9pfROPGvA9LAtZ3M/5vLx2bSfAJYx8TU4ggzVY/IpnS2nrqs7E+?=
 =?us-ascii?Q?A0/MLsAIzzsJdVO/m1cOrmkaeEJgGnaUgwkfvGQH4JgegV4I5/OBy0Zq9YVM?=
 =?us-ascii?Q?kSywgvQ8qhsYUUolbfWcfk/Anj+YcVEtcq9TMFhjEOqG3L6yY6WNvsmj6eEa?=
 =?us-ascii?Q?VAAcr5CJEst2nSUgfqfukEzGpra6JBLS17X20fJXgrHHAkuvdYpW4L/pwHgv?=
 =?us-ascii?Q?uD3EXEv7ZxMU8OY6coKnHEG2VmZQuZqEQRV6tI/NUY+R/nXvkY6H1flEXGwP?=
 =?us-ascii?Q?U1mRm+rZoFf48iiuJdR9h62hpIG35kr/LSufR57zoHM9G7QW3KC/m0uyWntu?=
 =?us-ascii?Q?LI9volGQxD5S7CSTjKJfxYqGVlrW7aoZhtjkWCPTglKnM+HkP8bvHiA/mAt6?=
 =?us-ascii?Q?yPHO976zFQHJc2nVKJLsYr72NJIPEB5ynCg2jBfPIqS1h9dbzgVWShxw4KDV?=
 =?us-ascii?Q?PP/ibZAz3eZq71K332NElNvdVQ/x4REnDXgDRQ+SWrWUpwPp+NE1XeNBOd7F?=
 =?us-ascii?Q?dcdCRrqTpdPJmonGkQyHioux9PVXAyPrAVE2XW24zEk8KTJI2AHBjkKAfLYD?=
 =?us-ascii?Q?vCP+/FrMvFtNcARScg0ad5/yF9nFRjUnJ6DtJs+kltu9tihwAyWZ3J0f4uQa?=
 =?us-ascii?Q?MVK2WnUBtN5qdVfoWN3fjGnsxg+hWg5wysw0svFa/WdSuzCyrhYnhessj7c2?=
 =?us-ascii?Q?EfIV9b/656r+0UViRHKDKaz3FmvmkhPff/pcN31hvzlkp6ygHoxHHC0dyaES?=
 =?us-ascii?Q?a/zFXooTpN621sNhPi6CUUAbEVmle2+zDod3MydLAIzK89eOmGaK/mxR6MKt?=
 =?us-ascii?Q?O50eaTw1aP/89GwgBd5cH5ylHBaKXNEzuhIYj54Guqr+OuEU85tPGdE7EwIC?=
 =?us-ascii?Q?pdQGldEEeTsn0EDMXpxEIJA9xzCT8FNPVDaOxNc6BA8JDM6wD99Yp+GqdRQR?=
 =?us-ascii?Q?B/eM+B+eWCbKuA6+QCTztNDY0nUZUnciaMnymkbl04omvwPEn276vN5vmsPX?=
 =?us-ascii?Q?Izul+EeeGgunHrhY0kBRjQ5pl+BuUhuqWSlnEwKj1Hi4RcybNXb6C78nmfLd?=
 =?us-ascii?Q?K1kw8ruZayRwIixkvKmhG+dqF1EdMKJybrzUIlArF45Wqc2p2/wZAtUrPJ0B?=
 =?us-ascii?Q?u72pEUQ1y2wuiAH7Ezmwxm9QrjzTudg/uGJlOmAzOLUD2hLEotPviqV63BGA?=
 =?us-ascii?Q?046DupzlmKY1XhFnjVDySo3z9bDI/EzZSrF+B2J7c3+PTybbWdTj8pdLqgq7?=
 =?us-ascii?Q?PTE9h09Jj/OSYKU+3CwEjCYE8pp76gL4jlm5umPRNJ24WSh9kctr5gjtBcF1?=
 =?us-ascii?Q?oaduGTfhjFBGKX3qD6Oe9YVmAf1EDWOypSJVKfHrseDx051kbVaXLmZf2BQ/?=
 =?us-ascii?Q?j1IpAVSe3Qu/hio/QsjlavZzOHyjq53Ms0g7E73BF4vUNDO02CCWKk+WRnnN?=
 =?us-ascii?Q?KBEsi9LHHsE5JADeGNCKe4N7YNzd0uh4rUj2Z7TaMRqhruW8fVmhgY9HK3v/?=
 =?us-ascii?Q?Ebq3GRjyYU/5rloVsJQJ3amEaI17LG7Yl0anPGyAQeEpbL57xFQ4AII2GHe3?=
 =?us-ascii?Q?U4q1tKk4yCASvbj+AMIkCTeo9X8MuxH3xVDuvA2Qn0vI88H3kPBT4cHRTLml?=
 =?us-ascii?Q?jMV3+xSATKzChEJQ/L1MuuWEX3z5TyDJo70wE2psq6CULN8LmSTd239g5S2Y?=
 =?us-ascii?Q?rWs4ju/XGQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: HcCZhP8UecFeZVn0oTdlKJJzj17POzMLa5KFdCwfAaib+EmfSYn0uX0Fk/5IV4+FII0tecHK7Bnc6SrN9BBJPmYoBuTp3ZGqP2+0+vNf1K+zAi6SOHg1+V8icWidIM1xjZnamAwjtPqpN9g3chfn/89uNIVLfsj9ItFVVb/jBkJjQqt+6Oc2FTILsDR1dKc+SmuiwuCc5/O6ltH358Z3nss2L3vjPZ5fd9OHqDO4TW9aHkkriRJEE33JKwCEzZ5/F+OHIG/D4dMXVy96skfwKfCwDBrgKrRUEQbiwjwIFaUUbIIysJErJIV2shlpeziAQQC0m5sKddFjqnP/Nj/aIQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6219.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: be56b359-dd4a-4916-73ec-08de8c4652e2
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2026 21:17:59.9308 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CcTtVo5zCNl2S39CivkwyHprcCVO3J6fOf+s5LWQwh9SUPJ2jHW/No6D6LpHwXp7aIAbtGK2ljeP3A8mokvEc8ddEHbQzX7E3E+Ep+DWU4U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7191
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774646293; x=1806182293;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gwo7aklEtFfcAadg1qjEpdnorfGMgYUVwOZdGwd1BwM=;
 b=OZ2gkIAvp5x3qFFYMo3170LAWc28A9U1nPfPPdyJPdLFYpt9FuDiSm7s
 ULRVt2FUxAHr2OsSRFlv9zGGdUgpdbM7o8+BQorQUDFp07pMkY7S+jyGH
 mhdY2io/GLGuyCVwwNroFsAOlaw4WY31kgqOL12uGtNbL6TDDKv+LAGBx
 BeqncKy0YemDI2wGl5IUcdOq9IpkGElGZqhiYDQ9NTlsffYBX9ip4e67k
 yVe3a8n5o2ow3awDhsTsf6SrhcDozlvcwLhdVnrrdJIYt4qkyf7DHOO7B
 Yafzj2Cp36V9sjuhe5hOia/9xER6VG4vJoLDj6zDhmkLYI0jWiBFYVEA1
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OZ2gkIAv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix PTP timestamping
 broken by SyncE code on E825C
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
Cc: "Vecera, Ivan" <ivecera@redhat.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 Richard Cochran <richardcochran@gmail.com>, Eric
 Dumazet <edumazet@google.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>, "Kubalewski, 
 Arkadiusz" <arkadiusz.kubalewski@intel.com>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:edumazet@google.com,m:stable@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[redhat.com,intel.com,gmail.com,google.com,vger.kernel.org,lunn.ch,lists.osuosl.org,kernel.org,davemloft.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: E216934B9CB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Petr Oros <poros@redhat.com>
> Sent: Friday, March 27, 2026 8:47 AM
> To: netdev@vger.kernel.org
> Cc: stable@vger.kernel.org; Oros, Petr <poros@redhat.com>; Nguyen,
> Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Richard Cochran <richardcochran@gmail.com>;
> Kubalewski, Arkadiusz <arkadiusz.kubalewski@intel.com>; Nitka, Grzegorz
> <grzegorz.nitka@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; Vecera, Ivan <ivecera@redhat.com>;
> intel-wired-lan@lists.osuosl.org; linux-kernel@vger.kernel.org
> Subject: [PATCH iwl-net] ice: fix PTP timestamping broken by SyncE code o=
n
> E825C
>=20
> The E825C SyncE support added in commit ad1df4f2d591 ("ice: dpll:
> Support E825-C SyncE and dynamic pin discovery") introduced a SyncE
> reconfiguration block in ice_ptp_link_change() that prevents
> ice_ptp_port_phy_restart() from being called in several error paths.
> Without the PHY restart, PTP timestamps stop working after any link
> change event.
>=20
> There are three ways the PHY restart gets blocked:
>=20
> 1. When DPLL initialization fails (e.g. missing ACPI firmware node
>    properties), ICE_FLAG_DPLL is not set and the function returns early
>    before reaching the PHY restart.
>=20
> 2. When ice_tspll_bypass_mux_active_e825c() fails to read the CGU
>    register, WARN_ON_ONCE fires and the function returns early.
>=20
> 3. When ice_tspll_cfg_synce_ethdiv_e825c() fails to configure the
>    clock divider for an active pin, same early return.
>=20
> SyncE and PTP are independent features. SyncE reconfiguration failures
> must not prevent the PTP PHY restart that is essential for timestamp
> recovery after link changes.
>=20
> Fix by making the entire SyncE block conditional on ICE_FLAG_DPLL
> without an early return, and replacing the WARN_ON_ONCE + return error
> handling inside the loop with dev_err_once + break. The function always
> proceeds to ice_ptp_port_phy_restart() regardless of SyncE errors.
>=20
> Fixes: ad1df4f2d591 ("ice: dpll: Support E825-C SyncE and dynamic pin
> discovery")
> Signed-off-by: Petr Oros <poros@redhat.com>

Thanks Petr for catching and fixing this.
Tested it in the environment w/o ACPI support and, indeed, PTP stopped=20
working. This is a valid fix.

Thanks!

Reviewed-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 22 ++++++++++++----------
>  1 file changed, 12 insertions(+), 10 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c
> b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index 094e96219f4565..60bc47099432a2 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -1296,12 +1296,10 @@ void ice_ptp_link_change(struct ice_pf *pf, bool
> linkup)
>  	if (pf->hw.reset_ongoing)
>  		return;
>=20
> -	if (hw->mac_type =3D=3D ICE_MAC_GENERIC_3K_E825) {
> +	if (hw->mac_type =3D=3D ICE_MAC_GENERIC_3K_E825 &&
> +	    test_bit(ICE_FLAG_DPLL, pf->flags)) {
>  		int pin, err;
>=20
> -		if (!test_bit(ICE_FLAG_DPLL, pf->flags))
> -			return;
> -
>  		mutex_lock(&pf->dplls.lock);
>  		for (pin =3D 0; pin < ICE_SYNCE_CLK_NUM; pin++) {
>  			enum ice_synce_clk clk_pin;
> @@ -1314,15 +1312,19 @@ void ice_ptp_link_change(struct ice_pf *pf, bool
> linkup)
>  								port_num,
>  								&active,
>  								clk_pin);
> -			if (WARN_ON_ONCE(err)) {
> -				mutex_unlock(&pf->dplls.lock);
> -				return;
> +			if (err) {
> +				dev_err_once(ice_pf_to_dev(pf),
> +					     "Failed to read SyncE bypass mux
> for pin %d, err %d\n",
> +					     pin, err);
> +				break;
>  			}
>=20
>  			err =3D ice_tspll_cfg_synce_ethdiv_e825c(hw, clk_pin);
> -			if (active && WARN_ON_ONCE(err)) {
> -				mutex_unlock(&pf->dplls.lock);
> -				return;
> +			if (active && err) {
> +				dev_err_once(ice_pf_to_dev(pf),
> +					     "Failed to configure SyncE ETH
> divider for pin %d, err %d\n",
> +					     pin, err);
> +				break;
>  			}
>  		}
>  		mutex_unlock(&pf->dplls.lock);
> --
> 2.52.0

