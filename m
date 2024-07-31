Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EF6CF942CDA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jul 2024 13:08:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3D6E14091F;
	Wed, 31 Jul 2024 11:08:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 74M7HY58rvYU; Wed, 31 Jul 2024 11:08:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6A2B3408F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722424129;
	bh=HDSQ6ZTN8VT4UnekLTjAyTX+UW4PapfE6oT7NzI99TE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XtYkjiwE0Bb9/HSCl8ZdgghNWaYiPz9av3ST1Y7wzKDNdSu+IT4uZ42O03XHLvwUA
	 7CzBucFEm0cGUPeR7PgvFWuRWjOXIi5X5CvzxLLP6QHNoFzoMq4WtJHAi57nkFR2LI
	 j8ET42TghAAZ67y2ZhvOIwjfJreXC4XfLzZi/6dAuLcwW5joqHsy9D+lbqHKbNNVkO
	 VhHCnD0S/pQF0WOxlQ4BHvKxqljtZIK4w6z6r1FO6dVPSdmVFGTrPMMNYkoRaRhsp1
	 Wop/SwGFxPF3EMh/POHaJzDM85R1kXGGQ4HWeDVaVt5LZNgZdz0DQrY0WvsPBkYyTq
	 YYyEISMr+FQOg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6A2B3408F8;
	Wed, 31 Jul 2024 11:08:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AEE9E1BF576
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2024 11:08:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9971C81758
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2024 11:08:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jt3hGstZn5sN for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jul 2024 11:08:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C1BD681749
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C1BD681749
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C1BD681749
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2024 11:08:45 +0000 (UTC)
X-CSE-ConnectionGUID: NenIoBhuRWGXtGYFFziy8A==
X-CSE-MsgGUID: 4EH0dZPET9K+Ar1+Y4vN8Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11149"; a="20476162"
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="20476162"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2024 04:08:32 -0700
X-CSE-ConnectionGUID: kIwMWsiRSlGWb6bnpbl9AA==
X-CSE-MsgGUID: SlF+OGtzQbyuzOqSwhwJuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="54303604"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Jul 2024 04:08:32 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 31 Jul 2024 04:08:32 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 31 Jul 2024 04:08:32 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.47) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 31 Jul 2024 04:08:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jvVfh2CsMZYoGDJghvNL12mfiF6qf64aPzinPgHOvAq3gR3afI75oiqR7s1+REQ7QbU0HfBlFj+sZ8dx/T9bq/VVjC7mL+iwCuCMK44eOPwW8/l6JlD7SKi3802kPhk4XvCrUC4NeDM2xJ88lQKFfhBnRutXyy5JnUlLjPkBVzStiIsqjytG6RsxViAYJiwYwPBdKOp94Dq5gSCWrQvRibSNLH9hXFCoWFmYYKQWC0z8xIxILoWKV7nv5FqVLeJ6DRWJ7IZbE7IItugT9iAnUy8wvTEB3vq26yvjFffG+tMGDDUUjwdW9ns6eUrTG7C/Mte3fYjBJtXaMzZNh1ZylA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HDSQ6ZTN8VT4UnekLTjAyTX+UW4PapfE6oT7NzI99TE=;
 b=Cqmw2aoSDnbILVSEMM/kDICv+GeTV526zf4F8Z+T8Ppahhe/h2xXLvbs9BbLi+dtJqoVs8tNyy0JvuLqat+VikrjQQyyk5w5OGD+dQovm8fcgHc6nbIamKm490JV/YJoeB8OM1BYmjs9D4jg5UmbLHd4Mq7CKTlUjKvsJILfx/9dXJSeyHh9tBotzSVFRQO1+wcFqs7k2aCKmdwKsL12hV+hWEeNXiTDGDr050SrDA6cSH1C7diMamFqfW7ojx6Ra1VXJDUU8ltZTXag/KqHoI9TbNE2B8OkY4icLZSKifdBlQQyjkTW72W2yv/Lyxv36lBgwlVXB2IVJ5xty95ZNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5399.namprd11.prod.outlook.com (2603:10b6:208:318::12)
 by DM6PR11MB4609.namprd11.prod.outlook.com (2603:10b6:5:28f::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.22; Wed, 31 Jul
 2024 11:08:30 +0000
Received: from BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b8f1:4502:e77d:e2dc]) by BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b8f1:4502:e77d:e2dc%7]) with mapi id 15.20.7828.016; Wed, 31 Jul 2024
 11:08:29 +0000
Message-ID: <1a1d5b32-ccb6-4a28-ab95-cfd93fdd2062@intel.com>
Date: Wed, 31 Jul 2024 13:08:23 +0200
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20240730091509.18846-1-mateusz.polchlopek@intel.com>
 <90aaf17e-2b8f-46e2-974b-48fcfad2f983@intel.com>
Content-Language: pl
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Organization: Intel
In-Reply-To: <90aaf17e-2b8f-46e2-974b-48fcfad2f983@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR2P278CA0009.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:50::18) To BL1PR11MB5399.namprd11.prod.outlook.com
 (2603:10b6:208:318::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR11MB5399:EE_|DM6PR11MB4609:EE_
X-MS-Office365-Filtering-Correlation-Id: 1fd51408-f2f2-45dc-ac28-08dcb1511bc6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MmU3akw1emFoRC9KNVFDQlliMndFaU16UEFWSXE5TXdycGUyYld6SE5qT1Vz?=
 =?utf-8?B?WG9rS3FCY2E5dWI4RE1hS0RTcE5Gc0FzeTRNdHNabmt2Z0VGeVN6emtOclZG?=
 =?utf-8?B?bG80U1dFMDk0ODZTaFJlZmtQVURPSEdpcHYzQWFtd3MyV05vZzJBdFk2L1Fw?=
 =?utf-8?B?SEs0YjlGWnc1S0gyTVJoV3k0TVR0T0V1MkhxREpyL3k3endhdXo2OUpKckNk?=
 =?utf-8?B?OVpiNTM5T3BpNGdBZ1NBNnNCeHpkMEp3d1ZqdzkwNVBpV1NQS252Y0hvMXE2?=
 =?utf-8?B?LzJGcHpISjJETUdOaE91Mm9yQmFCMDdaZjhaRFIzVzl0RDhmdzhBT2Q2aGhx?=
 =?utf-8?B?VlF5cEl3Rm8wTDU4a0paRG9LbXVrUjZ1NmkyWENITG1nUnZTSzhjdllmeSt0?=
 =?utf-8?B?Sk42RUcyeEUxQXdqY1p0T0VML3AwRkRST2pvRFZoODFoanV3NUVBMmhYTGpu?=
 =?utf-8?B?dDZmSXgra0F0WTFaNlArTFlqMTFxS3p1cll0VVJ0M1RkZWFxTHkrQmVLb1I4?=
 =?utf-8?B?OHB1cGlKZHdvZWloaU9DcVdpdjE4YnppQk5uaU11VUNvVTI3VVZnTE92U0Nu?=
 =?utf-8?B?T1l5Rm5pMXdicGxra1BKdEE2VUJPS1pMVEpDVHZnYTJzUHhkZS9EUjJzQkli?=
 =?utf-8?B?d0UyNFhwMlhpRWM4QmMxa29uTXBrOVFGVnZnck84alBCSDBJOHJMNE0rREsx?=
 =?utf-8?B?dk4vWHA4T2xsVUl0Unh4djVNL0ZTcm1KU1ZVSGxRN216VmpxNFlzVUtGRHdz?=
 =?utf-8?B?UUx1L2hUSitCb0VxZHdERWdaMzE5Ni9qVm05NC83UEtVeEh2eS9zby9jOFZa?=
 =?utf-8?B?MG1LcWtkRGlHeGczcXE3WTdwbkllMU9scUU5SjRmeGNaRHQxTk9EQ2V2UVlY?=
 =?utf-8?B?RmpVZTl0NkRFOWd4S2xLSXMwTlBzZXhUaG1lVEFRVHl1TWdYRzkrOXFwOGFD?=
 =?utf-8?B?dC9qVEorK1l0UlZ0dzN6aXZ2aDBDL3JRM3MwWmRWYloxQis1V285UC9qUCt3?=
 =?utf-8?B?VTFpT1ViZThvU252V1NlallrbjhVVzFlL3Urd0Vyd0cyVm5rcjZMdmdvK2o5?=
 =?utf-8?B?aTlCUm95azBYU1Bvem9TVmRUNWlDZ2pSTjZiMG42aGY2Z3h1cE9aa0hldUhu?=
 =?utf-8?B?ckQ4MFVIVVpxTXcvQVBCL2p0VjdaNk1VWjlFYTBhRS8zWWVBMHRPb0k5aXd2?=
 =?utf-8?B?TkNrbFJVOCt0TDJvdVM3WUNNd05ZdlZ3bU5xTmMyN0x4UUJJUEIzWC9nQTRp?=
 =?utf-8?B?aDl4SkhKL0NUemFqL0ZCTDAycnMvOERkYjhUQ3luMEhuYk8vamw5L1Z4RDZD?=
 =?utf-8?B?UEEzWHUxaTExT3F5aHBuc09BWXBSaVA4dXc2TTNCWDRSdXh1cVJZMFRSbkZK?=
 =?utf-8?B?TDdPTEF0K0wrNytTNHk5N2VmbTBKVkRvSjdjdW1DTGhNSFllZVFmeWg2b2dw?=
 =?utf-8?B?YytjYW1iREVKOXhiRUJKMzR0OTRmMXdKWXA4elNiRkJpQ2VvMmJsS25LcndV?=
 =?utf-8?B?WWJLVFNQcmZrMkk4bU0rSzZlWk9EdWNNOXZWOTRCYUczZmYyVWVpaW5aOVVB?=
 =?utf-8?B?UGhuRWt5ekV0ZUJ6OEQ1V25iZ1NVY1FpbTVCVEZUazRuOXRpYlpuY2Q3d25O?=
 =?utf-8?B?b0hnQit3WUgxdmxwSmxLckJ1a0xyNmdUcjQyMUtSZSsvekN1aHNIWVFxdWho?=
 =?utf-8?B?NU5qc1JaUzNOSEJCOTVpMGF4RU5EdUVHRXhqSU04S0dvdC9qZitTUXAzbXUz?=
 =?utf-8?B?Q25KdXRhbGxFTGMyQUpaelBkZi9JV2ZMVGczRmlRS29FVm1iYzVoL1hjcmdn?=
 =?utf-8?B?d3RqanRsTVBvKzVheXJEdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5399.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dEhVVFBmWXlBWEY2cDNuUkJIV0dxOFh1NjMyYkwyc0tRRHgzUnR5TlFndEhP?=
 =?utf-8?B?dkVYbkhBeXFyUklFZjVkZ1ErMWJOSVJ6d0pldEUyQThXYlFmV0crMnFOVFhm?=
 =?utf-8?B?bnBpa0RVcThwZ3BYTFc2OUFHaHdjWElFdmlPZjhDMkdQcEIrVXEyQXB0a3JI?=
 =?utf-8?B?Ly9HUkZWekpsMGlzamY3UW05eEQwby9WOUMyWGpnK3dySWJMVzJtNmxROVZE?=
 =?utf-8?B?bjJmSW9xK3dOWHVIRWZpTXN6SzhIZXd1WG12Mk14aDgzSlVEWGdFWGw0aGVx?=
 =?utf-8?B?WEVCdzdKaEhqRjJVQTQyNDBzV2xSSVZnb2ErTXRGVFpHNXZjeXdqMXRsNi9q?=
 =?utf-8?B?NFZUZTc0TnlFZ1lvQWhGWEFISVJnY1lrSGZRajE5QUJNbGNiaHZzN003NUhH?=
 =?utf-8?B?eEFhYkVLblQxRktEem1jU0c1Mkw4MzEwRlNVb3hQQ3NQZnpUMkpvdWpUTHo1?=
 =?utf-8?B?cUhxVGV5UDRqV1AzZzA4aXhYRko1RURndEVUbXQ0U1pCQk5KaG14N2lHQXkw?=
 =?utf-8?B?Q2dXekJuVjdTUHNmMmdBN0UxaU1jOWZGb1JmWms0OFNCUjJ1UGNVNkFOYW8v?=
 =?utf-8?B?dkZJUEt5aDlvMkJQd2N1UnpFRXZ3K2I2RE45R0RqbXh4dmI0S1BSb0lVaWFM?=
 =?utf-8?B?TVlnMEhCSlNFL3pETHZYNThpbHZYbmJNZlh5d2lnQlFINWJJZWprWWFTWUxO?=
 =?utf-8?B?R3ByQ1BIRHZJKzZPcjNvTUs1WW1Pcnd1SUJORTloc3FMeHF3UCtHMkF6bFhG?=
 =?utf-8?B?eTJzU0pYNGUwSlMyQWVYUVRLWlBMTndlOFJ6eVFNVzdYbkNmWWU1ZFl5bU0y?=
 =?utf-8?B?b0R0dk9xMjkveDJLbjRLU3hIb0VRU2dwSGF5YXo5THFzWmhMNHVOY2x5Zy8r?=
 =?utf-8?B?bUJ2UzVsa28vcEs5RkpwWUxVeFRrOFVXV3dxMGp3VG0zZjI1c2VwSUlITDND?=
 =?utf-8?B?T0tPM0NaUlRBanpFRWk5V2c5MlNuNlpqRHJMMWZXQkt5cUZiVURsYytxKy8v?=
 =?utf-8?B?RXVyWG1wR2ZZOGt4U2tNSWl0Snp0eFRKcTBSdHg1L3VsSWdqaHBHQXBueUpK?=
 =?utf-8?B?UGRscFhqcUVVWjhna0JWaXFqMUN3TmV6TjhxZE4reFIxTjRoNDBvTGVsdEp2?=
 =?utf-8?B?YXRjb2N3Z2plZVpZajNic3ZiM2RST0hLekFmaXhCUVBkUHhYTjJyd3ZMWjV5?=
 =?utf-8?B?NkRPZjJFVENWaGZQV2c4dkV6eGRyRVVDV3g0ZzhPbXRPY2ZDZy9Vc2JjYTV1?=
 =?utf-8?B?blZLcnl5R0lpRkZ0RENORXU3aHRMVEZyZ3A4OFB6dW5uTjJzSWwvNFlnWUdB?=
 =?utf-8?B?aFl3ZjhNVk9tS1FKYlp0QjV5eWZoZFJJTytkU0haS1VIOGI4MktHTXh6VnQ5?=
 =?utf-8?B?YlluQjZRS3hLbzJTV2FQTHErT0dOYytnQ3loU09Gb2VvWEgzaVJMMVF6eHo4?=
 =?utf-8?B?Vm1BVlBCbnlTK1V4L0tnZDBYN2RGcjVsRzJmUFg4ZDN4RzRaeGE3WXpORFFq?=
 =?utf-8?B?RGZUM0FnbE5NSkowUWg2SlBYQnZ6czZoaTFINzZPVWhVS0xuRWhMRTJaV1BH?=
 =?utf-8?B?NG5HcHhNZ0JKV0w3T3JWZ1NDVStmdDhxVDdQeXZKUTE2N1RDUmR1RWk1NEFj?=
 =?utf-8?B?N1hzc2RPQVZZTTM2YWpVYVlVMHBITWRQYUExaUYrZnZNVzBRK3V1dVdaUmFa?=
 =?utf-8?B?TjVpR29iekY3dVBSVE9XQmYvMFYwTDlUTmcvSHVFYUw4SlBjZktReTUrZFA1?=
 =?utf-8?B?dUJsVmgvYW5vT24wSE0zTTJuMnovRFlVQld3dng2VXRZVVVvS2Fta3hWTEg4?=
 =?utf-8?B?UDhVcyt3WTkrbFhBb2dlYzNMazlzUThxbWlkdHNISTkvZStaL1NZdDFMT2Nu?=
 =?utf-8?B?N2VEUUVmVy8vQXFBOWRGNUg3OUM2SmFKRnVxdFVmbzBJVkVyWDBXSWpObmZs?=
 =?utf-8?B?cXpBbHczWFZ6MFVkdEZzRjU3U0FDTW90WXh3U2NVVkRhS3VBd2VVWkw0M0FU?=
 =?utf-8?B?Q1RvblE4Q3hQMjFCeDJkMFNXaVJjTkF0SWxDdVFyWlJLUFlIbGZXNlNHNW9V?=
 =?utf-8?B?T0lxV3BoMEEwUVozNU5udURQblR4TkF1T2s2cUNZQ1hxWHI5RTQvbjl4TXhT?=
 =?utf-8?B?LzFuZmRtaDZ5WHJFc0tpU2dRbkNtdk1iWFNOZ2d0UFkxQmYxZnpUWWVzazkz?=
 =?utf-8?B?dmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1fd51408-f2f2-45dc-ac28-08dcb1511bc6
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5399.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jul 2024 11:08:29.8243 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JXMwLT6wXDOnOFwlOSg24M5+Scop8bQM4CEk0nx7118+pCB/H24mDyqCN9iI9hRZQ/3ZQTkEbJoa7r5F/ztxavJE+ut/3d/IOx6akJOBEgs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4609
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722424125; x=1753960125;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BzTPyZ/AsHfVjaad1qGKCcsFjiYYjTgdaqc5kmnte0s=;
 b=mVEDXARD3xN+hIKXH8nRTaMSLgu6dKfaq2A/dmG6EqRJTHl0LwjlogyY
 MDbjkLHowvaEBXF2PDD3B49qgC2jXQcmLrtTqLiRm3qJ/ZoMyI4gWIbIG
 zwZyQCaFJdTb6EZbBxQZ8t+G2yxwZT7dV3JCbSIOpBPM1h0yjCIBOWO+E
 ueBcmG8W9gAbNnmSoM1LRJRFvxG3t7n80VWYkyQ7T3G7Hw1mOs+7oQ20c
 iKI6PCw52Z9GzCugYQQreFwLOJ9Hp9VcUEhW5MZBbasmnNhMT6UPH8L4I
 SKRls2jIbVEdmnFMugGTLVq/MJxfyykPaQxAgVIks7dAdNo7Ed5THMZiF
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mVEDXARD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v8 00/14] Add support for Rx
 timestamping for both ice and iavf drivers.
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 7/30/2024 2:30 PM, Alexander Lobakin wrote:
> From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Date: Tue, 30 Jul 2024 05:14:55 -0400
> 
>> [PATCH iwl-next v8 00/14] Add support for Rx timestamping for both ice
>> and iavf drivers.
> 
> Oops, please remove that period at the end of the sentence when sending
> next version.
> 
>> Initially, during VF creation it registers the PTP clock in
>> the system and negotiates with PF it's capabilities. In the
>> meantime the PF enables the Flexible Descriptor for VF.
>> Only this type of descriptor allows to receive Rx timestamps.
> 
> [..]
> 
> Thanks,
> Olek

Olek, thanks for the complex review! I will try to address all of Your
comments and then I will post the v9.

Thanks
Mateusz
