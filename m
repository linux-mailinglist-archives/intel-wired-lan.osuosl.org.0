Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yJ/AGHTLumm6bwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 16:57:40 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A85ED2BEC9F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 16:57:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1DE8981E74;
	Wed, 18 Mar 2026 15:57:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q1N0v53OpNpt; Wed, 18 Mar 2026 15:57:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 86A7F826DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773849457;
	bh=emP3J9se9esdZnGe85YWkKdIhNq/5xrhyq8rozdICic=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=f8JSBW82vemyIOn16K0VxP769BMWxAhsVCxHgNW4va+L/TjAUlTEgDjRy5whQcTEx
	 b+SsT6RqT70CHhgjEQn7a9j/mS9jHGjQPcxkvrRoe0OVVs4g+1hMp6pP0qK6FK0cU7
	 IqC9f6oTP9QrKFP3HRUr6hM0X+aW4ch2lueLF+dKcHxebUzjcp6N0SfKUIYHqq6pyT
	 4g0kk1xe3V3Ez3zjfAoH01Uyft84nGziN4hhj7fnp64INhykna++kes2oA4ukdopQh
	 oP3GefQyZRfZmwV6GLKNZSnLXSukC41ZL+QsLktbkdXtj9jF3LgZZvK8Ds79Xfkq3O
	 n+uMBKQgZmrbA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 86A7F826DF;
	Wed, 18 Mar 2026 15:57:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id C32FD1AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 15:57:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B4EC681E74
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 15:57:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KP8vIbeOSJ5p for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2026 15:57:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=dima.ruinskiy@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AA12381E9B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AA12381E9B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AA12381E9B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 15:57:34 +0000 (UTC)
X-CSE-ConnectionGUID: ij8QQZNSR9qtzN5FWe2mJg==
X-CSE-MsgGUID: f4Rm3qXWR6eDBb3vDhiHhA==
X-IronPort-AV: E=McAfee;i="6800,10657,11733"; a="78767353"
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="78767353"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 08:57:34 -0700
X-CSE-ConnectionGUID: fkQQUZzrSQCwSoXuT+1GCA==
X-CSE-MsgGUID: 0/u1e+qaTQ+nkvPWyfWd4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="218679086"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 08:57:34 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 18 Mar 2026 08:57:32 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 18 Mar 2026 08:57:32 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.71)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 18 Mar 2026 08:57:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XUFY2IMEtpNCMTPDxFmEmbHl1l8V8jIKqu4DSdgWYPReEOsfaWJzDDuNvCGUwkvqxuQKvDgOz3KSYBNr7PwXooBn0Xda+N802g6VgR2e+ttmbm5xROacTr2rb/qrQttAHnuL6WThOQxgAJ0cbnLyCzVgJKcUiTcTS5Z92ESrEFUYvJWLXOM18QxBu9ZzVNz7M0/fSzulpvG7HgTP3QG2xjuTi1O2BBSggB4SbBknHucKZOqg/BKhwkcvY0620EzY9J3B3capPnAn1zZ5iVvomGRJZ4f8YC4kWltS+OR/xqIhxotYTgAzM8Mbdu6M0fCh7b6nsqUreyNuRay33MRNiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=emP3J9se9esdZnGe85YWkKdIhNq/5xrhyq8rozdICic=;
 b=VmQsMehzoVBoH2Vrf8JqOy2BO+OSDuu6311n+j9sTYtR/NcJ4siTbbrVnk6zM+s4y8aUJHslDbUf2/FPBcle+HEMrrtYt1b4v9p/ivU2k1WmPEEvdlvpGR20cUB3JOTUAJRfMh3yyw+M7CTUcbzIi4r0V/ZRin2P0qN0AnWd1EXI5D+6zHjHFukqU0mRP383WLwkSq458kaxvE2tMzRT0IvZe+FKXXiFM5O5BsqgbOJWBkzlFMzReBeXUETEdtXyENqIfjQJPvQd5OTMSbtNNhz0DxCRc8WF7MzWed6BtzWL7UJjWjuDfDMMPGgBa1Njel8xYGNjW3JksiPeKJI7fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS7PR11MB9498.namprd11.prod.outlook.com (2603:10b6:8:261::10)
 by DS0PR11MB8134.namprd11.prod.outlook.com (2603:10b6:8:15a::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Wed, 18 Mar
 2026 15:57:30 +0000
Received: from DS7PR11MB9498.namprd11.prod.outlook.com
 ([fe80::e3fc:2bca:409f:b925]) by DS7PR11MB9498.namprd11.prod.outlook.com
 ([fe80::e3fc:2bca:409f:b925%4]) with mapi id 15.20.9723.006; Wed, 18 Mar 2026
 15:57:30 +0000
Message-ID: <a92e54d3-b9ca-4c6b-8b9d-b27720ca26c8@intel.com>
Date: Wed, 18 Mar 2026 17:57:25 +0200
User-Agent: Mozilla Thunderbird
To: Kohei Enju <kohei@enjuk.jp>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <kohei.enju@gmail.com>, Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20260317062205.39406-1-kohei@enjuk.jp>
 <20260317062205.39406-3-kohei@enjuk.jp>
Content-Language: en-US
From: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
In-Reply-To: <20260317062205.39406-3-kohei@enjuk.jp>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL0P290CA0005.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::16) To DS7PR11MB9498.namprd11.prod.outlook.com
 (2603:10b6:8:261::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB9498:EE_|DS0PR11MB8134:EE_
X-MS-Office365-Filtering-Correlation-Id: cf49f25c-f62d-4411-0764-08de85070f3e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|22082099003|18002099003|56012099003|7053199007;
X-Microsoft-Antispam-Message-Info: gkppeYLhMcjqXt+d5BGctRJvH7gRa9XJexylLOVMlMKTkfer6hQ+KXNcsWRBeR4QLo7/+k6JjyFitFxtvfGPxBwkz7DWjvFKVz17b1c7xIdfKqisQhpXRfY59Z5d/VB1kH+JDAPex4lnrpi6pjqump7AGT0WodPjwi1JQlBzvpw1aBYKSZct1IcDv6Vzmk0IkZYOHm444ec7K/oJ0DVG1Q0/1khdC6QpdGYXLn31ogDYCsHtxgIc5E1JX07kj9snbrPLXCI5m5O4my80V30x4GUjuqqNb8jSH76/S3mjSGLelfz4ZuJ9l8CjHAusWdXE4hntTnwO9itLNR4GSNN8YBAU37SLZrN6d9bHYBNMsmdyfT5NKX0ITsw3W0kZ28d8KSiQcLmPROt1GVigeLBcwLkMT4GRefIGwphNCZlkT980DFFy9phKC/SCXb/Km4/wFRKa52yWft+ijY6D1zOgyaNcm7pEn4TfpFiQfE+weMH2I1YASfzguqI1SDP34L4MzMFsnun1XrtIQc32wT94KEdaZQVbKhWhu7ndUJ7KvESgcQbW2NSJntqkZj4SqaHwI80DqJw4d4SCDu4Q0xRXEJ0AJi5e4N9ectpBrGoMCx2V2i1y2f7dD1fMgPRFEQobBH9WZ2r1m92gRx41rsgO4iH21MBKXFeY+GvxAsUYwI5LFZNahQH3wYnNQge1iwOQYMauoPbUv5qJRjYcY2nPnZk2D0DIbadCJ4WOJ4Zcm9M=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB9498.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(22082099003)(18002099003)(56012099003)(7053199007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a1l4UWFhaXU4V2VTaG1yaUVnWU1lTVEvQzZad05RM0tLMUs0L3N5RVNQSzg4?=
 =?utf-8?B?Y25vNmF3WEFUVmRST0VVRUZoL1V4a2xKUytROWtnWVNzV1MzSWNCS1Z6N1gr?=
 =?utf-8?B?aWh6ZCsrZGorTDU1cFdEaGk4R3hYSjM0WHpxVEtNL0x4SnhLclhlOFFEaUlR?=
 =?utf-8?B?SHBXQzBUaU5UeDVFMXVoUld1SForTG1jU0tUM3Z0UmgwYTF4Nmk0SXY0a1Nh?=
 =?utf-8?B?ajFzTjE5SitMcGxNODFEQ1orRzl0cURkaUE1UnRPMXRHNlBreituQmgreHlm?=
 =?utf-8?B?Tm1rMkhENThsQStkT0VRaEZmRUh2ZVZ0b3dXRkU3Ryt6T2VrcFdKaFl3ZXFB?=
 =?utf-8?B?UWNmVkMxY1RBNmpBZVJRd0RNdjNBTytMUEZ5akpEbktDR3FjZVFrcTBpdzJE?=
 =?utf-8?B?YmIxZzFQZ2ZZeHA4UlFlbEMrRDhna1ZNd2g3V1ZTZ2Z3NEdJbE1kbmp0VU1i?=
 =?utf-8?B?RHpRaDg1NUdKbHIweW92Z3YvVGE5eGZFRWlHb0t5TFg0Y2poSTMrbGVrRFdt?=
 =?utf-8?B?NStmcFFTcWtpbWp4aVBlTjBLNGg3QzF6N0ZlcUZkRCtJM252ckpUbG1PV0g2?=
 =?utf-8?B?TEMySFlvYVNiTVZMajdWTmNmMEIyZFlISE1WbUQ5ZFVwVGEvTHFLbU41QmJi?=
 =?utf-8?B?L3VEeU8xZC9jZlRRamFhMHRtWXYzQndGQXFzanRiMWtOVmdJVTMxQURSa0lN?=
 =?utf-8?B?alBhSDFZS29xY1Q5emQ1SWVnS0Z0VzZ1QVV6d1d1ZjdWcXhZdGlMZDdJczdP?=
 =?utf-8?B?UVdDTS9SRmY2YUREaWlxaWcvb0JXeVJ2L0JSbWRWa2l6bjBhajY1SUJ0SzR5?=
 =?utf-8?B?NWVhblhtbjhRelZqN3A2cmN5NXl6RDhXQldFSS9MdFcxdjJjT2FSUkx0OXc0?=
 =?utf-8?B?Nm9jbHpqdGUxZS9GL0JMVHZtZDVEa3RuSFNmaWN6Zy9NLy9NaGNvWWlvdU9B?=
 =?utf-8?B?aDZUdkYwODhWNFFQZkc4TXQ4R3Q1ekNPbXczMnlNYnh4cFBXSkpQNm9tZTR2?=
 =?utf-8?B?R05ENmtFTFJqZ1pWM1hsMy9ZcEx1Mm9aTkZnNHVSZk5vOTlLcHdyS0hGbTA3?=
 =?utf-8?B?UGtMckFSUjRGNCtlb3IzcWpOMTVvZUJCd1FpdUVXcUtXYmtHV0wxRDdkSzF5?=
 =?utf-8?B?WjhvZWdYNGwxQU1vRjV4UUsxSWg4ZW5kVDk2VSs0dURIWVc0Um85RVFRUG1N?=
 =?utf-8?B?TXVlbUd0L3czUXJzQVZESCtUMU95akI1VDF3VllKUngrVUhobngySUpzQWQv?=
 =?utf-8?B?Nm9CSmxISzZ5NmxuaHRCOC9ER1VyMi9oaGFweHZKRzNSZEZhRE1KRVFzRWhX?=
 =?utf-8?B?a3RzdkVOZWlsQlJPUCtNT2gvbWROUkFiR21mMm5XY08rTi9nQTZhbzV4NjF3?=
 =?utf-8?B?NGxQWDhMd0N4VmNrdi8rSTdiYkJDVmhTbFg4dnJEenA5N0ZqdWlJYnIrMjdz?=
 =?utf-8?B?NkFZckQxVEt4Y1NZbTFJMURPLzllT1lPcVJQQ1dLck8rWjNFanlhTU5IczFZ?=
 =?utf-8?B?S01FMFdSS04xTW5CUDhPTVcwQStsZ2UwME1WSmQ1WS85OWgvR0ticnlrc3JC?=
 =?utf-8?B?WTFOb1RCRkhBZ1EwREgrSFlTK1RoeDY1Szg4cWQ4TFUvU1pIa21VTjFSeEFI?=
 =?utf-8?B?b1NYbFVFMXdUOGdyTEc2RG9OUjhTby9FSEg4WTJUbUxoT0x5enF6dmFKNUdt?=
 =?utf-8?B?MDd3a2pVdkZtNGpRYkxycnNDQW5TTVg4dXBBZ05nTThDRGYwQ29vQnMrY3Ir?=
 =?utf-8?B?amd4RjdIUm5iRHdFeENBQnN0cTBxSDFpSmlaWWJoUlNMRXFsSDF0aWIyWGtN?=
 =?utf-8?B?Y21WTzNWNXcvT29ZWVYydjFLTTJFbkdlNUI0WmJYRGVzeFdhZGR3WmVGT1d1?=
 =?utf-8?B?SFhSOGdwN2ZWV3FEYjZUa0FtbEJQSG5DdkFKTmoyVWFEY2crN2R5SnFEUVEx?=
 =?utf-8?B?enZlNy8rY21yV3l0T1JSZjV2N21zMGRzWDJySk9ydW05Umd6ZGFwTHlZakVj?=
 =?utf-8?B?bWdNaDNlckxQTGV5ZU1nMWxMWjNKUnhGK0hiS1hTYmtYaFBicnZ0WGtMRlQ1?=
 =?utf-8?B?dWpjREJ0NDVvNSsvNVNaSEEwV204L1JIS3pRb244SWsrb0RiOS81bG5XaFZK?=
 =?utf-8?B?ZlY1UVBTaS93c1hYdDN1aVdKbGNnWVM0cU9PSk56U2hycGU1T1RWZFh5NktW?=
 =?utf-8?B?d0owc2pyZFpHL1JPTDlrbHAxTUtORGR6VUorRFVNV0YreHBrcHMyTzFjYVMx?=
 =?utf-8?B?Q0pCWkszU09pUUcwWWQwQXc5V2JRczB2NTl4b0hIU3hLS29GRS9STnhydCtS?=
 =?utf-8?B?NitHYXNOWnllblBad2tLYlgyMG9DMDZvRVMwRi9zc3V1cEMzQ3NVY3FmNzhS?=
 =?utf-8?Q?pYOxuuPrQfwEfEw8=3D?=
X-Exchange-RoutingPolicyChecked: guITXwOql9ac0b6YUjjsAFB5X3VaMAQkaUvTR0WirSD5l4ZicqfWKk8T2T9bLHa7OMLTxLjpvIP7f4cgb/KAD1Gj07ESMJw9VLWVRb6J8c2TVtDNlPfTGsgClFf0AbVWz4XqrxRpUsrWzAiLpxl+z1nR5sdEaHWJvFTJm8StyQPReMKrWoowD2ijbvvbvM3ExYBqIvw5F9NqfHTnX+TKOHLWpSFvPtyypznVsMGds2PLejE97XYiJ1Dbtgl/BZDbHbeYYtuLWgkm4AjCl6ssdejQbkxJ3n+tnu/B+GgIopDVLbrE3t5clwzSnwdRi3BfgLZwywvU+VKChrPWlnCXgw==
X-MS-Exchange-CrossTenant-Network-Message-Id: cf49f25c-f62d-4411-0764-08de85070f3e
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB9498.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2026 15:57:30.2433 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Zc4MhWyC7V5hA+2p2vptTQwmA9x1s3vGrS5TIT+eyXiZycDrf57LuO8LJJQLJqrtOTidBKTpjr85Agrxyj7YbA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8134
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773849455; x=1805385455;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sKCoYdxaUasi2AC8yd43N3eD6sp2JABSzeUkDktN9kY=;
 b=DSz9Z4G/tfAP7jO6s7cwBQfSCeFIC3VjiqfsQUENOZLL1U8Oz4Xa0DDE
 8wXAipTcE6TRczRqKE4zsxo8gLbSW+tolEOQPwjaq/GhNkbx/BduXodrh
 cjhC4k+BxiU5XqihQRjM/ZnN6MHUQnzpj1XZYIWyJFfYteohxK1VVjQZ0
 5xDNzqddjvIPKjtAUJunNJpMf7UZJ1hUjGnmAltb4uuEn4XHlOTc8g7IK
 LgfS0iGOGfrVB0q7MvqXZhuNvaAOmlo46JfgWTHSq+PKrYnj1pAJHBG5K
 TaE562Vre7CxhPLScUcCk3psRGHbYmLpiuSohxTJd5pOGsFwxsCW3Vo6/
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DSz9Z4G/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/2] igc: enable build_skb
 on the non-XDP small-frame RX path
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kohei@enjuk.jp,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:kohei.enju@gmail.com,m:aleksandr.loktionov@intel.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:dkim,intel.com:email,intel.com:mid,enjuk.jp:email]
X-Rspamd-Queue-Id: A85ED2BEC9F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 17/03/2026 8:21, Kohei Enju wrote:
> igc implements igc_build_skb(), but it is currently unused because the
> IGC_RING_FLAG_RX_BUILD_SKB_ENABLED bit is never set. Enable the
> build_skb path when XDP is not active and the configured maximum frame
> size fits within IGC_MAX_FRAME_BUILD_SKB.
> 
> In a single-queue small-packet (64-byte) RX microbenchmark on my setup,
> enabling build_skb improved the receive rate from about 3.11 Mpps to
> about 3.30 Mpps, while reducing missed packets from about 484 kpps to
> about 300 kpps.
> 
> Keep the XDP path unchanged for now, since it uses a different RX buffer
> layout based on XDP_PACKET_HEADROOM, and enabling it there would need
> separate validation and buffer layout adjustments.
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Kohei Enju <kohei@enjuk.jp>
> ---
>   drivers/net/ethernet/intel/igc/igc.h      | 4 ++++
>   drivers/net/ethernet/intel/igc/igc_main.c | 4 ++++
>   2 files changed, 8 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index e66799507f81..acbd2c237667 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -734,6 +734,10 @@ enum igc_ring_flags_t {
>   
>   #define ring_uses_build_skb(ring) \
>   	test_bit(IGC_RING_FLAG_RX_BUILD_SKB_ENABLED, &(ring)->flags)
> +#define set_ring_uses_build_skb(ring) \
> +	set_bit(IGC_RING_FLAG_RX_BUILD_SKB_ENABLED, &(ring)->flags)
> +#define clear_ring_uses_build_skb(ring) \
> +	clear_bit(IGC_RING_FLAG_RX_BUILD_SKB_ENABLED, &(ring)->flags)
>   
>   static inline unsigned int igc_rx_bufsz(struct igc_ring *ring)
>   {
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 79192b02e6be..b44f89311a4e 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -474,6 +474,7 @@ static void igc_clean_rx_ring(struct igc_ring *ring)
>   		igc_clean_rx_ring_page_shared(ring);
>   
>   	clear_ring_uses_large_buffer(ring);
> +	clear_ring_uses_build_skb(ring);
>   
>   	ring->next_to_alloc = 0;
>   	ring->next_to_clean = 0;
> @@ -654,6 +655,9 @@ static void igc_configure_rx_ring(struct igc_adapter *adapter,
>   
>   	if (igc_xdp_is_enabled(adapter))
>   		set_ring_uses_large_buffer(ring);
> +	else if (!(adapter->flags & IGC_FLAG_RX_LEGACY) &&
> +		 adapter->max_frame_size <= IGC_MAX_FRAME_BUILD_SKB)
> +		set_ring_uses_build_skb(ring);
>   
>   	/* disable the queue */
>   	wr32(IGC_RXDCTL(reg_idx), 0);
Reviewed-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
