Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 039509E5664
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Dec 2024 14:18:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B16CF414E4;
	Thu,  5 Dec 2024 13:18:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 47p6B5ycBZxF; Thu,  5 Dec 2024 13:18:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D1ED2414EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733404721;
	bh=YQrF8KGAZAONC91fOsfULYLshWTtzxu3PZMjwMBXfQI=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RmOpXXp/CMrm+db4D3QQkP3XO2Aod+XZF53onCTKLQz0H8UGPwxZDqClXg7t0nyvD
	 vb3xyqY5oDhSv1DRBwemJ8X8XfdrwullmAbztI/RlYZC+NYV+LRQ3GmSSEyroQ41fJ
	 jBn+cI0EftHVRgJzkyFehQPL3f7iBBiXb15lpHc+2zj9i8KMj/6t9DRfNGabrbKUao
	 McsCKUpFMo0pV8OeyEgqcO7M3vUlUaUyDZsArxNi7C+auL5O386myKXnTH5z542WBu
	 381wqenSFMbmZRGYLDZQTa8bBe/fDF11rpID8PZA5ZkhuAdOSDvfxlPc9xs3f5bWfG
	 alg+7e8BwzpGQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D1ED2414EB;
	Thu,  5 Dec 2024 13:18:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 46F301DD9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Dec 2024 13:18:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3493B414EB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Dec 2024 13:18:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O0b8LjFmpotT for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Dec 2024 13:18:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 159F3414E4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 159F3414E4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 159F3414E4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Dec 2024 13:18:38 +0000 (UTC)
X-CSE-ConnectionGUID: S6Ab3klQR+KFICVyN/yBww==
X-CSE-MsgGUID: E0brUF4QT4edIaWFmUxxPQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="33452335"
X-IronPort-AV: E=Sophos;i="6.12,210,1728975600"; d="scan'208";a="33452335"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2024 05:18:38 -0800
X-CSE-ConnectionGUID: t6+D2FpUS+WMVRuPbVASqA==
X-CSE-MsgGUID: vaRq/lDOR2KCjBx+9tJ4eQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,210,1728975600"; d="scan'208";a="117335895"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Dec 2024 05:18:38 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 5 Dec 2024 05:18:36 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 5 Dec 2024 05:18:36 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 5 Dec 2024 05:18:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Iiv+iBNy64DLAV59Cs44eblcQl8VaklNQwNhGjBCJsYp4S9vFN4Uiv8Is1C79H/ZA8d21E4pp0FXty5VtnVHc7UyGKQD5uZ7xTFukYAFOIVZ54rV15nVkF2xw1eaEBVCHMBPgPhfD1tOF4U8JjkxARN9fTjkuQrsZv+y5G8HZsPy/TJCncm76XgK0Tqulg2dqL+/mAMogQAaJ39WXpH2H/SbbUtsfNcpJ4M4JJhmrnQEnASpyiqPD8VtVR9I1bliAzcASQFNo2M7gh5Ir1y8hCUuX3tPTGOiVG68rP8I1H4Da9JNnI9RKGJoqssKl/uiOL7bpWu+9Sh1wUrBfhEe9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YQrF8KGAZAONC91fOsfULYLshWTtzxu3PZMjwMBXfQI=;
 b=GoMzfREXfLyZRjFv23KYn4t6BIackJ98DmAviuhxlvhmpvB4kx12ypW/U+D/5v5/Xw5MTNmEXvlqlHByKamV2AFh1yb10vyhnpw9rtYevyX0cq/KZVnLDOcDWm39MwX352kS1vK6kjAY18aAIgFYvK1tifpEVQuz+imkk7KPFxTL2w+SCyz4B7z/zt1pIqmfU8Nr4ZtjahS1iNa6uOSG9QYeuzm8D/E7kUhFCbhoPO1bMb9SUG9CjPHRU13xC216aUz7PvoyfAEM75kz3WNN863UANSW1AoWsoGZNXsaYz4bVZWm6eeYXjSmlHknWrPI+UUnR79+SNwrHJamyZdUWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5399.namprd11.prod.outlook.com (2603:10b6:208:318::12)
 by PH8PR11MB6562.namprd11.prod.outlook.com (2603:10b6:510:1c1::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.11; Thu, 5 Dec
 2024 13:18:09 +0000
Received: from BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b8f1:4502:e77d:e2dc]) by BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b8f1:4502:e77d:e2dc%5]) with mapi id 15.20.8230.010; Thu, 5 Dec 2024
 13:18:09 +0000
Message-ID: <ee75ce57-bcac-4e23-b35b-bbeff50cf460@intel.com>
Date: Thu, 5 Dec 2024 14:18:05 +0100
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>, "Marcin
 Szycik" <marcin.szycik@linux.intel.com>
References: <20241204150224.346606-1-mateusz.polchlopek@intel.com>
 <f684e517-19c5-4dd9-9de6-34aefe289552@molgen.mpg.de>
Content-Language: pl
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Organization: Intel
In-Reply-To: <f684e517-19c5-4dd9-9de6-34aefe289552@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: WA2P291CA0039.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::25) To BL1PR11MB5399.namprd11.prod.outlook.com
 (2603:10b6:208:318::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR11MB5399:EE_|PH8PR11MB6562:EE_
X-MS-Office365-Filtering-Correlation-Id: 26469128-3b58-412f-8996-08dd152f4341
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZkQ4Y2lYNWU0d0hnYXBGZzZzbXZjZjBKak55bGVRTlEzeWhsTS9PVW1jUmov?=
 =?utf-8?B?bDlIdzNacHFycnRhM3BNYmtHVEZQRHJMMW1KRCtkTDVzS3RCSnVMendiWS8r?=
 =?utf-8?B?UVRqRTg3L2UwZmIzMjc0bkdCeWJGQlpaOFNyeFJxN2VLcWdBVFFQcmNWSGJx?=
 =?utf-8?B?WlRNR2VTbys2MWlhV2JpQUV4MnozNVBZSGc1d3l2TU5uejVEV29pdFRXWlpu?=
 =?utf-8?B?cHpVWjJ6V0htSmpNOEFCa3QwczZNcnBHbjhQb1pBS2hRaW5TcitxcXQwYWNm?=
 =?utf-8?B?dU93bHlUWVhlMEN2K0s2cEZkN1VqWVlJS0dOQ1V5L25xNm1QS2dCTGtIY20y?=
 =?utf-8?B?RW1SeVc5S25haWpJZ3FUcHhBUDREa2lDQjVIc2hnK29rYTRHVGN0WjE0K3Js?=
 =?utf-8?B?bGozczUrVFF3aE45Tm5mNjZXQmJtTTlVWkhQUExWeG41alAyYWx3V2d6bXEr?=
 =?utf-8?B?NGtFM2JvbjlTL0ZoT1NQWlhuZHk4ODFWdUtSWExxZTVkR2NGZno4NVk4ZFVt?=
 =?utf-8?B?cEY0T0liU2tvNmIwZGRNV1UybEVnYWFScENIb2N5dGNoODlsbFE4R0pjbUEw?=
 =?utf-8?B?a3NXMmxwbXkzcGJqT2FZRUJJZzY4UVdWVnR6QU9NdWJseko2aFNpV2p6aWRU?=
 =?utf-8?B?ZkdRNHM0TjFPQXVNZFVTS2JNNGlrS3orRFFyUWxWTzNGTXlDZkpsOFRuR0pn?=
 =?utf-8?B?Tk8vT0RTemtXNkR1ZWVpUzZheEhiN0FOSkhSQk1ma1ZiMyt1THVTQi9OUHVN?=
 =?utf-8?B?N28wSDRmdkVHZTN6ZnVWOXp0NWtlaEswWE9kU3VtalRVSk1CYUF5RktsdFFi?=
 =?utf-8?B?dDU4SGsrVy9ibFFFU2VsM1g0dkdUb3JTd0dTbDg3UVNkaTRTRDVXZlc2Y1E4?=
 =?utf-8?B?R0ZIcFd1c0JtSStjNnJRWGtzbHlBMENzVW9YVFJHOHpobUNhWnNsN2dvaDhk?=
 =?utf-8?B?QVhVOE9aVzRPOElDbTFZS3RWdDVyOStudDlLMCtSWkV1OFJLSXZBMUplSHRO?=
 =?utf-8?B?ZWkyMSt1U2pHRGJzZzE2STNEdXA5ZkJKRnlzS1lSeXlteG1TMStwUDdJKzJ5?=
 =?utf-8?B?aHRDZTByNklvS1RLVDVFK1g1ZGVDaCtOQmh2YU1OblJ2U1ZnbVpJd0xmeXkw?=
 =?utf-8?B?b1l6Wk50QlJ5WmRKbk1WSmxtcmlIbkNBd0hNajQwSkhCNHdHaW5tblAyUytk?=
 =?utf-8?B?T2dvZlc1T1pCK003ZGs2Mk5YejYyL09qRFR4ZnoyWHd1cHp4VGs1b01LWTlE?=
 =?utf-8?B?eHVnVG0xZy96NmpDTzBqQnIvRkJoN1UwSjJPYWhXanlpSkpMTjRreThQVFEx?=
 =?utf-8?B?MTMxU1UyZnZKdGNyNkV0N3NpekRmRGVPd3ZNZDRBM1lLY283allKOFpOUTNz?=
 =?utf-8?B?emlFcDA2ZVcrNUY3M3VtdW9yS3lLQ293Y05MZzgzY25IZmFhYmozVnB1WW41?=
 =?utf-8?B?KzJobi9TbUlmdGlCaEZxVWJEQ2hRL3NpTG9rcjZ5aUNPWk5XcTBuYnZTek5x?=
 =?utf-8?B?YnFmM21zdEl0YlVmMkxpRDRRUTJ2dmNYYjlKRWVXa09tS21KNlBoTE9uV09M?=
 =?utf-8?B?b2wyTHNhZmduenh1dVdPTzdLTlREZlZvUytLTWdpaXFNWFJ3bDFQL2VsVjU0?=
 =?utf-8?B?MDJLdEs0Z2xOQVJCZXhoeHo2cmRvQ0d5N0VKZ1hZWFp1NFVXYWszZ28rSEhN?=
 =?utf-8?B?dVd5NkIvR1dCKzFZRFo5N0dPVlhzTkFVMlNzTENiZUpqd3p6MnA2NWVFdmZp?=
 =?utf-8?B?L1puaTVxcStnZ1VXRTFOeGJHRlRnU1MzS0JkR0wzTkwzbHQ2MUluemFBNmZD?=
 =?utf-8?B?R2VJNjN3RFdwYnZFS1k1Zz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5399.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c3VzWFRSOWs1U1FhcS9LSW5jV2M4Ymp2dnNiYjY2VGZYWHNPb2lTekx3eU5N?=
 =?utf-8?B?ZlBLVW5tUzJFNlhzekd5LzRBODB2ZDJmSnRMTUZYQzI0N3c4NytzQTJ3Rk1i?=
 =?utf-8?B?NFpMbWYxWjdTUzEvbHVFWWQ5OE5MZHJrUDJRUE1GSWlRRitRZjhGKzNYcFZw?=
 =?utf-8?B?aURYWWZTaHVhWFhKWnVUeDNIQjRPdXgzcHBDdlhlejBQeUVGK2FISzNlcFBO?=
 =?utf-8?B?a1Fxb2RlR2cxSWJpYjdzbEswNTJNWEsyZXBBMEg3RzRpSDY1MkhvVkZ5N1FG?=
 =?utf-8?B?WTk1bG01emN3blppTXduU1QxV0tXcXl4bnNabDR3R0V3YzhDcndJcWRuR1No?=
 =?utf-8?B?RG5aMmRYa0xTOXFiY3F2WkRvNnFQM2VQbXI4NU9JMkRoQWs3UkVid3lvL2VI?=
 =?utf-8?B?a1cxYThFRDEyMVY0MFFCTlRkc2NYMjdjZjNjYWpzM1FVTDlPd000czNJamFk?=
 =?utf-8?B?emdzdjdtS09kWlhqaTdHZ0NpQnJOZHdWMTBzSEphZEpMTXgxZUNhMUlCSmk1?=
 =?utf-8?B?ZFJyVTB6aGQ3eUVORkZFd1prdHZSY21hY3Yrbk9CZHVKWDlkdmtZSjJEbCtp?=
 =?utf-8?B?ck54ZFN3Ym9hdDBLSWFUeFFhVldxaUJsY1FZbXJ5MWNXMFpGWlpNWXQvTko4?=
 =?utf-8?B?MGM4TXlRaXdPc3p0Z2UvYlQ3d0ovTjc3WDlYc2NOYUsxTnIzaEZZOVNmRlU4?=
 =?utf-8?B?blVjLzZWaGtzQWFiMXhvSE1zekFGWGduZ3FMZUdNVEN5dW5nU21ITjUwWHBo?=
 =?utf-8?B?UW9GVUJ0am5ya3NXYTBaSU1KTEtvUWdtNnhLS1BlRjlTcWJmYVBhTUtQcnZZ?=
 =?utf-8?B?WFhaNkFwYkRyOUZ6RTlmd3ljczl5M3FPNlI0elU0bFdlck5kYTIzMEM5WUZE?=
 =?utf-8?B?cTZZSmhYRXVlZmo5ZGs2dGFJazBBVTZvVmV2bkQzSW9nbmtDMll5SEo0c1Vi?=
 =?utf-8?B?d3ZsS0NrdVpySjNHdmVuT3EvWUlaTm81TmhENDRtRHMrS1BxZmd6c1VQbXF6?=
 =?utf-8?B?YUtNaE9XZjVFREplM3hjU0JDc1RvQmdqeTV5K0J3RzhONHlJYVR6ZGlLTTE5?=
 =?utf-8?B?biszSVRZU3pGdXYxNzJPeVJ4bFBjazd1cXJlRDdoZWpxS3RtblBKUUVpZFdz?=
 =?utf-8?B?V0NQMU9jM3hUNjJVUDdiTUNZc2RzL2U0Z2lhSHYwVUNiNjVSaGt0cXYzeVhy?=
 =?utf-8?B?aXFBTFFlU05NdkMrWWRkcFJWQ1R2cjVoaGFoQ2dVY29hYzlFWTFIcWxweDU5?=
 =?utf-8?B?dlFHZzZtK0plSGkzeUJTd0hZanM4cWlhdU8xdFJBcm9XbDZMZW5rY0VOY3hS?=
 =?utf-8?B?TXpoWFl5MTJTN3E3QWVad2ovd3JUUXByZEgvMEZjMzU0cmM4RFFvMGozWDRB?=
 =?utf-8?B?ejRtL3RrdXU0UTdPczZodWdBcFM3ZU9HUnhCbHVpOW1VdXVzVmpzQ2QreVBM?=
 =?utf-8?B?b3NIcE0wUHEraThnUU9rejRUdTd6OEEwdnFnYU9QRkluS1M3UDVPKy9TcE01?=
 =?utf-8?B?UEtFU3k1cXUveXdjRi91N1BxZlY2b1dhSDlFWUY1Yzk2VjByYzdMNklZY1l4?=
 =?utf-8?B?Z1JVSFNmcm5QL05KVTVXZ1hVQ3BBL052cGdzTGZvL3dZelhpSHYwVitVL3R3?=
 =?utf-8?B?SVJaU2g0aU8vTVdjYmNjWGUrVm5oMGlyRm05d0FFOTY1Y0pnM0pSTnFXMTc2?=
 =?utf-8?B?emdIbnR2TzFvY1JMeTI0VVJKclhOaGQ4ZmJRWEtuUUpWcVpNL3EyV0lJN2xO?=
 =?utf-8?B?d042b2xkanduZnlWZTNLSUsyOEoxeEJMRW14c2RRRzlwZlFYNDVxTi91SGNN?=
 =?utf-8?B?UmUvY2RaZkpCK25peWxsN2F5enJxRXpnYUNQZGpQVnFTNW4rN25XNG0vZWxP?=
 =?utf-8?B?ajRGMFlmaWU4WHUwQTdOTVo1WFRiV05Dc2IyUkRYd0JTM3gveVYvbXI2Nlpj?=
 =?utf-8?B?SUQza1ltZmVHcEU0VUt0N3Y2SG0zeEh3d1FQSmwxMGZVUFY5NzZ5VUtlOFg0?=
 =?utf-8?B?ZHdLaGt6dm5tWG9kZUJ1d3ltUHp1RzdKUzJnSG9WUEJUeVgyWlhnNTVRWXpI?=
 =?utf-8?B?d0VDVDVhK1NMcHRUZzZkS0FVNGJVSWhGMkEzMFZyLzkvVjhPQ2pzdHhBQ0dv?=
 =?utf-8?B?U0hlbnZ6ckQ5eVNaVGJvcVU2OThNdHU0OEZlbjlZRnErbmNidWxsbDJtamtG?=
 =?utf-8?B?UUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 26469128-3b58-412f-8996-08dd152f4341
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5399.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2024 13:18:09.4865 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: s0AFi1t5OIJd1yZQU8yvmzNGHvPOYxGiG3U/eiZ16i6j7LkzL5Eo3Q3vXinMgj4hCB/sELi0Zcz1YpKNicwxKGo2kqe7NgTNjHsQCCu65fU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6562
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733404720; x=1764940720;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=z9a+z3V/MMRd5NnQxutHsrNS/IQk7G5dSzE52hTrrLI=;
 b=TUozS3vOjptcfQ6QO0shCgmQ4fH4ycfbceiQvO8tw3POvisDsrmRj3uZ
 lKo5TNo3TDWGe1ppQl0uzZrB7cw2rsKN/9exJ5H86+0f6VDQB2ph4ZL9y
 6nTlyKbSbd+V+HBvus0buRQn9AFWorYIJuzl5oNWRadzQ3bANfhzZ4GjJ
 8lXS55/wyy8mIsEXUtUJjE5En+EKvS8bsO5WOwHq0eeOcVi7qhpfOjAAy
 WAaX8HUu+CwaiZdcdG5ROxD/rE+/nKVa8WfGmlK4a9vnBgVHkfTMVc85r
 KgtqCetQJ7uujrTR7OeHeh7Jsr3Q5lVQTTwXvr7/4PKQGdMi4Ms0Hf2l1
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TUozS3vO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: move static_assert to
 declaration section
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



On 12/4/2024 4:05 PM, Paul Menzel wrote:
> Dear Mateusz,
> 
> 
> Thank you for the patch.
> 
> Am 04.12.24 um 16:02 schrieb Mateusz Polchlopek:
>> static_assert() needs to be placed in the declaration section,
>> so move it there in ice_cfg_tx_topo() function.
>>
>> Current code causes following warnings on some gcc versions:
> 
> Please list the versions you know of.
> 

Sure, in next version I will add the info.

>> error: ISO C90 forbids mixed declarations and code
>> [-Werror=declaration-after-statement]
> 
> The above could be in one line, as it’s pasted.
> 

Okay, it will be fixed in v2

>> Fixes: c188afdc3611 ("ice: fix memleak in ice_init_tx_topology()")
>> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
>> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>> ---
>>   drivers/net/ethernet/intel/ice/ice_ddp.c | 3 ++-
>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ 
>> ethernet/intel/ice/ice_ddp.c
>> index 69d5b1a28491..e885f84520ba 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_ddp.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
>> @@ -2388,6 +2388,8 @@ int ice_cfg_tx_topo(struct ice_hw *hw, const 
>> void *buf, u32 len)
>>       int status;
>>       u8 flags;
>> +    static_assert(ICE_PKG_BUF_SIZE == ICE_AQ_MAX_BUF_LEN);
>> +
>>       if (!buf || !len)
>>           return -EINVAL;
>> @@ -2482,7 +2484,6 @@ int ice_cfg_tx_topo(struct ice_hw *hw, const 
>> void *buf, u32 len)
>>       }
>>       /* Get the new topology buffer, reuse current topo copy mem */
>> -    static_assert(ICE_PKG_BUF_SIZE == ICE_AQ_MAX_BUF_LEN);
>>       new_topo = topo;
>>       memcpy(new_topo, (u8 *)section + offset, size);
> 
> The diff looks good.
> 
> 
> Kind regards,
> 
> Paul

Thanks Paul for review!

BR

