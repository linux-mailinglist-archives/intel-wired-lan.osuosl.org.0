Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B5BEA962615
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Aug 2024 13:31:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D639D40118;
	Wed, 28 Aug 2024 11:31:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 55p3Ux95RtFz; Wed, 28 Aug 2024 11:31:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 83BC24010D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724844703;
	bh=KeeTm6BU+BckMKQsrAoElnapIJr73h8YmAbZ7mwg5pc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rGW5o6de0og6iCvUKvtMa+N+SJLkZRHxDbbsviNg4xxfRpJh7xVJHemaycye7lafF
	 jz1gjW2J6B3On+B+y8Yx2BlCBRGAcU3PHAtqDa6FYi1bIPec1S5zM/+j23+RFZ9/J7
	 dwgg40QNEW4+uDYDJlTYa5A3AqIjYBmxAnqbNLML2JV9pARITGDRXfGwMuu0h7pzx1
	 UGLebtsOSHYnYXYdQYPJ3KeJqq295EJUm6nSXVvuc+RN7fqvog62GV1bhDVnrTbjh9
	 r7b+fiR7lyH8NP9vC9HijzRYPmvHlRNDu3e49y0+Et8+ET+DGI/hdE5RLvCk0+Ey5p
	 hF026A1UZRbpQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 83BC24010D;
	Wed, 28 Aug 2024 11:31:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EFBA11BF852
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 11:31:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DAD0D403F9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 11:31:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X6s5yAu-U_oH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Aug 2024 11:31:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 68BC1401B1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 68BC1401B1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 68BC1401B1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 11:31:39 +0000 (UTC)
X-CSE-ConnectionGUID: LUBCgGAgSd+1WtBu8LrQAA==
X-CSE-MsgGUID: 5lxk5EpRSJmfTfuiBCBwHw==
X-IronPort-AV: E=McAfee;i="6700,10204,11177"; a="27164876"
X-IronPort-AV: E=Sophos;i="6.10,182,1719903600"; d="scan'208";a="27164876"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 04:31:38 -0700
X-CSE-ConnectionGUID: TVntori6Q9Cb0Vy61OZ8Jw==
X-CSE-MsgGUID: gOyl89ieTuy2chX4alnKBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,182,1719903600"; d="scan'208";a="93987874"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Aug 2024 04:31:38 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 28 Aug 2024 04:31:37 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 28 Aug 2024 04:31:37 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 28 Aug 2024 04:31:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T6AfsAtDbBa1/QL/SBd1wXiAwvKDsqO6rgsBYNnpK7aQc/yQENRtU3A9B/g0eKAQzdlfPa8C3bMhqgrKodx9jQb3cVm9yidyGyJtzHYMj9XEchbPIudypZP13XPzk9mig3SIBHpE2325jgfpa1oTVvE6fyIRzzChITCwJw1g5rD/HhkdG6I1M2oG50L/U2I5M2ZByyJwtqjlI/Y6cVp/JtPac/jpTuk8UO/C5jN2XsqBGaeJSExuap1tHAUnUane37KABNf9kRuN8rM69LpptTFhid2n0HrYMiSnCcl5kq9wyMfELowBu1jOrdEucGY8tYAJKJ2IthHBv47a3ik2jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KeeTm6BU+BckMKQsrAoElnapIJr73h8YmAbZ7mwg5pc=;
 b=Q/JeOHZo4hQuaWSfe/JkdvciGFu1cnq43aQX+BGIN5ikB7yvqp22XWdqvJUhhq878EEg0LzK2C44319gzvFOL7aUBDlt2Ev/012uFHB82mLr286A7lBibrXKgLzLnn8mSwd9hxWij6VlW11uOlWqXxmRsVM4WX6cz9aLtJzAghQGcYJghRdrM9VXQvtUbrZhf7T905Q3c1s3IFPi2VLKpByKCh+FZu0jcQLXNlDECyHjh+u0/fXldsisO9ndm6vju7GxMApeMSsnqPyDMdTlc5AtdLg8lTaGMABmjE/YcmeMa9pWrRsCaoVe+aYXLhiNVIm/K+l2Jc0qxFtDi0scTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by MW4PR11MB7078.namprd11.prod.outlook.com (2603:10b6:303:219::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.25; Wed, 28 Aug
 2024 11:31:35 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942%6]) with mapi id 15.20.7897.021; Wed, 28 Aug 2024
 11:31:34 +0000
Message-ID: <45029a59-70ce-4bec-8586-f3ac35eec045@intel.com>
Date: Wed, 28 Aug 2024 13:31:27 +0200
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20240821121539.374343-1-wojciech.drewek@intel.com>
 <20240821121539.374343-9-wojciech.drewek@intel.com>
 <4ae03918-32c7-4065-b1b3-71b0361d6187@intel.com>
Content-Language: en-US
From: Wojciech Drewek <wojciech.drewek@intel.com>
In-Reply-To: <4ae03918-32c7-4065-b1b3-71b0361d6187@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0146.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:41::7) To MW4PR11MB5776.namprd11.prod.outlook.com
 (2603:10b6:303:183::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5776:EE_|MW4PR11MB7078:EE_
X-MS-Office365-Filtering-Correlation-Id: 02f18bc5-8340-4b38-6c3f-08dcc754f8de
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cTJyOHgyWWhkdEI2bXp3UmhyWmxuMHFqVGUrLy9waHZDVERiQ3hXS1hUU3Qw?=
 =?utf-8?B?aS9QdG90MDQ5TEprc2hGNGhzRHR1RUx3WnkrY29tWEVLM1F4cFdldXlnNlRo?=
 =?utf-8?B?Qnl5UVpkekhxRDJhZnJHZjhvZU9KMDRUTUlZNTYwN1lWcFpISWVMMjYxK1Nm?=
 =?utf-8?B?cE4yYXNOSTBWMTk4blZYMXYvNzNTUDFMajZBbWVpVDZRbmQzVlpMcjZIQUxq?=
 =?utf-8?B?MDJaRERRQVc0aHlkSUpQL3pyVWJ2NUVESXRaRkUvOFBIWUhvYlIva045UUdo?=
 =?utf-8?B?Ukl5cVFGR0ZUcDZnY0VYNlBNVnNGY1dmRitnbTVYeG1ZM0paS2ZhOXU0ZHZT?=
 =?utf-8?B?KzhOc1lOK214Z2lsWlpnMGZmUkhKNERrTVZzdHhaQ2p5YmJ4UHdoSFRRY0kx?=
 =?utf-8?B?eHNNTWFxQUZQeW41SHFLUGIrMElvUmliVmE5WDhqaTJpbkZhbXpkZUdneUkw?=
 =?utf-8?B?Q3N2TFVrY3prbWFzWVpObWlBMFpYbWU5OHNnS3RJa2Z5MStqdElabWxsM3c0?=
 =?utf-8?B?cjhrL1JVcmFtSlowdHpIcmdIQVB3OXNvWDVSUzlEMkVUSThkLzFVaDZYblVv?=
 =?utf-8?B?R0lsR3J5WUtCbkRvTGdVTkJyalBobXJmbDZSVkV5RVo1bUw2V09NRjdxenpP?=
 =?utf-8?B?cURPYzdqdGJKa1J0cHhIOTFnM1FpVTBhOU5rUklGMGJ3ZlE0bS96VVFZSWR5?=
 =?utf-8?B?Q1pPWDFQMnRGRU0yVVRVT1RQcWRSNzBQd24wLzhBUkZ6S1hnckNDcXZucDRU?=
 =?utf-8?B?MmxiVUpHUHZ1eHNBOU03S3FZd3BMTWNzRDhwaEpUWktXUDUzVUx5azA3VllS?=
 =?utf-8?B?ZnMzT0hWRnBsQ1d4VGdLVnpkVzdYM3hhUDJ6ckVzUEFWazYvRXdjQjZBYzUy?=
 =?utf-8?B?bTJON3FsMGUybHB2NTYrTXZlRXFaRzg5U2o1YWk4NDE5V2FBSkhoUTlMc3I1?=
 =?utf-8?B?enZ0OVJpWkNON0hXQjhnRXNRUy9RVzh3VlJxUGFKcnJKTWU5MWltakNFT2I2?=
 =?utf-8?B?VFd6UDVzRTJBd0VFTlgvcVJOREQwVzlOUlRpUks4UjBYWWhJWWJNaXMzRzR1?=
 =?utf-8?B?ajl2MkpyVmxEelVQck11YjZQc3UvUWY1TG9XWjNoRHA1a0Jick1nZ1ZFSThU?=
 =?utf-8?B?REg5Y3lJZDhrcEkrM2FLVTk2a1pOdU1EeEJ0eHJUdlJGWUVFRE02WE83NGg5?=
 =?utf-8?B?WnRDalFkb0xXU3dXeklEWlR4TlpKcHFVNit4eEhPNmoybXR3NkRCZ0dwMXdW?=
 =?utf-8?B?UUN2bnNqSGhzMjVqYU9OeEdxZlZMbDA4eFdLWklzVitTR2ppRjVQV0tPcFhF?=
 =?utf-8?B?bmNRVlAza3VOdXZ0dHArRGpKcFM0ZEVVMHY1Z2JJWVg3bUs3ZTNWSEhRR0pp?=
 =?utf-8?B?MDFrTlpRN1ZESmJNaXM3S3dndG5XZjhPbG40RTlVaXE2c0pXTkhib3htbjNJ?=
 =?utf-8?B?dW5EcTRqanN2cGhOYWlGakZHdEpYMmdRNGtSNTNrdXlnMDJPTFRmMmxBbjlx?=
 =?utf-8?B?Z29qTnZHdEFPOUZMNzEyNEh4TnltNVNkSFBTVVpMZVk3VTFXak1XRHd1Z2xh?=
 =?utf-8?B?UGRYcTYvWjdPOUdaajJqZkhyd3F0dGpBUHRqTkxQbTRTU3FtZzJSR1pJSkFX?=
 =?utf-8?B?S1ZLb2Npc1VSOTdXdHU0NzgvNkh1K3dIanhuWWdHTWlUSzFoaVJEWE9YN2Vi?=
 =?utf-8?B?dHF5YWFNRW5Jc01LU294OURUT2QwWXUxTDZ0aDd0Q2wvZk5KdWFSRDc3Vno4?=
 =?utf-8?B?S2d5NFZXZS9ibmdJeUZ5VTJheXgrZHFDY3UyMlo5Vm1IeEZEVytYY1pKS3Qx?=
 =?utf-8?B?TXpFVzZIcWM2QW5OQkwzZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YnF4ZFlGVHJuLzM3SnlLcUZRTmNwdWJZV0E1WC91SnhuUFp3YUd5QWViWDFk?=
 =?utf-8?B?VEZlclBETEFyNGhsQ04zclBVWW5SNXdza0k3dXZYbUk3Vis5MEhTWEEzbUNk?=
 =?utf-8?B?NXlsaTJuTHNGRzVqM0tIbkpuZ3k3VkFJYTdVOHJKbkhpaE9ZZndQa0pmRnhu?=
 =?utf-8?B?NzVaK3k0cEdLOW1DTFhOVnJMdTBsMHFZUkhDNlk4OUMyMnFPSGE0NlFqZXJy?=
 =?utf-8?B?bmpIczV5VTVXY0ROQUFURC9pSGxxb2MveDN0Z1RWL3Z4SlJOTnp4S09zVlFL?=
 =?utf-8?B?VjIyQU9LNmF6NFZGK0o5MUVCZ0NsTzZoMEpjbEcva3pJQkJSeGNqdDBOakln?=
 =?utf-8?B?WUV4VmFmSnNaNjRDYTN2UUk2SnFYanFKNjQvRTVOTmdlTkRnUWZPSTdsWmVI?=
 =?utf-8?B?dUdjSU1OeDduMjg0MjdtSk9sVll0WlJHRUpaMXdUZHJKcXdqWjQ3MFYxejB4?=
 =?utf-8?B?UmZJVVI2WXhhSjk1aEtZZHhzbXVjMlFtamdGRzI0Umhka1lWcUxaYWsrWUM0?=
 =?utf-8?B?M25VK3hBd0R1QlB4ZklGSUFhNlowVlNWTFVvbktpbWNWZThDK29mckJLaVBN?=
 =?utf-8?B?SWJpVkRiOXFjUTZkOUZFOUp1M1JxWlFjenlzY1JPV0J1c1VvN29pcThlYVM5?=
 =?utf-8?B?STdudHFOVUV1RjdVWk9ybE53S1JwUHBSKy8wV0cwcDh1REs5aXJvR1IxeXpR?=
 =?utf-8?B?Mm9QRkdNSEVQaHJFaW1yVE5VdWY0YVlpc0gvZUoyaytrTG4ySXpxcCs3Q1dq?=
 =?utf-8?B?YmdlYzhHQ1JvWHlySXViQVVUbUJHS3NRWnJZTld4VnEwbTVBVDBYMDdyclpQ?=
 =?utf-8?B?RmlnQUxlZXNxNlJCa1ozVXMrNkpQdTU0TXR6QkFxYjcyV0dlV1JOR2w3VEFJ?=
 =?utf-8?B?RERmUmNDZ0VOT0NsNEVGcDFwMHgxVjNsQ0hQRzdKdm0vaGU1M0VEQlQ3am10?=
 =?utf-8?B?S2daZmp1b0dmUmpRNGJFQVcxd1pzOVNvclhQK0tVTy9hY29HNm4xVFlNeStX?=
 =?utf-8?B?S2x5ZGU0SGQxbkRHVlIvVVdBQ0FaYnFEMG9IOElibk9CSVBOdkhTUEp1TUc4?=
 =?utf-8?B?SG13dmpuUHFFRlRTZXlLK2ZCRWRwK3NDYWZhTWxHRzV3b2xWd3pEbG1VaUV5?=
 =?utf-8?B?Q2EvRGlxcHgzMGtnWGNPcFd1VDhWcXBmdXQwZmZKT0VXTmdiWW5lNHd3bnVi?=
 =?utf-8?B?L2JTMmNaWnQxaS9nRWpNbUNabjdyL2JDck9zTFlkMXdrNXJBMUZiK3JlYS9L?=
 =?utf-8?B?SFRpZGljcUxXd3pDQ1FiUEhkcGdlMVdXZkh1ZFBPcFJtaEZEQmhtWFR2eTIx?=
 =?utf-8?B?c2dTWFpCK2NzOGtXRGhxVVJlS2FOdTdJNUtrRnNsa1BqU3BlTE9pakVsWmpU?=
 =?utf-8?B?Ukc5aEF6L1hkeUhIUk1NenJJczQ5K3dtOUN6UjFlMXIwZE8wMStDckhWL0Rw?=
 =?utf-8?B?bWQvNGtqNmxpNWVPT2hRSVowcThDV0dUbnJaZFRaKzVFU25yODBBSHlSdjFL?=
 =?utf-8?B?SEV0M3Z2dngvdm5PalRkN08rdlVjTDAxa3FwbmQyMUNQMGlxRUhKZmpTUlgr?=
 =?utf-8?B?bmFvZnRaZmJPR3poZ3l0ZzlhSlovRFJSdHVmdFQ1UEI4RXRZcW9YTXI2YzdF?=
 =?utf-8?B?R0k1MTBQUDVzMVhJNCtzdy9BZDhYUi9hL1JSSkJjSGx1MGZNSjJFdWxkdzM0?=
 =?utf-8?B?K3ZOT3N0WS8wVm53d1FXZHYrL2wyM1JlZzRQN3RYWCtsaWJHeG52VThIU0RU?=
 =?utf-8?B?cTJORWJleDd6UHRiZWxSaW0wOWtJMUJ1ZzZDOHp5TjdORlB1bTJ5UUM3M3FL?=
 =?utf-8?B?QWdEUWtnSkpXQ1MvKzI0NjVmMC9qYm5Da2lIZHM5ZVNWZTFRYUd1OTRwVnBK?=
 =?utf-8?B?WUdCY2x4anlwTmorZVVlT3pqblk5MTM2WDUyV2E5VEFWbVpneE9NdndxVzRr?=
 =?utf-8?B?cmFnZEhFYVM0VE5NNGUrZW84d1QvdHdpSUp1MEdzL0NHQ1IvZVVVQjdCM2FE?=
 =?utf-8?B?eitKK0twN01QM1VQYWhQZHBZQUtpMGVtZWM2TlNQQjM5Y1lhQm9WL0MwSTZt?=
 =?utf-8?B?VFYvQlkwejVzWWZUaTVvOHRCZUliQm5LOGRhU3JDWWEvZ3BFNjJuQUgxenRH?=
 =?utf-8?B?VFI3dUh1VlV1NXc1UXF5VUFEL0dudHJXeEptaU9CMitzaDBiYng0cTYrdTVH?=
 =?utf-8?B?K2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 02f18bc5-8340-4b38-6c3f-08dcc754f8de
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2024 11:31:34.8537 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AjFLJO2jiM5v0Xrs/mzgTjTooT0qIjTC1kjm1mbXkOipAWLqMogDqhPyUCIufRSE7b8RmzXrHCl78yMfGTd+q2NE3Ybr+DWymRBd5knxUbE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7078
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724844701; x=1756380701;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KKxupSx4/z0nrUKDetX+14k7KI0rP6i/kvkCJhXFupE=;
 b=RkJmlW/j3f7M0DVlP2pMSPp1iiuCYvoVjLPNrjcITB82ToP3yU4K8PMI
 fzYUNDm7IuuB3erTdBUL4tzLARYLpYyLYYiPQpq3EpzzB++OZPxwLO3Xk
 PR20hr6+iJWr3k53v3+/6wBbVbr9XdBvl6apzkYrvAUUuQ1NB8ykNA+ze
 Wje0Jl/TKaJ8ov4EB6KV8n1W741A0x5tHYKpE4EcpRwAur5olHFW4vIz6
 e/Iy2o/3eiltTOauE2iekgYgS5OGDgTgIv/+HWzy6Iy/yWEf1MgtRb/bO
 XJOcqF+Fw9LGaIjRWLKgG2PVlaKGlg+08lmsHxUyQ8GskdYxedI04cU0y
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RkJmlW/j
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v10 08/14] iavf: periodically
 cache PHC time
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
Cc: netdev@vger.kernel.org, alexandr.lobakin@intel.com, horms@kernel.org,
 kuba@kernel.org, anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 21.08.2024 16:43, Alexander Lobakin wrote:
> From: Wojciech Drewek <wojciech.drewek@intel.com>
> Date: Wed, 21 Aug 2024 14:15:33 +0200
> 
>> From: Jacob Keller <jacob.e.keller@intel.com>
>>
>> The Rx timestamps reported by hardware may only have 32 bits of storage
>> for nanosecond time. These timestamps cannot be directly reported to the
>> Linux stack, as it expects 64bits of time.
>>
>> To handle this, the timestamps must be extended using an algorithm that
>> calculates the corrected 64bit timestamp by comparison between the PHC
>> time and the timestamp. This algorithm requires the PHC time to be
>> captured within ~2 seconds of when the timestamp was captured.
>>
>> Instead of trying to read the PHC time in the Rx hotpath, the algorithm
>> relies on a cached value that is periodically updated.
>>
>> Keep this cached time up to date by using the PTP .do_aux_work kthread
>> function.
>>
>> The iavf_ptp_do_aux_work will reschedule itself about twice a second,
>> and will check whether or not the cached PTP time needs to be updated.
>> If so, it issues a VIRTCHNL_OP_1588_PTP_GET_TIME to request the time
>> from the PF. The jitter and latency involved with this command aren't
>> important, because the cached time just needs to be kept up to date
>> within about ~2 seconds.
>>
>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>> Reviewed-by: Simon Horman <horms@kernel.org>
>> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>> ---
>>  drivers/net/ethernet/intel/iavf/iavf_ptp.c | 52 ++++++++++++++++++++++
>>  drivers/net/ethernet/intel/iavf/iavf_ptp.h |  1 +
>>  2 files changed, 53 insertions(+)
>>
>> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.c b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
>> index d709d381958f..7124a717cd03 100644
>> --- a/drivers/net/ethernet/intel/iavf/iavf_ptp.c
>> +++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
>> @@ -153,6 +153,55 @@ static int iavf_ptp_gettimex64(struct ptp_clock_info *info,
>>  	return iavf_read_phc_indirect(adapter, ts, sts);
>>  }
>>  
>> +/**
>> + * iavf_ptp_cache_phc_time - Cache PHC time for performing timestamp extension
>> + * @adapter: private adapter structure
>> + *
>> + * Periodically cache the PHC time in order to allow for timestamp extension.
>> + * This is required because the Tx and Rx timestamps only contain 32bits of
>> + * nanoseconds. Timestamp extension allows calculating the corrected 64bit
>> + * timestamp. This algorithm relies on the cached time being within ~1 second
>> + * of the timestamp.
>> + */
>> +static void iavf_ptp_cache_phc_time(struct iavf_adapter *adapter)
>> +{
>> +	if (time_is_before_jiffies(adapter->ptp.cached_phc_updated + HZ)) {
> 
> Also invert the condition to avoid +1 indent level?

Agree

> 
>> +		/* The response from virtchnl will store the time into
>> +		 * cached_phc_time.
>> +		 */
>> +		iavf_send_phc_read(adapter);
>> +	}
>> +}
>> +
>> +/**
>> + * iavf_ptp_do_aux_work - Perform periodic work required for PTP support
>> + * @info: PTP clock info structure
>> + *
>> + * Handler to take care of periodic work required for PTP operation. This
>> + * includes the following tasks:
>> + *
>> + *   1) updating cached_phc_time
>> + *
>> + *      cached_phc_time is used by the Tx and Rx timestamp flows in order to
>> + *      perform timestamp extension, by carefully comparing the timestamp
>> + *      32bit nanosecond timestamps and determining the corrected 64bit
>> + *      timestamp value to report to userspace. This algorithm only works if
>> + *      the cached_phc_time is within ~1 second of the Tx or Rx timestamp
>> + *      event. This task periodically reads the PHC time and stores it, to
>> + *      ensure that timestamp extension operates correctly.
>> + *
>> + * Returns: time in jiffies until the periodic task should be re-scheduled.
>> + */
>> +long iavf_ptp_do_aux_work(struct ptp_clock_info *info)
> 
> Why isn't it static since it's used only within this one file?

Agree

> 
>> +{
>> +	struct iavf_adapter *adapter = iavf_clock_to_adapter(info);
>> +
>> +	iavf_ptp_cache_phc_time(adapter);
>> +
>> +	/* Check work about twice a second */
>> +	return msecs_to_jiffies(500);
> 
> Thanks,
> Olek
