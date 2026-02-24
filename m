Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +N3XLtePnWlKQgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 12:47:35 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB2A1868C5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 12:47:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3BDB084468;
	Tue, 24 Feb 2026 11:47:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KwWSyXBvRv7d; Tue, 24 Feb 2026 11:47:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5CBE9836C3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771933652;
	bh=jRCeVzbhyDqcddKDKivE0t4CAZHz9yLbMuTwMHljJ8U=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=W/i+I87WJl7qMy2FB+v8AN3hOrt185f7aElSeXDt+3OePq9V8MkMPIs0Pjp+9jp3H
	 MhMfljviNplLp4YzMqvjVxGTxUNBC/wpAj4Wy2T9FNlzBGKX7nPW/jLLmTM0gc+Fwp
	 npeSmxy8bNS0SjVQ1NRUambwB5sHTZ7jF8r8fJDtvfawQ7KNveoAJwOoNKJx7M8BAk
	 bhrbVTKtIO4uC79XD7P/0QFo2K/32z8f6SZfccx/qjkFG9eHa57gQ4ktN5YpDHmsqs
	 xClQHVlbMpm8CSinSBPebxn1B9Zi/xm9utDP6AvpJPV54Hm04G7XnBZmLhUHasmoWE
	 A0Wc/K5ERZv6g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5CBE9836C3;
	Tue, 24 Feb 2026 11:47:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 17F53249
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 11:47:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 14E2340645
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 11:47:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1Fl5QJ_2cDXr for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Feb 2026 11:47:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=dima.ruinskiy@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 195AE40398
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 195AE40398
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 195AE40398
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 11:47:29 +0000 (UTC)
X-CSE-ConnectionGUID: O72IHwRbQK2QBhdz8yte0g==
X-CSE-MsgGUID: cR+ig2WBQ/CGz6YJrZkimQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="73052240"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="73052240"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 03:47:29 -0800
X-CSE-ConnectionGUID: EJObqn+GTDqZk/atW3IOgA==
X-CSE-MsgGUID: bDRqbZjuThi/vkifVSfv5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="238860895"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 03:47:29 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 03:47:28 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 24 Feb 2026 03:47:28 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.5) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 03:47:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=adoKQudOQZbaDqgwtLBiDUb9NGSevShtCfbxQVLAuW+mwmfTEGKawhCrQQqoHsD51JP15RfQo1zLhQ4wiOsIjNsUprVxvfPrWEyqays6g1yQAMQgozr9XDVvLyopRcWtyNDF7vc9MkPUa4zggmaG63rGU6DSRg3vBm+aiiTrFHZskKTd7Oe7qnPST/2ORzbqTvid151EctbkYICkAOGcyZ4uQfUpHuu4nyWponep1CLVMqJQOTpnBxx8nG7dMakFdpYyqcx+KuQFIrtqdYzCBNuSt++c1sI1wBL2ddhMYpv19Y61olTGxi4NiAEkupGlOnjl2zPfDSVHUIcqD/vG6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jRCeVzbhyDqcddKDKivE0t4CAZHz9yLbMuTwMHljJ8U=;
 b=e47Mu4Zx68nQF6ecSYPFqs+FSOTf/CWrjafgoraO5Hqjw5DkXPwhLrv/AA+ZwW37sn8kn9p5N+GhUgXQleAXVA3QoSZY8xrzppyujWRKz2Gef9sBagV3stll3QK6ux5U9mw0q416YhCiG9MYugxfeDWxjq8dSVkw1idUlM+xr1psjTR8JZE69DAOoaYamyZ8lxQi5ePW2oS/0YrwKUg9m6vKoMDOiNbRI/uhmNAboMMO0u+kP4wphwLwRETE1OQWPga16wLufwhRLV/9++oykw5Zi7+6/gg16Rv9RKkvppOfslhrrBwMJJ6kpXF7etFpwYbLVzNgkWCHUdcoW8kiLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6067.namprd11.prod.outlook.com (2603:10b6:8:63::20) by
 IA1PR11MB6537.namprd11.prod.outlook.com (2603:10b6:208:3a3::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Tue, 24 Feb
 2026 11:47:26 +0000
Received: from DM4PR11MB6067.namprd11.prod.outlook.com
 ([fe80::3a56:fd55:d248:592c]) by DM4PR11MB6067.namprd11.prod.outlook.com
 ([fe80::3a56:fd55:d248:592c%6]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 11:47:26 +0000
Message-ID: <99f696b8-75ef-43bb-8220-6073ae90aea4@intel.com>
Date: Tue, 24 Feb 2026 13:47:22 +0200
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Marek_Marczykowski-G=C3=B3recki?=
 <marmarek@invisiblethingslab.com>, <intel-wired-lan@lists.osuosl.org>
References: <aZxzShjYvQwloZZ_@mail-itl>
Content-Language: en-US
From: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
In-Reply-To: <aZxzShjYvQwloZZ_@mail-itl>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TL2P290CA0003.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::20) To DM4PR11MB6067.namprd11.prod.outlook.com
 (2603:10b6:8:63::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6067:EE_|IA1PR11MB6537:EE_
X-MS-Office365-Filtering-Correlation-Id: 3b20d87c-b4ec-4357-782b-08de739a7b39
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?L3dmSkdXQnRxRG8wRDluSi80MDJ5Q1l4K0pMc2Q2UkRIcjkwOTNKQU12V1hp?=
 =?utf-8?B?TGJnRWFSMFIvN09IODVkeTJMWEZJK1ltRUxta29uNkl2dk91QnNsQnNLbFFs?=
 =?utf-8?B?MkZjKy9kblRibDJkclMrWGRJeWp5ZStud1hPRWdaMCtCZ2JUK3FjUENxdmtq?=
 =?utf-8?B?Nkh1S2VHU2FLM1FQMnRlNllWWkNBNDlNbEc3ZXJmQW1ob2ZTMHgxZDlJcmZC?=
 =?utf-8?B?OWJUOEVzSkJOYzM1a0orY1pVcHRRQ2J1ck91ZHErMVlPb2dTc2s0ckEzbnd1?=
 =?utf-8?B?S2hVYUNNNExwK1pzUEhxOGJsVTNNUmNhamliNzVJZlJjWFdzMCtiRUg1Tzhy?=
 =?utf-8?B?T3hJdVpibTl2Znl3dExPTldpZHI0cWZmdnByUUtNT3lNYnlGczg5a3pzV1V4?=
 =?utf-8?B?VjU3V3FHN2dzT2NDczFSck05ZXNYWkJid2lwaVhKSGw4dUNGQmRKSDNEN1NF?=
 =?utf-8?B?NkprSURtYWlTN0g5dkNRbGZtQmNrSlR4TW5JZXFLdFlLc0E2eHd3ZkNLQjQ0?=
 =?utf-8?B?Q0twWVJGS1dySmJxNVg4RFdrTDY4aTAveU5LenRkVlFQY3pBcnVSK0NXN250?=
 =?utf-8?B?UzhpMkJWdVpTQmFEVlZROGtTRS9VZHFydUFLbW1BcElWM2xhWitHa3VzUjdv?=
 =?utf-8?B?RitneEdydys4bmY2VGtRR1JDYzdja3J4cFVUYkluRFZUb1ltQXUxdVZHMmQx?=
 =?utf-8?B?Q2RJQVBRWjVwWjlOMmtJdWIrSi9MazZVU3E4cnF3ZHViZUF2THpNMjRoYytY?=
 =?utf-8?B?VUFPOWRpa2syUEtxeFFaeGlVY0ZCbjY0bDNNWll4K1hVaVR0NFUyVVFPWldC?=
 =?utf-8?B?ekZRc1hvczBlS1k2bVlQQmdGU01VOG5aQkptQmd3a1pMSU1SL2ZicVE0Yzdy?=
 =?utf-8?B?b3BBcjQ3OWlPWmNaQmowSzFwYkF4eDZHZ2dTdThyZDdKUXdjUXFJZE00Z1pX?=
 =?utf-8?B?a1Y5M05GWDhFN2RMOW45Rnp5QzhuTGlxVnRJRlpHTnBDb0tJQ04xUFA1UUJS?=
 =?utf-8?B?V3FiY3pCRWZXWWFxV21MdjdSUHNKblJjbVQ5c2k5VHpVQW96MDJkTFkzZFN4?=
 =?utf-8?B?WWs1Rk5NV0JXN2N1ZXFwN3F3UEx3Y1hiQXdkVmJXdTkzNkgwTjEvMG1RVWJ6?=
 =?utf-8?B?TFZDWG5VRjUyZk9oTkRuNTFPL2d1VloxaUlqREg2U1VXeEpwVW1TQTNFOEZy?=
 =?utf-8?B?Vms2bXJpbHRlTW42RjRqM0hDQldQZEd2RDIzUmppQ2pGTGI0bmNYN1pYVlVF?=
 =?utf-8?B?M3VGRUtuZU5XWFhRVmdkSDJOYUNlM3NtRVBoMzhHQWoxM2VkR2xNV3NBSDhJ?=
 =?utf-8?B?L1JJV3JZUDRFWnRFN0Z2UXpYQkVDdkR2TUdOWXlnL0xaTVMwU0Z5SzFMeWxj?=
 =?utf-8?B?VEFPNXJybkx6NXh6WGs4OG95c0p0TFhYK01SWEZUTnNpajB6ejRjaUQ0bVRw?=
 =?utf-8?B?TmIzWnFlOWlNQ1VEc0htbjV3RWNOUWVXZ1lWMEI2eEpCbnhmcWJSTGpsRUNJ?=
 =?utf-8?B?eXNVS3cxMlRSVDRwK2JiSXROVWMvM2N5a2luaG5Za01JdVEvbVlvOS9XYWxH?=
 =?utf-8?B?djJYa3Z6RUM4Q0RiaVRJOHQ0YW1PMzZCTERsUEJ4RmxCNnlsSEw3YzlxVmhM?=
 =?utf-8?B?SzhjdXdMcStVSnhtS1NVbVFRUmpiZmhZenRZYklwVmV0KzdQYTlzbmlMQUZy?=
 =?utf-8?B?Q0x5d3pEQ2Y2M1R6dlJZTXJUVmpGRWI1cjZKVTd1Q0dnaVpNcTYxelpZb3Fq?=
 =?utf-8?B?V3MrYTVQaFM2R2tGZnpNNk5GUXNtTUd3MWtCdUlSUERlV0tZd3RwdmlNVS9F?=
 =?utf-8?B?aGxzVTZ6Sis3ckpFeDh0a2s4bHhhSlpIcCtRVmpBZzMvMTdHVHNIdTJQS3hq?=
 =?utf-8?B?aXpGU0gxWFpjdnpzZDhjUVZLcVFnTmhVeG5vSytHQmlqQ28vQ1p1NithZkxJ?=
 =?utf-8?B?b1gvNllaL1BhWFNnZUtwYjd2M0NCVUpTeXNMd2hFMzNxMTlzcDdkVmRwWmoy?=
 =?utf-8?B?aXY2NlVkZHk2NFEzdXU0QjBtdnpPVURlcXg1Yk9mczBXTDlBMkpOeEJpMlhN?=
 =?utf-8?Q?x2S1Mi?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6067.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZUQyVmhpTTFlejZhRWEwS0ZVdll0QjZ6N1k0Ny9JNTlWQUVHNUJpalVET0pE?=
 =?utf-8?B?MFBqSWxtSkhua1ExSGpJbGpxTm1rcjBzcDRzZkxpZVh5aHdTT2pOZDZrRUxi?=
 =?utf-8?B?SS9GelRQTktZY01tTTFqT25naVpqZUNBY2F3VE5TdVFaQkYvZkdvQWpnWElG?=
 =?utf-8?B?bUtnZm5rZFNZMDRNMC9zQ3E2Skhod0FQSGRYeDFnQWx4QWZ6UjZ1WFp6UlZy?=
 =?utf-8?B?U2NNMFVFenVXVjNyRWswT2pvTnN1VUpQSjFWTFJmUUQvMituc2EzZkxnN212?=
 =?utf-8?B?djJVRVhuUHNzS1hnYnBjMUJndFlaeTQ3VGgvTUdVdEpIZER2cWo2ZUQrNytq?=
 =?utf-8?B?eFR4ckdKMmpwdml4bGhGWUxXWWgrVUhUd085Y3VlMy9nRnVxd3NhL0Z2Zzcv?=
 =?utf-8?B?WlRXTURUUHM0blpCRGhaM3BlNkRxUDBYNnkzcitHbDRUZTVPOVNLT1owbXdm?=
 =?utf-8?B?UFh0R29xRzI0bEFEdk9sdkpIMzdOakVnL0oxSSs4TWRlQWpyUWh4RGRVUmxO?=
 =?utf-8?B?WDlyM2NGRGFHNElHaEkvSHVrZDR4OTZYN1hxeWZxdXRheG9PUENDSVdMU0gv?=
 =?utf-8?B?emJBM1RNN254U0tDN3lsV1NZdjJDMGYzVEN1NDgwdjgycy94ZndhMlhTY1pr?=
 =?utf-8?B?U2hSdVNrbDllUXRvM1FLeVFLRTFzcTFXaWg4QUdVTVpkVWZXVTRrdEpSNmVp?=
 =?utf-8?B?S2RhN2tnNnhqZ3FINWQ1ZXBSR09qZUNKNVU0ZUg4Zzd2OFl5bEJCRXFtdC95?=
 =?utf-8?B?TGVHV1g4bDZ1dmNyMzlmL3hoa0dEUHU2OWRyR0dHRHpxaE8yR1FQRDdVWFFO?=
 =?utf-8?B?aGgwdzBhZDBUbEY2NG9NU0xUTjZGY1BPSkxmbjJaRXRnQUE2OVVKOXRoY094?=
 =?utf-8?B?RHA3SHZqTUUwZkxQWkVKZjRualU0SGhoMHZIZGZyZ2JLd3MrN3Bjd3p3V0Vi?=
 =?utf-8?B?TTFUQ3ptU3ZtTjNRQjlFM0YrU2N6Qi9LUnM0d0xPSzNXa0tLZ2laeXBCM3Vr?=
 =?utf-8?B?amdGWnhXOTNJNXZZM01COTVBc3pwME12emZBZ08yaEk2Z0lUaGxKc3JjOUNM?=
 =?utf-8?B?TjY5UlJxalFIYU1XSmtxYVV6SGFTbkhVQXU4eXhEQ2pIUjdRTU5ndXhBaDdo?=
 =?utf-8?B?d0VEZzRidTBZZUlCbUczZUc0eWRsNUdIT3lRYnFGdDduK3ptR3BwaVZaTEZF?=
 =?utf-8?B?VzVXcEhrVGt2b3BsM0gxMzFEd3JmYzRPMVJIOEtCbk5hTVJld1doNlFJMUpL?=
 =?utf-8?B?ckt1cTBmL3NyQ0l2bkwyL1EwMWkyT1Rpd3ViRHpDRlJCa1gvUUF0czRxK2hY?=
 =?utf-8?B?TG9qWjVUMVFWeDYrcDVKTkdDa3RXTVUwK3ZqS3YzSWhNbVY1Ri8zNjRZcCtj?=
 =?utf-8?B?dWRYRC9GQyt2QnZOMTd4cTcyZjZEdDI1cjJBcitjbUVoOUNIVUNiTUtXb3I4?=
 =?utf-8?B?T3VPNGozd1RNWnlOWUY5SlVBWE12U2xLNmx4eXJpLzRsYmRDUXhFOE85S3BT?=
 =?utf-8?B?MFIzSGEyS0hMVE41ejFmZUJjQW1JM25qcU5LdEp6N0J0V2hlVnkwRUdhNU9w?=
 =?utf-8?B?cGhVUXExQmZGOStSQnNwcWtpc1dZamplMlBTRVNxbXJURzhjV0t4UHlkTE1X?=
 =?utf-8?B?cWpDUWVCalBJRnE3cmdNZVFEWkd1aU9BbDV1K2dmYUdhMVpEVUFxbVVHRVgr?=
 =?utf-8?B?ZVl5SFowUFJ0OEtnU3lmNHVycloxbUFoT0l2YVFTbEVhOEsvY1dYUlBtZUZq?=
 =?utf-8?B?UmRBN0VYczRkak5wTFMzR2R0VXlYSTNxbXV2TmlQOVZWaFhrSk40NGhJYlY5?=
 =?utf-8?B?R3RidnhBSG1oTkd4TkRFeVl6OUNvREVnQnF6eUVSNjJSQUhjZlJrQnAwTFFV?=
 =?utf-8?B?UytUWFFldDVtL2NSdmx5RUs2djIyc2JvRHBtYmZ2dHY3c2RFdmZPdmZlM2JC?=
 =?utf-8?B?cWpTY2UzZlprUzVwVzF6ZWl3VE1HYWpWSHZOUHA0RzZIWUVGZmxjcURML05C?=
 =?utf-8?B?SGZRRFJ3blZuWEpyeE1ubmFsNFFrc0paTHRlVTA1U2N6QWRacVdKbmYvWTZF?=
 =?utf-8?B?SlcrTWh1RjhabEoyVk5PMXhkS3pSNzZZR1BhVUVRRUcrak1jQzdvMlJORFVX?=
 =?utf-8?B?WEZEUnY3bEpUWVl2UHRmbzVCTGZYamVCREVDRXlvYlplZzlMTkIvY3BGVW5z?=
 =?utf-8?B?K1pqeWlMMUoxYm1tbGsrbENNRmNnS1lKQ1lLUWtkc09HSm5PMEVIL1pRVHhi?=
 =?utf-8?B?Tkp0eG5hMHlRY3FlWnZ6dHM3OWVXK2JCczVEZGxWWDBZWjQ5R3prNjBoRWs5?=
 =?utf-8?B?Qms0MTJxTksxazZBSTN4MTB5TXdoL1hZbjB1cnFqOWNyWkdzWWpSVE9BWkNt?=
 =?utf-8?Q?8gp3bHTfk38J9kbw=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b20d87c-b4ec-4357-782b-08de739a7b39
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6067.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2026 11:47:26.6342 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /Wpm0QScUfTE8cyML09RzYYWVIujkZfYLaqSzAnvFi7CEoHsbvam1URhQwJmQklt+S5fO/ssO5LkfWBgiyJBYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6537
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771933650; x=1803469650;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=o6AjOkrnVShUXvrq6mkqFVlXndnfZuJG4OL6VJZ150Y=;
 b=VgoU8C6+qn/rSqojE9VYNuyobDHweSb6d93FoOGQWjloQOisi7L77N5U
 2xW7GShfdeIgiBS/HuQqo1aJGJvNpnY56/8TM4NKPtnswnfFIoChzo12z
 r11MfZ66R/69n0DvHBS+prRlMDPybnf6jUDd0+4afnJmcrXT1QaUt44Fc
 25gsH1EYCP2DaErPz2R2xGONLadRCJzbJU2Kv0CmJpxcve7YtfzbrLu+O
 T0/h/4J5+Nx9M1565x6MmjftAj7Ihj0KPkkJkihwaoskmdLUMm6Q7fRPf
 6gjbMRHMH0VTwIBbcUNffSgJg3YkUOKgK5jgmtKK/6Nrf9G6+hutOAb1m
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VgoU8C6+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] PCI Advanced Features (especially FLR)
 missing in several newer Intel integrated ethernet devices
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:marmarek@invisiblethingslab.com,s:lists@lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,intel.com:mid]
X-Rspamd-Queue-Id: 8EB2A1868C5
X-Rspamd-Action: no action

On 23/02/2026 17:33, Marek Marczykowski-Górecki wrote:
> Hi,
> 
> I've got already at least 3 reports about e1000e device that is missing
> FLR (which makes it harder to passthrough to a VM, among other things).
> Interestingly, when looking at config space, the capability appears to
> be there, just isn't linked to the list. For example:
> 
>      sudo lspci -nnvxxxs 00:1f.6
>      00:1f.6 Ethernet controller [0200]: Intel Corporation Device [8086:57a1]
>          Subsystem: Lenovo Device [17aa:512b]
>          Flags: bus master, fast devsel, latency 0, IRQ 19
>          Memory at ab700000 (32-bit, non-prefetchable) [size=128K]
>          Capabilities: [c8] Power Management version 3
>          Capabilities: [d0] MSI: Enable+ Count=1/1 Maskable- 64bit+
>          Kernel driver in use: pciback
>          Kernel modules: e1000e
>      00: 86 80 a1 57 06 04 10 00 00 00 00 02 00 00 00 00
>      10: 00 00 70 ab 00 00 00 00 00 00 00 00 00 00 00 00
>      20: 00 00 00 00 00 00 00 00 00 00 00 00 aa 17 2b 51
>      30: 00 00 00 00 c8 00 00 00 00 00 00 00 ff 04 00 00
>      40: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
>      50: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
>      60: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
>      70: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
>      80: 28 00 00 00 08 00 00 00 00 00 00 00 00 00 00 00
>      90: 00 00 00 00 1f 00 00 00 00 00 00 00 00 00 00 00
>      a0: ff ff ff ff ff ff ff ff 03 10 03 10 00 00 00 00
>      b0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
>      c0: 00 00 00 00 00 00 00 00 01 d0 23 c8 08 20 00 00
>      d0: 05 00 81 00 b8 12 e0 fe 00 00 00 00 00 00 00 00
>      e0: 13 00 06 03 00 00 00 00 00 00 00 00 00 00 00 00
>      f0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
> 
> As you can see, the "PCI Advanced Features" is not listed. But, if you
> traverse the list manually, you can see that the capability is there at
> 0xe0 - it just isn't linked at 0xd1 (0xd1 has 0x00 instead of 0xe0). And
> it appears it isn't just coincidence:
>   - 0x03 at 0xe3 says FLR is supported (bit FLR_CAP is set)
>   - writing 0x01 to 0xe4 (INITIATE_FLR) does appear to reset the device
> 
> It's even possible to link the capability manually (write 0xe0 to 0xd1)
> and then Linux is happy to use it via the standard `echo 1 >
> /sys/devices/.../reset` interface (but, ofc, such linking doesn't
> survive the reset).
> 
> Based on reports I've received, it applies at least to devices with the
> following VID:DID:
> - 8086:550a
> - 8086:57a1
> - 8086:57a0
> 
> Some of those reports at https://github.com/QubesOS/qubes-issues/issues/10657
> 
> My question is: why the capability is not linked? Does it want a fix in
> firmware? Or maybe a quirk in the kernel to restore working FLR?
> 

Hi Marek,

The FLR capability not linked is intentional - ICH8-based e1000e devices 
have issues with it. While it may sometimes work, in other cases it can 
put the LAN controller into a broken state only recoverable by a hard reset.

Some previous e1000e devices (0x1502, 0x1503) exposed it properly via 
the linked list pointers, and this caused the above issues, therefore a 
quirk was issued to avoid using it 
(https://github.com/torvalds/linux/blob/master/drivers/pci/quirks.c#L5618).

For later devices (I217/I218/I219 generations) it was removed from the 
linked list so that the OS does not find / attempt to use it.

It would probably be better if it was completely cleaned from the config 
space, because your test (and mine) shows that if someone ignores the 
linked list and triggers FLR manually - it still affects the hardware, 
which may lead to unpredictable outcomes. I will inquire about it.

AFAIK, the recommended alternative to achieve an FLR-equivalent reset on 
these devices is D0-->D3-->D0.

--Dima

