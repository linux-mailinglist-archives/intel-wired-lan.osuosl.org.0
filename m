Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B3BF8D298E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 May 2024 02:45:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D25BD81FD8;
	Wed, 29 May 2024 00:44:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ndxWKQxtEE_L; Wed, 29 May 2024 00:44:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 20A7681FD4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716943497;
	bh=A2vkdKeDlhP3eAKsbRVI9y38ysKbZr/a4MiXLa+/ZyM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GPRW1Pvl/6OdmxZlmOk7nBEQ4uTNp7f1J3lBwl6AAyI67IA8h+rhl+g8SvS6HgJdi
	 7OgMW+liSVBzGS3A+ALBc5QWrnYawh8DV1C3vJgNMBUWonsObADMlgeOvwLhmAOTr1
	 lrH1euByGseNKcwMj4pUxGXi/HmN74ivxtb3iNsyUPxA5TicjzVKmXkS9y+2dlzf1f
	 KDmidy3nC9y/sYUAkrmocgOdjgnmSEb1jK6i9lwqeGumI/6HzShMxL8UKvKxvPfjXr
	 afUFcqWGbk8V5VpFQPbbN9E7OsqHipcmQrtXazsTUDGrpTxhG1H062RmweGdGZ92gR
	 jo2qJVbvjdd7A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 20A7681FD4;
	Wed, 29 May 2024 00:44:57 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8EA1B1D2F06
 for <intel-wired-lan@osuosl.org>; Wed, 29 May 2024 00:44:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 79DA4605FB
 for <intel-wired-lan@osuosl.org>; Wed, 29 May 2024 00:44:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EyP-NlM2N8UO for <intel-wired-lan@osuosl.org>;
 Wed, 29 May 2024 00:44:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C1194605A3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C1194605A3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C1194605A3
 for <intel-wired-lan@osuosl.org>; Wed, 29 May 2024 00:44:53 +0000 (UTC)
X-CSE-ConnectionGUID: ej9EGF+xTSy9q7dxD0o8tQ==
X-CSE-MsgGUID: G7a05n/qSCKdVIBIZsWapA==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13143875"
X-IronPort-AV: E=Sophos;i="6.08,197,1712646000"; d="scan'208";a="13143875"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 17:44:53 -0700
X-CSE-ConnectionGUID: XIXPuulxQYC65U+Jjudn3g==
X-CSE-MsgGUID: PiAR64ykTIqezfIQX4cDOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,197,1712646000"; d="scan'208";a="39772558"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 May 2024 17:44:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 17:44:52 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 17:44:52 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 28 May 2024 17:44:52 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 28 May 2024 17:44:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hidHPszEOlGVWGPme7gBHzuaTwrKMxzeqPoyfYo5Sd2eHOlZBnv0xPcLSSlcvjZpyPoOe+YFJtDII7Z7FQEqeuLiA98EQvQcyKvbsEC6tfc1qSbY4jEPIBXNlbPtFMWlDGlApRrLoYNkOANqDq+ZxDRfjgli8sMRgABsrUmxw2QoxTjw2+ArimCvN9JDHCXxQ2zLC6jwQ91BFPllX0DToXVunTlUSKI40Y4v0CCkNdCDUzbMaZv5yHtGZI42gCQx7buc89NBpOvy4v4dY/vZwXIVd8aBXakXVVNTVOHYK8ZV/cp9D/1jOngvq187VVO+Gi3t0b+rwEyjk0fK9bZTcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A2vkdKeDlhP3eAKsbRVI9y38ysKbZr/a4MiXLa+/ZyM=;
 b=N3L87O/i3HaOW9nuUeY+cd+z1dRGHFLCKShBRNh1qRpgde6mau2iDUDGzwD/iqzpRe+/Fc21cX6/WzwLNqIayD9eNkFGTBVRtkgyGyUJ3J7vw8VuEf6lLbOC158P577j7rTKVCG62Ks22GOyN22gThBLMJP5Znt7trb/CKJm/f97/N/eCU6NlgJiqZVdQvQw1oKb2/xVeedX/vOyLdT4mLaqtBKSWpbUDvgon9xXJypDgy4A032M25/8UfWq7TVq2ULNevPAhpDag9W/ZCpd3/M6QnZY/lA4Ulqfh6JJZDvmHU6JLA+WlbcP5tvntw2Tn6QCQTMiabXzoMQ6UeuCuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA0PR11MB4575.namprd11.prod.outlook.com (2603:10b6:806:9b::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.17; Wed, 29 May
 2024 00:44:50 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.7611.030; Wed, 29 May 2024
 00:44:50 +0000
Message-ID: <edc37e64-d147-4a61-9baf-745a865b7edb@intel.com>
Date: Tue, 28 May 2024 17:44:49 -0700
User-Agent: Mozilla Thunderbird
To: <intel-wired-lan@osuosl.org>
References: <20240528134846.148890-1-aleksander.lobakin@intel.com>
 <20240528134846.148890-7-aleksander.lobakin@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240528134846.148890-7-aleksander.lobakin@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0274.namprd03.prod.outlook.com
 (2603:10b6:303:b5::9) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA0PR11MB4575:EE_
X-MS-Office365-Filtering-Correlation-Id: 59f93c16-3a6b-4777-8797-08dc7f788bfa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MTBDVjZlOVk4bjVyMFozb0s3UVN3QUZqMFlvUkE3TWU3TTlHTmRJdG41dFlw?=
 =?utf-8?B?MnhUWDRkZXdnekVnWE9oQWU1RmhXb2d1V2JWOHQ1SFRndnR4QTh0OFdreGVs?=
 =?utf-8?B?N1V4bXpOK3hZNkNRY20wZ1E3RU5iQmNvYm51Vi9lK3FXVGNwOEJlQndhQXhh?=
 =?utf-8?B?cjVCNjJMNVVTUzA1RUQ3N3ZpaDh1V3A1dDlmR0FpeGFqaHFJZnY0STNOYkhk?=
 =?utf-8?B?VEwvd0xSRmZuL3Q2aUxIcDYzT0Uzc2ErK3JmZTdMWUpySktLZEUyRThqakN1?=
 =?utf-8?B?SjBPZFJwOStzdkMzZERhNngrMWpJTDJiTE04RlhDN1pFdVZtYWNWWlhvUEE3?=
 =?utf-8?B?Rk1xQUk1eEpLZVRiV0FheU5lVkR0eTFmNm5QeHlqZWU5dFdOZVFFb1NiaVdo?=
 =?utf-8?B?Z3ExZHlBVUxPSnVudUNyU1k1NzUzbjFhWlZrcnkveDlWcTQyZFUvdkwzbTNh?=
 =?utf-8?B?RHBSb2ZpMnB6ZDl4UWt6LzZCc29xbXZSWDZzSGlsK05uSHRCeU5rU3o1cFRS?=
 =?utf-8?B?cGdwRmp4Z0xRYlJJREdjczRZMzUyMVNGNHkzUVk2R2xCT2JTbzNzT3RBSjh1?=
 =?utf-8?B?ZmpIU0VUR2tWNC9ZRkswRGtEWEVKUUQ2Qkg2dDRiZEwzL1ZvMUl4TVhJQTVx?=
 =?utf-8?B?SUFEZTBDWmY1Wkc5a2R3TVlOanBFeU5lN3p5eUliam14aTFjK3hySWtTb3Jt?=
 =?utf-8?B?ZGNJMDhHTmVIdy9RMXFsL0V2cTZvcldrSTZrYVZCZ1piUnhNdTFLdlBjcVV6?=
 =?utf-8?B?Y3doV1B4bjQvMi9GVk92UWIyWE0vZHJGUTZZcUJXY0NaRUlHUzg2alptZ2dJ?=
 =?utf-8?B?Yzdwa3g4TDdwUzlXQzNHdXpVQ2pjcVR3SmJ0dmpwT0w3bThqcHZpOS9HY040?=
 =?utf-8?B?T0lKL3d6SC91ckhiSXhWMWNGdjE5QkRTUWc1Rnk1cm5vTW9SK0pBc2NZK2lw?=
 =?utf-8?B?MGJ0aVR1Q3FXdEFEUzR4ZjNWT25qQ0pQSzVxVi9vSG95RnhTRjhYUFZjeG9x?=
 =?utf-8?B?UGpiaVJSS2dTMGZWdnMxQnNzQ29uRjhUcTJOR3dZaTYzQjBJZkpiVldXbk9o?=
 =?utf-8?B?ZEprR3Rub3RnbG01SFloaTMrWUdUeXV5MjkrV1VIUjhHdDdpR0R4c3NWbnpZ?=
 =?utf-8?B?RzRnVm5ZSlpwdm53VVJFT3VYa3czVE13eFNPZmV2eUM1S1d3VHo5THVtdlZV?=
 =?utf-8?B?M0UvNDV4V1V2QVh6RGVZYm5kYUprRGFuVVdaVy80Q3RzVHJMWHdXSFdBeVVk?=
 =?utf-8?B?RXJ3NEh3aHh5a0Ntdjk1TWM5MUlXcnFJS3gxQ0dMU2FFdzRkMlpPVzdVd2xI?=
 =?utf-8?B?R1VpYWZyMUdFT1ZLZndRVXFHZms4ajdWQ0pBV2Z1T3orcHlJRjYvTHZQWFFi?=
 =?utf-8?B?dW0xaGtGU1RTZGJxbnNpZVcvUnp1c0lHbEU3MHR3eEx3dzFZZCtYVGlnSTV6?=
 =?utf-8?B?Zk1RcnVEZDhicUlUeGdkdDMyL2dDdEhnUmtLVXBGemdDNm9rRlZHQ24vTW5V?=
 =?utf-8?B?Y3gyeFFhNXl6d0dWSTVoUkw1cTdEbU5ucXIxckhmd2xOV3MxbDJqYkcxemlE?=
 =?utf-8?B?UlhsQ1dyZlM1Ym9uODBZS1VLNWxjVVpqUGJ4UDdxVmxnZzZ0MmZVSTRRZkhS?=
 =?utf-8?B?RnBzRWNhVG9hK0ZGVG1hblVVWGxSYjdRMmhiL096QnJwY01qbFIzRW5jMUN4?=
 =?utf-8?B?R1RPWTRHRllvNkRHOHR4UGtwVG5mYU5tQm9OdUFQY0lTSzVhRXZQUlpnPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y1pRZG1qUFVQeU5pUkVxVGNrVlg4YTFHdDJ5TDl2S0xaTEZjQ01Ba3JNbnBP?=
 =?utf-8?B?WnZQNXR0MUt5ZUswU2QwSVkrMFRpVXFXVnprQVZ6QlkrRkVYajFoeGxWOFNR?=
 =?utf-8?B?enJQOHJrZExET3UyYWd2SFRxYzhjcHlkajNpbERlT1RzeXkvS21OdmpWL2dh?=
 =?utf-8?B?ZWo2Zm5PTGo1NkhIMFZsS0RJZTJaUWVaWSs0RlBMVFI0M2hnL3I0Q3dEYUg2?=
 =?utf-8?B?QTExeGl4WnYzWlZIbzNDbXkzTTBYQVpkL2wvWkRQM29qVVhxRVQ4Y043WjdR?=
 =?utf-8?B?cGJ3dzdKKzdHa2thbDVMZ1lpeTdldzhnMXRIUExDbUI5ejQ0d3hyQ1I3Y2Nu?=
 =?utf-8?B?WGlaWlFIS3k1WlJQWk9ndEFRODA4NWZrWWEyT3hTOXFncTB4NXBFNFdLaDFF?=
 =?utf-8?B?ZGhOWkNETkM3bURBMm80aEd2b1dDaDB2MnROQnVvemwzVXFmeUlnZ05aKzNv?=
 =?utf-8?B?TGlXbVhGT3hxcW5ES0lnV0dBN0RycmxqOHhVNmhJVU02TlBQWEhTZGtkKzk4?=
 =?utf-8?B?NCs4d1FYaFdSUDZHT3BaeTVVZnlOY0N1T1Fxd2RBNHpQZG01LzRJRzFrWlRP?=
 =?utf-8?B?WHVUTnNoUGcyMVR6THZmWnJGMjBVTkhTOW5lbEVTejhzSkx1MWFxWW1Uemwz?=
 =?utf-8?B?cWxsYlJwKzRMU1NhTnZTUXdNT1FpQk1nMTNrcFIwdWlzd2I4akhDbFlaZHdx?=
 =?utf-8?B?R01BVHVyd0FGNzZnTHpZZ0tlTWM5RVF5eDY1ckMyb3YrKy9jeFIvam1oMXJo?=
 =?utf-8?B?RUdyWG5KczZSNjc0TWpyVDVYT3dYL29QWHk2VnlsUFlHNklyQzdXZnRnaGd5?=
 =?utf-8?B?OG15RVB5ZzNzT0x2Zyt5cnc1b3ZZejhiZVduRFdIV1BDMUV1NUprTEtuSEtI?=
 =?utf-8?B?MFlPUHRobENucFpLMkVLQVFTcFNrZkdHMFhuc0RJaGx5VTBERFBxbEFCdXk2?=
 =?utf-8?B?SHp2L09jdUZvY3FpMzIrYmg4NUF0MlRPaXpXUGxpMGpnUGFpVFlhWjV2dVZ3?=
 =?utf-8?B?b0x3a2VrSndsbGNDalJFa2kvWXIxRUphMHlzUFNTTWdOa2NpUHFDZkM4TnQ4?=
 =?utf-8?B?ZnR1cnBIM0FJTStvemVjWEtNbEJFQ29SOFo0YnY1d2FnVXpNcGhDUncxRXBx?=
 =?utf-8?B?ck1nb1JYY1BUU3VxLzBCSFFLYWxsYy9SL3JJaGhoWTByekloclB5RlJXZU9L?=
 =?utf-8?B?bXdVa0Y5QklFTjR1dmo1Qms1RVJYWVBOL2RzS082NE8xRVJleHJIaGNCWk16?=
 =?utf-8?B?OG9MMTFMK3dKeDU5N2tBK2R0Q1FVeHQzUEl0UVhsUmJucSt0MTB0NG11WDZR?=
 =?utf-8?B?dkZnbXVEc202TDJJY2VCUlg5L1FxSjE5d1d0S2sxTmtldDEzcnFTT3gzTnpo?=
 =?utf-8?B?MHVXbVBMaC9yN2I5V1kxaU1rSDFVamR3Y1RJb3M4aklZdGZaOGcrL3JDV3RG?=
 =?utf-8?B?MWpjSXc0dXE5aTR6Y1lLRzZuNzRCd3d6RzJ2QktuZkdRWTFWR3FyY2FPRXAx?=
 =?utf-8?B?Z2RDL2NYems3NnpNajczOS9KbXJaRTZFR3d6cllLSmowaVNWblRaZjhzSnJU?=
 =?utf-8?B?cUpRSlQvOWVOMldiQXdwWUNjcU5aRDNXQjAzY2ZzV0tSVWhqaDdiMjBJN3gr?=
 =?utf-8?B?ZFlGU1pLN20xVlAwZ3o5eGdyOG44dXFPTG9WeW5tMDVqdmM5TWVBRktVNnl6?=
 =?utf-8?B?SzlnSSt4aWY0emNqWjNWZndQKzZwRFZ0S2dEemRFNC9mSWMvQXRsT3M5MzRa?=
 =?utf-8?B?aEs4L1hPZnp6ZHZXSHJKbHZBRC9wQ0RyN2xzdXBJbHNFYzd2ZU5pd0JGWnkz?=
 =?utf-8?B?WkQ5VVYwYzNtbEVCeFJwazhTbGVid3h4cTdNRDVCczlkMmJHWHEzendNRXlj?=
 =?utf-8?B?YlY5WEtaS1EraGR3WGQvVHpXTnJleGhiVXZYU0RlUzFTenVJT0toM1hBV2VQ?=
 =?utf-8?B?SlR5UVF2cmV6c29xWklJQ3Zxa0ZoakhXZkxOU3RsT2RSL2NKMkJUU2ttYUV1?=
 =?utf-8?B?aFhhL3hvaFBWeERBd0t4ckVqOFAyYTlSQjJ5NVhTaGRQQ3FHTUFvcUNpTzQ5?=
 =?utf-8?B?M3Vtd1g4ODFZaWllL1JaM1pTTStLck1ubjNBTmprRlRmeFpsMW1DOWszUkp6?=
 =?utf-8?B?N2dSZmFNSVlEVUo3QmdoYkxQUldtN3liRWtGM0RQaldiUVpVZ1p0WDREaEJS?=
 =?utf-8?B?SHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 59f93c16-3a6b-4777-8797-08dc7f788bfa
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2024 00:44:50.1935 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bgwRZ0rL/cpKG+uYYYI+JYDSkCpeJsjGiCrjBR2NI2FC1tlxhMdv1YoM3+Z0wulzfq2S8tqos1qxCq6DBC3Rz74laCrA4gcnMfZMsL/ILP8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4575
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716943494; x=1748479494;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Xfsg/H0J2ZeAMoj07iseDPisSw+Hhn3UOGlDneOq8ds=;
 b=YBSM8s9PEUqj38NxHzOVFx0ilU3Qic+6mcF7PD486Z92AceMAdUeOTF4
 Ex0FPhtSswvYyMm6k0Kz83oqoDCpqUQhMLQ8JxSualW+vQUh9DGaxZTkW
 e7f+46zR8ZTwlb1QgpTzyia5Bs0VSNywVivRk0kgEQQyGs7/xOuxDJKRv
 n3+INMe++fVLw6tVDGVA4QX5a+6b1Wkf+xp1h4BWtxKzDlWnEB54IA4s+
 c1ezJ/k1FND3po8BFcLOaRx/y3Fr3a4XX1ur47rlusRwebbxcJYQdWX4e
 +qpayejUfKvV4pP1tnTCAVYOz9suSJZW70s2QC+z0b6ynKIQuD6ewr04P
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YBSM8s9P
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 06/12] idpf: merge singleq
 and splitq &net_device_ops
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
> It makes no sense to have a second &net_device_ops struct (800 bytes of
> rodata) with only one difference in .ndo_start_xmit, which can easily
> be just one `if`. This `if` is a drop in the ocean and you won't see
> any difference.
> Define unified idpf_xmit_start(). The preparation for sending is the
> same, just call either idpf_tx_splitq_frame() or idpf_tx_singleq_frame()
> depending on the active model to actually map and send the skb.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---

Makes sense.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
