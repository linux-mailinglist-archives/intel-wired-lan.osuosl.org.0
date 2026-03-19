Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kIIQAIcfvGnQswIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 17:08:39 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BCCC82CE69E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 17:08:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B0B09409E8;
	Thu, 19 Mar 2026 16:08:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cTVZQN65GXCX; Thu, 19 Mar 2026 16:08:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2C7EE40A80
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773936514;
	bh=tkN0nLKYXJQJI0bXY8cfUkyWjr/D0X+lNheMSJeJVQ4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uUOJKLENxTEGzXVNhGr2MFM6i6Fyhg5go54Uo2Ota+TMvCu/r1cax/WWdOzFBKdAv
	 jmPmqt2H9qRpZtPOD1k46ZctJx3CJzhW5grJhvUTeEP8w6BwI+KyP1Gi+oqDiJsO+Q
	 n1tgQmLXnQ9C3CcF7JhP9d8hGoGgEanoyIqeMRyk68nWRgZMZMMi+J+dsN31GbjxHz
	 8BqqMeMouSJWH2LNjGlX8TKfZ3PLmBVULDBW35bPAlKh7ECyEAaLK8TwukGSrWjeSo
	 dzryYTWNSxVbtCbHPia5++HyJp1RtYW48XU/CZX19AXPslmg6A2XWWyPZ6ceh7AOQT
	 qjiXsn8vqrsSQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2C7EE40A80;
	Thu, 19 Mar 2026 16:08:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1EA301AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 16:08:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 04107403BE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 16:08:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v-wPkKEVdmv9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Mar 2026 16:08:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 535BB401FD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 535BB401FD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 535BB401FD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 16:08:30 +0000 (UTC)
X-CSE-ConnectionGUID: ZnPZvhJMQsWLq68V/TJnlw==
X-CSE-MsgGUID: YUrA+v1bTrGY1rogSK4rmw==
X-IronPort-AV: E=McAfee;i="6800,10657,11734"; a="62580458"
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="62580458"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 09:08:30 -0700
X-CSE-ConnectionGUID: /xKzEyUJS3uZFFO3dx2MyQ==
X-CSE-MsgGUID: N3Bp+1j/SB2joj5NXxnqrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="227122358"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 09:08:29 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 19 Mar 2026 09:08:28 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 19 Mar 2026 09:08:28 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.66)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 19 Mar 2026 09:08:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Rc8csfDz41G+crqGQ8ulB1YLQth3ASdN+zbmfS/jXqTqkVnRxTeawVDyWG87EYeThzD2He9NKIU0oPRFBAOT/J4zd9fKvToOTmQP2HeMVnJqs6LVjkLEJs1aAWfqj3yJZSIqJw1wG7rB2KH9sjhoZdp+ge1X9y0mT7OZbYmqTFIaDIH1hgW1BG7ak8Ymq4uyAYBkUrvGGeYgO5lnjwq0mmLNaj+X0kzJr8Cd5gUlQFxto3DNUdpWCEB+dbiP26zsSBAY5nmnS4ovMXVNl6IsY0xQ9IvNlFu6cL4l++r5dRONpD6CgeDL7+zZzELXWIJ+GfC6ugUQ0wAwmtpZX0V0TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tkN0nLKYXJQJI0bXY8cfUkyWjr/D0X+lNheMSJeJVQ4=;
 b=cWJTH8TQurS4p3HbxwAiMyV6QDfgHNeYZsU4buDVpKsQITJFtzbVPFKr7Ivf/QSKt8Wv7FElg3N8c+xX5k358pqywp+qvPa5liyA0Jb2aHjKX/vavM+0ylTBW3uUHdB2Q7wSVnXC3ETlcUm9SZDJ6v2J+cZ8VVZWiOuiBxnVpRE3ObgXPD6QXxV3iu2XNhzxmCiF3y2GEybTORBifhCdITdkIQUdlAkfGzLjvwRIpEq3Lwhb5A0/ZdHUMs6o1l+gvdm/g/4Sb10oF39k6ELBOWpRmqhye8aubThwN4uAGQpbT+k8aZkrUlccgS5YnzyyQkyc05UfadBpirsJdA2q8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by SA1PR11MB6568.namprd11.prod.outlook.com (2603:10b6:806:253::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Thu, 19 Mar
 2026 16:08:23 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e%5]) with mapi id 15.20.9745.007; Thu, 19 Mar 2026
 16:08:23 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: Simon Horman <horms@kernel.org>, "Hay, Joshua A" <joshua.a.hay@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] idpf: clear stale cdev_info ptr
Thread-Index: AQHcqqurDtow4tdyD0eOp/xVymTP/7WfsCyAgBZs+8A=
Date: Thu, 19 Mar 2026 16:08:22 +0000
Message-ID: <SJ1PR11MB6297C41634F3940A3166AD6B9B4FA@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20260303012831.662492-1-joshua.a.hay@intel.com>
 <20260305093051.GB90938@kernel.org>
In-Reply-To: <20260305093051.GB90938@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|SA1PR11MB6568:EE_
x-ms-office365-filtering-correlation-id: 91da5284-b04d-4c6f-3ea8-08de85d1bee5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|18002099003|56012099003|22082099003;
x-microsoft-antispam-message-info: ergxkvL2ChkInuWYqltTcEZ3iDtzCASXLNmgk61/QVa5J+9isUoli6oRrSlo2ufu+LLQ1/7nQedkV4Xn69/EVtyxedXz0gdmi/ZLGRiFhSV6TpIO0WOfYNF/xNVB938cotjmnmQDBrTgLCEu427iaMLkRjKCF4FHo0f+TO6yZu3lYzRdp9dL2lD4HQY4ndLJvq9xZvigiV1i9DCX2XuBlsPpn+2b3f4kIYXrxYfvensc8OTEPte8s/7yvjf4zNTvdRyb4SiIkdP0XrcNXfzIRPKx4NBvzRwcRl89r46bRGVrIFETNe8fhtda/AirNu8W93y5c+c/Zcj04tynaY9lAtMxNtijLIz7vEPwPCkLiCdxkoQt9ZSc9qmuz660Ri1Tzge4gNqy9RGEwyXAi+lv18uDTymSUQyR21sbc83Flok+YJIqVUAYFxsBY2N4zv5CsyXEfNJTA+EilvbZ0sDxvKZaEJVOdv1FKx3Av0ZZZnpsqoG6VWIXfOZSdkOH5of+OXuW/wR2uhPzElHKg8Dis9VDjbN0hPeFF3a/NyYjxhwdNsAOa4/RcdVmzXHR2cTfypMcY0cmnIhtYAnt5cnYRWYM/ZL8LTEuAVAd/NFAhibq5QKBgBehXi0nyCQacF5XZF4zTNQzf5MqHu1Hjooj/yteuYbC5ZVTmv9N9zsSct6Pqmaadqd79FtRJ2fbRiroSjJSW5ylTcf3KV0hEYM5H9gM2lp8kOgD3mh748KexBLluFH02ZBce5qCd3miifg4k1fqm5P/z0Cz2WZCoiufKMTpPyuv0F/j7Inaj5jKGdg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TU5bm/vGdxb0XfxQQxJk054q2pKruW14hec0O7NfeFGCBhxjHzRtht4HLQRr?=
 =?us-ascii?Q?wkDpRVQc+xNvoxE/9MkGMA9C0qV/b9sCosH8Kw0+262z1MkJzCpAx5eCxkzl?=
 =?us-ascii?Q?ZmscCjSeFIX2NxU3cjCmxGmGrIT5jefSMPyS1kxJVo/UJ5YsecHWp4G1yX7q?=
 =?us-ascii?Q?eOmSWfTRmzdXmxr0XF5PMvKbRNW2IlJJ0yoaFfUheN9U1LBWe5axGoVowORp?=
 =?us-ascii?Q?HwkkBXnFLEk0MJAmVk0KmV+Dl/PZaD8eu6En8g0Hxlz4rKbxSNh/03KNfYQf?=
 =?us-ascii?Q?sfF0TaKqazRiRtECHS9EdUAcgV3Gq5dTJZLNkLIFgwrnsnDDy+jLP2d2RsVN?=
 =?us-ascii?Q?0SL/HgVH8cU2l1dNeb7oBg478JEDH67zJmwoIHl8Zg8QLcQ3omAN5TLbwcTo?=
 =?us-ascii?Q?V+Xn5bUrtTZn10nIDt7InzbMeddT+0Hstv8HHQiJ1t/tqp1mYbqpmdLM4UDy?=
 =?us-ascii?Q?oz6HJrwoa2ARUm31emOq52FxPdCqVpcROJvPkf2AdyU0IgD0YokIAOwjT3g+?=
 =?us-ascii?Q?oUKf1aTjimcHatJ5YD5DTceGkd++FYdPZoDFRnaP6duVtlV9NP7ROfxQ/8C0?=
 =?us-ascii?Q?1CdfmDG9qPsKIeBMpsfcqKonmK1LoR7dFXesYPWT0Emwby8o0qowP61r1Hfw?=
 =?us-ascii?Q?2Ekv1femdW0rNxfHQC2QtQQrz8Uq8ThEYnTtXP5X+5IdWnn5g5jneqMClCSN?=
 =?us-ascii?Q?edAjVUZLjgDCj8gcZoPfttGA0CmHKuurKnRKpUE81ZWpCbY34nAdv24NUBQV?=
 =?us-ascii?Q?4Mqwje19U3266B31GvmSyVaFBFZOv3TPlxcFlMSGTA63Ecn6JB5r6pvDEV57?=
 =?us-ascii?Q?zhAHF59ni93z36ZjLHPILibYjRHZhahXt+ykXbyQkO65OF6fUnVSPRXBvzzT?=
 =?us-ascii?Q?0m9ot5mEYqVyAlKwH4yBNh3wMyV/EYqvPEMezPYH2EGoKbBCdMnIUTDYBNS9?=
 =?us-ascii?Q?tiqm1ksm+sgg0GTzR9VGCtOZQNFFWwwqp5xMzEB5Hvr7z4zqkvbKH5hRxwn/?=
 =?us-ascii?Q?ElBR4lYtN4ykUKQ9DeY13/nciEKbaVgN+BaO1J9MLSZd3N8DFlnFSerb+frG?=
 =?us-ascii?Q?D3SyMvLlcDZobU5YqfaxhPbrv8PmleHXwiWks9NPVo9VzehYkeZy/3weCENR?=
 =?us-ascii?Q?rEhU7rCJzh0BIRYMCFb2KKUFTiw0ub+uLwLALfiWxwbNA3oRiJEdjmnEHEsL?=
 =?us-ascii?Q?u+L9V/EXFxf0v8lylmvFDKseJQvRhpZV675ZD7YRVzDO+QKs1HJyvYFeozYz?=
 =?us-ascii?Q?DP6C50MOt29IvWPoqOpc4wxTMY3v4VO438/I53Nf08DRSavjTPu2HaVT4Tan?=
 =?us-ascii?Q?PL6d728domMDiKlVN7k4TjGUCWKYLmcT2sb/4hZudlGbwxqCnGitMXJhSfFv?=
 =?us-ascii?Q?sfU8lIbGlia1K13mmWWGfSaqLQt3+biskG/KAwH7orpPPmG3FHvgwoGOhukd?=
 =?us-ascii?Q?NLo/JkZ4Y1dNpXQWjG7NhM3BT9ErZgbyJzz7R47LeFFPd4AIKyRR136I0VKK?=
 =?us-ascii?Q?5vAO26leqnhzHltBEkgGlrFimtYtckdoz405+Lnhn8helLJ/sOJGAojkwaqL?=
 =?us-ascii?Q?JBLq0srL/1jSJ49MZBq/+pJ82aJzoiJ5xJXTvpPcwm5kA/1WhynFCfJNv8Ew?=
 =?us-ascii?Q?mQQPHJaM5e9ed95zUl6SF42sgDKE/7TwjMzlxG7l3gq69Ux0QGR7Hdwkv4G+?=
 =?us-ascii?Q?Lc/g/vfkrH5hT77ppf78HVDeHyFZ39RsR/fcsMrzghBj63sY7bfEuWR8wSL2?=
 =?us-ascii?Q?zkBEz7uGuw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: pRRGFIqhASe5qnTZybwVD8MldLnUhxSXJTrgLmbTBECoGlHPlAx1spL/oHQfySZgSdrbQpD5BEuVGJcweiKdVXOMiQuyBngxJt4xwKbFYGHd261dgJ0vp1qsw/04aKXW77/q8o4JGkswjP3JKFVNv/SH6xet8h8Q/sACKlSntZLPq8V9Pfufuq8eL1bXg/SonFmyULatgXw3shy6GIpRmca6abGPwE/AgY7f4xQQ5ONsdJzNbBXiw8UF2gkg3f3mNA/+hFT31Lyex3KzthsDiqsEXNVX7EIzLHpPQxqLZQ4FY57rxcNgVyGo4370B1hQeka4/gs3FV62VOPZ4BnS+Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 91da5284-b04d-4c6f-3ea8-08de85d1bee5
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Mar 2026 16:08:23.0053 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kI24uUwj+Uy8JyCuq67LmGfxwz8YbsBYIa9T3bzXi38nQuPgDhidmIkdFF6lFx9GUHysszwbCGTzu68+jvj3Xw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6568
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773936511; x=1805472511;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ALu28tv9gPgSNPqhGmDRE6qDBqKUTd3yl+0NhRluz5s=;
 b=h4c589dOHcdxdi/Sfzf7s72b9kzOPTa602R4bmZkYBIXm9+Q14B5PuWg
 AZVzkJ/JbSBY+eLE67eC1ZyimFxGEA9X0OXe+xUW79mjUv0HDtTzfIc0H
 yGxHnCEXQjqDiathQfHwhpZ3fXhTnBAxhDA8Q/SeCCOvWQnSYvN352TmN
 uw6MUb8lk9Ps2TQ+7Ck8oREXV/OV2a0dPsenTvSXVw8lgSue7UV4NergS
 I+gyuX9jyKHmO9JPqEsaiUhnuKlCXdjC/rjUywpkTfqMGSRVkx2eVWUF2
 /3OnFsX1bpflaCYS7PKc+pxysxweKeRR7HoYeWKLV8/HTB931o2W+0iVj
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=h4c589dO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: clear stale cdev_info
 ptr
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:joshua.a.hay@intel.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[samuel.salin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[samuel.salin@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email]
X-Rspamd-Queue-Id: BCCC82CE69E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Simon Horman
> Sent: Thursday, March 5, 2026 1:31 AM
> To: Hay, Joshua A <joshua.a.hay@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: clear stale cdev_inf=
o ptr
>=20
> On Mon, Mar 02, 2026 at 05:28:31PM -0800, Joshua Hay wrote:
> > Deinit calls idpf_idc_deinit_core_aux_device to free the cdev_info
> > memory, but leaves the adapter->cdev_info field with a stale pointer
> > value. This will bypass subsequent "if (!cdev_info)" checks if
> > cdev_info is not reallocated. For example, if idc_init fails after a
> > reset, cdev_info will already have been freed during the reset
> > handling, but it will not have been reallocated. The next reset or
> > rmmod will result in a crash.
> >
> > [  +0.000008] BUG: kernel NULL pointer dereference, address:
> > 00000000000000d0 [  +0.000033] #PF: supervisor read access in kernel
> > mode [  +0.000020] #PF: error_code(0x0000) - not-present page [
> > +0.000017] PGD 2097dfa067 P4D 0 [  +0.000017] Oops: Oops: 0000 [#1]
> > SMP NOPTI ...
> > [  +0.000018] RIP: 0010:device_del+0x3e/0x3d0 [  +0.000010] Call
> > Trace:
> > [  +0.000010]  <TASK>
> > [  +0.000012]  idpf_idc_deinit_core_aux_device+0x36/0x70 [idpf] [
> > +0.000034]  idpf_vc_core_deinit+0x3e/0x180 [idpf] [  +0.000035]
> > idpf_remove+0x40/0x1d0 [idpf] [  +0.000035]
> > pci_device_remove+0x42/0xb0 [  +0.000020]
> > device_release_driver_internal+0x19c/0x200
> > [  +0.000024]  driver_detach+0x48/0x90 [  +0.000018]
> > bus_remove_driver+0x6d/0x100 [  +0.000023]
> > pci_unregister_driver+0x2e/0xb0 [  +0.000022]
> > __do_sys_delete_module.isra.0+0x18c/0x2b0
> > [  +0.000025]  ? kmem_cache_free+0x2c2/0x390 [  +0.000023]
> > do_syscall_64+0x107/0x7d0 [  +0.000023]
> > entry_SYSCALL_64_after_hwframe+0x76/0x7e
> >
> > Pass the adapter struct into idpf_idc_deinit_core_aux_device instead
> > and clear the cdev_info ptr.
> >
> > Fixes: f4312e6bfa2a ("idpf: implement core RDMA auxiliary dev create,
> > init, and destroy")
> > Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>

Tested-by: Samuel Salin <Samuel.salin@intel.com>
