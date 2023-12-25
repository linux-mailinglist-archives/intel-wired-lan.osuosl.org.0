Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02CCE81DEFB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Dec 2023 09:03:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A08F9405C4;
	Mon, 25 Dec 2023 08:03:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A08F9405C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703491427;
	bh=BX4xYdIfEWmyXjnyw2gwwoE5s5++8R5zOYt9HeClb/4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nrryjYiV0jtvo/g9o1Iz4UGpJ9BZkP1dpo5zcQlMIFgxUfizcjpaHJBh1MdfdC1bR
	 LwVT6Jyf59qnbkqdoH165QChlauTDojo041id9PX68+UCkBgg37v6hQ78wWbTniDei
	 CLOQkhtiVadS2E7tRqF0u72gp/nTT3uliuna40xxwq2rDV0Dc7EcD7Mh/d1lJ7GljT
	 dndtAv2sVkxf5CRRDN4gsnOB2FgY1DCS1uvtJK36ovk+K2Zyc8W8iC3bdMCC63+ptf
	 drBzD3xlLoXenOVHzsFfC6QoL++pdX+0r20JJLP8WakzsLM12BP2sEXQqfO5LIUOij
	 Vbzmv7oNdlmqQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uH4XVUBkvcS0; Mon, 25 Dec 2023 08:03:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4C2A640327;
	Mon, 25 Dec 2023 08:03:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4C2A640327
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D65091BF3FD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Dec 2023 08:03:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B658C4138D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Dec 2023 08:03:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B658C4138D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SunjWLSMPlpR for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Dec 2023 08:03:38 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5BC7641365
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Dec 2023 08:03:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5BC7641365
X-IronPort-AV: E=McAfee;i="6600,9927,10934"; a="393434799"
X-IronPort-AV: E=Sophos;i="6.04,302,1695711600"; d="scan'208";a="393434799"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Dec 2023 00:03:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10934"; a="777679578"
X-IronPort-AV: E=Sophos;i="6.04,302,1695711600"; d="scan'208";a="777679578"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Dec 2023 00:03:34 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 25 Dec 2023 00:03:32 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 25 Dec 2023 00:03:32 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 25 Dec 2023 00:03:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YTZmJKAruoCSy6gZjiowoQpfMxcWjQOWQ+smh+3YfKCvHxkYpIL4y+HETAbtV8U4Rtnd6mjiYiojgoeh+q3wyc/cGJ90Hmi/br9z4MmTKcHI2NBj2Cooho0GnaARrnglok5XZZiLrBc9EN9AnXdNm9e9gl9AaEOJOlnYqho4X1kCdzm6XlqzhxX2jM5vX5caWjA7kOlok27Nv2CSV6acJwlt0rOnS1yMkXQpjeDQ0waBxLToEOlj6c6K0YoAPE1cGLZbnvx8aGqso0zX5iP6k8/lpC3+8PVVeqiu4GQmxtH7Ni8eJOuJG+p1Pz8vzQHgaKAq7eXv1f1HSznsyjVTVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qmZPbmg0qAThboAsUjUULcXX2Md+ue0oNsWctj2v8nc=;
 b=I9Hsj73F55HiRGQJH5L8OpTfWAAT0Zw0vEDx5QgP4MUSHXQQo2fRYYJfytm4QTI7rL9KUcTTRy1iDj67K5aNZqnSFcbMFJKz0ilrF2CeYrh2/MveAjIBXUZwqQ5jW+6KshicB+GamsdymAWyACURS0KxnKYfRY4NvE0Kf0gRSICRkTZunfKSQseW0X9z6tWD9sKf9RoXDRjllhDDFud8WeU8z59HAdc1XpnaBMKP2hSxds1PN8kXhsEQfAJ2k8rWY6ub697d3S9mipufC+51W0IQ4t9QleGxml2RY3gPGU0s4yr/YtiOUQPSqV+yEH7eBZT10DatfA3/3xneiTanwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6738.namprd11.prod.outlook.com (2603:10b6:303:20c::13)
 by DS0PR11MB7631.namprd11.prod.outlook.com (2603:10b6:8:14e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.26; Mon, 25 Dec
 2023 08:03:30 +0000
Received: from MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::4ecc:bb1b:9233:a6a7]) by MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::4ecc:bb1b:9233:a6a7%5]) with mapi id 15.20.7113.023; Mon, 25 Dec 2023
 08:03:30 +0000
Message-ID: <79d4bf3e-fdc7-4273-aa1e-9b5e8194696b@intel.com>
Date: Mon, 25 Dec 2023 10:03:23 +0200
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Heiner Kallweit <hkallweit1@gmail.com>, Marc MERLIN <marc@merlins.org>
References: <20231206113934.8d7819857574.I2deb5804ef1739a2af307283d320ef7d82456494@changeid>
 <20231206084448.53b48c49@kernel.org>
 <e6f227ee701e1ee37e8f568b1310d240a2b8935a.camel@sipsolutions.net>
 <a44865f5-3a07-d60a-c333-59c012bfa2fb@intel.com>
 <20231207094021.1419b5d0@kernel.org> <20231211045200.GC24475@merlins.org>
 <83dc80d3-1c26-405d-a08d-2db4bc318ac8@gmail.com>
 <20231215174634.GA10053@merlins.org> <20231224163043.GA6759@merlins.org>
 <5ca7edbb-cf61-45b2-b9ba-888cb157ecbb@gmail.com>
From: Sasha Neftin <sasha.neftin@intel.com>
In-Reply-To: <5ca7edbb-cf61-45b2-b9ba-888cb157ecbb@gmail.com>
X-ClientProxiedBy: FR4P281CA0088.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:cd::19) To MW4PR11MB6738.namprd11.prod.outlook.com
 (2603:10b6:303:20c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6738:EE_|DS0PR11MB7631:EE_
X-MS-Office365-Filtering-Correlation-Id: d7f98fc2-3e81-4114-ba82-08dc051ffb7e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZcdicGrdDPfqXjM7c/pmLJ4/AWlr+SY9MdzYcfEVFhjmeCnD61zWz3lgJGrR6eJpJqAGJp3ZYUw8ZbekdrWI1TbX5oVPJN0dSseWmDE8AoxvIxX/QXmC7DkD9Rmh+ja6MBQiCb7xsdaOZ1vTJoC5El87XKFJLXiy+4LKyFB0qIASmGFLu8tGx/ljvt0rNEWfx4XS8Sc/dFwFRKtEf5NdnuT+zzkA5Pc0qWf7+VgYPEdIs17Z/YiTaoeaJKYFTGXBBFQ4OWmiBxu383TZ+/Dsp0g+Mcp58iIGnpolaQ8Oc7Ap57dwoScrkZDVgWQyUx1OTmSZiLTM+54H7+xa4MEyY0f9wr6dqPz9lryFCE3614dlzCV7XX83ZJKNNHBdK1zu8BdrLS4gQ1kMVYqIbehOmWVXSOYzHJsspQltjQwym8Egaqn2SmZx7lMdlsL8qymK6cjhewoYUhqHq6qVFyBLZqN5cW8ZEoBNSWHo8/wFgOhV8GbNaWjR3Y8URswQbVEgpltlChTc/RCmR+njX5hRypwdOvPLCcSKSHqLkKmC+nCLPdhxS/BVajckU7tJzICSqDDIsADZccf0HCYa2LaLzB0mAwWOo/NQLbq3Y0KbSbSdcnzrja+WgtCFky6hucBBo+T/gDThS74XwtokAFi9Ig==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6738.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(396003)(376002)(39860400002)(366004)(230922051799003)(64100799003)(1800799012)(186009)(451199024)(31686004)(66899024)(107886003)(26005)(6506007)(53546011)(6512007)(4326008)(8676002)(8936002)(478600001)(5660300002)(66946007)(66556008)(66476007)(2616005)(54906003)(110136005)(316002)(2906002)(6666004)(38100700002)(41300700001)(6486002)(966005)(44832011)(31696002)(83380400001)(36756003)(86362001)(82960400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RjBETGErUTNna2x4b2tsUEx4M3V4Q0VneFVnZzJZaDMxYmZsRjlmWjNvdThi?=
 =?utf-8?B?QUZ4Y3RTQS9nY0JmblE2d0xsRityNENla0xxaFduN2NPc3Jrdzl4dEVhdHpF?=
 =?utf-8?B?Rm5aYklyN0FObDIwS0VvTzRac3BnK3dDNGdJUExKY21pbXZiRnpHOGpsZHJB?=
 =?utf-8?B?MzkrZWcrZzBKWElrSEk5VTdrcDlNelBYVkVTRVJkbTkxRDc3QmNuYjVGQ3Vh?=
 =?utf-8?B?aVpBOUlRVGtDRnlsOU5kWDNjREdIOTJQNjh5S0lrV243UUd6b29DSzRmemVQ?=
 =?utf-8?B?U0Y0VVpSbzI3ZUU5dVVsZC80bExzWkh1eS91MTRiV3hDTEo4RCtBVGZnU3pz?=
 =?utf-8?B?L2gxU0M0eTBhK3R2M0ZndUh3NkYvbmhwdzhxM0ZTVnZEU3p4ZUc2Tnk4NnVY?=
 =?utf-8?B?YnZtY2lSSitWZlNGcGNPamJaYTJMWEdNYkphRUlJdGhzeGt4S2lJcVhsekVN?=
 =?utf-8?B?UzB2NU9oN0N4ckFsWWtWbi9YRmpDbW1SUWFFNVIxT0xXdkxnVFRwZFVuMzVX?=
 =?utf-8?B?T0FaRVhxb1Rkb3l0bWdvVnN5Znp0TWo1aEt1dDFZN2NYWSt1L3l6UzhGaWh6?=
 =?utf-8?B?THBZTVE3eEQralYwQUhGQkhTTXp1ZTFzS1BWUFNLYkNrK2JuakxBZGIzek1z?=
 =?utf-8?B?NzduWjVjZmtFeUJWb3VLNWFtTk5DZksybHJWeFFQZUh4T1BSbzN4YUNCT2ZN?=
 =?utf-8?B?WE5sOUsxbk9HNmdKTHdEbHhZekZHUXl1N0dMSHpoRldXdnpXVml2ZXZid20r?=
 =?utf-8?B?VGhiZnRLRUU1N2VVeWRKbEM1QUdXUEFVY1pUOTFyYWV0a2VGckFLWjdjSHhl?=
 =?utf-8?B?cjNwMWpBdTU0U3RnQllzc2ZSZkpUbG1ZR2xwdTJ5b00xK2VlOExIQ0U5SHFH?=
 =?utf-8?B?cUNYRngvcUFPQ0ZKQzZrZkdNMjVUTU1iL0JMbnVUZXRlNHpGeGhOaHE1bVNX?=
 =?utf-8?B?RjBGSGszWjFzVkNpNCttRkZsS3JodmFMeUEvL2lSZUl6OXhMNFFCRmtlSUVn?=
 =?utf-8?B?ZVovU3JrZVRrM2djNFI2aUtCa2pwUS9TaEVEQnRuc1ZhM3QrKytoU2tpL3pS?=
 =?utf-8?B?YXhQVnVVQXBUUmdHeVNPTEdxcnlTWERqek9BUldxMDBLK01EYzdnZGkraVpP?=
 =?utf-8?B?TVV6R2pHaVpxNlJDenoxekR6R0lmU00xdWk0U2swOFlkbFNWdHhYNHo1a0Jy?=
 =?utf-8?B?MjAva3laN2p5aUd6RjVKMXBCUVYvQk9zZlZrQUV1TnVGRUcxdUE2MHBNTTcr?=
 =?utf-8?B?Zzdpb2l0RUNub3pVSFRaZ0kvemtwd0c1VlRPWXRReUpFL1lZd0RsbHAyQzBI?=
 =?utf-8?B?WWlJKzcxTjRobTNNYzR1SnNad2kvSkVhVTVZVGdDOHp4QUtSMnZtM2ZFZ2Vr?=
 =?utf-8?B?alZGVlZQWUxFQ1JjYTc5UkZ3UGo2dWZjQ0ZZUFEvejZmQTFlanN5YUZpWlFz?=
 =?utf-8?B?WU04U2ZIZlFrcUJ4UFNwdHRVNGNqYWszUnk1Y2Z1RU1EYmg3dWtodWZDWkl0?=
 =?utf-8?B?L1NpTEVLR1hVVnBIV2xMaXExd0xrM1Y0b1pSS1VJRTFUcU1kTjlwSzlaZmJs?=
 =?utf-8?B?YTByUWdEaFgxNmpCTjdOSk8wRW5ONjdHWTh4d0V1QnpyZFdLWVdSa2ZSNTU2?=
 =?utf-8?B?VmVMbDBVbERyek5EaVVSZ3BpTEN5cjVJc20yc29aZkJVVlcwM1htcFpjU0tK?=
 =?utf-8?B?N28zU3VzaCtMbm8wR05seFhDS2oxYkZVZXJYQWpKU0ZHYnIzTnBKTkZJelZC?=
 =?utf-8?B?ajNPaGpCTC92YjNEbkhSUVRESTFVV016RE1NeG9EVTBjL01uc3V2SVZ6QmQw?=
 =?utf-8?B?d0FoTEVZQWpkOFZRQjN5WGRBUlBTOEMvcStLWmhCRXhGMnB1ZEhwVXZHVFp4?=
 =?utf-8?B?OHAzOXBjWWFWMXB3SFlUa0E2ZzltclJVeHZlZnZzc1dpc0xKUWM1c251VUZT?=
 =?utf-8?B?Z1Zzbm9pWmVrd0ltc24rRWNaVnhFZitVUnBWNWU5RS83TDEwSzk1aWFKY3Jr?=
 =?utf-8?B?MFlwVTdET1Z2U3JpVFp5Qkx3MmxNSmwweGZ4N0h5bnd6bGpQQ2krY0pnUUF4?=
 =?utf-8?B?RW5NN0ZOdWlBcGpwZEJKSUh5S29QSU9haTJTUkFxNlNncFJnUkN2K3Y0cFlT?=
 =?utf-8?B?T3V4NG04Z1pDaW43NWROQ2dQbzRuT1Y3Uk5JTHkvRGpEYVIxYklRUmhWRUdj?=
 =?utf-8?B?RVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d7f98fc2-3e81-4114-ba82-08dc051ffb7e
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6738.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Dec 2023 08:03:30.4367 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zAmea7KnT3KOUwj1qie7YBLtFKXpXsHiJtGAIEhlXFmDt2Gdy4MS8Lf4EFVQ/ArJzO+//VHwi3g7IYKXZlkIUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7631
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703491418; x=1735027418;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YF4SmKXofh7nHuTx3FTSTXEnNuGeV5C0EQgmjinClYY=;
 b=jPeSbpXi4DvmENiqJjdLdk0/p+Xq/sOb1ns7c9yvQ4C78bnmqunhQnsk
 oXtlYMhxBXBk39JbC4ydcjiOTac+Yzy5ybbM4RLUnen7SeDnm5r4vTaCA
 xMz9xTr8bFujDWRnX8V9wkgi4R7J4xO62qcg4t0+98PT+EFBhItx5K46T
 jiVVFFQh3m28e/sE5P630ppCAVD5iys652G6rcw2jxpWXCrRttRswczhY
 XsF3kI9Ru9pXXfF7Yitrc71fuu8JK1AT3scARn+TA1YD2mfqxiok1X5Pf
 6Z0JYJP1ASVi9N3zrVc8BZfZBi5nrUWJlfhkWEv2QCwPeRNSOf8OxoIsq
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jPeSbpXi
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3] net: ethtool: do runtime PM
 outside RTNL
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
Cc: Jakub Kicinski <kuba@kernel.org>, Johannes Berg <johannes@sipsolutions.net>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, netdev@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 25/12/2023 1:12, Heiner Kallweit wrote:
> On 24.12.2023 17:30, Marc MERLIN wrote:
>> On Fri, Dec 15, 2023 at 09:46:34AM -0800, Marc MERLIN wrote:
>>> On Fri, Dec 15, 2023 at 02:42:01PM +0100, Heiner Kallweit wrote:
>>>> Why don't you simply disable runtime pm for the affected device as a
>>>> workaround? This can be done via sysfs.
>>>
>>> 1) because I didn't know what the exact bug was and how to work around it :)
>>
>> Mmmh, so I need to test an ubuntu kernel (6.5.0-14) because of sound
>> issues in mainline TOT, and I can't boot the kernel to completion
>> without hititng this hang bug. I'm not exactly sure which part of the
>> boot triggers it.
>>
>> I can't patch that kernel easily. How exactly do I disable runtime PM
>> from the kernel command line for "that device" which I'm not even sure
> 
> Change <device>/power/control from "auto" to "on".

Need to figure out your controller location in a file system via 
lspci/lspci -t and then change to "on"
For example: echo on > 
/sys/devices/pci0000\:00/0000\:00\:1c.0/0000\:ae\:00.0/power/control

We are starting to look at this problem, but I can't reproduce the 
problem on my machines yet.

> 
>> which one it is.  If it's the eth device, I already removed the igc
>> module to prevent it from loading, and I also removed the ethtool
>> binary, but I'm still getting the hang.
>>
>> On the plus side, with 6.6.8 and the old patch which I understand is not
>> the ideal solution, I can confirm that I've been running problem free
>> until now, so thanks again for that interim patch.
>>
>> Thanks,
>> Marc
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
