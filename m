Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 206BD8AE0DC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Apr 2024 11:20:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4F7FF81ED7;
	Tue, 23 Apr 2024 09:20:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xj9rkZ855ziR; Tue, 23 Apr 2024 09:20:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4452781EDD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713864038;
	bh=1aIIIidT8WnRSN4jS+g4ebnpOMUzdEjmPxW1wPmWtcA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gaLs+qwH5F+CNdlRMKB0QMYd3uK/eVRgnbv6f7nCmUibDAx4QK0vNh4qzO+bVtgFb
	 v5PA8uTvRtOcwkIM7qLJCAvza6XJDwABtBAryvc5AOE8JVbL3L0/Qq1icl+n8zwdtz
	 pDjpj118GuAb+pXCRN0n7n2GwcxguoB0SUyhVpDcM9V9xTccvJ2wGKCec0g4E5VB6b
	 R6K4UJaflGodZ8k3BCme6RXjF5nvwKmLZyu5WNiet8c5bVRLz5yEddL9B761hslhTn
	 37QfIYdNiIXBwAmPHvc/1AVZx66hTziKcmkWoBAnmszGpqsN/xKa/Tr0kTN6rSdrnX
	 D7FiofiFJTHOQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4452781EDD;
	Tue, 23 Apr 2024 09:20:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3F86B1BF304
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 09:20:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3861B60799
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 09:20:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8rvPiTkSYTXc for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Apr 2024 09:20:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 091B36078B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 091B36078B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 091B36078B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 09:20:34 +0000 (UTC)
X-CSE-ConnectionGUID: Bie0+SVzSEyf1PRC7UIYRw==
X-CSE-MsgGUID: 32EcIYfATLK6RlK4jmOncQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11052"; a="13219618"
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="13219618"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2024 02:20:34 -0700
X-CSE-ConnectionGUID: ip4aFy6DQ9qcb2On7MimdA==
X-CSE-MsgGUID: X2MHu7AGS5yrVjHaOa+R8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="28965914"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Apr 2024 02:20:33 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 23 Apr 2024 02:20:32 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 23 Apr 2024 02:20:32 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 23 Apr 2024 02:20:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Or5npyKn4Ho1T75kfD6s5snTbQAnzeXyXLPpqs3ks59+8jpk2LdRGZBqIA8VAhNPOSGj3DGRiom/BUxv0x018hTpP56tUX+fxcX4ILIc8GUmkG/4WKKYaB4znEOQiKQo2/Bty6Y80Q+zeA5GajhNjzYTrUOUuBx8bqSGSi64lm9SEMmLW3V7M4pm1h27Ifomfn5+Q9p2RejC2ygMDP/Z3tJDropJR6frFXmsUyFdiDI3T90NbTCXY8cyCgUZNMQKLC7h/BqffH+nJ7Zf31BmEyGYRWqQ5S0k78BqTAl0AI1o/nTYjohTm2sEBpNaFbA8NAB3S83CgjJjUStFDYLHQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1aIIIidT8WnRSN4jS+g4ebnpOMUzdEjmPxW1wPmWtcA=;
 b=faxAdXYF8V7ojXmnK9YmaiIzQLsM/153eq8kbdE1x7yu8lL/Y2V+YrxpwcI6hGb64tohXwICUp4eCN29W15ihb3R5WyLG8g6gZSXzzV5hdSBgd0HekJUMNGoR7pfm6HV4NHTXgPkiko1uEs98kKKRG+cn4oX+JAG4FH/rxWgm+rQqU4dRqp7ABn4VF2FGh8N5elHY9dvV5ksbeqUp5G25UG6buFOZWxjO5XyZnqh+VBaD2f4EDiON9JK8CCWrNHUl0vPV1JYeHb4lKOW9aeoioWmdDhexr5gEIxVeFcx/AotDNR3ynjmctsDv7X46VVaAt8NsNjlDo1mfbvUw/SzeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB8086.namprd11.prod.outlook.com (2603:10b6:610:190::8)
 by LV3PR11MB8602.namprd11.prod.outlook.com (2603:10b6:408:1b3::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.21; Tue, 23 Apr
 2024 09:20:18 +0000
Received: from CH0PR11MB8086.namprd11.prod.outlook.com
 ([fe80::984b:141d:2923:8ae3]) by CH0PR11MB8086.namprd11.prod.outlook.com
 ([fe80::984b:141d:2923:8ae3%5]) with mapi id 15.20.7519.020; Tue, 23 Apr 2024
 09:20:18 +0000
Message-ID: <0e60057f-b242-4bb5-b3df-2c6d1ff39803@intel.com>
Date: Tue, 23 Apr 2024 11:20:02 +0200
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Bui Quang Minh <minhquangbui99@gmail.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Paul M
 Stillwell Jr" <paul.m.stillwell.jr@intel.com>, Rasesh Mody
 <rmody@marvell.com>, Sudarsana Kalluru <skalluru@marvell.com>,
 <GR-Linux-NIC-Dev@marvell.com>, Krishna Gudipati <kgudipat@brocade.com>,
 "Anil Gurumurthy" <anil.gurumurthy@qlogic.com>, Sudarsana Kalluru
 <sudarsana.kalluru@qlogic.com>, "James E.J. Bottomley"
 <James.Bottomley@HansenPartnership.com>, "Martin K. Petersen"
 <martin.petersen@oracle.com>, Fabian Frederick <fabf@skynet.be>, "Saurav
 Kashyap" <skashyap@marvell.com>, Javed Hasan <jhasan@marvell.com>,
 <GR-QLogic-Storage-Upstream@marvell.com>, Nilesh Javali
 <nilesh.javali@cavium.com>, Arun Easi <arun.easi@cavium.com>, "Manish
 Rangankar" <manish.rangankar@cavium.com>, Vineeth Vijayan
 <vneethv@linux.ibm.com>, Peter Oberparleiter <oberpar@linux.ibm.com>, "Heiko
 Carstens" <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>, "Alexander
 Gordeev" <agordeev@linux.ibm.com>, Christian Borntraeger
 <borntraeger@linux.ibm.com>, Sven Schnelle <svens@linux.ibm.com>
References: <20240422-fix-oob-read-v1-0-e02854c30174@gmail.com>
 <20240422-fix-oob-read-v1-1-e02854c30174@gmail.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20240422-fix-oob-read-v1-1-e02854c30174@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0139.namprd03.prod.outlook.com
 (2603:10b6:303:8c::24) To CH0PR11MB8086.namprd11.prod.outlook.com
 (2603:10b6:610:190::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB8086:EE_|LV3PR11MB8602:EE_
X-MS-Office365-Filtering-Correlation-Id: f2c32e96-b93e-4e3b-0ae5-08dc637697ea
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230031|376005|366007|1800799015|7416005|921011; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NzZSQW9TYXg0VkN2bGFmb3djNlZxbk5EZW5aVGdMSFVUc3NxOVNMditzMnpS?=
 =?utf-8?B?L0dYU0txQjh6ZWtjWWlWYzhJM216V1ZNenRHYnYyeWQvMDVGb0hoSzBvV3pl?=
 =?utf-8?B?L3pneU4waGxzQU5GOEdWKzNiMkNmSFl0L0J4ZzBqYldUdmhIanhLUHhzL2hE?=
 =?utf-8?B?cXZtdE81WnRWYkk0NmU2My9YWnlOdkhPQmFjL0ZQS2VwT0xhLzBRcGxoeldp?=
 =?utf-8?B?L1MrSFZKM3ptMkUrSFlIbzFXOHpJRG1JT3luVmZyUXVXZXZ2RVpoTWkvdzRs?=
 =?utf-8?B?K3VKdHhJalAvMURqZi8waDBqSWJRL0FpSHJCWnNmNWhINHJPdm9UdXRLZHRX?=
 =?utf-8?B?Rnp3Ui81Rk5ITDhXWHJQZzlseGk3M0kvR1FlVFRnN0N3VmZMbWMxZnVjMTM0?=
 =?utf-8?B?SnEyVUN5ZTRrMDNXVnJibzJSa2RaeEk0YjQ0SVdhZU5XWlNnYWIxSGhlYlZS?=
 =?utf-8?B?TVNpWlNEa2V4YnNEdUhLRUZ6VHdnRVdPd0xCZHBWNklRUHYyaVNCYStwc2FH?=
 =?utf-8?B?TDluVXQvYUMraGR6Tnc5ZjNYVXVYL2lla3pocDJvditIOEZlVm1neDNCYnl0?=
 =?utf-8?B?bXRYM2hJWS9sK3pYRG9ES2RZREdNd3ZBRFU1T2RFZ3dDRkFzZXFtRXkxWDFI?=
 =?utf-8?B?cU45L0s1ZW5SbFZxZGFabmF2aHNJeXBZVVNYSEZvMGNNZHJGbWV4b0NHLzRC?=
 =?utf-8?B?NTdaODkwMXVYakVSNFdWMmduUFozV2xnemlObHY1R243ZS9KVFJrVWdXV0dD?=
 =?utf-8?B?V3ZZbncwWDlGdnRLSFc0Q3NJbmRFajJkTVZTZ3lPSFNpTENVVUwyeUxYWXU4?=
 =?utf-8?B?RER2TkJxSGdPM1QwOWt3WlpwZlRhekh6YjhQVS82RHprK3RpMW5kb0h0VGhC?=
 =?utf-8?B?cnJqL1lzTHkvQmNHanZrdXNSeU1iQm51M2VTTXRkSHM4YTdVYmR1WGdCWnVU?=
 =?utf-8?B?T1UwZkpBSUcxRmN4VVlsT0VHQlg0eURJUVdQUU1IdUgvUmpJUzJHemcvTDF4?=
 =?utf-8?B?SkE0TWVOYTNyUWR1aTM2Y2JZY0ZRczJWSU9JQlRrcHc5aFRycDk4NzdoR05L?=
 =?utf-8?B?YVd2Yk5DaW5wTVlyNGZlVUZXMHlpTjF4OTdxUHpBcnRIaENYRXFRaE0yUEk2?=
 =?utf-8?B?WDNFR1FjWWxHZk84L2hHRlppWHFBbm1iMDBONVkxSXB6ZzRHMXAvRUpERUEz?=
 =?utf-8?B?UXA1Mk5YSXgzenVOak12czJtTFBXY0tEdGVLWEMyNHdBRU5Gd0pTdFNqYmgv?=
 =?utf-8?B?b1NZRUxPMTJVUTNHbjI4T0kyekJHZ0hNb0dPSWdUUjlsOUNZU3hzaVJlTit6?=
 =?utf-8?B?a0IrNEUvVjBRSGEvNzR4MVg1cGVuRG5qekUwTnZSeFhMMTBIeUUzUE0remJa?=
 =?utf-8?B?TXVKeEptMlBvZlRhZ2w3WkFMZEllbTVWbEZSRHl3V1VMdytNVWRUclFiaU93?=
 =?utf-8?B?R21aS29HY0tHNVpxZEYxZXlxeWNEYkw2NmdmSExmQytqYjBuT2tBYkxod2d2?=
 =?utf-8?B?a1FJaFA5QTcrOFNVcnhvQURxZCtzUklLNC9QOVR6SVBqZE8yNWc4TDJHV0dl?=
 =?utf-8?B?NHlEK3BzQ0hheWFTZTZLdGdyZGVXQkFqbXROKzcrSGI5bmdvSVZ4VVR2Z1py?=
 =?utf-8?B?WjFQWmcxMWhvaTIxN3BOSERIY1BHbU5HWDQrTFBEUDNwZ0NxdEY3dXZGcnFD?=
 =?utf-8?B?cFNRbWJSdkNueG01MXU1cjVSbW9lUHlUTHd1U0dvekhaZEtOMDJqOXUzdTJr?=
 =?utf-8?Q?zV+On06/FMSx3LPTV4w37nrfsAgspd6d/8fCtAS?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB8086.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(7416005)(921011); DIR:OUT; SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?djFHZHJFR05FOE9xZWVmZTJDM2xtNG9UNXY5VHZISE0zMm4xU3hBL2hUR2lh?=
 =?utf-8?B?UGlDRzRWckRxRXg1ZElIZXBJSUE3cGJReGpXYlJORGM1NDZ0L3V1MUw5R0dT?=
 =?utf-8?B?Tmx3K1pCMERJcEVUMnAzQStuanBzYlZKWU11eDlzdjVPMTdWTkFmbis1WDVw?=
 =?utf-8?B?OVlIcDdCMURka1ZoT0l3cVJ0ZHpLMld1eUg0VThFY2RCRmluUDhwdkNWYjlV?=
 =?utf-8?B?bnBHZmNIVi9DbHpvK00yQlJuQWlHclVBem1najhrNFdkRmNad0xWOFRZc1VO?=
 =?utf-8?B?NjdLUlZmYVFmVHdSMkViQ05Fb1JMU09Cdzl0MnovOXI5M1pzb3VzQmIzUllX?=
 =?utf-8?B?enFvMUF5eGJLUGhqTEIwcUo1U0pXZmNPOVQ3eFBEcHhYOVhMN0hoRnF6Q3Vo?=
 =?utf-8?B?eS91UTcrODVhT0FVbGRpNVJOM2VabVMvbmVJZXZFdmc4UUxncUhLajdlcWRH?=
 =?utf-8?B?eVRvV2RNTkNoYmMvaG4ydjNCTkF6VjdPRzh1bGI2UHV0Rmh3YzFiSVNPVU1z?=
 =?utf-8?B?YTVDd3p5OHMzWjFuamswV0xvbGZEVXNoUWtPcW81MEQ2MEJINit1cDhXV0cv?=
 =?utf-8?B?Q0cxUHovODN2ZDlDcm1WbjVmN08xaHVLemlydUdOZ2lLSWkySTRwZGgrQ2dO?=
 =?utf-8?B?MmRlZmlhMmc0Yy8rcWdGRDQyQm1vb1gwZHBHeDZCRGlJWWsyNVFRYk8zazBx?=
 =?utf-8?B?TS9oaHd3UXVUdUxETHNYT1dmQUN3QXFNdGVYSk9SOWhmR2MzREN2Ykhnd1B4?=
 =?utf-8?B?c3RJZEh1UUpvWENzcE9QbkpOSmVHd2VVYVhRL3BDWXhRSlAvZGdWcEh4V2d2?=
 =?utf-8?B?aXRvNDVSR0V4Z3lrZjV3aXNqWVcyTzk2dTM3Ryt6VUNLTUZwcnVXS0dlbE93?=
 =?utf-8?B?OTh2eW10Q1RkZDFTY3V5RU1ub2FSWEVpdmNFeWt2ZXlYYzByenRrQjB2TU9O?=
 =?utf-8?B?TE9uWEh1SzlIQ0V3YW9GZzB0YnJaVElNZzV5b1VrUC9qbVlEcHlHS3ZvaHcz?=
 =?utf-8?B?dXd1Q1hoc0pUdExDK0RBajVRc1BpOUFEUjR4ZmNiSk1pZlEzcVUzZWlnZzVM?=
 =?utf-8?B?R1BjblVkUDJvQ2M3TjRET0NtRWVJUkVyOFcvUzFGeDZqaXptVXZvRlM1L2FR?=
 =?utf-8?B?b1I5QTUxMVZNSFlzTE41MkJsc2djU1FONklSQ0xOUWlDa0pLRXp3Uk1lR2h5?=
 =?utf-8?B?eCsxbzdjZEMxbzdrbVVWdlYzMG10bW10aGROUTVKRzlVeHhWcEFKZW9uc2Jt?=
 =?utf-8?B?M0NqQjV3SGlCUXVubUlyTHc1ek80eWFqZGpqc1dsbFNSbXp3azFqeisxQjBC?=
 =?utf-8?B?UC9VWkpUTGc1c2VnUHVZdTZYc0Z3ZW8vdWJRRVRHZ0VtYmVhbnlPUTdHeStq?=
 =?utf-8?B?cGgyQkRTQmlBaHlIVlp2dGF2SzlNTW1oTTdqR0trZVdmRjRYa0sxdERIQWZW?=
 =?utf-8?B?bnROZ0hGd3orTTN4Q2cxMXl3emdJVW1sbzVBZ3FGM09TdHpCMVIyMTlQM1V2?=
 =?utf-8?B?ZGp1K0R0SlBmWURjZmlLaWt2RjhsbkxVYTZSV2xTM1RVcHIxRmNRNlhGMGVW?=
 =?utf-8?B?eEpuRVNlUGJpQVl2a2ViSDdmTU9tem50WFFtS0g0STBhS0IwbnpkQ2hUQ1Mz?=
 =?utf-8?B?d2dYOGs2aVp0WFBCOTAwVGhXcjI3L2lvTTdaMjdHUHdpOEFpT0J2UlJHSG1G?=
 =?utf-8?B?MUE0Mm4xR0xTMXd5M1NJNE5GZGM2Z05uOUVVR09hU2EzV1VXVnRIRVJQc3Y4?=
 =?utf-8?B?NW5qM0ZuTlY5VndHMHZKMmV1VTJNRjUvSUFHT05JSE5yRFlqT2FFbUl5enB4?=
 =?utf-8?B?QXYrYytLbmEwOExZcEsvUm5MTkMxWlRxRUtyM0I1MUFuOEkyVmZVYWMrLzVr?=
 =?utf-8?B?dmEvajIyQVBSaW5oUXJRcVpVL0sxU2NVbEFsdUdhS0tyeWVoQ1ZVa1BrRUZ3?=
 =?utf-8?B?V2FaSlFvdzBQZEFxUWhRTTRjUS9VT0hQdktGM2h1OTUzcEtZdWR0d1lYK0JE?=
 =?utf-8?B?QWJob252cFhUVjg3b0lGV3oxdXE5WnZPL3IyVG1lT1lDcHhsaEtmY1c4MnBD?=
 =?utf-8?B?aG5FZTY4SUdEaENMQ2ZYKzQxK25yVUUyRS9HSFpaQ2dQS01vdU9UTnlrS0dM?=
 =?utf-8?B?bUlNRFBnQ0pqUmU0VkZFT2NOaWs4RVpCL1E1NnB2Z0c0cExKRWhiSzYzYVd6?=
 =?utf-8?B?MEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f2c32e96-b93e-4e3b-0ae5-08dc637697ea
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB8086.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2024 09:20:18.8191 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6iD925zWFZL+b0YuWHAPPQMZn+roNsCUEun16cC0F263DmeAEEOngwzbTx+7hbnwnUh7sLGDqa1Qxkc+Z/YTEZt2u/YYu3AER8fh8Ik/EbI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8602
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713864035; x=1745400035;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YIPTGrvJfseM6GNQAl11LoRabFSwv6wk4z5dN3EWd8U=;
 b=kr3AKqmsG/i1pH0fVEEt73taQ1ApcXTzu69Kc6IgoP84Vm4Z4ObR8T0F
 ZCVO93PQMf/0X8ktaFqSbTaqeRc6RVt2swpvDCaRTFqi5WIVX20ic4qKR
 kAnjMVH8MT5e9pdAZZIUBuDjj7LsQ8D4K+qqgRdnQRRjykCRwVVS4z45r
 l0Iw4zSgXxY9131SGH2mwbq51xV4Mxtm/8TIZ4rOgg29kAoFGkTi906c+
 AY1d3H3VNAO6QLRc/VqkULub2S15Tes/CO2k21uZp57A9nWG2m0j+QAC/
 P6OrEtURFD/Bazrv5VCr8XnP8ZqNFTVxcNcKBsNeuaZOOFplNbqTjbgmn
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kr3AKqms
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 1/5] drivers/net/ethernet/intel-ice:
 ensure the copied buf is NULL terminated
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
Cc: Jens Axboe <axboe@kernel.dk>, linux-s390@vger.kernel.org,
 linux-scsi@vger.kernel.org, netdev@vger.kernel.org, "Czapnik,
 Lukasz" <lukasz.czapnik@intel.com>, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Saurav Kashyap <saurav.kashyap@cavium.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 4/22/24 18:41, Bui Quang Minh wrote:
> Currently, we allocate a count-sized kernel buffer and copy count bytes
> from userspace to that buffer. Later, we use sscanf on this buffer but we
> don't ensure that the string is terminated inside the buffer, this can lead
> to OOB read when using sscanf. Fix this issue by using memdup_user_nul
> instead of memdup_user.
> 
> Fixes: 96a9a9341cda ("ice: configure FW logging")
> Fixes: 73671c3162c8 ("ice: enable FW logging")
> Signed-off-by: Bui Quang Minh <minhquangbui99@gmail.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_debugfs.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_debugfs.c b/drivers/net/ethernet/intel/ice/ice_debugfs.c
> index d252d98218d0..9fc0fd95a13d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_debugfs.c
> +++ b/drivers/net/ethernet/intel/ice/ice_debugfs.c
> @@ -171,7 +171,7 @@ ice_debugfs_module_write(struct file *filp, const char __user *buf,
>   	if (*ppos != 0 || count > 8)
>   		return -EINVAL;
>   
> -	cmd_buf = memdup_user(buf, count);
> +	cmd_buf = memdup_user_nul(buf, count);
>   	if (IS_ERR(cmd_buf))
>   		return PTR_ERR(cmd_buf);
>   
> @@ -257,7 +257,7 @@ ice_debugfs_nr_messages_write(struct file *filp, const char __user *buf,
>   	if (*ppos != 0 || count > 4)
>   		return -EINVAL;
>   
> -	cmd_buf = memdup_user(buf, count);
> +	cmd_buf = memdup_user_nul(buf, count);
>   	if (IS_ERR(cmd_buf))
>   		return PTR_ERR(cmd_buf);
>   
> @@ -332,7 +332,7 @@ ice_debugfs_enable_write(struct file *filp, const char __user *buf,
>   	if (*ppos != 0 || count > 2)
>   		return -EINVAL;
>   
> -	cmd_buf = memdup_user(buf, count);
> +	cmd_buf = memdup_user_nul(buf, count);
>   	if (IS_ERR(cmd_buf))
>   		return PTR_ERR(cmd_buf);
>   
> @@ -428,7 +428,7 @@ ice_debugfs_log_size_write(struct file *filp, const char __user *buf,
>   	if (*ppos != 0 || count > 5)
>   		return -EINVAL;
>   
> -	cmd_buf = memdup_user(buf, count);
> +	cmd_buf = memdup_user_nul(buf, count);
>   	if (IS_ERR(cmd_buf))
>   		return PTR_ERR(cmd_buf);
>   
> 

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

