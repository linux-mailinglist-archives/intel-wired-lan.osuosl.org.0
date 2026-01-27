Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yOk1Oy9meGnTpgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jan 2026 08:15:59 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7807690A62
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jan 2026 08:15:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 158E3825C7;
	Tue, 27 Jan 2026 07:15:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aZ3EDlrWpCTI; Tue, 27 Jan 2026 07:15:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 615AA81D5F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769498156;
	bh=79Y/QRpmC/WsoSgGnRR1Jz1wf5HWEhG3xtg0te+hyYg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=O005R0HvLOZk6mt86+noAGIVnfmoC2oLvwqap2XAcJJTCwoarFWsV+0pjTRNSYf2C
	 IPknHHX6mQBUqIUv7+tQQQKTeVMpUPehVLd2OmRms9xshWATldFEXwRS4OMTPsmeIJ
	 wfFsDzLPuRRJGtFIJixjFeiAi0FmXBiQPv+R68NqYtOIk7AMj8p563RCxgPEnnp4fW
	 bQMUWjUXYEmu5vw5QhdW+2Q+EZy1QYk7tsguri5MymhcvQfKKOvFOTrUwWLOLmKmfU
	 eq8+7z1e+zpBLcpd1C+P7C12HYGgwY21SsqQYXqkAySVdee91wy9sDn5YhabRB0rf6
	 wtcIQ/shX5yWQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 615AA81D5F;
	Tue, 27 Jan 2026 07:15:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5B03233A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jan 2026 07:15:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3450240947
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jan 2026 07:15:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TxC2cPvqLcvW for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Jan 2026 07:15:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3DEBF407E9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3DEBF407E9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3DEBF407E9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jan 2026 07:15:53 +0000 (UTC)
X-CSE-ConnectionGUID: yvaIJJrfQ0mj4YtUpu3/eg==
X-CSE-MsgGUID: wjaHHGR7R5+nAb6YGEujdw==
X-IronPort-AV: E=McAfee;i="6800,10657,11683"; a="80987368"
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; d="scan'208";a="80987368"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 23:15:50 -0800
X-CSE-ConnectionGUID: mFvgEFvCQQ2FM0TI9rdPmQ==
X-CSE-MsgGUID: bir6vkdOTkCIrYOotWdyyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; d="scan'208";a="212364857"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 23:15:46 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 26 Jan 2026 23:15:45 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 26 Jan 2026 23:15:45 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.23) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 26 Jan 2026 23:15:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RAke98nPVMvUNePqLsYG8ym89b6JmslM/xss4dyGePln7cB4TNoHIcEIsUE9E4sLYoK10xjrE3FF0hXCACN5TxSBMyqoY3+rJYShLFLcjxntqQUKpwPLGQerZgWJakvd+keSohKL1tXvG3hElrxdbxcGn9YIdKH/EklorpnX73aqSxPNRW0XkPZlEzxIgaNCl2qp2jzoAuu0Bj4dDcHV6chP9K0brNtqzM1R++F022u8S5S8hfUD3Wf8ZwgFoMGAnhd6y66KQGLdUz2nKaELp3MSTiF4f7S7Zb0APd1Bv/15XvpLGfTJawv7Sf2fQen/MjZsTh5Sj4wgd9tVylZv8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=79Y/QRpmC/WsoSgGnRR1Jz1wf5HWEhG3xtg0te+hyYg=;
 b=EbcxIqCuJxUMJw0bIF03r8oDVn/MOJPhaWwx82ODlnhOW9epW7N56XYi+N96cxcm2VVbDMh9lbkZqqBlncXNe6UhRcosIgjbBMytc+5c6OrsUHi5CvS/3WL5KuQcEjXlGXnVslMm0KA3J79U3akj1efIxWJkX52BQdC+IBSNdivgXcoW94F3nXRk4qzcQIZjYdSJTZZgCmwzHmWQdzTsTZ2iHSf+oisDiJyDD1kdNE2k2P2E2vk58dPFV2vgF0z3WIwDg2hjV6Ajrl/Fb2ClUEj0z87oMTOxW0hs71s0utQHdVJ1T3X/EgL6elO4visAR43smvem/z/ZZa5iJsO/eA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS7PR11MB7950.namprd11.prod.outlook.com (2603:10b6:8:e0::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.12; Tue, 27 Jan
 2026 07:15:43 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.010; Tue, 27 Jan 2026
 07:15:43 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v4 1/2] e1000e: introduce new
 board type for Panther Lake PCH
Thread-Index: AQHcfxbRDCtdEWVW5UeKyJKmoFw2abVluzvA
Date: Tue, 27 Jan 2026 07:15:42 +0000
Message-ID: <IA3PR11MB898653E24EA93CD2F01C4458E590A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260106141420.1585948-1-vitaly.lifshits@intel.com>
 <20260106141420.1585948-2-vitaly.lifshits@intel.com>
In-Reply-To: <20260106141420.1585948-2-vitaly.lifshits@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS7PR11MB7950:EE_
x-ms-office365-filtering-correlation-id: ecb1334b-8170-46c1-1b64-08de5d73e223
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?U0MpZAKVDN0CDDBgPdWyBUiNKDx8vRby41S75GvdPqMTEGxErDmvhWNKldut?=
 =?us-ascii?Q?WpBAOXMAw21ORecU4B96kZROc7XJFQ73PLzQyjcQ+JghrCGzEfsxGb6RCdOz?=
 =?us-ascii?Q?zc4C0/L8GXJ5pMf36M+qtBOMVSnC2P3b1SOlRJgpl2H8yORfHamIg9YlAKB0?=
 =?us-ascii?Q?aT4Og2SaR7M6hozmUSEtGTSLbvtgcoDN9JZSPLQD7W1WLTsOJFi8LfpmRsa5?=
 =?us-ascii?Q?INhZJ/JBdHqEcZkAOWn402MO31VDfQ5t2a+uxW1bFO0N0ckh9NEA+xWEwb8K?=
 =?us-ascii?Q?WfFGTnjybU1Fz1RQcKhDC7FUL2AVD+Ssh/aDemKqqDkfeL0g0Um7AyIh/tW/?=
 =?us-ascii?Q?VlOb5BCEa9Y648Mow0PdLskma+q52IdraWfdfVGwNNKle8rFr+Yt//qQWTUR?=
 =?us-ascii?Q?7dLtLLzefnTrNBjLwWAlo7d2k6HcJP4aQJqIRsjBEssrCmjLJafun3uIG/wt?=
 =?us-ascii?Q?1cWvmEmJ/UVGjAooJIAkfrU4uc/HlwWxUxtdk58VDQ/APTTvz7aegPjU6lNv?=
 =?us-ascii?Q?MZpihFNXBtnIsqBB4PVnlHwsaV92DeDTdyu4wDrGxNR+dKftScHxQhHJk2Tg?=
 =?us-ascii?Q?fOBSslqis9qgUcBahrWj/2N01ks+GrN38zuJIT8sqaxSRYQxleTVadT6kIp+?=
 =?us-ascii?Q?m9DpiEiySfHyNfAU1R6C4UDDCEc3K757BH7M+VJU6BMc3UeA0hdvWQ5kv0Ja?=
 =?us-ascii?Q?KeMmRlXvbdzJZg9nlhm+glZxZifBzCwCk0uSXKc2ZFPWqqiIRrG//gRvySx1?=
 =?us-ascii?Q?Y31flSt0lAs7dgIKDos+gXIpTldyzEieO0LbkcNh49kwqDZp+irQazQCW4Yy?=
 =?us-ascii?Q?ARNda+Jk9ZRqsAMcrDLUBT6d4iSI4K1aejfn0Xo/X09ARompEdfiZKIQb1/e?=
 =?us-ascii?Q?K2oq4Q31BPtEhf1pI67UYCBeUoliUns9okKmI/KBr7njFBiJJMx9NPNjsS++?=
 =?us-ascii?Q?qNHfZrw1ndKQ1uOqyCd1WgTAjGGnacGmGI4N5KMy4Z7mEIHGDXUpdjyQ2ebd?=
 =?us-ascii?Q?Pax994p0xK9GF+6YduVhWfVFFOHJ4A1GbLUHpwpYDGnHqf+ngkmns3Lhcf5u?=
 =?us-ascii?Q?ikT7OURRUhtSTIpJpshjCNrOAtoqGQ4dV+QfN8Ee8yt2w/GMShAtrGiajnDn?=
 =?us-ascii?Q?TvFqVC4cc86i5KYodj0gnpl+HFrG01bGv6s2vhgXRWqdMa5EzOt5XluaU0+y?=
 =?us-ascii?Q?SsMBfvSrnrEdUJbZFEwIkhsOlQ+yT/ZbGIKCxqxgyCEKwvfbntXHPnKJDy3V?=
 =?us-ascii?Q?is2SN+DizpEy4J6ySDJ7SJuxo1As8/UCGE6ZzPDsj8Rc+AXNEIBVXpn35et2?=
 =?us-ascii?Q?p/qK1gCwyAzYDCtAFRxcozEu61OFAhJJ6VLfI3CfB+tLdwypQ06rrOFCXnlR?=
 =?us-ascii?Q?Ss0dYrJPi2gWLxpN4PfUoaEy1Qu7/e/ecnlOsuC1sKb9MUGy5lmtlIFwOvV3?=
 =?us-ascii?Q?ZBqyXo9pnjfSLMAx72LafJrdK/d3bjYnt/8kGRKalT9f8b0mnX1db2BN595v?=
 =?us-ascii?Q?bEjCs0v3XDiSOK/e60JWC9SU+Z/kANsJfq8d2m4ynIrYNIpuJIOGQ00X6aJs?=
 =?us-ascii?Q?x5MSh6ZWR/kjxNziCa7ntjTjTEF5v7siUNoHC5MJqwGfg5oHXxV/VHTORTbu?=
 =?us-ascii?Q?7xo7JU6huC4SXRH1InWaRyY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?DS438h7gBED53Qm6Mrf0XP2tsgEb69FTXPBFuCa7TRofYNBWeTHENM7F/36e?=
 =?us-ascii?Q?bvTDDnicQQO54LKy2iFCzuH3+1fE26Pz0wEseg8soosHY2mMCPOKfpHaFlim?=
 =?us-ascii?Q?gI826NnqO+2dXjyTuKOMzv8TFNVniQxFUY15M6ReB1XjZbwWw3X48xPwxTiq?=
 =?us-ascii?Q?/qLxOTpTErCfEA2UTDRk8xXYoW9PGJ6qmRJP4sCr1DCv+qO8krpOgMcW1VR2?=
 =?us-ascii?Q?IYDpbwUm4JNt8HwEnhgL3UvyZcZSpnZJXKyD7syQHNs95m0bf/7Zfol2hrcZ?=
 =?us-ascii?Q?V7KqpLufl87Y/kOVIyKhdmvX94UF+fuym066vD9aofrQEM39lm3dac/Y0+nC?=
 =?us-ascii?Q?AG/xsX5wOJzvA8gP41hx4RJFyciMPzUpqcnVGVao/rm8Bo7fx94UTRRrTclL?=
 =?us-ascii?Q?DLONBeq4gQ2ZWDz5KAIzDMAYaVjiRF/tagU1TJ1/6bxCUzRXYuprzd92GFAD?=
 =?us-ascii?Q?BvKcjpJm/1RjdOHP1cGzadn3gjdkcxi8xCT2mfWFOcnnpD/Br723NXGafd8s?=
 =?us-ascii?Q?6i5vUNOqyR8GLvExtMj5ALw5lYYvZ/gx9dRLiSBrXiao40CayK/2zCIfIUVm?=
 =?us-ascii?Q?qobT/NqN7wsPy3rQ/ZurHg1rqrf2+jklVtRoFbYr+qvNkr2cgU/zXPkzR3kJ?=
 =?us-ascii?Q?6orFJ0jGiriFV3OLM+9vjF62s++dKBjUm38SlfTA6k++h0tc4wxFdXE7xIxz?=
 =?us-ascii?Q?Zkg3ddYRRNCiMyxDIRocSNdL2YyMpNpZ5Mp23g8Nzx4lmhyZzDqRnzAIi/8B?=
 =?us-ascii?Q?LbFEvDqp/k3XlrQwC1KLNC/Qo07KLde5e9wksV2zdqZqOTfVWrrEpq6+MATv?=
 =?us-ascii?Q?cvB7Nm76P8KrGZCd+ruRrtI30A1AmlWlwQXHe2ZUunyiZQXjJEJ8LfxLqUB3?=
 =?us-ascii?Q?zbxG+W+anJHZKCLcMujjcq3E/I8HOObCfW6ukH8D2x46sz5Wx2tou5hfTwhZ?=
 =?us-ascii?Q?3JlcDZh1DJ9FADjbH2XF7yw93AJNGXIh5Ng1rcmhh7+Lo/um4LCs1dXYV2RL?=
 =?us-ascii?Q?yO114Xuf0uH9dhw0XVL/8mgp2k8FMvGfmSfYKIWF/XgDfdTmbzF8y5kzygVO?=
 =?us-ascii?Q?qvhaJZJYJzVbIv8Zcce9gySECnVqiEgaRPfQqZz8RcQcVsdC4uEzCDF4WhbU?=
 =?us-ascii?Q?2irD4RavSuKyFlbKrOMwtens0SqItCc0bBGopJhvk0egJEVDKwXEefUYmLiJ?=
 =?us-ascii?Q?XnULsvZAfzuFIc9MQ9olKRY76YRvZkdFAaTxJ1cmOgD79IMU4X7msoQrp+Hp?=
 =?us-ascii?Q?z9psNKztgD324lcHZIGQ3yqaB1kFEfAQ3lRVpbMsZqsCjnkRhplPgotL3wxx?=
 =?us-ascii?Q?yeZajhBxZBNOKOT2Q6U+q2Dbj5gRwpz5dODJrT/TpJt9wl7Wa/lrQvcZDvSY?=
 =?us-ascii?Q?tiAITYFzGESGBkNP5yctUbA6DhuQXJjGDGgqlIW7bJanfcKeOFpjuMDs2OhE?=
 =?us-ascii?Q?8XJi7Y8+fGjUQ0C+oZYsiDOQItZh1RBKl6ksB/R8entGvBi+iyZGCLB/TGIk?=
 =?us-ascii?Q?LlbrrJ4Fwbc9br502r9figy+9M3rDH/qateZxwxFnc7B/de/KfbZGHNh046f?=
 =?us-ascii?Q?hgHG/kwHlBUrjoWqG269M1CJnJx3+WaeHbBeS+u7bhkTu5/npgOfribY7g0w?=
 =?us-ascii?Q?dIf/Ox50f94W16IcNBWIc4dw3G6TpZsvhjfL06pZZcMf8G8Ow/vLB10bjpEC?=
 =?us-ascii?Q?6lQ90MTIPslZ2SA1ANQ+29KjFSkqsPvAnCrR9mtbH9MkuOh/bfSj0OUSYRWG?=
 =?us-ascii?Q?ij94REsbNClnJgri+vD3I9Zd177VSmo=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ecb1334b-8170-46c1-1b64-08de5d73e223
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2026 07:15:42.9326 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ykHbl1tEocjHvHh1ajAy6OoFzs31SeWg9gpe5sZH8xsk7iXQf6Ypx6R03dLO+anwI2c5ZfnqTSxBwlf7HNnI5bA9ON1XoYuKSs5LCu1DYMQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7950
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769498155; x=1801034155;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7EUGm84VsjHbHEVslURgdHS0pHJhP0VnkYAllLxI2t0=;
 b=N5jwJ1dEp3rCgfuVqYTXz8+PpKGfpx9Ml65Qp7SxeIw+2YMU6VrBeVo3
 eckt3BNGZcxJSnxaMKcVbm0Yjto/HoTQ0/CHsDmMgMgXX4fcRHB7S+wDy
 CJlgJpx9zOMYtQbxDAxLb6qMuUq7g9p8P/k/wAweYuaFJ2rEHFDyRXJ5J
 ISVIRCJR+aUiIQcZG1ppC/Dc/UP/XPxrPUXZy7NpJ+y1eXIAsk1+B2im4
 +jCNOpw4tvZfNUJ4zpJ720fXo06T5BUxJuhATcGsR/YrybOsAtKd7zlgR
 FACrRppQZz5f/ALHNYxVzmeLYIfZp7TPN7CeE8k8DYWqOPyPFBSjZkMqT
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=N5jwJ1dE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4 1/2] e1000e: introduce new
 board type for Panther Lake PCH
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
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:vitaly.lifshits@intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email]
X-Rspamd-Queue-Id: 7807690A62
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Vitaly Lifshits
> Sent: Tuesday, January 6, 2026 3:14 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Lifshits, Vitaly <vitaly.lifshits@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v4 1/2] e1000e: introduce
> new board type for Panther Lake PCH
>=20
> Add new board type for Panther Lake devices for separating device-
> specific features and flows.
> Additionally, remove the deprecated device IDs 0x57B5 and 0x57B6,
> which are not used by any existing devices.
>=20
> Fixes: 0c9183ce61bc ("e1000e: Add support for the next LOM
> generation")
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
> v4: fix commit message
> v2: edit commit message to clarify the changes
> v1: initial version
> ---
>  drivers/net/ethernet/intel/e1000e/e1000.h   |  4 +++-
>  drivers/net/ethernet/intel/e1000e/hw.h      |  2 --
>  drivers/net/ethernet/intel/e1000e/ich8lan.c | 20 ++++++++++++++++++++
> drivers/net/ethernet/intel/e1000e/netdev.c  | 15 +++++++--------
>  4 files changed, 30 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/e1000e/e1000.h
> b/drivers/net/ethernet/intel/e1000e/e1000.h
> index aa08f397988e..63ebe00376f5 100644
> --- a/drivers/net/ethernet/intel/e1000e/e1000.h
> +++ b/drivers/net/ethernet/intel/e1000e/e1000.h
> @@ -117,7 +117,8 @@ enum e1000_boards {
>  	board_pch_cnp,
>  	board_pch_tgp,
>  	board_pch_adp,
> -	board_pch_mtp
> +	board_pch_mtp,
> +	board_pch_ptp
>  };
>=20
>  struct e1000_ps_page {
> @@ -527,6 +528,7 @@ extern const struct e1000_info e1000_pch_cnp_info;
> extern const struct e1000_info e1000_pch_tgp_info;  extern const
> struct e1000_info e1000_pch_adp_info;  extern const struct e1000_info
> e1000_pch_mtp_info;
> +extern const struct e1000_info e1000_pch_ptp_info;
>  extern const struct e1000_info e1000_es2_info;
>=20
>  void e1000e_ptp_init(struct e1000_adapter *adapter); diff --git
> a/drivers/net/ethernet/intel/e1000e/hw.h
> b/drivers/net/ethernet/intel/e1000e/hw.h
> index fc8ed38aa095..c7ac599e5a7a 100644
> --- a/drivers/net/ethernet/intel/e1000e/hw.h
> +++ b/drivers/net/ethernet/intel/e1000e/hw.h
> @@ -118,8 +118,6 @@ struct e1000_hw;
>  #define E1000_DEV_ID_PCH_ARL_I219_V24		0x57A1
>  #define E1000_DEV_ID_PCH_PTP_I219_LM25		0x57B3
>  #define E1000_DEV_ID_PCH_PTP_I219_V25		0x57B4
> -#define E1000_DEV_ID_PCH_PTP_I219_LM26		0x57B5
> -#define E1000_DEV_ID_PCH_PTP_I219_V26		0x57B6
>  #define E1000_DEV_ID_PCH_PTP_I219_LM27		0x57B7
>  #define E1000_DEV_ID_PCH_PTP_I219_V27		0x57B8
>  #define E1000_DEV_ID_PCH_NVL_I219_LM29		0x57B9
> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> index 0ff8688ac3b8..eead80bba6f4 100644
> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> @@ -6208,3 +6208,23 @@ const struct e1000_info e1000_pch_mtp_info =3D {
>  	.phy_ops		=3D &ich8_phy_ops,
>  	.nvm_ops		=3D &spt_nvm_ops,
>  };
> +
> +const struct e1000_info e1000_pch_ptp_info =3D {
> +	.mac			=3D e1000_pch_ptp,
> +	.flags			=3D FLAG_IS_ICH
> +				  | FLAG_HAS_WOL
> +				  | FLAG_HAS_HW_TIMESTAMP
> +				  | FLAG_HAS_CTRLEXT_ON_LOAD
> +				  | FLAG_HAS_AMT
> +				  | FLAG_HAS_FLASH
> +				  | FLAG_HAS_JUMBO_FRAMES
> +				  | FLAG_APME_IN_WUC,
> +	.flags2			=3D FLAG2_HAS_PHY_STATS
> +				  | FLAG2_HAS_EEE,
> +	.pba			=3D 26,
> +	.max_hw_frame_size	=3D 9022,
> +	.get_variants		=3D e1000_get_variants_ich8lan,
> +	.mac_ops		=3D &ich8_mac_ops,
> +	.phy_ops		=3D &ich8_phy_ops,
> +	.nvm_ops		=3D &spt_nvm_ops,
> +};
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c
> b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 116f3c92b5bc..c066d820f53b 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -55,6 +55,7 @@ static const struct e1000_info *e1000_info_tbl[] =3D {
>  	[board_pch_tgp]		=3D &e1000_pch_tgp_info,
>  	[board_pch_adp]		=3D &e1000_pch_adp_info,
>  	[board_pch_mtp]		=3D &e1000_pch_mtp_info,
> +	[board_pch_ptp]		=3D &e1000_pch_ptp_info,
>  };
>=20
>  struct e1000_reg_info {
> @@ -7926,14 +7927,12 @@ static const struct pci_device_id
> e1000_pci_tbl[] =3D {
>  	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_LNP_I219_V21),
> board_pch_mtp },
>  	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ARL_I219_LM24),
> board_pch_mtp },
>  	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ARL_I219_V24),
> board_pch_mtp },
> -	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_PTP_I219_LM25),
> board_pch_mtp },
> -	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_PTP_I219_V25),
> board_pch_mtp },
> -	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_PTP_I219_LM26),
> board_pch_mtp },
> -	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_PTP_I219_V26),
> board_pch_mtp },
> -	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_PTP_I219_LM27),
> board_pch_mtp },
> -	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_PTP_I219_V27),
> board_pch_mtp },
> -	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_NVL_I219_LM29),
> board_pch_mtp },
> -	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_NVL_I219_V29),
> board_pch_mtp },
> +	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_PTP_I219_LM25),
> board_pch_ptp },
> +	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_PTP_I219_V25),
> board_pch_ptp },
> +	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_PTP_I219_LM27),
> board_pch_ptp },
> +	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_PTP_I219_V27),
> board_pch_ptp },
> +	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_NVL_I219_LM29),
> board_pch_ptp },
> +	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_NVL_I219_V29),
> board_pch_ptp },
>=20
>  	{ 0, 0, 0, 0, 0, 0, 0 }	/* terminate list */
>  };
> --
> 2.34.1


Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
