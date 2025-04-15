Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8598AA8A747
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Apr 2025 20:54:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF09561011;
	Tue, 15 Apr 2025 18:54:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t_O7w-_ouATh; Tue, 15 Apr 2025 18:54:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA74D60E61
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744743262;
	bh=vg1QdCYaNEqtdt96SmDBsYfzwxcu0Hx5F0xYWHxMAy0=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JqSvNoGs0Bda4WXauAb1TzQDRuSgVZzFXUiHlnprY8XTGfYneD9lAt0wKqw/7ViKw
	 QLZTd/fm7vwN939+l7n0NFDZnf0mwJ3gUTCXmogf36W+tfM7mZ+wtc/N/aOiPIUFLO
	 kK/XcSCSKva257g5vc6mVXg6jPbJfRPJu3K6kRWOfeQOSJ9RQGuLOLLdrRste3JCdS
	 7jj2xXlQkO3GrM+uGsPOwU1Dl4RiZgk/8S8uuvAR13byzLAZmWf/EntOS3dqGNsp48
	 HLM4yT/C5WrYjSeiqgNEy+pXQrjfRM35aaMQUTO4nmag2mfo2fdHO0qNr6BEm2qTdt
	 7zvtXdjOupxRg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA74D60E61;
	Tue, 15 Apr 2025 18:54:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id BFDA3200
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 18:54:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B00EF83AAA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 18:54:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DDB0KfwXwML0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Apr 2025 18:54:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EEFAB83934
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EEFAB83934
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EEFAB83934
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 18:54:19 +0000 (UTC)
X-CSE-ConnectionGUID: dOkMClo3TbeWDODTKgVkeQ==
X-CSE-MsgGUID: ekhvYYPAQ6OVZ14letQxEw==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="50069608"
X-IronPort-AV: E=Sophos;i="6.15,214,1739865600"; d="scan'208";a="50069608"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 11:54:20 -0700
X-CSE-ConnectionGUID: f2hUd3q8S6qndevyEALoPA==
X-CSE-MsgGUID: nwgy+BmCQCyw/6jaR8aOtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,214,1739865600"; d="scan'208";a="161163406"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 11:54:19 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 15 Apr 2025 11:54:18 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 15 Apr 2025 11:54:18 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 15 Apr 2025 11:54:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MhDxpirtvrKDrQQ/yrMrJ+peloedDuuf+MIoow+xLLmjq8+pyKVlMxifHtA+S4+v84ltEOXCdidmB+AqowvtLsRtvw8V/zF7nenuDge0lShWomfttMPsZ7ObEDAn+dusAyHz6EoYDHi55Z1OkT7iB4r2YqSwBP8UirGl0JH0TiW3yYUAFCmp2RW09reBlxtVyoC5BGKj/49GHaptAxA2eu4zUotOhVYlRrRS4KmVXd4S+oJUUmWp8pnjg9CKYLT9xqty9paDFPUCk5Ba0mEs3XtTXOGW/Utd8eB9TB9dYtDZl+L3fv0E7/mJD/oI7UZDOznzZCnCQTFPXpGaQFB6pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vg1QdCYaNEqtdt96SmDBsYfzwxcu0Hx5F0xYWHxMAy0=;
 b=W9zw9d19TCSOzshmjT7vZFD/vCFOZIbggzaCOlEJ7vj/KGL2ajHUc81ORK47GzimhaDkJuADNTnity7ysA8qlONvq3GfCzWOH7hZ/BW4zb19ZsiGu8y7ir+afUs8NNXTheEfeoGDR9qkVRRcTKS4FExPIslpzjZd9mJpiPLlPbNN8NhlfbIQ2hUiS7l5+fzkTMOArAFzyu+yPm7ITu0N+Tr4rpQ5dmd0JT+/uQvglsPf0Ovz07fWYwCSw7JEDoprkX5wLAZE8xZB6JYnLy/ATz+oGS7TgVGa4wORT1i612FDRHjsAIzz6f3jxYmxj9LlFVMt2TFSmne57AySq4N59Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by MW4PR11MB7006.namprd11.prod.outlook.com (2603:10b6:303:22f::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.33; Tue, 15 Apr
 2025 18:54:15 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%4]) with mapi id 15.20.8632.025; Tue, 15 Apr 2025
 18:54:15 +0000
Message-ID: <4b208c4e-10cf-48e4-b10d-6f52a25ffc07@intel.com>
Date: Tue, 15 Apr 2025 11:54:10 -0700
User-Agent: Mozilla Thunderbird
To: Larysa Zaremba <larysa.zaremba@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, Jiri Pirko
 <jiri@resnulli.us>, Mustafa Ismail <mustafa.ismail@intel.com>, "Tatyana
 Nikolova" <tatyana.e.nikolova@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>, "Lee Trager" <lee@trager.us>, Madhavan
 Srinivasan <maddy@linux.ibm.com>, "Sridhar Samudrala"
 <sridhar.samudrala@intel.com>, Jacob Keller <jacob.e.keller@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, Mateusz Polchlopek
 <mateusz.polchlopek@intel.com>, Wenjun Wu <wenjun1.wu@intel.com>, Ahmed Zaki
 <ahmed.zaki@intel.com>, <netdev@vger.kernel.org>,
 <linux-doc@vger.kernel.org>, <linux-kernel@vger.kernel.org>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>, Emil Tantilov
 <emil.s.tantilov@intel.com>, Madhu Chittim <madhu.chittim@intel.com>, "Josh
 Hay" <joshua.a.hay@intel.com>, Milena Olech <milena.olech@intel.com>,
 <pavan.kumar.linga@intel.com>, "Singhai, Anjali" <anjali.singhai@intel.com>,
 Phani R Burra <phani.r.burra@intel.com>
References: <20250408124816.11584-1-larysa.zaremba@intel.com>
 <20250408124816.11584-7-larysa.zaremba@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20250408124816.11584-7-larysa.zaremba@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0271.namprd04.prod.outlook.com
 (2603:10b6:303:89::6) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|MW4PR11MB7006:EE_
X-MS-Office365-Filtering-Correlation-Id: 87d59bc0-6246-4974-5756-08dd7c4eeb42
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|7416014|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RDJoWFNuVTJzMXdTL3RvQllnTG8wU3ppR2RialMyajJPVXJjVkdaL3pMcStr?=
 =?utf-8?B?M3Z2OVNvakdqemM3TnRkbmtoUTRHSEhObVNXUUVFaWg0NTNISUtHUXN0SDlJ?=
 =?utf-8?B?T1N6VzdlRThSVWdGR0pnS3M2RGdaWm9wa3FCVTI5Z1R0V2RONHVEK0NZVFlp?=
 =?utf-8?B?eXJjWjVBU1NNRTNaSUN3cEtmd0RFTUFibThZZ25BYkNVTXo5cW9LWklMVEF6?=
 =?utf-8?B?dkY1a2xId3pGcHRMWEFwdm04T0sxNUpOcHNUYk5RTURVd1k0UExpc0xhVDQw?=
 =?utf-8?B?eWRhbnhyT1l2d3lGajUyVmZrclBYeElHWmpoZG9kTndubk5heStqUG94MDc2?=
 =?utf-8?B?WVk4VmZGNzZvem9YYnFTQ1lsMjlQQm5OZTNrKzNLNkVEazV3QUZaNk1jQ3Zp?=
 =?utf-8?B?TmlET2RsKysrQjVlYzdUU0Y0VitDT3VmOHJsTHZjcXY3QVlQeTVaS1NpQTdJ?=
 =?utf-8?B?c3NkWnU4ZDFOQ3BHeXdKNUptbWF4eFRHVGgxVEQvaExUdHFWN3V4Z1ZuUGp6?=
 =?utf-8?B?WFRVbDJ2RmJzYURYTmFDbGRQRWM2TWdBRy9mSzFhLysrL0dZOVhtc0VkbEFr?=
 =?utf-8?B?alRHdWpUYmFkeEp6WklNR0lhMHZJdlBTWjE0amdxMFlna2tVcElVVGgyTVYy?=
 =?utf-8?B?NUdJNXhZYS9wNE0zVkVCeEZMaVMvN3NxeEIyU3hIRVdmdTdnTEJxZnpDcDM5?=
 =?utf-8?B?ZGtxclFWK1dQYUdGcTQ0TkdlV3A0eW9BQ1BBM1BqWDU1KytwUGROTVk3SnZn?=
 =?utf-8?B?N1paT05pcldPSUptcUM5Q09IRnRTaGhyNHR3V3lMM1FuanE0VDBnQVdWMnhw?=
 =?utf-8?B?eUxSQ3lwcWdmbGUvTC9CL2I5WFFIOUNKanZFRjBtQWlhRW5wa1paN1kyN1ZQ?=
 =?utf-8?B?RmwxN3hYbTdzamRJekwwUjhvc1ltR1JhaWw0YTMvaE9tTUJaczNYOUJXZkRJ?=
 =?utf-8?B?OHliRFpwOWI5NEoycEwwUGJ3ZElOQk5NRjI2VjVaYVZHZE1CaGFaUDc3amNJ?=
 =?utf-8?B?VjNWUDNxYUpHK3lCRHZQN0FMbFhkOEZlWStPcUFqTkY0cXg0eXd6UkVmM1V1?=
 =?utf-8?B?R0IwWXZqVjR2dDFKV09TYXh0ZnE3T0VGcXl4NHJIRkh4WmJ3M1F3d3dGUWkz?=
 =?utf-8?B?ekxiVmNsVEd1UzZDOVc2VEpjc2ZHRkQrcVRoSTMyTDVyeEg3UXNrdnNWL1ow?=
 =?utf-8?B?K2hNSm94V0JjV205OTZWRksrd1BYZ0lIRkdvTWE0LzNKZXV5QTRoWHRKYmpm?=
 =?utf-8?B?cGVVcDJLYmRWTllkbG82bzB6d0RXcGZFbnpjWDd4Z3FZWkI4YjIzZXhJR2gy?=
 =?utf-8?B?N215VEZBTi9uMkJmbXAyRHJXTi9Vd1NDeFZ6WFF4b0lqSHF4MkFQTHpSa3FM?=
 =?utf-8?B?NTd4ZXRzT1M0eGdNUWhwaWt0TkJwL1V2VDBqcnl3Z0c2Wk5LSlRTUFNaLy9X?=
 =?utf-8?B?Y2lJcW5OdVZuWEJpRGpLVGJYZ0JyYmNoSGZTQUlYL1ovdzhXVTVvQzIwLzYy?=
 =?utf-8?B?aEZPRy9XcjJ0RFpiSHZyM0p1Y0lIQnU2dFdwZXFWbUxSOUlqRHBHbVJySVFM?=
 =?utf-8?B?M3NGQzl6dmhBeG4yYXd3UWpSQnZxUlMzT29TOWxPQWtEeXVVd2g2WEZjZ09k?=
 =?utf-8?B?REhBVlZuS1c5dnRDejV3U0FSQzZ5bVBVNlFKVERkSzNWOUxsQTJZbDBDZ091?=
 =?utf-8?B?N1pmdjhsTlJQWkZZVWlXVkczOFlTUmlpYjRrY21xNGdBayt6MXMyOE1nc0NK?=
 =?utf-8?B?MnJxRVJSZndLSFNtZTNwcE5IcExIOWR2TW1CczBGMllXQmR4SWVhNGNVTmJ4?=
 =?utf-8?B?c29Ockc2R2Y5Tyt6ZnI0MnNVT0ozQUdwZFdXSFJuRk9oZFNNU1VvcXFKMHQ5?=
 =?utf-8?B?OERnTmJvd0JOTncyOU1UZGNXcHQ3NlFBdDhWYmhWMk1MWm1GUDRnMGVrU1Yw?=
 =?utf-8?Q?kWKWxjG+a8Y=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bFAwUG5jNFdFUFhZZHlGY0xUblp2Z2R6RUNhblVPMTJUMkpYZG5vL3lRa0VP?=
 =?utf-8?B?VjJCWi9sa1hzUGxUMllmbTVuaEttNk4wZTdkWitNSzNoaXBjMkk2eDRRdkpB?=
 =?utf-8?B?STB1M2d4ZjdCR0NnQzErcUhrVk5Qc2xIVmVldFhYeUdZZGJBbEo5b2hGTEtN?=
 =?utf-8?B?c3BXbXVReFpoNlJmL3p0bHBGR2tRYWpPVWRkcHBTNjdJMk5CRkFodTNjTWdw?=
 =?utf-8?B?WVVRaUZSbkFzUGlraFFvd0EzdzQzRjBXTkJidklaUGs0Y0c2VFpoTG1XYnZw?=
 =?utf-8?B?ekZXMnJWTDdxSTJMaWlMYmZXcUNsck1DVkpsQ3JpT05wRmZ6bndFSlJkUzht?=
 =?utf-8?B?dzJiak9LbFpYT0tGMTlSZzNGbGNpWnJTREl2WHpxeGZDc3NVOGs2Q1p6OHJE?=
 =?utf-8?B?MTFDNC9YbW15RWNiRlpCQndGR0FndlcrRm55MUdKbjJJSzJTS2NWeVlBamNw?=
 =?utf-8?B?MVJOUzJkM0Q2OEZ1dFdVQnA1dzF5M1FWMVkzME56cDVhRWZjUEl2a2t5NkJE?=
 =?utf-8?B?S0JtVEFwbU9CUUdmcTNEMWpUM001dzArbm1JMEpteFdoSE4vRkl1di9VRTR6?=
 =?utf-8?B?NUpFTFp4NDlaTnlJTWxyTWVTYkpiMCtYTDl3VXM4c0hYYkdxbVJ2YWFycVhi?=
 =?utf-8?B?VTAwaytaT29oNmtNRkF6NUpKaDRoV0NTd0I0c25Jc2pjMXlkRXo3ckI3TGN1?=
 =?utf-8?B?S3NhVnJMcTNyMnVpdGpCc2RFWlpsQTh5akxUeHZ5QWozRmNYcTRURDNPem5q?=
 =?utf-8?B?Ny8rWGZNOWxiK01TRXJuWHYrdml6VCt1TWhmY3dReG5DdGhJSlVaZmZmNW83?=
 =?utf-8?B?MVB6NGVSZVBZMlNYZXQzZUFMS0h3UlczdVY2YTBtVjYreG9BTFo5b3gwVnNI?=
 =?utf-8?B?YzhtRmtPa3p3L3BielJwV3huYVBueHpXemRjZlRvQ0VUTzhyR2NkMWdIU2c1?=
 =?utf-8?B?WHhlc3E1aU9Hbnc1Y0dlaVcxKzhCNkJkNTBoKzc1Y1RsMkpFelN4OW51eGIy?=
 =?utf-8?B?WVNiZDRRNnBlVDBIMGxrODc3TWxhMmxSK0QzK1hKRktTaFdPbnkzSnlkR09W?=
 =?utf-8?B?V29tK2tVZ3pNYkk4RksvUStDNE9lK09jWmJxV20ybW0zSEpmcFRzSmNpaUlh?=
 =?utf-8?B?MWhRa09TSFQvZjkwb3BxdTVmRWhHMjRCUjZFSUdOTFpXU1VWUnc2SXVlb2k0?=
 =?utf-8?B?ekx5VDJlQXpsME1aY0hQR1ZHbTBjZE12STdOU2d1NThJOVNIMVRVV04vUDl4?=
 =?utf-8?B?UTNYeDhoNXd5a1BIWUl4UUJQdzRhTUc3MmZ0VFJINFJ2dkVoMCtSMTVsRXp0?=
 =?utf-8?B?WjdORFdqZmtYYUZZUEwyL0VOSThsSE9yYWRLak5MOHBGVXBlVGkxdkVtZEhP?=
 =?utf-8?B?UFllbWhYMlBGVlhubnArU290ZTlSbVNINk9xN0RQVlM3UGsweTA5TUhaSGNW?=
 =?utf-8?B?U1plckpqL001RCtIOEw0N2xodFpXZXgyQW1KZDdGUGFHeU1DV3o5RmlLcVhV?=
 =?utf-8?B?VlRXL1BFalN1UlIvcE1Gcmh2NHBOZlpOaCt5c2RBaW16WmNYUmw5bGNZZGNw?=
 =?utf-8?B?cnB0c3lWZW5Uc0Vlc0VSQlcxSHFUd3piRzQ4bTlOMDVXNGRQZUQ5UzhhWDJN?=
 =?utf-8?B?SmVjVnh2MlArUHNzMU0wUS9HOWJmWndlaEtnbmV0eXhjY210eExCWmduOHhx?=
 =?utf-8?B?L3hlR1ppYXNzS2ZLM3NYb3JIMkJ6c1F0Y01mQnIrMllSMytLMEk1aStmN2Iy?=
 =?utf-8?B?NEFRMmlXZFRDc3B3bHN1TmNzTGRSdGpiVE1xQ1BpMWlONndZZzkvZnNqTmRI?=
 =?utf-8?B?UEkxWWk3Y2pwYjk4T1VScnRSalpWd3pheG1oemhWNDNEbEFmTlhSQ1d2Mkpk?=
 =?utf-8?B?MGg1SEZyOWFyMndjd3ZwL2c2ektKTW5pQ1I4QlZVVTdSTE0rSFlNQzFHOW13?=
 =?utf-8?B?NGo0SldrVTcrSnNkQWh4Wk1KalgxcDB5YjV1bW8vM0N3VHFaU0RQLzBacXRI?=
 =?utf-8?B?Uk9kbGlMTGNTSnRFNjZnYmhIQ0h0eUxkWjZ5SHY3SCt5dGlMOFVnVXBjYzln?=
 =?utf-8?B?NGV2Z1ZvdCtqVXpaZE1yWURkL294QmZSNms4aVBwY0l2NHhITWw3V3NUVzdp?=
 =?utf-8?B?SVhjNXhOTUo5V2k2bzNGUEFLRGdmNGZMQnVPSWNack8wMkR6ckRLWnAzRlRF?=
 =?utf-8?B?Wnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 87d59bc0-6246-4974-5756-08dd7c4eeb42
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2025 18:54:15.5204 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Oh3w7xIW8Bz8BjJSFlrBeBnN0M8spPYxOzVDoKywZPB6CiqWXgYWX/kr7WGippJzbx7R16fE9n5JvyazRqjrYIijQ+pmEI2qlpdnEruFYLA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7006
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744743260; x=1776279260;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=i93nJuO55J/nn79qsMcK3yziTdR4QM0SjWifl7mCx5o=;
 b=Q9/bzn5AhEq3iS1k2rJ7T4WiPPzKvQrqE0A1dtOMg8jyMhXiAUiwWWXb
 KJVOi0UA5/8uvYwRBNYDF2QLtVejEVPWcffUZomnwJmHRETmy/9+pCz1Z
 XsRwK7MnE15Vr/OH4IBLTfymXM0og62b8l1YCqNZlxRaU3aXIA+fbOjt9
 k3XhH3hQuuiU4lsRtu/XRsKDot34Ie6qHTOAQ6aimlONhdinFcmbimwN+
 8CeB35Q26SgPlIdhOwt6EWhRHCWC/qdVDwPuTDU+CIIzWOa7/++kRv7cg
 pZE31aSXjONDXV0+p/R1xnIV9QBXNxhCx1BDtP/IE5VFOnyQSN9Z0wwL0
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Q9/bzn5A
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 06/14] libeth: add
 bookkeeping support for control queue messages
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



On 4/8/2025 5:47 AM, Larysa Zaremba wrote:
> From: Phani R Burra <phani.r.burra@intel.com>

...
> +/**
> + * struct libeth_ctlq_xn_manager - structure representing the array of virtchnl
> + *				   transaction entries
> + * @ctx: pointer to controlq context structure
> + * @free_xns_bm_lock: lock to protect the free Xn entries bit map
> + * @free_xns_bm: bitmap that represents the free Xn entries
> + * @ring: array of Xn entries
> + * @cookie: unique message identifier
> + */

Some kdoc issues:
 > include/net/libeth/controlq.h:330: warning: Function parameter or 
struct member 'can_destroy' not described in 'libeth_ctlq_xn_manager'
 > include/net/libeth/controlq.h:330: warning: Function parameter or 
struct member 'shutdown' not described in 'libeth_ctlq_xn_manager'


> +struct libeth_ctlq_xn_manager {
> +	struct libeth_ctlq_ctx	*ctx;
> +	spinlock_t		free_xns_bm_lock;	/* get/check entries */
> +	DECLARE_BITMAP(free_xns_bm, LIBETH_CTLQ_MAX_XN_ENTRIES);
> +	struct libeth_ctlq_xn	ring[LIBETH_CTLQ_MAX_XN_ENTRIES];
> +	struct completion	can_destroy;
> +	bool			shutdown;
> +	u8			cookie;
> +};
> +
> +/**
> + * struct libeth_ctlq_xn_send_params - structure representing send Xn entry
> + * @resp_cb: callback to handle the response of an asynchronous virtchnl message
> + * @rel_tx_buf: driver entry point for freeing the send buffer after send
> + * @xnm: Xn manager to process Xn entries
> + * @ctlq: send control queue information
> + * @ctlq_msg: control queue message information
> + * @send_buf: represents the buffer that carries outgoing information
> + * @recv_mem: receive buffer
> + * @send_ctx: context for call back function
> + * @timeout_ms: virtchnl transaction timeout in msecs
> + * @chnl_opcode: virtchnl message opcode
> + */
> +struct libeth_ctlq_xn_send_params {
> +	void (*resp_cb)(void *ctx, struct kvec *mem, int status);
> +	void (*rel_tx_buf)(const void *buf_va);
> +	struct libeth_ctlq_xn_manager		*xnm;
> +	struct libeth_ctlq_info			*ctlq;
> +	struct libeth_ctlq_msg			*ctlq_msg;
> +	struct kvec				send_buf;
> +	struct kvec				recv_mem;
> +	void					*send_ctx;
> +	u64					timeout_ms;
> +	u32					chnl_opcode;
> +};
> +
> +/**
> + * libeth_cp_can_send_onstack - find if a virtchnl message can be sent using a
> + * stack variable
> + * @size: virtchnl buffer size
> + */

and here:
 > include/net/libeth/controlq.h:364: warning: No description found for 
return value of 'libeth_cp_can_send_onstack'


> +static inline bool libeth_cp_can_send_onstack(u32 size)
> +{
> +	return size <= LIBETH_CP_TX_COPYBREAK;
> +}
> +
> +/**
> + * struct libeth_ctlq_xn_recv_params - structure representing receive Xn entry
> + * @ctlq_msg_handler: callback to handle a message originated from the peer
> + * @xnm: Xn manager to process Xn entries
> + * @ctx: pointer to context structure
> + * @ctlq: control queue information
> + */

and here:
 > include/net/libeth/controlq.h:380: warning: Excess struct member 
'ctx' description in 'libeth_ctlq_xn_recv_params'

Thanks,
Tony

> +struct libeth_ctlq_xn_recv_params {
> +	void (*ctlq_msg_handler)(struct libeth_ctlq_ctx *ctx,
> +				 struct libeth_ctlq_msg *msg);
> +	struct libeth_ctlq_xn_manager		*xnm;
> +	struct libeth_ctlq_info			*ctlq;
> +};
> +
