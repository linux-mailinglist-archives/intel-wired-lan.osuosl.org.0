Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3999C8A8FBC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 01:57:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 85E5081E87;
	Wed, 17 Apr 2024 23:57:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8hTG-Zs6jgJ0; Wed, 17 Apr 2024 23:57:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AD75781E89
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713398254;
	bh=fw1u21ucMcjBe6kFAQG2mhKOtX1QprkN3iDRh3h8RCo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jcqAgRARRDkE0mRZhgdJxZe1cDV+1acAqyE8uOP8A1riCQrID5lA4NDhGKxz7XQ0Z
	 cPy3UfIEMqH8xh+HTTWUMv2HTgHO/xQ9Sxh3XPQmOuDtfGHVS06bpuFBjMQukDyIhI
	 q6Kk6ngYHU0tX0q0/B2ziMYeWffcUT7R1hw2bUcroJQgkJnty+/sOd+tXnoks4ZmVr
	 SJ3wknW7umIn9ecBs4AZCSXRV/w6uttJU8jKB9uKaPEVr78bLouFlOW05LbYsCyeNS
	 hPcqalCY2FpfcKL2BJY4eluOoz1ND2pGQbq+SQ6rtQGrFK82XC0SLEeuEDCQTMHpVv
	 aeTFsM7hjMNpQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AD75781E89;
	Wed, 17 Apr 2024 23:57:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 58C8A1BF20D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Apr 2024 23:57:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 43C63608B8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Apr 2024 23:57:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WZBXWo_exesz for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Apr 2024 23:57:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B70126089D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B70126089D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B70126089D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Apr 2024 23:57:30 +0000 (UTC)
X-CSE-ConnectionGUID: MK41s4OYS0qTD1OTpSGPSQ==
X-CSE-MsgGUID: quPAD2yCQxGzo0mJ6IkgNQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="8782842"
X-IronPort-AV: E=Sophos;i="6.07,210,1708416000"; 
   d="scan'208";a="8782842"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 16:57:30 -0700
X-CSE-ConnectionGUID: vM9wcpF4THmNPk0j+7cqfA==
X-CSE-MsgGUID: K/pSgSIISROafSv+llQtAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,210,1708416000"; d="scan'208";a="23224135"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Apr 2024 16:57:29 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 17 Apr 2024 16:57:29 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 17 Apr 2024 16:57:28 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 17 Apr 2024 16:57:28 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 17 Apr 2024 16:57:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DOfzPbzHFiYyAoJ3P06Gd7KeMTBw2w/CNtaBTL/PNIqFCaYnXbGvr7SWLH7LBTpisfAwxOoVXRh69rCYpiZErUKAGmO8elUobG6nunKvVDBTnr9jndiqomS0/0WeeGduShjm+DsM0aUh+PNWYkVRPkvp9j8LhIeApsPQhemoVeSb0DQYvhd2od2MEphVvy9ocPEA8P8awrRiQeGB9HWHxNlwdG9rwyNG4//3Rxb3w23hapqy/SF0im3SkorvbhEKvQILqLpfLHcTU2wlcqPm6zAccMvCvhoJE+ma0iyvhVBN9beKKDRgbJxrz4rM/wQZ02hcfF4nTdFNs8v/eELz7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fw1u21ucMcjBe6kFAQG2mhKOtX1QprkN3iDRh3h8RCo=;
 b=nP2N2SBFlMHYOyAheBlJJDKwwe4AFLelNY+kBFHmpXOBpXvEE3Zpuk9HeIj/EiZpNgm8hRS3R+sad7TtEhqwydhW36zOSm47vdl53xuisTejw/deMUYmuEGD4P/AkW6mreDUeYzP7IM34bL2kOhXbnwrHU3Fz36m+dDU4KGf4AdNJM1EKgNJaD2vNFAts2mQp4YBR5rPw09B7z72LRdiEzJwLZlFqhG03MV7rueXI4Uwf76A9JMga4/OfSBszmiOTTWzVhVP34UqBBMPMVVbu8iuNcb3sKGKAjbjZhGCe5lqhTk6fg3ygVugwPQNwxH/atkNsMrJJFPtjahaluMQPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by PH0PR11MB5143.namprd11.prod.outlook.com (2603:10b6:510:3f::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.37; Wed, 17 Apr
 2024 23:57:26 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::9c80:a200:48a2:b308]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::9c80:a200:48a2:b308%4]) with mapi id 15.20.7472.025; Wed, 17 Apr 2024
 23:57:26 +0000
Message-ID: <a018ba52-ced5-3886-eaa9-4bfe3d6c1215@intel.com>
Date: Wed, 17 Apr 2024 16:57:23 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Anil Samal <anil.samal@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20240412185135.297368-1-anil.samal@intel.com>
 <20240412185135.297368-2-anil.samal@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20240412185135.297368-2-anil.samal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR05CA0077.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::18) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|PH0PR11MB5143:EE_
X-MS-Office365-Filtering-Correlation-Id: e4e819a8-41fa-45b2-8de7-08dc5f3a2221
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mUB05G7WYTB35IVTG6r+4QDq6q58lIMczfcuH4qc+o3bJjaztK1hTJfOFchCgRtUAWIP9yemyE9N2wWcQomYV2Z5d+4Ifwr8J0fZJJabMwqVKlf3dcR0PeVSg4HO1ALZ4/+haDilQu+ENF2jWjHQD/lYk6lhWko4Js5eizs6RXopzPuLBjvBtd2iGjKJp7PuxAupM4pDhKkOS6K8vyjH8dRf4hJl+9dydOhRzfIRuY9vx9jFLx2iEtpwn73AZIT7jYLs6x+rls5TOKafjKSPdVduGI4ZCghF7y32/chGCVj8nmYEU5dTCxZVXfVIazHZAgLZ9K7infKzYLujl5JgNhlXPEZBaOyu77HmN5E1NygVCPZGclz4gNgMaKX1r05x4sjG981cnyDDh4eIrGKHCGxjYPTxz39ECldwB2ugBy1HVhkN79yoCaESkJKYW8eL1XAvTWH9wmcDtf70nCuZhZoM9z8iL57MLdVRt6kqGRpbfosz3qYjP7kxHRF3j+pRONuEpDuslyDrPd989GBgnTE1+q3chbczk5C3QU/J9exdJOQk1tcbp9l6gB5sB1++9ebS7RsgOSShyOkac+biMaSngFj6eJLesuV//L4NtQFquIThrmGsPz+4cenoPUHst3JzpASwCqZzAfo7EigWth1SqwAdWwhHWxmh6admJvE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RjRtZXZDbzZlaStURlM2TEFobXVlMGVqcnAxUit1d0c0dGh6a1J5WGNUUG54?=
 =?utf-8?B?Z2g4YXpjcVZ5TmRIeEdZS1M3eDM5WTF1TVJMSzdwQ1hFNHZxMnU4c0M2Zm44?=
 =?utf-8?B?STNaOVlCYllCVDdrSURPYkNwdzhMN3puN1NGV1V2Qm15NFFSb1pNY1pMcmtS?=
 =?utf-8?B?QU1VM3hSc0xqOEllNldYU2dkSnFxZ1F6UE5tS2haTlh1eUdYZloxVWEwL2kx?=
 =?utf-8?B?ZU9Xb3pNT2c4QVFjbGxYY0w1UFBwVjhDUlpZYjhxdHVjQlZzNW4xTXlVbmRH?=
 =?utf-8?B?UVFoeU01blJORXNDdk1neFMreERFVHFKaWtIRHUxU0FiNnE5Ym03VVlvVzZ4?=
 =?utf-8?B?RUJtYmF4dWVjdGhoNEZ3VzMrSWtLSFNHNiswRUV0ejJvTUZFSmp3eVZsOG1M?=
 =?utf-8?B?Q0F0NzZvZzN4Nzc3L2tSMGZFWXM1cFVkb0Q3cGdrdjlrTlpOQzNXK1hvSjlX?=
 =?utf-8?B?U2h0eHRBZE1JRmRQR3U5OE1lZFdYOWsrNkloR0prTzNpUytBOGJ2UC9nbk1h?=
 =?utf-8?B?b0x2bStKUXhRZVVaSU5MTFczdHo2MVJ4d3dmZVNhZTRhcVA2Y3FHU3MxS1Zn?=
 =?utf-8?B?bktRdEFWbTR3UmJtNFRhSHhwb3ZhanJmL3BEclEzTnUzV3VnRmtWcUlKZnlu?=
 =?utf-8?B?M0h3enJwajgxYmtwSUZ1U0FVU2JLYkUybUhtaXdrdEM0aElHSVY4TVFTUnRJ?=
 =?utf-8?B?bUk2U0NTR3hTb0krTjlCUTRrOTVMNzF5SkYwYzlyZStuMm5xVlN2SGZNTEYw?=
 =?utf-8?B?SXEzZXh1TjljOTRzYUlBUWxYRmhPRVlBUHZ6VlBLd1FYWUV4aUNWN3hUaENy?=
 =?utf-8?B?Y3Y3Q1F6V0JCS2VFRTV0OXFCczFiK0xJVmZiYmU5NUJNKy9JckNyMnhIc1k3?=
 =?utf-8?B?VWFtR1N5N2pLZFdnSGIvcUVxTHZPL3FlbGRzRXBrVmlZVUlDV2V3a3FUZXZI?=
 =?utf-8?B?SkNnSlVVMlBSWEl4Y1c1KzNPOEVFOUJyaStKTkhMV2wxQ1NYUXBxeEpiVGdR?=
 =?utf-8?B?SmhPcE1UbkNDcGRGb2xCZG1nS3lJbXVrQnJxQW1yTDQxZ0VRcXhmdzFYQ0Z3?=
 =?utf-8?B?T2cwcVJxa2xOSEJrQTRJUzVGanpLNEdQOGlKOE5VNkdHWTBiKzczMmZHTnhQ?=
 =?utf-8?B?U0UzS05BNllTM0pqSitSVWp2VUMrRDhlUnVuS3I2SVlCc2J0SkNIZStWNUZh?=
 =?utf-8?B?Z1FZTVJRSWQ4VHFzd3BBL2VhZThWcXBoQmRHR3JiNzFTUzR0Q2pPVzNIcFpv?=
 =?utf-8?B?RDZzWVFhSWFuckdFR0xtSmlOeGFJRERlUEVoQ2crbU9zWFYyVjdyNVFNM0Mx?=
 =?utf-8?B?dVBqbkgzL0xlSUZVQWhZZmQ1bXFQeUlsVXNVNDhNTFpBRWJkMFEvQ3NMcVA3?=
 =?utf-8?B?UTgzQlBzc2xQUm82UVZvUUhHQmw3bitTcEQ1UVY4SG0zb3Z0QUNZZEtUWm1N?=
 =?utf-8?B?QVM0bGNsUi9OUDVRNmljazcrVkhjcGdaOHh0dmtUamRDaE9YampQMUNvUVA0?=
 =?utf-8?B?TWxTeVZIbUZMSDhJZzc3cVdOUEpXREg5djhRK0xIZnZzSisrZE5NS0oyVDZV?=
 =?utf-8?B?MjRROHhwMTZtZnpYeWppZWtBOGtadEZmYlJDUm8wSVQxMnluU1F3akFieEU3?=
 =?utf-8?B?enJLcDZtdXdleDBUQlUzbFk3Zi81VDVGZmRBejlKTkpBZGprbGJMNmlLN0lE?=
 =?utf-8?B?TjlFUjJFcVRVUk1yemRyWmZQayt0aFQzbmtTYzhPWlFpZ1NSTnBxN205Yy9n?=
 =?utf-8?B?ekJGY2hOazVUR2tTUEprUDNsTitBMzd0bWJmOExFb0V0cFg2OUMvU2tBOVVY?=
 =?utf-8?B?QkdvRWg1dkYwQWlEbzhGTGFoeVNySU9paHVIcXNHZTBVaStEYit1R0JZSUdN?=
 =?utf-8?B?dTYxNVUwSzRCVnk4Mld1QUtOaS9EMUZTU3lMQThsaHNaanByVUltTlRzeGlx?=
 =?utf-8?B?S1p4QzlTTXFpOTYwb0hBbGQ0R2RnK0NweFR2cXh6dEJWSXpJYVBEUjlaZzVC?=
 =?utf-8?B?RmxvaWVWZ0w1Yk9jMFFlem1KYmdIQWNXeVQrUXhpWFhFbnJkRy9SWnNFWnFR?=
 =?utf-8?B?MUQxVE4wV1V1OWlmNjcyZC9kNzkrUzUxQ3FVR0pjQnRLRGZYY25FdGxJU3Zs?=
 =?utf-8?B?NGxVREdDbWZXQmwxYk0wZ05TSHArUXRGZlVmMXIreEFXVmx0bTBqQ012MUk2?=
 =?utf-8?B?bmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e4e819a8-41fa-45b2-8de7-08dc5f3a2221
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Apr 2024 23:57:26.6997 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XXzHE8BgmPlO9c8KMJlYzAMtyjhSJwHPEcz5DXXAmz3ocwOwyXaW0UmwEMFukX/GxqxOM55JoLWHaXawqkDSHM6s/9Vp4EEllnV2pnpL730=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5143
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713398251; x=1744934251;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=25xBdf7Aodps5UEGJvG5Bo3FsOeyN98ZXOcaiAtcq+I=;
 b=gCRuu1ALVSeKYuNY2iQw1iiTJEJ4Eexw6eJY5WgvEZ2ms3g/VeM66DDO
 Jrk8l6II2WQZxNl0vrfle9Kk9n2xgQHae+NMO5YolYlXtimV6npHYOYk+
 Of7W5hWdHyw6XyTAFiTl8umGlDto8MicoPz/znPauXN4bsEg6zKXVOj9s
 WwUvyG/skZH7TsRQOjcgKXFhVXKnpPhsMMyFHD4xUsE96v52M8UqMUoll
 coef43IpCFNTg9vSKXLL8MsQCSQsx4UrryKDXoaO3Fw/d8aFUzfh5iqRr
 dirb9hh+8elPyMlvmQkBrKAqc/KfK+YDssMlOMpc09NYe/r+sGXiJRyKW
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gCRuu1AL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/4] ice: Implement new API
 to derive physical topology of input port
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
Cc: netdev@vger.kernel.org, lukasz.czapnik@intel.com, leszek.pepiak@intel.com,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 4/12/2024 11:49 AM, Anil Samal wrote:
> Some phy configurations such as serdes equalizer parameters, are applied
> per serdes lane. Hence firmware requires serdes lane number to read
> serdes equalizer values. Similarly firmware requires PCS quad number
> and PCS port number to read FEC statistics. Current driver
> implementation does not maintain above physical properties of a port.
> 
> Add new driver API to derive physical properties of an input port. These
> properties include PCS quad number, PCS port number, serdes lane count,
> primary serdes lane number.
> 
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Anil Samal <anil.samal@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_ethtool.c  | 265 ++++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_ethtool.h  |  10 +
>   .../net/ethernet/intel/ice/ice_hw_autogen.h   |   2 +
>   3 files changed, 277 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> index 78b833b3e1d7..6884b45c3b0a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -466,6 +466,271 @@ static int ice_get_regs_len(struct net_device __always_unused *netdev)
>   	return sizeof(ice_regs_dump_list);
>   }
>   
> +/**
> + * ice_ethtool_get_maxspeed - Get the max speed for given lport
> + * @hw: pointer to the HW struct
> + * @lport: logical port for which max speed is requested
> + * @max_speed: return max speed for input lport
> + *
> + * Returns 0 on success, negative on failure.

This needs to be updated for kernel-doc -Wall. Please check others in 
the patches/series as well.

> + */
> +static int ice_ethtool_get_maxspeed(struct ice_hw *hw, u8 lport, u8 *max_speed)
> +{
> +	struct ice_aqc_get_port_options_elem options[ICE_AQC_PORT_OPT_MAX] = {};
> +	bool active_valid = false, pending_valid = true;
> +	u8 option_count = ICE_AQC_PORT_OPT_MAX;
> +	u8 active_idx = 0, pending_idx = 0;
> +	int status = 0;

initialization isn't needed as it's overwritten before use.

> +
> +	if (!max_speed || !hw)
> +		return -EINVAL;

This defensive check is unneccesary as hw is being checked by caller and 
max_speed is always provided.

> +
> +	*max_speed = 0;
> +
> +	status = ice_aq_get_port_options(hw, options, &option_count, lport,
> +					 true, &active_idx, &active_valid,
> +					 &pending_idx, &pending_valid);
> +
> +	if (status) {

Please no newline between function call and error check.

> +		ice_debug(hw, ICE_DBG_PHY, "Port split read err: %d\n", status);
> +		return -EIO;
> +	}
> +
> +	if (active_valid) {
> +		ice_debug(hw, ICE_DBG_PHY, "Active idx: %d\n", active_idx);
> +	} else {
> +		ice_debug(hw, ICE_DBG_PHY, "No valid Active option\n");
> +		return -EINVAL;
> +	}
> +	*max_speed = options[active_idx].max_lane_speed & ICE_AQC_PORT_OPT_MAX_LANE_M;
> +	return 0;
> +}
> +
> +/**
> + * ice_is_serdes_muxed - returns whether serdes is muxed in hardware
> + * @hw: pointer to the HW struct
> + *
> + * Returns True : when serdes is muxed, False: when serdes is not muxed
> + */
> +static bool ice_is_serdes_muxed(struct ice_hw *hw)
> +{
> +	u32 reg_value = rd32(hw, GLGEN_SWITCH_MODE_CONFIG);
> +
> +	return FIELD_GET(GLGEN_SWITCH_MODE_CONFIG_SELECT_25X4_ON_SINGLE_QUAD_M,
> +			 reg_value);
> +}
> +
> +/**
> + * ice_map_port_topology_for_sfp - Fills port topology with  pcsquad, pcsport,
> + *                         primary serdes lane number
> + * @port_topology: buffer to hold port topology
> + * @lport: logical port for which physical info requested
> + * @is_muxed: logical port for which physical info requested
> + *
> + * Returns 0 on success, negative on failure.
> + */
> +static int ice_map_port_topology_for_sfp(struct ice_port_topology *port_topology,
> +					 u8 lport, bool is_muxed)
> +{
> +	if (!port_topology)
> +		return -EINVAL;

The is already checked by caller and accessed before calling so it can't 
be NULL here.

> +
> +	switch (lport) {
> +	case 0:
> +		port_topology->pcs_quad_select = 0;
> +		port_topology->pcs_port = 0;
> +		port_topology->primary_serdes_lane = 0;
> +		break;
> +	case 1:
> +		port_topology->pcs_quad_select = 1;
> +		port_topology->pcs_port = 0;
> +		if (is_muxed)
> +			port_topology->primary_serdes_lane = 2;
> +		else
> +			port_topology->primary_serdes_lane = 4;
> +		break;
> +	case 2:
> +		port_topology->pcs_quad_select = 0;
> +		port_topology->pcs_port = 1;
> +		port_topology->primary_serdes_lane = 1;
> +		break;
> +	case 3:
> +		port_topology->pcs_quad_select = 1;
> +		port_topology->pcs_port = 1;
> +		if (is_muxed)
> +			port_topology->primary_serdes_lane = 3;
> +		else
> +			port_topology->primary_serdes_lane = 5;
> +		break;
> +	case 4:
> +		port_topology->pcs_quad_select = 0;
> +		port_topology->pcs_port = 2;
> +		port_topology->primary_serdes_lane = 2;
> +		break;
> +	case 5:
> +		port_topology->pcs_quad_select = 1;
> +		port_topology->pcs_port = 2;
> +		port_topology->primary_serdes_lane = 6;
> +		break;
> +	case 6:
> +		port_topology->pcs_quad_select = 0;
> +		port_topology->pcs_port = 3;
> +		port_topology->primary_serdes_lane = 3;
> +		break;
> +	case 7:
> +		port_topology->pcs_quad_select = 1;
> +		port_topology->pcs_port = 3;
> +		port_topology->primary_serdes_lane = 7;
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +	return 0;
> +}
> +
> +/**
> + * ice_map_port_topology_for_qsfp - Fills port topology with  pcsquad, pcsport,
> + *                         primary serdes lane number
> + * @port_topology: buffer to hold port topology
> + * @lport: logical port for which physical info requested
> + * @is_muxed: logical port for which physical info requested
> + *
> + * Returns 0 on success, negative on failure.
> + */
> +static int ice_map_port_topology_for_qsfp(struct ice_port_topology *port_topology,
> +					  u8 lport, bool is_muxed)
> +{
> +	if (!port_topology)
> +		return -EINVAL;

Same here. Can you check for unneeded defensive checks on the rest of 
the series. If the function is static and we've already used, checked, 
or always provide a value we can skip these extra checks in the call chain.

> +
> +	switch (lport) {
> +	case 0:
> +		port_topology->pcs_quad_select = 0;
> +		port_topology->pcs_port = 0;
> +		port_topology->primary_serdes_lane = 0;
> +		break;
> +	case 1:
> +		port_topology->pcs_quad_select = 1;
> +		port_topology->pcs_port = 0;
> +		if (is_muxed)
> +			port_topology->primary_serdes_lane = 2;
> +		else
> +			port_topology->primary_serdes_lane = 4;
> +		break;
> +	case 2:
> +		port_topology->pcs_quad_select = 0;
> +		port_topology->pcs_port = 1;
> +		port_topology->primary_serdes_lane = 1;
> +		break;
> +	case 3:
> +		port_topology->pcs_quad_select = 1;
> +		port_topology->pcs_port = 1;
> +		if (is_muxed)
> +			port_topology->primary_serdes_lane = 3;
> +		else
> +			port_topology->primary_serdes_lane = 5;
> +		break;
> +	case 4:
> +		port_topology->pcs_quad_select = 0;
> +		port_topology->pcs_port = 2;
> +		port_topology->primary_serdes_lane = 2;
> +		break;
> +	case 5:
> +		port_topology->pcs_quad_select = 1;
> +		port_topology->pcs_port = 2;
> +		port_topology->primary_serdes_lane = 6;
> +		break;
> +	case 6:
> +		port_topology->pcs_quad_select = 0;
> +		port_topology->pcs_port = 3;
> +		port_topology->primary_serdes_lane = 3;
> +		break;
> +	case 7:
> +		port_topology->pcs_quad_select = 1;
> +		port_topology->pcs_port = 3;
> +		port_topology->primary_serdes_lane = 7;
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +	return 0;
> +}
> +
> +/**
> + * ice_get_port_topology - returns physical topology like pcsquad, pcsport,
> + *                         serdes number
> + * @hw: pointer to the HW struct
> + * @lport: logical port for which physical info requested
> + * @port_topology: buffer to hold port topology
> + *
> + * Returns 0 on success, negative on failure.
> + */
> +static int ice_get_port_topology(struct ice_hw *hw, u8 lport,
> +				 struct ice_port_topology *port_topology)

This is reported as unused. The series probably needs to reorganized or 
patches squashed to avoid these issues/warnings:

+../drivers/net/ethernet/intel/ice/ice_ethtool.c:668:12: warning: unused 
function 'ice_get_port_topology' [-Wunused-function]

> +{
> +	struct ice_aqc_get_link_topo cmd = {};
> +	u16 node_handle = 0;
> +	u8 cage_type = 0;
> +	bool is_muxed;
> +	int err;
> +	u8 ctx;
> +
> +	if (!hw || !port_topology)
> +		return -EINVAL;
> +
> +	ctx = ICE_AQC_LINK_TOPO_NODE_TYPE_CAGE << ICE_AQC_LINK_TOPO_NODE_TYPE_S;
> +	ctx |= ICE_AQC_LINK_TOPO_NODE_CTX_PORT << ICE_AQC_LINK_TOPO_NODE_CTX_S;
> +	cmd.addr.topo_params.node_type_ctx = ctx;
> +
> +	err = ice_aq_get_netlist_node(hw, &cmd, &cage_type, &node_handle);
> +	if (err)
> +		return -EINVAL;
> +
> +	is_muxed = ice_is_serdes_muxed(hw);
> +	if (hw->device_id >= ICE_DEV_ID_E810_XXV_BACKPLANE) {

What are you trying to check? I don't believe you can infer anything 
based on the device id's value in relation to values of other device ids.

> +		port_topology->serdes_lane_count = 1;
> +		if (lport == 0) {
> +			port_topology->pcs_quad_select = 0;
> +			port_topology->pcs_port = 0;
> +			port_topology->primary_serdes_lane = 0;
> +		} else if (lport == 1) {
> +			port_topology->pcs_quad_select = 1;
> +			port_topology->pcs_port = 0;
> +			port_topology->primary_serdes_lane = 1;
> +		} else {
> +			return -EINVAL;
> +		}
> +	} else {
> +		if (cage_type == 0x11 ||	/* SFP+ */
> +		    cage_type == 0x12) {	/* SFP28 */
> +			port_topology->serdes_lane_count = 1;
> +			err = ice_map_port_topology_for_sfp(port_topology, lport, is_muxed);
> +			if (err)
> +				return err;
> +		} else if (cage_type == 0x13 ||	/* QSFP */
> +			   cage_type == 0x14) {	/* QSFP28 */
> +			u8 max_speed = 0;
> +
> +			err = ice_ethtool_get_maxspeed(hw, lport, &max_speed);
> +			if (err)
> +				return err;
> +			if (max_speed == ICE_AQC_PORT_OPT_MAX_LANE_100G)
> +				port_topology->serdes_lane_count = 4;
> +			else if (max_speed == ICE_AQC_PORT_OPT_MAX_LANE_50G)
> +				port_topology->serdes_lane_count = 2;
> +			else
> +				port_topology->serdes_lane_count = 1;
> +
> +			err = ice_map_port_topology_for_qsfp(port_topology, lport, is_muxed);
> +			if (err)
> +				return err;
> +		} else {
> +			return -EINVAL;
> +		}
> +	}
> +	return 0;
> +}
> +
>   static void
>   ice_get_regs(struct net_device *netdev, struct ethtool_regs *regs, void *p)
>   {
> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.h b/drivers/net/ethernet/intel/ice/ice_ethtool.h
> index b88e3da06f13..ffc8ad180e61 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.h
> @@ -9,6 +9,16 @@ struct ice_phy_type_to_ethtool {
>   	u8 link_mode;
>   };
>   
> +/* Port topology from lport i.e.
> + * serdes mapping, pcsquad, macport, cage etc...
> + */
> +struct ice_port_topology {
> +	u16 pcs_port;
> +	u16 primary_serdes_lane;
> +	u16 serdes_lane_count;
> +	u16 pcs_quad_select;
> +};
> +
>   /* Macro to make PHY type to Ethtool link mode table entry.
>    * The index is the PHY type.
>    */
> diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
> index cfac1d432c15..6604baa37c4a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
> +++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
> @@ -157,6 +157,8 @@
>   #define GLGEN_RTRIG_CORER_M			BIT(0)
>   #define GLGEN_RTRIG_GLOBR_M			BIT(1)
>   #define GLGEN_STAT				0x000B612C
> +#define GLGEN_SWITCH_MODE_CONFIG		0x000B81E0 /* Reset Source: POR */
> +#define GLGEN_SWITCH_MODE_CONFIG_SELECT_25X4_ON_SINGLE_QUAD_M BIT(2)

Any way to make this shorter? It's length is a bit unwiedly

>   #define GLGEN_VFLRSTAT(_i)			(0x00093A04 + ((_i) * 4))
>   #define PFGEN_CTRL				0x00091000
>   #define PFGEN_CTRL_PFSWR_M			BIT(0)

Thanks,
Tony
