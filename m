Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE6FAC130A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 May 2025 20:11:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2594F405FB;
	Thu, 22 May 2025 18:11:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BgM7Z5h3p1pS; Thu, 22 May 2025 18:11:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7A68040631
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747937482;
	bh=rO+MQgejmyh1dw8/jKx3DCV2Yl0u5rRg4U3wlcJdlJw=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZVv3vTrpN6jKmEpYh1gp2S8j9g+LnfZjn3bYH1/ewpjP5aHM6w2AYRI6aVYxREdFl
	 4cptNq1cP3L6mbk7wqA92f42mxlT0unHtAlW8pv9YzI70azVn3KktSrAcldvx0clit
	 JQphLViVPoKreNxULqMmL1lZZp1wtwMQZj9yFi5WsA4OzXD/FxR8i05U1NrNqeyR82
	 qfihqZ1kgGFEuCG8hm5y7RisVDUafkyQIH/JcleGmOOMRj6qudNXoG8mkeZ00Gtsn/
	 dem0d01AlivJharC4qSQZbWdRrnYe3HIH2Zg9ojWkpRncGLYHeb0UOqr2d+Y4z/yRY
	 Wqzr+SbyIbxyw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7A68040631;
	Thu, 22 May 2025 18:11:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 208E1BC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 18:11:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 06D1E400D2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 18:11:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9d41i12nOe7E for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 May 2025 18:11:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.177.32;
 helo=mx0b-00069f02.pphosted.com; envelope-from=alok.a.tiwari@oracle.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6356240FF7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6356240FF7
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6356240FF7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 18:11:19 +0000 (UTC)
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54MH0qKA000970;
 Thu, 22 May 2025 18:11:13 GMT
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 46t7ts86km-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 22 May 2025 18:11:12 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 54MHWYoR033497; Thu, 22 May 2025 18:11:11 GMT
Received: from nam11-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2080.outbound.protection.outlook.com [40.107.236.80])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 46rweq0td1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 22 May 2025 18:11:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YnKGf+469EeBm9ArDFUuUQqr9ZbR7MZxqRndBqcYxt72hULcriE0kdqOc8koxWD79W55A+CJUa+RJg3jzCzxVrVGSn2lA4kfh13SpmkBoMXyaZrSP1u/PGlzx9/DO9l41jAwTtWEXgCawDt+gpYY3qjsSFkNRD2ABir1xF80qnfKJ2WZzQ0IcG+MZgI/i8GLwVz7Ht+JLNiSYM9jBxU7MG6wQS4JfybVShDWEgyLtn4gnnHcbeTJiSGbk5b5MSKWx1oPUxu7EAcgi1qZfhH2iujvcVlntL9XLleRxDheVKgUgzn35pccZA8Y9kspJHEgi+3FH7yfxc8ZxwgsnDCABw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rO+MQgejmyh1dw8/jKx3DCV2Yl0u5rRg4U3wlcJdlJw=;
 b=Q/Lx0KpwdyQOWSjvSxK7kaEpvGZprHtSeV6mNWwZk23fy/NqgSkvUx3Wl0IZwEd3XThkhQpXT1VTt7Wt9Ro25iMAXYtCf2wLoDR7xSVKX3WcHzkQUVpZb18DBnDOOemlPiDnzyMumhR1nusYElLc7yl7oASL4Zlbnmcfa/FqbQe2pGlRb7X9gHfKMDJvlDxDDuthxmRx/jNJ/8h278MFmiTEsfNTlD058s+gYxFDcXKUQgGWaUjM+pOaQ7ZDU7hWtvssZXYs0/ecwHj1v0UIQfnyaeJWdqD8cWlhnTpx/TlH1PPx1kB25W+wabvYIlgtena6m/gJlgFymmw2vcC00Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DS7PR10MB5328.namprd10.prod.outlook.com (2603:10b6:5:3a6::12)
 by PH3PPF54E75B76D.namprd10.prod.outlook.com (2603:10b6:518:1::7a0) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.30; Thu, 22 May
 2025 18:11:08 +0000
Received: from DS7PR10MB5328.namprd10.prod.outlook.com
 ([fe80::ea13:c6c1:9956:b29c]) by DS7PR10MB5328.namprd10.prod.outlook.com
 ([fe80::ea13:c6c1:9956:b29c%2]) with mapi id 15.20.8746.030; Thu, 22 May 2025
 18:11:08 +0000
Message-ID: <ce71fa5a-32c0-4cc2-b537-5849d9bdea69@oracle.com>
Date: Thu, 22 May 2025 23:41:00 +0530
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 darren.kenny@oracle.com
References: <20250522074734.3634633-1-alok.a.tiwari@oracle.com>
 <20250522172108.GK365796@horms.kernel.org>
Content-Language: en-US
From: ALOK TIWARI <alok.a.tiwari@oracle.com>
In-Reply-To: <20250522172108.GK365796@horms.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SG2PR02CA0070.apcprd02.prod.outlook.com
 (2603:1096:4:54::34) To DS7PR10MB5328.namprd10.prod.outlook.com
 (2603:10b6:5:3a6::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5328:EE_|PH3PPF54E75B76D:EE_
X-MS-Office365-Filtering-Correlation-Id: 0915a56c-2622-4540-c955-08dd995c0673
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|7416014|366016|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VlJYa2t4YldhSU92eGU1SStTaW4zenR4bTNNckU3d1NBS2g0SnJIZmVFTmN6?=
 =?utf-8?B?SEVFbHNyZy8xeUFGNFNadG1UZXZtU2grNFBqUmlxMGIvbU1UMmF6ekNHY2N4?=
 =?utf-8?B?RlVpalRpc250N0p1NEREdmFXRzBvNExXK0NkOWE3emFmV2ttNUV4V2swREhI?=
 =?utf-8?B?WVVvb0V6b3o3NHBkZmFISHlxS3gyajFKcjZNbjkzVWhJMG1qTXFtOVRWb1No?=
 =?utf-8?B?Z25ZTlhTdy8wekhkYi9VcTczQkpaTTBLdXZpQzdTc28wSlVWSVRTKzg3THdY?=
 =?utf-8?B?c1RPMzN3cmxsTVlnT0ViRGl0ai9RZkFDcERsalRqS2Y4dTVIRUV4OWd2MWN0?=
 =?utf-8?B?bEIzeU9GdHdFaG02Q2lYVk5FZzRzR0NlQTZkNmVmb0tmRTZZMXo1cjI4NENl?=
 =?utf-8?B?SFJ3R2ZOLzZWalgrbXgwL25vSlpIcjN6TzFiSjdIcTkyZ0M5WVYyY3JiVXVP?=
 =?utf-8?B?WnpyV2dmNXJpYlBsY2I0VXBTUitBTXd1Mnl3ZTdzR1JiS3NCOXA0bUY4TkNp?=
 =?utf-8?B?MGVyTXJIQjdlZFRUcHhOUU9tcEZGRUN5WmQ5YlNKeDVtTmt3eVJEendYTE9O?=
 =?utf-8?B?WC90MWFUd2xJUk83VDRjS294dUpoU3krSmYvSGM5NVdhRFJhMW1Wb1NuSkZk?=
 =?utf-8?B?bjJESlhoeU5naEhFQm9tMWc1dVExR3FLUHlTdXY1Y1dHQkN1MExGQjdqSXpO?=
 =?utf-8?B?b1hRZFJVbjYvZ0srQW1ZSnpxVnRpSTFrL3RUc1BrMDhHdlBicXBYcVEvSjVJ?=
 =?utf-8?B?M3VqQ0J5bXV6enBjT2pFUG1hRzRFQ21IT0xnSXRzSkJRUGRJK3E5MGJpOTRP?=
 =?utf-8?B?SGZWY0IrdEk3QjRtRmJ5N1FEZlllWUNCZHpTYVl1Q3MvcGVLSFBJdXdQSkQ0?=
 =?utf-8?B?b3FWc1lVVnVMNWFxZzRqREhJQ2hraGxsQ092R0xHNk82OXlrQ0ZDMkxVeTRN?=
 =?utf-8?B?eUpDbnpheXJpYUVSUzZmTFRsL3NwaFFZWTV3Q21JbDkrK0xnUUtpcWhuelV0?=
 =?utf-8?B?MnF6VDBxVm02TG5Xd1NyMnN5WEhOcDBUbm5PNXdPMFNPZWs1d1VLMTd2WlNY?=
 =?utf-8?B?YkZpZWErTnRKTXJQbWNFMWNjaXhiZXhzdDZMckhZNW91c3grbFVoVnpEWWNr?=
 =?utf-8?B?SSs4cEl5UnE0TWJuamxsOXM3ZVcxU1Uya0kvVWNPVkpWeTQxeEQ2VkxGcmFC?=
 =?utf-8?B?SGk5QXIvdnBzajl3STZEektaUEY5TUFZenBZOGNKY1BOTnJzUkM4cmZyWmtW?=
 =?utf-8?B?MkE4WW5jQXlqbThIVEI5Q28wZGp4d001VGJRdkpib3VRRjVmeUxxYkNNcVlh?=
 =?utf-8?B?aVowcGdBZHFoN3VNZVpXOTU4Zm84bHRVM3p4Q2RYbGIzRzFFQkxvV3FTWjlp?=
 =?utf-8?B?VVdhTTl6Z2hjWE12aE9vUVFDd0hwSmRwUFBNam83bFdhQ3FTUEc4RkpKcUlv?=
 =?utf-8?B?cHBhcVh6a3FnSVdaZmdTM0VWRHZRTW9XTFNYeGtoZW81NWVxcGt4M3NFcTJp?=
 =?utf-8?B?Vnp2Ukh1ek5yN000RG5JTUx1ZCtoYWY0QjRqYVV3WjRDdldnZ1RkNUg3NW5n?=
 =?utf-8?B?NmNwcVJXdFhxUHFDek5weW1aaktaM042QUFmaTJOclFqcHJXcTZXUnlvdlVP?=
 =?utf-8?B?ZlBOZWl6akhTdnNXTGpwNmtndVZqbERMRGJ6TWcyOXYrZ09QNm16UXZSSjZn?=
 =?utf-8?B?Sm9FOTRlbVpuRTVvUkVrcUlRenhPRThuQ0I5Qzc3aml1ZTVqOHZKQ01Tcll0?=
 =?utf-8?B?OTN2RzlZdzRQUzFKTDBMQnlSQmlJUXNUL0VPZjZYVlFLWnZLUS8wbTI3R0tt?=
 =?utf-8?B?VGY2bENqZE1oZlRCTEZ2Z3BNUzlrWmgvV0hSc0hNRWQ2V1haRERGclcxK3ZU?=
 =?utf-8?B?RVhrSXdWOGVaTkdtZU82TjJZSTl6eGxtdndxLzBNR1hzbGsvaFJndTdJcHJz?=
 =?utf-8?Q?pSHrORB8j9g=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR10MB5328.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(7416014)(366016)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q2pHNGMvS2hBRUtYbVM2b1hIeTB1VTJ1Z1JkdVZGb05xangyR1BZa0YxYnVE?=
 =?utf-8?B?c3N0b1dMa0ZQeUlVQXIveGZxSjRQbEVIUGdEcWNiaVhwY2MvQjVET1l0Ny9E?=
 =?utf-8?B?SzJ5eWdqWjBzS0VQYVBBRk5Ha3l4ZTJQU3hmZmpBS2w2R3h6T05hZHYwbDUy?=
 =?utf-8?B?NTJWb0JJVlNSdXlRK3ErV05VcHpuWDJrMy9ueGpBWnliaHIrdzZxVXFmT2pM?=
 =?utf-8?B?aytJc0UyM1hRZkdYdi8zQ1liS3F5VXBJelpBOExNQS94akFMR2JCd2tHeW1D?=
 =?utf-8?B?cFNOb3U3Q3J0d0xUTmtFc1REUlI3Ynp2M3JCaUIrODgrUTZna1ZDRFgySDUy?=
 =?utf-8?B?ZHBsS1VscmcwbC92R3gyQW82UCtnejRkWFVnWXpaSVhMZVFmbjVzaWlZbStC?=
 =?utf-8?B?cGFneTF1SzZyenRMYjZOWHVSQlhoY3dDWmlucFBkZHYrWm5FZS9nZ3hzV0M2?=
 =?utf-8?B?Zi82UWhha0Z4cUVGYUxjR0xUVnB0aWpzWCs2K3ljZDE4bnUwY1A3dUc1Uk0x?=
 =?utf-8?B?UW9xdmduUGlTZkZWWmlFdGJ1Mlplam90dHUwSXF4ZFVHTkpiSksvNHpkdUp6?=
 =?utf-8?B?ejNOUTFwTXlkUFBUSmtIVVY0VjZQcTkzaldDMTF4TzJpVnVjcCthT1dKeE9k?=
 =?utf-8?B?dlljSmpnWWpmci9FWkJhaWd0OGtrcnFNNUVkL3BjRk9pVy9yWVovbTJOQU1Q?=
 =?utf-8?B?NUpLdjQwOWdwOGkwRHMweld5Y21YM2U2K0tWcDZrb1RHdE9uekdLTGNMVUtU?=
 =?utf-8?B?Rk5HZTk4dGFPV1dONGxpeFJvOFdTeXFNdUpVSUt6ZkJKUEVKNjEwc1ZtVXEv?=
 =?utf-8?B?K0J1MmNObEpORitkd01vWFRzMU9iZU5RZ1M1RlVpZk1lcVZHTGdsWWJoOGFk?=
 =?utf-8?B?amZZNC9PTlJOWHAwa2FjcFBiK3FVU2RGN1ZoYWQyZE9XeDh4YmJ4cncxUFpE?=
 =?utf-8?B?ZW5yZ2VmdW9HcXgzZ2ZCc3B5K3A5a2xYaU5SVkVOelpGU251NS84b0JWV05j?=
 =?utf-8?B?ZnNndUhGbG1mM0pFd0xnOVR6akdpWjIyNGJlK0VoYytuSnYrcU1uU3lhRFlZ?=
 =?utf-8?B?d1k1d0txZkFibUR1d2hKOThZa0RQZkNQa1RnZjVZUG5xZlZNZzJVbzBtdHNX?=
 =?utf-8?B?ckFrT1BMYkdqRGk3aWpTUThBR2FDZlNXNVowcjh5MjhXUFhCU0xiekxqbGNS?=
 =?utf-8?B?VmdaWmVQZDA1SWFCd2tyUXlJNTNiQmpBbkVHZjIrRmJKTnBJZTZiSXFJYUpy?=
 =?utf-8?B?Y0Y1VjRhWXJXeDVVNUFkY1JTK3FRbTI2czc5aWVhYkxFZXNUZ0ZOL0l3b0tx?=
 =?utf-8?B?aW8xayt4RklaY3pQTWZtekx2VTFYbUx5VUZtUFNPK0hEVGZCL2lYV1V2aGFG?=
 =?utf-8?B?d2RrODFjRVk4TGl0TmE0aU8vbmN4SjNBc25PVlFSQVVYNFZDMXM0ZmdvVTc4?=
 =?utf-8?B?UDBqcHdGdHZhb2ZyRlladWdJQjFBVU5hKzJ5OE15ai9GeFQzSUpUWWdwb3gy?=
 =?utf-8?B?SXNsTVBSaFRaMHR6WVZSTkxSdE9wYzZlNDZ2YVBiVUNscFczYlNEU3VTVnJn?=
 =?utf-8?B?Vm02S05BOFFiT3lLaW5aNDkrR09RNTVuaW42eUNvRnZvUEtGZDRBdzlsUytJ?=
 =?utf-8?B?dDRlS3JXWUFpbXgyQk9FeWpoSGxVUGVIcGNGWHEwODMvQmR0RkhJL1RHSVpZ?=
 =?utf-8?B?T29Ibk92VHN4blVySmhuck9yWTYzRm00WktLOFplcTZLNWZaQU5kb2lZQTM3?=
 =?utf-8?B?T08xYUpLNTlGN3dZRHFOQ2FPNStsbGZrcUVBSW9YWWQ3ZGF2QmlyUHFSK2Ro?=
 =?utf-8?B?WENrS28xQ0dCN1dRWFNMQWdwbStjTEVRU21Sa0ZkOEhNNEdjN3VIcUM4OUNZ?=
 =?utf-8?B?OCtNR280aStzUUs2UGd5MjhXUzlVRVVnOFBObURaVEhwR3pRV1Z4eUxLSTR3?=
 =?utf-8?B?MFB3ZlJLMmZWLzk1SFhsTU4xcWVZNjhkVkdqOFBnWGVEUzlCUi80TTk3QXZY?=
 =?utf-8?B?bVEzdG84VEYvQzRTN3JxOUtRN0x2cTF3Z0V2aTlveU9pZTRTWmhDTDNDaFl4?=
 =?utf-8?B?aytOUThhSXZGdEdOWEtYK0VIMDlrbDRkSXY0czlLMENIajVYc3Nha1Z0MG94?=
 =?utf-8?B?MjFXVXFxT3pzNk5VNW9FOVl1KzBOeVlwQnkzSlBhNURFc25YSmtXQlhLcjJ4?=
 =?utf-8?B?NkE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: D39iuYjJC2kcZ/JbmZNMd99p+UtE/8eCOGuWwADnjVDUB52MiUUG/BFWqH02KjirvfeS/FaSC2cGNStSlagJ0Xk94+S0RZtjukGycApyj3eXkGx+1ItC3kC2Dc+pHNPN0vLHD94lQvKoavYnb5HbK3Uuo3RU8CyF/8XZ6kFUZDk8CSXBS+YB+GcmiPcrR5i8Vuy6L1uCWJFVU6JCQEKukgPxKwoe1jQrV867O9xyt8NM8PAcPY5EDUssiyC4vgaN013zviXYIZB15mLU9/0mZOoI6qyxHwAe//hJerx3GlW0JpRyZ4XhYNF8kYmXjsGGQpJZSkYyK44i/SSOk17XgoypyLAo94UvKCPW73v7TgmNU09yZCuXNvKE/B0weVw8U5kwKCdUCeIcca2YVsymNRhAIkv2hj78ANphJtVgfdXxc3rO1IOQRtD+5hLYaTKHIOgIM26/LDtPcoAMvmokPmUTwPt/OcKuwEKKC7sUYjXeYpSiGsiXs0dqrJY2UTY4pkxxgeYOJQ/iCDkvYMfTavMFrmBBdfoQptaZMUX1cPeL0YHU2+b16+TNp402dhyNqvp2iJIWfShzVb1NOb8J4CifkJ5Y0Sph6okxUsmOYnQ=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0915a56c-2622-4540-c955-08dd995c0673
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5328.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2025 18:11:08.4296 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9tRgnLE+NX9AznQ8cHd30ZbiWObtzWu6dFbRF88ZqgBd+R607TvE1/W0M5r2uD37jb7GKU8fBXQG/7iTwJstpg3yebxRtyjIq4WS9O12Lsc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF54E75B76D
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-22_08,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 mlxlogscore=999
 malwarescore=0 suspectscore=0 phishscore=0 spamscore=0 adultscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2505160000 definitions=main-2505220183
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIyMDE4MyBTYWx0ZWRfX/g7YLEKXEbBN
 MMJuq/PiG/gysOBaM54UlAGcCS/xUsSsOHH4zS6AyUeZAkADqdGkFRl+w4QSWUsENOshXupAiqt
 lKkiIa4VOLByQVNFiWAST/Wm6SwwzGXB46PhMxPInoStvvWdHtEGRQKZLTdxhr3GK9DcgKh5ggh
 wgzgkRQWv+rN1DHHc8u8SyzZNZSxHo7XdiRvBCrWVuYziINBPm0kr57pBYn6EXUAK6oSBuu5n/A
 NfVH+6UjX/bLr8DD/XHIA0KWOWd6FXRAvH/Cq5qo2sVf9Z4+0jQfdn2sbjp8slZSmFFnJ526A3p
 Me6icbeE9NwgP6BY0PmqnKogfKWOR80Rbyjq+0fn2Pf+QTp9/wRtrFxgcTvKP1dyUHdZrIoXiEj
 7T0kayjZXapT+p1dD97EMhGbGLwZRaWkWlI+MuhEdZ5N8GFUZEPJffcu6AOnsYz55kzaD2J/
X-Authority-Analysis: v=2.4 cv=JvrxrN4C c=1 sm=1 tr=0 ts=682f68c0 b=1 cx=c_pps
 a=WeWmnZmh0fydH62SvGsd2A==:117 a=WeWmnZmh0fydH62SvGsd2A==:17
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19
 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=GoEa3M9JfhUA:10
 a=VwQbUJbxAAAA:8 a=bbmNwwe3OGvqmaZQ-GEA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-ORIG-GUID: MWlUHopyqO-NtHE7dTvIXj8PEC2hjgGG
X-Proofpoint-GUID: MWlUHopyqO-NtHE7dTvIXj8PEC2hjgGG
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2025-04-25; bh=rO+MQgejmyh1dw8/jKx3DCV2Yl0u5rRg4U3wlcJdlJw=; b=
 NZIGAIEWUXvl5S61jB7xCs5dY4ORqBcLIMoiRfGNdKRFrhQGyfaNkF5/6tlmW+nh
 v1vuYQOh76GzGOfueE0YE/swhlAiVPDptMjpaYjsbGqabPOwyS3Dz7IIbIgKX53z
 IduyeC5urgeHc2gXRQGmwmIx3cSBznHRMzTEE78OlzN4gJ40+5Aq2V1f3cGgdsGW
 2VmxyRnk48SJ1MA3aJ8eKJfe/QtOmnjBRg4K/zjTciJrmnuhSIdAFmXJ6dAg5i1o
 pyztb9uYdSZcLldNkBUT7RHoHDoPqDoaH0yPJABE4wKRa8+Q8PNq5obxN3ajE8ok
 s6Xwrf9c6L3D9negIbFT+Q==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rO+MQgejmyh1dw8/jKx3DCV2Yl0u5rRg4U3wlcJdlJw=;
 b=dNZwGGrZAM3xRIMod6g5NJS00m1qNagBtwvpmeb0XTY0CemCZKkzYoB0w+gcI5J/MJ+GJjvI+s4nOq7uut5ugUEAkSqBURawTFcPQrZ/eHuHkPTGWeULG5QBhLYBkMRLD121b9X3PYDT69UzrYjWoYNaqtXwIxkWYlPl/IXREmM=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=oracle.com header.i=@oracle.com
 header.a=rsa-sha256 header.s=corp-2025-04-25 header.b=NZIGAIEW; 
 dkim=pass (1024-bit key,
 unprotected) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com
 header.a=rsa-sha256 header.s=selector2-oracle-onmicrosoft-com
 header.b=dNZwGGrZ
Subject: Re: [Intel-wired-lan] [External] : Re: [PATCH] ixgbe: Fix typos and
 clarify comments in X550 driver code
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

Hi Simon,

Thanks for Your review.

On 22-05-2025 22:51, Simon Horman wrote:
>> @@ -1754,7 +1754,7 @@ ixgbe_setup_mac_link_sfp_n(struct ixgbe_hw *hw, ixgbe_link_speed speed,
>>   	ret_val = ixgbe_supported_sfp_modules_X550em(hw, &setup_linear);
>>   
>>   	/* If no SFP module present, then return success. Return success since
>> -	 * SFP not present error is not excepted in the setup MAC link flow.
>> +	 * SFP not present error is not accepted in the setup MAC link flow.
> I wonder if "excepted" was supposed to be "expected".


Yes, "expected" definitely reads more naturally. However, I noticed that 
in one place, the comment uses "accepted" instead — perhaps to imply a 
policy or behavior enforcement.

------------------
static int
ixgbe_setup_mac_link_sfp_x550em(struct ixgbe_hw *hw,
                                 ixgbe_link_speed speed,
                                 __always_unused bool 
autoneg_wait_to_complete)
{
         bool setup_linear = false;
         u16 reg_slice, reg_val;
         int status;

         /* Check if SFP module is supported and linear */
         status = ixgbe_supported_sfp_modules_X550em(hw, &setup_linear);

         /* If no SFP module present, then return success. Return 
success since
          * there is no reason to configure CS4227 and SFP not present 
error is
          * not accepted in the setup MAC link flow.
          */
         if (status == -ENOENT)
--------------------

> 
>>   	 */
>>   	if (ret_val == -ENOENT)
>>   		return 0;
>> @@ -1804,7 +1804,7 @@ ixgbe_setup_mac_link_sfp_x550a(struct ixgbe_hw *hw, ixgbe_link_speed speed,
>>   	ret_val = ixgbe_supported_sfp_modules_X550em(hw, &setup_linear);
>>   
>>   	/* If no SFP module present, then return success. Return success since
>> -	 * SFP not present error is not excepted in the setup MAC link flow.
>> +	 * SFP not present error is not accepted in the setup MAC link flow.
> Ditto.
> 
>>   	 */
>>   	if (ret_val == -ENOENT)
>>   		return 0;
> The above notwithstanding, this looks good to me.
> 
> Reviewed-by: Simon Horman<horms@kernel.org>


Thanks,
Alok
