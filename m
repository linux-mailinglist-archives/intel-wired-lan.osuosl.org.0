Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 31EA3990171
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Oct 2024 12:36:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 469E6804D0;
	Fri,  4 Oct 2024 10:36:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xXGG2qsAq_1b; Fri,  4 Oct 2024 10:36:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2F1A8804D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728038187;
	bh=NTaqmwRJ9Npy1TbdoeQYJAyC+tDQQfYezTkjXkfG8UI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=c4RceQelpr6RtcqshF5a6Cje2TKBgjF2uvsz60jU15uDGTDSKS98MqUD8dLn9RZqa
	 YeoFDIzgQ0DtkOPhLmYWbG7ei17FZC3JYHYdMMEaA5UDq2Ng91Zp3g2FJYai4W+7QF
	 zP08sTvyC/JK/eBwg7Tncp3Zc0RSbZnrjHdzDpXcY677tut3nP7Mi4HtRT76kwFq+X
	 CGzmC/bLiseRlpAZw5NYoSSQi+a28XhK/I5KBAT+HBvNHHXAFWbtTWJXImFC3VaF5I
	 uCp51i5JGda3KggQPDPqaLCqAcYi4lbF9q04ADcje0VsuAC5PqoP4dS8OKY5JFg8XL
	 uTb/TOIoHCR8Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2F1A8804D6;
	Fri,  4 Oct 2024 10:36:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 97D361BF255
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 10:36:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 84FEF40458
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 10:36:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gTbiIhiEzk5M for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Oct 2024 10:36:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7901440359
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7901440359
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7901440359
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 10:36:23 +0000 (UTC)
X-CSE-ConnectionGUID: isL78mH9SvC1zVkJm5E74Q==
X-CSE-MsgGUID: xHqyVlgnRwWzBXPBnlaaWg==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="38615251"
X-IronPort-AV: E=Sophos;i="6.11,177,1725346800"; d="scan'208";a="38615251"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2024 03:36:23 -0700
X-CSE-ConnectionGUID: UREviDu+TPecTZ7XBkFq3A==
X-CSE-MsgGUID: 3OGuxXvsQCmQCjyLFho/og==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,177,1725346800"; d="scan'208";a="105504892"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Oct 2024 03:36:22 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 4 Oct 2024 03:36:21 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 4 Oct 2024 03:36:21 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 4 Oct 2024 03:36:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Jlcg8czBPaWS8EeXQj7sZQkty94oWrc+2BGSZm5W8EGWHGlShNzH3o45gNoSNTZ3Co21cxmopYREuzfsQUUQNufIBgOM6yiAow78beyPxIwVfDxj6CMIFD6xa1bWHaUk1G2In55WNEpb9RJcNXSMIwIAw5scPc65b34WL7fOwok1pxFPN9F8VKooiRPCraTJ8pYrV11Gz4ccElmruAcsnJCMecoxQ0PgTPRcgj1DyT92e0trJLejIKZfCcTnY85eODZrT/pZhxO4/Cq0e082dJtT63n+LMv9XOn7Hq2a2QrmYEgOnedPhatUSFEQUuoQQf8MIY+c4IK8qfgbMcPWPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NTaqmwRJ9Npy1TbdoeQYJAyC+tDQQfYezTkjXkfG8UI=;
 b=KbZsfD1Oqi+kEZk1uuqy4UduQLvCfhHhRAbvPHBgnIG/ReiNlmMg7ImxwdDQmJ0Mm4saemIUn489X0ZiEPIi+bo0Agglv8rCuaJYEAenpqSgEG2isS98WKOb6Ym1O33xaAwkzY589MqBCsHbhiwWmkVMhso8ZO7XZDCJdyMEua1hpT4IxtUzudlCnEOJf4CFu5mvuV3XrldYnqdMviGPksS6T0m++N+x9Nm+s93Cncsr89RwAwznmdGPEjCxMQgTROegQOWPlR3yeci9DPz874jnGvCiUcZmKCUDdAhV1Mv2evyY5ccH9HkX8o3t/rg8zDodMK9dk1hYt42PWZ6TUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by MW4PR11MB8268.namprd11.prod.outlook.com (2603:10b6:303:1ef::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.18; Fri, 4 Oct
 2024 10:36:19 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b%3]) with mapi id 15.20.8026.017; Fri, 4 Oct 2024
 10:36:19 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] ice: Flush FDB entries
 before reset
Thread-Index: AQHbENqXUsKaTPTLEU2j5xF0xGccd7J2cLkw
Date: Fri, 4 Oct 2024 10:36:19 +0000
Message-ID: <PH0PR11MB50133484C056891F57F38F6A96722@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20240927123801.14853-1-wojciech.drewek@intel.com>
In-Reply-To: <20240927123801.14853-1-wojciech.drewek@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|MW4PR11MB8268:EE_
x-ms-office365-filtering-correlation-id: 8b885204-df03-4ff9-e058-08dce4606224
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?j/sVOYILohCyJRqRjVayYcMHx1Xoo0ikVzKlAlfsuGDMapb9vKLoyB16tNML?=
 =?us-ascii?Q?kJLM+iC/FKaFqN1+y72KGpo37BZV5rRLX/ikc6WJJuzDxDNuas5zY3WXEXtw?=
 =?us-ascii?Q?63UejTIez3pq85pYoJGb6idMvoeKE2s3p/3BcIXjX7qtzZl51yy04oZ00/2Q?=
 =?us-ascii?Q?d8SEzOlLRm1iNZ5pAxuFA7YEupfwbhaSH+N9rgyIqaiwmmH57Oc6EHmQ13oZ?=
 =?us-ascii?Q?X4WVen7LiQvAcT050+ggT1zZEHHEYkIkJjjk1Qzt4zc67eovy5/ASosuxIf/?=
 =?us-ascii?Q?nviheDfMUtc4fTKqKxaAZc1ui7XpFaQPey5mnKzHcngvbf7/IWNKMejThLYE?=
 =?us-ascii?Q?YDCPoO+z8qauEfesCrLEHBbKAGpeDczMn1H3j6j3lwk+b1v817phtZJ1NorJ?=
 =?us-ascii?Q?YOs1r4OgBEBToetrmfzffnpDUz3W8/EbfSh+hquc9ujRC3I1/3OTBCRvk1dV?=
 =?us-ascii?Q?SeXgp4PQnOTQlcxALTD2GWDgWWLvLFPJKuIaCI0wC2nRSOpfAteEX5LuG4kO?=
 =?us-ascii?Q?mjY4QsyjnMhfpYZj8XhQp5ii9+QI7thpJADqzKHIO23GuAp7PHoaJkXEbA4L?=
 =?us-ascii?Q?HHp1z2Ovbb1/Hw7T0SSUJxO2jDM4J30gRsCSw4nvIYCUEyG0ZEFFnweXUVMR?=
 =?us-ascii?Q?yUTfpGfDws445tAyTXLYmb2p9vjlK6bWOPzzP718ATjceHpaZBhEet0+WHMl?=
 =?us-ascii?Q?UxByZe91DKPZpsLkh5E2YIQzwH1tYdP91a4RzgRjnb1hzeuugnlJIZCJv5tt?=
 =?us-ascii?Q?o4gbkWMFZc3mb3Gh13YTiLhaZ4JaPOChs0qpnAV3RHo9x7IXxmVtwLdXS76G?=
 =?us-ascii?Q?iO8e/Cg0oo/JM7qQCMrIBTsDhi5hud7nOFjXmWb+lRkIoiq2kdSo2xL/Njfw?=
 =?us-ascii?Q?3FeGjYdR5sa+M6dWiRVlwjeKPb7IWDYi8i2PlprkU0spXH3RTr8KLVS5oh86?=
 =?us-ascii?Q?VPjKtuL1L2ws8GvgxPTOsw4CkCdeUGhrYU0ApBidXpO3O36VETI2XSvolOg2?=
 =?us-ascii?Q?Zst1+b4zV+QFeUCbY0JV9LHqAB/LgotjdqRoX2kMuSt+mo3MJR3i0mpHWaUF?=
 =?us-ascii?Q?4epes6x6UCpXvS75sob0iLEj5Ag1s9ZtCYPjKSulUxdvHKYHcE6aoRYJJfrr?=
 =?us-ascii?Q?ExVEZpum3lGOrEVUF1UEZD2Y3WW0ENUgAkERX6Bd1d088EV5OQxJWHHaXxZw?=
 =?us-ascii?Q?/QKUG4FV+TCR5c5JSEAIrIAaYfDcoE5euOcMihZTW2s0clh7OFWiH1tIt8/1?=
 =?us-ascii?Q?1nSZ8Xc1UbO4nGgO38MXlyw0ppicc75cZyQAUnI0nROia03eqhG/WWaQPKw+?=
 =?us-ascii?Q?WqGrM9Ixn42P1Irno38D/7NwbQkkYdsA05aKSZuQibwT0w=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RwrdlvOmopFxFnCwAqd0/Kj0xzu0/p/gYaXpsl7v+DIBvTfmfwit3KuIPyzs?=
 =?us-ascii?Q?ELE1o42nRY7JtLSokljMuixU3GhQHr2W2o1O3mvimrKNuXgeT7ZJe4IrIjvw?=
 =?us-ascii?Q?b78TXQBkwdhbIJOFBtWvWVpfUeM88WfVsRPFixlExkstW3VefWu+tvytPrxU?=
 =?us-ascii?Q?4pAgdxt4eaE7T1/KKara4qJYYu7/PsPBx82D2kH8SdRtIiHbjxes/P0ggm21?=
 =?us-ascii?Q?klCVfiPIYxdwfKqht0a+on+Uc8j6DpWhW9C0xnXmrvxsKjH/fSq7AGECET7i?=
 =?us-ascii?Q?aZc+03egRTy9mxi6i1eTTFf3MTuvR5ROvbt9YM2iv1pRe/z0qeOuXCML2caA?=
 =?us-ascii?Q?tO+jy8AJW14/ntmot/o4pRMDUMLSRI8uBJx9mmBRNDi4ZwCfL1KpVuyWwhKK?=
 =?us-ascii?Q?LkLiGy3kYhTAoy75ZX2VxxlHVDVDl5PoFvQo7So+3OYPDdzVpbxz/sDLIdNH?=
 =?us-ascii?Q?xjvtzi2bwwLhHB8LE3AlK6V0P9C0r/IN94w/AMDM5uJjPdp/nju1SCRPynyM?=
 =?us-ascii?Q?18p9JXyuNx+knM3MwsKBCeGDoklhRmoZcMjuFSe2FWduo5XFey/w6aNBqzTN?=
 =?us-ascii?Q?5KXE2jg+oq8d6F708fyYFMGb18dDQU3XkHkfJDi0xNYZtAFDsYs36Zp6egSu?=
 =?us-ascii?Q?PlxQ4yHmrFpeLPKgQX7120kybsql5hdj/djyOKBa4taL9WGBOxy9qz/LZqEx?=
 =?us-ascii?Q?5mgLjqYR+OSbAv8s9Hkk1jXetgaZ+NbvPTIVyzlTAGyDizgFCXnIhYSyN6Qa?=
 =?us-ascii?Q?O0Xs0LZ1qK0SgaOJSIAAJaiF+eYbzEAx6HYMXKiKeSoMw5T8eXqisjTpfhHg?=
 =?us-ascii?Q?rczieYYhqhgRhGZdplwfhXebtXepRvvGsFRqw6fKq+TlQ2++LDjbq0WxBiOF?=
 =?us-ascii?Q?o1A/n8Rg5/E/VjEb4TdNT7dSP6X1X3m3MvSf3+rhr96y+dSzKXs69C1h2guW?=
 =?us-ascii?Q?sRsTfRVboBAmAQu9EQOQxLIIqcClj8bOhy8Zlc3haU2hqZzSH1XgXm46kA4Y?=
 =?us-ascii?Q?JIr64m0UyNIGPdYdVOSJC0Ap0v+XLKAT4PvcJ9Af/MlJEs2e0AM7M9LXfRE7?=
 =?us-ascii?Q?O3F6R41lLT/kEosDsWzB/1e7cBvk5dQ4kJaVU1VQJaCY5IWWY9/OTYenzKK+?=
 =?us-ascii?Q?d3lC0Pv64VkksNTT+8vMoWqyBrPP6EKd1WHMo+CzV66YxVPJ0gdhjmXEN6Jr?=
 =?us-ascii?Q?HebvtTtCJEFl+YfcjSNMGJYULawQM7DgdGv0O4oOVUWFVVkfcgEqm+287WvC?=
 =?us-ascii?Q?agjJI1te0+pEJuU+Kcb781s3UC9h2zmmLcN3N+F5lOi25X6Mm7DLXxXzE62w?=
 =?us-ascii?Q?CUGBcIWQ8uJ9nPBfh8QWeMBhWa8/DxEBbVc5TRUskH4R44GIKpTqFhB86+Co?=
 =?us-ascii?Q?rmqd3g1hu15JMEd0XS0lyEWtpnf+rqNJgZLaajYLm8w/C2zrkbITK3nNjMLP?=
 =?us-ascii?Q?aTXnX4jRccpQ1ybt4hwoPq6pgPQ+DIw6QHYB2fdgoClNNNW15zafHOkcFksB?=
 =?us-ascii?Q?4QJbD1q1ZOacQn33hLKCkbWlCCy16bNwPF3J6sdCUukBRM4Grl+L2HAAyAMT?=
 =?us-ascii?Q?DagrcqY42/eFjCSiGPWBULx7aYIBixHFPRpQuFc7oZ23OtujmFD7Vykv8o5R?=
 =?us-ascii?Q?4w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b885204-df03-4ff9-e058-08dce4606224
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Oct 2024 10:36:19.3941 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IIJWy/cWeYI3pJkCITBcZ8fzkrKIzy9kbQ0GGcfwr52NrqE+W3tS5NczzcpPgBiH8EcMws+N58jbqE/0J3GK/IG7Ni+jOlmvjvfpP3prV6M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB8268
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728038183; x=1759574183;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eSPWzjyMW87so0cTreLLy4DxY1+MIc2OnSCecvzphYM=;
 b=hRyDBbBEXu45CJeTIKTo70IkaL4e8xS+hobVoiMDGxAuheN45y9d3xRp
 4nqHKyQLYHbjLYx0dzJV/cROGZSp7zbE17efHuwdcQb1V+ng8fHKBKIrv
 ziYdRVC2G+mhrW7YKaHuTylKwBz3jTRqX6YyWi+vqZtTkMKbhRe/qqqsl
 wbs8ZixCdxIFAERJ+pO/0X1bi7YjVUVZhz5tlkniqDpAKh4FfRNl9Q0YJ
 UJDpigMmKRYKpR3+pBeYTgR4ViRQsMSLih3oo3lKKtAlPj+xi1Pqiu3ba
 sE36Sd17xoOeYaVLqR39nbbaU+3LLdDeGzfkyYikUR1ijA29ztYUhbB73
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hRyDBbBE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: Flush FDB entries
 before reset
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "marcin.szycik@linux.intel.com" <marcin.szycik@linux.intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "michal.swiatkowski@linux.intel.com" <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Wojciech Drewek
> Sent: Friday, September 27, 2024 6:08 PM
> To: netdev@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> marcin.szycik@linux.intel.com; intel-wired-lan@lists.osuosl.org;
> horms@kernel.org; michal.swiatkowski@linux.intel.com
> Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: Flush FDB entries befo=
re
> reset
>=20
> Triggering the reset while in switchdev mode causes errors[1]. Rules are
> already removed by this time because switch content is flushed in case of=
 the
> reset.
> This means that rules were deleted from HW but SW still thinks they exist=
 so
> when we get SWITCHDEV_FDB_DEL_TO_DEVICE notification we try to delete
> not existing rule.
>=20
> We can avoid these errors by clearing the rules early in the reset flow b=
efore
> they are removed from HW.
> Switchdev API will get notified that the rule was removed so we won't get
> SWITCHDEV_FDB_DEL_TO_DEVICE notification.
> Remove unnecessary ice_clear_sw_switch_recipes.
>=20
> [1]
> ice 0000:01:00.0: Failed to delete FDB forward rule, err: -2 ice 0000:01:=
00.0:
> Failed to delete FDB guard rule, err: -2
>=20
> Fixes: 7c945a1a8e5f ("ice: Switchdev FDB events support")
> Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
> v2: extend commit msg, add NULL pointer check
> ---
>  .../net/ethernet/intel/ice/ice_eswitch_br.c   |  5 +++-
>  .../net/ethernet/intel/ice/ice_eswitch_br.h   |  1 +
>  drivers/net/ethernet/intel/ice/ice_main.c     | 24 +++----------------
>  3 files changed, 8 insertions(+), 22 deletions(-)
>=20
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
