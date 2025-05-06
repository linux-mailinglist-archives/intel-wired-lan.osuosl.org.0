Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B55AACAD9
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 May 2025 18:25:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E4AB98177C;
	Tue,  6 May 2025 16:24:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Tki3gvVStXBF; Tue,  6 May 2025 16:24:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0BCB1812DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746548698;
	bh=TrZk+3IiIewjxm29LkQyjUUZyVNxEBfNpUQddA7F6bw=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=95EdZmgmjO9WuXIAK8aTVCnbN3soDf/4Lt81rC7/Edx4H7BuawYjCsVrse7itLpTl
	 EBSDSVlFTOvnwDvH1uQfvdJ0rWY88pLbFCMhYwb0zaKt5Cai/wru88U0kRWChgr1GW
	 GEKUJ1k9zmzzgEZc7ZEyBFUPM50wPGfgbMozfgdSeG5+xgpTVvhI8uyD0s4me63VA3
	 J5dqbMHwugsT4sONNjKwlcV+cWnsgiBY3qnARbtY4HdQOr+nY7VhUcd8wNXYYWt5ck
	 jZyxeupO98S9C7Jp6M0r4O3oNNEjDzd/PvUh53vRmINHurGwogtY1AMIqgqvou+t2Y
	 /AQT1Fqqt7siQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0BCB1812DA;
	Tue,  6 May 2025 16:24:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 042DC20F8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 May 2025 16:24:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 00EC860AAC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 May 2025 16:24:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Gmr5v-VV53Qe for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 May 2025 16:24:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 17AEA60A9B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 17AEA60A9B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 17AEA60A9B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 May 2025 16:24:55 +0000 (UTC)
X-CSE-ConnectionGUID: 3j3trvHxQ6mbYJcXtHOlCQ==
X-CSE-MsgGUID: nRQ+7553RM2VtZ85jzvpBQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="58861456"
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="58861456"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 09:24:54 -0700
X-CSE-ConnectionGUID: hthrYklfQN6ULUgeCiqi1g==
X-CSE-MsgGUID: cHMRQ7WnRLiiqzeB/juTlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="136669889"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 09:24:54 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 6 May 2025 09:24:53 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 6 May 2025 09:24:53 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 6 May 2025 09:24:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IdiiUkQgol1CRxpH5/JxAiBPiRqC8oGiuLfIPB7+7mI3RybhDgckn3fwcPdvj4zRbOx6Dx8lX7/6GS0NB+UNvyTtulct2B1QelgDdxwiE6M2uAPC4bx2kT9f9YEaUTjm34+YyO6Hesf3JSeWhp+jfvs4D+IFqFslt1hUts3epP8gf7+Dw5ES5P0UklH3v8kvVLDX3zFS7HWJAjm15D+SLI0GbfxwDMOgoHcUM3VVby2QKKWaYdQpkC4AcLTtmsXJXZVjFY/q+wCBWMimfXy2cmvelbGGin5SXHMVDuvO2x3IwAspOOfWB9wAydNZqy2TT1LNZTmqBkyYEY8QOId4rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TrZk+3IiIewjxm29LkQyjUUZyVNxEBfNpUQddA7F6bw=;
 b=qXbAf5JI5w6bf1JLjSRuTSgmdpqRqXjRHVCri15QkvxNylZNcjnzucT3DuoYcTK0UKmYQXpyRcwzJqUBNtqBfQW1Hj3DBtl4f/GDoVJv7EPOGVtfk6KALh+i9PHS94nN2FV6pqjAOsHP7Jmkk4FEPiMCAuRC7jY2bnYiPlJ5F7AlLjr6QhqdqhRgOzyqsESN2KsixN+9izL3OLw767Jv5Hw0sfu1SDBJBvLVv45YXNIpvcX7bMjco+kcnlUE9awZhdg+yry22i3ivJmfCu96r7Y+ENmABtj/TM84lDXhXPTkZFzVaCcLjb9ntumOawpJxAboe0rDZqG1zsG1DI2t/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by CO1PR11MB5185.namprd11.prod.outlook.com (2603:10b6:303:6e::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Tue, 6 May
 2025 16:24:33 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%3]) with mapi id 15.20.8699.026; Tue, 6 May 2025
 16:24:33 +0000
Message-ID: <2cc74d66-9bd7-4876-a17d-c71f03910c4d@intel.com>
Date: Tue, 6 May 2025 09:24:30 -0700
User-Agent: Mozilla Thunderbird
To: Jani Nikula <jani.nikula@linux.intel.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>, "Hall, Christopher S"
 <christopher.s.hall@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Keller, 
 Jacob E" <jacob.e.keller@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>, <regressions@lists.linux.dev>, "Linux regression
 tracking (Thorsten Leemhuis)" <regressions@leemhuis.info>
References: <SJ1PR11MB6129BBB9E38F6DB731604E94B9812@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <87cycnwcpn.fsf@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <87cycnwcpn.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR04CA0371.namprd04.prod.outlook.com
 (2603:10b6:303:81::16) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|CO1PR11MB5185:EE_
X-MS-Office365-Filtering-Correlation-Id: a52d73f4-fba6-4ae9-f89e-08dd8cba7bec
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q1g0Z21NcnJmVzJGV01oTFExRXA2Zm9Oc01XQXlQa0Vzd2pYT0JobUV0Q2Zx?=
 =?utf-8?B?anRHUitXbGhscmJnbEpVYU0wZERyRHhnVVZ1T2kwSkNZVVh0RUxVejlzTjU0?=
 =?utf-8?B?cllaRDAzKzBwRnhmRDFWR3piaE9NQjhZV3hiY3hDeTk4Z21RcktZSlVWRGZi?=
 =?utf-8?B?K3B5K2FXMnBnejY5UGF1RGVSM0F2QU94cFh5YlpHdTBmWk1lemFKZit6NG9C?=
 =?utf-8?B?R3RCR1NUdzR1dm1rRjduWlFIejNhQlVvSFBRWlEzSTd2MVJJOU9pVWlzNFpQ?=
 =?utf-8?B?RDI5WjhtZkx0NWIvTDdFMWdzWXMxUFZqYWxFc2JGVGN2N0pueFVXdzErdTU0?=
 =?utf-8?B?MlFmZGV3STVlbEQrVVpMR25vaWVpSGxZOHJTUHJ0YWg0bUhRRkxsS3BWTzRV?=
 =?utf-8?B?UytTNlZYeWw3YUc2QWR4QjlIRUNQWEM4WVNJT0ZHYlB6d2tYQ2JabkhLakEy?=
 =?utf-8?B?SnlXMGRlWG9EaTBvWStTRVUwQkZtZ2d6MktUOGlxb3pZMkZNaU9haGVzYXhJ?=
 =?utf-8?B?aU1Ed2lhOHdwMjhUMUFBYTJEZ1VRVkd6WXl0TjhvVGN5aEdGbGdCSlk4aElB?=
 =?utf-8?B?ZXZHVE44cTJ6RW4ybW14TTQ4MlEzWlhES0x5SVFzRHMzYVBUUkhRd2V0S2hQ?=
 =?utf-8?B?SW9CN0FOZENUblEwN0t3VmNqVlN4dFdROGMyR2h5UW12VXNYV09taVRnZktC?=
 =?utf-8?B?bGJ4U0FNVWx1K25sdzJQUnlIWUUyRTkxc1Vyd1NVZGZCNnBuL1NNcURzWEE0?=
 =?utf-8?B?R1F5eENmcmxHc0laTHJFaXcwY0daVEZsZVlxZTdxSXRLWHBSOW5sQk5LQzB6?=
 =?utf-8?B?bkw2SFFzVkJXc1UzNmJScnA1NDRwYktmNmRIV3hwYW1pZEZVc3RXUlhhbTMv?=
 =?utf-8?B?THBXZFBOWDJUVU9oWTZXSGVuNVd5b3ZRMC9xOWJ3ckJ4WFFpcC9MQnZWQThU?=
 =?utf-8?B?TnN6RnhQUXlSNHhsTTVTU3NQeWZqSzVrOEVZOU8vTWdTRHo0Q0xKTTlldk1t?=
 =?utf-8?B?Z2E1NmFTTi9GS1pidTZRQVpYM2kzWGFXN25BdkcyUDRqaGJJM3htai9oTlhU?=
 =?utf-8?B?MFYxS3dZcW1kMEJZclZUcnhCQyt5Z0x5RitSVGJyditaSHhhZit0TTBLcDFP?=
 =?utf-8?B?UkNaSm1BaGxXUHhsZzNuV2NYa2xvSmdISTRaeW56T1l4ZjNJVVU4UWZiTFMr?=
 =?utf-8?B?L0xRMnEvdFdJN0l5alVIU3dVMzE0aUFhNHhsZW1VeDhoTGxlVGdBU0J4cURJ?=
 =?utf-8?B?bk5Rd1dVc1U3dDVndTFZYzY2V0RyTFpBVHFoYlRCck9ZRC90ekNFRTVVb0xl?=
 =?utf-8?B?WEVsdmtzd1B5WmNneGNKS1QxN00xYThYTkJpdnE3T1ZJcU9iNWo1STZDY2dC?=
 =?utf-8?B?UjBYQUNJSjg3M05kUGF6aENkZU15RVJZUlVMYTcwWWRvUjcrdEhCaDhBTmFS?=
 =?utf-8?B?RFFFWVZUd1FxSkVTaFNKN05jV2xmWExmOVJ3Ulp0QjFPM000VHBuUmdrOHds?=
 =?utf-8?B?eUMzZFNkbXoxYldhUHdTTGVkMi95bTJEaWVMQ2NxNDVIV1UvUHg4T0RtWHZo?=
 =?utf-8?B?dVcxOUlDQkdFbjBTWHZYVFRocTN3dGpSbEh0M0J6d3ZmWUREbVZmR3ZUeERZ?=
 =?utf-8?B?eU55c0x5bUE5c3IwNmdycXcrYXlDWFZzcFJrNkc4SHhCKzFLMFgzU1pLUEZn?=
 =?utf-8?B?MzYycnF5Mm4rcUpvdFNjSDlkdnhSS0hHY0pCRm9mMDQ0SW40TWlPSWFWVDR5?=
 =?utf-8?B?R21oTTdCKzlSWEVoUGJ2Y2ZaYmljemhXNVFCMHU3NXI2bmVaQk1obnRtbTNK?=
 =?utf-8?B?YXphSlVmQ1RkZ2E0YjJWWDc5NDJBMitkeklsSGNVakliQjFzWVhmS05ZbzZ2?=
 =?utf-8?Q?gx1wTitb3/usN?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VEhackZNMDMyRTNNMnVZZTNpTDAvdTRDanNnVGRKaVI0d2NzVkg3cC9MSE9v?=
 =?utf-8?B?WEIrQ2lPc25uR3V0RGRkRG1uNmxLQUYyUHY4K2tmOWZWaGIzNUtvaHc4YUFZ?=
 =?utf-8?B?dHFSSEttRVFLSUdUVG1iY3lKbVdwUmxvdDB3d3dlMmowTUNpcWpVNVFJcXBt?=
 =?utf-8?B?eWlYUVprd0dHRXc5b2t5ajgwN3VCTXpEa3JHdFdsWkhGYWVOc2lJdEEvekVM?=
 =?utf-8?B?VktxdHdkdVpjczdFSEppRHpjV1pTQVhIZG80MVBpZVlYWTh1S05MTzNNdHFJ?=
 =?utf-8?B?aHRzZlphL1lZNGdLQ2k5ZXRidXlzRWpya3ppYXZuNDRWczl4T1BxYTJDaVFp?=
 =?utf-8?B?WWZCMVlsY05BQmFmTlA0cGJ4WGdiZVlYeVFkL3A4NkhoMDNWQkwzZXEwWTlL?=
 =?utf-8?B?eUdFYm5DZ1JqSmp6THBXdW1RVkxia1RHaWFYNEVjUE4ySnZmYWRRQWV5N2dD?=
 =?utf-8?B?ZnAvMnl6Mk9zZXgwWk5Bdnl5RXo3ZGd0ZndPZmtJOUdxRDRiNmtwejd3WVpt?=
 =?utf-8?B?SE5jTEZFWlliT3luSGZNTUduY2o0aXJKeWVpeTBVaStSV0JJVVFxZFVtWkhB?=
 =?utf-8?B?dENBaXVCenB5YUJKL21tUkVXaHRWbDZ2cnNUN3FwbCs0MXBvMUdJK1AwYkdN?=
 =?utf-8?B?UU8wY09DQzk4cWVMM01ST3grRDZZdmlZYmJJdHdaODFCdG1YWEJCV2lPcWl6?=
 =?utf-8?B?S29ubm8vRzBlMEdjQmRzaVl4aHdTbnJoNzNrVVFjeHR4eW1JQkhSODJDMDlU?=
 =?utf-8?B?b2pjNE1qTEtkY25TbTlDbDdMZEdRWGhPMHN1c254NWE3SGZQRnZZMXJ2eERR?=
 =?utf-8?B?NUkvbDRXRXdROUVVNktweS9KZlRSTnRHckJYZDdpU0haVnd6VDBYR2o2U3lh?=
 =?utf-8?B?OWgrSjhEMUg2MU9RVXB2eXNKRlNUdVJpelYxdVpqbzVtUEVQQ2tCcFBNcXZn?=
 =?utf-8?B?eERpSHRxV3ZKRVAzVmpvZVkrTTNWZHZFQzJjN0huN2ovSS9xbTJIQlEvb3dQ?=
 =?utf-8?B?bmR0MFRiMUZuWGowbFFzb3NRNkV4ZHExVTBsZkEzMFhTbUp5T3RsZC9qV3Fm?=
 =?utf-8?B?amdHdzc3MENRaCtTRks2SERKNDMzZ2dPWExxK3pnZm02RjBrd0puL09Hb29N?=
 =?utf-8?B?V2RvRVZtSmJyNVh1Nm8zVnhOd1hOVWlqS29tZHZVT3Q3dTRKS0N5eENqVTNR?=
 =?utf-8?B?QXZRT08zbW9lZnZ1NXVNWkgyUEVwVGpPOElNM3ZkN0Rubkw3R1c4cFBpT3or?=
 =?utf-8?B?Zk9tWnZ2THkyd291RFVSMHM4eWNKL2Jxcms3OU81YVdFR1dxTUtGYmdIZXpO?=
 =?utf-8?B?dDAxT0tZMkNqZWcyclRXRy9Bb2gzNmpuTW1Odm4zUlJKWDl3RmNWUzNVVGlo?=
 =?utf-8?B?em1FZ1BuREIzYVU4Vk4xa0xyeVJ1c1BPYmFxalFocU5TTXp1LzlLNWw2L1VF?=
 =?utf-8?B?MGJucmhzcU0yZWUyOUlCU056S0NRS3ZRVlZiYnlSdlBoZ3dnVGtvNlkwbERW?=
 =?utf-8?B?QTVmRHBzUC9ML29zOVBYOTlzUCtlT3VzZWwzZHBZWXpUd3RDMDc5QS93czJi?=
 =?utf-8?B?SmVFVnl3bkcyVGkzYnhSQm9scXZacnNJSEgzVnc3N1M5elZsN3U5NzFrK2gy?=
 =?utf-8?B?MWtOS3cycnJ6UzY5SE5wVmhLdExETFdrUDJMdHJCQ2l5VTh5ZVZKYjMxVld2?=
 =?utf-8?B?ZlQrTjhLV1BkeDRsWXE1TmlMZDR1TGFVSmpnT2dZdTJRcXYyeUo4ZDBxMEJH?=
 =?utf-8?B?S1dxTGJYL1oxVUhCWStnTG9ybUxWay9uL0F5YnduUUp3emNkRXQyNld4VWNU?=
 =?utf-8?B?dEZHVzcxdEs3WEh6MVowYmVTRm92bEF3MlBHSnJ6bHZiNkRoTnRqTElCZlJH?=
 =?utf-8?B?cWp4aTVORG8yUU0vSTY4K1ZYYm00L0J4N3prbjdiSVpnbUNzRHZ6VU0waVJ4?=
 =?utf-8?B?Rm1FOE1KcDJIMWZNSTFkZm9mWXFRZzYxakRsODBsU0hpazRyU2JucVF3dUJj?=
 =?utf-8?B?cCs0TTZxcE1KczZQdStDd2F3WEZ1YWZMc3NIZzUxN3FyY2ladFhob2g0cDFa?=
 =?utf-8?B?b3g4L1MxcmVEOFVUQVN5VGc2ak5CWFJsMWFMWlZqeThKUDZFV1pNdVBwTTh2?=
 =?utf-8?B?MTQwRmMwaXoxQUw2NE5xa1ZKWlhRbkUySmFsa09kNC8zOEZ2Z3EvWCtkN2dY?=
 =?utf-8?B?b0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a52d73f4-fba6-4ae9-f89e-08dd8cba7bec
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2025 16:24:32.9757 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wJf0aw+ZVDdpPZFXmNXIjTtGohuSZqnFwb3ncN+szJx9h8RWVLpqIfWpi7s++hYgX+QRkN0itpE/hvXmUkb60/VaZ78BUSnrCKQQLyh26TQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5185
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746548696; x=1778084696;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MrxrgDXqRH7lPBuxay7sbzRkQ0098newxCiC3FFuKjY=;
 b=kPzERL1Ec6DmkPCzl9gLQV7ETE0CzAQKaXhUvOnczORZWC1DIk3Oy946
 LVkpV12ElC6GZkOfxJOhymqk+3xHGBhZ4d/5IDw3BjCcq+FDCLPRyF+OG
 KIOmfsfHH+A+REcwifcaol78KdR08ifXoxudzBkV/vBBpXyERe1agg547
 mIvsbLsDw9j1hOh57U85E8i+rsacEUm5uVuBIjuesukWmKAlFbsSmyOt/
 bD9mBNX50JDixA9Gc4uOSKIDWQeSyUM1Nmox6ViG8609Lcw+OunOfhvaj
 y0TWCAaHVkRklD40mDyaMvEBwGSk8KhPTMmSOt6HwQOQc8IE3n36o3GDN
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kPzERL1E
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [REGRESSION] v6.15-rc3: 1a931c4f5e68 ("igc:
 add lock preventing multiple simultaneous PTM transactions")
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



On 5/5/2025 3:53 AM, Jani Nikula wrote:
> On Mon, 28 Apr 2025, "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com> wrote:
>> Hello Christopher,
>>
>> This mail is regarding a regression we are seeing in our CI runs[1] on drm-tip[2] repository.
> 
> The regressing commit is in v6.15-rc3. Updated subject and Cc'd
> regression tracking.
> 
> BR,
> Jani.

Hi Jani,

This should be resolved with commit c7d6cb96d5c3 ("igc: fix lock order 
in igc_ptp_reset") in v6.15-rc5.

Thanks,
Tony

>>
>> `````````````````````````````````````````````````````````````````````````````````
>> <4>[    7.891028] =============================
>> <4>[    7.891293] [ BUG: Invalid wait context ]
>> <4>[    7.891526] 6.15.0-rc3-CI_DRM_16443-gdc80d6a10c1c+ #1 Tainted: G        W
>> <4>[    7.891792] -----------------------------
>> <4>[    7.892070] (udev-worker)/286 is trying to lock:
>> <4>[    7.892349] ffff88811671bcc8 (&adapter->ptm_lock){....}-{3:3}, at: igc_ptp_reset+0x155/0x320 [igc]
>> <4>[    7.892660] other info that might help us debug this:
>> <4>[    7.892943] context-{4:4}
>> <4>[    7.893226] 2 locks held by (udev-worker)/286:
>> <4>[    7.893515]  #0: ffff888103bd41b0 (&dev->mutex){....}-{3:3}, at: __driver_attach+0x104/0x220
>> <4>[    7.893823]  #1: ffff88811671bb70 (&adapter->tmreg_lock){....}-{2:2}, at: igc_ptp_reset+0x53/0x320 [igc]
>> <4>[    7.894134] stack backtrace:
>> <4>[    7.894439] CPU: 2 UID: 0 PID: 286 Comm: (udev-worker) Tainted: G        W           6.15.0-rc3-CI_DRM_16443-gdc80d6a10c1c+ #1 PREEMPT(voluntary)
>> <4>[    7.894442] Tainted: [W]=WARN
>> <4>[    7.894443] Hardware name: Intel(R) Client Systems NUC11TNHi3/NUC11TNBi3, BIOS TNTGL357.0067.2022.0718.1742 07/18/2022
>> `````````````````````````````````````````````````````````````````````````````````
>> Detailed log can be found in [3].
>>
>> After bisecting the tree, the following patch [4] seems to be the first "bad"
>> commit
>>
>> `````````````````````````````````````````````````````````````````````````````````````````````````````````
>> commit 1a931c4f5e6862e61a4b130cb76b422e1415f644
>> Author: Christopher S M Hall mailto:christopher.s.hall@intel.com
>> Date:   Tue Apr 1 16:35:34 2025 -0700
>>
>>      igc: add lock preventing multiple simultaneous PTM transactions
>> `````````````````````````````````````````````````````````````````````````````````````````````````````````
>>
>> We also verified that if we revert the patch the issue is not seen.
>>
>> Could you please check why the patch causes this regression and provide a fix if necessary?
>>
>> Thank you.
>>
>> Regards
>>
>> Chaitanya
>>
>> [1] https://intel-gfx-ci.01.org/tree/drm-tip/shard-tglu.html
>> [2] https://cgit.freedesktop.org/drm-tip/tree/
>> [3] https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16443/fi-tgl-1115g4/boot0.txt
>> [4] https://cgit.freedesktop.org/drm-tip/commit/?id=1a931c4f5e6862e61a4b130cb76b422e1415f644
>>
> 

