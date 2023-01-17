Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EE74366E6E5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Jan 2023 20:23:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 856F26066D;
	Tue, 17 Jan 2023 19:23:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 856F26066D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673983410;
	bh=kmlkY0PPzcXW8mh6ucgfHCiTVKPWH3cegi5/9pCa41w=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=A0a43y6OACXm7x+THNqkkfBRBaSB2LwgSjgo+tm+4rPnGor+G4CB9vWCSY4WB+PrG
	 sDtuViUgY7rHdZdHKxuY3jRkpDA7GYn6TQ68C+rv+97LQD9sWPovIL5U5tZrWWsa/l
	 aYImHB5GyoXVlA+nMGR75PjRgOzvRhfzz4y09IJ+88lZN1FU/z0ZsxXp5cDhQ8z134
	 e11J0KWT/tDC3OV9K22qx0zSZl66MhEIpWtL94AWd2aB3qRWDpH8dfePZ+rgT8RIKa
	 eb2ACUgp6P48y7xVjWWC4gUZsU4eLZF8sRQIUTIMvZWNp1bqOpP6L9WTsZNR1yzRUD
	 K4exR4rff6A7Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LtB2lxq0r0yf; Tue, 17 Jan 2023 19:23:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 78CDF60BC7;
	Tue, 17 Jan 2023 19:23:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 78CDF60BC7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 298991BF2EF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 19:23:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 00FE640276
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 19:23:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 00FE640276
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Sx9y9UOD3BUK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Jan 2023 19:23:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 91AA040218
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 91AA040218
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 19:23:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="323485008"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="323485008"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 11:23:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="722788664"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="722788664"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 17 Jan 2023 11:23:06 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 17 Jan 2023 11:23:06 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 17 Jan 2023 11:23:06 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 17 Jan 2023 11:23:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tr/jBqYq3c9b75PS9SDlsz9wm9krjLVpnEJfKvEPPGOEffKycXI4cSbzg5unDwtVStSvWggTXB2GehxieZ4WgM8gwm/8er8RYkFoxAT5uU1Zu9y2fOZepmmhrtbc1hXWbsvWPJkDJOvyGJ+rpySFT+vUnh6CCzo6tWcNV9pMMiO5R+hhFKYajDD00yaUy13BW76JNu+k020QRRMxd+gsLALiDYObr0pzIZUrRwFMA5tu7eWL2JVRCCP7szrwtUUs75XTWpjAotByfTQ45VfR5Mgt9UuSYBWeb3PXaK0ZjKApsA0VR9jJaI04IWZt9LiLXQD1tPpL0gahUFGNqWt3fA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f/wZpgP9i7OVDmdPuihDwjmK4Go3cWJTlTmY9rnDgqs=;
 b=XTx0aM5ccfoygmc8bObVSsN2q36tryypsmD2qXqVzomC+TzXSQjlQFO+FjWFqNXZuEguyyKgGFBIuecMWYB0ynHD5vpPAtHd3miP66KqwFMTQ/YxhYvAObA263zGH9eL90geejHN8vxE1+qrpmWzLsAp9I1l0ycUso6kStaGTtJO5D+7G40XB8fTJ+6GS6XdzojmZDFfMdNEufJjT7YQdt/Mtwe0emjsLiTFIYan1upiATwJcjeIwxoJOLdCwKTqLRLQPE5JLtfFh8YXJcbcydQ/qHuQRXgiLaqzcT+SAuOiaZqriVTjGIpgB/re23zk30tdCoD2fb5/ekycW/lL/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA3PR11MB8002.namprd11.prod.outlook.com (2603:10b6:806:2f6::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.23; Tue, 17 Jan
 2023 19:23:02 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::5697:a11e:691e:6acf]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::5697:a11e:691e:6acf%5]) with mapi id 15.20.5986.023; Tue, 17 Jan 2023
 19:23:02 +0000
Message-ID: <9c960749-d369-4b25-c626-e4ed74163c64@intel.com>
Date: Tue, 17 Jan 2023 11:23:00 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
References: <20230113223735.2514364-1-jacob.e.keller@intel.com>
 <20230113223735.2514364-5-jacob.e.keller@intel.com>
 <Y8UtV5QqESWncLcP@localhost.localdomain>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <Y8UtV5QqESWncLcP@localhost.localdomain>
X-ClientProxiedBy: SJ0PR03CA0076.namprd03.prod.outlook.com
 (2603:10b6:a03:331::21) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA3PR11MB8002:EE_
X-MS-Office365-Filtering-Correlation-Id: 2277becc-aa5f-4415-2622-08daf8c04023
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CAYXzYALnVyDFKfxgUBDV8ykhke3/kv5AcK7wAALdJwEuJmCSaK6rlOonvdiWxMMMRFI6Z/a+hIuQfZukuZ/Fdrv0r16zKrYjw5lFRLX+JzJmj8YJ4nDUiWAIEKjQqU0ixvHEgmlcj2hYtYBe56q64moze6iocC8H9A/jxUxm9rhlHf1X3GjGEJmECt4wb9m/CVDUG9O15cl4DQRayJMzi5d/8BdCWdEHRKqHtlTa01qb+fLfl6KkF+MhU1p0dpjhfpWQ/oY9sZVTowdl5l/h7PoIx5pVEQyuhOzJSV9AwIj5vS8qqG1SAN1xnz6bhbN1CLrmyXzhdW5kJ+A8X0JDDnaVRjFe2+ns0NuZmcBB3+k6LYCDKbZ7VjkcLhsRlCFTu46KXTA3EogJkIWSqpeyR+r0VuOoJCp6ehvnHdjUx1OGn60WoHml15bQJIGnVzWVEJhzXOyq+ypImkHk1oPkhKwRNvgrn4Wm6A4byRbi9J6p/QbjZUuGzy4gXn7xAO2zEvE4j6MBKeanzdW/VjrvQxotEmfDl1lZYHtYk+rJzrAVmZM48fzJqVWfM6LlrYvdDvmS+zEjF/6efDFiseAY5wEZ7KYqw0LGtEbgglKZldl5DyflDfbY/F92qvUDXt/5/COYzjZIKePdov9qvs7xZBF2+OM9Y2zYDHHDkh9tHyQhIfNMcLR46bMR22JhB/XRW2mxcfW7GAi1sm73H+Q9ANkk0/i3qf4fRTMRGkRiNg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(136003)(39860400002)(376002)(366004)(346002)(451199015)(82960400001)(83380400001)(8676002)(86362001)(38100700002)(31696002)(6916009)(5660300002)(8936002)(66556008)(66476007)(2906002)(66946007)(4326008)(41300700001)(26005)(53546011)(6506007)(186003)(2616005)(6512007)(54906003)(6486002)(316002)(478600001)(31686004)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RHFXWTd4d0k0Q1VSMkRGaDFCenI4MzJGcU9ncHk0VUthZTRVMXlBT3VmejZw?=
 =?utf-8?B?US9kbkdLQ3RuNUlDU2lxZUVQL1pkcFRjbzVQQVhNZWxpelJFQ1poL0VZNkJX?=
 =?utf-8?B?eWRTS1BadlNOVDJZY3p5WStRWEg0WWxMWHF0NHp4clVVYzVhMnlmOUcwaWRh?=
 =?utf-8?B?YWFicFhXTTlKZUEzMTlVcXg0M3hqWk9ZcGo1MHU0TFNXUjMwam1DM2NzajBj?=
 =?utf-8?B?bjdTRFBya09FZTZGNHJ4VjhvOER1ejVNMEszaFZzS2ZvNmxpRUd0YVNWNFNi?=
 =?utf-8?B?TWptTXVlQ1VmSjUwN0wxK1JRSWNvWXREOFZNVmUvVVUwYXBUemF1VkxPVWJq?=
 =?utf-8?B?SE56eU9qSUZucHN6Z3NXZlArVys4R2owSnFobXdISjg0d0pVc3IzOUdSR1Jo?=
 =?utf-8?B?ZkFzUTFLaVgwczFvUkczejVpUVhyUlk5TXRhQVNEdXlLMWJQY2R3QUxpVG9M?=
 =?utf-8?B?b0RwY1lEN0syT2JzcHBVTzBZdzlwdFc4ZzF3VWwzQjZkWkRFQjVzNkxnOUJ5?=
 =?utf-8?B?cDZMbkoxbnVQN0tYQU5TRURESXZWWC82c2FpVEYzb2xacFM5cWdob1FmakEy?=
 =?utf-8?B?VVZoTmJJdUxySWljMFZ1eisraVpIdFNDMW1EMmQ3UjF3MFo1aGJWaVdmdi9I?=
 =?utf-8?B?eUxlMS9yRTU0ajFMaVE4NlMvUTE5T1lLWlZoYSt6K1NteGx6aHlrZngyTkhn?=
 =?utf-8?B?UkkwNTZBSHZQMnRFbUhwNkVNRE5taUJIZVVKOU1WWWFpYnF3NEZEVDlTU2V0?=
 =?utf-8?B?bkFTRmJQQVRMQWdJck5iV20rMTRFRnd0RnE0dTJCNVFVYXpLajF0ZE9vS3Jq?=
 =?utf-8?B?NlZ1dldtUzNGZ3gxaWtFY1dlNkRycVgzbGplV2JiQlNJSHdaa253NWVBOXp0?=
 =?utf-8?B?U244SU83RWQwTnExejZscGNPZ1ZrVW9CWUFYSlpUWHRmb3YxSWVzZnFYeEhS?=
 =?utf-8?B?U1RyTjNOSWdqUDYrK2ZuU0lKQU0zVXFzVlZaV2tuejJxOTdacXRYUnU2ZW9P?=
 =?utf-8?B?YmtzbVB0Z1B5VkROTDhINHV3MEptd3o4L3FNNThWY1ZoYk8wTlBGZFc4a0U2?=
 =?utf-8?B?ZDdFVkJTTUFKNUlaNjg0dEZNeVRSRHBxU3JpUml0R2J1YnVLSlY1Sm5McWhY?=
 =?utf-8?B?MklFaWxxb25WMm9ZSkhaeEFHMzRCLzFHdDVub054dkwrcjVCMEYyNVBscmxE?=
 =?utf-8?B?MElvak9hMHVycnlkdWpXbEczaHFQcDRFR0U4WUNWVzZnM2l6a3E3UUdMRVdU?=
 =?utf-8?B?QU5IN2RNQkpXVU9WazhDaU1LME00Nlo3R2hNRTF0Mjd5NUtTSjBJZUgwR0ta?=
 =?utf-8?B?M2VZT0QwQWc0dnB0aTFZdkk0K081WjRKbzJBU1F4Uk9HZU1mOVU2RVJGeFpm?=
 =?utf-8?B?OWdvK2xlVnF3Ty9mWnZISkpwVDNsNS8rVDdTVkhrZ3dmbzZEaTNNS01ZZCtI?=
 =?utf-8?B?K3c3Y1p2SStwcTRFWkp5Q3NRaUFvVnF1ZVQvOGdqakllMUhDTlR1YzdWOWdO?=
 =?utf-8?B?aWZmOHd5aGhlSVlIY1YrV2lOY3FUa1IrUlZTQ3ByVVArNUVadGNYbnRicVNt?=
 =?utf-8?B?R003eEhpYldTQ05qZUIxTklwWGl4TWdKZmxXSUE1QXJ1b1U3MDRlVmhXZ1RD?=
 =?utf-8?B?WWxLdjlvNDFiWE1xaXlOQk1qN2lLNFFMemg4Y3BOMFdHc1JqWEtXOHJqVWRY?=
 =?utf-8?B?U3RyK09salIxeXZTSXV3ZW1qNlJoRGQ2Z0RWVEJhM3dzVVYzSGVPSnkyM3dC?=
 =?utf-8?B?RElpYldSSGJlaFBLOHRwMUZQbEJWN0QyNEJQREhTTlBZOHR6UUJjQWNuTk8w?=
 =?utf-8?B?ZkVveTEyemJSb1Zla1NpNldySVJobmhzTm1TMDY4VERqK0wzMFdwT2dVOWQ0?=
 =?utf-8?B?QURQR3pPczdKUnpwWEdLc2FLS2l1MUpYUnBvdWZLclBISzNUN0IxZE92aXAy?=
 =?utf-8?B?UEZyZ01LV2FhUGRxbzdqR01OSVB6MG5VVkQvbUN1QmxmeHFmakpyUmJiNWhW?=
 =?utf-8?B?N2ExdWJ5cE9VcTloKzNnbk9lVnRuV3dMcUkrdzd4bTlJWm9BSitYb0ZTM2w0?=
 =?utf-8?B?d2xPcWgraDJITTFaWVVDZENzZXNtQ3ZxZTExRlNWNTNubVB0eHRMTzNwV25P?=
 =?utf-8?B?STNBK3V5ZnVNSEo4aEd4eEtaSWcxTmFQVmVRdHR0MENaVUh0K3RMZ1ArSHNS?=
 =?utf-8?B?U2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2277becc-aa5f-4415-2622-08daf8c04023
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2023 19:23:02.1844 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2AbkLeWSW1FPGsYRjhxA5hQi4q55XdhPdPrQFlpTLmmRsc1OmvFNCSshQ3tZw6fpYk+iwyYP97sUDU+XRXtcX8t2k3pOAysPOy3txwcHiPY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8002
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673983402; x=1705519402;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gV3qFD+uGv1Tqo5AjEn61M2kPl1CW2dxrtULpBcoKZg=;
 b=kZwQDxHrlEuYxCMXQzVz+joLrEQlNCVx44uRZkb6+XOwYq8K2O1J+FG6
 0D2lnDYDfUc3PkS43oIVSx2LrQnD9qM0lVs8W/385b0L4UBDu45xM4DP2
 O09UOEx/Xk1VVN36TH1Jn+5rjz1NTRtemzm6BqOXYtB16gi9ctMhnNRSt
 SQfliG5Kc++CFeT0+2seMi4OZqcucy7463GJE4Jq6OZjZ1x6cx+fu0IbD
 KEirLB5VkPKVR2aHXV32JfOwl7pYLp8+0azt0Vq4+J4L+tKHsGou5fhcE
 e33m6Y1oPstRI5czrIlmy23MieIuXrhGAAma+sZMBeQSq8SYOZ97fOdBk
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kZwQDxHr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 04/13] ice: add helper
 function for checking VSI VF requirement
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 1/16/2023 2:56 AM, Michal Swiatkowski wrote:
> On Fri, Jan 13, 2023 at 02:37:26PM -0800, Jacob Keller wrote:
>> A few places in ice_lib.c WARN if the VSI type is VF and the VF pointer is
>> NULL. This helps protect against accidentally creating a ICE_VSI_VF without
>> providing a VF pointer.
>>
>> A future change is going to introduce another type of VSI which has the
>> same requirement, ICE_VSI_ADI. Instead of expanding each WARN_ON check to
>> include both types, introduce a helper function to do this check. The
>> ice_vsi_requires_vf function returns true if the VSI *must* have a VF, and
>> returns false otherwise.
>>
>> Of specific note is that some VSI types may optionally have a VF but do not
>> require them, such as the ICE_VSI_CTRL type. These return false.
>>
>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>> ---
>>  drivers/net/ethernet/intel/ice/ice_lib.c | 26 +++++++++++++++++++++---
>>  1 file changed, 23 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
>> index f89279ede9a1..79555e22a9be 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
>> @@ -34,6 +34,26 @@ const char *ice_vsi_type_str(enum ice_vsi_type vsi_type)
>>  	}
>>  }
>>  
>> +/**
>> + * ice_vsi_requires_vf - Does this VSI type always require a VF?
>> + * @vsi_type: the VSI type
>> + *
>> + * Returns true if the VSI type *must* have a VF pointer. Returns false
>> + * otherwise. In particular, VSI types which may *optionally* have a VF
>> + * pointer return false.
>> + *
>> + * Used to WARN in cases where we always expect a VF pointer to be non-NULL.
>> + */
>> +static int ice_vsi_requires_vf(enum ice_vsi_type vsi_type)
>> +{
>> +	switch (vsi_type) {
>> +	case ICE_VSI_VF:
>> +		return true;
>> +	default:
>> +		return false;
>> +	}
>> +}
> Looks a little strange right now. Maybe send this whole patch with SIOV
> series?
> 

I can do that, but the main challenge is the number of patches. We're
going to have to send the ice driver implementation as well as the
inet_vdcm driver implementation in the VFIO subfolder. This could easily
hit 15 patches, so I've been trying to find as many places where we can
split patches to other series as possible.

It is definitely odd now, and I could refactor this part to not be a
switch/case and make it switch/case later with the changes that
introduce scalable? But I don't really want the changes that switch to
using ice_vsi_requires_vf to be part of that patch...
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
