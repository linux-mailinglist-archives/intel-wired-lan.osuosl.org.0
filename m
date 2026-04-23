Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IDKNDGIP6mn4sgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Apr 2026 14:24:02 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B1CE4451E8B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Apr 2026 14:24:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1CEF960E60;
	Thu, 23 Apr 2026 12:23:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OMsfBYw4dlsZ; Thu, 23 Apr 2026 12:23:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB96960E5C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776947032;
	bh=Y5TnN+xYYNs+bbEkuUHpHe++ikMfGiUZArJc5MQmd2I=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0/L0xs3y5h95g/MLNp6thencnVdGrrGHkGSuKjeM34imqfpIMrS67jQq5leA5g4C3
	 1E7cPrkb94MqavlN8/kT6bZPVE54GwaW33LUc9B31g+AAJjKAP2YvD+At95THVYxoJ
	 D68cdh/lShczbOYlBhrEurGJbYQj/RMOI1G5YsCWJqvZYLbJ3Rf7J0sImm33wZ4yJY
	 tooNYaenh5Zy6nxaAUn9KCASXrVu5wb+HTNkY1PbMiCGF0V5KkDAHX3A59YCjNrtcx
	 qD+7/gBoSTnBeoYO8ZVeVV9U0ajA2s7jWg59cYI5r+T8L8aJCLLowdA5f73nGdWbzb
	 Box551wc3cH1Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AB96960E5C;
	Thu, 23 Apr 2026 12:23:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 898ED206
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2026 12:23:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8502583925
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2026 12:23:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 56W0SXd9f6kR for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Apr 2026 12:23:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=avigailx.dahan@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B9A6D8391F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B9A6D8391F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B9A6D8391F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2026 12:23:45 +0000 (UTC)
X-CSE-ConnectionGUID: HNG53NqwRPC087pw4hOBMA==
X-CSE-MsgGUID: SM9OT/NTSKu7bQkNegL0LQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11764"; a="88219320"
X-IronPort-AV: E=Sophos;i="6.23,194,1770624000"; d="scan'208";a="88219320"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 05:23:44 -0700
X-CSE-ConnectionGUID: 8MM/diIgTDmDeAqGWkQsFQ==
X-CSE-MsgGUID: HDu4dzfFQIKKgqqxzQ7jtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,194,1770624000"; d="scan'208";a="229984206"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 05:23:44 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 23 Apr 2026 05:23:43 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 23 Apr 2026 05:23:43 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.54) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 23 Apr 2026 05:23:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P3UMTWMh/FbCze/NpuJH/6Jd3+cqng5DbQNgvcwT6qL75hGXnhGqNpY5AR6pm3P+3ow6gsKScfpr5kXxJjM8BJiUIVM90oxDi/97aadXezUmProxEPVXenpOhfcD92zXXRDY8g9/eDWQuHFEiId/OA8WJqzy5MbuT8Ajh/lua+t+D4t9jHYSgtvfirY9stS47e+IcxucysjNOBHRlSPRBvL1Ktv7c7rvMrV/DHD7x+6rfM7n49f8bkFdfJ8LcbNPcZoQ7oqEzyUQtMf69HQK8SGziusx6RhV1KGIs1Auak/TSV/2BvxF7Zm+MipQAJ5u3qHw2l7EqRq3flkL9N30Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y5TnN+xYYNs+bbEkuUHpHe++ikMfGiUZArJc5MQmd2I=;
 b=dwGr9mz7/8NdYUyqultZ6mTb8S0euGZPds5jiST8OFwE3Rrb8+TUfNKrpWR2gqAkTag0T5PL4MxYRyRK5amDhbm3L+0lhN1hTEaoSGuK9Mk5KeksVmi128x3Q9kMFyZJeUKbEO1K5H87jt2dgynAz95Kb9dTCBvT58NBMUo47sK5+ZNp6KKVN0t8hXLARafVoRv2P9nGj7hysFY6jG+NOrRsmgHMN8RD3NpITKjj7LF2n51v4GaG8fFpQ8q/hpGyh3oCo3REQwnVUf1mITBH4outkPRxi2CbbWo2egOfGSB1wjlwzENQwJczpnRyUDxTXd3c/FKwIedTjVi+VlqCOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB8013.namprd11.prod.outlook.com (2603:10b6:510:239::8)
 by MN2PR11MB4725.namprd11.prod.outlook.com (2603:10b6:208:263::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.19; Thu, 23 Apr
 2026 12:23:38 +0000
Received: from PH8PR11MB8013.namprd11.prod.outlook.com
 ([fe80::26a5:58f7:7e5d:5572]) by PH8PR11MB8013.namprd11.prod.outlook.com
 ([fe80::26a5:58f7:7e5d:5572%6]) with mapi id 15.20.9846.021; Thu, 23 Apr 2026
 12:23:38 +0000
Message-ID: <f31886d6-2816-49b3-8d03-7d117c36a106@intel.com>
Date: Thu, 23 Apr 2026 15:23:33 +0300
User-Agent: Mozilla Thunderbird
To: Dima Ruinskiy <dima.ruinskiy@intel.com>, <intel-wired-lan@lists.osuosl.org>
CC: <jacob.e.keller@intel.com>, <anthony.l.nguyen@intel.com>
References: <20260414065809.3021177-1-dima.ruinskiy@intel.com>
Content-Language: en-US
From: "Dahan, AvigailX" <avigailx.dahan@intel.com>
In-Reply-To: <20260414065809.3021177-1-dima.ruinskiy@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL0P290CA0010.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::14) To PH8PR11MB8013.namprd11.prod.outlook.com
 (2603:10b6:510:239::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8013:EE_|MN2PR11MB4725:EE_
X-MS-Office365-Filtering-Correlation-Id: a84d1445-f5e0-4565-e98c-08dea13325b7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: g1i1QBbVwgFpzgVheyyW0ViqIfye4MaQ1yb0wSuxEk2MDUYlUEoO2dkfADP91RDUsjmbVASXfUAKxV74HBx90M2LjljmbtuEX9VdIO3S0EzxFzIE4i7EDLPld6FYRLKKLdoa3SBs8yM0NtIseSZbAP5B88ykNDDQZSucmweA4I/9Ib9qUd/G+6pbXHnlQN9k55n9Qs9FzFbyums+P5iaDpDyKhdSAXhi3XaV4qw7zEqlFwF74TZRJSwmmtqLAOAPkgKqoT5E6nhTvO7CjsLbyXgSpV1WxqIdCTYQFgK+FQNoQT2EWrnRbsVIue1G4WrDRr4GV+IcuU6E5dezt1Zv7FRgsQuyOCSQK9nby05Lns6cEMQF7rJ1ZhYYZKF/2S3mUaGdFxaCLT/1x0xUaBNpnbWrCz46rUfTW6ZY4nd5KvR7uHf/SIDO1SbsF8+3l5PdK5M+p5iQBGdUuSnBE1bj/96Obt5bFl1EKfdsZW76+i0fbz4MWqySWCyH09jStuRwc9QAHycx9wVB4Nbq4HD2GrVSSnDb+C/etzfq3AZjshhH3gznO+e8OnLvF8Q+O8lCXZrrHkSNK/20uv56f9gbNJjPvr5TvKdwgVmS8/ybg0MDaenq3BpS8BuAzMvhTBk3YZEgaSuGBjm07pEeU4fPE3lGsP7uEmTkDkLajptGg4OlqI2s4w8+QMtUVdsg9oR49ZJLXHr8y+Gu1OLu0SwBB3Q2QfVOOFc7ff1PLpZHoBE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RHdwdjlXaFZtNWorVmVGQ2VzdVFEK01CTkZWVFRkYkpYT0dXOXc2anRwMCtW?=
 =?utf-8?B?RVhSb1drbHoxZ25adlB6T0kwcHFSQ0VJRElpdVFKTUFwVUF4TmVGSi8ycEFN?=
 =?utf-8?B?dXo0anUrWEx1bVVQdHMyeFlKQTBSYmluL1d0NEk0ZVBBaUQrcVhTL1hlRTQ0?=
 =?utf-8?B?bUttTy9HanZnaEh2WWprMmVaQk1KNy9ZbHliakZGcFJwR1E4VEZCOUR5MlVZ?=
 =?utf-8?B?OHkydmRVWXBIUjNjTEErYUhDS1JCdGo0a2JuQTdIQUFTVDFWNnBTbUlGSU0w?=
 =?utf-8?B?Nm5TMWlSZE44UUdSbnRUWnlYcHkxdktZSDg3aXczeStqWVZlWUZHZ3cvOU1v?=
 =?utf-8?B?Q2RXM2IzakJmTXljZjFYU2RZMU03dUhOL2lmR1dEaVZ4eEdhbk04WUczYU5Q?=
 =?utf-8?B?aWVqYXhNL05IYlVmUy9wMXVhY2RKSGdMNHRveHVvcU5sdktoVFEyTFBoRVZM?=
 =?utf-8?B?cGVoT09ZNTVVNjd6QnJQaG94U0tFSENZZy81RjY1WFlXcHJBa0F6M1hHK1hJ?=
 =?utf-8?B?cU8rTlM3R21xN1ZhUnRXNzVYaCtUYWV4dGxFd0pzSlZVd2xFQ0l3VkN5SGJu?=
 =?utf-8?B?TjlUMU1Va1NHVXFwWk4zVUpXdjFTTytLQmVudHRoc1U5YkxtNUxjZzdaRnho?=
 =?utf-8?B?ZFdvMC9NaXhLVlExNm9TcGJNelZ5bThZTE13TkhnMjBYdDd2WlJ0SnZPZ1BI?=
 =?utf-8?B?YlpUVXd4Z2F6Y0tWWWVKdXlDaG9DS1RYT3ljRVpxM1BzdndUZUVMYlNaMk5s?=
 =?utf-8?B?YUlIcjN4SmlyKzdPRUg0TDdJVmFVMkNpbEZhSFNNZG84YU4rTnlOQnZmcnpW?=
 =?utf-8?B?WWpOSm9ERUZkL25BUU44RFBnK1d1UkhDQ3hraDlZWDU3YzdXckl1bkpKdko0?=
 =?utf-8?B?bldXTzhCOWJLTFlUT0xLOU5OeVhHNDhlN2VVa3ZUUlZrUXNNRUlOd2hLWllx?=
 =?utf-8?B?am1GblUxNkkvSnlwZUJWNG81bEdJR08reC9OV3loK1AzbFBjeWsxVlhnbjVl?=
 =?utf-8?B?bXVCRU1MRndjUERyTmlGRmFKTDMrMlZDaURrUThnbGN5TjJCdXQ3ejhRM3dM?=
 =?utf-8?B?bUU2TTl5YlZwRWZmZTlOQSt0T2ozNGhicUZINUh4dHJCdG1DeXlVZmh4ZlI0?=
 =?utf-8?B?MGxGamFtcHYzbnBXajF3Vm85QWpHM1Z6U2dMNG5HOGw0K1ZmY0xoUmdiSk9G?=
 =?utf-8?B?SVh5bDhVazJ1QkpBZ1lxayszRHVxR1kvam1kZERSNXNMenFub0E3bjUraDFV?=
 =?utf-8?B?ZC9UZjBLUXQ4SWFzTG8rWm5Td2toTCtqSkNlWFp6R2NaaWNpbjZRZXBHM2hI?=
 =?utf-8?B?Yy9XNjlxZ0JZVUJ3VkdkSTJSMU12QVZpWCtUZVdOVTlyaCtsdmF4Y0cyODNF?=
 =?utf-8?B?SUxWWkc3R1NiMGFjbnYvYWYwRGJsZi9kdk9pdTFpOUVUaWtYL01XSDB5TXJD?=
 =?utf-8?B?YXlTUWp6MlZvR2ZZZkRMN1ByMno3NnVLVHFOUGxiQzJkQ3dmcDIzblJNN1FO?=
 =?utf-8?B?UVhjR2tHR2hwUktjamhMdnNDSDZGbHljTjQvTUFWdEZMa0xJemFvTWFoUG1p?=
 =?utf-8?B?dHJvOUwxVDFHN2dmUDVaZUlHTTVnRnU3eWd3bWp2THQ2OTFab1BaZmd1bTFk?=
 =?utf-8?B?RnFkc3lXZWFkNnBYdDVGK2tySjVPanNETDJzNGN0bkFKcW9VcEpKOWVKejBp?=
 =?utf-8?B?MmdjSnJnVjRSVkNnWUhBdmQwKzUyR2lGa08yZXdLSVl1NVZ6WC9FT0MzNEJ5?=
 =?utf-8?B?ZlJKajlCeVY3c0lzU3ZGQXV4dzdHSE1OR3ZOb3hMcFV1WUVUTkl4emVSRHpu?=
 =?utf-8?B?KzhDbWtUcmp6cDRrZ2hTdytTMzVoeVN5R0tHQk9SZ2hpSndPcUYxUlp4a1F2?=
 =?utf-8?B?bzdJek8rcUJmYytWVWdkVTZTVjRpbzRmWTNvU1VUaFhmSUFsMUxwZTAvQTl6?=
 =?utf-8?B?R25yMldPUlIxZENNcEtBWmZYWkFXTnMzenhaRjAzMkVqRld4NS9VNTRQd2wz?=
 =?utf-8?B?N3hoaGhEdElnN3ZwclEvL0FMbXAyMy9ubXhrVThSZEhJbHZoOWZJRlpHTnBH?=
 =?utf-8?B?bHRGT0ZOcjJJNzhVUkNsa2c0SEt6dmk2KzN2Qjh1Q1pRSUk4T2JEc0xjNTNR?=
 =?utf-8?B?dGwzeFpMdFQzVXhzMWh1bmNqSnlSYk1XWnBWcmZhRmxhdkdQaGN0ZmNxdy9W?=
 =?utf-8?B?UCt4UGZEc1lGSnpZUnVWRlhhM0I0MUZqWk82ZzNYK1pLUE9tMFhGNk5XOWpn?=
 =?utf-8?B?b1d3Sm9vQnNWUElsSHprQ21mSGdvL0I5Mk40djBSUU12bnpIWWNVQ29tSGls?=
 =?utf-8?B?Tzc3UlFpU2p2Tzc1MkVLeVY5RGY1Kzg2Y1NtWDM0anVrbk5UY05QUT09?=
X-Exchange-RoutingPolicyChecked: kXozDgqiSfqJUxx5fVh3H7Y3oJtD30jolsmmd8kOdkabAxXCHN7XJ5CkJYfqYe7dWUvxVwDZXVNvsjQKYIcqzsaQ8nVJrtgpimo0j/e1KuL7NW64uFtdAPvmYglN46LJk4wwiyHy6C7IxACBQuSksb73mb3b32U6HvSjaaWcy1WonS2jDwmRvFo7YqEpptert9gfPJhk+2Chm0x4emxYswV81jK8cSFoP24e/yhlGhFTnutyeKOzRA1Z4rcZkxqLNreQVWMXuozmI79lYkNWUbqtTllP83RIYiMzLWG//a1tQo8kGKHI4eC5RZPV+6oiGO8UvilnNeIMbS8BnsNLyw==
X-MS-Exchange-CrossTenant-Network-Message-Id: a84d1445-f5e0-4565-e98c-08dea13325b7
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2026 12:23:38.5462 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v89vPT/00jO0SCsJf6oQVw0aNqR/Lj33avvBgRbIiL+w3/u94QmzZfO14FUerPJuYOZODgtliV8NDLPayvw1/o1pevTzjKo8ynVU0YHNhyU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4725
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776947026; x=1808483026;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Hxa03jO/ofRih20Ur52shuZFq5bmqIMe8Ixm8cLiR5o=;
 b=UYd3sMZsa0T1Lotbc/6sQ6fsVnaSFSbgyXNRhPNqKE5Wf7StNRHhb8nK
 8P0moPalwjVTls+vftd26l1UbPndpxDBqHyOF2UN4TWtKDI5PuFjLffM/
 aBgKOlGubc0gMm5xyyerL/CElDS/izu7rYK4KK+Jc83z2h7FD90ZdSUvn
 rZPsq7O5bVXLkPHRrxtFPFq90vY3emzzceCGCKglcx5oW/J3BJmYqxjds
 rMjrg3pk5WOzeCGskyC694KHulbu0k3UvwBN0a/OnHMDAUhCzh9pViNeq
 hGaPCQ8WA4/8xqmAa0wM5N2WyW9ckkO0HzbZvCWS0kKLOF3ESF3PknFL9
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UYd3sMZs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4] e1000e: correct TIMINCA on
 ADP/TGP systems with wrong XTAL frequency
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dima.ruinskiy@intel.com,m:jacob.e.keller@intel.com,m:anthony.l.nguyen@intel.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[avigailx.dahan@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[avigailx.dahan@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim]
X-Rspamd-Queue-Id: B1CE4451E8B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 14/04/2026 9:58, Dima Ruinskiy wrote:
> From: Vitaly Lifshits <vitaly.lifshits@intel.com>
> 
> On some Tiger Lake (TGP) and Alder Lake (ADP) platforms, the hardware
> XTAL clock is incorrectly interpreted as 24 MHz instead of the actual
> 38.4 MHz. This causes the PHC to run significantly faster than system
> time, breaking PTP synchronization.
> 
> To mitigate this at runtime, measure PHC vs system time over ~1 ms using
> cross-timestamps. If the PHC increment differs from system time beyond
> the expected tolerance (currently >100 uSecs), reprogram TIMINCA for the
> 38.4 MHz profile and reinitialize the timecounter.
> 
> Tested on an affected system using phc_ctl:
> Without fix:
> sudo phc_ctl enp0s31f6 set 0.0 wait 10 get
> clock time: 16.000541250 (expected ~10s)
> 
> With fix:
> sudo phc_ctl enp0s31f6 set 0.0 wait 10 get
> clock time: 9.984407212 (expected ~10s)
> 
> Fixes: fb776f5d57ee ("e1000e: Add support for Tiger Lake")
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> Co-developed-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
> Signed-off-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
> ---
> v4: replace ktime_to_ns(ktime_get_real()) with ktime_get_real_ns()
> v3: fix cc.shift and wrap TIMINCA write in systim_lock
> v2: avoid resetting the systim and rephrase commit message
> v1: initial version
> ---
>   drivers/net/ethernet/intel/e1000e/netdev.c | 78 ++++++++++++++++++++++
>   1 file changed, 78 insertions(+)
> 

Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
