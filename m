Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SGwNOeMdw2mJoQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2026 00:27:31 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AEDD31DBB3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2026 00:27:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C5BC861019;
	Tue, 24 Mar 2026 23:27:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 80mT4DrZWHHS; Tue, 24 Mar 2026 23:27:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 29FB9611F9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774394849;
	bh=FmlQrRg+pBnGSjw6GKOFEFwwIRjVNstcFM7oHCipK7U=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yngxA6Snnn7y45481oqqSqa5ptig74OYyfqEKe/BJTXAmlymcq/MuAd5gNDsFlEx6
	 gIKn2Kp14ssfTLFIXHEL2//sYN+alsmBRfx3nQVQ01pnHr/RiCE8QCD/Aj9TWbv6Sj
	 +Wo+CxF4UFDpm8lqxJcwz1g4eIfNH8wLTDm6hDuHD50uiT5Sdlj0RtU4NpuwsRUqhe
	 fxhWRilvlsdlAhJgPx6yS5+yhsGX7d4xkbNBwcspvqE1WALHwCyQvZwaytaY8W/nmR
	 qi0im05LhKIAY11JwtWDvsp2WU2ATDB5rFWKKVMIbw5h3VfySvr15worb5Q7QJJ0q/
	 yMvhXH2e6CYNA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 29FB9611F9;
	Tue, 24 Mar 2026 23:27:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 59ABC1D3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 23:27:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4B05A60A57
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 23:27:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yaxKUatjPHBh for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Mar 2026 23:27:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 48E2F6088D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 48E2F6088D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 48E2F6088D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 23:27:25 +0000 (UTC)
X-CSE-ConnectionGUID: 2IsZCAVHRnenvstfqo+BAQ==
X-CSE-MsgGUID: hWQdNlRxRw+vfk0U1VcUCw==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="100871803"
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="100871803"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 16:27:25 -0700
X-CSE-ConnectionGUID: fFqsnw1TS8SWr2bA2kX1Ng==
X-CSE-MsgGUID: TtVPgSM/St+eTjLTyJ2Yfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="226138273"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 16:27:24 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 24 Mar 2026 16:27:23 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 24 Mar 2026 16:27:23 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.51) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 24 Mar 2026 16:27:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a0MpZGF4TMawdIEppOfpMuXzQJxH1JBJkzxB0orkf8QwppIVca6FH0RDWz/gYpgzK9eoH8dfD0q+y6OwwVtC/JqK4+4Is9K/QXVMUWqgwyuRfmWJgS+NFhNpGjf3NIbUg34kxocBc2MzmuxCqDUzwWTPfwSHojBHD/dlhX248Z5elxJ7/HZnCvJ4aUZLF2uPmjA1QQMTHILICFQUM9LOPdRR6MMdrhDPse/ljzr2VwtaBmBvdZIGjDglDoyrSvrBmBDHRE7rYZ882gnPOLTuyn77C36RJ9ZCE9QDrRAWI4n/k0tCrFyTfNcNoHQ36LguOKHK25QbJ1hgfMBLavKxdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FmlQrRg+pBnGSjw6GKOFEFwwIRjVNstcFM7oHCipK7U=;
 b=PyzjLCvFe+DG62FdEru47KcYjaAOZrHD7mDjy63rJXGhzyWltMa3B0s4GruBZ7TMsmKx63GxIGxZM4Liv95q5Az5FvXzi+pUw0hCzPlbUzxC+Kq5hhCqRidbMIAXRoFXAkVNLe31OfZigi2paVwr+TMSCWNVmL7yxXykZlgqYpTbhXbWuOYUwAZb+cGcVL2UCrdGQkLLQe6/78KpcLExWNtmR2jCoivqKkKjeUSqiEHxFPxjeAId11cfvd0V+yY41nYKReu5Aoka8tHvAnud72GHTrmabxqKS5l8SBDAXKZnTjA78zQP/YMEQkScjZLW9C/P5x0fCC6fLi5T+c8Zbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8230.namprd11.prod.outlook.com (2603:10b6:8:158::21)
 by SA2PR11MB4985.namprd11.prod.outlook.com (2603:10b6:806:111::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Tue, 24 Mar
 2026 23:27:15 +0000
Received: from DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40]) by DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40%4]) with mapi id 15.20.9745.019; Tue, 24 Mar 2026
 23:27:15 +0000
Message-ID: <a70a49a0-43f8-4908-993a-50999bf0dfa8@intel.com>
Date: Tue, 24 Mar 2026 16:27:12 -0700
User-Agent: Mozilla Thunderbird
To: Agalakov Daniil <ade@amicon.ru>
CC: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <lvc-project@linuxtesting.org>, Daniil Iskhakov <dish@amicon.ru>, Roman Razov
 <rrv@amicon.ru>
References: <20260318120512.687149-1-ade@amicon.ru>
 <20260318120512.687149-4-ade@amicon.ru>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20260318120512.687149-4-ade@amicon.ru>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0352.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::27) To DS0PR11MB8230.namprd11.prod.outlook.com
 (2603:10b6:8:158::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8230:EE_|SA2PR11MB4985:EE_
X-MS-Office365-Filtering-Correlation-Id: 57cbe233-61ad-4ae9-e75c-08de89fce229
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|56012099003|22082099003|18002099003|7053199007;
X-Microsoft-Antispam-Message-Info: /3MqKeiO3QQUCEEEq6eA95mN+uH+igzaYRZXeX3ZKDINmgG99oKL4O0SwESVM6PPtChtu1di7Jz3lPCgcOfTNdLPWArbDLd0Rq+IMZS4idmzV5cDdpxQ9PJMacQwJuKtHQEHTnYSO66BVKqJOxaKW2+zVtIcw8L8FyeBtm+FQOMzim6Bj6MMKKLbnM0mI5fwsHspevr0/d9FYmPoj/NDZ93LlyG4DKR18tCHsQkdBaI24Nt+ypqlfsLoy6dQsvgo8DlEjn5F+p9fH5fuXFTBSKfJtHdMVDd7598xdT6fWQjy3uc1d7QP9IK4ceurnEb0JZs00iuXSrJOxh4k8IQI1pDGRR6QxqUaNe84Ds4KPapdsIcmer7ugXcdZjqILUcfueb9+5+i6+1ypbvNrbOO8hmAtKjvKf43KAz4qtsSD3irHlL25mxae7FkGV65g2nHuUpd3/B3tMQ/zQQjOKtap98VjxBY8xzezfLA7S8TekdCxiWuDziEZmlWAGRRUBqjJUN8bfhsmsXW2b65WXPz8+VTT3rma6oNZtvdYXq0/YEV3H678yqnId66LV7Py2hyDXkCZ9Q9L/GLPcOKFBcetHQ8mdahAZ/pTb7NaER4WeDwWE9fCY/qdNKX43U3cDKbcUdF9JLhvYSzwUv4QDpBiUz2nGmDD6K5DVoHmveVZDGDdvxPP/QKall6bokyNeqKVzuSEDPuyU9HR1YnokEQ0C7fNkRrFYIG9mH1anPrrGA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8230.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(56012099003)(22082099003)(18002099003)(7053199007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QnZ5Q3JuYUJBVkNzbmFmOVBRWndWL3Z1NHB1SE1qZ0lzN0JTTGI3dlRML1BG?=
 =?utf-8?B?dW9jYnRycFM0bGxFRUZmTjZpVjE1a3MyU2ZXS2gxK0l5a2sraXVDZWxpYW0w?=
 =?utf-8?B?Z3NvRy8zMStzY0tReFh5U0d6bDNnR2VEWXlwOFcrdVUxdmxRM2o5QzRXQTlr?=
 =?utf-8?B?VlJJMWw3cjhpYlMwSk9MQkhTdGRpcis0NlpKVlpxTXlBSGhlRGtSdFh2dGlI?=
 =?utf-8?B?ZDhobC9iamhKejZjVjArc1NBdVpjZWVCZ2JLOUo4RFBCOVdYajgyWmdkbUxT?=
 =?utf-8?B?ZTNMVXhLNnpuL2NqTkU3a1NBVm9UcFB2SEFJcU1RT2F2QndDUVBNQTdzUC9J?=
 =?utf-8?B?UzRvZ1BBQzBaZndEKzU0eiswTDJvSDF6SkdXdjdyaEpYYXJGTmR1MTBuY29B?=
 =?utf-8?B?cHZzS3ZsSUJ5aEJjTnF6UlRDTTdQVlhYK2tyQ3NFa0M1S3dSOHFveGJjTHhE?=
 =?utf-8?B?NHI4WEo0eC9jZ3o5YUl1VGVXRVJKZ2k3dEpWK3p0MkxzK1UyYWxLRGFaSWpk?=
 =?utf-8?B?aEFNa1U5MVZKVzgvejEvMHdLVWVkczdrOFhkcVQwWWRpSTkxSWx1RmFvcXFK?=
 =?utf-8?B?QUZHSU94VENWdEhsc3FvTlU3amhTdmZoNStzNVVKY2xwbXlRRXlCdmZ2M2FT?=
 =?utf-8?B?WTRUYy9Gd2ZwcEY4eDg5eEI2QXZIOGFyMEFGMXdXK1hPSnZUVmZCRTdVRmFC?=
 =?utf-8?B?SFpoMnFubThIWUx0ZWxoMm1BeFhUb2VvYjg3cG1idnFwTEN1TEFRMzBycE5l?=
 =?utf-8?B?V0xVZjZsQVhTY1JBK0xndG9TN3E1Y3VUS293TFZJRVVyRWIxWFFmbENOb1lV?=
 =?utf-8?B?VjlTYzhZVkxTWFNaOC9QdXZuWVdMdEJaSkppZk1UWk1pR3VWVE4zZWdteDNE?=
 =?utf-8?B?cityeFkvWEJBWGRHM2lFYm9kUmJNN2NhSHE0eVEzMjd6aU1PQkVYU01tL0Vp?=
 =?utf-8?B?Y25WRkJ3ZXVNU0REdkpRRWwxRHFiakNWSVBwV2NRUStVVzFEVldqa2p6NWZa?=
 =?utf-8?B?YjQ2UHhyeTd5Y3QxVmIrT3dZWWZWbDFOc3hUSXVwNkVKUndEWDkxU3FvdGcz?=
 =?utf-8?B?OSs1YlBMd1dPOEV5VTB0dW9zR3dGWGJ6SllWdTZ2bXduSHZlVGtJSjN2NG9R?=
 =?utf-8?B?UEVka01JT0czdW56Rk9uSFZWTHFPSmR1Vkthc1dRdEdxVFIvT050T01HalJE?=
 =?utf-8?B?dDBoeVp1MGMwbHZOcC9wS2hNbHYzUkg1TlJ2Zkk4RUpoTVNFa1FNcE14MVdy?=
 =?utf-8?B?c2VQUlNTZlp1Slk5b0RuQmlYdDZYZlNud2dnZXVBZ0dDRFo0aTdQRkVjZGxU?=
 =?utf-8?B?WjZXNytlaHhYWlpvQmNtc0hYV0J1bVp2b2t2dDMwRDlIOGRPejNQQVpoOVRN?=
 =?utf-8?B?S3A1cmhSKzBHSU5BdTV6SklOUCsyZVNpNXJWUEI3S1BvN2pKczNnZW1tQnp0?=
 =?utf-8?B?bTQwYXE0REU1VlFaSmJWTUI5cE9MWWR5cW45N0YzemhWdmNISnJVMXUxbkF1?=
 =?utf-8?B?V2FmRTloMmNxQ1JnWUVoWS9WK0RBQnJKa1hudkc2OFJleHdPb2xGNUc1anJ2?=
 =?utf-8?B?eWhwZ1IvNEJvSTZDN1AvMEhQbS9QYTJrdklQdjBMdzd6cnlQWEtVWHh3RXdS?=
 =?utf-8?B?NDd0RFVmK3U4OFdUM0RLa3FhYy9ZbHlIZjZJamMxZ0lDdHBlUW54R2w2ODJP?=
 =?utf-8?B?aG5pWnRLMEFLNUFsTGR0ZDNpbHNrV1VpNzMvQmc4WlZCbG9JdTIvTXFJQ292?=
 =?utf-8?B?RnY3dmNwL0hmT3FRT2hXQkVmZFBUSXNLK3dycHpsR2VBWHFUY0N4M1R3TkVI?=
 =?utf-8?B?alplS3k5SmlUQ2sydWtydS9zUzMvMzlVbHBYaW1CYnRoUnpMWDI2Wm4xOEdw?=
 =?utf-8?B?cnJzRGh5akVRamtjUHg5bkh3ZGVzUzBERm1VMndQUWhYSDdoWTZMUlBDZGg5?=
 =?utf-8?B?TTlzSG8yWEhuVGU1YVY1VmRlL1oxVG5DSTNkb0F3NU5ZbzgrVjhlck53anBP?=
 =?utf-8?B?emUvZHlRYkRwUk05WitnT25mOEdHbGZwbDFrOGFEVzlLb3VVS01VU3ArdHdG?=
 =?utf-8?B?bTA0MkRIL0ZEVk5yb1NaYnkvTmZHalkrOEJMV2pkUk1Hait0MzJkYTROTlpG?=
 =?utf-8?B?S08zZmJ4dmorN0RxWlFxTEJQRzRnVXV6SkpheXBJSUlpaDMwVDNacFR4THdv?=
 =?utf-8?B?ZU5MZExJQjYwL2Rua2QyZ1ZJUGYzaGluSC9MOG9rdXRxOUhpSlkxQ0I2bzk1?=
 =?utf-8?B?aFgyakZ1TTBpa3dxbFkyWHlub2FHRU5DdXlnSU1qS2xLMnJPSE9Jbkg4QVVs?=
 =?utf-8?B?TGxOTjNKMXJFNzd5MGNWczFhUURtNjNnN2hIYmVuWjdsRkRvWTVMN3UweEdK?=
 =?utf-8?Q?+V6V90Hi1Ndx0a7A=3D?=
X-Exchange-RoutingPolicyChecked: Osv6ts26y5zXlJbrwEhWETuHrR+PR2kHrNrB/F5WwrEFraUoRh6wBMbhNg8K4OIfr9rDmkTWyqLrweZmXJoOkuPQTvXMZ1DwBkcfJj9Cnz7wBIrtUIiQbNAwiaigm7OrRKBXamFQ4XKN9yWZjrj90zI+2sskrTofM5d/VRjMQQ2SrWw/krrlk7cIv79FyzvZukB3P+lcB3FtiaZAEwKpmwdzQTKWdN+xLz/bDOz/qufQNO9n06ii/dIcrqZWUNjGgIeTX5uV2RwQ3LCx0tBe6a8IDRuWxZ51ms3NqHe0T3RMrAe4V2MsOG/Hh2tXYYHBkeCCw088iGYK+MhQjTRKYQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 57cbe233-61ad-4ae9-e75c-08de89fce229
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8230.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2026 23:27:15.3503 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LqQNpHlMwHiXAHgKIzvyyqqybMmkuvH71Rwx7H+Q6P+Xl9Plbuutn/VM1YAspgTqqSLAJv6IYUTUxEmxronTgcxtUSlwdEe9tNO1hBYqCPA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4985
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774394846; x=1805930846;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lTfDu0YZveCqyy212r5bshebKsQ04Brhm64yuYofgVM=;
 b=SOitehGiMB4hbQ6nNfNjGx7AxiICClRIN/YjuozuhMeIa8/NYfYS6lNK
 sttZOzL6SMn5mD0mSVz11qfS//tKr2ZForhK+ZtTqm9kOLVLPRLfjEdhl
 dcIlM7Le2AwnxFh++w0qdEwaGPVRNX5s7QMEqS1F6IDFHpGrCWtmBNEeZ
 pL9luHt02PkZ1TFFmNEzGOwYhlpWjJNd9+QbNlobCH3U4qNDcEWfdJF8p
 js1nHV6A2SibnMIVb/A0Lp5ro0sL/3xuAdmsO2HkxcNoHgH/7JRiVPP72
 f/U+JXt600cUq551S87wunHVPsEHcO6NyOHQFRuuzhRkX0YdXM3Q3ii8d
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SOitehGi
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net 3/3] e1000e: fix endianness
 conversion of uninitialized words
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ade@amicon.ru,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:lvc-project@linuxtesting.org,m:dish@amicon.ru,m:rrv@amicon.ru,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,amicon.ru:email,osuosl.org:dkim,linuxtesting.org:url,intel.com:mid]
X-Rspamd-Queue-Id: 3AEDD31DBB3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/18/2026 5:05 AM, Agalakov Daniil wrote:
> [Why]
> In e1000_set_eeprom(), the eeprom_buff is allocated to hold a range of
> words. However, only the boundary words (the first and the last) are
> populated from the EEPROM if the write request is not word-aligned.
> The words in the middle of the buffer remain uninitialized because they
> are intended to be completely overwritten by the new data via memcpy().
> 
> The previous implementation had a loop that performed le16_to_cpus()
> on the entire buffer. This resulted in endianness conversion being
> performed on uninitialized memory for all interior words.
> 
> Fix this by converting the endianness only for the boundary words
> immediately after they are successfully read from the EEPROM.
> 
> Found by Linux Verification Center (linuxtesting.org) with SVACE.
> 
> Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")

AI Review reports:

The commit message cites the initial git repository commit 1da177e4c3f4
("Linux-2.6.12-rc2") from 2005 as the source of the bug. However, the
e1000e driver wasn't introduced until 2007 in commit bc7f75fa9788
("[E1000E]: New pci-express e1000 driver (currently for ICH9 devices
only)"). While the e1000 driver did have this bug pattern in the initial
commit, this patch fixes the e1000e driver, which is a separate driver.

Should the Fixes: tag reference bc7f75fa9788 instead, since that's when
the buggy pattern was first introduced in e1000e?

Also, the same comment from the e1000 patch applies here. I think this 
patch should be split like the e1000 ones with the return value going to 
*-net and the endian to *-next.

Thanks,
Tony


> Co-developed-by: Iskhakov Daniil <dish@amicon.ru>
> Signed-off-by: Iskhakov Daniil <dish@amicon.ru>
> Signed-off-by: Agalakov Daniil <ade@amicon.ru>
> ---
>   drivers/net/ethernet/intel/e1000e/ethtool.c | 19 ++++++++++++-------
>   1 file changed, 12 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
> index dbed30943ef4..a8b35ae41141 100644
> --- a/drivers/net/ethernet/intel/e1000e/ethtool.c
> +++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
> @@ -583,20 +583,25 @@ static int e1000_set_eeprom(struct net_device *netdev,
>   		/* need read/modify/write of first changed EEPROM word */
>   		/* only the second byte of the word is being modified */
>   		ret_val = e1000_read_nvm(hw, first_word, 1, &eeprom_buff[0]);
> +		if (ret_val)
> +			goto out;
> +
> +		/* Device's eeprom is always little-endian, word addressable */
> +		le16_to_cpus(&eeprom_buff[0]);
> +
>   		ptr++;
>   	}
> -	if (((eeprom->offset + eeprom->len) & 1) && (!ret_val))
> +	if ((eeprom->offset + eeprom->len) & 1) {
>   		/* need read/modify/write of last changed EEPROM word */
>   		/* only the first byte of the word is being modified */
>   		ret_val = e1000_read_nvm(hw, last_word, 1,
>   					 &eeprom_buff[last_word - first_word]);
> +		if (ret_val)
> +			goto out;
>   
> -	if (ret_val)
> -		goto out;
> -
> -	/* Device's eeprom is always little-endian, word addressable */
> -	for (i = 0; i < last_word - first_word + 1; i++)
> -		le16_to_cpus(&eeprom_buff[i]);
> +		/* Device's eeprom is always little-endian, word addressable */
> +		le16_to_cpus(&eeprom_buff[last_word - first_word]);
> +	}
>   
>   	memcpy(ptr, bytes, eeprom->len);
>   

