Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DFA909905E8
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Oct 2024 16:23:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2F8FE605C2;
	Fri,  4 Oct 2024 14:23:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NCPhjuXxIY_8; Fri,  4 Oct 2024 14:23:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7A813605FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728051792;
	bh=qF25a7QFmo+o8UqiHq+7OSxBYZPWbEmGDkcJly/Rej4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Q3jsY4jaBBnqbMn/uFrOKs/PSMnnD5TRdjpjYDRlyOvzHXozJbp+b5YHp4py8yPU1
	 IKUgAmOHe02VKBzOkxSJ0gV6FyxJjpyF6ooq1PapF0gM1qoMONg5qn2RXXSfiaACOY
	 yauFiY3rKeSb+0K/x2dc2nhpyTHBQ+EIfhXEjpimoNcsA+1EFElxjy0DFOGk99QNHm
	 spMg7Lpt9DYtSWRhF4ia27ZjnIfyloUcsSXL9qfxdFBmFlPJh4/6AYQgO8B+P+wHPq
	 8Vrvbvb5oOGSQiga6PQePaxWrRXA6TALhhNpVH9E46H8OOidup4QlqJ5P5JyG2+UI9
	 cnyPtbBSM1r1Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7A813605FE;
	Fri,  4 Oct 2024 14:23:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ED5851BF82C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 14:23:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D31AB4022B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 14:23:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ivLktc9Qyeao for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Oct 2024 14:23:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AC24040459
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AC24040459
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AC24040459
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 14:23:08 +0000 (UTC)
X-CSE-ConnectionGUID: FE9tMTxiSS67l0o7n7zY6w==
X-CSE-MsgGUID: IAofaUOER9WwHVoj9hRrnA==
X-IronPort-AV: E=McAfee;i="6700,10204,11215"; a="26782817"
X-IronPort-AV: E=Sophos;i="6.11,177,1725346800"; d="scan'208";a="26782817"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2024 07:23:07 -0700
X-CSE-ConnectionGUID: btWXKm8XR16gToLFUV4Ijg==
X-CSE-MsgGUID: mOF8dg+OTdqLsyKXRuOBpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,177,1725346800"; d="scan'208";a="79148655"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Oct 2024 07:23:06 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 4 Oct 2024 07:23:06 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 4 Oct 2024 07:23:06 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 4 Oct 2024 07:23:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IY7rdtGiMxzHKIRxuAXQDqEI4EUkJRtWroYkQJtRftw3r4qng20u6scNfn05eRMnEuh9+vJwRdHN0ZiEXr/Z2+QAm86Km1T2GsA9pu63POuK1EC8ZYQUa7dI+k9qzgMZZvZHPDPDWZ3H+diC7U3qNZjnjZ56b6KZNwqVxCe/EDZsGWUNanWmDp9NEY3H6e3N3ETaOSw0gJQ7FkSAOOZ1lR4/vTNuFApEVoACkCZjRUJaW0wEau9tm7vI1STsYmdHVvP/lqVV9VzPGVb2OGZWRUNrAsERroZJVzgvqaa2M89tW/jOY9RaqRy0t8XCnSZ4aQO1OFN3QxuADynbW1wvIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qF25a7QFmo+o8UqiHq+7OSxBYZPWbEmGDkcJly/Rej4=;
 b=DSxYNe7kvCC2uP3azNmyJYYKUwhkBqi1vKkXvCKDaHlb5vev8dAQSgJCnV8UL1mtT9fOLSozUtnP+PDKDtPPC8qX/5Cgt4SlTBu3a2m1PYMBuLA5CAhztgYFQIvCGX+m/hq7p8FbceLrU3Zs/kWN9zrAv7VpQ8u5ioZuxrcAau1zgxpnKhUgi7Hwh59ijxmkCGtq8cXrTrCa8V4mxV6yYKeoVzMy3u338JZ66SEI9cj1mN3IrAr9eDm4BbcEbpOyaEl7r49oFSRcbzZlkw8OGYmZFwvOUeraiSAWPKhOQPVwC41Waf2+dLDPUZ1avXgPbFNzEWHA6Sv/JpmWXszt5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by DS0PR11MB6373.namprd11.prod.outlook.com (2603:10b6:8:cb::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.19; Fri, 4 Oct
 2024 14:23:02 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%4]) with mapi id 15.20.8026.017; Fri, 4 Oct 2024
 14:23:02 +0000
Message-ID: <a2e5f614-5540-46a5-8438-23d6eea663fe@intel.com>
Date: Fri, 4 Oct 2024 16:22:56 +0200
User-Agent: Mozilla Thunderbird
To: Joe Damato <jdamato@fastly.com>
References: <20241004105407.73585-1-jdamato@fastly.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20241004105407.73585-1-jdamato@fastly.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZRAP278CA0014.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:10::24) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|DS0PR11MB6373:EE_
X-MS-Office365-Filtering-Correlation-Id: 8ee525b2-2fc7-4838-6c4f-08dce4800e40
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SWRLOExBeTU5ekg5VythL1llQXFBYTRuNmJCUUhyY1JNNndhdUJRbkE4WkVm?=
 =?utf-8?B?cFV2MWpsaEVoWUtBMlRyNXJqODdNZ1B5NWFjdk1KM2ZwVDVEUUtMUmg3dmE3?=
 =?utf-8?B?MnJuWm5ZSkgxZ1hGcmgyMjN1Nk1PYU5rNjh1K3VUVXppc1dpTnN2ZGE3R3VL?=
 =?utf-8?B?ekxGZ0xKSnBtRTBMeSsySkg5UVVoV2dRbW5vUG1aY2pBam9laEsrRTREcno3?=
 =?utf-8?B?NGNPVk9RSUJ5eFhyRWhWK0srQ2N2WXVOdFhud1laUG9mVmZmSFVQaDE4Qkly?=
 =?utf-8?B?Rko3YWhudXFDd3ZFYkt0NlppZCtRcEcrZDlsbFg1ZnBiRU1hbmcxNjFUR2l1?=
 =?utf-8?B?ZkkvaHpiTS91Sko2aTA4eDMwU2IxSGlldnNsa0h5cmxiZFFqWGVERW11aEF4?=
 =?utf-8?B?WHBKdlkrTlAvYS9ycDlYc1RxWU9ZQ1NwV0d2TGYwMFkwK0hrK2JSbVBZL2J5?=
 =?utf-8?B?ejZ2aEhJTUExZi9CWVNmbE9kaXVWOHJhRzkxWnNJYWZrMGtMa1VvUzY2WC90?=
 =?utf-8?B?UFJsNS90Q3RQZVZ5NlR6MjZhbTI0SlMvblQyTGNxRzVmemw2MTVlTW1FMkZW?=
 =?utf-8?B?WkRZNDJUTDk4U3NGc3EwR0diSUpYelE5VW9aVXAxc1A4TVNNK1NDeGhXTzFJ?=
 =?utf-8?B?WUw3aFZ2elFIVFIxSHV3a1lRZVRGT24zdmtsVGZFSkxNSXNsTDA2UWhkVkty?=
 =?utf-8?B?M0ZvWXJTcDJ4S0xKK2xpMEk3c3NIUDVOdnl0SW9vcDRYNkRzM1FFbUdLWTZ1?=
 =?utf-8?B?MitIZ1VJZktoMWFaSGVuOS9QZVQ5NTYyS2xvd3BFcFFQa1NKbXkvWnp5R3F5?=
 =?utf-8?B?amZ0R3A5ckZ6RFhhaWUzUi9TS0lGeE84NXFzTkpxZVpjbk1hNTJuOE9sMnI0?=
 =?utf-8?B?clE0Y2xvQ2xxT0ora2ZMUEhCYmZFYmp5Ty9ZSStxTVZmUU45NEhneTkrMkRG?=
 =?utf-8?B?TkFDVERQTUFaRmZyUTg5amZxbk5HSlYwNjNUVThFTDh1eEJnZGN2ZnlxcHAx?=
 =?utf-8?B?Ri9lanhCNU5SRSswbCtyazkveU9qQURTckNUbno1Wkt2cjFSMzk4cGVxZ3VO?=
 =?utf-8?B?UkZRY1NTSHYzdExHNFg3R3VLL0ZuRzllNmc2ZFBsdHpKVDE1NUFnWTF6YTVY?=
 =?utf-8?B?TXRKVHh3cEswQ2dyUHVGS2JBTm5scWs5Y2dHMlJuMTVEWHNJaEF2TWlkUGNz?=
 =?utf-8?B?RGdKOU9lMTBLWlU4RFl3T0F1SWo0OGdGZkNocm82OHIrQmRuSGtCYVFqVlhK?=
 =?utf-8?B?WVVmVDlrbHhrVzdCRVBvZCtUU1ROZ2dzOTkyTGNUQ3pTWXR0bk5RdmRrUmpC?=
 =?utf-8?B?d0UvdjlSc1lkSnRSZnhkWlJoZ3RTTERKZ2tQSXFVU3RRbHAzNkFZaFROZGhy?=
 =?utf-8?B?SFZtNDBpL3I4cHNlb0lnVzUrbC9sNGNPeWFnK0VxNVlhSVRTRk9FVVVma0xi?=
 =?utf-8?B?UmxOUHJ3SE14OTN1d2Vnb0NnSSt3bFZvTWpDWUdoZVUvZ2x1SktONWlxWmNv?=
 =?utf-8?B?a1BaMUw0NkhhRUpqeE9rb0N2c2o4a25NZ2VGNEhTekVUbU15U25DL0toMUxp?=
 =?utf-8?B?TjJ4OUVMczhHbGZGWk1JUHpoWk03bVo0cWxPb2lLVUhZeklEdHkwQmNuY3Zy?=
 =?utf-8?B?a3VGS0prZnhUMVp4eTRwZE1kL3FIcTdUUW1nWmhmOU5wNldKNG1pYkVabndw?=
 =?utf-8?B?M0ZuV09yNldhMjBiUmhaeTFuRU5lOVJDT0VNYlJkSVk1SGFuOTJmN1VBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QXBuTFc0VmhaQXlINWptSEtoOTJvWGQ0N2ZjdUhJdnpPZStEQUR6bHBiQ2Vo?=
 =?utf-8?B?NUg3ZytJK0U5MDVYNWdPRkZqK05wa05Yd0Fia2pDQjRpVHoyTUN5dzl5RnBu?=
 =?utf-8?B?KzkyRWZUK2tTQUxOUEhNUkNtbHZLVEJ1K2xCOXpGMU5iU1oxWDZkRURVTUhQ?=
 =?utf-8?B?TGNvMGd6WEtrVzg5TlVDWGR2NmxFQTQyZ1k5VWwxQnNFMHFuK3cxaUlDS1N5?=
 =?utf-8?B?RHIzR2NidDk1bWVXUGg1aHB1TXl6MUUxc1lLTE5nTEV3eWh2N0I3QnJScG44?=
 =?utf-8?B?RlR3RGFJQ1lZRkVoMEI2OFY1YjJWV0tVdXhjVVB3UXEyYmdoTEFGaVVqbWdo?=
 =?utf-8?B?UXJvSDVSOENMeFZtMkx3QlNIMUpCVGtUUlBKZnZvMDNFbVdZM3ZFTXFodnhG?=
 =?utf-8?B?SlVNT2VtOWFkQ04ydmVSRFM3VWJVQUxrK1lTVFhIeFRxSW1vVEsyd3M0VXFW?=
 =?utf-8?B?SVpTVlZhNjdtdkNKTlV3VkVoMFlDVHhNaEM3L2JnTThIVDRtQkFXYWxscmpB?=
 =?utf-8?B?eWs1Q1N5NmdMbC9IUk1uOU1DTzJyMU1FbzUwelAveEZXYlNibXFyNHlHb0l5?=
 =?utf-8?B?N2ZXQlNBZ0FQejdZQXFsWlVzbFNyU2JDU045VzVwNGNENXVmRURTQTNMU0lq?=
 =?utf-8?B?emZYeEthazNBdVJyRXoyOWZ1RXJ6c2FhU2I5NmlYbzFmVHd2aCtvZ0lrQm9w?=
 =?utf-8?B?Rk5XU0E1NHl1N2xWRWdjUVNjb2YyQmczM1lJTlVlVXVmZWdWT1ZOT2VLNEl5?=
 =?utf-8?B?REhWcUFmdnkyZGdRRHphb0hpbCtWbTNvUWxOMjN5YUtXZ2JkQ2ZJeXplWmd6?=
 =?utf-8?B?K1M3UHpiYkNzQks5bzVKdmh1TGZUL3J3ZWU0S0JuYy9OQkZ1TkNPWmJLOCsw?=
 =?utf-8?B?cEJvK0xPdlQyMlNaRDZqWHZCY3JGMkpxQzExNWU3c0hFUDg4U05nTElhM3do?=
 =?utf-8?B?dWVqWmoyWlFBTWo4RysrQ240d3VCUG9kdVhPRFdEQTlrT01DenBmTVhhNzBu?=
 =?utf-8?B?c3cyUDZtZEEvaGdjaVBRSTR3WEpQcVpzYi9EcU5hRTNvNU5FblhGMEhURmdp?=
 =?utf-8?B?YmRRZWY4TzJVZmFkT3dUa1MvRGxERmQ2Y2F5dGlMeFVDU0E3SllrdTJOSnU1?=
 =?utf-8?B?MUd2b2ZOUmxHOTBjM3VkbFlya1FlSjBURTF2VHVLMENROG9peGZCekJtYW1R?=
 =?utf-8?B?VTVyTEJJS3Zpa2FCMVJtM3pmeFg2MDZxb1ZmYXQ4WjVQWDBLV0NITVkvNVJO?=
 =?utf-8?B?NUo2QlZJdEhLR2NzS3lpMkZxNHFwdWkreGVHZmpUc2hQYm1uYzkzZjRLTXJw?=
 =?utf-8?B?aTVvUjFwSlU5bnIxZFRveWZyVTJPc1FYSnZHYjViOUpkVlJoM0MwbiszSGtB?=
 =?utf-8?B?dUtGRnRUa0FVbjBoQ3lIdGMveUEvbTFQNlBva0NYVXJsTW1OUHRjWTVVbUh2?=
 =?utf-8?B?b1VBSldiUlFtSTlkN0VUTWlKdWdPei9jVHp3dzdZUW5DOHVzeGxiSzlWNTlj?=
 =?utf-8?B?Uk9MbmRHeEx3Zm8wNUd0aW56ZzlXbitYMnNUT2ZEUW1OY3ljNTI5ZzRhRTJE?=
 =?utf-8?B?UW1GOGZJcjNBayt1YWFhcncwMmJGTk9VYWQvTG1LVlBQclpJUVZ2amd1R0JC?=
 =?utf-8?B?bXRBdGpSNmVzeGFqLzdCRCtsNUFoZC9jSlNtQjB5QTczMVpWNjVTakFpWits?=
 =?utf-8?B?VDRENjk4cmdMY0N1VFdQNkFlWmdwZWtDaHpUVWk3SVltRytTdjJUUHJGRkhj?=
 =?utf-8?B?SjlqN0hFUmdySDNTaEovUG1pcU15SXF2dGxNM2gyZFlpOVM2bTRmYUxIeGxJ?=
 =?utf-8?B?bXY4cSt1NW9CY3FrbmlRU1NJYytNblp0dnB0clJVdmpUd2Zqaml3QWZBZCs4?=
 =?utf-8?B?OGtWcVNMRThXOHJLYVpiTjFRSWt5Y0VhZ29URWw2MmhmcktZZFBQVkkvcFJN?=
 =?utf-8?B?MG44bTFSc0F5RDlzRkVoL2kzLzAra2JHTzRXTFNHS1pLQXFXVitkVG5OMEx1?=
 =?utf-8?B?SzZ3WjhlR1F6SEc5cDdVS3ZEWVhETkRjN2IwNWtiNjlGTW9uWVVaZmhSRFZU?=
 =?utf-8?B?SmJodzhST1JDNUlTR1hXNmsweHovdlE4b1AySU0vSG16L3U4Mm5DQ1F1Z0pL?=
 =?utf-8?B?WFlLTkFkZGVHSHBUd2s2cUpEWW04dUJDaEZrQUFiKzRrRTBmQk9DWm9CUjRU?=
 =?utf-8?B?R2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ee525b2-2fc7-4838-6c4f-08dce4800e40
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2024 14:23:02.8565 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TMP6gpVDh5XHmQpHO3i3kDDxmZ/PSdieK3mVQqPr/iwCz12XuowqWSoC0/Y4sFscUcim36jBXffp0wnC7S55+Hany82RVySrhc0ea06qW94=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6373
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728051789; x=1759587789;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MLkhh+EPEZJ5mYvmVbtrMjnAXdvnGEw9UaJLIKS8WUc=;
 b=eQonohVKySxMOqMrbR0oZmxHDcARc0OEzEdwEbpjwd5rQn/k39o9s/+L
 Fmzxb2GdpBfKa7zyza8iP7jpHshPBg0VKNwbjICpHXLLQUIpeJcEVTG2a
 Q5yTQIJbw1ng3ckYwp9sS8O48roNH/zQ+WI9SYoLKjmZs0oTjjNop2a7r
 vt6sTMcXASdvsKbrD/kEY6R5cYW2KX+Hffy1cT4Hpgs4bxi0a8E+d95px
 w2UrPyTvvmJzgUoIZP5ctTkSmKTjXEGed2p2nISPQB+ZZV7hN711B/Olb
 sCIym4GhX5VXakVUA6wUA3GGtuo/HJiuefUhBRVFbPjJAfG2B+vmklROs
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eQonohVK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-next v3] idpf: Don't hard code
 napi_struct size
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
Cc: netdev@vger.kernel.org, open list <linux-kernel@vger.kernel.org>, Eric
 Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 horms@kernel.org, przemyslaw.kitszel@intel.com, kuba@kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Joe Damato <jdamato@fastly.com>
Date: Fri,  4 Oct 2024 10:54:07 +0000

> The sizeof(struct napi_struct) can change. Don't hardcode the size to
> 400 bytes and instead use "sizeof(struct napi_struct)".
> 
> Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Joe Damato <jdamato@fastly.com>

Acked-by: Alexander Lobakin <aleksander.lobakin@intel.com>

I'm sorry that I complicated things a bit with those assertions =\

> ---
>  drivers/net/ethernet/intel/idpf/idpf_txrx.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> index f0537826f840..9c1fe84108ed 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> @@ -438,7 +438,8 @@ struct idpf_q_vector {
>  	__cacheline_group_end_aligned(cold);
>  };
>  libeth_cacheline_set_assert(struct idpf_q_vector, 112,
> -			    424 + 2 * sizeof(struct dim),
> +			    24 + sizeof(struct napi_struct) +
> +			    2 * sizeof(struct dim),
>  			    8 + sizeof(cpumask_var_t));
>  
>  struct idpf_rx_queue_stats {

Thanks,
Olek
