Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 00DC9A71D3A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Mar 2025 18:36:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5D81840965;
	Wed, 26 Mar 2025 17:36:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Gv0oIs0GM181; Wed, 26 Mar 2025 17:36:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B43AC409FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743010604;
	bh=5LpdKJ5qcedp9d1IDxe0PMrFUB7smwUOgL8e2pWVavY=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5Z8p5fngW561y7LFE1tJbT/IiPRojjuQQE1Xg4ujLkhr3AUR0e7CfiIKnJNTnoG5o
	 pqulwGGm+Td6V28zcGX+LypbOun+jZRcBnentG63eNYtpAo22EyLBFycq+btBKjhuF
	 l9DQXqdox5SK1zYBkutQvqcoft8pWAaIfkRTfE1bYFASjabIy64NzbsW6SabZy0Xqb
	 d0ouluLGu6UQb73Q70nFB5vCfx8KnoM6ba1MeJzX2ZOXn9dKjGXzotJdIZsyszvhpq
	 emclnlvIpzJhKWkaeuDe8X5gPksYMf5DMJt7bqmzBabgZnORjInY/nGISwawPbO5Pq
	 q3qK0I4/2uyqw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B43AC409FA;
	Wed, 26 Mar 2025 17:36:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2B47CE4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Mar 2025 17:36:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1171340582
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Mar 2025 17:36:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xfn29MNQ50e5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Mar 2025 17:36:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 59DD340025
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 59DD340025
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 59DD340025
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Mar 2025 17:36:42 +0000 (UTC)
X-CSE-ConnectionGUID: bxMD5PaTQyGGuYwISLZdtA==
X-CSE-MsgGUID: JtgnWHaURmatf9rQyFc6+g==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="44038049"
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="44038049"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2025 10:36:41 -0700
X-CSE-ConnectionGUID: e+7/9jpoQCOCLqvcvy6y4w==
X-CSE-MsgGUID: 4R2PBEIWTMeBLvbAH52iVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="129005313"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2025 10:36:41 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Wed, 26 Mar 2025 10:36:40 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 26 Mar 2025 10:36:40 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 26 Mar 2025 10:36:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AvnPCWhfSUvzdZntmuceohLihyUw528mPD55DJvIEAKlPql58MLqwDIBRyjfoB52iq07V6otCcxudWhcORiBQdqf7FDI3+neIYV89KEv0e2IPkSX0iwUoM0PXzlCmUF+2E041cCveWfmFe3xroP5A39E9rZ82j63hwWS4Q0anCZWwl7ECgaMa8CCXJm6MzPLDt31Pis841vAxsJ5C5BGnnJxuzCt0SV/NW2gzQFHRdXtJP4FVXJFOcFzk/bOgTWHLNUof5+eXuC4ZA+4lYIQEg9Xau7N9P07ko/5dtDaMF34ikgkQTP+NIYq+JJtd5siBG2T79WO9yghb5YmgvlkhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5LpdKJ5qcedp9d1IDxe0PMrFUB7smwUOgL8e2pWVavY=;
 b=sYyKYrfG5KjVqMN5rkQqjWAteFPNcraROlWZvxdZSzUjdIzyGSoiJJgysrTsCPZbbi4fUEp45fhkoK6SS9PXoGgY2jqRNRKJD8ZQOo591sdijiAuflrirX/lMT3gyJntRQWtYIiRNg61Ms806lPYnnuMahpuH8z0WhEXpNb+7Yz6b7Jc9RFmuUGa7DxaL/7QNZ4KTTGCxrVhsGPlEVZg7GBF5UMLWJ4FoEdQYqRcsOuiNOeTZcHO9h7AdoLR9az6IezEwzDl/J0JEjRC8/Et7L1yUyLaqGVrqBtJBz3E6UEcr6MgT3zVn2D/EX3imgqp+39nFNTZzMd4RoUHZAoAVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by SN7PR11MB6851.namprd11.prod.outlook.com (2603:10b6:806:2a3::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.42; Wed, 26 Mar
 2025 17:36:09 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f%5]) with mapi id 15.20.8534.042; Wed, 26 Mar 2025
 17:36:09 +0000
Message-ID: <c5eede52-0d32-4677-bd2b-8e0f31dba857@intel.com>
Date: Wed, 26 Mar 2025 11:36:01 -0600
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <przemyslaw.kitszel@intel.com>, <anthony.l.nguyen@intel.com>,
 <andrew+netdev@lunn.ch>, <davem@davemloft.net>, <edumazet@google.com>,
 <kuba@kernel.org>, <pabeni@redhat.com>, <almasrymina@google.com>,
 <willemb@google.com>
References: <20250324134939.253647-1-ahmed.zaki@intel.com>
 <452e0969-9811-4853-86e0-ce1be0b848c9@intel.com>
Content-Language: en-US
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <452e0969-9811-4853-86e0-ce1be0b848c9@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0115.namprd04.prod.outlook.com
 (2603:10b6:303:83::30) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|SN7PR11MB6851:EE_
X-MS-Office365-Filtering-Correlation-Id: 3f44976a-b07d-48f6-737a-08dd6c8cb1c2
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RjN4YVdKanBkTENkVkcrMzMxTk51TDhFajZwQkprRktRWnBRckZEQkozRUZT?=
 =?utf-8?B?N0lhTGZ1RjlXVzJNY2o5WHQ1d2NWS2tmOVMzQ1N4ZVcwa3dkb0Fnc2E0QU9D?=
 =?utf-8?B?YU1LWVRaSWhYUG8wdUpGWlhZcTdPNnloY3pBNTU0U3RtSW1tTjBYb1gyR3Iz?=
 =?utf-8?B?VGVqQ1VValQ3Ry9CbnYxN21TdzVIcVh6dmVQZ0IzVk9GWEtkUFh1VmZ2SGI3?=
 =?utf-8?B?VnhCc1lYUHkwT2s0M3pDOXJPbStJTHBocTR4aHRwY1kxM0ZXOFcxL0VNazl6?=
 =?utf-8?B?bjRKa1FIQ0RDOUg3K3RaQzJsekJLbjhNWmxFbnZWdWloYmxFeWdBN3ZPbUhC?=
 =?utf-8?B?cHBxMG41MU02eUpUa2FvTUpXWTJBdHcyRTlwSDNMYWRIS0RESE9hRDN2Mm5U?=
 =?utf-8?B?WTNTQXlRbGdCQ2ozLzZkZ0pBd1c0YXhJNi9LMzZTYVFSNEExQmlYWmlrVjlB?=
 =?utf-8?B?S2QvYS9TTnBiWWFNb1k2UXlsZktUaVBickV2Q1BrQzhCYjdnYWNkaHhUZjl4?=
 =?utf-8?B?TVFra3VBblhQUFhDYTByNjZyOFoxWm1HVUpnVGNvMUx6eDJYOXB5UGVOMTJD?=
 =?utf-8?B?eC9jY2IyN0p5Vm9MbllUNGFrdUJSdWp0ZEh5ZzlXTGZVcGZ1blJUNFMxN29F?=
 =?utf-8?B?NHRFRHV3UkMvdHdJVkVKZG1kY043ajJ1dVJBV1hYdUp4aTYrVXBZZ2VXamVr?=
 =?utf-8?B?ZzFrck1JUHNOZVh4c3VsVTN3MVIrcnE1c3NWeGdaSzlCd0FJbzZiT055TEFK?=
 =?utf-8?B?djZjTjlNTS82eVd1WXp6d1JVTnR5UjZoME5YV0JrcEVMTmtYR0ZEdzlENDZY?=
 =?utf-8?B?NWsxa3VhUVFwUml3V0Z5bHdCZXJSemk1cnUvaGZqYllxMGNVMkdyTWNBWGdF?=
 =?utf-8?B?a040ditZWlEyTWFqdUhLSEo1eEtaRWpDL1BPbzNHaUR4WHpoSUxJd1gyVVly?=
 =?utf-8?B?TVozR28veVhZbXY1VG1LZTJPclIrQ05tRTh4V0pqdG1jQnY3RXVkUzB2QTdY?=
 =?utf-8?B?NWZJV0RaQzhvazI1NTkwajRXYTZOYkE0WW9oSFBkTnJoWm05dDI5TEJzQ2Na?=
 =?utf-8?B?Yjg3MHJHQStsYmdQQmdNZy9JcHQ0SDBlZTRMckRjSGZSYUFwWjVsb2oyMFF6?=
 =?utf-8?B?eFdjWHdrcWVSRFpQbkp2SFBlaXpJV2ZJZGxFZmN3L0FXM1N6SnFxOVd4MVJK?=
 =?utf-8?B?ZGFNQWxwdlpMeDFVSGVPTm93QXRNc0lQYjlGMXVQbzI3K0V4ZUpVUHZsQUs0?=
 =?utf-8?B?Vjk1RDVtRUg5TXZTbHV2REhWLzRXd3E0MDhvektFZGFKZ1YrZlpWSkpOa0to?=
 =?utf-8?B?SUk5ZEVqZm5hbGRoNUlvUzUzTGdQc2J3RmprRUFOUHpNUThvUnR6cG9aTkVO?=
 =?utf-8?B?c3orM2lDamRHVUpaVzZTS2VMWmRMTSszOHErYXBJc0Q3ODZBeVNxZjBBb0RF?=
 =?utf-8?B?V3E2bW52RkVJWGRKcisvRm1UV3ovTjhhY1dZTkFDeDF0WVo4bmJZamlHTlN1?=
 =?utf-8?B?MWt1NkJ1RDY3SFloaWtJTmdIKzlldWU0eXNSZGRSNWxvb2tCZytuUW5BVit5?=
 =?utf-8?B?M0syTVNvaEc0VFV4UUFFUmJvMXhCNWFDWDNCdDAyQk1taGhEejBNZGllSVk4?=
 =?utf-8?B?b1oyUnIzU2NqM2g3Z0FzQnlLUllENnRMNzJsNUFLZk1ZaXdJb1Z1RWdxU0Qv?=
 =?utf-8?B?SFRuS3lNdDIrNTV1TWthSEdlTThrRHpIa3FnMEFPbnZsTzVPVFkwOFVLQzU5?=
 =?utf-8?B?SnphNERuSVZCYjJoL0d6ZURzK1F6aXhJc3RpZXJ1SDlaNElZN0lKVHE4SDEr?=
 =?utf-8?B?c1R0OHdsZDhvbDNjSlB2UVNvd3FGUGtyWkR3aTlBUHZFUXVrczNPd3U0Q3o3?=
 =?utf-8?Q?Fha/76It5zMBc?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SUVmbnY3a3pYTDBicUdqZ0pqVTBMY1NhQXpsUllZRHdZUzhIMXdBNDhqMHg5?=
 =?utf-8?B?SmgyY2hncWlCQjdaY0ptaDlsdnd6ZXlVdk04dTlnNXJxLzJ5cm9yUEUrdUpL?=
 =?utf-8?B?Yk5EYTM4NWp6c3Voa0dsL3BMQkdYSlVKRy9odEtSbXE3QUZ5UVZyQ2ovMTA5?=
 =?utf-8?B?ZmxmM3htSFQxYThYd3AwTlV6MXdWYzlzSzJ2TFhOenpMOGJ3V1dIQndzcWJp?=
 =?utf-8?B?enQ4S0pxcWFqa3lveEZKM3M5TGhKTlU0NElLZFZ5d1dWczNocnFibWZ5OXda?=
 =?utf-8?B?bVkvS0YzWDhDK1VHKzM2V1JmdFI3dHRPQ1JWV2VjRFFONkJMQTh5cEtiRDQw?=
 =?utf-8?B?MkgzaEx1TTc0dTByalVhMGZRSU5aV3VxOVdJUU5LUWs5MHdYeHUzSlFmZkRv?=
 =?utf-8?B?WEhrYzROL2RaM29nRHZaSEhsazRGQ3B6YkV2YVd4UlF2SnRtTFljQUQ1Z1Fj?=
 =?utf-8?B?NVBBckN4UkZSSlF1d21PRW83RlJQN1VVUjQ0U21DaDBJVDQzS0I0T0pXMERD?=
 =?utf-8?B?aS9seWpVRWNjdHg2bTNrblZpYXhTbGZSSHc2cVZpcnVJMGhDYWJtcVVQZHJt?=
 =?utf-8?B?YXZCR21hMlVQajZIamlSRS9kV1Bid0tvUHhRVDl5eW5jTEdHaE5nRmVHZ1Bt?=
 =?utf-8?B?OHdGOUpOdFhFREFKZm9qcVhDelJhVW1XVWtEalY1eUhCQ1E2SVNaZXlKck5R?=
 =?utf-8?B?Y2lMd1JIM3JiZ0RzcWJsSHpaQzd5anZSRUtuS3BDelJqcGNmbGF0UDkwSG5k?=
 =?utf-8?B?RnNTYXppZGYwVzdlN0ZXTEx1YUNjeXVWZ0dZNzRia1AweXFJMk5YWldsb1o3?=
 =?utf-8?B?c0FjbGpWd045YXJjdzFETkNNMjdYZ2FTN3lxd004QTlzTU5LL0VzMmJYZVB6?=
 =?utf-8?B?TldEMzlmaEZSOXB1bGtLUzhhNUFnMWFlVk1xNUZNT2FkNkVvVEZVbEY1RXZH?=
 =?utf-8?B?RFRuR0dJTkllT3d3YTJvNndwUU9OcnVYMFpxL2h6MlFxeWhlRzJmVm9FYWFo?=
 =?utf-8?B?NkRNZEF4dlZCUThPbDNlY0lOR2VTK3FLdExhQ2RGV2JMa0R3SzYxNk04dHUw?=
 =?utf-8?B?cEZTdnBUYzZTT3NXcHMvakljOUtrMkl4VzVoZWVxTCtPUml3T1prbmlmS2xT?=
 =?utf-8?B?b2JhNVE0dTVDQjV4QTVDNi9zNjNlRnF2TE9Ec2J3TkNHZkJuK2dvcysyVFJW?=
 =?utf-8?B?L2x0ZS9IcG5HdjdHVUhoMHY5Y2ZjMm1OUW1GanYrTjBnVURyeWtVQ24yWFRt?=
 =?utf-8?B?K0RSVm53dS9JbTdvY0IvaFlMa082SVphWUhmbk1aOUYzdUZtUldpTGRidVBn?=
 =?utf-8?B?enlSMmR5V1FKd3dYU24yUFg4RWQ3WHRUNzY5UHh3WWlQeDJyN0xlNlp0b1Bi?=
 =?utf-8?B?cktiSlJuSjArMUVUUGV4Y0NjUE50Tm5SRGU5TGNneWN6aHhBMjg1YllFNEQv?=
 =?utf-8?B?M2lZZ2RaWm5OZ2l1bkdKeGFpMCtrUTJVSURGd0hoclFDcjE0bTlVVUlQSnow?=
 =?utf-8?B?L0VOd0gwZTVoUEhvNkFOVWo4UzgzRi9YVWtHZDVYVE5YSVdvM1dYMW9MREdU?=
 =?utf-8?B?alQyR3ZiTUNleHNpeXF5Z1NnN2FtS3BmRTB4WHdhbUFuM3UwMWl1WEgySGRx?=
 =?utf-8?B?VTcvYnh2NE1BOU5uaUtoNnp1d2xIYzdoQytlbDR4VHNOTVJDTFQwaFpCZGhD?=
 =?utf-8?B?TUQ0ZXBkeHVBMEdrOGNEa2hxTzY1eGVEZ3BYcEZoSC81UVphL1FYSG81WkFT?=
 =?utf-8?B?TE9PZGw2bzRkbHNlbVNQTEpneUFJSWVUSmVRV0U1dlJqSzBwMDRHQXdncU1N?=
 =?utf-8?B?TXZjemw0ampaUU8zTTg4MmovRUJ3R1Zra3lhZ2lIeUltai9uaSthbDljUWt1?=
 =?utf-8?B?VHpPNE02RTZiL1VYOU5VWEgzSFd1UFZDNy9HNVZmUWtnQ054OFVydGw1Z0JI?=
 =?utf-8?B?Njk5NFp6ZzRJbWVMelFONURMM3hUZUZVTG5jUGJPdEZHQTNCU1lzbHh6YkFO?=
 =?utf-8?B?cHFvR01BL1M3ZjFjM0luV3lnbS9tWlFqeXI5ZysxWTVoZ0p5UEd2K0kzNHVn?=
 =?utf-8?B?MmFnRldRZjgxN01TTU1TWW1mZnhRWVJWaW04cnFrMWpadmlmQzdYWWtNdElZ?=
 =?utf-8?Q?sFLqVFMwk6nWSDFe3XIpoEwTf?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f44976a-b07d-48f6-737a-08dd6c8cb1c2
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2025 17:36:09.2409 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YsRJeI73sMPY+w6ab3PWcoGt46gTSYIbYHpBiqQV6INx2Q7y1LrRZ66YuV1WnC4O35fLk5jXg8hW/WEZ0ofMdg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6851
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743010602; x=1774546602;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=L28CvxnhcqfZQgT+LS+1eHJLDNd6DJvOXXdITzeCsHI=;
 b=XD/MfWyQRNwX/7lCP9lpmMi6YGbJGNaEVd2Esl2z80ICbVxYJlcKsiSb
 l9buz5fQ59GA0v6n06R5YapAYC7sagum8eb069GM7ht8THFBX9drcdpg2
 sZvwTwg08w2DIqX8cjdm4g7J8DqvANFzw4TSgekSI0dAEvwoMrDDcRYTK
 IMo9VUiG8x1pVQ+h7+xeT5NY9tfNTyrGGwYomkoqwYrAWVHkmtwRF33xH
 VXO89HazyrfPLqk4tfUqgrB51OOLrFX00zs165MBlesgxEWAj48jISgMn
 mc/volx7/PxQih3YOZHLVgzQKUYCVcp/to0yAXJB9uZRok7bqmbWgL1LH
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XD/MfWyQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 0/2] idpf: add flow steering
 support
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



On 2025-03-26 11:14 a.m., Alexander Lobakin wrote:
> From: Ahmed Zaki <ahmed.zaki@intel.com>
> Date: Mon, 24 Mar 2025 07:49:36 -0600
> 
>> Add basic flow steering. For now, we support IPv4 and TCP/UDP only.
> 
> 1. Very poor cover letter. I'd suggest describing a bit more here.

I'd call it concise.  Let me know what is missing or needs clarification 
  and I will add.

> 2. net-next is closed, so this is RFC at max.

It was sent before net-next was closed.


