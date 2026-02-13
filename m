Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iN8BD+rnjmkDFwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Feb 2026 09:59:22 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A45134405
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Feb 2026 09:59:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B79AC41B88;
	Fri, 13 Feb 2026 08:59:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TaNlXtX0g7-F; Fri, 13 Feb 2026 08:59:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D34F741B43
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770973158;
	bh=PIuNimWC/UjH/aHMv+lGGAeII354aJgYb3RfwydfbJ4=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=K78bZRK+0JG/8G9eq2586GjZdCM3g4iB9poYB+/1QDpIY5AIoMqXW+wynOfAsp5Qn
	 WLvwRk5r8uoP4li60NiGhGPjWoVF45oa6dVp92AX6jLGrsFEizkwk0cl2RSYQRO/Od
	 /dDg9KphP2QG7XwlEIc9BluyYAbaYVjFZlPbF8ynudBSoOPqSbGcp4S47z4C7hAE59
	 7TxUO/b62P5wjzngPHVTPVVl8XM0SQf3NBylGhAeNpvbLG8NFM6kNfObAI9fbUQeV8
	 3RyrZ9g5QJgCQIVDMucSz+bYghWkW2F7wadnN0zMroMQ/I5qZwaRhHJOCHSCFXVcWr
	 tg4+UWlCB2h2A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D34F741B43;
	Fri, 13 Feb 2026 08:59:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 50EFF255
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 08:59:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 35897607BE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 08:59:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mEkqlKRr-fcl for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Feb 2026 08:59:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C4366607BD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C4366607BD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C4366607BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 08:59:15 +0000 (UTC)
X-CSE-ConnectionGUID: qztrpL/RTua6qvyN30CY+Q==
X-CSE-MsgGUID: fizhFx69RjWEH49hawUOdg==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="71182398"
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="71182398"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 00:59:10 -0800
X-CSE-ConnectionGUID: IkPaSI2KQ1+TIAnGvYUYfg==
X-CSE-MsgGUID: +cYgzVTYQ4m6uN0iEYWZgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="211776281"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 00:59:10 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 13 Feb 2026 00:59:09 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 13 Feb 2026 00:59:09 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.8) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 13 Feb 2026 00:59:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SDiBruYKnYaEgLWzMbTE517FRL6RNJmbkhupjfJ68xoLLHfBvLevS8EZKMM2do8HKQDSUJFsJucsaBhEL0ZCv3NXnai4ZvUfUyd5ZS/9EHHNft75uhSnXGQ5SeDkrvNvRstmY/1/rj2b3peSMpEHq5QUvG75b7Ya4TjjIo58hpq1VeGsZKjiIDMlMTPQ+4d+TfKlBUPqu/JW/sU9gggbmAmairsH0mYOShBAnUnfQLGXxNHurkSr7NAe06oTz/L/AqawdFRobZcGAnY6tSIi6TdWTN5LvqYDGLyxJ46Qc9BoUrf3ddIj5eA5ANocBQo2nWuIcbIxaFFBCbO7w2Vjvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cl6w+4yyG/FGtT/1ko/lrvX5la7Kqp1sYSdwg9rg9kQ=;
 b=rYtMd5OQHv27tTUj8sgwc0KLiUv4+swyAR83Hhd7IJ8lSHkP//Q1xXVakNLpOvOmlZRqF4kDrFS+tQlLLmM4tDKJX8RNu7q1qhFAB0nb63JxbhAGurWC7DcWEQqE2JQB/3qK907kGJTnQhU71AeLgYXHGXchLsYXyRNbpURN/wlSOYVOObV9rNUqBywaWDDDCjU3s/XReC5jsM4IdA7Np7TN04TKsm8HQ7a1dLCek50kJL+81y3SAcxdw4dW0ekLSrwAaWTL0Ke1ZGwuM+shPDgNMmk9GvsnZvgj5EGh2wrOy3fAu0T7Ml5d1JmwRtiQR3RnNAS2IIQ3RZyP+BrWPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 by DS4PPF2B323C540.namprd11.prod.outlook.com (2603:10b6:f:fc02::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.13; Fri, 13 Feb
 2026 08:59:01 +0000
Received: from SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::2edd:5c6d:169c:389b]) by SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::2edd:5c6d:169c:389b%4]) with mapi id 15.20.9611.013; Fri, 13 Feb 2026
 08:59:01 +0000
Date: Fri, 13 Feb 2026 09:58:44 +0100
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
CC: "bpf@vger.kernel.org" <bpf@vger.kernel.org>, Claudiu Manoil
 <claudiu.manoil@nxp.com>, Vladimir Oltean <vladimir.oltean@nxp.com>, Wei Fang
 <wei.fang@nxp.com>, Clark Wang <xiaoning.wang@nxp.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Alexei Starovoitov
 <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, "Jesper Dangaard
 Brouer" <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>, Andrii Nakryiko <andrii@kernel.org>,
 Martin KaFai Lau <martin.lau@linux.dev>, Eduard Zingerman
 <eddyz87@gmail.com>, Song Liu <song@kernel.org>, Yonghong Song
 <yonghong.song@linux.dev>, KP Singh <kpsingh@kernel.org>, Hao Luo
 <haoluo@google.com>, Jiri Olsa <jolsa@kernel.org>, Simon Horman
 <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Bastien Curutchet (eBPF Foundation)"
 <bastien.curutchet@bootlin.com>, "Vyavahare, Tushar"
 <tushar.vyavahare@intel.com>, Jason Xing <kernelxing@tencent.com>, Ricardo
 =?iso-8859-1?Q?B=2E_Marli=E8re?= <rbm@suse.com>, Eelco Chaudron
 <echaudro@redhat.com>, Lorenzo Bianconi <lorenzo@kernel.org>, "Toke
 Hoiland-Jorgensen" <toke@redhat.com>, "imx@lists.linux.dev"
 <imx@lists.linux.dev>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>, "Dragos
 Tatulea" <dtatulea@nvidia.com>
Message-ID: <aY7nxN4nKf0lWsVO@soc-5CG4396X81.clients.intel.com>
References: <20260212183328.1883148-2-larysa.zaremba@intel.com>
 <20260212183328.1883148-8-larysa.zaremba@intel.com>
 <IA3PR11MB89867A766621F2C6CA2D2960E561A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <IA3PR11MB89867A766621F2C6CA2D2960E561A@IA3PR11MB8986.namprd11.prod.outlook.com>
X-ClientProxiedBy: VI1PR0902CA0049.eurprd09.prod.outlook.com
 (2603:10a6:802:1::38) To SN7PR11MB7540.namprd11.prod.outlook.com
 (2603:10b6:806:340::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7540:EE_|DS4PPF2B323C540:EE_
X-MS-Office365-Filtering-Correlation-Id: a034ec5a-2f74-4809-5c3f-08de6ade21bd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|10070799003|376014|366016|7416014|1800799024|7053199007; 
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?DCH47lChrsExZwKJ2wB2hkiz6aC7xkQIBlatpftLjptma+lCaYQz+U60Lb?=
 =?iso-8859-1?Q?BDGJjRZBZzB8cHm5XN45xhIe+78jWIqJ6YY/ci20wtq4Mt5GUBuG3XOt08?=
 =?iso-8859-1?Q?kznSWdv8zjxdxHffzDrJZBF35ySox6nUXgw0DVGqXNt74qq3YUEWXQQ5+S?=
 =?iso-8859-1?Q?hJUrYcZtlL/6aX94fhw0SAMs0Dx5UEZjrYHLG1milQvCtkO+wZVaEHN4jv?=
 =?iso-8859-1?Q?bE5y/nWjCfUTN6nFQRR6p2w8yhwz4FuecsJg7NFQCwxgJcoqVryddG+n0l?=
 =?iso-8859-1?Q?tRjfHy3ruDERE3CyrWE2j/fIoSfpn0u62ElVlAn1L95SgHuKoqrdAxTL9Z?=
 =?iso-8859-1?Q?h6YT38/czIgNIYIpU8OTuitC+ikccOtq74H2N1/Ce00Vx3N0CHuk1ziTqI?=
 =?iso-8859-1?Q?M5TZ7gSrbUmb+go7EksbZ9c/iZXfNU5KLWmS/sUv79Lk32qL4f60VdAfxQ?=
 =?iso-8859-1?Q?AKgABveBa5jqp76X7cZJ58OnONicxqoXo6sd+SW+sNVDEknueslbNEc2ob?=
 =?iso-8859-1?Q?e1i2dAc9wkwOyDfhK4YWAbOyVzZZhrJNn4sd+s4IFwcWXgmI3k2cpE2V37?=
 =?iso-8859-1?Q?S0feoJJL1dFRyduCeKnGQHXOUiRgR6VuJPebESbVwrux8idSdCIQL8li3J?=
 =?iso-8859-1?Q?zC2rnw1Qjw5AmRpfxgiykbAsox2MyeaZwFLRIT1YIM3MUr3cL4piPkwU6A?=
 =?iso-8859-1?Q?s+cguB2gCv27T4ubSmUbHcQPirV14tvGhKbTyAC0QIYTDh9XCFkWvNwEu8?=
 =?iso-8859-1?Q?ZieN1GQ7l5JzuKpcdzYUy7zDJJmBw4oNSxwYakuq6dR6JbFPENKtoUAzyO?=
 =?iso-8859-1?Q?ymPu8sN+iUNRBqeiiC1Cra01mXjZky4VfecEAJYAhrjA8fo0CUqE+n2LIO?=
 =?iso-8859-1?Q?GqMozQTvUp7lwpjINb+8aNV8+kjPj5ddzemnBwvTHj6/jp7TG2MFUOqV8G?=
 =?iso-8859-1?Q?9sNkVmVvFwX9Tyj6N0A98fqb4sN9vJD4UykycWQa2Lgh/ki43z0NjTks0W?=
 =?iso-8859-1?Q?rOL2fc4pBXJw+9y0WWZQD1TiLQ0GPnFwnyQllEt/k0HFVcY4J3v2DYcork?=
 =?iso-8859-1?Q?vWlLVQxlJe4dulXcIoKrjSXYcm9SR1RnM4DjKxumCfZQEoTPxUgDwGFo+S?=
 =?iso-8859-1?Q?JAG2+yQ25aglQL77gH1ApRVEMqyBbz320VO5+fQnT6EZNIe+7kOJRB1BWu?=
 =?iso-8859-1?Q?yZuxA3oj1RiEPOYFIFPBPRdVrlr9dwT38MT6sza7GQXDKKfyiCk4TRqzkk?=
 =?iso-8859-1?Q?U3gn+W8Qf4Tx01v1jUSLoVh8h+ekMpWLqeXqJW56Fz2QtxW65zOXsyrjvC?=
 =?iso-8859-1?Q?WkH0pyCu5no8P3blHVMv1sr42Q0NobBk5MEzxY0+WqAfn16Bnv22cJjayA?=
 =?iso-8859-1?Q?u5wlJG7ObEQG1L6k4fmK+5o59n1GiS+6SSP+MZtEvUacyZn9SS4CHqllb5?=
 =?iso-8859-1?Q?T5+UAnBfvZp3bQ//ARLG1HfIs+SNBz7UpIisanPUPrKbqi0k4aRIW+2aZj?=
 =?iso-8859-1?Q?UBqqDOllOtXICNiNetL0vSwASINjYJMfwNGbxgwAb5+NAbY1fj+sIw66P/?=
 =?iso-8859-1?Q?AbERL1TUzjy+BLYT4WktnmoalBwV?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7540.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(366016)(7416014)(1800799024)(7053199007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?58Oxwwc8MJ+Ep8ck44UNr6ZysolQyGDMNHfobuXTBWOr/jpN9BHOlbEFTQ?=
 =?iso-8859-1?Q?DO34ivmSG/pjSAOvAkoF+Yzn4ZumOuSf3xiKR71rrbkv+36cEg9HoYD38f?=
 =?iso-8859-1?Q?q7AmoH0lK9BvyzGtTIPonnkQomUs5kcpNqJmxZRtANcMO1DbnZXrrPoe9J?=
 =?iso-8859-1?Q?4KZinCHzy2glfYMR5R16xNmZe8/vtAC4Q2vedeBKBXIiEGDT+SrQXt4jYy?=
 =?iso-8859-1?Q?PAiM4ljqpDrcak3CbZ8FvDbrEFBFD3eqR00eCSifjWIgU1Wp4/+y8HeZPy?=
 =?iso-8859-1?Q?CSaU6PiLAPrTyS1qDRnXDgydOGn8ZInQLCDuCQMExnVsRUOLFsU2LjM1+g?=
 =?iso-8859-1?Q?GjCNYOtzq5424Nyl7j9e71k7E9y08SeoMagS1o1fCleq267dDg1I5+Fte4?=
 =?iso-8859-1?Q?36K+S51+xsuLbVYg/7sPfScBSRtJGa5MtxEFUtRT3JOjkhFwCBFq/YvkCX?=
 =?iso-8859-1?Q?19c6Dlu1a3T5A1EGog2PnVkWAY6BJ8+EauIRx5lh82pYZ1n4dmXEHYRSjp?=
 =?iso-8859-1?Q?LfLyj6HWTTcwmGqEpTzjZFDnBjlv9MFMoQoWJe8tK3tEUpHpSHpMhP2xdb?=
 =?iso-8859-1?Q?5KB2580o3vi/Uky2vSyK8bzpnpLwGBb2Pfn9oBKu0FGb1moi6OjO2KtkWJ?=
 =?iso-8859-1?Q?sEplIh7eHR42U46Nd2qA4l6AvLPXgxu0S2BXJuRPiRO1ssYGCH4Gi5U163?=
 =?iso-8859-1?Q?s150A+BnJzcojcgFR9Oh0YBoCssl4+d/3Kqgc7ZncdY4F2kqAqEzfrzknd?=
 =?iso-8859-1?Q?WF+NotvGO8qJWNLMrKMl3F2vKptvxCE5n4LhbpkaV/DrI/VLCs3x0tgSmk?=
 =?iso-8859-1?Q?UpoNRrafgYVopkWIuVENE9Zq3mt2Oj8hh/9jkAsSwtF5YC5jXbHw9TlwHk?=
 =?iso-8859-1?Q?ZxuJvrenSRHMvckCb0zFeR2SVEMBdWeV37mP0cqu6RFadHMSgbN7lAJaK0?=
 =?iso-8859-1?Q?u7Hr/H2VYmOfr31VgqapQViC0XOVwxohuO5WJQqJWfr+pQqwrtdJCVu1x/?=
 =?iso-8859-1?Q?ychM2lA65Om0uIC2SFtPNydHzBJJGoGVwTj+f+iehtT2cfaEjF4KMhXS61?=
 =?iso-8859-1?Q?ddZxPtqT4aBVZYPXymBh3MeAA4PgY4egOIbLll6QB6yyNvMKUhaea83mX+?=
 =?iso-8859-1?Q?p5vYyOuQWEXjD1iRZguIyn2Hsmt9M4/X8U2fgk7FSs8HorlJ0L87AnHyQu?=
 =?iso-8859-1?Q?/WbYodL1gIbzyiqyB7KvO/QkTN2SLGJW63FtiTnnOhMH8w327cKhrBDfxu?=
 =?iso-8859-1?Q?qsywISA3b7XjnlywgqA1zuNWL6L8rkOKIPL/6VpqWV/ikn75z99a5qehjC?=
 =?iso-8859-1?Q?93R9jNHH/DOBZZMIqIRCePPDg9vJTo3CNy5aBRzpjCTpZOp6OPggeZcxsg?=
 =?iso-8859-1?Q?XCpi4bh+jAskaWXzOc4oPSDL9EdSLxQiBySbYwXJ5qCOD+VgzOdM5+h1Nl?=
 =?iso-8859-1?Q?IxAw1b7DINGPnHzbRwMYzp6dTNQhm2jRo4YHNDjQv6TLPMqGIyEOlI8sfc?=
 =?iso-8859-1?Q?l7LFHzKgbBLmjFIV7LQHRfXyGP+3i//YmWacfLlWszZeF2mtd2A36T3l58?=
 =?iso-8859-1?Q?k5o0ObdBooPnDN5zVe0/9jsSAKhpbkIf3GyeWkdcB++1mgKOVBMO2RksFI?=
 =?iso-8859-1?Q?xQETqZ/tMhA/HRGnf5QTH9IPuvyHZmh6ili+nQuXe41tGvDmoqFayUmHwP?=
 =?iso-8859-1?Q?u18sjmF7wEc1qAmSjz3WIIM0hwNu9UwDwsGa/V73MikkpkUF/g+FRMCQJW?=
 =?iso-8859-1?Q?tDdD1J2ynxkQv3LKBZ4KdbIYV5FcT5YyxS4/raDKRHf5jUpWPg+M5h4nQU?=
 =?iso-8859-1?Q?Nt6WT3wx6y/Mmr1GEF8ddxgOYjpyXtA22n57Z6dZEECUfANCCvMBWJSOw8?=
 =?iso-8859-1?Q?fH?=
X-MS-Exchange-AntiSpam-MessageData-1: qvq7VU/iboXb+mOWvYsfcB6jwUuK13Ampmc=
X-MS-Exchange-CrossTenant-Network-Message-Id: a034ec5a-2f74-4809-5c3f-08de6ade21bd
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7540.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2026 08:59:01.5818 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /fp0q3MU1N+0djumEA5zJzXQ9CcGnHB+q1qColkvPRrUEQ66bQABegw+Z8YdJuEAHEWjHLWdnfku44Dw/cO1OiaGDMaDl4rR6MBdpAOgdow=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF2B323C540
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770973156; x=1802509156;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=nq7+OXQe7dUFCuYQJzDgI1fZub7HVyaQbHkApheet6c=;
 b=HjNV7pcjeTTZ5GZklMM8Gm5Kn5SqUArl89GvDXLfgmrE4/EdUrQVI31Z
 GiaJbqcYomIWCZrhZujm8NfYm6zJ2UCB6NXAzthR74hz7RU9bZ7fr6pV3
 wDwaSZEY+tzP/9sqyoLwXqsbvPfjqRNNJXwPN30rJO8MXvl63p8TvANqO
 ClJ3jrmPOB0bRsEbiuKCCmtZrP7FCI9YRi84C4WrmaHTxMVpst731KDr0
 W0AjJlipwglmCjYO0wfE2dRG5a9EAZcU6fWkwFCWvxKinQTnqiG3bP/J2
 t+vwMaQSTDD8noXiPPMGVG/rVUURD7n7/2RhgVz/lbdaK6FP4WBjjcvRU
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HjNV7pcj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf v2 6/9] i40e: use xdp.frame_sz as
 XDP RxQ info frag_size
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:bpf@vger.kernel.org,m:claudiu.manoil@nxp.com,m:vladimir.oltean@nxp.com,m:wei.fang@nxp.com,m:xiaoning.wang@nxp.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:horms@kernel.org,m:shuah@kernel.org,m:aleksander.lobakin@intel.com,m:maciej.fijalkowski@intel.com,m:bastien.curutchet@bootlin.com,m:tushar.vyavahare@intel.com,m:kernelxing@tencent.com,m:rbm@suse.com,m:echaudro@redhat.com,m:lorenzo@kernel.org,m:toke@redhat.com,m:imx@lists.linux.dev,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:dtatulea@nvid
 ia.com,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[43];
	FORGED_SENDER(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,nxp.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,intel.com,iogearbox.net,gmail.com,fomichev.me,linux.dev,bootlin.com,tencent.com,suse.com,lists.linux.dev,lists.osuosl.org,nvidia.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 81A45134405
X-Rspamd-Action: no action

On Fri, Feb 13, 2026 at 05:04:03AM +0100, Loktionov, Aleksandr wrote:
> 
> 
> > -----Original Message-----
> > From: Zaremba, Larysa <larysa.zaremba@intel.com>
> > Sent: Thursday, February 12, 2026 7:33 PM
> > To: bpf@vger.kernel.org
> > Cc: Zaremba, Larysa <larysa.zaremba@intel.com>; Claudiu Manoil
> > <claudiu.manoil@nxp.com>; Vladimir Oltean <vladimir.oltean@nxp.com>;
> > Wei Fang <wei.fang@nxp.com>; Clark Wang <xiaoning.wang@nxp.com>;
> > Andrew Lunn <andrew+netdev@lunn.ch>; David S. Miller
> > <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub
> > Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; Nguyen,
> > Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> > <przemyslaw.kitszel@intel.com>; Alexei Starovoitov <ast@kernel.org>;
> > Daniel Borkmann <daniel@iogearbox.net>; Jesper Dangaard Brouer
> > <hawk@kernel.org>; John Fastabend <john.fastabend@gmail.com>;
> > Stanislav Fomichev <sdf@fomichev.me>; Andrii Nakryiko
> > <andrii@kernel.org>; Martin KaFai Lau <martin.lau@linux.dev>; Eduard
> > Zingerman <eddyz87@gmail.com>; Song Liu <song@kernel.org>; Yonghong
> > Song <yonghong.song@linux.dev>; KP Singh <kpsingh@kernel.org>; Hao
> > Luo <haoluo@google.com>; Jiri Olsa <jolsa@kernel.org>; Simon Horman
> > <horms@kernel.org>; Shuah Khan <shuah@kernel.org>; Lobakin,
> > Aleksander <aleksander.lobakin@intel.com>; Fijalkowski, Maciej
> > <maciej.fijalkowski@intel.com>; Bastien Curutchet (eBPF Foundation)
> > <bastien.curutchet@bootlin.com>; Vyavahare, Tushar
> > <tushar.vyavahare@intel.com>; Jason Xing <kernelxing@tencent.com>;
> > Ricardo B. Marlière <rbm@suse.com>; Eelco Chaudron
> > <echaudro@redhat.com>; Lorenzo Bianconi <lorenzo@kernel.org>; Toke
> > Hoiland-Jorgensen <toke@redhat.com>; imx@lists.linux.dev;
> > netdev@vger.kernel.org; linux-kernel@vger.kernel.org; intel-wired-
> > lan@lists.osuosl.org; linux-kselftest@vger.kernel.org; Loktionov,
> > Aleksandr <aleksandr.loktionov@intel.com>; Dragos Tatulea
> > <dtatulea@nvidia.com>
> > Subject: [PATCH bpf v2 6/9] i40e: use xdp.frame_sz as XDP RxQ info
> > frag_size
> > 
> > The only user of frag_size field in XDP RxQ info is
> > bpf_xdp_frags_increase_tail(). It clearly expects whole buffer size
> > instead of DMA write size. Different assumptions in i40e driver
> > configuration lead to negative tailroom.
> > 
> > Set frag_size to the same value as frame_sz in shared pages mode,
> > use new helper to set frag_size when AF_XDP ZC is active.
> > 
> > Fixes: a045d2f2d03d ("i40e: set xdp_rxq_info::frag_size")
> > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > ---
> >  drivers/net/ethernet/intel/i40e/i40e_main.c | 9 ++++++---
> >  1 file changed, 6 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> > b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > index eaa5b65e6daf..f91157774f1d 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > @@ -3563,6 +3563,7 @@ static int i40e_configure_rx_ring(struct
> > i40e_ring *ring)
> >  	u16 pf_q = vsi->base_queue + ring->queue_index;
> >  	struct i40e_hw *hw = &vsi->back->hw;
> >  	struct i40e_hmc_obj_rxq rx_ctx;
> > +	u32 xdp_frame_sz = 0;
> >  	int err = 0;
> >  	bool ok;
> > 
> https://elixir.bootlin.com/linux/v6.19-rc5/source/drivers/net/ethernet/intel/i40e/i40e_main.c#L3577
> All VSIs except main will be skipped, so xdp_init_buff() will be called with the default xdp_frame_sz = 0;
> Is it ok?

Sorry, you forgot to remove your Reviewed-by(s), patch changed too much.
You are right, xdp_frame_sz should be (i40e_rx_pg_size(ring) / 2) for non-main 
VSIs. I assumed that they do not need xdp_buff, but it is unescapable in non-XDP 
Rx processing after XDP mbuf introduction.

> 
> > @@ -3579,11 +3580,12 @@ static int i40e_configure_rx_ring(struct
> > i40e_ring *ring)
> > 
> >  	ring->xsk_pool = i40e_xsk_pool(ring);
> >  	if (ring->xsk_pool) {
> > +		xdp_frame_sz = xsk_pool_get_rx_frag_step(ring-
> > >xsk_pool);
> >  		ring->rx_buf_len = xsk_pool_get_rx_frame_size(ring-
> > >xsk_pool);
> >  		err = __xdp_rxq_info_reg(&ring->xdp_rxq, ring->netdev,
> >  					 ring->queue_index,
> >  					 ring->q_vector->napi.napi_id,
> > -					 ring->rx_buf_len);
> > +					 xdp_frame_sz);
> >  		if (err)
> >  			return err;
> >  		err = xdp_rxq_info_reg_mem_model(&ring->xdp_rxq,
> > @@ -3596,10 +3598,11 @@ static int i40e_configure_rx_ring(struct
> > i40e_ring *ring)
> >  			 ring->queue_index);
> > 
> >  	} else {
> > +		xdp_frame_sz = i40e_rx_pg_size(ring) / 2;
> >  		err = __xdp_rxq_info_reg(&ring->xdp_rxq, ring->netdev,
> >  					 ring->queue_index,
> >  					 ring->q_vector->napi.napi_id,
> > -					 ring->rx_buf_len);
> > +					 xdp_frame_sz);
> >  		if (err)
> >  			return err;
> >  		err = xdp_rxq_info_reg_mem_model(&ring->xdp_rxq,
> > @@ -3610,7 +3613,7 @@ static int i40e_configure_rx_ring(struct
> > i40e_ring *ring)
> >  	}
> > 
> >  skip:
> > -	xdp_init_buff(&ring->xdp, i40e_rx_pg_size(ring) / 2, &ring-
> > >xdp_rxq);
> > +	xdp_init_buff(&ring->xdp, xdp_frame_sz, &ring->xdp_rxq);
> > 
> >  	rx_ctx.dbuff = DIV_ROUND_UP(ring->rx_buf_len,
> >  				    BIT_ULL(I40E_RXQ_CTX_DBUFF_SHIFT));
> > --
> > 2.52.0
> 
