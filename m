Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EC8088B105F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Apr 2024 18:56:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 93672820DA;
	Wed, 24 Apr 2024 16:56:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mWsPHjmYFhgN; Wed, 24 Apr 2024 16:56:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3334382144
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713977808;
	bh=1u6kWl2Hj/gyTwCZIf5oukp0OaDvdNRfBCmq8l3XgSE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MUDBYA/qBmzT6ViIynJGQVw73Nh+sEcDh4VLTsyNBaakLQsNMcAA7iHWIz4IRtoTE
	 W6q+FASvonTQHG5iymuJpXAOYbAJ0MjVO82cuTRVxobJ5pU70gxuIjX+kCNjeVvwyU
	 o+sHlDS1Xkx/eGiqvtn9dZyOhFmdF21u9WeFXFaYUzaJcGEnfXSABSApd4zaJeilCO
	 KP1JAtzBKcSY2tvXRZKFRv07GIjoKDOrr/k+gKGmR7XktxASOTjcK/joLQMhl655GY
	 kLReCB0pFchDs+ogR2w2Qzr4HolBolcRetoETAdWyivh+t/wLAvsjROAX5kAz66q32
	 OJUD0HJl21qzg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3334382144;
	Wed, 24 Apr 2024 16:56:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 656EC1BF575
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 16:56:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4F6AA41550
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 16:56:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OQsHCKCakMOJ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Apr 2024 16:56:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 26317400E2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 26317400E2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 26317400E2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 16:56:44 +0000 (UTC)
X-CSE-ConnectionGUID: ZlbKKcYDQGWyQzPhQkVUhQ==
X-CSE-MsgGUID: WYoOa9VSTrWj13CUdQQQjQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11054"; a="9551446"
X-IronPort-AV: E=Sophos;i="6.07,226,1708416000"; 
   d="scan'208";a="9551446"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 09:56:43 -0700
X-CSE-ConnectionGUID: ScJomuPaSu+21L3jpi+CgQ==
X-CSE-MsgGUID: wbtKdsvNQUKZuWI24ED2LA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,226,1708416000"; d="scan'208";a="25290542"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Apr 2024 09:56:43 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 24 Apr 2024 09:56:41 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 24 Apr 2024 09:56:41 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 24 Apr 2024 09:56:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hNKr9Xz2mygLB3LF1FORyTaFACm7/unvHFZVdyK7MnAzZbttVCXC8Ad1lRfvTAuwyLjne4wVH4R0PpN8ef/RDT7i5CmFuC/74S7gdPW8sgCxBdNCxsfNahNOhjw3LlTiACPh+xM1Q7BUZ4nFdamC5P/0DtaPnupvJV2JOqB1O/6bmQsNX9e4dPLLxwefBE6f5PD5l3zep1JirfHQWiZRqQTZ2y0dGy20u7Rqfit+kYAdMg5xiLMXbBE3uc0Wflb5Oeq7klv1GS3YK9PRuatDsB4AyDx0AMEj5R6F7KwcMe5J9NIbOrKBRxk8F4+PE7wAAk9m4gnC5RA0S2aCtfq7ZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1u6kWl2Hj/gyTwCZIf5oukp0OaDvdNRfBCmq8l3XgSE=;
 b=GTEcK/WmGRQLEKRYcQILzxHN+1YVzJc4qQ0HDXeLtXZTE5wy4j4T+iLYbkjlEYDUN1zeL8jh1RAM+lTH1w/pKxs+6i7b72EPIkLzv5gqt5SwRYeK8/r76lchWUVmWo+98BTLU0DlBBNsqFEw9fI/Rfca9AM2L6Ci8MTQf7Ebl9yh6jRzaGLhtFUfoHvl3XFRd25RVoSt8uD12DVuOaoB1IVMU4hGod1dagP5oY8mCaNABk5bRsq1TpOpeOSJ9AxrqVqFaKVxLSKoyKR8rTXG68qkHJNrv88PywmVUlmYzzHgXYRnpZcRxJX4ASbe6du04uHMFyIED3QTTq5w+RgWfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DM6PR11MB4562.namprd11.prod.outlook.com (2603:10b6:5:2a8::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.22; Wed, 24 Apr
 2024 16:56:40 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::b383:e86d:874:245a]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::b383:e86d:874:245a%5]) with mapi id 15.20.7519.021; Wed, 24 Apr 2024
 16:56:40 +0000
Message-ID: <3877b086-142d-4897-866e-e667ca7091d7@intel.com>
Date: Wed, 24 Apr 2024 09:56:37 -0700
User-Agent: Mozilla Thunderbird
To: Jiri Pirko <jiri@resnulli.us>
References: <20240423091459.72216-1-sergey.temerkhanov@intel.com>
 <ZiedKc5wE2-3LlaM@nanopsycho>
 <MW3PR11MB468117FD76AC6D15970A6E1080112@MW3PR11MB4681.namprd11.prod.outlook.com>
 <Zie0NIztebf5Qq1J@nanopsycho>
 <3a634778-9b72-4663-b305-3be18bd8f618@intel.com>
 <ZikgQhVpphnaAOpG@nanopsycho>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <ZikgQhVpphnaAOpG@nanopsycho>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW3PR05CA0026.namprd05.prod.outlook.com
 (2603:10b6:303:2b::31) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DM6PR11MB4562:EE_
X-MS-Office365-Filtering-Correlation-Id: fc998116-c7b9-470e-ac1f-08dc647f82d7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S3k1SHJ0bzZ2bk5yRlJ0dlYveEtzVnRBZ2FRYVhNTjVXS1ltZlhOV05kWDFU?=
 =?utf-8?B?ckxLVXVwQkg3QjFHNTNIRDN1ZFFMTVo1R1NYYVZNdUsyV0VYajB4d0tPSDds?=
 =?utf-8?B?RVhLcDZiZXEwaHVRTTJZNWszVHlDTk8zNUNXVkp2SUVmU3IyOGNSanRxWFVF?=
 =?utf-8?B?N2pManJmRHYzZG84UmlwRVlCRllFamduWk5VQXVKK0x3RVZjeUJXc2dRK2hv?=
 =?utf-8?B?TjJrcGdXUW9EdTl0MHVjSnM1ek90eWNYRzdrOWxaTmhrczJXOEJZTFlUNnVn?=
 =?utf-8?B?YlE1OCszRURXc2dmM0ZFNlZzL2JFUXJuN2tJK3VQYjNNM2lUMXFLREVCTnBz?=
 =?utf-8?B?UGtkK0xvYWM1VlNZNTRnZ1Q3TUZxSmYwOCtQeUtlOHBKbWxIT0hrRXcrU082?=
 =?utf-8?B?Ri91VEd6VlJ2QmJzN3NNZnFQQ0tEVk1Wa0Q1NHRzd0JqdnIvTk8xdThIb3pv?=
 =?utf-8?B?QWxWQlBCT2EwVGE2N0pnTjZ2aEJUVVdaTDZPcG9DWW1udHB2V2wvakEwTUZ3?=
 =?utf-8?B?ejF1RHowaVQ0MmxNTlhsNHVxS0NRdWdxeUpRWnhjaWVzRzZneHdBY3pXVVRH?=
 =?utf-8?B?ZkF4VFFBMGRIcjAwNDBGOHNYNllzRXJ6M1Y5WHBhWk94VWl3UWx6d0c4YmpB?=
 =?utf-8?B?M1FoOVExYnFKZVdaaEc2VWxRUk1PcDZ0ckRYNVV1aUEvaXkrY3A5Y244VzJw?=
 =?utf-8?B?alJ2RFQvd1RpaFY5MTl3cFJrTEVTNVU3M29iR2YyYTFVMWVtNXl0UFpLTGk4?=
 =?utf-8?B?RzI1R3NSc1dQQXhMbkxONm9ZbnJVY3cyNGlJMm1IMkdTeTR3UzkzWGh4ZFlj?=
 =?utf-8?B?TDhWSmlMMmx3RjJJVDFmZzBXZ1JzTzZDWVIvUWtIN05KanlXeS9RSTNEak0z?=
 =?utf-8?B?dXA5Z1FqVE5YVXdrYU5US28yK1huRU9POVc1Mi9hUldETWg4ckNPZFpDNzMz?=
 =?utf-8?B?ejRwMllaRHBSMzN0V0U4VmtpYVRXOU5Xckd1alVraS9FQ25QVTRmQmlKNTZD?=
 =?utf-8?B?ODB2UWJMaXFlSGZKd0poWXJJK1R6bGpOS0lsdVVoU1k5OXR4cmFHd0Y2UmRu?=
 =?utf-8?B?VWpCU2Njb01xSzRlSE5pQ3RZZjBaUDRNNXR0YUpKazlEYStwcW5GempSMjBz?=
 =?utf-8?B?a0pRSkRKd2xSemx0YVM3OGtLUmRZRVovK2krNHVkVEh4QWZsOEx1Q0pxTWls?=
 =?utf-8?B?Y1o3QWtaWW9nb0RLRVo0ajdSUmN2Sm5yZXVtSjF6T1NjbDZmdUg3bGJjOFFv?=
 =?utf-8?B?MnRpTUxlSFRhZStFK2VJRDZDbGNBSlY0OVNIaVBmMG9RTWVDaXd4SEVSVmNl?=
 =?utf-8?B?TXRyWWFyL1liV2N2RDlMblpDWjFGbUU0cVhET0hHRUdiWlRkOHJjYlJoRkJ1?=
 =?utf-8?B?U3hBREh1b2V4SzFtSDN5TWt2RjJzREREaXVxNTZOSVZlTEdYb2Z5RmZkYW9u?=
 =?utf-8?B?cFNtSDlNczdoV21IUjJScFMyUzgwdVRFRjYzdnJlVVVFWWNxc2tHQVdMRVR2?=
 =?utf-8?B?Ykd6QjAvVjBPRjVVQkZITUdNT0s2eGxWbWZGUjRSTmQ1Vkc3ZnptOFJmSUIx?=
 =?utf-8?B?dmZ0Zkk2REs1a3lQYjFQdi9uSHhEWWFmS2hsUWt5dGttRlN3bC9VYmtBdk5X?=
 =?utf-8?B?M0QrSzdaVnB3UkRJQ2pQN3dtVkNiOHBlQUp5c0Y4YU9EdE5LNVZncXJJNUF6?=
 =?utf-8?B?NEg1NUJNYi85RE9LOGwrUkxvaVVDcHAyV2dzelFIemg1K3EyU1RKTzZ3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TG51MjdQMS9rRGtWMHJDWWQvNmt2QkdCeUJOSVlLaUNuajIvOFBwcmpDbXYw?=
 =?utf-8?B?Z29wOFJkWE9XeS9uQi9kMjljb2hNZnRieW4xdkdscHlsWiswUWsydG5QNmJC?=
 =?utf-8?B?UGV4aHpmenE2cjFZeGM3eEllenpNSVFCRjZxQ2lCc3I5T2J6QVMwb1BHYUY5?=
 =?utf-8?B?cEhsOEc5cDEzVWhrMnJQdWthRGRkeTdhSUFsWitmekpSZk1PYzBLT1BCQWNV?=
 =?utf-8?B?c21hakdsVFp0Rzl5RlQyRDlXNDRmSTFjeHpteHRKQWRwdmhCZFJNRXdHSUF5?=
 =?utf-8?B?bE9JbFVwWUw1a0YwRDlSVG9QS0JSVlEyQWpIV09wU3RVcnV0NUYzRStvVzVT?=
 =?utf-8?B?YzVhQTcyVDdWUW5iT2JqRDdPZTdieWQvNlQ4MGd3dm1IbnVCYytDeWRGVnls?=
 =?utf-8?B?NXpVS0JIWWI1bjJrOVljTXdDWG9NcGY0WGJtRXVGY3RYSk1SKy9qVEpyMUVC?=
 =?utf-8?B?NENFeWNQeGVEYy94ZDlRR25qVjNYYmxHRXZnaEhMNnowV0lBZzZ5d2Z1b09R?=
 =?utf-8?B?eHIxSEs3aGJOOXU5Y2s0anVvNHlJOFF1bUc4QmJyWUVxQnlsM1RuVlRZSlZz?=
 =?utf-8?B?N2pLRmRORVU4dTA1V3lFbE5BTkdEYkxxenVLT1BDMHdyaStYUmYrOFVYd1JD?=
 =?utf-8?B?NVhqWGcyK1ZEeG9sM3E2NGRBejBKTVljNlJQZUNvVVNmWUc2bzIvd3VZdFlP?=
 =?utf-8?B?Mm16OVdlY0FvUnlsU2lXWDc5OC81NDhFRko4TSt3TlZVbjhVY1hqc3V1ZlZN?=
 =?utf-8?B?LzB4VGF1MDczd2ZMdzRSV3NUdnRVcHR3UkpxN25KbVJyOVpxZWFwandHRVpC?=
 =?utf-8?B?eXNLQ2p6VXhjWG5JbjhCODRtMmlMSGhKWHlzTTdoKytmMStPSFdIRTAvRW5U?=
 =?utf-8?B?OGhZTmp6eHphaTNlQ0QwYUdOMHBMS3M5V3ZIVHp4SklGdVdRYUYxMzllaXNn?=
 =?utf-8?B?NkowSVZDeEZ4b0tGMjNXRTNYWDc0dlhlWVNsMC9GVUl2T3h1NUQyNWZwRWlQ?=
 =?utf-8?B?SUdnUVErK1JKbG9CYU9KalB2dDMrNmh6WUZYK1JPa1NkaXdiQXVrb21wb1pD?=
 =?utf-8?B?V3Vub0VGZHlEbU9LOTZpNGtZbmhvajdSZU5ienRrSjZlMVFrM3NWeEVRVjF3?=
 =?utf-8?B?M2hQc0NxVFdkZnl1UjN1ZEFxbDBIWHlnbkFnc1ZrT1RsZGF4cFYzYnJWcC82?=
 =?utf-8?B?VW5UbUMyQ1JJRGNHYnp3MFNrSzY0cGRWMHBWOGIybVIwWGxqQnVzZUJsdTU4?=
 =?utf-8?B?SW5vRndOVzIrdkV3NzF5dWNkUXlUS1l5RDBFckVqRTV2T200cWg0Zy9iazdW?=
 =?utf-8?B?dGtGQzMwQ0xJanhsdm5CSlNWSWNSWG81c3BRUHMvTS96d1htbEtRSW9hNnZr?=
 =?utf-8?B?SEVWdE84QUZ3aGVpaUx2SnJiT3hLbWJBZkFtRmJoS1FZV0I4L0Faa3Qya2xk?=
 =?utf-8?B?cEFWSUVTc1ZIaDVXRFRmSGN5emcrYzVqY3ozazlQa1NoOXl3NHlacUp4NjZQ?=
 =?utf-8?B?dWM5ZXl1Y25TWXRSUzAyZ0xZVTBBbjJIbGg0UjBXLzRLQkZyb0d6UG51SU04?=
 =?utf-8?B?OU5YTFppQ0xoTFhoK3R4RmxVcGdNdmd5ZCtxSXYrcFZVYy82d3Q1U2dQUkJt?=
 =?utf-8?B?bTdhUGdieiswSm1xaGJpU2t1aUxlcnlhWVgwSkdRRml2TGxKdEExRkhBTy91?=
 =?utf-8?B?bG9NOW9EV3dNUmpMV2NEY2FrVnFTUWdzbU1UdmdTbmJrdWZna0FCbU1NQVFY?=
 =?utf-8?B?RjJtc284M29zS3lXcjJCNGpPSlArZGVoYVN3aVJ1TWhMS0pSTmlUUElvT2dF?=
 =?utf-8?B?bFB4bVNFUDJKclpWQWdLdUxCTTNySG9qS3JsREdGYXhRMGVNUzQvUE5Qam9a?=
 =?utf-8?B?dmJRY1p2M3BUMWNQSDJ1cTlhc2g0ejRPTHlXZVNtRWM1Rm9ETjRNVFZaVEVo?=
 =?utf-8?B?bmZtRS9Bem1Oc0w0clpidFFzdlZ5Y3gyNFBCSU5qYmE0VE9sNXZFYjBuV3RO?=
 =?utf-8?B?N05NY0hhTmRUcVRYWXRkK3dTQXc4YTlyNzh1a2FXZVBuQmphVHN0bGZHTFJn?=
 =?utf-8?B?TnRsT2pYZll2RlhodFAvSFM4SjdGUjJzMGIrcnd6b0hUNFNFR2xpUG1aNUpu?=
 =?utf-8?B?bjZxZGQwb1NrcE5ua1pzZkEvR25jRElBYk5GdS9NTDgxZ3lEMlBIdC8yMU5Z?=
 =?utf-8?B?NkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fc998116-c7b9-470e-ac1f-08dc647f82d7
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2024 16:56:39.9654 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Lp6s0T0MzyHOkGzYIQgSZBtSUErSjl8pylkZfuaBUHePxE7zzK/ibfuq38vVCdOGmkQIaZbrBKaZs7UObnw2FORX8Oi76DA95KIWTWs/58M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4562
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713977805; x=1745513805;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ua9bHnRtSx+f7q/1sJeCigfkHHgkvZfBP4lTHQ1IeAU=;
 b=W5dLbILZOWxwZeM9IV4Ej6CgnE/qffv8BrmGuDLvDBI38Dks1ShZbW3J
 yVUhUEfQRk57PtrRrjkQK3DyUyaIgeSCg+ehzmEiUOjWMDl2eM0WtNa11
 5dIvqPfvJz4pYFdbt9bECLyi/78yIEKHUCxLllyDV4THtx9FlhsT+9Yue
 zBkHYyXuEnSqI88bdRcMfc5L1rkKQrNGa4YsXbreyxYdCMkQ2FgG0BDIe
 pH+525nO+UTz3wkwM7zIUIfYfejW3I6RmZFGfKdksFJbvAdFrrvW2uoIa
 ANWXfAkYTrSkJLiYHHt9MMVpeiTrZe7WuPkBe/ppJ7ZY8HOTMVfuNE2xi
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=W5dLbILZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Extend auxbus device
 naming
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
Cc: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 4/24/2024 8:07 AM, Jiri Pirko wrote:
> Wed, Apr 24, 2024 at 12:03:25AM CEST, jacob.e.keller@intel.com wrote:
>>
>>
>> On 4/23/2024 6:14 AM, Jiri Pirko wrote:
>>> Tue, Apr 23, 2024 at 01:56:55PM CEST, sergey.temerkhanov@intel.com wrote:
>>>>
>>>>
>>>>> -----Original Message-----
>>>>> From: Jiri Pirko <jiri@resnulli.us>
>>>>> Sent: Tuesday, April 23, 2024 1:36 PM
>>>>> To: Temerkhanov, Sergey <sergey.temerkhanov@intel.com>
>>>>> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Kitszel,
>>>>> Przemyslaw <przemyslaw.kitszel@intel.com>
>>>>> Subject: Re: [PATCH iwl-next v2] ice: Extend auxbus device naming
>>>>>
>>>>> Tue, Apr 23, 2024 at 11:14:59AM CEST, sergey.temerkhanov@intel.com
>>>>> wrote:
>>>>>> Include segment/domain number in the device name to distinguish
>>>>> between
>>>>>> PCI devices located on different root complexes in multi-segment
>>>>>> configurations. Naming is changed from ptp_<bus>_<slot>_clk<clock>  to
>>>>>> ptp_<domain>_<bus>_<slot>_clk<clock>
>>>>>
>>>>> I don't understand why you need to encode pci properties of a parent device
>>>>> into the auxiliary bus name. Could you please explain the motivation? Why
>>>>> you need a bus instance per PF?
>>>>>
>>>>> The rest of the auxbus registrators don't do this. Could you please align? Just
>>>>> have one bus for ice driver and that's it.
>>>>
>>>> This patch adds support for multi-segment PCIe configurations.
>>>> An auxdev is created for each adapter, which has a clock, in the system. There can be
>>>
>>> You are trying to change auxiliary bus name.
>>>
>>>
>>>> more than one adapter present, so there exists a possibility of device naming conflict.
>>>> To avoid it, auxdevs are named according to the PCI geographical addresses of the adapters.
>>>
>>> Why? It's the auxdev, the name should not contain anything related to
>>> PCI, no reason for it. I asked for motivation, you didn't provide any.
>>>
>>
>> We aren't creating one auxbus per PF. We're creating one auxbus per
>> *clock*. The device has multiple clocks in some configurations.
> 
> Does not matter. Why you need separate bus for whatever-instance? Why
> can't you just have one ice-ptp bus and put devices on it?
> 
> 

Because we only want ports on card A to be connected to the card owner
on card A. We were using auxiliary bus to manage this. If we use a
single bus for ice-ptp, then we still have to implement separation
between each set of devices on a single card, which doesn't solve the
problems we had, and at least with the current code using auxiliary bus
doesn't buy us much if it doesn't solve that problem.

>>
>> We need to connect each PF to the same clock controller, because there
>> is only one clock owner for the device in a multi-port card.
> 
> Connect how? But putting a PF-device on a per-clock bus? That sounds
> quite odd. How did you figure out this usage of auxiliary bus?
> 
> 

Yea, its a multi-function board but the functions aren't fully
independent. Each port has its own PF, but multiple ports can be tied to
the same clock. We have similar problems with a variety of HW aspects.
I've been told that the design is simpler for other operating systems,
(something about the way the subsystems work so that they expect ports
to be tied to functions). But its definitely frustrating from Linux
perspective where a single driver instance for the device would be a lot
easier to manage.

>>
>>> Again, could you please avoid creating auxiliary bus per-PF and just
>>> have one auxiliary but per-ice-driver?
>>>
>>
>> We can't have one per-ice driver, because we don't want to connect ports
>>from a different device to the same clock. If you have two ice devices
>> plugged in, the ports on each device are separate from each other.
>>
>> The goal here is to connect the clock ports to the clock owner.
>>
>> Worse, as described here, we do have some devices which combine multiple
>> adapters together and tie their clocks together via HW signaling. In
>> those cases the clocks *do* need to communicate across the device, but
>> only to other ports on the same physical device, not to ports on a
>> different device.
>>
>> Perhaps auxbus is the wrong approach here? but how else can we connect
> 
> Yeah, feels quite wrong.
> 
> 
>> these ports without over-connecting to other ports? We could write
>> bespoke code which finds these devices, but that felt like it was risky
>> and convoluted.
> 
> Sounds you need something you have for DPLL subsystem. Feels to me that
> your hw design is quite disconnected from the Linux device model :/
> 

I'm not 100% sure how DPLL handles this. I'll have to investigate.

One thing I've considered a lot in the past (such as back when I was
working on devlink flash update) was to somehow have a sort of extra
layer where we could register with PCI subsystem some sort of "whole
device" driver, that would get registered first and could connect to the
rest of the function driver instances as they load. But this seems like
it would need a lot of work in the PCI layer, and apparently hasn't been
an issue for other devices? though ice is far from unique at least for
Intel NICs. Its just that the devices got significantly more complex and
functions more interdependent with this generation, and the issues with
global bits were solved in other ways: often via hiding them with
firmware >:(


I've tried explaining the issues with this to HW designers here, but so
far haven't gotten a lot of traction.

>> We could make use of ice_adapter, though we'd need some logic to manage
>> devices which have multiple clocks, as well as devices like the one
>> Sergey is working on which tie multiple adapters together.
> 
> Perhaps that is an answer. Maybe we can make DPLL much more simple after
> that :)

The only major issue with ice_adapter is the case where we have one
clock connected to multiple adapters, but hopefully Sergey has some
ideas for how to solve that.

I think we can mostly make the rest of the logic for the usual case work
via ice_adapter:

1) we already get an ice_adapter reference during early probe
2) each PF knows whether its an owner or not from the NVM/firmware interface
3) we can move the list of ports from the auxbus thing into ice_adapter,
possibly keeping one list per clock number, so that NVMs with multiple
clocks enabled don't have conflicts or put all ports onto the same clock.

I'm not sure how best to solve the weird case when we have multiple
adapters tied together, but perhaps something with extending how the
ice_adapter lookup is done could work? Sergey, I think we can continue
this design discussion off list and come up with a proposal.

We also have to be careful that whatever new solution also handles
things which we got with auxiliary bus:

1) prevent issues with ordering if a clock port loads before the clock
owner PF. If the clock owner loads first, then we need to ensure the
port still gets initialized. If the clock owner loads second, we need to
avoid issues with things not being setup yet, i.e. ensure all the
structures were already initialized (for example by initializing lists
and such when we create the ice_adapter, not when the clock owner loads).

2) prevent issues with teardown ordering that were previously serialized
by the auxiliary bus unregister bits, where the driver unregister
function would wait for all ports to shutdown.

I think this can be done correctly with ice_adapter, but I wanted to
point them out because we get them implicitly with the current design
with auxiliary bus.
