Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A63778D29A7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 May 2024 02:52:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 038208214E;
	Wed, 29 May 2024 00:52:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id agdWgIfaZlO5; Wed, 29 May 2024 00:52:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2923182135
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716943946;
	bh=eZIvABvM+CDR9suq9tZNUdHnmNf4/8Z8m074N720bTE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3N+560bQ2WX94U1vZ0JOplQCo3MccIAK3l3f6pZN1BcYrj5QiA98sFBIK+kTTxGS8
	 pVk933dm/sOJYQlGhtyUADJWwzMzqBaB7c29xm6EGoeH4xWN2cHM2K71QFXoSORQqv
	 TWSWAhmtbQEoavWoHtgEDFTsHJfHOxSQok40RbG1XW14brz+QkmEH7FTmOgkrsgVot
	 RdTMskf7KjBp9YF2Vg+LLlcHaEznLmVZN8aWY7tpC8bf7qySoyLYSW8rO25Hoas98h
	 6VcQFnzhozEYEvmuvnS1k6Rbx2k5fy9UZOsC6nP9nq7COXb+PbRl7mEKdyDG0evfTB
	 EvhxUIZxSR8UA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2923182135;
	Wed, 29 May 2024 00:52:26 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4E59A1D2F16
 for <intel-wired-lan@osuosl.org>; Wed, 29 May 2024 00:52:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 38C764087B
 for <intel-wired-lan@osuosl.org>; Wed, 29 May 2024 00:52:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jMxu_npQ2jGg for <intel-wired-lan@osuosl.org>;
 Wed, 29 May 2024 00:52:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 25107407BE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 25107407BE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 25107407BE
 for <intel-wired-lan@osuosl.org>; Wed, 29 May 2024 00:52:22 +0000 (UTC)
X-CSE-ConnectionGUID: Si9F1drGSdaC+V0iosQB6w==
X-CSE-MsgGUID: cHIsACGjTwSpInQwpFXPRg==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="24452093"
X-IronPort-AV: E=Sophos;i="6.08,197,1712646000"; d="scan'208";a="24452093"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 17:52:23 -0700
X-CSE-ConnectionGUID: dWU7UFmpQi+occjzpt4BKA==
X-CSE-MsgGUID: W5pO2FO6R3umsXeeBu+sUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,197,1712646000"; d="scan'208";a="35168084"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 May 2024 17:52:23 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 17:52:22 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 17:52:21 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 28 May 2024 17:52:21 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 28 May 2024 17:52:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NCL7HREupDzSqAv10d7erTe+LzESdMa2El2sARjNEdZmwHOQLepHLpX3cTpi249PxyeVU6/BjvjdNprp/cA41dXNfO9bhw1QhpIj2cCIimWse9btltaufoK98kYJalc6Ah9oZzeeVYy2/KbWe+LkPLsxWNZjqgCpzl0qZsa/Bvwo16wpw1yx826HHC3VN5bOxFUzaNNxuRS7fLTRJIxzbOx68tUTidNtLrQoOMDPMAhWoYDG4g4ouIVOUj2XQR8SUSMx5ISmagPD7XcqsHrzkDUl6hBS8yzp4z7MeXyDVBqye9+kkxZKUzuoIp+jSXX2D7kMYLwYbXJbDcjPc1Z/Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eZIvABvM+CDR9suq9tZNUdHnmNf4/8Z8m074N720bTE=;
 b=gN46y254MElaheOXSqDtLsmI3yss4fUH1X771fiokO9lMQ/fdvYqCbDltKp0VSwMrK7blzYeQgtfWe5yijOCMapB55IRc9OKyj2Lz5DPTMuPwc3QW/41c3Em6775QtM71kbXtDCo73j3ZVxVz/xYfPH5SQxIcYQ+Gkren0tqWLv+/mOtERIRWFb27ZqxPTlVQIIsgFfaOk3x/FGUlUbo7xm252V4j5rhLnFim55EWXYULmCpy4975WHqlC4S09raVosrKiHzlzC1Zc0B2gwVvYDX8mQam6g2w+3iL4S9PHIIgtIee0wFwbE5W1NoZ+kxVRkoU/lEps4YqsUJHTUO5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH7PR11MB6977.namprd11.prod.outlook.com (2603:10b6:510:205::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.30; Wed, 29 May
 2024 00:52:18 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.7611.030; Wed, 29 May 2024
 00:52:18 +0000
Message-ID: <c56234a2-0040-4857-99a5-d1495657ab1f@intel.com>
Date: Tue, 28 May 2024 17:52:16 -0700
User-Agent: Mozilla Thunderbird
To: <intel-wired-lan@osuosl.org>
References: <20240528134846.148890-1-aleksander.lobakin@intel.com>
 <20240528134846.148890-10-aleksander.lobakin@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240528134846.148890-10-aleksander.lobakin@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0254.namprd04.prod.outlook.com
 (2603:10b6:303:88::19) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH7PR11MB6977:EE_
X-MS-Office365-Filtering-Correlation-Id: c2ab0cf8-fd6e-4541-b004-08dc7f7996e5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VGJPUkR0YmR4WDA1cU5CTWdLYWs4Qmg2NnF0ZWVFSjI4TkNEc2t5UjJGTGcx?=
 =?utf-8?B?dDhueFhLVmZaK21semdTYUdENFFMTDMxbDJ2OVNYWDRkdTZIUFZtRm9tNTdl?=
 =?utf-8?B?SzV0ckhNQ29mVlpPSUQzMlJzVG43K0lHeFZwUWJNd010Vk9zdFBlYVZYZ3ls?=
 =?utf-8?B?TVJaVktPNWsyZnlQT2RmVE9ySHlGNmw1TzJsZnF4RTNrcCtGaHAzVmpPWHJD?=
 =?utf-8?B?bGI3VXNqaHkvSjBiemdNYndwSDgrcE1UdUdYNE1IMXZzNGVmVGhlSmxOWTFu?=
 =?utf-8?B?bEw2ZUZHV21EWGhEa0JqT3dWM0hUaUc2Y2ltOFI0eXJ5cUJxalJHU3ZpM0Fq?=
 =?utf-8?B?Y2Q0MkVIY2NRS0h3MW1NdG5Sa09WM2NzRTdpcjB0ZTFZUWRva3NnZUtVNVp6?=
 =?utf-8?B?dGVIbjhzczAxb2R4ZXR1Zkl1RUJEYUdydE5HN08xWHZYT0dqa1czNEs0OXJv?=
 =?utf-8?B?OVQvYnljTm01YnViM1N0cXRrNVAvOE1Ua0k3QTk1TUNXeWhnaGtCcHZEOGM5?=
 =?utf-8?B?andwY1RpdGtvc2JTZFhMR0I0OFhlZ3VJcHBRa3Y2N2xWTGRVNDlOOERrUmJk?=
 =?utf-8?B?MTBkSXYzTlBia2NCWjF3V2dKWi94cG8wRDZCeHhGcmQxbzMrVlVRdkRUQ0E1?=
 =?utf-8?B?ZmQ3VXRLRW1JOFJONmF3SG4wNmF2WjV1elIzNEJVUHJsb3FBbzYvTXVJV2Jv?=
 =?utf-8?B?dm85THVjSkd5aklqelk0b0Q2R1ZqS3VwMURVT3ppS2JlbEw4WVN3RS9tQXlL?=
 =?utf-8?B?MTNvb3ZhVnZFS2tCV2REaFIwcFIvVVNuQjNqdm14djRkdDR0dnRGMktwQzhN?=
 =?utf-8?B?TjJCWXRnblZDb2VURUF2elJjTDBjL1lKT2czSFFNSFFJK0ptN3IyaFppV3Q3?=
 =?utf-8?B?UHBOOFdRMW9vS1dZRzQvY3Q4Y0kxWEp2RVlJa0ZxYjlJRXpGUnZKUGdRK0Nj?=
 =?utf-8?B?OU1vT3BDRFNNd2FMSGNlb3l4a2l2WkNvZ1RyVFRhUnpCRk9sVGIzUWpneU5p?=
 =?utf-8?B?UU5rVWo3Q1k1YzJJVFhxcUl0SnVra2hJbk1ETWt1bkFybTBIc0ZnT291MzNV?=
 =?utf-8?B?SVZQQ1pxTFlCbzNnSkZCR2JhMk5MWHJTdCtMM2hUUVI5VTROVGRBTDZPaTcy?=
 =?utf-8?B?ZkRkSXduZndUWTB6bkg2WUllVk1iei9PcmRpTXVBOVlUOVh3dHU0cGtmejcy?=
 =?utf-8?B?dURYUDRWM2UzbndTdWwxNG9xb0IrWGhCaEtKTnFDcU40YWVocjV3RXF0WWw1?=
 =?utf-8?B?N2NmaGxMMGxsSFJQUEdlaU5ZYkJpTmpmSzdOcGlpQ3cvaUNrSlhGODlkUXVa?=
 =?utf-8?B?UEwvU010YUJOSW9uaEI1QStSQjFYQlRQdzIvMnNySXFOdlZwczkza25zdlJF?=
 =?utf-8?B?UC9BS1A4N210bkVPQkc1QTNjMmhvUkxUYVNIeU1VR3FwdXFraW9EcEJOR1h6?=
 =?utf-8?B?WTUvVkdrRm5hM1pncHNUSktJay9qelBtK3ZEL2t6L3BzTFgzdktZQVlHT2I4?=
 =?utf-8?B?bGlFclkvMGFIYWt0WlUvUkhBZWw5YW9uQmdPbnI3Y2tyaU5kcTdVSExYSlpo?=
 =?utf-8?B?MzlobERvU0o2RFBESHZoQ1RDaStXSDY4RnRVZ2I0SzJYOWRMRGlWeFBLWnUv?=
 =?utf-8?B?TWoxOTNObEtWaStoZHVTdEJObFdJWTRZa1NLL0U5RldmUkFnR3JWTTZDbU5a?=
 =?utf-8?B?SDBhVzVPMlF2SUU4ZFpSaHVGajhVbGRUbnArWGNmMnVkTWcyNDVRV0lnPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Mkl2MjBXNTllMHpMa1ovRmJSOEJCZFhhL0JJcUJsYXNUeGZYWUs3RmtwWmt0?=
 =?utf-8?B?ZFVPTlB3Q2ZnVmJRRzN2YlY0Vmh5Qm95ZWhhSjkwdTV0SStsdEh6OUJnK3ZF?=
 =?utf-8?B?aWlzOVMzWk1EZ0xmaldSWFZ1bVFWUVc1RGhCUUVWVi9tQ0JndGo5MmpiZjZJ?=
 =?utf-8?B?dENzcU9CTk5rTGROa0VuSXZmQ0VvcWEzZ2RaRHNqSlNpcWJBMFlWTjNScXhn?=
 =?utf-8?B?d3lUNW5uUzB6SHllMkN5alVoRTBNZ2xTZUdzTUZrdG1CdTBQcGVuZERqdStY?=
 =?utf-8?B?YWU5KzNWRWhGZlJyWlphNjA1Tk5zWE1vRStjNXVDbVpaSlgwY0pPbTJGQ2d0?=
 =?utf-8?B?WE9mN3BGekt5OUcrTnc2ZFNZRXdWRDJRR2ZUOEw2eFhaWGlsOXhQeW0vM2s5?=
 =?utf-8?B?N01HQ1UxejNTWEhRR1VhMnAyYTJDVWdrTFRNUkZzZEdTT3lhcC9CNjk5Mndy?=
 =?utf-8?B?N3Y4amVmR0RDN0FHRkpiMncwSVprWmx3eXRRekFuS3cybnRPV3psaHdXNmZQ?=
 =?utf-8?B?RmdjbUVkSjJnUWlzN0s3b1gycTg2ZFlKTnh1REduOU1uRm1vbGw3SUxCaHZI?=
 =?utf-8?B?czZtNHJTWWR3RWNwUW4xZGk0REUwTDhxT1FGd1RDYnBkOExlUVNKREJjUi9M?=
 =?utf-8?B?TC9pYVd3YkthVFozQ1lpMFo1N1pxU0dwSjVqcVplam5qZ3JOYW1JeUpVdENw?=
 =?utf-8?B?dGNMekNtdjFqMnpkWjVGc3JFSnVtZktUeVNoNk04MlF4ZVIxeFRkUUkyUm93?=
 =?utf-8?B?a1JNRWN1MVhMSnU4N2tEVWdpdG9TMkduSTJSbXh0VXNFdU1yQmQvNGQvNDJU?=
 =?utf-8?B?OWxYSXJMTTc4LzQ5c0dxL2ZXR1hTbjF1SitIZzkrS283eE90VHRsQnFuTm1R?=
 =?utf-8?B?Q2ozTWV4ZWZPMmFVcDZlMURrWGZzMlZCMkwyR3VrZWV5aERLU1FwYkNGTDJ3?=
 =?utf-8?B?YzdveStOYURzMGt2UVV6NllvZW0rMVZSdmpldUtLVkl4dU5TL2pLQTVFRkZj?=
 =?utf-8?B?SGxWTXlkTHE0Q0xIQURsUXpVL2xVb0lLNnU1UW43SWQwaTkvWC9jNXpxWjUw?=
 =?utf-8?B?cnArZDl3NU0rWXVZOHp2S05uMk8zTU1wWXhUM1hURktDNURma1VuRmpYRWZr?=
 =?utf-8?B?akV0RHdSOEtkdUpqVCt4N0lNb20yR3pLRURQalk1emtOYVc4eGVrSCtXZWoy?=
 =?utf-8?B?KzRMM0tWdjRvV2ZkTk8yVHF3bTlGa1UxcGVLT0l0WHZOLzkyb2NoQnV6UCtC?=
 =?utf-8?B?alRmbjU5VGNMMU9CQnNCTmM3bXlGQUhna1FOKzlDU041NDEvSzJNVVNMVXdn?=
 =?utf-8?B?Skc1NlNkMm1RbzNON1RGY04vZEpEU1ptTFJVSXpyaGUvdmUrV0s2TCs2dXdy?=
 =?utf-8?B?YTNLdGpCWWYwTlVja2ErZzVYK2FzQTBDdjU2K3hwLzJld2FBVGNtTExMSDNi?=
 =?utf-8?B?K2xKdXRKbi81Y3ZCSTRNNU5zZVFGUm9LUWVLSEhjY2cwRlFOdTRYS3Jtd2Rj?=
 =?utf-8?B?ZzNjWVhNN2JUWWpQYXlUSVB4R0RtdWFBQlQ5YUpyT2ovWVgvcmsyM2JvR0NY?=
 =?utf-8?B?bjl4cmJzbDUwWXYzbUllY3pnSXBrNmNCZGZrSk9vVTFoNVNXQ0JuNjB0d3lv?=
 =?utf-8?B?Q3habWdiUElmZFB1c3JxaFliRFhFczA1NER3aG5aUTJ0SFpNZDV2ZThnMi9B?=
 =?utf-8?B?TXdEMklISWlKU2lGZGVCMWNnWFU1T0padEk2Vk95bGVraytNM0xXUGNqc1cy?=
 =?utf-8?B?U3UwMjJvM291OU85ditQOGNSb0NiU3o0RWFzOUtxQVRxTWlOUlUrK1dXQnI5?=
 =?utf-8?B?ejJhRVpMbEZGNGV5dzZJYkR0bXFyd01iLzJxMlQva1BkcUhHZWE3a0ozZ3Vh?=
 =?utf-8?B?OCtXdTFSaUtrbi95bjhXWTV0V3FiaXkrV2t1VWQ5TlZTMVZlTWlCcFFsQWxx?=
 =?utf-8?B?eC9FV1dsWllwSFQ0YXlyRHkydFQ0M0tjbFNGVjFJVkNIdStaZE9CdnpGdnpV?=
 =?utf-8?B?RGpONHFsUndNNS9VNzlTeGoxZzRuaExKVHl4czV2TTVQSkF0U3p6YjZDZVhR?=
 =?utf-8?B?S0VZZ1NxbjVIdVVGMGFndHhEemhNUWtERHE3WkFaNnFUeTB4YkNyc21vcXFz?=
 =?utf-8?B?RU9FOWNwSkZqdUV0RFFlMithS2hWR09SeDQzaGpxVHNPUkpWSzk1bFcyYUlM?=
 =?utf-8?B?enc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c2ab0cf8-fd6e-4541-b004-08dc7f7996e5
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2024 00:52:18.0191 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0Aly4PmKMkcZR0OlmuMach8kHG4NTU0VOuEkYbwBABdzsNpmf2tVfJTUGlKckxJ7KrqVu3rGpyDz0evLz4GV8MEjOoiKpm3O0VJ3tPeZWzs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6977
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716943944; x=1748479944;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=wFep0o0XekJklcn6dMYhLVYi/y6VZDolVISdy+Z64gA=;
 b=N/ARrBs/F2GDg27GdFBtF6RJcWAMbhtEEOa9d/eXY+FRzgYMoXOAnMAn
 RWBXMvKE3D0hdPLc6OdYMq8ZBq232NJaAE2NCrdtYRzCszG+tQPNfCb58
 sFBlBK/4epDo6Y69etr4aze/UghoxAWzsMqyPVGCqf6jdRY7neAZyfq2c
 ObWBZWHD7BT2KBH9SfnAIzNaFTPbjaQCYZEOAdxPW3bi7GqNMGdX30WPN
 rRZTDX7FMn4b2BdS5HDa9Rbe4eU5LTYMh7lEC60ML8G7RDzohFVNBc6Ep
 lPd4129eV289Mn/hB8FIiOGEJw3it9L7VaAz5JDBpCiJZ3TutlvTx55IC
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=N/ARrBs/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 09/12] idpf: remove legacy
 Page Pool Ethtool stats
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/28/2024 6:48 AM, Alexander Lobakin wrote:
> Page Pool Ethtool stats are deprecated since the Netlink Page Pool
> interface introduction.
> idpf receives big changes in Rx buffer management, including &page_pool
> layout, so keeping these deprecated stats does only harm, not speaking
> of that CONFIG_IDPF selects CONFIG_PAGE_POOL_STATS unconditionally,
> while the latter is often turned off for better performance.
> Remove all the references to PP stats from the Ethtool code. The stats
> are still available in their full via the generic Netlink interface.
> 

Yep. No reason to expose these twice, and blocking the ability for
someone to disable these for optimization is annoying. Good cleanup.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

> @@ -876,7 +870,6 @@ static void idpf_get_ethtool_stats(struct net_device *netdev,
>  {
>  	struct idpf_netdev_priv *np = netdev_priv(netdev);
>  	struct idpf_vport_config *vport_config;
> -	struct page_pool_stats pp_stats = { };
>  	struct idpf_vport *vport;
>  	unsigned int total = 0;
>  	unsigned int i, j;
> @@ -946,32 +939,12 @@ static void idpf_get_ethtool_stats(struct net_device *netdev,
>  				idpf_add_empty_queue_stats(&data, qtype);
>  			else
>  				idpf_add_queue_stats(&data, rxq, qtype);
> -
> -			/* In splitq mode, don't get page pool stats here since
> -			 * the pools are attached to the buffer queues
> -			 */
> -			if (is_splitq)
> -				continue;
> -
> -			if (rxq)
> -				page_pool_get_stats(rxq->pp, &pp_stats);
> -		}
> -	}
> -
> -	for (i = 0; i < vport->num_rxq_grp; i++) {
> -		for (j = 0; j < vport->num_bufqs_per_qgrp; j++) {
> -			struct idpf_buf_queue *rxbufq =
> -				&vport->rxq_grps[i].splitq.bufq_sets[j].bufq;
> -
> -			page_pool_get_stats(rxbufq->pp, &pp_stats);


This can just go away because the page pool itself already tracks these
and can be reported over the netlink page pool interface. Nice.

>  		}
>  	}
>  
>  	for (; total < vport_config->max_q.max_rxq; total++)
>  		idpf_add_empty_queue_stats(&data, VIRTCHNL2_QUEUE_TYPE_RX);
>  
> -	page_pool_ethtool_stats_get(data, &pp_stats);
> -
>  	rcu_read_unlock();
>  
>  	idpf_vport_ctrl_unlock(netdev);
