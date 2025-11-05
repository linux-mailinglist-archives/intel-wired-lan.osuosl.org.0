Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CEE6AC345F0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 05 Nov 2025 08:59:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4C84F83ED5;
	Wed,  5 Nov 2025 07:59:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KFRulI4EHoys; Wed,  5 Nov 2025 07:59:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B2FBD83ED7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762329556;
	bh=q7dny66S9LomYCGGW0VbRf1IALmEJZrwrBjXxNtqmqU=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yF7YDKBoHOo9ikAWIFgI+y94J+6wZ+koe/hTFCwgNUyo+X24zBYT+A/ima2IR2x9r
	 lVe31E20kfEOygV4saZ0oyWMhU3Y/i9Kg79i1cR6HOVXyIDRcj3fSCI90hBy2jmpFb
	 Nmb6vzvxYP3grwDZ9cQNhrjsN9AzC3cifmzK8HmC25cFYyTnI/rkknWUddS8eTLNyA
	 XoIBrha85xIyi3x9NRVVZGERUKP+sDa1b9E1+emhi0A/IwTjp/r+fzn+Ln5/0Majpk
	 jmPxM2VKdU/MskZCXLkpi+XRUBCjVOtXYi6zof9PAioaj2k6xQuzKcjVTHbYWy9Ifi
	 Ok9TVB0kl4q4g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B2FBD83ED7;
	Wed,  5 Nov 2025 07:59:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id E675B462
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 07:59:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D149B4051F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 07:59:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cKr0DU76nkNO for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Nov 2025 07:59:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.165.32;
 helo=mx0a-00069f02.pphosted.com; envelope-from=alok.a.tiwari@oracle.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B14A1404C3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B14A1404C3
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B14A1404C3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 07:59:13 +0000 (UTC)
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5A574oiT011189;
 Wed, 5 Nov 2025 07:59:03 GMT
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta01.appoci.oracle.com [138.1.114.2])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4a81vb02qg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 05 Nov 2025 07:59:03 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 5A55PqUt038540; Wed, 5 Nov 2025 07:58:56 GMT
Received: from ch1pr05cu001.outbound.protection.outlook.com
 (mail-northcentralusazon11010062.outbound.protection.outlook.com
 [52.101.193.62])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 4a58nadra3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 05 Nov 2025 07:58:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dcq4AakzFV8/OcUSw+0ngaG9Qvdb3w8hJ3Y2XK2gllGlCBXIqwCFoFiALhIeB8GPUG32zfeAZy4yZ1qL+0JQ6p/CIKEJbI8B4BroVy+W/a/lywox+/aSw1ne/b2ljqXBI1oh5pqF1+YDNig9/upGtYHMwmDo9AHBB6gVQcDphF8Ss5L3vFUnNOAQbZUxwZHX5+LkucV50zsfLyJzEYDJq3T6gjA73ZXDd9qDMMeCT++SBJiDl3CTcBM73P8TTGt1wsS7+ogNvPcnQLjr64983pm5i3G5rCTDB0pEcma1jO4Vn9UZ02xgpGMUn+UXTssDcr7SZEAkJQTTCAah1pPMAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q7dny66S9LomYCGGW0VbRf1IALmEJZrwrBjXxNtqmqU=;
 b=TogyGJZIykjIep7Bhq2jSoHDjRHRBXvtsTcFKkRMI+iZHWSBJLYqODckpifG1vfSMrPRUcZJIckWo1wKq5oBi2ropSuW88KDX5rWfjzDhYbvsVceNokfqiJpKCflIL0+MimQiI1b7Vq0+Z07lxNg5V9gaPKpnWeAcoeVSynarxipU/PtEqcs+r+gErhHOAlmiL/gabpeMaV1jWflfRA2q9QKDFJiHS41WI6Z+yDgd3FZ66YEA3U2+MoOgnI9CDleDKCttYM/kVUofmHOVUYrdpo2NT/tZHGbafTOMfqPEbC8IMRVPVtpmCc/vZy6NORWqPR39nK6GyBTyTagZrIdzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DS7PR10MB5328.namprd10.prod.outlook.com (2603:10b6:5:3a6::12)
 by DM4PR10MB6062.namprd10.prod.outlook.com (2603:10b6:8:b7::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9298.8; Wed, 5 Nov 2025 07:58:52 +0000
Received: from DS7PR10MB5328.namprd10.prod.outlook.com
 ([fe80::ea13:c6c1:9956:b29c]) by DS7PR10MB5328.namprd10.prod.outlook.com
 ([fe80::ea13:c6c1:9956:b29c%6]) with mapi id 15.20.9253.017; Wed, 5 Nov 2025
 07:58:52 +0000
Message-ID: <9e736c4a-bafa-44e6-9152-3a9de078ee4c@oracle.com>
Date: Wed, 5 Nov 2025 13:28:45 +0530
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "Lobakin, Aleksander" <aleksander.lobakin@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "horms@kernel.org"
 <horms@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Cc: "alok.a.tiwarilinux@gmail.com" <alok.a.tiwarilinux@gmail.com>
References: <20251104150849.532195-1-alok.a.tiwari@oracle.com>
 <IA3PR11MB8986153AC57FBE801247FD50E5C5A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Language: en-US
From: ALOK TIWARI <alok.a.tiwari@oracle.com>
In-Reply-To: <IA3PR11MB8986153AC57FBE801247FD50E5C5A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO4P265CA0142.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2c4::16) To DS7PR10MB5328.namprd10.prod.outlook.com
 (2603:10b6:5:3a6::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5328:EE_|DM4PR10MB6062:EE_
X-MS-Office365-Filtering-Correlation-Id: e4326195-3fa4-497f-f022-08de1c41292e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|921020; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WUJYbm1heDBXOWxjZWtGbnFrNTV5Q21uWUI4UjVaSGxMQmdYekFTcWZoVUQx?=
 =?utf-8?B?TXdpK2Uzci9VK2FkQ0k5eE9Wc1Ztc0ZDQWVnTUQvK1BVWDN5TWhJSFR6aE5B?=
 =?utf-8?B?REhTWWV6bjFWK2xYeG0wemZuZzJBd0srWTRVZlF2T0NWc0dBd1BZZ3dKQUZR?=
 =?utf-8?B?L21HQitUZ3pvOTM1QUMzdGpsRVRGODRDdmdiVzFjdVNvaHpDWktLRHk2V0Y0?=
 =?utf-8?B?aGV5ZFhTdkhhUzhhZjVhejltRklaOFlRcFkyOGFsOEhna0dtbnMrT1NSWmNY?=
 =?utf-8?B?MXd0OFNNbVlyZEVtcVJ4a25JbldrZWRmMUVzcWFBSThxYllrVlpkYmNTa1pV?=
 =?utf-8?B?UDRzVitHTCtRTDFvbFpxcnV3aUdEUm1hZ2FTYjZvS0crQnRxR05DeEVMOUFy?=
 =?utf-8?B?NXdzRVF5Z2ZzRmFKbnl4TXNyVEpRL0Z0MnNVellYc0ZXRFBnYVh3aTJqK0xI?=
 =?utf-8?B?VkJIb1dxa0hOcVVIajdwakFnUjdDMW5waXFHWTg2Wk9LM0YvdktPWWw5SzZa?=
 =?utf-8?B?eDBpdklLcFM1TnlSMnAvWXpMTUMzT1d0dng3ZGJTQnR2U1lqNWo5cEJLMWlM?=
 =?utf-8?B?ekxmRTJUZFd5MTlFVHVVOUQzbkI2enJ6TUMvRnRJdEpLTHMwTzJoL0tlR2Rq?=
 =?utf-8?B?NXVOVHFDTmRYYkZoajdTNDVwNk9XakhwZUFLaUsyNGhvdDFaTmpLQk9YVmJG?=
 =?utf-8?B?R3RtNXJpNlZLOEpXdCt6VkZ5MWJkODE2eHI3YU4zT0JYRnZQK3FlcEN4aVVO?=
 =?utf-8?B?em9RMmdRWE8wL2pTMDBsbTBEdGtsb0ZKd1pPUTd5dy9EL2NmKzlrMk9Cdzlu?=
 =?utf-8?B?RlQ1WHdjMzRkNXRuSk5nSDhvQUh4ZUtOU1d1UlpjWjROcVlGQnc0clRsUG5F?=
 =?utf-8?B?MWxGcHROYk5oam5ZTGh0Vk1iR1c0SVZwaFZWQnFzTXlhOXp3dmJFMGtQMTN6?=
 =?utf-8?B?MDIybDQ0T085ayt2VXg3NXhTNVg3ckxsRit1RWFScVp4V3ltaDNTck9EWDNN?=
 =?utf-8?B?QzlNRytuVW82SDhwcEQ3eDN4aytwZ1hTeUlzRGxTUWVFSElGKzg5WEFyVVZu?=
 =?utf-8?B?QXRBQXlkRlorT1dvcnhqUndFNmFMc1drZTJLa01ZWG9JZ3djTGVSRjZwRjUw?=
 =?utf-8?B?TTFwUzV4WjNtd2QzczNoMUk3L2w3RlNob3VkaTdIb1AvV2ZFcU5zelhLVzM5?=
 =?utf-8?B?bHh5MnlGeXlSYUdqdUdhZktZRlFnVWpvZHdpd0FRSGFsUFhub3hCY2RKOHN5?=
 =?utf-8?B?b2JtSXkrUXlYbmVWeEg5THcydWJESTNQZ1lVY1FOSTJrbnZCOS83SEdCbDJv?=
 =?utf-8?B?ZitSNGNlRi9QWnVPQlRJQXJDMXljYTErRVRrZ0MweDlhSGlreUxRVTV5YkVn?=
 =?utf-8?B?b3BWRkRwVVRlTkprWlRyellPcTY3NmNNdkU1U2lSWXBwSjB3WmF4WTNvM3Fs?=
 =?utf-8?B?dzg0cm9Rb0lDeVFwWDV6S0dGNGdoRzluTjhRY1RORzRrNzZoenNMR0VCRmtY?=
 =?utf-8?B?b1NOVmluNGNwdm9COUZ2Umw5d1FlaTdnOERYbDNJbGZ4WFdKbWZSM01DaDZC?=
 =?utf-8?B?SGRNaXk1eHpqSVJITzJZYWtpeS9OcjJZSUJVQ0ZYOTFUOFdob3ZDWTlHWWVC?=
 =?utf-8?B?ZHVKbDZQN1FLWCtvbkZ6NjI5aVI5c201MjNpSWMwcEZrOU9yNjRCK2ZvVjRF?=
 =?utf-8?B?RmtJQXcyR3hiMG9yWG14S2U0TXByeEhVc216L1dMUXpmdUJwNk5tYjhTU05a?=
 =?utf-8?B?cFNKRDFTekp2UVpMdFFGeUo2Sis1dzhKcXJneWtmclVCTmdLZUgxVUMwZVBn?=
 =?utf-8?B?UlBVUHRPcGFXM2VheE5WZktuSmhhTkR0WGtXU3lVaklIU2hFVnIyTnFWc3FD?=
 =?utf-8?B?UWF3OFFrNU5nYk91eTZSSWl4WE1QVktPSzcwaEkxakxNbVM3ay9meXFBMThY?=
 =?utf-8?B?NG16QTgwOXFJdjZMdmtRdkxSVitpQWtLbHFKNkFrektYcEF1NjNMZmw5eFBo?=
 =?utf-8?Q?w/0++eri/sQrsWdqrQibYMcKmrOmvw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR10MB5328.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(921020); DIR:OUT; SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aVpFSFZLYmdaUEVQMDNTcWpDN1liVUthemFOUGl6NDN5bXI1MjZWQjZUMmdZ?=
 =?utf-8?B?dVNDWkV5U2tUTFJURTdQQkJUT1k0aHZLaFh5aElqNGxuSnBKbmVKTW1sU0wv?=
 =?utf-8?B?WmhieW41eTY2eVFNVFNFVTFmdER4TEZKOVhRTC9nSGZuMHAzYWxSYi9rN3hv?=
 =?utf-8?B?dVJLVDViV2I5TVhsQ0ptdXhIMDU2U0FGTjFVSEdsL3oyTDZGb2J5WFFtU3BZ?=
 =?utf-8?B?MTFwYXZacGdrWU90RUcvUFBQYlhBQjhpc2lzMmt6VkhEeWFsS2lLMnZ4dDJF?=
 =?utf-8?B?eGJuMmxXc0UzOHRMbkJ1RlBzS1dpS1J6cDRiZjFBam0yR0NnbFdFZUZML3Rm?=
 =?utf-8?B?bXpYSFlWdC91NnRTVUlkR0NDNGkvRHhpc3VFZTMxQzRpRDVpRkNGcXpGQWV3?=
 =?utf-8?B?WkdkdzV3R3F2L0UrdGhKUkloZ3Y1anpxSlRzZzF5ZWJYSDlERW84NWFFOHhV?=
 =?utf-8?B?UEVreVZHR1hVaE1EQ25Hc2xneWJnLzFnVnJzbGZpSlhqaHdTa0NSbDl4WVMz?=
 =?utf-8?B?N0JkeDJyUjJ3OVlkbTIvZDF4emFyejlwWDgyNnBaL2lBMGhTTmlRY1ViR01U?=
 =?utf-8?B?OS9wU3ZVR2EyVnRuWS9ZZmx6UnduWGY1NkZkbFNFRG53V3E1NjFuRit6L0lB?=
 =?utf-8?B?UlV5ZjNEVk8zakliaUVKVkFsWkNZNzlyV0o4Tk5pOHZ6YTRabjNqMXRwaFRE?=
 =?utf-8?B?OUs4SGNQWFdnWDB3cHNjRWlYU1o4c0FuN281WWxHSWJ1TXFQYjlNeFlnR1py?=
 =?utf-8?B?Z1VlRnBTeG9KaUl5TGpNT1VISU1Xc1ZiU3FERkhIT0lrWVYwOU1CeThoTkNE?=
 =?utf-8?B?UFRheXBOWExsbWlYeDRMNThYaHZyd0Rvc2VaQ25Yek5JQnZZNWpuUXNrd1Fm?=
 =?utf-8?B?VTdSckV4bEVtRmdyTjVkRWVNTlFpMnpmTkx3RmU0Rnl6YUhZQ2xSYzVxb0do?=
 =?utf-8?B?VS9BeXpmYU1ETWNlYXBTV3NwaUJaUHdEUDlFaFRqeEZ0QWpZUUNGZExCbUhq?=
 =?utf-8?B?SHNMWFptNW1IZFJWd3RQc1VwKzdoZmpRMTNSUG5sOVlpbkdPWEZzQ283bnUz?=
 =?utf-8?B?eEpMMm8xejVvSmFtYzlwVDBXOVNwbGEzN2tXWjJNZjU0N3FHWWJzM1c0Ny9B?=
 =?utf-8?B?ZGRGWWFUSjFteHJrNVk5a2YxUFR2WUZQbys3Uk1RTUFrV2dkeWt3QW5jaUph?=
 =?utf-8?B?VnRvWnRUZ3ZDelBXYlo4NGYxRDB4TkFtWU52K1VVNmRETTVjU1VQdktMUFBy?=
 =?utf-8?B?SGhXMjNMZlJaVk1Wb0dnSllmdkNLT0lMTTRrVFFGUm5qUUEwb2VvVGswRElU?=
 =?utf-8?B?K1V3cWllM1pnUFZwMTRrbi9OT3hsSHBRWmdRbHNiblFucFF3UzlEd1doekp2?=
 =?utf-8?B?MzBCMGV5c3ljQk5nck5oakxGclY2MU15bHZxTXhPbURvcmh2VXQ0Y2xuTis3?=
 =?utf-8?B?V0xZeUtIRHhpS0lFa1IrS1RhRnVDekdvMGVZY1NMZXdXS0FBUmkxVUZpVTR1?=
 =?utf-8?B?VE1pcUtGWjd3VHRiWnVWUDhyd0JYelpyUzV1MStIMHRuSk9GTVczTHZ5MVpi?=
 =?utf-8?B?TXJDUUhMREhnaytFYityRW5yU2JZSE9LRWdtUnNyQkFDZWR2Z1pLdS9ZZ1JY?=
 =?utf-8?B?WTFnYnRYZCt6N1NyOGtKM0M5ZDBwQmxZbzFKbmpPcFpnMjNEc2tDTHZLRkdF?=
 =?utf-8?B?MTEyTFpISEE3WXg2azI3a3NpTUZaOXNpQmgwb1htWnpEaVlFcHdqd25rbGc4?=
 =?utf-8?B?Y0tMMDVYbXV2SlJwdFJWZE5sOHRDK3Z1a09DRjZYWFU4VmUxekhCWmQrMUc0?=
 =?utf-8?B?YkZQOE0zbDFUZ0dJN0U4LzB2TTNpSXhBOWxOeFJKMy9hSVU3VjdyZUJZSkRo?=
 =?utf-8?B?RlArd0xaUWx2V1VDeEhQTEZOWWQrem5MU0FIYWFEMWZXQ213NXNqODlCOFNr?=
 =?utf-8?B?MU9sSklFRXJua1MyczB0eDgxYnJ6L2JZN0s0WTBqYUZSSXk2eC9aN1BsV2Za?=
 =?utf-8?B?LzRGQml1YTFaVE1lanJFV05FUnIxRUcwZkx4ZTBDcXg3OE1RQkpkR0lyTHQx?=
 =?utf-8?B?VHcxcUpqeUlWbVJBZDREN1hjUEhUdXFKSHhpajJxMk5walRIQjhMUEtSNGVm?=
 =?utf-8?B?WDg0ejNWSGd2Mno1UlEzV3dNQkpTU0psSUhiY1YyT29nRGtKbEd3eE9JMDNC?=
 =?utf-8?B?Znc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: E5XNy7B5VXCkW6eJ7eB9Bl/KfZPrVGYcCjmTFW+yRDhLhX6s+qcUFiTs8sYMWFaU+/efKGlNDhBd+Nd+k0xD6i5rJcLb88SdrxS2fFHK4EDK1ZrMKUoFiy9utzzB5p36nrvOUBF8y/GG3IQYE7xeb8vTjksG5k8eEOOafs0LVxsbF+L6lIqTxh9YBUg7fLFgOHro/MEWhvBL/2U1y/v5INoEwrPBpPfcpeBbDvEzeGoSX8Rm85pcmLhfASVMjPb33V04getesAYtj1AGAuaMHsXpxFfa8SmukXeDuJGHGaWST4/EKszx0bj3kFkjEhrQvUPOmI0bSmVp/xjD4heU/Pv6KU1Oel2jhmEAaM0MSInETVbZzXCXbPKG4fc+Xpht2D0mALyHuaPACJUTfZj+l5DOCXYNseCYKB4e3nXfW5wS9t7V+SfrYVZmzMmm/eoy0Gh++wCNeKZH5LZDKxV6Nh8YTbOgwm8lxrXdz1vEJg3mv7PqVAIe74Mgb2yYPN/LNm2xKssVIgh7PjLdbsL7nh50rLs03xM595fb/sPyySNF1MuuIbRzXNzmv9W2aoYPLQ6gnAZhgrLQoH3npnZnu0zcFogx9dWYBjNIYjDyKBI=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e4326195-3fa4-497f-f022-08de1c41292e
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5328.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2025 07:58:52.4774 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: So1T62536OQDlrDMNQwVhmE2KI6rXKToHcQuYN3WQkWhKYW9lVnP8hkD4ITuz3rZp9Gnz5QJRMSamqQbFP+iBFOBOjkeBf+uDcgaiL2QlrM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR10MB6062
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-05_03,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 mlxscore=0 suspectscore=0
 mlxlogscore=999 malwarescore=0 spamscore=0 adultscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2510240000
 definitions=main-2511050058
X-Proofpoint-ORIG-GUID: 1I1jrneDibHIhPmNij62hCFa7OwLZacy
X-Authority-Analysis: v=2.4 cv=cdLfb3DM c=1 sm=1 tr=0 ts=690b03c7 cx=c_pps
 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:117 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6UeiqGixMTsA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=QyXUC8HyAAAA:8 a=yPCof4ZbAAAA:8 a=hcW8uBtxwXGhdyjrELsA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=cPQSjfK2_nFv0Q5t_7PE:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA1MDA1MCBTYWx0ZWRfXz0XtkKbdHE4o
 ZMbszmh1F3rOsMNHpIXvVywwm6GqAEV9qHKrOhS8k2E4s9ILWMnydAFAopeUTDEjeDgFEJOVKDV
 MhiYmRD3hNygDWg+Z3Qhs53MXMJjeXCPpDI7ULSTJdgyy+jp+YZmzOOY8Un7ZfV2D4T/KzOFxCF
 4qw1XNr3gHsF/tgIY7xXQ61Hg7xQpz7b79fNEdJZ9s26K6bUvPVmZ6RGorcILq7KY25IBMgs/fP
 0AO0htQESEVdSaiuHLMQpZQ3K3bzrDKqJo6K7wMf7KUGI0v/ltmxDiDCdpkpJj3Za/Pp/IOyx96
 Arqmn4c0Yevom6K+5YlqADhv1gGoZWZe8zMaeQbr7QmvAdl4XWryu/Or/fSH+Fnfw6m61TaQ12T
 2WPuSN9K/oMYNRh3OTNkR7IfrzFnmQ==
X-Proofpoint-GUID: 1I1jrneDibHIhPmNij62hCFa7OwLZacy
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2025-04-25; bh=q7dny66S9LomYCGGW0VbRf1IALmEJZrwrBjXxNtqmqU=; b=
 KK1vGJlFMIXTV/ccaBf5B8b0wMBlfbMY+Rgisyz53b9W6Zczfe/0w4nzFS/gpzFI
 82H7bcburlpGCEXvErB0Rx/iqqaBtui6L2FcWuKSNcdzhCOV3YL6N5Re7DawzegW
 phoHaXkGa/lLLRFODKkyzZAjpHmdCOjJst89QwHKYGk9NleQw+elY5oOeeTZvq5n
 9k5lZl0WbdrsOtR7zVDLJTf7vX7aEjVqESoqMIbj1T8LA7vKreIGbsHb1TeXLuf6
 3WdirKY67znrZdtd9mSZC8fafttTVORz2zxgFCgSMDCrmZEoi15whDMisJ8CRZWR
 xHovwlHdR2sa9lkJbWhKfw==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q7dny66S9LomYCGGW0VbRf1IALmEJZrwrBjXxNtqmqU=;
 b=MCxL8dB7UIQmyBOKvcYen5W5m53i/V+kkfdis83QJcd7iRxtXC+i5tyYSHq2WdhcLMXZnGRUBPi9HzOA8lMfADePPb6q7m4ZHREV4ZFe4cNHpi7OfNKKMfQhgLIc2uc7K8ES9bv+6gZ86uyrez50724lldlOc2ManZE+4hPPi7s=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=oracle.com header.i=@oracle.com
 header.a=rsa-sha256 header.s=corp-2025-04-25 header.b=KK1vGJlF; 
 dkim=pass (1024-bit key,
 unprotected) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com
 header.a=rsa-sha256 header.s=selector2-oracle-onmicrosoft-com
 header.b=MCxL8dB7
Subject: Re: [Intel-wired-lan] [External] : RE: [PATCH net-next v2] iavf:
 clarify VLAN add/delete log messages and lower log level
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



On 11/5/2025 12:59 PM, Loktionov, Aleksandr wrote:
>> The current dev_warn messages for too many VLAN changes are confusing
>> and one place incorrectly references "add" instead of "delete" VLANs
>> due to copy-paste errors.
>>
>> - Use dev_info instead of dev_warn to lower the log level.
>> - Rephrase the message to: "[vvfl|vvfl_v2] Too many VLAN [add|delete]
>>    requests; splitting into multiple messages to PF".
>>
>> Suggested-by: Przemek Kitszel<przemyslaw.kitszel@intel.com>
>> Signed-off-by: Alok Tiwari<alok.a.tiwari@oracle.com>
>> Reviewed-by: Przemek Kitszel<przemyslaw.kitszel@intel.com>
>> ---
>> v1 -> v2
>> remove "\n" b/w message
>> added vvfl and vvfl_v2 prefix
> Why vvfl and vvfl_v2 prefix? For me 'virtchnl:'  'virtchnl v2:'  looks more clear.
> Can you explain?

I am trying to follow the code path, as vvfl refers to the
virtchnl VLAN filter list. It’s just a way to segregate the logic
between the if/else conditions.
Either 'virtchnl:' or 'virtchnl v2:' also sound good to me.

Happy to go with whichever you prefer.

> 
> Thank you
> 
> ...


Thanks,
Alok
