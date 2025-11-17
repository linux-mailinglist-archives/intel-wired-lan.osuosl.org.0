Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E272AC638F0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Nov 2025 11:32:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 90EA760C2E;
	Mon, 17 Nov 2025 10:32:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XeNsQSadjd2F; Mon, 17 Nov 2025 10:32:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0593160C34
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763375524;
	bh=f6xB3hi5WJ1iC818TIAv33wwTQL5LGZBXwS5uX8vsps=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JIGnxdn4gmmcKxPJzilSE7s/OgK36q0Z9E3o8OITBqReGvVdL2MJRlUboqTBIu9E4
	 T25z8pygd4kdzIfIHOzu75PpGTuF3wnjcMdzMTYMkqxrhpahkyqtlQoHnVk+ORgiKs
	 MZlKuqSHF64BYlSwdr0Y9qrmHhk1Xr7vZDZYH/Jpl3Tn/XJvMH3Fk0r/06fOQiKcgz
	 /Ry7J7MeeWU4Fn1Bql5TE+RD0SxtlJJunS6t44M/cV951k9MfyTW6PNne1erc0qcd9
	 ypX6DGG3a4lsySu2yfH8M0V3PdpzIDdf171umhji1uG7CSahvOjuORFZPRvsmHNssc
	 nV6ZDEcumzwrA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0593160C34;
	Mon, 17 Nov 2025 10:32:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id B0802D5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 10:32:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9FF834083C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 10:32:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JS059FNzhve0 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Nov 2025 10:32:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 858BB4082D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 858BB4082D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 858BB4082D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 10:32:01 +0000 (UTC)
X-CSE-ConnectionGUID: Qk7ynqBDQpG0u+rVrhbN6Q==
X-CSE-MsgGUID: tpXZFQ0HR7SfqQJ2+Iz/Ug==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="90848844"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="90848844"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 02:32:00 -0800
X-CSE-ConnectionGUID: WX2LEja8TLeBOJ/PBkStnw==
X-CSE-MsgGUID: A12QeEuASsiF6bpJq5vAug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="190428707"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 02:32:01 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 02:32:00 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 17 Nov 2025 02:32:00 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.1) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 02:31:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kK4cbafDQ6tM+dg0wXPd1d+vp5VDWVaC22HbOpwEOPANE/yGh9dmFsQLmn7YvVZyeAw4JfGZUhAJXLJmauUG5a0qpnjqfwucIwoC6ZRQlUBSnl+fKp6rEwZGTim97W2KUpUKkhqakFYFJ9KFqVUl9hST487vEDNBOnehvMH0WNh1+d+WQ6ngTnl49gMrnjvv7S+EA503T5dLE6/ii/zuTDMidL9hcIOJd0MB42RR9ZFCbeTMFipw8ZI7X89v95j5EHdhslfZH2oM4PArzugKwEleWzzxxu86gWOs0UpT58228W9X4BScjWcLFa8r0TEOBfJaQqxZyOV4ILfgAVxLHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f6xB3hi5WJ1iC818TIAv33wwTQL5LGZBXwS5uX8vsps=;
 b=WPxBhknbfwTfs7Hg72ENEPQzHiDa/axpXhp6n5iEMC0yZGDAPGd07UaFIKbrXWVulksrjMnJU5l8I8Y430u7ziPYM8GDCsDfztRNaVTVoDjOFesUDhHS/QqpR++W3piJ5byGbHo+5bUu3/4bLBAtP9ntf964SITewhaSmISjZ3Jh8uzT16FJDBVR0I5eeE2Ufu6xZPsSqgiGrgFJZKgXL/kai3qDeJjRUByIrfRvN1BAJSKZJOynJ2tUbjIn+AAzBEuME8B5RAyM5TSrsvs0Ji7iIRgRtW8lp4rOYGwi+TNcKwha/AXSHbj6jTftZ5BNvD63M6tEKak1yo033Es1aQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by SA0PR11MB4670.namprd11.prod.outlook.com (2603:10b6:806:9a::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.21; Mon, 17 Nov
 2025 10:31:53 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%4]) with mapi id 15.20.9320.021; Mon, 17 Nov 2025
 10:31:52 +0000
Message-ID: <8347f99e-8f00-43c0-b492-4b0b6653bbe5@intel.com>
Date: Mon, 17 Nov 2025 11:30:10 +0100
User-Agent: Mozilla Thunderbird
To: Alok Tiwari <alok.a.tiwari@oracle.com>
CC: <alok.a.tiwarilinux@gmail.com>, <michal.kubiak@intel.com>,
 <przemyslaw.kitszel@intel.com>, <anthony.l.nguyen@intel.com>,
 <andrew+netdev@lunn.ch>, <kuba@kernel.org>, <davem@davemloft.net>,
 <edumazet@google.com>, <pabeni@redhat.com>, <horms@kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
References: <20251117102244.9188-1-alok.a.tiwari@oracle.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20251117102244.9188-1-alok.a.tiwari@oracle.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL0P290CA0014.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:5::8)
 To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|SA0PR11MB4670:EE_
X-MS-Office365-Filtering-Correlation-Id: 0607a082-fd0f-487c-8ec1-08de25c485a9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WEVybTdGbWM1Y3kydVZjby9JMTdKZUdvejdQN1E2N0hQdWtlaml1dy9ia1dX?=
 =?utf-8?B?WjVaTitJTHIvSC9yK1JCS2tBd09Mb2t3Wno3WTd2bmxNQ0NSMXpZK01CQWpj?=
 =?utf-8?B?MEJXY0dRTlcrTW5YdEZwK1hQcVRiN2Q4MHh5Znp5aVB2UUJndFFxM2VhdUJW?=
 =?utf-8?B?bk5ScStacU8vcERzY3czVW5XWGU4VGlWKzJUMVQzeUNjNWd6T1J1eDFmU3Zk?=
 =?utf-8?B?MEhJeW13MnoxdzZyWk1KK09RcHFBNkExVGtSaHIvWnFvclh6SUl2ZkFnVXMw?=
 =?utf-8?B?K056VVZNQStKczFSRkw2NjZNZGwyaVBxQTYxUTdZQmxzbDFZN21aWXlzVG90?=
 =?utf-8?B?WmVnRmxJK3hvblVpRUk5eWo5cWZDLzk3a0Vmb05KK1lNdlBDQW5aRDBQdTV0?=
 =?utf-8?B?eDA3aXZGS3A3WmlkMWhoQWtKTTNxMWNoQXFjbi9vTXVzQnp5amRpK3dsSFVj?=
 =?utf-8?B?cGJmNE5neFBidldXOVJBZFRtZCt0OVh6SnNQQUNJS1hPc3RYVlpSUG5yaGs0?=
 =?utf-8?B?L2JvRThzUWkrRExtWWlhZ1hFVmFHOTZvWG5wSzB0RWlvRllYZ08rTzVYL2lG?=
 =?utf-8?B?aGJPYmZiQ2tTakRJZk1wZ0RXVDJJUnc5UGEwamRVUC9CdTVxcjdzYWlkT2hC?=
 =?utf-8?B?SnBzcHRlVnJFSk5Mb0hqeDE4enltT294QXFXSmlCNTRVMUgwYm1GS0VYcmRq?=
 =?utf-8?B?enRyeEptdXlFbDdNVnhoWDJGYnI4RGZXMkhEazVyNUR4R3hBNDJFSXFlL2Z2?=
 =?utf-8?B?Szd6aGpUaGhTMDNwcUhXUllaVlBLTzVlR05pYUVVOW93V05WSDdtb3hSdzRt?=
 =?utf-8?B?WTlSUkhvbzhoU0dZVnhKSE51eDRBc1ExWmIrSFZ2Sm1rSWpUR0JxeG1lRDd5?=
 =?utf-8?B?Mm5xbFdqNmFaK3IwTUtyN1kwb0xmS1cwQ3dLOGtydUoybnJyTFVwaFAvSHpH?=
 =?utf-8?B?aTRDUFRiWUh6TmNHc1M5Vk52YUJMOHRIMHc4bWNPOGk1ZzF1U3JSamRUSFhE?=
 =?utf-8?B?Rm5qOWZadTFQOENEWXBaTWNCVm9QOVltN1YzQ0JRTmtFVmpNZk0wS3gwNVV5?=
 =?utf-8?B?N05lZXRxSzkzNjk4T1ZyNzg4U1pFQzAvaW1XYlZrSEoxaDZ5RFRMTTIwdVlE?=
 =?utf-8?B?akNtOVpQSW5mQzNmVWkrRk5TUDR1K3YrRThKQmhpWnpDVWlTYmdubDh4bzNY?=
 =?utf-8?B?RkR3QXdQWHZyMVcydDhvbzFjK1hHanpMQ3BFMTJHdXFITmx3TW1uV0lpMk4r?=
 =?utf-8?B?eGxiSVAvY2l4YVMzMm1PZEovNkxKeEFOWFcwVGJhSXQyUDJ2Um9MaXZ5WkR4?=
 =?utf-8?B?NHRra2RBbThINHY0b24rVzFyR1BORWpvdGlhRkp1K21xWmtUQXRpT0JJNDJU?=
 =?utf-8?B?ZU5ReFJia0srWnhkbVpRSWVTRHo4QlZtTDhici9DQUR1eU1odGp5MXBSV0Ur?=
 =?utf-8?B?OU5UU1Y5TlpuUkJoOTQzeGxrbkRFTHVLQVoxeTRPMmN0STJvVWJTc0MzczAy?=
 =?utf-8?B?bHdHdnpSdGVsVGZESGxpbVphaFlhN3VCaWEzSlFqbXhxVjA3QWVLRThEbDd6?=
 =?utf-8?B?YWdxYUVhTGY5b2FFQTE3MFdmdy9Ca1J1S3BkVmUzM3kxK0RWTnhzb1NNdm9L?=
 =?utf-8?B?bGlha0VKSzhHV0F6KzR3MUFESTJtWjgxenh2MkJpUUVGald5UHZDc1NkeG04?=
 =?utf-8?B?NmF4OThRRmpYOTE4NFNwZStuMlpZL2IrUDRiYzdNRVdoK2dJWS9hS0oxS2hx?=
 =?utf-8?B?QmlFcUI5RkhmL2dVWVRWOE1CY29pYTg3MUh3VWp3RS9PLzg4L1BRTjRsRHR6?=
 =?utf-8?B?UnIwcVN5WUVCdkxSZEFIUWU0a1l2L3k0eEErNjNjMmpTK0dKUDlYUWtZRzlo?=
 =?utf-8?B?Ym1xQWgzQ3l3Nk83Q0pHVytSNi8yWWRjdVZTRjRmOGpOTVNwZlhwOEd1Ymhq?=
 =?utf-8?Q?2oFwRJ2g0r1g1eXZ+TvpoeudGZaYpgN4?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bUU4dTllMGxXdndjWUZHLzh1Zi9ETk5SUEhNejY4cVBudi9VZUNQQTNMcWFY?=
 =?utf-8?B?d3llYjRhcWI5T3BYbHBubmNON2RGbEl1czhDeXd1b3NWdE53U3lMUytSSW9i?=
 =?utf-8?B?dVRBSlNYcWtEeHpkRVJadG1wdHNoMm9oMnN4UE9EdENhRXNNSVZsY2NNblQv?=
 =?utf-8?B?MmRFUmd2Vk85bEFnVS9yZk50ZGZNcWNXR2o2ZDZWeEV6c2dZcGgzOUFNc1c2?=
 =?utf-8?B?cFFnYmhqZ3o1d2NIME1IN1NNSHljT2FkZzFzeFZMOFpGdnFKWjhlUVlPZkhp?=
 =?utf-8?B?ZThxWlAvZE1Ja2ExK0IrRXdLNWcyUG1KcXJHaGtTMVg0cHZCamptK3U3WWlz?=
 =?utf-8?B?b1M1a3BwQUFZT1JsS0RzUDQ1UkYwWEN5QVhVdE5QMU1KRE90TDNxQ3hKYkJQ?=
 =?utf-8?B?RGZDcDFkNUdZa0R5em1xT3BBNDV5dnoyQWFnVDBaRUtxZ0h0Qk4zVGcwdFdv?=
 =?utf-8?B?RGxFZVZMMjBITE1obWlFdFcwaEZsOEVBMzkvSFhRcnBmakhEcms0Rm1DUGFx?=
 =?utf-8?B?eHQ0VUxiUGhFRnd3YnM2ZUNWSURoNWRhV1dZUkFpMUd3S25vWEJPbW41ckxv?=
 =?utf-8?B?VDhQMllxMkRkY2xDYjZlUWlzTGRSZ3hjZ1pHV3k3TGhXN3cydENjNFMzalRQ?=
 =?utf-8?B?TEtrZUVXaGRwYjZDb1JIOHdMY1BWeWxqOFlmZkFtTG0vckxmc0dFSkthOWov?=
 =?utf-8?B?VGFCZFBxNFR3aWNDQkhVNzVxQVJrMTljeG9KcUhDMW9ySlV5bkpQQ2d2TElN?=
 =?utf-8?B?NDhQcjIxTkZKQWVLZHRhZ0ZXc1VEb2crSnV6U0lNemQycFA1RUJNOWN3YUp1?=
 =?utf-8?B?eEhYQ0F6RlpCK0VSMm8zU3BpKzFXeGtJd1p0L01IbWxCaVRVWU1yRW14Ykk0?=
 =?utf-8?B?K2VISkR1dGNUNzEvU2s5WU44aUF6TWtqS1dsRlJ2cVIvL2hjUVBFR2ZYWTJC?=
 =?utf-8?B?V2wwSjVhZmorZFJ5VGhiOXh6cE9ndkVBeTFiMHFHY0dWZE04ZkhlbGYzZ2dv?=
 =?utf-8?B?R1N6b2NaV3ZjTDJ1bWVPTUNMa3F3MnpkSFZrR2t1Q3JFaERkTjNUUFllYlZH?=
 =?utf-8?B?a1BzeW5wSm1RWU5wVWprSnN0eWVyV25OeWFvU0RyMGNuUDkydWF5Q0VwL2Rh?=
 =?utf-8?B?bjJydkc5WGVkak9JaG4wZFBMcUFmREtCYzNjRmM0UnM1TWN3Rmpjelk2U01n?=
 =?utf-8?B?ZXhQejRwOFJZellRbmxESTNHZlpmdWUxdFdhQVpPbzBHMDF2b3UyckpwRUti?=
 =?utf-8?B?NjZ5WWpvcDR5SmhvOTBjbG9BbUpHZ3hMWHZzSks2cXBWdlNpVkJ3RlhxVENV?=
 =?utf-8?B?V2QveWdFdW9tSmwrTXRDNHpmZGtGcGU0Z3JyT25TYnVmSkptckZ2TlFKTVN1?=
 =?utf-8?B?TlVIZVI5ZWFIS0Nldzd2TlFNWnJtOUlUQXNENUVENWdPQS9CaG5RVEJaK2tS?=
 =?utf-8?B?UkVRZFd1SHBiMWt3V0ZqMTB6TjZKVnc1d0J2ZVRLdEF5OEpTTzNsOG9xSCtn?=
 =?utf-8?B?Q1MrNXFQVlVscU5sTkhjbXNGVWpGWnRVaDA2ODBqdUM1VktQaFdJbzVhVVBK?=
 =?utf-8?B?WGkwQjl4bDd3WGFUcWVCdE1yM3d6ekppRmlENVJMVjIzR1NQYUJVbmJlTE5X?=
 =?utf-8?B?eW1BVWdyRjNJdk43VE4yS25sSnRybUVJdUJ3bnlsY0FxMEk3Um1sTzNjYXhG?=
 =?utf-8?B?U0JSTnE2cjBGL0M3cllZS1BTcEE1M2dXSDVzZThBOEtzVFE3MUdTRkV4QW1E?=
 =?utf-8?B?bXFlOFdXcWJSemxIakZmQUZQSS9sWHAwaTlEeEw3SU5Xa2dsNy9XMTR0K1Iz?=
 =?utf-8?B?S2tzbWZnUjlldno1cFJKYlQ2aXRXdEYvY2hxRVplUlhQbFZlZitTcTliU1cz?=
 =?utf-8?B?am96b0hrc3VVVlFBU21MTzh2eDBMMEovaDBNVVFNVXVjNUdMa1BZVUQ5SmdI?=
 =?utf-8?B?T3AwMC9SMU1BbWFuSjltNmxzRDVEZDBXZVNSWVQ2Q2pxbjgwRnRud1JGTmRy?=
 =?utf-8?B?SmNIZ2FrR1pGWG1SZzFveFgzNDZSTmQvZ05qYjhva3hqcFRFUHNxYzNoVUI3?=
 =?utf-8?B?bDJGYUNmdURZSWhjeEx1bGlrY1BxSDlyVUkrZkxKRDJVdGE3d1dyWHFwREtC?=
 =?utf-8?B?QmR5dzNpdGxIUjBYUDk5eE50N3FrUU50RGNhbWNabllCL3NySExQbGVDaE4w?=
 =?utf-8?B?Z3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0607a082-fd0f-487c-8ec1-08de25c485a9
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2025 10:31:52.2793 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5uyYmT76cCFcde3w26NZ7+gk4m3sQKOZ0FksvTTB+JLCExmaOmD520uWcQlQxtlg4zEMLOw91m9EtXvLRY7ZMlKv6MSq9eDkJVBDOGL0IT0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4670
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763375521; x=1794911521;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HO0B613O18NC6jg+ZUTL/XPVRyqXMoQ/+sj3p8YObLk=;
 b=OixmPFw2G6Uc7SQAw93I4Fh7GM/8t2IqmYbBQpI3YzAb/HEFhCnkefNH
 /Dc8FyncKm4lxLPeB9IIi0ZITqZ+peaq4KBjDjgFYlXi24pZ0/JmUcMC+
 2rZn2AwMEiuOa/s1cetACev8/PvvuqfI77akk+xTHxg5hJFSRVBCvQrhQ
 mefFlAALUrQW8FJH/ZRtywtpnJMkR4c3xvyTLBXwkZNBpEstXx575vwXO
 wdIWAX1SYdvwBuAJSzkS/t25Ds2AF5RwqtpWs81YWR6XQBmRvPGtXqV++
 D1ujv7b/+aKjjc0PV6BVAmmeaEKTuiXncBK2xOlG01fDvyVunESWkK2TY
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OixmPFw2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] idpf: Fix incorrect NULL check in
 completion descriptor release
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

From: Alok Tiwari <alok.a.tiwari@oracle.com>
Date: Mon, 17 Nov 2025 02:22:25 -0800

> idpf_compl_queue uses a union for comp, comp_4b, and desc_ring.
> The release path should check complq->desc_ring to determine whether the
> DMA descriptor ring was allocated. The existing check against
> complq->comp is incorrect, as only desc_ring reliably reflects the
> allocation status.

How can it be "incorrect" if these 3 are in the same union and have the
same size of 1 pointer? Any of them reflects the allocation status.

While your change improves readability, it doesn't fixes anything at
all. You can compare the object code to see there's no difference
before/after.

C unions are not the same as C++ unions, but even if the kernel had
`-fstrict-aliasing` enabled (and it's always disabled), the result would
be same. And C unions definitely don't work like std::variant.

So this could only go to -next as a cosmetic change if you really want this.

> 
> Fixes: cfe5efec9177 ("idpf: add 4-byte completion descriptor definition")
> Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> index 828f7c444d30..1e7ae6f969ac 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> @@ -134,7 +134,7 @@ static void idpf_compl_desc_rel(struct idpf_compl_queue *complq)
>  {
>  	idpf_xsk_clear_queue(complq, VIRTCHNL2_QUEUE_TYPE_TX_COMPLETION);
>  
> -	if (!complq->comp)
> +	if (!complq->desc_ring)
>  		return;
>  
>  	dma_free_coherent(complq->netdev->dev.parent, complq->size,

Thanks,
Olek
