Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C82C3C5F05E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Nov 2025 20:24:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 86CA1612B9;
	Fri, 14 Nov 2025 19:24:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 46K371Gh6R7A; Fri, 14 Nov 2025 19:24:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DBE0A612BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763148295;
	bh=2KGttUDdD+jnNAOlPsl6JwPa8zl/NAqxE14OGnEBBRo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yXT7qM25hRAlYxx+GTIEUfEpnwzgMoAgvEHRTdPETPpkqjmrQC3WfpxEGb06D3KHb
	 eVafwJjXoZsFpf71Q8ywzbJFesgWdm8kxSs606XTcZFzP2HMgeF1xYHcVys7k++qGk
	 08BQEzdAnreZHXSMJB9YNpDRaAHuNukRSRMBy2uAjKec5ql6j77UEOJYhduAWSxDxn
	 mfUPvVy1Ex3avy1iCLxUWM53uL7QyMv+GoJ1bEsXErf7kTSUOHa5OxveSWyCQJczXe
	 WHAJy2G/N2HZ/K+hM9KyconNf4YDScECfY645wjV9PbufWwBw6O9pAVQhHzAUYuLqR
	 yckjP0Nls79Ug==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DBE0A612BE;
	Fri, 14 Nov 2025 19:24:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 758D5D5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Nov 2025 19:24:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 728B580E9E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Nov 2025 19:24:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A_cBw-DEeTQy for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Nov 2025 19:24:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9719C80E9D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9719C80E9D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9719C80E9D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Nov 2025 19:24:53 +0000 (UTC)
X-CSE-ConnectionGUID: /TYJN5OrQ7GWi26zbC17UQ==
X-CSE-MsgGUID: EmGKnqiiRteMrNa/KL6weA==
X-IronPort-AV: E=McAfee;i="6800,10657,11613"; a="68872412"
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="68872412"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 11:24:53 -0800
X-CSE-ConnectionGUID: RHwVM7YKRiG+X5/e9zP2Pg==
X-CSE-MsgGUID: nrbqElfASy2sGE6Z4J1w4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="189138841"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 11:24:52 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 14 Nov 2025 11:24:51 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 14 Nov 2025 11:24:51 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.27) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 14 Nov 2025 11:24:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w5jQq+LaTf239mGFLHoz06y5RXkNhjLmQ9te5H0ulw5EQAR/VJvtpt+ne0Z3VD4qxGR8081nda9G+epEKRf+Cj2ESGWUHEpwBjjWbBEjLxhraFkAiuK+pQAf5lxEZdXD3LdVoVQ2p//sEWA7IIzstkr5ojvVkaioPrkTsdBA4Jr91sk9WOlKwYGs/ZxDV1R5m/3XIdCZlfvj5C6HGl9JWdV9EIYn9JYJpWVI6bLgZ8t20PRW/p4ZRaQ5U7dt+PjncHjMZxXl4GEezzIuXIFy9291wCvN2FnegPws3RSKzU75rKOzNhBZtoP7bOMyGgcIKZM4mL3nKdM4eHmQGVsySQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2KGttUDdD+jnNAOlPsl6JwPa8zl/NAqxE14OGnEBBRo=;
 b=V8I+cOkO7V4RuB8hxrpCwYbjdpvV0AS4d/z4CFCkfZGODFzQ6kA9TvLZhr2Zb2D/X2ENSE80EFfvxuMc+XDAB3FoeSTLXOXYBwie+Wt9Xp6qOEynC8yMCB+ZrlPFvtjLKqF12CSGnIHmymcf/lixGHb/Dc9nLbd4I0cgPUUQsk0LZ5iW1DS5DTKf8gqMx9/PpEp+zljB7c/iMiv3tAyaXF9I1WYbfx1uW402/FgMv1HcvTB39dBEPD6jqUhwniPZgsQ+Rr9PhFspl++pxpif1BoR6g/CoLmDkf17YK9p10LQWc21Zwon6dX6yGZo95wQVLaApI75Ws92eXlU0BntcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH7PR11MB6723.namprd11.prod.outlook.com (2603:10b6:510:1af::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.17; Fri, 14 Nov
 2025 19:24:46 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9320.018; Fri, 14 Nov 2025
 19:24:46 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "gregory.herrero@oracle.com" <gregory.herrero@oracle.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [PATCH v3 1/1] i40e: validate ring_len parameter against
 hardware-specific values
Thread-Index: AQHcVYBDfPFmupVUY0mfim0aS97ZpbTyjUvA
Date: Fri, 14 Nov 2025 19:24:46 +0000
Message-ID: <IA3PR11MB8986D6452E1EC4A7834A8641E5CAA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251114160304.2576306-1-gregory.herrero@oracle.com>
 <20251114160304.2576306-2-gregory.herrero@oracle.com>
In-Reply-To: <20251114160304.2576306-2-gregory.herrero@oracle.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH7PR11MB6723:EE_
x-ms-office365-filtering-correlation-id: f31e9428-ac7c-42f8-99e0-08de23b378c7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|921020|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?2k8774xvTAqliXUctAebZR6/A11ysh9xmwgdLP0MLZFnse6r3nX3vdIlS73r?=
 =?us-ascii?Q?V+DplErgWf2hmKxNKpnAzbEG8ey0zAZ77IPDFzXU9QBcJtvkIRj1ddSSwaiL?=
 =?us-ascii?Q?5T75zNbb7gHxCj+B3+9ozxhRkVKQJozDNf+Mk8mXfQ28mnwLMixyBIQRY+sn?=
 =?us-ascii?Q?RITdjteOaZdlLU8IQ/w36AAuv8ou7WKsG3E8/ag0x4O6c3qXpLVR3kSYizyN?=
 =?us-ascii?Q?YQ8qnuC6MGxIFSFTOgtvV+01keGbcIhokwyeeZ7UNs1h2kgtqKiJiio2IlsQ?=
 =?us-ascii?Q?B7QIgKRvROL7LbuwbUYrMTPIcWrh6iXfqYH6qRUyP5xdl0+tBwsfAOaEQztW?=
 =?us-ascii?Q?q2U8AwMm8ptBznw/sdttvzpvfyFMvdwQ9aCaEpsWgV6inOlQ7EvtNCEPIRl+?=
 =?us-ascii?Q?y1oPe69Nyn3/qJwVLc8yOVSoT8pu3dkj8burBhlKV0SpSedwY1Y/w4BlkQ4K?=
 =?us-ascii?Q?TK4GJw+5+fYe6N/nd33RiFKjtkzVyGDKOeDEHPYI3Kg5jFbj4i39273eWgD5?=
 =?us-ascii?Q?B3a+INaVQF3QR/HPmYHoevHTdgVeX3x2Clf6j81xDoo1iyPUEaC/zuy/+WeE?=
 =?us-ascii?Q?F9GKLI7CyVz2sJ+ii3U6Vmyup1fMT3obYYZRd5NtwN+vi5erLa0ZyASXy9I0?=
 =?us-ascii?Q?gCkfuhB6ikcLJXtF3WnqlvBpoolxysBy1+uKX9ErjlUjq7n6Sa+y0rLivI/9?=
 =?us-ascii?Q?5UN9odtEWiJrIdLKdmbqEHRxsovVsSp26hnCraisaJYdS/z9JH5B4+ejdyzK?=
 =?us-ascii?Q?Q2OrAy1fUKCLwy2RI2Fv2WIbI8U1dtE3Rdk7Gk9cMR8VueZtVYhQBrqgAzI8?=
 =?us-ascii?Q?UAj6JUHGqQyV57K/0hY/pu7WBqEipKuamijtLmnUQqxOS4Z9XSkPnlubnzyK?=
 =?us-ascii?Q?9JE+pLaaDaTU1UdZwqUHir5gLoKZdJa74LBtbKIWtLUPk0DnFPvtn2zZSsX+?=
 =?us-ascii?Q?g2gUVNcd0c1ZBAjBKPoAFCNgPGfiZakdDXZRcW8J9B/Q05WdEP4LslnUyeVq?=
 =?us-ascii?Q?5NSg2SySaS5x8QDMWajYT3rviV3jJZKkXpICO+F++ipGYcYeyhlBh42oZ4wj?=
 =?us-ascii?Q?r9L9N+ADyRzOK3Q+jNZJeAQFzC2WAphjlAqU+ywywwqoVbh9VlQrKXjDKife?=
 =?us-ascii?Q?T4T/gPy/nspTfTnuF1cslgVjcTYY9sBOLHupJPkxQ04UkZmnkOnHtiNsVusS?=
 =?us-ascii?Q?+ecu7fN8oAnd0i4EjTHTl8DvOjsdxtbIrB+1R4epvTVOwerAN0hm77D6iRuy?=
 =?us-ascii?Q?cujIW9kJ8t5RoRqUnny6g4MeEgOgEB+IV1EIJ20vGDLm8S59c+q61ZFK5CTa?=
 =?us-ascii?Q?Lt/6EiVXOL8lNOab4Pmxm7ookUUREDBSHj6xpF6SKb+BtWweLci/uG1pKIV9?=
 =?us-ascii?Q?dKyjyfykRQCLf0dNQ8GRZDna85k11MhwK8cHQvxT/yI9VJxw5NegTezdrT9G?=
 =?us-ascii?Q?UBZKkjNKtU0rAXJYVsVSgmsMoCHx5OeontwxuMqEQQzfCmVrMDOD/5XpD9Xq?=
 =?us-ascii?Q?Nm4kKm5UV//RTljrGYOgfF2WIXHdN5fLlMQoaLR3vd0QHX0BozgQyRTD/w?=
 =?us-ascii?Q?=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(921020)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?iuS5YGpc/1GFj23M8azvJFZkID3qIIFnsOJjOEPEpHabxuYjsy/xIiNiOowf?=
 =?us-ascii?Q?mPy+y20wAHdXsJ/10pRBgCRcMrKmxvw2b5Fl4a3dywsaVihH9yLM2dSBWAPN?=
 =?us-ascii?Q?xdRtRsLV4X9pFZylYARSg893mFlBWi8+ebFOgTmdMY8jhWiabEHK4H9NtgIP?=
 =?us-ascii?Q?wGOdKR88HF/ARd5fGJoEVLu6xqpih8HDyVatMLaNqcyLdOvWgB+n0rsO4kpr?=
 =?us-ascii?Q?C4scRGV3Sotkoi5nDka2jeb3GwXoYc2FU4uZrYAXgZ8FgMBw8tI6kDU+SwQ6?=
 =?us-ascii?Q?/DdOARf285CSpViDmPp/B7NUuGhhBFKo9fS/Xi1wAxnbq7fyH5vPzJ18aRPf?=
 =?us-ascii?Q?v9EA2kriR+OGp5TxhUtQQbvKVvnWERAEOjq6GwG8lvxXc+nJUREnK6Jinwdc?=
 =?us-ascii?Q?xdbCKuRCidsJP08e56JFSS/2f/Q96qf2lak0LJCZvOTc2iULdgsuvw8NE34r?=
 =?us-ascii?Q?efiNwIexP6usigix1jFYuDkMPWsXX9qmNGLYfPktDrQ5jXrG1lLe7IioIsv8?=
 =?us-ascii?Q?GqsY7gLVvmRY/etokIww33aH7LFV2YHL2NCpgHlPPXMUsOUD4emxbfJcpNtG?=
 =?us-ascii?Q?D1zsw3uNWn7FYa2hjPnYZ7H1R3/EzOhVysU8dwy6uhdRoHyRYzIuTqo40SiB?=
 =?us-ascii?Q?qzK7K2UEWn9uv0UrguETcXCT1z61NsCmzaJHgSrgosxbGRt0oF9sHCjf8/vy?=
 =?us-ascii?Q?0b2aDsoSC/4GHKWMr1R0L3V/8WLPX87cx7l9fUyjmP5nydCcUW/GGtujSlPU?=
 =?us-ascii?Q?bzwYOzFibOhb0kYgEEu0riVDeuDJxY49ZMYwOY5qUQuZrdycJiOu8PNikPHT?=
 =?us-ascii?Q?f16ok+XL5l6p2OWJ+iAHJAdH75Cud5T5GtBcVWK30olSujG1NpYXKEQCRgt1?=
 =?us-ascii?Q?0qgo6CqI2H1fTp17VpSQigDQvXDJJ42U1pLfke5V+VIveZg9IlCqlFyPhqVf?=
 =?us-ascii?Q?ZV06p+q94cnnccmE77ifhaiWCnx5P/ZXj2indG9bkNacxZOeK7DdOStlV9sx?=
 =?us-ascii?Q?wR6Vdcep5KHgky+hR4nRmCKFu7XkJ4rxIPLiQXaLjT9CSAgW+P2RwxPcCm26?=
 =?us-ascii?Q?wHMcRTV/c3/SdE2BRX0fs68UtOJIE3QKwM5kgj0C2911XokowzeF6MBobQ9F?=
 =?us-ascii?Q?3OO+XCPyA57CvK+AhtKYC+zq1m22d4veSNKfldkwD6DSnZrvdtMT5tRSB6N0?=
 =?us-ascii?Q?mCs/p1IoiFvyFtO3IwNRNIIAsn63BU4igeX4riMQMqozYU9zm8nR+o4q7O5R?=
 =?us-ascii?Q?c157b/8HN1pptEf3C6jKdxD75//sZZ3HFGMdZ08XFsIcjuUh6dOHO70HE+ew?=
 =?us-ascii?Q?1h3kgNBoeysZnYqVP6fMudwxYymMC/dnp4OGoTmbK7vKj9rVX4KAirVvnjGP?=
 =?us-ascii?Q?4CNZ00e5Ffl5HAeipssvCn23Q3gAHp4gCmacDa8nVXsHsYc+92LgNbcfnThx?=
 =?us-ascii?Q?lqcqoeJ34eW9IoPqXUGPhwfbzJvVC5civts1/wGATayTbgiTj3a1/HTsPLKr?=
 =?us-ascii?Q?lR9QPCJaoXmew/mezXg4j3+upZh4PF2IKSbDBhRYP2MmzQx8a+J39lOCYl5O?=
 =?us-ascii?Q?rVWYmslLWlF6T26DhSKL+d46iff+UCfV0j10GCaW850lhb/sDuopGR3Zn+TR?=
 =?us-ascii?Q?Gg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f31e9428-ac7c-42f8-99e0-08de23b378c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2025 19:24:46.5079 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 08hEq+kXs3pEKeuAvUj/IzGyYxEARrPgzipfGF7KngIOVxchw9S1L9lHKpXmNLJ368zhvlBgNx8wDYAZBngCx2r1y7Dvpzw/4V/L6NVhPkU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6723
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763148294; x=1794684294;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hkJOeDRpLZBFGO3cUQ0WIGz1Z68UWaJGtfBoX27X2iw=;
 b=XyN+u9N5re4G/ABexShY5RBEJx+AYuLsiUh7iSxKxXenN+S960BF8ba1
 thBCewdQl1+ahllzPq2Dz9HF4U9C3lFSA+8x5degx6hUBLfV5vVDN6UCM
 Tnw3xqNe9lCm26/5HAUrFb1eqQVso/lLv3nkZloONOc9E4xLI3dKsk6a3
 1DQfNeH8F26eHcY+ZDgKB2ksVadz9a2v1xiz+AaqIo4phRr8DlMHepvva
 0sVY2y0kCZzUP/4Slb3tGaJRmbag4lJrPPBPeiBV1V1TeytMEp2qr52lM
 65VTVzhkN5fIReC/kqI5LuRcBfmQKf5WG2CLfYw1BF9aakaOu6urxj2Ut
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XyN+u9N5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 1/1] i40e: validate ring_len
 parameter against hardware-specific values
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
> From: gregory.herrero@oracle.com <gregory.herrero@oracle.com>
> Sent: Friday, November 14, 2025 5:03 PM
> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Nguyen,
> Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org; Gregory Herrero <gregory.herrero@oracle.com>
> Subject: [PATCH v3 1/1] i40e: validate ring_len parameter against
> hardware-specific values
>=20
> From: Gregory Herrero <gregory.herrero@oracle.com>
>=20
> The maximum number of descriptors supported by the hardware is
> hardware dependent and can be retrieved using
> i40e_get_max_num_descriptors().
> Move this function to a shared header and use it when checking for
> valid ring_len parameter rather than using hardcoded value.
> Cast info->ring_len to u32 in i40e_config_vsi_tx_queue() as it's u16
> in struct virtchnl_txq_info.
>=20
> By fixing an over-acceptance issue, behavior change could be seen
> where ring_len could now be rejected while configuring rx and tx
> queues if its size is larger than the hardware-specific maximum number
> of descriptors.
>=20
> Fixes: 55d225670def ("i40e: add validation for ring_len param")
> Signed-off-by: Gregory Herrero <gregory.herrero@oracle.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h          | 17
> +++++++++++++++++
>  drivers/net/ethernet/intel/i40e/i40e_ethtool.c  | 12 ------------
> .../net/ethernet/intel/i40e/i40e_virtchnl_pf.c  |  4 ++--
>  3 files changed, 19 insertions(+), 14 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h
> b/drivers/net/ethernet/intel/i40e/i40e.h
> index 801a57a925da..a953cce008f4 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> @@ -1418,4 +1418,21 @@ static inline struct i40e_veb
> *i40e_pf_get_main_veb(struct i40e_pf *pf)
>  	return (pf->lan_veb !=3D I40E_NO_VEB) ? pf->veb[pf->lan_veb] :
> NULL;  }
>=20
> +/**
> + * i40e_get_max_num_descriptors - get maximum number of descriptors
> for this hardware.
Please wrap this line to keep within ~80 columns (which is still enforced i=
n net/* reviews and expected for drivers/net as well).

> + * @pf: pointer to a PF
> + *
> + * Return: u32 value corresponding to the maximum number of
> descriptors.
> + **/
> +static inline u32 i40e_get_max_num_descriptors(const struct i40e_pf
> +*pf) {
> +	const struct i40e_hw *hw =3D &pf->hw;
> +
> +	switch (hw->mac.type) {
> +	case I40E_MAC_XL710:
> +		return I40E_MAX_NUM_DESCRIPTORS_XL710;
> +	default:
> +		return I40E_MAX_NUM_DESCRIPTORS;
> +	}
> +}
>  #endif /* _I40E_H_ */
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> index 86c72596617a..61c39e881b00 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> @@ -2013,18 +2013,6 @@ static void i40e_get_drvinfo(struct net_device
> *netdev,
>  		drvinfo->n_priv_flags +=3D I40E_GL_PRIV_FLAGS_STR_LEN;  }
>=20
> -static u32 i40e_get_max_num_descriptors(struct i40e_pf *pf) -{
> -	struct i40e_hw *hw =3D &pf->hw;
> -
> -	switch (hw->mac.type) {
> -	case I40E_MAC_XL710:
> -		return I40E_MAX_NUM_DESCRIPTORS_XL710;
> -	default:
> -		return I40E_MAX_NUM_DESCRIPTORS;
> -	}
> -}
> -
>  static void i40e_get_ringparam(struct net_device *netdev,
>  			       struct ethtool_ringparam *ring,
>  			       struct kernel_ethtool_ringparam
> *kernel_ring, diff --git
> a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 081a4526a2f0..5ecc9bb908f9 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -656,7 +656,7 @@ static int i40e_config_vsi_tx_queue(struct i40e_vf
> *vf, u16 vsi_id,
>=20
>  	/* ring_len has to be multiple of 8 */
>  	if (!IS_ALIGNED(info->ring_len, 8) ||
> -	    info->ring_len > I40E_MAX_NUM_DESCRIPTORS_XL710) {
> +	    (u32)info->ring_len > i40e_get_max_num_descriptors(pf)) {
The cast to u32 is not needed: info->ring_len (per your commit message, u16=
 in struct virtchnl_txq_info) will undergo the usual integer promotions and=
 be compared as u32 against the function's u32 return value. Dropping the c=
ast reduces churn and matches the RX path style (which doesn't cast)

>  		ret =3D -EINVAL;
>  		goto error_context;
>  	}
> @@ -726,7 +726,7 @@ static int i40e_config_vsi_rx_queue(struct i40e_vf
> *vf, u16 vsi_id,
>=20
>  	/* ring_len has to be multiple of 32 */
>  	if (!IS_ALIGNED(info->ring_len, 32) ||
> -	    info->ring_len > I40E_MAX_NUM_DESCRIPTORS_XL710) {
> +	    info->ring_len > i40e_get_max_num_descriptors(pf)) {
>  		ret =3D -EINVAL;
>  		goto error_param;
>  	}
> --
> 2.51.0

