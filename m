Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BC701A8A742
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Apr 2025 20:54:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7DCE6412E9;
	Tue, 15 Apr 2025 18:54:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a9tzWV0LJGCm; Tue, 15 Apr 2025 18:54:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D5CDC412F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744743255;
	bh=aaGnymxidDE872Q/S8Ypz/n6vrfjuH3tCPcrN4GC6/U=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=267dYjiRzOz8njl/A6+CctDjDQ3hN6qn/qlstrkEygcbyp2IkEZLKWWB+NzGcK1GE
	 UggvjnpEfiqpRy8bP9nkjyZRUroYq+Cu3uoTw5evVGqp2HSRiocvZcHu/vtVkxTRqg
	 J+5Fxb/K3y7ozzqc471XismX10t+N5BKQbSd/rMJ6wyVqXAuVIXRXDni2cIKmZ3bt1
	 7VlW1KcZ8gxQvGXfUKOmx5IAHrsvMLkIGAfvGhLF8JbDfmXqO4JqW4iwJ3KZNULWfE
	 jx7QuzzuPg2XYwP6MC7Wram/d9DAYOizBc/xMxwAQLzShIhdkSVIbxBAflJFDT3vJ6
	 jOFY0Bmz6Fo5A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D5CDC412F5;
	Tue, 15 Apr 2025 18:54:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id BC402108
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 18:54:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ADA7A412E9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 18:54:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id extSYlMHUlBj for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Apr 2025 18:54:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C966340359
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C966340359
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C966340359
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 18:54:12 +0000 (UTC)
X-CSE-ConnectionGUID: ZUxBSG3hRQ+cXprEonMHWQ==
X-CSE-MsgGUID: OvgVMFYPS2OH0+UarAS2vw==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="46357919"
X-IronPort-AV: E=Sophos;i="6.15,214,1739865600"; d="scan'208";a="46357919"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 11:54:12 -0700
X-CSE-ConnectionGUID: iqPstH4rRYS1HMTkkBF0Yw==
X-CSE-MsgGUID: kYPPrv3kQb6lMQmy36guuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,214,1739865600"; d="scan'208";a="135053144"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 11:54:11 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 15 Apr 2025 11:54:11 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 15 Apr 2025 11:54:10 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 15 Apr 2025 11:54:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xLPXRBC68uXePfQL+o9cBvtRRAEPrZ780cKYVUtfbWNzKvXfG0aEoH7lVu4aWU6eo1aL1y0fn0zvzGt8qfMybojrK9AXJ1gO3Q2YLcFJsD53WKkOrMUktkl5AR0T3OHHvrA/KqOODOaSFy+BBSW4nbdNNkYfbohaiL+WQmUy6/r1dq7laCL3QT7PeQSGKbp5qcT7hUvHmhDGhRpYLFP0TDQEZ3fHXQVkYmFXunRB5OTYmqGJLDFPW4sgxAfMj1ruawu4NifUE7PkQItK8xF+bXIXoBBDDdJUSDbDDJ73i0EKXCfogZkpGDUGeeZNdAEZzSaxzQFjqLspH7+LB3I1wA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aaGnymxidDE872Q/S8Ypz/n6vrfjuH3tCPcrN4GC6/U=;
 b=w/dKq2/qY3Jr6ASFOvUQfzL/7+/q5D+aLQD1zM9L8dl1twyS4SuKhk4T4Ioyr/np1JnZmLhHHZZADg1ZzQEpyg9y4crdHgBeIohmUe10p/IrhiG9Haigj7rZznyare83ik2RGZWrCbV4vRyiFMzD/aw9ZjG2aL9Vj5TIttVaVRk7ffD3bgqOVAkxnnYc6MZdl2CDORfv+/TQsmd+1SpcHPmGY37sY6jv3MA/yN7ifKy5CpFl8plUfzeO1+NJjqEzrwAOm0mAMuQooTm+fSMMBkynM/PBqG00l7tvFqRVhIksX+g5VpiwEbQLKU3tRd+T1hqlMS0Lsmz9rIb+mNaAQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by MW4PR11MB7006.namprd11.prod.outlook.com (2603:10b6:303:22f::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.33; Tue, 15 Apr
 2025 18:53:39 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%4]) with mapi id 15.20.8632.025; Tue, 15 Apr 2025
 18:53:38 +0000
Message-ID: <4e36ecce-18f1-4298-bfbc-108be96208c2@intel.com>
Date: Tue, 15 Apr 2025 11:53:33 -0700
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
 <pavan.kumar.linga@intel.com>, "Singhai, Anjali" <anjali.singhai@intel.com>
References: <20250408124816.11584-1-larysa.zaremba@intel.com>
 <20250408124816.11584-2-larysa.zaremba@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20250408124816.11584-2-larysa.zaremba@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0280.namprd04.prod.outlook.com
 (2603:10b6:303:89::15) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|MW4PR11MB7006:EE_
X-MS-Office365-Filtering-Correlation-Id: 8d7ead6d-c97c-4a7b-3ac6-08dd7c4ed513
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|7416014|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?clBGUy9QakdqYk1ZU3BHbUJISzZ3c2F5bUk1UGZhYlZJV0ptczh3T05LRzBX?=
 =?utf-8?B?MlNEU0svZDBBck9tYTFnbGNRRXU2RVlsb0E2c2lEbE1OM3UvUUdobmYzUjVY?=
 =?utf-8?B?aFRwdXNIK3prdElKbnV0V20zWHRUTkxKdkMwR3lGVGEwYndqM29LbmFmQ3Ri?=
 =?utf-8?B?VkVrOWpOeW9YaE9lOWZUb2VLSXJtLzVXM1Q4M0t5YVhWeWwyN1R2M3FUMmdH?=
 =?utf-8?B?ZUpZUEFJWXZHMnVVdFhQMTNJNHdBaWFhOUpjTnZ1Yk1PeWpqQVVyUGI3eVNW?=
 =?utf-8?B?eFdGL2hvdDR4YksveDB6cVR5MGFFSDRqU0lOcTNIaTVPa3dqTXlaS1BjVlFw?=
 =?utf-8?B?c0lVMWRwcGJvNmlHWDdNdkpZMG5YWHBqZXFhOGdLOFE5YUhEUWMrb3VscExj?=
 =?utf-8?B?bUYrbWFtOE9WZW1ld0d1aXFabWg0RUFPMGZuOEUrY3ZZTC9LcjYwY1h3UGl2?=
 =?utf-8?B?ZUpZQVZWSVJnR1VUc2NQS2N6Wkp0TktlY3lWSE5lZ1VzWnl6YW9yV2tYT1ZJ?=
 =?utf-8?B?aGhaSGlRd3MrMFBHeVlMd2xUNmFtcmRwZGtYY0dNY0MwdE9DazdVdlpnZDJX?=
 =?utf-8?B?MGt4bTRETWxReEtiakdheFFTd2M4WmdsTHVpQzN4MGJGcmRENkZnOE9SUEJQ?=
 =?utf-8?B?MW9yeHBnaXZwc09Dd1JXVWl6dy9wM21RbTAwazBxQ1RZeUt3UHhlWTdrbjhD?=
 =?utf-8?B?V3NVQjQ5UWxxUGdMUTRUVkQ4Q0lrVkN4N09NbVFyczRsOTVjR3FUVEc2YzJB?=
 =?utf-8?B?K0hvblRUVXFvUUc4KzI1ZGRGSEtkdnEyRVJuSE8xeWdINmliUnZiS0s5cFNw?=
 =?utf-8?B?blZxOWMyYUo1T2h6dWFxVFp4WlJleDBvc1c4eUpzYmRTbXZBWFZKeS9OQzBZ?=
 =?utf-8?B?U2I0bW1HWnVzYzZ3Z2FhcGlSUndUL2wyNUZzL3VKUStZMWpaWXVQVkJpa0pM?=
 =?utf-8?B?d2kxdGtGWElzSE9mQ1g4NkhQTTgzdG1GaWpPWktOaHRyTWUyK1JrSDliRmVI?=
 =?utf-8?B?UU5YVUxoVEI4RHRsVEZmUFRrSzUxVVRKZ0QxUWVEZXZ2djFlcVk0T2IzOS9x?=
 =?utf-8?B?L09IbDBEalRDUUljYXZhQjVzOTM0STFoNkNxdU94M1FaTTJ1azJrbWVQSDgy?=
 =?utf-8?B?SVg3dG5CeVBtMWxReVlnT2lYZVhDbWd6RlJiSk5zTE5uMTV3UkpuVEt6S1I4?=
 =?utf-8?B?MEUwNjZWd3pDYXF5WHdadnRkL0lWaUUybUFlWFFGRkREQmxScG9OSVkxZlds?=
 =?utf-8?B?aU9jMmxFV2xUNTI1RitNcTBWMEVVWkRWQktvY0x3Mm5jc1h5SEtLYjJ0YUNs?=
 =?utf-8?B?WXVob3BXYkMzeGQ3OS9BMnVWZzVZekhONlptbXZ2MUZYRzVqNnZGSmFsVmJ0?=
 =?utf-8?B?L1FJZSs1Ylh4Z0hxSll5cUpUNkpSQTVIZlJtUmNrWHF5a0lPWU1pbVNPdnJr?=
 =?utf-8?B?b0dWZVJ6eTA0U0UydWV2bkVkTTB5STUwUUM2RkdFVHNRT0pZdHhQbmpVUHl4?=
 =?utf-8?B?QVhGbStRT3pLeGtZcmU2UE1ZUWs1N1RjK3hGMHRNTjI1UUU3WGJaVm41TEY4?=
 =?utf-8?B?VXNnb0FvK3ZDMVliUFJRYXRJMC9rR0VIbGVvd3g5NW5ZWlRwRThOaGFiVEVQ?=
 =?utf-8?B?Mmx3a1dKK0F2a2ZjV0ptaXc5QnBNSWtSOVFCcms3enJXSDBKa28vK25YUXM5?=
 =?utf-8?B?Yk1PbnBiWHRCZnZYdDRuaUlNUlozU29SMFlPT09vWUhoMEkyV1Y4Slc4N1l4?=
 =?utf-8?B?ZjBCZ1VzZjExS1N4bkFzYjdEZkFaY3RvVE81QUlldjBxUFExZmFnNE9ka25W?=
 =?utf-8?B?ZU5nMUpFaHBzalUvdzVRZEFBSmp3QXFSeGJhUG9iZWxXcXhqTS9nZ0EwaE9M?=
 =?utf-8?B?YnIvVFhLQndXcGp1N0F5UnNXNFJCdzY0OW1jeEI2K1prVVF0UkVzMTJhY3Vw?=
 =?utf-8?Q?JXzCfJjk9MI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZkxrdXJJTTNtTlFIdnErTWpURDNzcjBCTHhMSmJQNnB3ZkZmOWU4Ung0SWpP?=
 =?utf-8?B?TVUzcVJORHNtRDZFcXJvaHVsR2JDcWhBeDRwL2pTdSs3NjBBZkUyZjJMNTBY?=
 =?utf-8?B?dUVsQkFyVUwwQ0RncVZySDZsSG96VUprUWM5T2pWUGwwTWpMYXRnODRXUEFp?=
 =?utf-8?B?elBqRjJ6TWZKWUVkQ1M3Y3RWNzlPNDNpTmZYaEhNNTI1dVRNUmRaUCtPWE5t?=
 =?utf-8?B?ZTFHVHRIVHQ5aUl2N3M5WS9WYlJiYmU5OUhzUnpnYmwzTy9aZlN2SHZuNHlj?=
 =?utf-8?B?R0xHWG0wSklIbExUY0lrZlp4K3BsdENRRWM5U3pxTzRMMENsUitiU09yVHc3?=
 =?utf-8?B?U1lhU1V6RXVVa1BNd2tHQ08wVHVoTDEyVmszeUlqSmFXM0lFWndpQTd1QVFC?=
 =?utf-8?B?KzQ1YjFFU0VCVmIzNjAxeFFxSTkwS3ZyVmc2anZuVG9USnpRaThNWUFZTmNF?=
 =?utf-8?B?NUZtdHg2SjZkQytxWHhxME96SVR3cFphTkdFb1BGcFdQaUI1azZld2syRXlj?=
 =?utf-8?B?eFROTEFMeStOcEpjc1BTR29FOHZ1U0xNUEZ6dXl2blpHczVDalJ0RjVwRC9V?=
 =?utf-8?B?Qkptdmk0c2V5bEU3Nkl6MWJDMktiMUFIRVd2Zmg2aG1YeWNtYTRQck12UVc4?=
 =?utf-8?B?R2dGbVFaaExmSzJPQnE0THdyUjJJM0N6bFRjSEpGSWgxa1JuT3FiZEd6Rkhs?=
 =?utf-8?B?cU5henpVVVpyeVRWVDBJMFFxdUdzd08yVGQ0dERNTXhjMUlrRG0vekxGc2tw?=
 =?utf-8?B?bXFKaEhpaWwrelhtdFJ4QlRja01DN0ExNHpZY3pObXB6eUlFVVdRakJuc213?=
 =?utf-8?B?UDQwdXA3SHVmUXVTTXVlNDlKUTdvdGNhVjJ3bkpsTU1vMG0vVlJHQ3JQV2E3?=
 =?utf-8?B?ZFNqZFY2NFR2OUhKOGsxd1BqRnVIc1lveUVsZU5YeXAzZ1dldklmanMwSlFO?=
 =?utf-8?B?dUZYTEo1cTAzMnh6UU5vejF6MWoxZTZsQ2RsZWVvR1FwWjlIeUtlOXBBUEwv?=
 =?utf-8?B?N3F3S0VWKzY3Sm9WQ2cyem5QR1VTRmNud2JucDlpYmVad3AxQjdBUjJFUlNH?=
 =?utf-8?B?d3hjcUg2RitWV1p6b2pwYUVWTEJCZkVleDV2WlU1MnZWbDdYTk5xc2czT3ZY?=
 =?utf-8?B?WVFTSmErdnZJNmZ0L1Z1d0N3bGNiNU1PazhjdC91bVFmR1JCcUR3SkJHdWdj?=
 =?utf-8?B?SGExNG54WlVCWnFkQmRydFV3TzFKTEhOekRRRjNQVTlmR2J3cWpvQ0ZkeUJ1?=
 =?utf-8?B?NnBTalhVdlkrUktkMUxMUWdXNWRxMHFHM0JyVHM5TjNnNnpYMnRpZkRMaHlW?=
 =?utf-8?B?OWczM2p3OUgvbjF3UGtBSjVEMW9jNnlpYjlKUEJxMnZmbldTUDQ3anpuTDNr?=
 =?utf-8?B?WGxENVE3VzIxWnArdkhCc1dBZEdEcjJOaHBGUmVtSTgva3FXaXQ5aWJCOWNo?=
 =?utf-8?B?b3N1STVZV1BmR0J5cVp4dHdhWnpLV01rRi94WUhmVDZJcWJidHVkdkZ2RjlG?=
 =?utf-8?B?VXhQTGVYZkUzeXJQZjRQNm5FQ0MwOVhiem1xemwrQ3Q3bDYvQ0FFUUFiYmht?=
 =?utf-8?B?N0pwSkc3TExTMDhZYVVxTDRmOHNERWdEdGtYdHFCRFRKdVpKWmJtTzRIRWNl?=
 =?utf-8?B?dFpHK2xhQjVIaGlVeE82elVIUlNvN1JCcU9KaXF0dUZ6dWtydERtVVZJSWJO?=
 =?utf-8?B?a1F1OWxSUUlKZXMvLzVWQU9iSERJZ29TaThLNm1oaitHNUlhTkZQNXNuaTh5?=
 =?utf-8?B?MFBoejlITlVQdkNLRFdHUnVmVHd6dThzY0dTQzhtZ2tEM0s3SGxrcXBmYzNG?=
 =?utf-8?B?WFhsOThjekltU3RucmFIb0hDZlFtYWpjWlZzV0VURjQ1VzdMZ0JSWi94SVVz?=
 =?utf-8?B?ZjZNZWN3Z01FVmpPVjRaUFQxSSt4a0FYeHd0NFhFei9UaEdiT1JJcHcrVS9R?=
 =?utf-8?B?cjB5TThQOHZwbE13TVZEL1NnK2p6RTJDOEVZR0tac2xzcytLNlFkWHJscXpM?=
 =?utf-8?B?TFpPalU4OUd0TXhuTVhTdlVwOS9WMHlGcHlXNGlKNjVXNkVVUE9KcG9CWWhj?=
 =?utf-8?B?aWVKQjFRVUxzbVFyODd5aTN5L293Yk5XUmlwMEhrUnYrR0hXVDlyTU5ZOHF1?=
 =?utf-8?B?Wnp5WjMyNENpQnRGVXRnS1hPZlZQVVR0ZkFyZHVPc21IcVhLZWJURmxabUVG?=
 =?utf-8?B?SFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d7ead6d-c97c-4a7b-3ac6-08dd7c4ed513
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2025 18:53:38.3747 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Iqsb2ttZoeDo6ZHrNNwv/Hzl6Dnzgs6Fzr5g9gIPjPzhE0JyxLG3P0f2+fG6bK91G9N/kjMOmX5v0fLkJsPpASCNHrGDfELAM3z/rYD+S08=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7006
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744743253; x=1776279253;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GbIni2hqM3Uy/VqGTE9JcG/T6CZk3YrSlYJHntlysOk=;
 b=P2TReNf16de1Vf3rVZrImV+e3eSqwxD+OVZWMGGnnh/6vdM+oHA6e5g/
 VvNgHUBJJAv2JeYXPPA1WeEDS1MZMxccwPig5yokNzxOdO/XnpgJJvsUu
 E+SIZppqSTKjEABAII97AmwP+8054beHHaBi7eMRXv7YWfPAYA2uXT6fi
 BqVPzCaLTwodTbCYITroXHIz+82oZAheRbypgKBBsnM4GHyAYz1GuClTe
 CYa14/fqOpXpMmSsdpojHVYg1r97NO9ylmHqetB8gc/zQ8tzA/YUkdhRz
 NbFGROSdmggNHGScocHwxjV7z11V9XVqPeJ8k1UfQxjx3vbEoPza8GUbZ
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=P2TReNf1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 01/14] virtchnl: create
 'include/linux/intel' and move necessary header files
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
> From: Victor Raj <victor.raj@intel.com>
> 
> Move intel specific header files into new folder
> include/linux/intel.

I believe MAINTAINERS needs to be updated since the existing paths don't 
cover this.

Thanks,
Tony
> Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Signed-off-by: Victor Raj <victor.raj@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>   drivers/infiniband/hw/irdma/i40iw_if.c                        | 2 +-
>   drivers/infiniband/hw/irdma/main.h                            | 2 +-
>   drivers/infiniband/hw/irdma/osdep.h                           | 2 +-
>   drivers/net/ethernet/intel/i40e/i40e.h                        | 4 ++--
>   drivers/net/ethernet/intel/i40e/i40e_client.c                 | 2 +-
>   drivers/net/ethernet/intel/i40e/i40e_common.c                 | 2 +-
>   drivers/net/ethernet/intel/i40e/i40e_prototype.h              | 2 +-
>   drivers/net/ethernet/intel/i40e/i40e_txrx.c                   | 2 +-
>   drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h            | 2 +-
>   drivers/net/ethernet/intel/iavf/iavf.h                        | 2 +-
>   drivers/net/ethernet/intel/iavf/iavf_common.c                 | 2 +-
>   drivers/net/ethernet/intel/iavf/iavf_main.c                   | 2 +-
>   drivers/net/ethernet/intel/iavf/iavf_prototype.h              | 2 +-
>   drivers/net/ethernet/intel/iavf/iavf_txrx.c                   | 2 +-
>   drivers/net/ethernet/intel/iavf/iavf_types.h                  | 4 +---
>   drivers/net/ethernet/intel/iavf/iavf_virtchnl.c               | 2 +-
>   drivers/net/ethernet/intel/ice/ice.h                          | 2 +-
>   drivers/net/ethernet/intel/ice/ice_common.h                   | 2 +-
>   drivers/net/ethernet/intel/ice/ice_idc_int.h                  | 2 +-
>   drivers/net/ethernet/intel/ice/ice_txrx_lib.c                 | 2 +-
>   drivers/net/ethernet/intel/ice/ice_vf_lib.h                   | 2 +-
>   drivers/net/ethernet/intel/ice/ice_virtchnl.h                 | 2 +-
>   drivers/net/ethernet/intel/idpf/idpf.h                        | 2 +-
>   drivers/net/ethernet/intel/idpf/idpf_txrx.h                   | 2 +-
>   drivers/net/ethernet/intel/libie/rx.c                         | 2 +-
>   include/linux/{net => }/intel/i40e_client.h                   | 0
>   include/linux/{net => }/intel/iidc.h                          | 0
>   include/linux/{net => }/intel/libie/rx.h                      | 0
>   include/linux/{avf => intel}/virtchnl.h                       | 0
>   .../ethernet/intel/idpf => include/linux/intel}/virtchnl2.h   | 0
>   .../intel/idpf => include/linux/intel}/virtchnl2_lan_desc.h   | 0
>   31 files changed, 26 insertions(+), 28 deletions(-)
>   rename include/linux/{net => }/intel/i40e_client.h (100%)
>   rename include/linux/{net => }/intel/iidc.h (100%)
>   rename include/linux/{net => }/intel/libie/rx.h (100%)
>   rename include/linux/{avf => intel}/virtchnl.h (100%)
>   rename {drivers/net/ethernet/intel/idpf => include/linux/intel}/virtchnl2.h (100%)
>   rename {drivers/net/ethernet/intel/idpf => include/linux/intel}/virtchnl2_lan_desc.h (100%)

