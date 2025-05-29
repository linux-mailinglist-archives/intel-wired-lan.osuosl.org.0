Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E61AC7984
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 May 2025 09:19:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8818340D3C;
	Thu, 29 May 2025 07:19:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zQ5eEJsN73vY; Thu, 29 May 2025 07:19:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F310640D3D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748503171;
	bh=HluW0/J/2RWvSge4hzAfueE+301iHpem/lZyoa4+wSE=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ESfXpvBW0W3QDT1k3cU91xJyYfjEDrJswe3QUONugs337h2ggy2wYRP0282Ekpkf0
	 flvH/zJHcPk1HBFMSi27j1UCo+fm5/fTuk6oeh80uKL4UjlX2gI3MOstdY4j6qmPT1
	 3y6UjSiXm85ykGqpw38cUhuAmidBevnzrk2CK8mPJtVBCGcR1F5qRhcsRh5v3g50GG
	 qTAOZaG+TGBTShXzsyqiT+KYfVtgIfKtlT4/7OT/Yf0bbNqCzIH6qGKO4g6fR/EeEX
	 xI19raL6XPF86phQ5SE4FSf0fIDT3NMTFs49YZZgGWaWzvskmlZTxH9+Rr8VY3mCV0
	 sqekC9JKk8Oeg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id F310640D3D;
	Thu, 29 May 2025 07:19:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8FE5E236
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 May 2025 07:19:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 75B7D8063A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 May 2025 07:19:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v8vbJEE4w9vG for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 May 2025 07:19:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=morx.bar.gabay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org ED0FA8210C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ED0FA8210C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ED0FA8210C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 May 2025 07:19:27 +0000 (UTC)
X-CSE-ConnectionGUID: rt/95k68S8eQ1tCqz98j1Q==
X-CSE-MsgGUID: DcoFGMeZT2qV4FB//R6YcQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11447"; a="61214278"
X-IronPort-AV: E=Sophos;i="6.15,323,1739865600"; d="scan'208";a="61214278"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2025 00:19:27 -0700
X-CSE-ConnectionGUID: euTFOhGnR3e6pUmwLzGNpg==
X-CSE-MsgGUID: jbHiHqRfQYWqV9XE26aYLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,323,1739865600"; d="scan'208";a="144455364"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2025 00:19:28 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 29 May 2025 00:19:26 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 29 May 2025 00:19:26 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.74) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Thu, 29 May 2025 00:19:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tYC0hcoxJ6mN28B3Y1MjaKCOxk1Vlptt+IC4lGw/kaUb3lG6soMhwQLJ+t4ZzreVpRex3GSNte1q8nXpevovsigWLd3leVRZ91pbdscQh+NnNxv3PmNKYZzTpRH/wQ/cqd85++HUJg2n53w8g+MGSk/nDdxgq4PSx0pC/9V4wD48JbCUA8ttSaxWtUDsgkld2TVCtFz/bke63CcyahPzJnjyaHFmThIQvfBcSdqyinhcweFnwS/PYH8gjp4lh7siddiTGxloHDQChCVOMjzsFbPgxaRPeVSftJF3TXkh6HGexrn6D4AcJiRcub54T6j+QAjhbVAeranUco7GfHNbpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HluW0/J/2RWvSge4hzAfueE+301iHpem/lZyoa4+wSE=;
 b=BGrV6PbPccIUvLORNlCikbb/iDYX5Z36cfSYD4iM0f7vBDMpfuqnz6iL0IuR7f1ujdK1QutNAlJ1+CUkvOqYNE47C7OWILB4DobfOD/UXhg4RDQKQxU9xAMniaF5NX1NoRRb40lagC5ZcxUn61j7PNkwpnJLs3jaNVtX1MI4KUYIdfrFxbOjoDKEBlOOue0l+SuP8alqsYHEk9jzd8TuS9s3etQFRlk6mg1DRhBd4sDhIytQYmy86hvbpsqllLOkRD2/3yRkdUfYbLTmfjUEamxzsao6E+6sTxJdjnuzK27hRgQ4DUUXGH7BEYSyKzXggc0HnXu9eZ9H9HOSIUBx+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6307.namprd11.prod.outlook.com (2603:10b6:930:21::20)
 by SJ0PR11MB6696.namprd11.prod.outlook.com (2603:10b6:a03:44f::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.30; Thu, 29 May
 2025 07:19:22 +0000
Received: from CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14]) by CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14%5]) with mapi id 15.20.8769.025; Thu, 29 May 2025
 07:19:22 +0000
Message-ID: <592a8212-dbbf-402e-9b11-f4edffaac8be@intel.com>
Date: Thu, 29 May 2025 10:19:16 +0300
User-Agent: Mozilla Thunderbird
To: "Abdul Rahim, Faizal" <faizal.abdul.rahim@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Vladimir Oltean
 <vladimir.oltean@nxp.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, Simon Horman <horms@kernel.org>, Faizal Rahim
 <faizal.abdul.rahim@linux.intel.com>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, Chwee-Lin Choong
 <chwee.lin.choong@intel.com>
References: <20250519071911.2748406-1-faizal.abdul.rahim@intel.com>
 <20250519071911.2748406-3-faizal.abdul.rahim@intel.com>
Content-Language: en-US
From: Mor Bar-Gabay <morx.bar.gabay@intel.com>
In-Reply-To: <20250519071911.2748406-3-faizal.abdul.rahim@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0021.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::15) To CY5PR11MB6307.namprd11.prod.outlook.com
 (2603:10b6:930:21::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6307:EE_|SJ0PR11MB6696:EE_
X-MS-Office365-Filtering-Correlation-Id: 38e31409-23a6-47dd-96e5-08dd9e81225c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|921020; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bU92ajFlSVVZbHhUTnUwWS9SdlB1YndQbHpQVWo0Qk11cU1ibWg1cS85WlpY?=
 =?utf-8?B?UlNQZE9iM1J1WDNXS2NlRGo5aWdQWmdBZTZXelRkZStZeHp6YTFzVUJtM0RN?=
 =?utf-8?B?RGpUaVptVkYzUVAwckxQM205WlFNN05Qak5mSG9NeWJuazV2LytvUFJnZ2w5?=
 =?utf-8?B?U1YxZndhdjI2S2twMThWcmF5NC9JTWVjQXl6bnNZK0tNd1d4Q3ZBd0tUWXhY?=
 =?utf-8?B?aWxCZU9yTkZXVjF5cW9uUzMyR0VKUVkzcXdQbGJWUFhBQUc5S201UVl1Qk9q?=
 =?utf-8?B?UjdtOW1ieTlRVnUrVWljeVlzRWlLajZhcEFpU3ZuTzhPUmVNSEloWG03dlFK?=
 =?utf-8?B?eVcySjZhU1hOdENJNG5MNHF1UExnSE1uNEVNZWVjMnZCazRMODJtTE5vdHU4?=
 =?utf-8?B?OERRV2V6Vk9CYmlRMWozUEptWW56Ry9NRVF3UGlDYkY4WmpHUVhCaXVQWlp5?=
 =?utf-8?B?QVR4cUFYL3VKaERnTENYL1I2SGQyWXgwcjBFWFVjUmxkd3BMWXJXd3B2NzM2?=
 =?utf-8?B?N2NZZVFibis4NEdzOStTaEtYaHZETmRkRTBPYW53bGtwb0krK1RJWTNJaDda?=
 =?utf-8?B?THA0Q0VndUcrRU1QRmhBNi9nVVduTjUyR2hsb2V0UFNwdWc3ZTBQVDRRc1lV?=
 =?utf-8?B?cU1LNWk5Smoxby9OTjBDamoybUVXSnpya2VLd2w4TlBlOVMxUGJKWWtmTlRU?=
 =?utf-8?B?aXhpUUdwaXQ4SnluYXFxOXd2UVVrY0hvUHNXRFhmYjN2dDVwU0tzV09Sd2tJ?=
 =?utf-8?B?bkdZMHZnVWFNKzh6Q0MxUXdpYTN1RnpibXczUmZGTWlrR1hEeS9hVUwxTTB0?=
 =?utf-8?B?UWdLVmlha2RFcVVEV3dyVE5TTGkwQUZtZjFsNGdZNklSTFhhdEo1Mjc5K241?=
 =?utf-8?B?NHEyWEh4K0N5OE5zNGtYZlVtQUJuV1Noa1B0Z1E2aTJqRmFxUE11czRTN21u?=
 =?utf-8?B?aE1INm9pa0pmak94YTAxcVhEMGRZNWFJYTg4UFBQRXdtSi9oZnZRbTZyOFNJ?=
 =?utf-8?B?MHJTWTJrRDB1REc0VGROb3ZXZkFweFk0MnUyMXQvZlQ3SHVSNkVHam4waVNh?=
 =?utf-8?B?RXJiYmg5U0paNHVzc2pWaFg1eTVsTElXamlSTHJjWkQ0TUdsSjhjYzhnVjV6?=
 =?utf-8?B?Ymw5VEtmQ1dxTTlHUFV3WVdYMlovai96eUtZbnhDei9ISDFSeWJoTGw0UHhu?=
 =?utf-8?B?d1Z4ZWtGWGx6U1czSGp6SGhuaWRQOHdPWmp5NDBGWVdJb055NWFzSXRTdFZp?=
 =?utf-8?B?Zm9lazlFTFl1amhBeDhtdHdCY3NaeFVnRlR1czFNZ1UrdTlZYmZMSjZkckIr?=
 =?utf-8?B?WFovRms2WXpzRnlpaUhQTmJ1elJ3TndKaTg4b21xM0MvT1hINEdWcjIyUmF4?=
 =?utf-8?B?Q29qVEhvNlNQZ282dmY4S3M3NUV0bkI5ekp1Mi9ackllVEZUai9hRytPZks2?=
 =?utf-8?B?TCtrUlVnY1BuY09odVR0eVpYZTdTU1RzY0NrcFd0QjVFejd3cnJud0puTk5r?=
 =?utf-8?B?ZXRFejgwV2Y1KzhtWkdZZVROVWoyUjRVQjl1L1UwelJ0TVNBeWZOVWNWYXBT?=
 =?utf-8?B?Zi9DdWU4Y2dBbVl6STUrb1JkMlRWWVRaVVVsOVAxZlEwQ3dvMlBZUjJ6ejFs?=
 =?utf-8?B?TFhXcG9sM083VXliUjlhSy9lUDVQYmZxeUxVcU94RENUNGtpUCtHOFRSOGov?=
 =?utf-8?B?SGtaaFZKYjBzTXU5SVpiN2loTjNLenR1Nk5DZERlRUQ0MjZsOHNWK3pGVDB3?=
 =?utf-8?B?OERBYUJCbGVpdksvdEN4WjdJTkJZaStmR1JQN0NBTlZlbi9saFQwRU1sdjhl?=
 =?utf-8?B?emNmTDA1NEh1RzI5eU5aMXJsWE5CSmdYenRELzhNbzNJUkdZV1ZCMTEvdE5v?=
 =?utf-8?B?SXBmcjhYRms5VHVuOWhwb25ZKzJqOWs2L3pVYkpOa1FXaDE0dlRxRWNaM2pN?=
 =?utf-8?B?WlozbHFyTllkaUhzaHNVeEFKYzQ2Z0VOSFpsZjgvSGY0WXorVkJKUnhjRUVr?=
 =?utf-8?B?S211dlphZkd3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(921020); DIR:OUT; SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L0Y1QmZZMy9QcDJhUFVZVmFJYTZFUW9DMGlxdGlncXExNW1NYVQrV29FWHpu?=
 =?utf-8?B?cmg3NWpaZTdPVkRzT3NucjZtWk56d0JINnNkZEY5QWNwdlg5SnFrazVLVUVr?=
 =?utf-8?B?VE45OTJoZm5uODY0N2ZqUmFqaEFRSGhQWWhjV3VBcTFRNytDOFlmaWhWWm8r?=
 =?utf-8?B?TkdsWDFoeDVwbEx4T2NmRjZPTUFSdk0wR3BsdFlZNFNacXlOdlY5am1oNjNQ?=
 =?utf-8?B?d2g5bjNCRHRTNkNFSnBJcGtmRXVWYmt5ZVVGU0dVZXNpajJVY0RSbVBWQ05Y?=
 =?utf-8?B?RXlWZ0pSd2gwUnlTcjVVWmtwM2Q1V3RMdG1TNXZNaVFqMk93UlI4OTQ1SWho?=
 =?utf-8?B?NVhqL29Uejd6WG5vT2IxdVFOdjVxejE1d1FKZXBuVlo3VGZlUGhYais2aXJ3?=
 =?utf-8?B?VnpBdGtCSytITVFLRjluYkI0SEE4bzFmNW9VdUFNR1AvTnp2bEk2Qzk0MUtB?=
 =?utf-8?B?RjRNNEtBRHkvV2RFZFppbndLcnZFRkxGWE5kUWcxQnc4djRLTWNDVzd3MElG?=
 =?utf-8?B?Rmhqa2lrUzVCRlBiaWEwY0tHZTk0V0ZJTkNxNDJmSmpRSXErV29BcnJZYW5L?=
 =?utf-8?B?Qi9TQWhQYy9mN3JHYmxMelNLbUV5dTFBbk1ZNWhEYjAxWVBoQzduOUpXZll5?=
 =?utf-8?B?RTdPWUFhOWJ2cFdDcmJFZnNXVE1WVkxNQmNWL1JhWmVxMDkrU2w1UzAzYlIv?=
 =?utf-8?B?N2RveTJNM283WURLNHJjbkpRdnJyUG9OaC9SS3lTMkFWMFlidVlRd3BUY2J0?=
 =?utf-8?B?cTBDNXoyaUwrUTdNTThKejVOMGlaSyt1bXRNaFpyaE5zZy93WHJHVm81SFFS?=
 =?utf-8?B?Sjh3MlFJRmlLZ2k1amhCKzNOZFRSY0VmcWZOcXVvemo3bUlUSUY4dm03YU84?=
 =?utf-8?B?SVBJZ1hqc0hXZFpUcEdUaUxZbVcxVnVWTEQrK1NMNWJMSW1IbElWRlhYczZY?=
 =?utf-8?B?UnNuNStTSkJZMUtBQWJ0UWptOUd3SzQwUHBKd09sb0RzSEd0bkhWUTZEcVZP?=
 =?utf-8?B?dnVsLzkvM1JORHdHZW05dG9aWXlXRHZ2emF5VFhTa2J6WXNKUGdpUmxiSi9j?=
 =?utf-8?B?KzFpOTloampMOFhYdTMrMC9waDllZklwZzJlSlJnR2hlM29LS0NjZHE0UGdR?=
 =?utf-8?B?RmpVYVFxWmw5dmlWeG1MWHFpckxZUS9RQTZILy9RRFJHY3NCbW5tRkl4b1Zp?=
 =?utf-8?B?RmVWbjdFOGVBSUl1blZhb1Q3M0lhZU82TDZZQVF4ODFvY29pckN0RmNLSlNn?=
 =?utf-8?B?bGdDTERwazlLeUZmRjVnYUFib0ptczdlNExBMHJQZkVGRFVQYW11bXVlcUVi?=
 =?utf-8?B?UDFMOXJQajZjNkVvUTh4Uk81WHRZWWtORXhGTHE4ZVlGVWFDaGVZeWZ3bGVD?=
 =?utf-8?B?N2t6OTZldFFTaEYwdEJOVmFZNFdqU1VhWVFOYjJIVUNNVTdyZnUrU0c4Qlh3?=
 =?utf-8?B?MFhXU01hOTRRVEkyVm5kaTZpTDJGQmJLdzI0ODRhUDd3V0hGcW1qUm9rMGNk?=
 =?utf-8?B?V2Z0NHRrbDNXK3BIN2hTZDhiYnZDV1c4cG43eHdzU0d3d1EyVTNOcFZ0a1l4?=
 =?utf-8?B?K0hGUWJjUTh4TVRZL0RuMlFlMVR0YmFKQWpodlliQnoyNGJpSVpNc1lOVTlI?=
 =?utf-8?B?dnZ1UU5XQ1lGTEVpd0pVNWN3VWx5eVVjOCtYcXZqaHlSenIyc1N3d2RyVUFC?=
 =?utf-8?B?cDdNK0dxYndCTm1xMW16TWxrZThQQnRzeVRuQlREVC9VT2g3UWkvaTBOOFNn?=
 =?utf-8?B?amhYTy8ydTZINTg3WUgza29GQy9yWDgrc2dZZkpwamdGa25SMlZLdklTejRl?=
 =?utf-8?B?UlE0RUc1bHlwZDVrZmRQdGVYaTQ1andTRVV5MVEzamtjNnJDelVwMnN6Zll0?=
 =?utf-8?B?UEhLZmxZdzhuMTRPK2N6TnVyQjJBakFIZE95MWpjS0VLMjMvWCs0MStpU1dR?=
 =?utf-8?B?elVzRlR6djVOZlA1ekNCWk9KMHB0N1F6OWF4bE54SWFhQVRDVzN3cUsrdXZi?=
 =?utf-8?B?OVZjTzdtQWQ3bm9iS29wUStoMjlWZHVQeEVEOFpDcHFuOWpkbVlZYkFVVDR5?=
 =?utf-8?B?VGJYTEdWV3REOHY4bUE3RXNTVndDM3pFdnJYL3cvWWZqRkJheGVlQTRMOG12?=
 =?utf-8?B?bnFTanFlNUsrcDF4NjJQZHVRSGpHN2dOQVNPSU54dTAxU2FqcklnOTFaU0du?=
 =?utf-8?B?dHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 38e31409-23a6-47dd-96e5-08dd9e81225c
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2025 07:19:22.3801 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9p3f53qEfRCnHc1ASQUG2/ecl5VBxpDzPBNM08/AXmvDX9rMp/r+xTmByiqN8OARn0BIwXfVIxknFmxKSqymr8238XRp+y6EJumGan8EBSk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6696
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748503168; x=1780039168;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mkgksR02Qc5EA0RKaPqf98pQWAfNTqfzjN9uSxWO1qM=;
 b=dn0blOddks6JOuUOtWvKW3Wl+oOySSsqJdXq5sgEjSFfbCSyD8t2LMav
 lgyoA3/T5QvOlnbbOhJPEyYdCYGtrxmb6F9j3gRavVOMhc8gfrislmjwq
 E2Mbl5+6Li0g43Pt2raRnDck1dtNYqKQCZfMuiDDidSAUeMCWCDm5Phjc
 +k/Y1Z42MpbRUnS+N5yCDg+KPyfo5cs95I7LEzepmiueJEuea2yzj/Ks7
 mqFtgPrZL6oO4/vUTpS3UHxBWapHbj9f18IiwI4z8z5eATLp4KPTeGoDb
 QV15ng+v+euua4l9f9Hs8aQ78BhL/t90FZqy+eeHkiFqcN0a4a0fv9lzI
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dn0blOdd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 2/7] igc: add DCTL prefix
 to related macros
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

On 19/05/2025 10:19, Abdul Rahim, Faizal wrote:
> From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> 
> Rename macros to use the DCTL prefix for consistency with existing
> macros that reference the same register. This prepares for an upcoming
> patch that adds new fields to TXDCTL.
> 
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h      | 12 ++++++------
>   drivers/net/ethernet/intel/igc/igc_main.c | 12 ++++++------
>   2 files changed, 12 insertions(+), 12 deletions(-)
> 
Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>
