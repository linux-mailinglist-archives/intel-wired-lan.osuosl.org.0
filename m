Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC933688528
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Feb 2023 18:14:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 613EF40FE4;
	Thu,  2 Feb 2023 17:14:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 613EF40FE4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675358068;
	bh=05cvvHMmWv04mB9luZfD10Qlvk602tr5wl+xsIleuQg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kHDSH+vrvxaAb+pfzUo1MxiRG9fP8yUGvNsarSaJcZEuN7n/xekQTdZgSyqE2MLOw
	 VjEFRxllWn5Pa6zaxtFIXz1ZKDWcGBioJlG8BVE7x75EVKvRL+DvCSh1FkHyBt2kBF
	 luXPF23SVWiIdzIalCRzV1/tRFnYNcOeWSxxr7KmJydtjlfygT++V/lWZ1dJsN0xtR
	 /l7MbMoXpzF24YOA1Vi1aF2ds9z3Ncvl0IFE5cOBkoq7nczelVsB3feIxUhFypjBcr
	 13McPf9VvR3G8WdRVtqrysI8Tnba2RVvL9fUqxhVfa30zHYKBttUqVHnnttUWJoMNv
	 vYQoSkT41UJbg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DMQWpr88sYeu; Thu,  2 Feb 2023 17:14:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 49C9040C82;
	Thu,  2 Feb 2023 17:14:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 49C9040C82
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 379A01BF2FB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Feb 2023 17:14:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1B40341C97
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Feb 2023 17:14:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1B40341C97
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NVIzpew7kiIB for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Feb 2023 17:14:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C37F741C10
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C37F741C10
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Feb 2023 17:14:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="316499892"
X-IronPort-AV: E=Sophos;i="5.97,268,1669104000"; d="scan'208";a="316499892"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 09:11:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="754127539"
X-IronPort-AV: E=Sophos;i="5.97,268,1669104000"; d="scan'208";a="754127539"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 02 Feb 2023 09:11:04 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 2 Feb 2023 09:11:03 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 2 Feb 2023 09:11:03 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 2 Feb 2023 09:11:03 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 2 Feb 2023 09:11:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NRo9J7UaZfbgmozWhCbISmLVsagBoW/333WwArUbbnKhid0uZzSLuLXq2vuIBWMz00aoqWZ7u0lg8VCbTrJfjZtuUFoJuA6p7jGAiY02/V9eJseFg5TEKEWXzmw+2bV4I/zDWwh1OYFbUNgvHNwSylU51QfGy3dJFSLEpocBmoghGQUGTN/WvrWFOUhWyM8dz+XiSwYhwXCB3DwLbHTu+O1KsyDMbODI23lnSKuXs/hPCnt0WOFS/wCq5k/GPDRK55c2F37368DS9RqDLbkGPPsY2G33Pud83fsn27oFwrBmkRnfCTZZZazHOi/Mpnw62iu/Xrxyb4c0FhS4G783yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0dcA6YV0+x0krsCV4vt8DkKNdJIFZ/8lLmSUIHbVLaU=;
 b=LMrAp9pdODxHYjDYRttqq4MRwtOxqLFCkV0M9g5ni4fQjcYpcz2mvNoVBGhplPZyEUTMNOpCRjKMiqEpuKGmfV1JbG5DPGTHgB6rwkQmJM0dT15DwlQJX4MhCB191R5SWUwgLqbAWZ4LIWmnqNrYYx4ppsekpcTiF7Lq0CmRyMRHXZmMYMlFcxJiYnkt2WcefvDffPUUhaSJwpdeb7uY0VJ6u2AzaEezVP2rMoUglSL4L/dTKJClFKPkUZpo71uUM4lEceyXksQb+qrq4LpmgvMjw+WT495i+5TRYh2dDvWJXqiclTmQ7kV1s+EclOu4IFgyoOxd5K1C6IlKlod8iQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by CY8PR11MB7196.namprd11.prod.outlook.com (2603:10b6:930:94::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.38; Thu, 2 Feb
 2023 17:11:00 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed%4]) with mapi id 15.20.6064.023; Thu, 2 Feb 2023
 17:11:00 +0000
Message-ID: <7654b674-1589-8e1f-338e-4556dc716f48@intel.com>
Date: Thu, 2 Feb 2023 09:10:57 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Miroslav Lichvar <mlichvar@redhat.com>, <intel-wired-lan@lists.osuosl.org>
References: <20230201143643.2624559-1-mlichvar@redhat.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230201143643.2624559-1-mlichvar@redhat.com>
X-ClientProxiedBy: BYAPR03CA0013.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::26) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|CY8PR11MB7196:EE_
X-MS-Office365-Filtering-Correlation-Id: b48ef6c1-8b0a-41ae-354e-08db054074b6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bLMuzmHLV+GQkW5ijth3dtkL/62DfkDFDIpb3+xFxGaYxI31tdDqMraHOK2t635e5ZKneEGxYo365SF5NyZOTHxM6V81ABvv2EdVEkjvdWa1OzRfoDSHMfrbhCTGKwfdbSqGcM29yRSoOLfaqo4Ye8dO9uf3rgHqn+JBVp7c8KYO2Qkj6SQra2MTwUzBdpKUdnaf4TWc1N3zoGBdrxXQn4fT0nr2cRJKjkD2ZaIxPDookGyAxn6VMlSTSJue/miXZxY6IoiqEctkn6w4WtODJbBgrBmZIF02ROka7P6J/Q8LGuCXxRVvhnnHingVt9qwZ366Ha1+R9tLAW1uHskZjL566FpWZ3YZDDo7DWpndSZCrrMfY5zIsAPuMaMu0SEEkqx9pN7+G/i93NlcFreZehQCV3ZB57bJpdGM32xXvoRIsPQ9WhchVAd5Yc3xD80yB/JJv/HRs8kBDcAvrVtpPKKo/8x929Ddo/QcVxBs/mOPM4qXHw93eFzBQbMiiYF8yGV73gHQW+UTKDk+9bdLmELZf7zv5eMM9WNUAZJ9eOx8wbNAzLJuw+tjhJodpLRDr2lXuHcYjPRJpWROYLZ7Ek8oSEiLzANXUkcePVjawlMluEr+Ko+Xp/KKmuTGzsSLH2oj4tHR/qB7fxoeeSJNcwkR5WRiTAhLEWW/aGEGFK2JB1hEvZorNf3pizoL5O+2HqcIesoIUgifAJIiKBILpTCbo5HYPl/6DzDnorNg6fo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(396003)(366004)(376002)(39860400002)(346002)(451199018)(36756003)(31696002)(8676002)(6666004)(316002)(66946007)(6506007)(53546011)(66476007)(5660300002)(478600001)(2906002)(4326008)(66556008)(86362001)(8936002)(6486002)(41300700001)(2616005)(6512007)(26005)(186003)(38100700002)(82960400001)(83380400001)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cTEvekJGd1kzNzFwRDZ2ZWRqUitvYUwwcVJSR00zVGZXckMyckNjZUNhY05E?=
 =?utf-8?B?aEFCMkJlODc1WmNINFhjNjZ6d0djSG56bnRJdmZLOFpTNWtaSlNoYjRnOEtW?=
 =?utf-8?B?SnNUdFV5MVExVGZKL1NnU3lDYU1sakQ1RHN3RnNYK2xjS1RnSU5MQzNTZTRE?=
 =?utf-8?B?amVwZ2FIV2Y1b1FjNFQ3YkcwUjJURE01TjBzSnh5dm1mQWloZ096TUt4dDUv?=
 =?utf-8?B?bzdaZ3NkMXV1OUswV3NDemY4Z29aZkJ5b1BqNkdrenE4a2RUb29jRGROMUhW?=
 =?utf-8?B?aFZrRWtLL1hpRWdjQ24yQTdzNTB6ZWlPcDJvclNqS1FxSUxXbHdtL1I1b0dX?=
 =?utf-8?B?RmhFUkQ1VkNZbWdiUEd3bzJJaDJrZ0FkaHd5WHZNL1hqZ3c3bGlXUXQ0NGVm?=
 =?utf-8?B?dGRmRDRvcUcva3hLdFhvbUd3eU55blcrY1VSZjk1OFdkOFJFZVhKbHVPcTBr?=
 =?utf-8?B?WFZiNW5JQWFpWmROWnQvblBPK1ZZdUU3ZzBsUVdVRFo5cmhwcnNnNjhaM3lz?=
 =?utf-8?B?cVNXakh4dldxaU96MlpjMjZ2NkFpc2o1RzViV0diRlZCVnR2OFFBSFFQTXZr?=
 =?utf-8?B?ODRlZ0dvYm1YdEIveEVGSlhxUDdPcmlIVGU1c3VqdTU5Rjhlc0V2KzBjSk8x?=
 =?utf-8?B?Q2dCR1dWTWlyZ0Q0S1hjaGFQQzlGRnVINEc1TVZGZ0Z0cCtRZ2pPV0VXa2RV?=
 =?utf-8?B?SDRkb3BYK3B5UUhuYXNrNWk4ZlFqQmZtcTBEMjdyR3RpMlpDRDlyZUN5QmZk?=
 =?utf-8?B?S2lRYnV4QWlmQW1sOGJrQXZNNnNId0NMTTgzeHY0RWtUUjRDblhGYzVLWGNZ?=
 =?utf-8?B?eVdBTTJHS20wRDA0bit4T1ptb25abDBiR3BxNXFpV2kwdktFWWFNRUZpZU44?=
 =?utf-8?B?NCtaelB1MmJjby8zOVNwQUNHYU5KQmQ1ZHBqS0pTY3VzRlRBOVpHdHgyMEwr?=
 =?utf-8?B?eEtpcm96TGJxOHBXemZEaXhtcXVYcm04amZPbzFwSkFOKytXVHZIYWppL081?=
 =?utf-8?B?cU9EZy9JQWVaVlh6NDhROXJMVGZHRXJNNXFldWF6WS9TQm5IbEUvazVJeTZp?=
 =?utf-8?B?OUlWWmRBWU9wdWhEMWY5alBvUk9WLzQ3eEo0V2J1dStNWDhjb0dQejFDMERN?=
 =?utf-8?B?QU1BU2c1WWF4dkZsb2tVN3ljUzQyNmE4aTFRY0ZiTWt6b00wemtxV2tSNFhl?=
 =?utf-8?B?TGY5S1JYTm5mQUZTcGJlaU9NUjd5M2NkRC9TcCtXY2pydTh1MithRjhFNUZ1?=
 =?utf-8?B?alVIcjlBaENOZi9uTXQrV09LZG9qTmVGTlVvZDdMQkI4M0RoRHFrZ1I5TW54?=
 =?utf-8?B?QzIzcS9hK2V6UE5odHNKTVVLUTlrZ2RnM2JndVZKaldTaTQzOTluWkZPcHNo?=
 =?utf-8?B?V0d2SHl5Q0daa3JsOUFBa2o0aTBmc3Z1QzV6Z29HakN5Y04zeDUwMlFFbkg3?=
 =?utf-8?B?YkFSY0s4YTJGajg1RUNJZllvRjhyc2VLSzBISW40bFNzLzUvb2dCYnVjOEJn?=
 =?utf-8?B?dWF3ZDg3MjZZelZyL3RiZ09kWm5HVGJmQnRXZnJVU1docy9BbGQ1R0NNWFJE?=
 =?utf-8?B?Y0w0NjBROGpCT3dUQ2hlZFRNdXJIRk5WNHNLK2Y0SGpyR3UraHk4UUFFNGkx?=
 =?utf-8?B?L2MzSTVNNkdjOG0yM2pBc2RHQnIvZEh2YjdSUUtiVi9jNk9LWUFqYS9sdzdt?=
 =?utf-8?B?TitUS3ltcFhiUy83V3UyN3pGZlErbFBsWkxoVmdOUTNIMkJoZSs0Wnl0eDhm?=
 =?utf-8?B?ajd2NFdTaGpCZWdzM1RKRXVzNXJ5dGhldC9ldXE1b1ZPTmI4b2lnZkNRY3Fy?=
 =?utf-8?B?c3ltV2gzNTJkZzhJVU00dWlaQVMrUlNTZ05tazFwd1FEd0FLU0k3NmplemZz?=
 =?utf-8?B?Q1FOQksvcE9FOTErMSs0dlpaTmU4L29vWmRPU2dVVW5YNUdOQVhVcmhtNEwz?=
 =?utf-8?B?RzIwcER0aHhsUUdEbkVUbWFwckV2ZVpYNDVKYzNqbUVSejZuaUdOT1BGSW9w?=
 =?utf-8?B?bGM4emFrb2VGQ3pkWTFSWkJtY3dYQU1CeEE3K2FKYms3UDA1bjNER0dyUjFD?=
 =?utf-8?B?TW1YZDRCa2dJSWxrUThPZmNCeDZZRTY5aWhGMFZlVE1Nd3R0RFFHYVFVeENE?=
 =?utf-8?B?WXh1UFgrZ0JvVmVOTjRJWnFDYm9HdDFNc29wUHJaZjZoUUo5V3l6RVhVc3M4?=
 =?utf-8?B?SHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b48ef6c1-8b0a-41ae-354e-08db054074b6
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2023 17:10:59.9388 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: T6ui8RGToDU6xMnYpVFez1AJDZH6HDnt1HWzgri/i9gwMp63dpgANuDPkTKvjYc0OLXWWSimvNNUuVVm0NQfBNLTCpXu2o4kmhzmWgw4SnY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7196
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675358059; x=1706894059;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PWGvLCTTSUycarq3jwjN+xIwB2pAWawZH3BTZF4rxRo=;
 b=S8zlCjafRciiQHf9RXNjH5Jnu6kxMbr7BUf3xgh3Jc8AzUxvo8IRwHQ4
 m9+qZtENBLgRwRVpKnwbuSLosf86eKTmKU9vtH9+J9jPgCpHVd45h7Oy5
 hsbliYvZPTX6+sQpF8vARNepaqtSUjANiWby8p3Vc5hc/Q+NmAlez3Uw8
 b1xDAFUdM74qvRixEt8sLjQkz0idN4mtqN4A5TsQBxtJgS0g2OYR7fVbr
 KCWnhGeTAfV4+UkOU2Z/tiCNImQqLlgIN79mtu8pztFXjxUJscIvoojA1
 ZUYcvs8X6j89fn5A1Qi02xdHCqDJfW0J8raqYqZBwRAktZkhysDzVdD1i
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=S8zlCjaf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] igb: Fix PPS input and
 output using 3rd and 4th SDP
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
Cc: Matt Corallo <ntp-lists@mattcorallo.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/1/2023 6:36 AM, Miroslav Lichvar wrote:
> Fix handling of the tsync interrupt to compare the pin number with
> IGB_N_SDP instead of IGB_N_EXTTS/IGB_N_PEROUT and fix the indexing to
> the perout array.
> 
> Fixes: cf99c1dd7b77 ("igb: move PEROUT and EXTTS isr logic to separate functions")
> Reported-by: Matt Corallo <ntp-lists@mattcorallo.com>

This is marked for net-next but with the fixes and reported-by, should 
this be net?

Thanks,
Tony

> Cc: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Miroslav Lichvar <mlichvar@redhat.com>
> ---
> The fix of PPS output was not tested.
> 
>   drivers/net/ethernet/intel/igb/igb_main.c | 12 ++++++------
>   1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index c56b991fa610..04f06b396e92 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -6789,7 +6789,7 @@ static void igb_perout(struct igb_adapter *adapter, int tsintr_tt)
>   	struct timespec64 ts;
>   	u32 tsauxc;
>   
> -	if (pin < 0 || pin >= IGB_N_PEROUT)
> +	if (pin < 0 || pin >= IGB_N_SDP)
>   		return;
>   
>   	spin_lock(&adapter->tmreg_lock);
> @@ -6797,7 +6797,7 @@ static void igb_perout(struct igb_adapter *adapter, int tsintr_tt)
>   	if (hw->mac.type == e1000_82580 ||
>   	    hw->mac.type == e1000_i354 ||
>   	    hw->mac.type == e1000_i350) {
> -		s64 ns = timespec64_to_ns(&adapter->perout[pin].period);
> +		s64 ns = timespec64_to_ns(&adapter->perout[tsintr_tt].period);
>   		u32 systiml, systimh, level_mask, level, rem;
>   		u64 systim, now;
>   
> @@ -6845,8 +6845,8 @@ static void igb_perout(struct igb_adapter *adapter, int tsintr_tt)
>   		ts.tv_nsec = (u32)systim;
>   		ts.tv_sec  = ((u32)(systim >> 32)) & 0xFF;
>   	} else {
> -		ts = timespec64_add(adapter->perout[pin].start,
> -				    adapter->perout[pin].period);
> +		ts = timespec64_add(adapter->perout[tsintr_tt].start,
> +				    adapter->perout[tsintr_tt].period);
>   	}
>   
>   	/* u32 conversion of tv_sec is safe until y2106 */
> @@ -6855,7 +6855,7 @@ static void igb_perout(struct igb_adapter *adapter, int tsintr_tt)
>   	tsauxc = rd32(E1000_TSAUXC);
>   	tsauxc |= TSAUXC_EN_TT0;
>   	wr32(E1000_TSAUXC, tsauxc);
> -	adapter->perout[pin].start = ts;
> +	adapter->perout[tsintr_tt].start = ts;
>   
>   	spin_unlock(&adapter->tmreg_lock);
>   }
> @@ -6869,7 +6869,7 @@ static void igb_extts(struct igb_adapter *adapter, int tsintr_tt)
>   	struct ptp_clock_event event;
>   	struct timespec64 ts;
>   
> -	if (pin < 0 || pin >= IGB_N_EXTTS)
> +	if (pin < 0 || pin >= IGB_N_SDP)
>   		return;
>   
>   	if (hw->mac.type == e1000_82580 ||
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
