Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 61FDF941335
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jul 2024 15:35:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1420C401EC;
	Tue, 30 Jul 2024 13:35:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nAhL5qgITrPz; Tue, 30 Jul 2024 13:35:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 14AAB40238
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722346503;
	bh=BKSnDsSuC6Sq3UrGh66ULZywbGDTPy0n/bQpU0eF/0E=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tqc9pSScnAiCZgmq3kWyBfXqBuy/nhX4dUDlLMiEgDv6V68KHNm1cofKGlIqXKHLM
	 W/R8Y+Dndtp29nDwDvUPAVj+pR0xCfglpfptE2O8VD/0q3xf/NzKBGBkSBcqAn1r/m
	 F0FtO09woAtiWJM7hiXUyR/xsZIrvyVZPLjbfXvlC6w7whtnMbuiDZr4RKYtd1xg5V
	 NJPUaIMgRCZt+XZUm5tCJVz05u5gqBy0bPNIgU4BaFp1kXc6SZqphuh8TBt4yNohR7
	 l2fgaLvzKbeLku8O9dZ81Ow7T3A3tVCeyPwsqU/p7P7sTlN08CzH0a1PYwF+NnvY9c
	 fwokLT5hQmtLQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 14AAB40238;
	Tue, 30 Jul 2024 13:35:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5CFB31BF404
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 13:35:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4AAA380B04
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 13:35:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f4vaQfDqf1oI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jul 2024 13:34:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B489080B84
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B489080B84
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B489080B84
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 13:34:58 +0000 (UTC)
X-CSE-ConnectionGUID: TiqStcFsSEeVC7K4YFgYfQ==
X-CSE-MsgGUID: cWbIXJK4Q1KXaCsypmq9AQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11149"; a="20339803"
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="20339803"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2024 06:33:57 -0700
X-CSE-ConnectionGUID: qI1MJ661R+G1lDyxQwlOmA==
X-CSE-MsgGUID: +r+eFz+pTCumRvpDdYvpwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="59190598"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jul 2024 06:33:56 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 30 Jul 2024 06:33:55 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 30 Jul 2024 06:33:55 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 30 Jul 2024 06:33:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LGSnRdmHygb1A18uIXOPuVE0eMHSi+8xGDJ1NoBRrMeeaeTx5bY0JER6NJjd4odboqhHHnjCiuZHudqLUE477q6saNYon1GtEhoanPkRXhL+QOpDCVg9SzWwM2NKe96aHvljvg+SWnlf8vKsjXfXv7lQk2Ha/wfgrhq3ef4PbXIJYHnrAUO8WakWoek3yo9pfmq+iKY0w/y9I6/YlV0jU+GzHA84r+jxSbs7EWw8GtZ5zjS6cc3QAjjVpAkn6qyyxlATqXpaaqcHWW1aExWIdBekelGex3c2/Ee2s4m1PkszxUIx3tXwOQWI2j+tliB5LUNVQaZHwUmp/Bvtwy2qIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BKSnDsSuC6Sq3UrGh66ULZywbGDTPy0n/bQpU0eF/0E=;
 b=OybLWDmpOzQxl0+VOnHdj+9Q/F4bCZjdKTJ6wndtKm82Y/N0BWXD4o721ZaPdSeMmgDyxEOMA201k/hmuvL6xioJg2p5bg9Ev25Pu1qMrFsVX++OHgkxqlWjdDx3el464NWuxdhCsi+ItAJ7isKGPD3lPw3aCNxnGNjDLuCFCWsSKx7+ukkorvdD/4I5gyVp0oBjALYqQTY3+YcnWe9OgmlH3YCo6KNei9hqa8UoDCApk+gKi0tinyxjJVKHqdxrwn1ABzzvREv0CcUsvqNEyNZ8aPDRvh4A08gJcJ1meQNhxsmQtURrNI7FoMHQK2fQGFcZJbGTnt4mEWQ6TDqI3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by IA1PR11MB6489.namprd11.prod.outlook.com (2603:10b6:208:3a7::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.30; Tue, 30 Jul
 2024 13:33:52 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.7807.026; Tue, 30 Jul 2024
 13:33:52 +0000
Message-ID: <71215655-6eab-44d6-a372-72b2814f0f80@intel.com>
Date: Tue, 30 Jul 2024 15:33:47 +0200
User-Agent: Mozilla Thunderbird
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
References: <20240730091509.18846-1-mateusz.polchlopek@intel.com>
 <20240730091509.18846-6-mateusz.polchlopek@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240730091509.18846-6-mateusz.polchlopek@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BE1P281CA0256.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:86::18) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|IA1PR11MB6489:EE_
X-MS-Office365-Filtering-Correlation-Id: 0f0bd47d-af41-4efa-4cee-08dcb09c4033
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WlZWSDJDNzYrb1RwcS8rMHo2QTBMZW92a0lxUFlHMUp6QVFEanhIOExqRUdu?=
 =?utf-8?B?eWVxSXN6cmFQaGhBK2ZqcDVILzF5OWxIRUY3M2RYUmcvM2pZS0NFLy9jYUFw?=
 =?utf-8?B?QjRqUHYyMHk3THFFRnR5L1BkSXVFYkNZcW9xQkxRM0lmSys2NnhHckgrSUhn?=
 =?utf-8?B?WE9MMXduWGhXK1hIZTJNa2pQTVF0TGRHRlllckJDZHh2ZmdpZk5kWFUrMkpD?=
 =?utf-8?B?K21VQWV6NGFYZ2t3Rk5zUVNzU0pBODVGS3hwWFplUzk0dlRXVXFQYk0xMFVV?=
 =?utf-8?B?cktaaU1vRnZBOFB6WjczeDNqODlTN3pzaVh1bWtJQWRZSitNQXBicjQvOEd3?=
 =?utf-8?B?WXArbFB4SEdtUFNPNlZPWEtYQVdFNGlXNlRUNS9JNy9rMjhmdXRmMkEzUnhz?=
 =?utf-8?B?RWw2aEVoRllyU2RhRVJGM2Z4RUFXSVNuWjA5aVkrSmNwTkU5WmkzcDNoMkpx?=
 =?utf-8?B?MmpNYzdXYU51ZVRsOWxYblhBKy9KcDZLaVFjdHFTYUE3TDZCeXhyZmV4Nkp5?=
 =?utf-8?B?QjVpckkwWWptWGJqOElqa29ieXEzQ3BhZTd3anlCTm81WkhGMmFITDZGbFNX?=
 =?utf-8?B?WkxUcEx2YVNRcll4ZmVEYXNDc3NaRDBtcExEWDVWK3gzNmJTZWtPRlZkUjRh?=
 =?utf-8?B?NS9OeVRnakpESDF2emtKOWVyVjEzZTZlVFAyUGpOQjlUOTduUE1JWVpFcXk3?=
 =?utf-8?B?bzVsSnJMNEVWb0k2UHYya1N4WHQxR21uY0d4RzEyOHk5NmtYYjNxZDhCUlVi?=
 =?utf-8?B?NjhkcFVpWWNEVTZiblQ3d20yejJNN1gvcEVpemRIU3dTMWpLdlVCS1drclA1?=
 =?utf-8?B?S3RBQmEwL0VySUtwTWZoVU1acmZERCtXM09iYnB1b0hYdXBrb2ZMTUJ0Y3Br?=
 =?utf-8?B?OTBncEthVDN3cU5qM05Pb2lac2RBWGQ5ZmNnazBXQ0xXMGd0cGJpUjNrRFBV?=
 =?utf-8?B?WXovYzJqSDhOYnVFdWs4Q0hScTNvbld4ZTdlY29Hd0k2azdzRExVWFlOcElo?=
 =?utf-8?B?MW5BS3RRcnVyUUhNVlBTTUYzNHNZaFZjNUVqQnFoaE9OR3lyUSsxdnVMWjhW?=
 =?utf-8?B?MEEzYk9iRGNGMXNwM3VDbXFFdi9mcVNTeERzbU9LQ01mQ1poS3NVNm1PdVBX?=
 =?utf-8?B?SzN5NWpTSjh4amlBNUZ4YzRCSktUUmRiYzd5RUtTRlNaNEVQOUNraVJCdjIz?=
 =?utf-8?B?dzlUMGVaYlAyWWJFTndXbW12MVM3VHcxdXYyYzQ1a2xyZklRRFZxZnN6SlR0?=
 =?utf-8?B?cFdvbC85WkxHMUNiMFlkQ3JQRkUvVjV3ZXVld0Jvem5RNDh5M2FsRXgwVDVW?=
 =?utf-8?B?SHMraWttaXZBd1lSdHJaTGwrQWp4R2tYOHZKM0RVNDdWY2MzWXpyeVpyTzNL?=
 =?utf-8?B?WDI4VEp4MC9scEpja2xacE5pUlQ0azNKVlM2VTQyNytkSmVjK3VPK09yZEVu?=
 =?utf-8?B?bnpMUC9WeGk4b0hwczVpckVpa0toUVpZelVpcVU0ZHJ3WkVHTkp4UUFGcU54?=
 =?utf-8?B?N0lQMEM2dnVkZUw4SW81cmExTzZZK3UzQ0RIclhMNXZQWEkvZkRnQ2FLSjhT?=
 =?utf-8?B?cElZT25XYmx4UzM3MXpUYjBjTGdqOVRhTEV2ajNpVzdqUHFYMVhYVnBaaWNo?=
 =?utf-8?B?N3d2eCtrSUhhdWNmeFJuQ0xKRC93emlTRGZLNUFQWFZTMHRQS2FjbjR1aXE0?=
 =?utf-8?B?OTgvbGdJNG1KL2trWFkxU21weUg4eFExWXBRWGpSUG9nRWwyR00yQTlWVjU3?=
 =?utf-8?B?TnBLZDlrN1AyWE1Keks0Q2VqVTVWQ2ViQjNYazRUaUNCRWFFbmRUUUVMdG5w?=
 =?utf-8?B?enlQMy9zSndMYjIrVUE5Zz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VGh4cGlOLzRJdG9MSEQrSTlUNVlSWndNNHRNb0pGOHY3eHhUWmFELzlDRzFp?=
 =?utf-8?B?MEZYNnMvOHcyaUg3RTRWZE9NL3ZLdGpodHg0eEN4eXNOKzRxYUJIUmpERUZo?=
 =?utf-8?B?REhlZzg4Y3dTdHdKMGVLMHYrOEdLejJSdWNxUkJnYktLenRKWS9MVStBQ2lt?=
 =?utf-8?B?ZWlkcGpKYTVzMmtrcUlqTjJMcUxJTGxwTmhqZ0JqaFR3akROU0o4RmhJOFJZ?=
 =?utf-8?B?OE5nYng2ZXNXWUZVQVQrcVNNNVlGeWM2M1JIVlFXQUVqcU03ZzZVQnk3T3o5?=
 =?utf-8?B?SWRYZlpzTnNHVmhucU5sbWF1dWtnN2wyRG5rdTJ5NnJrYTdXL05udStEVlJl?=
 =?utf-8?B?SWZ5WjJPbXc0bjAwR3QyaXNQd3NjWTA2QjdhNHNlWEtJS1JraDFMUmY2L0xJ?=
 =?utf-8?B?RkErM2s0b1ZOYm1IelpQUGhGL0xqMkNZSllTQzVlL3JidDNLbU5JOUpicWlO?=
 =?utf-8?B?U2liN0MwNmJFSlNkSTNjK1dMV28yMXJXZGtsYXVWVTlnSUwzeFBSdEl4aUFx?=
 =?utf-8?B?YmlkeEFQcmE5YWhiaWw4SlhYSy9UbGlvMGFkZzE2WnRMdEI1UkQ2WlBoNEdB?=
 =?utf-8?B?QWswVG9ydHJONm00U1JZV2tUcnZLSVdxSHB5NHloWUVadHF0YWh4MXJFUTky?=
 =?utf-8?B?d3I5UDE1eHVldmt2Nm91M0MyQ1dvOGpxUmxmRW93dUpyVDhKeFlsMVhuMHRT?=
 =?utf-8?B?Z2FNRzE1U2dWNmxxNTZjMjVOakprdklpYVhDMk1MMXpGZ01uZXBhaWhEd3FT?=
 =?utf-8?B?MVhuN2E3dmhWSnplS290TEFPMitjOGhpZUp0U1IraGVucGFBRmNrNlFSZita?=
 =?utf-8?B?RDRRRU84cG16cHJQSC9vQjNxNjZLUTZrUXhxYnpHSk05Y2FkdzZ0UldmUmV1?=
 =?utf-8?B?aytrbWtGQlJZZlp3Qk45bzhIZW15VDdDYzFyeUZ0d21BTUtOVDRzMjY3Wk5Y?=
 =?utf-8?B?dVA4ZXJJM0prNWNSTTVocUNQMXlVUmQvNk0rSnU4Q3poNmpNa3MxcEcrY3NX?=
 =?utf-8?B?clVqYVplejFhUE9PU1gyaUF0N3hVWldYZy9KdkJRN0kwdkJDU0JIQkszekJ3?=
 =?utf-8?B?dWY3emxkbFV5Q2xmMjY0N2V2ek82SzNaMXA2Ry9MZ0Q3UXRkVmlBd2ZidHE3?=
 =?utf-8?B?a0JxZVFZZndXeEFib3gzTWp3SVNHWjAyVHFRYXVROG9rclFUK1dXL3dWMkhS?=
 =?utf-8?B?Z1V2VWVrbERTRnRyQlBTOTU3QVJPeC9JSDVoY3FseHNvempscDhVZ203ZlM2?=
 =?utf-8?B?M0Y4c0hKOVNOUEc2d2tGNXZqOWdFdWtscVgrK290cWhGQlgzeXExLzR0UWQ3?=
 =?utf-8?B?WVY4cWRVbE1jamYyVElsbHExelJ2Y1ZpeDRSL3RwOERHbDlTUzVyQ0xHSFVa?=
 =?utf-8?B?V3JPR0FOQzdmQnExdi81WUtnVWszWDlYejRzNy93TEpLSkZCSS9EdTE5dXdQ?=
 =?utf-8?B?clBqSTV5RktVWm9mZko5S2dKU2sxWk85L2ZjYllzeWtFSDI1cjZVZ2ZtaUg0?=
 =?utf-8?B?cTJQL1p4ZFRIOUFLLzU5WGVwd1hUV3hhSDhXSDhyYm9DckRDNTQ4UHcvR2NP?=
 =?utf-8?B?SmZpam9uK1E1TXIxMXRBblpGMHZPSzNoV1VybXltNmd2Q0pyYUdQU1pQeGxp?=
 =?utf-8?B?Z21CcUN6Nnd4SzVrVTRubVRKUFhSZGhLZzd4R3F4QjdyMzZnL1lscWtlR21M?=
 =?utf-8?B?SkUrbVNVSTZEejFESVJRYzExa1k5Wm4vMDAxcnJHSnVqR1VTWHVSeVVZcll2?=
 =?utf-8?B?V090NHNjWE41Yysvc09Ka2hvSCtzNUNqQzJPV2pneUQ5RDBmK09FcGtIdjNY?=
 =?utf-8?B?elJ6d09oZ25BNFErb3IzOW15YXZDRVU2NW51WStXTHpDTDZtT216LzExSVE3?=
 =?utf-8?B?VXZpVUFGWGd6MjAvNGxiVFhFZGVTY21TZTRZbjFvRmJwSGhuTE02U0NJZldJ?=
 =?utf-8?B?RUtxU2wvWUdkZGp0d2NFaVY5dGsvR1NFdXBNd1E3emQ4Q3ppRmw3bjlyTG00?=
 =?utf-8?B?cmRZQ1VLTEQ3RW9rZXpEQ3JnRHAvd2kxcEtkRkZBWHFuOGZKZE9adTVJVStH?=
 =?utf-8?B?V21hVUg4b1pMY0gyRHB6b3pCU1ozNHkyMUZxb294dDc4TWYyb28vbUowUkdr?=
 =?utf-8?B?Vk9ncmhHKzlUVVdVWGNRemdvalQ2d3hSWjRtaVIzTFo1MnpUMUo4cjJyblNZ?=
 =?utf-8?B?aUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f0bd47d-af41-4efa-4cee-08dcb09c4033
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jul 2024 13:33:51.9419 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2RTXNjJEpgxoH0mULx+m6i2ghzDSyT/OJm1vKpdSa/c/JjmWeyjI/tnyDM789axGc/ejIfa1rgqEHZtakUUL9Mj0+NbnYHsakMoMqcgsQPk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6489
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722346499; x=1753882499;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=e6tgKiVkZM0NBcukRknHLPddfyniIKYkuJUh0aB1J8k=;
 b=NskWeOcv+5sHNUmXsiqh11bIFDAKQnKYxsqfe3JqqmtEvOyGkeKBV+w3
 ICWpUfLP+G8f1jUBOvo8Cg2LCXetA71fzfbis0GvUVConmCmnlRwgUXnd
 2Q4Zx1HTL+G4EtFwOa9KPMibejYgtIBfzzX3HLofNRSUkBl17FZxT6wFL
 vutJR5MlWTXOBD8smUnfGPfAleQPk9nCsg6zYmpzDnZjKSv9DdKsh6c+c
 Ea/LAgzqHQUlFEYVeCkNa//wBMzA1/ynzVeiCcxZQDzbzLby7mk2+rAZq
 nQQmLF++0A4Jdpa1+9o5KRbdYO7lnG3haV2zrhzh4XZOFVK6A4AfTta2b
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NskWeOcv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v8 05/14] iavf: negotiate PTP
 capabilities
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Wojciech Drewek <wojciech.drewek@intel.com>,
 Simon Horman <horms@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Date: Tue, 30 Jul 2024 05:15:00 -0400

> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> Add a new extended capabilities negotiation to exchange information from
> the PF about what PTP capabilities are supported by this VF. This
> requires sending a VIRTCHNL_OP_1588_PTP_GET_CAPS message, and waiting
> for the response from the PF. Handle this early on during the VF
> initialization.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h        | 17 +++-
>  drivers/net/ethernet/intel/iavf/iavf_main.c   | 69 ++++++++++++++++
>  drivers/net/ethernet/intel/iavf/iavf_ptp.h    | 12 +++
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 79 +++++++++++++++++++
>  4 files changed, 175 insertions(+), 2 deletions(-)
>  create mode 100644 drivers/net/ethernet/intel/iavf/iavf_ptp.h
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
> index bc0201f6453d..8e86b0edb046 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -40,6 +40,7 @@
>  #include "iavf_txrx.h"
>  #include "iavf_fdir.h"
>  #include "iavf_adv_rss.h"
> +#include "iavf_ptp.h"

I thought I wrote already that you need to include this file only in the
source files which need it...

>  #include <linux/bitmap.h>

[...]

> @@ -423,6 +431,8 @@ struct iavf_adapter {
>  			     VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF)
>  #define RXDID_ALLOWED(_a) ((_a)->vf_res->vf_cap_flags & \
>  			   VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC)
> +#define PTP_ALLOWED(_a) ((_a)->vf_res->vf_cap_flags & \
> +			 VIRTCHNL_VF_CAP_PTP)

Same as in one of the previous patches.

>  	struct virtchnl_vf_resource *vf_res; /* incl. all VSIs */
>  	struct virtchnl_vsi_resource *vsi_res; /* our LAN VSI */
>  	struct virtchnl_version_info pf_version;
> @@ -430,6 +440,7 @@ struct iavf_adapter {
>  		       ((_a)->pf_version.minor == 1))
>  	struct virtchnl_vlan_caps vlan_v2_caps;
>  	struct virtchnl_supported_rxdids supported_rxdids;
> +	struct iavf_ptp ptp;

Ah, I see now why you need iavf_ptp.h here.
Alternatively, it will be a good idea to create iavf_types.h and define
&iavf_ptp and other structs you may need in this file there. And then
include iavf_types.h in iavf_ptp.h as well.

>  	u16 msg_enable;
>  	struct iavf_eth_stats current_stats;
>  	struct iavf_vsi vsi;
> @@ -569,6 +580,8 @@ int iavf_get_vf_vlan_v2_caps(struct iavf_adapter *adapter);
>  int iavf_send_vf_offload_vlan_v2_msg(struct iavf_adapter *adapter);
>  int iavf_send_vf_supported_rxdids_msg(struct iavf_adapter *adapter);
>  int iavf_get_vf_supported_rxdids(struct iavf_adapter *adapter);
> +int iavf_send_vf_ptp_caps_msg(struct iavf_adapter *adapter);
> +int iavf_get_vf_ptp_caps(struct iavf_adapter *adapter);
>  void iavf_set_queue_vlan_tag_loc(struct iavf_adapter *adapter);
>  u16 iavf_get_num_vlans_added(struct iavf_adapter *adapter);
>  void iavf_irq_enable(struct iavf_adapter *adapter, bool flush);
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 7edfe71fcf23..11599d62d15a 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -2083,6 +2083,8 @@ static int iavf_process_aq_command(struct iavf_adapter *adapter)
>  		return iavf_send_vf_offload_vlan_v2_msg(adapter);
>  	if (adapter->aq_required & IAVF_FLAG_AQ_GET_SUPPORTED_RXDIDS)
>  		return iavf_send_vf_supported_rxdids_msg(adapter);
> +	if (adapter->aq_required & IAVF_FLAG_AQ_GET_PTP_CAPS)
> +		return iavf_send_vf_ptp_caps_msg(adapter);
>  	if (adapter->aq_required & IAVF_FLAG_AQ_DISABLE_QUEUES) {
>  		iavf_disable_queues(adapter);
>  		return 0;
> @@ -2657,6 +2659,64 @@ static void iavf_init_recv_supported_rxdids(struct iavf_adapter *adapter)
>  	iavf_change_state(adapter, __IAVF_INIT_FAILED);
>  }
>  
> +/**
> + * iavf_init_send_ptp_caps - part of querying for extended PTP capabilities
> + * @adapter: board private structure
> + *
> + * Function processes send of the request for 1588 PTP capabilities to the PF.
> + * Must clear IAVF_EXTENDED_CAP_SEND_PTP if the message is not sent, e.g.
> + * due to the PF not negotiating VIRTCHNL_VF_PTP_CAP
> + */
> +static void iavf_init_send_ptp_caps(struct iavf_adapter *adapter)
> +{
> +	int ret;
> +
> +	WARN_ON(!(adapter->extended_caps & IAVF_EXTENDED_CAP_SEND_PTP));

Same as in the previous patches.

> +
> +	ret = iavf_send_vf_ptp_caps_msg(adapter);
> +	if (ret == -EOPNOTSUPP) {

Since you only need @ret once,

	if (iavf_send_vf_ptp_caps_msg(adapter) == -EOPNOTSUPP)

> +		/* PF does not support VIRTCHNL_VF_PTP_CAP. In this case, we
> +		 * did not send the capability exchange message and do not
> +		 * expect a response.
> +		 */
> +		adapter->extended_caps &= ~IAVF_EXTENDED_CAP_RECV_PTP;
> +	}
> +
> +	/* We sent the message, so move on to the next step */
> +	adapter->extended_caps &= ~IAVF_EXTENDED_CAP_SEND_PTP;
> +}
> +
> +/**
> + * iavf_init_recv_ptp_caps - part of querying for supported PTP capabilities
> + * @adapter: board private structure
> + *
> + * Function processes receipt of the PTP capabilities supported on this VF.
> + **/
> +static void iavf_init_recv_ptp_caps(struct iavf_adapter *adapter)
> +{
> +	int ret;
> +
> +	WARN_ON(!(adapter->extended_caps & IAVF_EXTENDED_CAP_RECV_PTP));

(same)

> +
> +	memset(&adapter->ptp.hw_caps, 0, sizeof(adapter->ptp.hw_caps));
> +
> +	ret = iavf_get_vf_ptp_caps(adapter);
> +	if (ret)
> +		goto err;

(same re. @ret)

> +
> +	/* We've processed the PF response to the VIRTCHNL_OP_1588_PTP_GET_CAPS
> +	 * message we sent previously.
> +	 */
> +	adapter->extended_caps &= ~IAVF_EXTENDED_CAP_RECV_PTP;
> +	return;
> +err:

(same re. empty newline)

> +	/* We didn't receive a reply. Make sure we try sending again when
> +	 * __IAVF_INIT_FAILED attempts to recover.
> +	 */
> +	adapter->extended_caps |= IAVF_EXTENDED_CAP_SEND_PTP;
> +	iavf_change_state(adapter, __IAVF_INIT_FAILED);
> +}

[...]

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.h b/drivers/net/ethernet/intel/iavf/iavf_ptp.h
> new file mode 100644
> index 000000000000..aee4e2da0b9a
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.h
> @@ -0,0 +1,12 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/* Copyright(c) 2024 Intel Corporation. */
> +
> +#ifndef _IAVF_PTP_H_
> +#define _IAVF_PTP_H_
> +
> +/* fields used for PTP support */
> +struct iavf_ptp {
> +	struct virtchnl_ptp_caps hw_caps;
> +};

Please keep header files compilable. Here you definitely need to include
header file which defines &virtchnl_ptp_caps, but it's not included.

[...]

> +int iavf_send_vf_ptp_caps_msg(struct iavf_adapter *adapter)
> +{
> +	struct virtchnl_ptp_caps hw_caps = {};
> +
> +	adapter->aq_required &= ~IAVF_FLAG_AQ_GET_PTP_CAPS;
> +
> +	if (!PTP_ALLOWED(adapter))
> +		return -EOPNOTSUPP;
> +
> +	hw_caps.caps = (VIRTCHNL_1588_PTP_CAP_READ_PHC |
> +			VIRTCHNL_1588_PTP_CAP_RX_TSTAMP);

Parenthesis are redundant here.
Moreover, you can assign them right where you declare @hw_caps.

> +
> +	adapter->current_op = VIRTCHNL_OP_1588_PTP_GET_CAPS;
> +
> +	return iavf_send_pf_msg(adapter, VIRTCHNL_OP_1588_PTP_GET_CAPS,
> +				(u8 *)&hw_caps, sizeof(hw_caps));
> +}
> +
>  /**
>   * iavf_validate_num_queues
>   * @adapter: adapter structure
> @@ -316,6 +352,45 @@ int iavf_get_vf_supported_rxdids(struct iavf_adapter *adapter)
>  	return err;
>  }
>  
> +int iavf_get_vf_ptp_caps(struct iavf_adapter *adapter)
> +{
> +	struct iavf_hw *hw = &adapter->hw;
> +	struct iavf_arq_event_info event;
> +	enum virtchnl_ops op;
> +	enum iavf_status err;
> +	u16 len;
> +
> +	len =  sizeof(struct virtchnl_ptp_caps);
> +	event.buf_len = len;
> +	event.msg_buf = kzalloc(event.buf_len, GFP_KERNEL);
> +	if (!event.msg_buf) {
> +		err = -ENOMEM;
> +		goto out;
> +	}
> +
> +	while (1) {
> +		/* When the AQ is empty, iavf_clean_arq_element will return
> +		 * nonzero and this loop will terminate.
> +		 */
> +		err = iavf_clean_arq_element(hw, &event, NULL);
> +		if (err != IAVF_SUCCESS)
> +			goto out_alloc;
> +		op = (enum virtchnl_ops)le32_to_cpu(event.desc.cookie_high);
> +		if (op == VIRTCHNL_OP_1588_PTP_GET_CAPS)
> +			break;
> +	}
> +
> +	err = (enum iavf_status)le32_to_cpu(event.desc.cookie_low);
> +	if (err)
> +		goto out_alloc;
> +
> +	memcpy(&adapter->ptp.hw_caps, event.msg_buf, min(event.msg_len, len));
> +out_alloc:
> +	kfree(event.msg_buf);
> +out:
> +	return err;

Same as in the previous patch for the whole function.

Thanks,
Olek
