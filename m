Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4598D6D01
	for <lists+intel-wired-lan@lfdr.de>; Sat,  1 Jun 2024 01:49:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CAC5F81315;
	Fri, 31 May 2024 23:49:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eFl17ucqmbYP; Fri, 31 May 2024 23:49:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E238C8124B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717199359;
	bh=5tojrs3r1a+fyRUKwgH3SVqrY0OKX3PIPc7hgkP4evs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5OWsybxNGnwetoLxopFBl7KK7kfcoHHKbDASLngHT+sBoZ3Cplwr9CHr6ICEnvLkF
	 gttrc9mMwOj+Wq5+KnA2aSRzJOunFN/11OkTXtBPmqF6V6103A+ETjg9g4VPeW6YWy
	 VHoa9QVAbnBl068jXT+H9CxrAP0HXm1k7QmmqIye42C9xWBnHnd3xCcCsy/ezkke8J
	 9AST5+4dMi4jnkeCE1jo2A6elfqn89UporTM3iJDW/qTPFSp3x5sYTLO41Qik21MeJ
	 IRuxRb8NvudlfxV9LCOYHmUmQhP5G5Rk8w53vQedJ1EbJaKJ26eygI+8/Ww9c3Lh39
	 KOewecNAmaz9A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E238C8124B;
	Fri, 31 May 2024 23:49:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6EDD71D5919
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 23:49:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 58DC781190
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 23:49:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j3UG2demmugM for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 May 2024 23:49:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.95.70;
 helo=nam02-dm3-obe.outbound.protection.outlook.com;
 envelope-from=shannon.nelson@amd.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 81F4381178
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 81F4381178
Received: from NAM02-DM3-obe.outbound.protection.outlook.com
 (mail-dm3nam02on2070.outbound.protection.outlook.com [40.107.95.70])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 81F4381178
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 23:49:11 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LAJps9v1mEUcPUuMVWEoyaAeZR/EXGbIxDUxyLwdWKGHMcWS7ESULMkoJnPpe8KPkLOuT8dcBHmNK2dY0nPsY8E6ICvcGYy5TFOXo9Uu2M8I1U1NAGpWWtPr11Ol7v1OuT49aDHa2pMU96NJENM+eJ/n6JTlxto08AiK9kbZmr8TXDXoTDMQiAse7CT1IBc6FRz9xO479gLAbuEZ/RapUVba42L5RoFHmg6GNbiOXAOvClTPalFQ8hkHmKzyQYkwsbxp6Mi6BagjHQwYdjc6Z0mvna1SZEZGPR4u1GFcD+TAwJmd5/T8vlaI5nI1smahPP/KvNuINTT7hCCmrfl6zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5tojrs3r1a+fyRUKwgH3SVqrY0OKX3PIPc7hgkP4evs=;
 b=krKZd3FoARBvOHtdjXKHWTTw/EEpBBTCRKRHkikVvAGQCeto2DF2Cp+0guaIVtt/Iv95rOKP/MFFBLdwaZcKMDOJiC8PAj2mHrgsnqrFKu3qcBpjOpPesmv6hpK7kBKDRMSpqRul66XpglTNtp4V4jYO1LtIwUYW2rcGOc2K8l2SwNcRchD5PXnyOAB+sKPDn3wgjVLd/oCnbrNYVgIgtgQw9KqmNDcnc64dxBh5/Vo7mHMbkxTDWwZmHyAJ6WwyXRYxbLt5F+FZUegt5FESV+DjUDrkRlKBfmpDV/yz08cUM4trLZiCkjGxHKSjzXZeZ9b8AFZTXuKIxUeYYYHkzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from DS0PR12MB6583.namprd12.prod.outlook.com (2603:10b6:8:d1::12) by
 CH3PR12MB9396.namprd12.prod.outlook.com (2603:10b6:610:1d0::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7633.21; Fri, 31 May 2024 23:49:05 +0000
Received: from DS0PR12MB6583.namprd12.prod.outlook.com
 ([fe80::c8a9:4b0d:e1c7:aecb]) by DS0PR12MB6583.namprd12.prod.outlook.com
 ([fe80::c8a9:4b0d:e1c7:aecb%4]) with mapi id 15.20.7633.018; Fri, 31 May 2024
 23:49:05 +0000
Message-ID: <3f1a5f28-4e5c-463e-9049-ffc23efc4f93@amd.com>
Date: Fri, 31 May 2024 16:49:05 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20240529112337.3639084-1-maciej.fijalkowski@intel.com>
 <20240529112337.3639084-7-maciej.fijalkowski@intel.com>
From: "Nelson, Shannon" <shannon.nelson@amd.com>
In-Reply-To: <20240529112337.3639084-7-maciej.fijalkowski@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY3PR10CA0015.namprd10.prod.outlook.com
 (2603:10b6:a03:255::20) To DS0PR12MB6583.namprd12.prod.outlook.com
 (2603:10b6:8:d1::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6583:EE_|CH3PR12MB9396:EE_
X-MS-Office365-Filtering-Correlation-Id: 634c4bcd-212c-4c02-b4ba-08dc81cc4194
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QVdDN0VwaTJYclpMZzhEaHpMK2lndjhoNHF2a003YlM4OVozbmJjdE1YWUxt?=
 =?utf-8?B?dEwwNUVBZTRUNHdzZGVTanJ3RWczZWtINmd2ZWhkWEYxdDU2WkRBVTRSekM3?=
 =?utf-8?B?YWliUjE4czdicS9qNVJxcWlRblJQejJ4Vlpyb0RYVG1zcFRUaTZvUDBsUzBI?=
 =?utf-8?B?aE4xSlR4RFBMalJQS0d6YkVzQ0hsY0s4azNrWmZLczhBTnZRSVVtSFdyRzNn?=
 =?utf-8?B?eXdWcFRubndhZVdBOXc5enZCS3hyL3dOYXFtcmYzdzdqWi9pWWdXKzFNT0hP?=
 =?utf-8?B?MmhNSkZ4MHQyZDFweW10b3FUVnFIMzg2UFdCWEN1TVM0NExaWGp0a25DcWRW?=
 =?utf-8?B?OUh6d1pkaTNmdDJRK3pxKzVBdWxndXJuc1BkSUxRQzFXN1V1aUVDb0k2SXhk?=
 =?utf-8?B?RzBDSzczSDY1K2FqeVg3eHVUbS9ZQmVHN2MrZk9DZUh6TmFmVEtoUWwwVkJS?=
 =?utf-8?B?NmpyK1cyaVV5bDBacENSaC9WUnI5RWUvVndmMkgvVjBpU0Z0NDBkSkRuM1la?=
 =?utf-8?B?UDlwdXRYOW9PaDFTS1JqOXVrcUlab1Z5VEVDaXRUN1o1QW9qYnFBZ1U0d3h4?=
 =?utf-8?B?eDZFd2hLZG1Tc0gwNHdFZzV3MnBtSU0zUDJnZ1BveHhXMk9wS3pXSlh0Mm5z?=
 =?utf-8?B?SDMrUHl4UEwzRzFaYS9MblJyWkJNYVIyaERQWE5aMFNlWVBvcHk2QXlheFNL?=
 =?utf-8?B?MjgvclIwK0RLWHg3YWQ3RjdqenBmY0p2eGg3QW5VMEVpQnNQWnlCRXA5QVhH?=
 =?utf-8?B?WitVazZ1RDZIVHF6MEdDdStMZEVZKzR3eXgxTW1TTUhtZFp5MWpSMXNRQnFY?=
 =?utf-8?B?S1dzWlFYSW95YWhUMUl1U3BralVrOVArUVlCd3d6YnQ4UEN6eWFIS1J3TFFV?=
 =?utf-8?B?UmRIRVZWOWk1RUZSS2dZUElhNEsxNG5ER1JlbU5aMHVuMmg4UDVOVUM1VWpQ?=
 =?utf-8?B?UzR5cUMzWVlwVGczQmw3dmhocWRmalhDV1M3VzNqK2plZDQxalJvekY3S1RS?=
 =?utf-8?B?dWFLZTYxaFE4T3VkNzM4Ni9CMmpUcmFOUUloWSsyajBxcUNTbFFId3M0cGRO?=
 =?utf-8?B?azBSSmR6SDhBQU1hV0VadStsblh2UUZmZVZUVWpOT0hDajkrOVQvd29sUnVP?=
 =?utf-8?B?VjBDU1hkb3M0SS90L25EVitTK1E2bUhZWDJ1NEx1TVVLNEpUL3FEQnBPZmNs?=
 =?utf-8?B?SVZVWHFLU1ErUGVsSThGUlhBU2RNZFl2dFNMZ01nSVU2YjBGdExDZVRWMW8w?=
 =?utf-8?B?MWREODZsU1o3aFppMGpIUWpYaWEwRUlHdTVWNkl2bG51S3UzOVRYR1lhTlBs?=
 =?utf-8?B?dGtDbHljSmhzS2lscmFFRElpOXNJRUdyazliZWhBb3BKdjR3Z0pheDdLWCtv?=
 =?utf-8?B?SXJmWHE5VlFOOGJYbG9ETFRaTUFhUEt0dVREYndLdDdJMUFZUG1tVXh1bXBX?=
 =?utf-8?B?Y0RCeEM3ZWkrN2xYOUdCUEQvY2RYaW8xb3pQY2JuUlhtL0gxNldmRkp1Rk5P?=
 =?utf-8?B?dGcxbzhaMjdldGpBSitIWW4xOHllelV2MTI1VXh5OHRsc21zYUhSVHhUVENG?=
 =?utf-8?B?ekg5b1E1aGQxTmMzZ2QyNWNHK1FROE5lNTJJUVd5MGRtd2ZYbFpzZks5WEhI?=
 =?utf-8?B?ODdrOFQ5eW1VUEFQSUo0TjlkWFNudjVqRExYMlF1VVRrSVVFb1VISGNNVjJ4?=
 =?utf-8?B?TkJrNXpoMFVLSGVZK09pZzBqU2N5WWpTQmJEZU9PUStDaG5TcjIvSTBRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6583.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y2JRKzF3S2RCc1JudzNBNncyNXY3emZYRU90WGtIdkY0WTZaZ2xlYUp6eDVu?=
 =?utf-8?B?Z0VKQzZ5bHYxb01vYlpxVnJia2ovV3NSUUJNbjFmbHk0NzRLRWhKbThabkgx?=
 =?utf-8?B?TlE0a1dNT0Q2a2JOajVKdXZwcFRFcU5xUXhnMVBWcDVTNUNxdng4QmZSQnBq?=
 =?utf-8?B?VjRIVEZIandMSlpOOUdxK3dWNDFrdG15YmF5TUVkT2Z1VENTdi8zaHV5YzE4?=
 =?utf-8?B?QWQxSy8wMGhMTklYSXQwQTFiTHRaMmk2VmFBd20vRGJNdnAxUnBjWlFZTXJh?=
 =?utf-8?B?a0sra2RpU1lMcnRFdzNtUDFzQWdNMzVHTXBvSVFuOFlLT1VpeEhDWUJOdGR2?=
 =?utf-8?B?alpIVU9Rb3AzZkZWL01HK3VoL0F1cUxBZXpmUDhjSkZyVXRNL0hBQnRRaTFh?=
 =?utf-8?B?dVdZcmZTelJBTmo2OVh0YVRVT0V6Z2p5blgwSVBRLzFCMGVncFpQUkk1M2Rq?=
 =?utf-8?B?NTI4SVdEcjlQdkNjUkRDVW5BMmJQdm16L3Z2Q0hvTDJhaGRxQTdZS2FQVTNn?=
 =?utf-8?B?dXBjOW9wTkJhdCt6aHNUb0V0SkJSY2pMK2p4MjVyOTF2MHZMSVdWL29wbnNz?=
 =?utf-8?B?UXdDdDdXVFdwL0Z1Y2xwbW9ORXlWd3Z2a251cjdvNGJDMEpmSWlseVhrc1Fx?=
 =?utf-8?B?QkdKYlV5Z3BEWnpYNEdzUCtjdm9IVWg0d0FuQkU2SE1kYUZibzI3ZDlQbXRT?=
 =?utf-8?B?NS9PK1hLcU1YK1NGS0UrY1d6TTdzZDFGTkp2dnJLNnZHMjlJTHMyV3FmNm9m?=
 =?utf-8?B?TVNScW1DWUNBR2Y2OUN6R0ZkVnN5ZmQrSy9zZkUrdXV4U2VCYmMrazgvQnlY?=
 =?utf-8?B?VnZ2L1g0czE1OGJ5RXkzNGJTK2U2YnlaczFjQm9scnlKMGdIOUI4NS8yOWQv?=
 =?utf-8?B?bDJVMjlubEYyNHNSdDFZM3REcjJXUFNBeDdUeitqSVFLVktjQ3VsWUhxbUtn?=
 =?utf-8?B?VVpnOXQvWHhNOHM3cHVOVncvZjRhS3NrMkFoNDJvTVVyb3VUb2xFZmxHQW0z?=
 =?utf-8?B?c1loNytKQzFrUjhaUEdLZ3R6WU9FR0o3WDNTWHF4MG0yT2FSRzBUcUtPZFB4?=
 =?utf-8?B?MW8yalljQWdoMnRIdkh1ZkQ4SHJCclZvSEJHcVFsd3gxREUrYjQ3bGtvY3NG?=
 =?utf-8?B?VURWRVlSUHE0Y3IrS2JoeXh5OXNoamNTaGVSMEZPN3ZCYldmci93UGVvdWZG?=
 =?utf-8?B?TlNKWDhOV2J3cSs2S2ZwNkFXRmo5dlFxcm9PQVVSR21uZVVJS2ZlekhkeEY3?=
 =?utf-8?B?SWVHbm5EL2wxa2NZemJhKzN1dnU4U3VJMGlwVlNaMkRXdUxQR2VGWjdBWHVw?=
 =?utf-8?B?VmRNODBPNndiRnFLd05JbERvTDVBOC9JNitxR1V1d3BQeWVIajcrOVAzS3hU?=
 =?utf-8?B?VkMrTkhEUzJ5VWZXbUM1dy9VNmllNU5Hb3VwMExEWFc3WlBhRlZ1M2ZmR1B0?=
 =?utf-8?B?ZWZsUTlLK2FHMWw5OW93SVJTREd5R0UvU2F5SkthbVRLVTh2dmFTQXltY1ZI?=
 =?utf-8?B?NEJjRUNMekU3LzAyTS93TFhjNXd2L0diTXJBZGZYRDBpQkFORmtlcFRJZWho?=
 =?utf-8?B?K1pqMloxVkpyUDB2RFNkWUFMdWlLQ1I3QnVuSUQ2QThrdmFvUjJKTGpsQkxs?=
 =?utf-8?B?L0pFY0tYOE1pQmk5L3cvZHFVUnBlKzhCS1VBcjlsdjNRVVU0d1B6MHUzR2ZC?=
 =?utf-8?B?NmFzMVphMGhKaFlkekc4TG90d21aTnJ2Vk1zWkZvcTdzZXRuVzJQS0ZqT0lY?=
 =?utf-8?B?c2xuQ2lvUit2YXBFb1QzV1UzL3ZMZEt6elZZYk9iQ3UvWjRxQmtScGVRLzgz?=
 =?utf-8?B?eWRJQnpaZHZwVlFFbXh2WFJjREs3ODh0a1FTaWh3TVg2WEsxUDZhWUUxNTNG?=
 =?utf-8?B?S294SDd0TnNTandPYkNaQ0lEM2R6VmJQQWx3QytTVWVoNVlyS1ZUd2tGNGZU?=
 =?utf-8?B?Tkx4VDkvZEhPWUlVelh4K252b1d2djBxay9vUDRjSFlZMkhvTjloNm96NTZj?=
 =?utf-8?B?NDNiME5BYXNKaHNEcUxsMWF6ZkpRUW01UTZqcFhabnVvRlZNbDQyelpNQ2gr?=
 =?utf-8?B?Z2RRSXkvV2t6d1hRWGlBcGwzQkFBUm1DU2J1TzRQZU5zS3FlUGNadm9IZlVt?=
 =?utf-8?Q?ciD3elye3wvQKSXZb0ldMMnv7?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 634c4bcd-212c-4c02-b4ba-08dc81cc4194
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6583.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 May 2024 23:49:05.4313 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ou4b1g6NWGrsc+XVAsz29AXofuNQghhRc6XvJ3UHUrBPFsMQPF7JZNQnHPOzmoLB5l1F/nv6fJU1H6NB976FGw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB9396
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5tojrs3r1a+fyRUKwgH3SVqrY0OKX3PIPc7hgkP4evs=;
 b=d5lbAVjwsxVq00lyETWcI6P7DgbgpkEB3AmZVI+PVz1jSVPDasHh5mikkDIxFz4fvgEVrSFeLaMRTb+tPd6i4MqO6QxLyfAWWEvytlcrIpM7WZu4pyUGM5QlNUrM8m2qTIKzG9WwWWXJioyXZu+FpoIVEHaAzQDQEdte5tJwyDQ=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amd.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=d5lbAVjw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net 6/8] ice: improve updating
 ice_{t, r}x_ring::xsk_pool
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
Cc: netdev@vger.kernel.org, michal.kubiak@intel.com, anthony.l.nguyen@intel.com,
 magnus.karlsson@intel.com, larysa.zaremba@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/29/2024 4:23 AM, Maciej Fijalkowski wrote:
> 
> xsk_buff_pool pointers that ice ring structs hold are updated via
> ndo_bpf that is executed in process context while it can be read by
> remote CPU at the same time within NAPI poll. Use synchronize_net()
> after pointer update and {READ,WRITE}_ONCE() when working with mentioned
> pointer.
> 
> Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice.h      |  6 +-
>   drivers/net/ethernet/intel/ice/ice_base.c |  4 +-
>   drivers/net/ethernet/intel/ice/ice_main.c |  2 +-
>   drivers/net/ethernet/intel/ice/ice_txrx.c |  4 +-
>   drivers/net/ethernet/intel/ice/ice_xsk.c  | 78 ++++++++++++++---------
>   drivers/net/ethernet/intel/ice/ice_xsk.h  |  4 +-
>   6 files changed, 59 insertions(+), 39 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index da8c8afebc93..701a61d791dd 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -771,12 +771,12 @@ static inline struct xsk_buff_pool *ice_get_xp_from_qid(struct ice_vsi *vsi,
>    * Returns a pointer to xsk_buff_pool structure if there is a buffer pool
>    * present, NULL otherwise.
>    */
> -static inline struct xsk_buff_pool *ice_xsk_pool(struct ice_rx_ring *ring)
> +static inline void ice_xsk_pool(struct ice_rx_ring *ring)

Since this patch is changing the logic here you mighht want to change 
the name of the function.  Instead of getting a pointer with no side 
effects it is now doing something, so a better name might be 
ice_set_xsk_pool() to reflect the resulting side effect.

sln

>   {
>          struct ice_vsi *vsi = ring->vsi;
>          u16 qid = ring->q_index;
> 
> -       return ice_get_xp_from_qid(vsi, qid);
> +       WRITE_ONCE(ring->xsk_pool, ice_get_xp_from_qid(vsi, qid));
>   }
> 
>   /**
> @@ -801,7 +801,7 @@ static inline void ice_tx_xsk_pool(struct ice_vsi *vsi, u16 qid)
>          if (!ring)
>                  return;
> 
> -       ring->xsk_pool = ice_get_xp_from_qid(vsi, qid);
> +       WRITE_ONCE(ring->xsk_pool, ice_get_xp_from_qid(vsi, qid));
>   }
> 
>   /**
> diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
> index 5d396c1a7731..f3dfce136106 100644
> --- a/drivers/net/ethernet/intel/ice/ice_base.c
> +++ b/drivers/net/ethernet/intel/ice/ice_base.c
> @@ -536,7 +536,7 @@ static int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
>                                  return err;
>                  }
> 
> -               ring->xsk_pool = ice_xsk_pool(ring);
> +               ice_xsk_pool(ring);
>                  if (ring->xsk_pool) {
>                          xdp_rxq_info_unreg(&ring->xdp_rxq);
> 
> @@ -597,7 +597,7 @@ static int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
>                          return 0;
>                  }
> 
> -               ok = ice_alloc_rx_bufs_zc(ring, num_bufs);
> +               ok = ice_alloc_rx_bufs_zc(ring, ring->xsk_pool, num_bufs);
>                  if (!ok) {
>                          u16 pf_q = ring->vsi->rxq_map[ring->q_index];
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 1b61ca3a6eb6..15a6805ac2a1 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -2946,7 +2946,7 @@ static void ice_vsi_rx_napi_schedule(struct ice_vsi *vsi)
>          ice_for_each_rxq(vsi, i) {
>                  struct ice_rx_ring *rx_ring = vsi->rx_rings[i];
> 
> -               if (rx_ring->xsk_pool)
> +               if (READ_ONCE(rx_ring->xsk_pool))
>                          napi_schedule(&rx_ring->q_vector->napi);
>          }
>   }
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
> index 8bb743f78fcb..f4b2b1bca234 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx.c
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
> @@ -1523,7 +1523,7 @@ int ice_napi_poll(struct napi_struct *napi, int budget)
>          ice_for_each_tx_ring(tx_ring, q_vector->tx) {
>                  bool wd;
> 
> -               if (tx_ring->xsk_pool)
> +               if (READ_ONCE(tx_ring->xsk_pool))
>                          wd = ice_xmit_zc(tx_ring);
>                  else if (ice_ring_is_xdp(tx_ring))
>                          wd = true;
> @@ -1556,7 +1556,7 @@ int ice_napi_poll(struct napi_struct *napi, int budget)
>                   * comparison in the irq context instead of many inside the
>                   * ice_clean_rx_irq function and makes the codebase cleaner.
>                   */
> -               cleaned = rx_ring->xsk_pool ?
> +               cleaned = READ_ONCE(rx_ring->xsk_pool) ?
>                            ice_clean_rx_irq_zc(rx_ring, budget_per_ring) :
>                            ice_clean_rx_irq(rx_ring, budget_per_ring);
>                  work_done += cleaned;
> diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
> index 8c5006f37310..693f0e3a37ce 100644
> --- a/drivers/net/ethernet/intel/ice/ice_xsk.c
> +++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
> @@ -250,6 +250,8 @@ static int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx)
>          ice_qvec_toggle_napi(vsi, q_vector, true);
>          ice_qvec_ena_irq(vsi, q_vector);
> 
> +       /* make sure NAPI sees updated ice_{t,x}_ring::xsk_pool */
> +       synchronize_net();
>          netif_tx_start_queue(netdev_get_tx_queue(vsi->netdev, q_idx));
>          netif_carrier_on(vsi->netdev);
>          clear_bit(ICE_CFG_BUSY, vsi->state);
> @@ -461,6 +463,7 @@ static u16 ice_fill_rx_descs(struct xsk_buff_pool *pool, struct xdp_buff **xdp,
>   /**
>    * __ice_alloc_rx_bufs_zc - allocate a number of Rx buffers
>    * @rx_ring: Rx ring
> + * @xsk_pool: XSK buffer pool to pick buffers to be filled by HW
>    * @count: The number of buffers to allocate
>    *
>    * Place the @count of descriptors onto Rx ring. Handle the ring wrap
> @@ -469,7 +472,8 @@ static u16 ice_fill_rx_descs(struct xsk_buff_pool *pool, struct xdp_buff **xdp,
>    *
>    * Returns true if all allocations were successful, false if any fail.
>    */
> -static bool __ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
> +static bool __ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring,
> +                                  struct xsk_buff_pool *xsk_pool, u16 count)
>   {
>          u32 nb_buffs_extra = 0, nb_buffs = 0;
>          union ice_32b_rx_flex_desc *rx_desc;
> @@ -481,8 +485,7 @@ static bool __ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
>          xdp = ice_xdp_buf(rx_ring, ntu);
> 
>          if (ntu + count >= rx_ring->count) {
> -               nb_buffs_extra = ice_fill_rx_descs(rx_ring->xsk_pool, xdp,
> -                                                  rx_desc,
> +               nb_buffs_extra = ice_fill_rx_descs(xsk_pool, xdp, rx_desc,
>                                                     rx_ring->count - ntu);
>                  if (nb_buffs_extra != rx_ring->count - ntu) {
>                          ntu += nb_buffs_extra;
> @@ -495,7 +498,7 @@ static bool __ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
>                  ice_release_rx_desc(rx_ring, 0);
>          }
> 
> -       nb_buffs = ice_fill_rx_descs(rx_ring->xsk_pool, xdp, rx_desc, count);
> +       nb_buffs = ice_fill_rx_descs(xsk_pool, xdp, rx_desc, count);
> 
>          ntu += nb_buffs;
>          if (ntu == rx_ring->count)
> @@ -511,6 +514,7 @@ static bool __ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
>   /**
>    * ice_alloc_rx_bufs_zc - allocate a number of Rx buffers
>    * @rx_ring: Rx ring
> + * @xsk_pool: XSK buffer pool to pick buffers to be filled by HW
>    * @count: The number of buffers to allocate
>    *
>    * Wrapper for internal allocation routine; figure out how many tail
> @@ -518,7 +522,8 @@ static bool __ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
>    *
>    * Returns true if all calls to internal alloc routine succeeded
>    */
> -bool ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
> +bool ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring,
> +                         struct xsk_buff_pool *xsk_pool, u16 count)
>   {
>          u16 rx_thresh = ICE_RING_QUARTER(rx_ring);
>          u16 leftover, i, tail_bumps;
> @@ -527,9 +532,9 @@ bool ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
>          leftover = count - (tail_bumps * rx_thresh);
> 
>          for (i = 0; i < tail_bumps; i++)
> -               if (!__ice_alloc_rx_bufs_zc(rx_ring, rx_thresh))
> +               if (!__ice_alloc_rx_bufs_zc(rx_ring, xsk_pool, rx_thresh))
>                          return false;
> -       return __ice_alloc_rx_bufs_zc(rx_ring, leftover);
> +       return __ice_alloc_rx_bufs_zc(rx_ring, xsk_pool, leftover);
>   }
> 
>   /**
> @@ -650,7 +655,7 @@ static u32 ice_clean_xdp_irq_zc(struct ice_tx_ring *xdp_ring)
>          if (xdp_ring->next_to_clean >= cnt)
>                  xdp_ring->next_to_clean -= cnt;
>          if (xsk_frames)
> -               xsk_tx_completed(xdp_ring->xsk_pool, xsk_frames);
> +               xsk_tx_completed(READ_ONCE(xdp_ring->xsk_pool), xsk_frames);
> 
>          return completed_frames;
>   }
> @@ -702,7 +707,8 @@ static int ice_xmit_xdp_tx_zc(struct xdp_buff *xdp,
>                  dma_addr_t dma;
> 
>                  dma = xsk_buff_xdp_get_dma(xdp);
> -               xsk_buff_raw_dma_sync_for_device(xdp_ring->xsk_pool, dma, size);
> +               xsk_buff_raw_dma_sync_for_device(READ_ONCE(xdp_ring->xsk_pool),
> +                                                dma, size);
> 
>                  tx_buf->xdp = xdp;
>                  tx_buf->type = ICE_TX_BUF_XSK_TX;
> @@ -760,7 +766,8 @@ ice_run_xdp_zc(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
>                  err = xdp_do_redirect(rx_ring->netdev, xdp, xdp_prog);
>                  if (!err)
>                          return ICE_XDP_REDIR;
> -               if (xsk_uses_need_wakeup(rx_ring->xsk_pool) && err == -ENOBUFS)
> +               if (xsk_uses_need_wakeup(READ_ONCE(rx_ring->xsk_pool)) &&
> +                   err == -ENOBUFS)
>                          result = ICE_XDP_EXIT;
>                  else
>                          result = ICE_XDP_CONSUMED;
> @@ -829,8 +836,8 @@ ice_add_xsk_frag(struct ice_rx_ring *rx_ring, struct xdp_buff *first,
>    */
>   int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring, int budget)
>   {
> +       struct xsk_buff_pool *xsk_pool = READ_ONCE(rx_ring->xsk_pool);
>          unsigned int total_rx_bytes = 0, total_rx_packets = 0;
> -       struct xsk_buff_pool *xsk_pool = rx_ring->xsk_pool;
>          u32 ntc = rx_ring->next_to_clean;
>          u32 ntu = rx_ring->next_to_use;
>          struct xdp_buff *first = NULL;
> @@ -942,7 +949,8 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring, int budget)
>          rx_ring->next_to_clean = ntc;
>          entries_to_alloc = ICE_RX_DESC_UNUSED(rx_ring);
>          if (entries_to_alloc > ICE_RING_QUARTER(rx_ring))
> -               failure |= !ice_alloc_rx_bufs_zc(rx_ring, entries_to_alloc);
> +               failure |= !ice_alloc_rx_bufs_zc(rx_ring, xsk_pool,
> +                                                entries_to_alloc);
> 
>          ice_finalize_xdp_rx(xdp_ring, xdp_xmit, 0);
>          ice_update_rx_ring_stats(rx_ring, total_rx_packets, total_rx_bytes);
> @@ -965,17 +973,19 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring, int budget)
>   /**
>    * ice_xmit_pkt - produce a single HW Tx descriptor out of AF_XDP descriptor
>    * @xdp_ring: XDP ring to produce the HW Tx descriptor on
> + * @xsk_pool: XSK buffer pool to pick buffers to be consumed by HW
>    * @desc: AF_XDP descriptor to pull the DMA address and length from
>    * @total_bytes: bytes accumulator that will be used for stats update
>    */
> -static void ice_xmit_pkt(struct ice_tx_ring *xdp_ring, struct xdp_desc *desc,
> +static void ice_xmit_pkt(struct ice_tx_ring *xdp_ring,
> +                        struct xsk_buff_pool *xsk_pool, struct xdp_desc *desc,
>                           unsigned int *total_bytes)
>   {
>          struct ice_tx_desc *tx_desc;
>          dma_addr_t dma;
> 
> -       dma = xsk_buff_raw_get_dma(xdp_ring->xsk_pool, desc->addr);
> -       xsk_buff_raw_dma_sync_for_device(xdp_ring->xsk_pool, dma, desc->len);
> +       dma = xsk_buff_raw_get_dma(xsk_pool, desc->addr);
> +       xsk_buff_raw_dma_sync_for_device(xsk_pool, dma, desc->len);
> 
>          tx_desc = ICE_TX_DESC(xdp_ring, xdp_ring->next_to_use++);
>          tx_desc->buf_addr = cpu_to_le64(dma);
> @@ -988,10 +998,13 @@ static void ice_xmit_pkt(struct ice_tx_ring *xdp_ring, struct xdp_desc *desc,
>   /**
>    * ice_xmit_pkt_batch - produce a batch of HW Tx descriptors out of AF_XDP descriptors
>    * @xdp_ring: XDP ring to produce the HW Tx descriptors on
> + * @xsk_pool: XSK buffer pool to pick buffers to be consumed by HW
>    * @descs: AF_XDP descriptors to pull the DMA addresses and lengths from
>    * @total_bytes: bytes accumulator that will be used for stats update
>    */
> -static void ice_xmit_pkt_batch(struct ice_tx_ring *xdp_ring, struct xdp_desc *descs,
> +static void ice_xmit_pkt_batch(struct ice_tx_ring *xdp_ring,
> +                              struct xsk_buff_pool *xsk_pool,
> +                              struct xdp_desc *descs,
>                                 unsigned int *total_bytes)
>   {
>          u16 ntu = xdp_ring->next_to_use;
> @@ -1001,8 +1014,8 @@ static void ice_xmit_pkt_batch(struct ice_tx_ring *xdp_ring, struct xdp_desc *de
>          loop_unrolled_for(i = 0; i < PKTS_PER_BATCH; i++) {
>                  dma_addr_t dma;
> 
> -               dma = xsk_buff_raw_get_dma(xdp_ring->xsk_pool, descs[i].addr);
> -               xsk_buff_raw_dma_sync_for_device(xdp_ring->xsk_pool, dma, descs[i].len);
> +               dma = xsk_buff_raw_get_dma(xsk_pool, descs[i].addr);
> +               xsk_buff_raw_dma_sync_for_device(xsk_pool, dma, descs[i].len);
> 
>                  tx_desc = ICE_TX_DESC(xdp_ring, ntu++);
>                  tx_desc->buf_addr = cpu_to_le64(dma);
> @@ -1018,21 +1031,24 @@ static void ice_xmit_pkt_batch(struct ice_tx_ring *xdp_ring, struct xdp_desc *de
>   /**
>    * ice_fill_tx_hw_ring - produce the number of Tx descriptors onto ring
>    * @xdp_ring: XDP ring to produce the HW Tx descriptors on
> + * @xsk_pool: XSK buffer pool to pick buffers to be consumed by HW
>    * @descs: AF_XDP descriptors to pull the DMA addresses and lengths from
>    * @nb_pkts: count of packets to be send
>    * @total_bytes: bytes accumulator that will be used for stats update
>    */
> -static void ice_fill_tx_hw_ring(struct ice_tx_ring *xdp_ring, struct xdp_desc *descs,
> -                               u32 nb_pkts, unsigned int *total_bytes)
> +static void ice_fill_tx_hw_ring(struct ice_tx_ring *xdp_ring,
> +                               struct xsk_buff_pool *xsk_pool,
> +                               struct xdp_desc *descs, u32 nb_pkts,
> +                               unsigned int *total_bytes)
>   {
>          u32 batched, leftover, i;
> 
>          batched = ALIGN_DOWN(nb_pkts, PKTS_PER_BATCH);
>          leftover = nb_pkts & (PKTS_PER_BATCH - 1);
>          for (i = 0; i < batched; i += PKTS_PER_BATCH)
> -               ice_xmit_pkt_batch(xdp_ring, &descs[i], total_bytes);
> +               ice_xmit_pkt_batch(xdp_ring, xsk_pool, &descs[i], total_bytes);
>          for (; i < batched + leftover; i++)
> -               ice_xmit_pkt(xdp_ring, &descs[i], total_bytes);
> +               ice_xmit_pkt(xdp_ring, xsk_pool, &descs[i], total_bytes);
>   }
> 
>   /**
> @@ -1043,7 +1059,8 @@ static void ice_fill_tx_hw_ring(struct ice_tx_ring *xdp_ring, struct xdp_desc *d
>    */
>   bool ice_xmit_zc(struct ice_tx_ring *xdp_ring)
>   {
> -       struct xdp_desc *descs = xdp_ring->xsk_pool->tx_descs;
> +       struct xsk_buff_pool *xsk_pool = READ_ONCE(xdp_ring->xsk_pool);
> +       struct xdp_desc *descs = xsk_pool->tx_descs;
>          u32 nb_pkts, nb_processed = 0;
>          unsigned int total_bytes = 0;
>          int budget;
> @@ -1057,25 +1074,26 @@ bool ice_xmit_zc(struct ice_tx_ring *xdp_ring)
>          budget = ICE_DESC_UNUSED(xdp_ring);
>          budget = min_t(u16, budget, ICE_RING_QUARTER(xdp_ring));
> 
> -       nb_pkts = xsk_tx_peek_release_desc_batch(xdp_ring->xsk_pool, budget);
> +       nb_pkts = xsk_tx_peek_release_desc_batch(xsk_pool, budget);
>          if (!nb_pkts)
>                  return true;
> 
>          if (xdp_ring->next_to_use + nb_pkts >= xdp_ring->count) {
>                  nb_processed = xdp_ring->count - xdp_ring->next_to_use;
> -               ice_fill_tx_hw_ring(xdp_ring, descs, nb_processed, &total_bytes);
> +               ice_fill_tx_hw_ring(xdp_ring, xsk_pool, descs, nb_processed,
> +                                   &total_bytes);
>                  xdp_ring->next_to_use = 0;
>          }
> 
> -       ice_fill_tx_hw_ring(xdp_ring, &descs[nb_processed], nb_pkts - nb_processed,
> -                           &total_bytes);
> +       ice_fill_tx_hw_ring(xdp_ring, xsk_pool, &descs[nb_processed],
> +                           nb_pkts - nb_processed, &total_bytes);
> 
>          ice_set_rs_bit(xdp_ring);
>          ice_xdp_ring_update_tail(xdp_ring);
>          ice_update_tx_ring_stats(xdp_ring, nb_pkts, total_bytes);
> 
> -       if (xsk_uses_need_wakeup(xdp_ring->xsk_pool))
> -               xsk_set_tx_need_wakeup(xdp_ring->xsk_pool);
> +       if (xsk_uses_need_wakeup(xsk_pool))
> +               xsk_set_tx_need_wakeup(xsk_pool);
> 
>          return nb_pkts < budget;
>   }
> @@ -1108,7 +1126,7 @@ ice_xsk_wakeup(struct net_device *netdev, u32 queue_id,
> 
>          ring = vsi->rx_rings[queue_id]->xdp_ring;
> 
> -       if (!ring->xsk_pool)
> +       if (!READ_ONCE(ring->xsk_pool))
>                  return -EINVAL;
> 
>          /* The idea here is that if NAPI is running, mark a miss, so
> diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.h b/drivers/net/ethernet/intel/ice/ice_xsk.h
> index 6fa181f080ef..4cd2d62a0836 100644
> --- a/drivers/net/ethernet/intel/ice/ice_xsk.h
> +++ b/drivers/net/ethernet/intel/ice/ice_xsk.h
> @@ -22,7 +22,8 @@ int ice_xsk_pool_setup(struct ice_vsi *vsi, struct xsk_buff_pool *pool,
>                         u16 qid);
>   int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring, int budget);
>   int ice_xsk_wakeup(struct net_device *netdev, u32 queue_id, u32 flags);
> -bool ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count);
> +bool ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring,
> +                         struct xsk_buff_pool *xsk_pool, u16 count);
>   bool ice_xsk_any_rx_ring_ena(struct ice_vsi *vsi);
>   void ice_xsk_clean_rx_ring(struct ice_rx_ring *rx_ring);
>   void ice_xsk_clean_xdp_ring(struct ice_tx_ring *xdp_ring);
> @@ -51,6 +52,7 @@ ice_clean_rx_irq_zc(struct ice_rx_ring __always_unused *rx_ring,
> 
>   static inline bool
>   ice_alloc_rx_bufs_zc(struct ice_rx_ring __always_unused *rx_ring,
> +                    struct xsk_buff_pool __always_unused *xsk_pool,
>                       u16 __always_unused count)
>   {
>          return false;
> --
> 2.34.1
> 
> 
