Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F309787981
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Aug 2023 22:44:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0929E41B50;
	Thu, 24 Aug 2023 20:44:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0929E41B50
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692909889;
	bh=MXO3amqyJ9BvHZ7cZGllJYnwQbXHdvRUOpWJ6k5lDow=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Xts3uS1ggYcaBJB9E/Jkx++U0i+XKmoKxy7F3qs7PQVbd4sWQ2Sk8HS37QBwmqoOm
	 CRImIF/vxWkwdlKE5Iy+uYSknpkGqycX7iKKOtaQPU4C1Q6Ar4uF9PxGEniwI+ChbV
	 hvy9+Lw/pzf2OfiHN9rnmDKc3J14BoNPwg9pnycqJIk2l9t+N7CAKXR+VjTLdfIy1E
	 3+usUuajXg5EJdEdODn76CSN0Tz+rYomkUmgWb+rdWN/m5BmtHZ1gXUxW9LbYctQkb
	 z6d7OcdM7OfOysrl/1pAbW4ujnFXW19ZbNo3lTCKr2IN1+9DJfiLIkJ3fwpadGjOeH
	 75GDa3rO+GnAw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pW4vHCxcE_UD; Thu, 24 Aug 2023 20:44:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 90CBB418E1;
	Thu, 24 Aug 2023 20:44:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 90CBB418E1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A743D1BF27E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 20:44:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8D74D8305A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 20:44:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8D74D8305A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i6gEQ0FBCYWR for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Aug 2023 20:44:40 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A085783026
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 20:44:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A085783026
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="460912545"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="460912545"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 13:44:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="714098902"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="714098902"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 24 Aug 2023 13:44:37 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 13:44:36 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 13:44:36 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 13:44:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PjlW8rAlbukaUKhaYtsFhk5vXDtb0yYiYAC4BOcaD+ovy408GeYIxq5iZ25DR/ckM3uDfq2tNCKhZkZJazITboWVgxT9TLM/k0XWND8sKobsKQ30kzO9T6C3PPX0AVazlaWaB7UL3UA7Olfp/OytZhmCqddV5K++uLlgxdACSw9FbXZzOvOLPa7CLAPUoFZv0w1a8IsBmXacXPELs48JOk1WNdyPniqbViWwIk+/QQH6R/MfeNOk+RHyJRn2rRS2HKxqBNfYKWCxmg6wawVsVVlYltLrd8I4/I9ig6OyfZG3M8B6vfuR+SXrKJwqBa683CSFWNR4WB8bA6Wr/QwJaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xbLV+G8T0/XZzB7+hZ/+yI6n0gGAfDLke0EYMvSEoZ4=;
 b=VBQR9EcqG7zU0ITCG06JbRwfFuiqSul55CluSIZAPpiondR1q3Is6qmVLwX6I3rTX/vLmochy8u3yEJS/RKgXltvIFQcK2ZXERxa6rBq47vKaEQeZ4adDFlY6qdnEHKo5CVscpuRoSbVrKhZEGNWXUf8dNuAF8Yb69g96hfphzLYad8VTslTFpaAZr7RNfdNpLkhfx/a9vDWsp8ncUnqJ+EyGoxam89ZtdSwsgVSe+Lxm3OsioI/jrCogdkVDF20fXVgrL8v40HxlDHOjWk6mxq14YsH75SIzIUuwRN+3DdBqvre+RW/PCic4fRtByiKLGG9U/kntuLfngxk2oCTPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by PH0PR11MB7422.namprd11.prod.outlook.com (2603:10b6:510:285::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 20:44:34 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::91f3:3879:b47d:a1c3]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::91f3:3879:b47d:a1c3%3]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 20:44:34 +0000
Message-ID: <9e3378aa-625a-b5c7-995e-75f532a16102@intel.com>
Date: Thu, 24 Aug 2023 13:44:30 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Junfeng Guo <junfeng.guo@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20230605024453.2378898-1-junfeng.guo@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230605024453.2378898-1-junfeng.guo@intel.com>
X-ClientProxiedBy: MW3PR05CA0004.namprd05.prod.outlook.com
 (2603:10b6:303:2b::9) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|PH0PR11MB7422:EE_
X-MS-Office365-Filtering-Correlation-Id: 64ed053e-9aac-4469-eda8-08dba4e2ec79
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Gkm0NPK07vS2VERLgH3PplY6HSrHgNT5S4M1p2w+U9XXvcIi/NhfxPUfuOSftlwhPe6YVZNa57J9hrKK8Ml7Zjo84xZhYTfAh0rQ4Z8VsRZBP7T9Dd8ye428iDlP9VajLOTk+FMSVU/sws8U+cxSSjsZjZy79D9YMi7/9VVd5S2N2Bn2gOZE/H0cFvDbmnDX0sEZaAvICwa79FhWH+gYRNjUO+n5gmdSttgxSHfmHovNpngczKTdVBGjFYJrT33/+PMBRVMsqDwJ2HdgPUPKMl1vr3ArHQVPMZFz7hWTM54rfTqdBw6kCeeUu44mMcDIP7w52eDz4Ut16A2BjQCcuQ1znjHdNlrhlcCoQfHYgmC6nuJyPhr5kCE+dst8016tDeLo3hHiMADjKHMYW0TdlPBBzYFMlAfJHa+CfzhhkMhNP3HcAwHUt94vCFe2uz/ly69xVkQzBwCKynw6Rj6b6M6qCQhb4EixFGRU8FIngWZSqhUOmFWrR55WC1BG+bD7EM1mE3qNTMK0DIcEnUTGOcX4tSjadsmp2K25woKZdlPanXJHcCq1vjlnCwB8Yg/BPYCafrIew8LnkXkjJLWcUMX9tiC/Xft2fg0QrXB7uRRDVmyAnZByO2DrjZovk9rUHkOKD2ILTk4rAeCAQ0vmMQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(396003)(366004)(136003)(346002)(186009)(1800799009)(451199024)(2616005)(5660300002)(107886003)(8936002)(4326008)(8676002)(36756003)(83380400001)(26005)(38100700002)(6666004)(82960400001)(66556008)(66946007)(66476007)(6506007)(316002)(478600001)(966005)(31686004)(53546011)(41300700001)(2906002)(6512007)(86362001)(6486002)(31696002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SVAvZld2ZkJObmJrZXUrZGNWZTRPNDVuWS9ESEhKK2JlRVNqUzR5RHdVaDVr?=
 =?utf-8?B?UVZLMGlKTnlxTGJiUFdEaC9lai9CaUd2S2w5Ymp5OGZqVVhteVR2ZTUvWnIw?=
 =?utf-8?B?ZjVmY3FMNCtnOElMOHdjUVlvRndqN0h1cDdvci9kWE1KbWN5aElYZDA5VmRj?=
 =?utf-8?B?bEk0RytiRktrQUZ6SXAvMHlWZExRWDlsNnlwSVRqcVpxZS9wTE1MZzRScm1Q?=
 =?utf-8?B?d2YwQy9KcnJWdENpNGl2NGdZam9MZC9xZ3dKZVIvMWhHbk5iVzQ2eksvaUtm?=
 =?utf-8?B?TFR1VU54dStmUlVqR2Rzc24zb29BNEJ6Ym9GSWJEaGNvVkRpUHVmNEN1bmhX?=
 =?utf-8?B?SW5oS2pSR2NFQW1hTnptMXNTY0pXUlZBNGloaVZ3aTMveG1lQ3VuUGRENVli?=
 =?utf-8?B?TlZEWHo4alVyYzVUcW5xZWpvMGZuQkxPd2t2bTduazZwOXVSTGJHSDFhdjE2?=
 =?utf-8?B?RnN1Z0RzbjZKdm1XMzdMSExMQzMvVmJ0U2xML0kxTlFkb0VYWUNaYUwwcUVP?=
 =?utf-8?B?ZkFEdnRiNmgrZ2pTVWRHeWlqd2ZQcVAvdlBLd2pPMDRDMnYvWmxRL2dQbWZJ?=
 =?utf-8?B?eVFLTjU0MnBkL1NUVnBBOTZTR3VFWURqekYyaTR4bFdnc2VDeXZ6OFlBajV6?=
 =?utf-8?B?T0syaHp5dE5XMFM1ekliWVRvbVVXMnl5SUxqaElhNlZMWHBlMjVkUDJUK1RH?=
 =?utf-8?B?N1dnUWFtOTZyc1A1Z3Nuam9JVWM2WmQ5Z1NNZjRwczJXZlEycis3Y1NWbjlF?=
 =?utf-8?B?a0xUUUtjNHhQU01Cb21QRWpsMVhVQmEwWVZoRTFRTUExZnpzSk45WStTZzVQ?=
 =?utf-8?B?N3hJZmVjOER1REFvdEpabWxrcDZJL2tqN1ZFNnRyZkFUT3p5QllvT0pqdnR4?=
 =?utf-8?B?TU82U1JmcmZiOUorNEVDUVBoZ3ZjSHFiY3lEanFpZXQyclljeWRBMjFyUWJl?=
 =?utf-8?B?Y0llMjJKQzhST2svRlFaVUx1MWpEMmdIZUkyZDBXVE9YbkhpcjhJNWtPd01p?=
 =?utf-8?B?SnEvMm53NWNyWHplSmJKTWJuMWtGMDBVbjc1ZTUvdjh5R1VwMW5sL1Z4L1p5?=
 =?utf-8?B?R0p4R1VDV3A3SmE1dWJHbFI5eWdaajhjRTZVd012bS8rYmZVdnRXWFNiNkl6?=
 =?utf-8?B?NlVnS0taZTVSc3ErekhqdDhQMS9tVkRDcDRSUDU4OHJ1L09UakF2RFZxRElu?=
 =?utf-8?B?ajNLVU5QTGsvSC94dGlXdEFoZUQwdm10Lzg3UWsyTmdrVnJrOTVHMmJvWk44?=
 =?utf-8?B?ZnlXV01uejlPY3dvVlF0RFRLR3kycTFCb0ZPWHprLzI2OWRQK0s4UlFXSmhn?=
 =?utf-8?B?WkFBUTRkVXhNMEU5SDJrWmhYQjJHYXQzL0pERW1OeDAvYXFZdEtFejlQakFh?=
 =?utf-8?B?VFVicDZFS0dJQ2xVWDhMTTFCUTRQZkpTN2NCUGd4ZUZjZmlLd3ZaUGx5ZDZr?=
 =?utf-8?B?dWRoemk2aURQbmc5NEU4SWZ3ZDZ6RGNURlI1dmR3MzA0RUt5L01scW9WaVJ4?=
 =?utf-8?B?dTBQR1dESEV3eVhLeHRwSEhqWmtHQTlKaTdreEhFbS9yZG1RQ1J4aGtWb1Vw?=
 =?utf-8?B?TisvbWZqdUE1MmJLLzZoSjh1TUZ0WTVRODhSK2trRHMzSW43QnRrYktlS1VD?=
 =?utf-8?B?QzVZV0tLS3RMdnJUemlETGZsMnFJT1VBU1FodGIyRVhWOFl2R3lsL2ZXb1JB?=
 =?utf-8?B?TzJNUndjandTVmNqUzVwOXlXVE5pcndlaldPZitPN2tiazlhL05LajNnelk0?=
 =?utf-8?B?QXgyWGZvMVNqRWxIRVh1SU1JUElTSVhWTWhHK3F1cUhIdXNKMExSSU9COGlw?=
 =?utf-8?B?VVcxa0tIdFAyNlVsQ2N4UE5EcjYrWjA3VThPUjNRMk1YanY5aVRvbVVRYnpi?=
 =?utf-8?B?Q2l6d2cyT05aTXp6ZzR1YXNGSk9MSTJ6elgzK1NOcEcyb1BiUHlrZlNJRzZW?=
 =?utf-8?B?ZWdrSE9NODRqSDdJU3A4d0x3RU1zL0h6STUyQXUvMDRBVTRTOHZKT2p5Q1R5?=
 =?utf-8?B?UVNxS1ZBQk1mNk5WdGFGNEpMOHhHRzJrWmlYV2tsdjdsYm9uV1lWQUxWOTh2?=
 =?utf-8?B?NHcyNlcrdzZEd05UYUhFQzBjUGVCaUtjMXFLSmEwZFVQQnZZbGorWnRlZXVh?=
 =?utf-8?B?NFBDMm5haEk5V1N1emd0b2RoaG5jcEtMWUFTQ0FJRUNoT1ptRmF4QllrQzU4?=
 =?utf-8?B?UEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 64ed053e-9aac-4469-eda8-08dba4e2ec79
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2023 20:44:34.2990 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aA4b+UDyPGv519d6UcPB8LPcl8j3E3mbHqqUMQU+V3NeI3IWmTii6tRr9PnQARXWomhzsAjwZ8ZR+BieqP2duVFxWquS5/cUkjUGb+d3Qd0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7422
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692909880; x=1724445880;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9ekMipcophOuhvEMC33hLx8Ds3qxfXWHBZCyiQ5nUeQ=;
 b=d9muumkayBo1rzR7mG696Qk/iAbcazHtRRWmmFO6usgS6hnGKij4m8VT
 c/DZMUo/uBiGustzwLye3BqjLnJY8Ceu+/Xfb6SPS9+QqDoau//0rCt/L
 RY/HEn6kaoSZbSyPS070oDDQldcRT0yzvrSOJSrdP2nDqB8YpwO7SwcqX
 DiQAEIy1DNXt0ZskVgFIsUCVCT8FoWy/OldMrw17/6cifRBKxSGM3df1t
 buNMxsNbDslr5B+7I19nLAZZy6O+Zt1JBX7lNVu1AE/0TDY9t6RlUOpni
 kFQmkoHuWn1cqad7xbgGdlrRq3yOibCGj2pC9CkxOsTuKrOc+OukbTaPi
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=d9muumka
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 0/3] Enable the raw flow
 filtering for FDIR
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
Cc: qi.z.zhang@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/4/2023 7:44 PM, Junfeng Guo wrote:
> This patch set provides a method for applications to send down
> training packets & masks (in binary) to the driver to do Flow
> Director (FDIR) filtering. Based on the Parser Library, these
> binary data would be used by the driver to figure out the infomations
> that are needed to create/destroy the FDIR rule in the FDIR stage.
> 
> With this patch set, the raw flow filtering for FDIR could be enabled
> to allow new flow offloading features to be supported without any
> driver changes (only need to update the Dynamic Device
> Personalization package).

Please do not send patches that are dependent on other code until they 
dependencies have been applied. Otherwise these can not be checked 
properly [1].

> Junfeng Guo (3):
>    virtchnl: support raw packet in protocol header
>    ice: add method to disable FDIR SWAP option
>    ice: enable Protocol Agnostic Flow Offloading FDIR
> 
>   .../net/ethernet/intel/ice/ice_flex_pipe.c    |  98 +++-
>   .../net/ethernet/intel/ice/ice_flex_pipe.h    |   5 +-
>   drivers/net/ethernet/intel/ice/ice_flow.c     | 109 ++++-
>   drivers/net/ethernet/intel/ice/ice_flow.h     |   5 +
>   drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   8 +
>   .../ethernet/intel/ice/ice_virtchnl_fdir.c    | 448 +++++++++++++++++-
>   include/linux/avf/virtchnl.h                  |  12 +-
>   7 files changed, 678 insertions(+), 7 deletions(-)

[1] 
https://lore.kernel.org/intel-wired-lan/202308232207.mbURs2VO-lkp@intel.com/

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
