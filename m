Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E3BCC25857
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Oct 2025 15:17:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8872261716;
	Fri, 31 Oct 2025 14:17:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ngp3D70lc4qr; Fri, 31 Oct 2025 14:17:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F39B261489
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761920268;
	bh=YlrNojI+a0ahYnhQzy/LVskiP6qs1/8pRGLFJXkUmZ0=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mteUwEcoZu9w2+o86wDET5Qeq+qHgvAefRR5gyKdHPxfFBn1N+ZZ91xGDJVR6bqRH
	 hGGa6EDlXfjqsSkJc1G+2YCr/jmGL121Jew0WrDIf94u2AJ8XDVIhtO3LMJam8p6Y4
	 Ir7ZVzZP4OmhOSvuGOSR7LiB19n7XGrIUb64pGDrwCHjDVO57kEFwouJTipi6GA86s
	 Z9mgiqJmgRwgteeBql1TAKYKaA7b09pwvF/Y/jqNACJzgVK/B1S7f+hbkna++wbZN9
	 rXqEE4WBYR1glfjmhqFw9gsu8GHOgjjQ8XuewOFRbBmpKvKkEbvPqHBcEYQHqiR+LE
	 cfp43FAet0zAA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id F39B261489;
	Fri, 31 Oct 2025 14:17:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6D3E4160
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Oct 2025 14:17:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4A84560F8D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Oct 2025 14:17:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PGPx412AjLrm for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Oct 2025 14:17:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.165.32;
 helo=mx0a-00069f02.pphosted.com; envelope-from=alok.a.tiwari@oracle.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1498860F72
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1498860F72
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1498860F72
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Oct 2025 14:17:44 +0000 (UTC)
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59VE4FQY021566;
 Fri, 31 Oct 2025 14:17:37 GMT
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4a4xj6r1gd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 31 Oct 2025 14:17:37 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 59VD5IAn017491; Fri, 31 Oct 2025 14:17:36 GMT
Received: from sn4pr2101cu001.outbound.protection.outlook.com
 (mail-southcentralusazon11012024.outbound.protection.outlook.com
 [40.93.195.24])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 4a33y22fx8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 31 Oct 2025 14:17:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fqhyaz2DtESelX+QAMRaBNHa/HHip4kHXxnA3vKuOd8wlNI8EGYu4o9vwCaMRDS4PNjsi/rWdFyKzMSkgMwaisg3hYFXSUE3r3OxFVGf1ZXjz+h/7Z34wtui4Q/dcBAxddZ/GxCB46LIGjBtUmJobVk3Z1avAvgRSKjMuOT/agpIxIeSxtCrWsNcJDnDjLfKuAZeX7wktpe+Y3t67eldemfik05fOAL0CyQjdnRpFaSLBxwFh5tvgpHpOLaeSPPc7/Ey6HZ6jTfXpoiwUFnegY2bTvCDbYeGWwtj06kuKMWCyOojsH8SCyRKrbeDOx94jkqZGlydGFQN8kDYmCl3DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YlrNojI+a0ahYnhQzy/LVskiP6qs1/8pRGLFJXkUmZ0=;
 b=rYoMVDy8ZviHrLg6l9k+PZ3pcbYOu1emWvQY+P5ZTzjEzDJ2dl9PuQF9ZVVOoLh5vkt0FsYAkElYTwoGji46klSdkuhcpEr1WyzrMhfU1nMGjnIvQkl02zW8ucWiBbNLWMvk0zfONBiOkTEsbs/DL9ETtREVK42LlR86kRtU6zrHPhw9M7GymhPpi48Lo9HUBidAdHWbwKvVkFjNAW8hIsLHAoQYhEzwUiWzTPDZZG1yDIDqUljTfaIJOnTXpnHMqkvaBpMWX7M/503gI919uRmgb5+qcw7toYituSQwJ4+WcDlm8vJG3NC+N4RMBtelC/F+IcqG6gX6u9CTlYFEiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DS7PR10MB5328.namprd10.prod.outlook.com (2603:10b6:5:3a6::12)
 by CH3PR10MB6763.namprd10.prod.outlook.com (2603:10b6:610:147::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.13; Fri, 31 Oct
 2025 14:17:29 +0000
Received: from DS7PR10MB5328.namprd10.prod.outlook.com
 ([fe80::ea13:c6c1:9956:b29c]) by DS7PR10MB5328.namprd10.prod.outlook.com
 ([fe80::ea13:c6c1:9956:b29c%6]) with mapi id 15.20.9253.017; Fri, 31 Oct 2025
 14:17:29 +0000
Message-ID: <d10ba78f-4d39-4e53-8df3-0995b9e0b5a5@oracle.com>
Date: Fri, 31 Oct 2025 19:47:22 +0530
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>, horms@kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: alok.a.tiwarilinux@gmail.com, anthony.l.nguyen@intel.com,
 andrew+netdev@lunn.ch, kuba@kernel.org, davem@davemloft.net,
 edumazet@google.com, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 aleksander.lobakin@intel.com
References: <20251024134636.1464666-1-alok.a.tiwari@oracle.com>
 <47f8c95c-bac4-471f-8e58-9155c6e58cb5@intel.com>
Content-Language: en-US
From: ALOK TIWARI <alok.a.tiwari@oracle.com>
In-Reply-To: <47f8c95c-bac4-471f-8e58-9155c6e58cb5@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR2P281CA0084.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9b::11) To DS7PR10MB5328.namprd10.prod.outlook.com
 (2603:10b6:5:3a6::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5328:EE_|CH3PR10MB6763:EE_
X-MS-Office365-Filtering-Correlation-Id: f7072a0d-847c-4599-2f18-08de1888393a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|7416014|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?R1YwaTc0OTlrUExHTTllaUNNbWJRb2V5M2srNVhlSC9EMnk5eFcraFZ5RDha?=
 =?utf-8?B?YytYdnlneWR5VFZLNnNNbnVQVGVzWFR3aU1oQy9HcE0rdUNCY3piUkNFaStB?=
 =?utf-8?B?ZzM4emNvQVJlN1FFanU1Sks5emtFdXBCUmFpSDFoRzVRMHRaNnRMcHRwTUYw?=
 =?utf-8?B?UEo3UUZCWUlpb2N4eUc1Qyt4TTUwWDc4aXFzTEpVUUpMWTkzUVF6VjlBbDNw?=
 =?utf-8?B?WmpVSVV3dGxTaVZtRU9kUmI5N290eU93dWtCV21rT3VESk9yZGZzSkJGaHJB?=
 =?utf-8?B?dUJUTHFOTW41UDJGcER1aWhOc1hxa3NKa2pwbEpoS2hVUkpEQzVwTG55a2FK?=
 =?utf-8?B?d3JKcUJrYVNraXlNTlpJeGNzSXVrU21OekZNcytOcU56VEdTRkhDSXJKNnU4?=
 =?utf-8?B?Z2ZTa21vZkV1cTh4cnpUTmhpcmY2Y2JNNUU1a3pxQmJsN2w3a2UxUzVZSkpC?=
 =?utf-8?B?dnZlTVZwOXg3M2JKTlVTeDBXUDVybGp5ZHdyUXB2MXJOOUNDcUpCcUJRZFM0?=
 =?utf-8?B?bHRKellhdGNXMEpvMkpUUUkxc2Zrb3NEMzlrRkwxVzFYWTkrS0ZSQUJlTmN1?=
 =?utf-8?B?eElPQkpQcExyRW9aNUc2WXRTZmlGeU9oNlNiTVk2TU05R2JaS05JcUJuSysz?=
 =?utf-8?B?a2VvVGRWOUhyTkpkcnc3NGNXcjR4eGh1ZEsycVlKTk80RlpVYWYwTkdkWkY4?=
 =?utf-8?B?bjc2R3JQcVVyeXhJQjRsaS8xMEpZd1ViSDljcVlFQ1E1MW5iZ2lxTURrb3BJ?=
 =?utf-8?B?SHZKL05SY2ZiWmR2VVBaaGh2NGdFY2dCUDdUYzBXREwwZDBZV2dTay9LWU1m?=
 =?utf-8?B?WVVNYVd3OHlVcE1FeUdEV05Yd0c4ekdYNk5SVzc4YTlQQU50bmVUWGNRNitS?=
 =?utf-8?B?MUJFOEJ3NndCZTF2U0QycWhWOEdCL3J4SlJnWTlSVjByQUQ3TVYyRTdVdnFv?=
 =?utf-8?B?Tlh4ck5yeGFXZUlMWnJIWEVmdFVTTlV3R1ZPL0QxcUxQNEhhRzlYcVFJZ2dF?=
 =?utf-8?B?a3ArL1RTNjF5TmVYUmRCRTAxSWR4anorZDd6Z3dGYU1RNGw4N25TQVI4bllZ?=
 =?utf-8?B?dWlnUFJ4STl0VjJ5K3NqV25WanZPWkdaT056RS8zdTV6M212YklaeDdLVjFw?=
 =?utf-8?B?VmUwK1pPd0tNSi90TVJ0K2NKdGZMTGkwTGlsWVVTOWZZM0pQT3Z5QUVpRW1o?=
 =?utf-8?B?dWQxMVhPc1A2RTM1VVNidThDbWNUdmJrVmZFVmJZNFMwZzVhR1lMeFkydGdR?=
 =?utf-8?B?SUZkQXN5b20xUzI5SEdUMERxblBKQWJhdW5WYUhsdTVNRHJsTmRZVWtpZmFx?=
 =?utf-8?B?NW5ZN1NUNUdqOVNHdzJaNEROZktrV3c1ejJ3aGQwc3djbnhsNE1kc3dBd25o?=
 =?utf-8?B?VVFzOEtxcE5VcEFYSnRvS0NlQS9BQ2lXWDMxWVQydXcyYm5rQVlpTmlURG5D?=
 =?utf-8?B?a2xtUUlCZkkwMURqRytxb2FCd3BCbjh5V3hlczEwcWJGbC9YcjM4Q0krWUZu?=
 =?utf-8?B?R056ZUVXRlREZXAwWVpiMThNS1FDTVF6YzBkd3BMdmVuUFF6R3owQldMeGJo?=
 =?utf-8?B?SDRXRklqRDlrdllxYi9WMVpRdnE0Wi9zUmF5eHUrUUFPRkZhQkd3RVVjL1lo?=
 =?utf-8?B?ZzdKVmNybjdjbWxGK2laWEhFUFFNV0tTTHZ2NjZsREQwQXR3MEJqenY1VEx4?=
 =?utf-8?B?azl6aWNidDYrNGVGcmljSTVoVjU4RmZaMmxYbVBkNFVQT2pzc1dwN0Z1Sk0r?=
 =?utf-8?B?WnA1Q2N2cDVON3FQRUs5UGVlV1ltUzBwYWdNY3IxTDhoMXJYU3VMcS9qQ1lU?=
 =?utf-8?B?UkhBZE9zUVZVMnRRNWtKaDFvdWJHNnhlZGFNcnNDcDUxUlo0bnVtNjNSQWo3?=
 =?utf-8?B?TUNITG04UDJPS3k5MUFyZWxoLzRidGp4TG0xVlJVZk5kZHp4WGNXOEtJeEph?=
 =?utf-8?Q?yEIxZOH74dQc62q1klV+SpTCOjEc7RP1?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR10MB5328.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bGdLT2pLazM4dnUyUko3endNSXFHam9vdWtQOUptRUx3UVdqS2ovSEx5V2lY?=
 =?utf-8?B?NWU3cWZ3QVpNSGtuQ1ltQ0xhaHpQcDY2RWNNK2h3K1NrZnJCczY5QXVZTVQ3?=
 =?utf-8?B?QkxoZG1TZFY5bFhZRFFGUUEwZWd3YnZWRnI3SjlybzR5djRBODEwRHB0MGV2?=
 =?utf-8?B?RVcvTDJCb05GMVh4ZDBPL0h6QTJmMjdSME1SVW14Zi95Q3RueWREdHlmSTNJ?=
 =?utf-8?B?UktaWitOVlVzYlRlZzBqKzhqVUhaOG1tQnU4OEI4SlV2OWxPUUorVHloTWhY?=
 =?utf-8?B?aXVDUTNXQmtXWnY2NS9Ta2Y1R2prWUFpZlVtall3RmVkVVpSRjFoQkl5RHpU?=
 =?utf-8?B?U05JYlNyM2JZVUlHUFZDSWJsamFsVGF0NUs2NHQ1eFFBQklRUnJhcXFIS3Fl?=
 =?utf-8?B?Mi9YdWozak9KVkZIU09MUlhrQjVCb0VmQ2ZFMkd3YVlYaGZVNnpYa0IzYzhl?=
 =?utf-8?B?cS9mSWxPVGp0RVRyK1BKa1RmRFU5NE13VmxSNnkyQ1Q2Z0h2Z1FXNHI5dTRn?=
 =?utf-8?B?ejFiZVErNmwzYlBtMFJKZVdmQmRpTjZFNEZYbllWTHZJQkhvQmljcTh3STQ2?=
 =?utf-8?B?VDQxcTVuN0hpWHlFWGdTVDE1cnJLSHdWZFhCTEhmMUc4Sit1ZzJXcnZLU2lV?=
 =?utf-8?B?aEMxRnNpR3dxUVFnR0RXWWVGMk0zRjFQUlFOTHVLS1B6cEVrN0I1TnFQbXFS?=
 =?utf-8?B?YVpDRmU5cFdUcXRrYjlyUFhCUm80RlR5V2hET3RtZzRIbTJSRDZKLzlqWUl4?=
 =?utf-8?B?aHNXRXluNUZuM0VvSE9EYkQrN0ZJRUNaWDBhOG5NSjlCa2ZBUTQyVy9uZkNS?=
 =?utf-8?B?MU1sbFJ4Q2FDMnRCRFc4alR6NUlxSG9vUUEvSkErZjdONno1SXgyTmdmZHNB?=
 =?utf-8?B?YjkrYm41YUpjdFI2bU5saUc0WXBVRGxUcWR1VjFaaGpVRk5XNHcvSnMzaCtH?=
 =?utf-8?B?bWIwK0NLRTNqczJWZDIwa2ttS29jWnpWUGRsMEpoOG55NjBlUEZSbkJET1Q5?=
 =?utf-8?B?bEtIUDU3aTlDQTNxNkZzZ3cyUjFMYm02eXFhenRJSVl6cmg2SEdySVFTTUJZ?=
 =?utf-8?B?MDVGMTBSc0Y5eFBtQlZwTnpyVFIxU0kva0YyUW9qZHROUXFNNm5EdVJHRzZY?=
 =?utf-8?B?QWFtQ3o0L0lUQ3NLNzJhNkh1U0gwSHEzWW4rdEFxQmUzejFKRTNzdm1PMDlm?=
 =?utf-8?B?SnM3bEpqRk1WSHEvSHdMQVl5NE1iODRwZGRjZGhnNXRvcjNRN0ZWWU5FQmZw?=
 =?utf-8?B?bnBYU3c4WDJyMWZwUEYwK2NGYmZmUkNjYVhTeW1CWGJRSHNwMThBOGpsZmZz?=
 =?utf-8?B?eHdqbGdQWWllVlJRR2dFRm54Q0d4aWdzQTlRQU5OZjdJWE9FTmxBYjlzQ21l?=
 =?utf-8?B?alQ2d3Raa0lPeVRFdGpGdHB4VGlTeFpsVHZZSFJCc0hFYVFGdkdGT1NrdHVz?=
 =?utf-8?B?Mm1rRFJjK0VKWXgwWDU1NVB0VnZPd044UklkdHFmOHZJZ0J2WEN2ZGR6cDdC?=
 =?utf-8?B?UWdBVGRIcEtJbVVyZ2ZveXRna2E1VE1INkJicmRLTHJBWlluTXV4L29uaWMr?=
 =?utf-8?B?UC85MHFaNmxoSzExSUg0WTlON0tqUHdULzEzeWFDbUYxayt4Yk51M1puN3R2?=
 =?utf-8?B?SVZhZFBPNVVhWGduRUJ3ZGpHMmdwS3d4MU4vY1dCWERtN1F5KzQ0VWRHQ0ll?=
 =?utf-8?B?SXRzR2JYU1lWN2lha0MvUXJDdDdiVGJrcmhDblFkL05ZSW1adXpUOEhNNGlY?=
 =?utf-8?B?bWtsL0NlSXZuUUZ6Q0ptU0x5UDY3aGQ0SWd6V2xaY0toSkNmRkg1SDArSkdp?=
 =?utf-8?B?S3huWnBBZVREUXkzNnVnUXpKd2tTdDdxbitzZURESUt0SktiUmVFdkVBWTZr?=
 =?utf-8?B?eWR3alhIamJKR2RoRU4vVnRqWERYUjVOWTlESXFVVXhtbVo4NzY5K1ZHYmRl?=
 =?utf-8?B?Ynd3YUJ5b3J2cTYvMEU5WnZWWk1xNG0rNmp5d2JBVDd6Z3I2bHNGckNMTXQ2?=
 =?utf-8?B?RlkrTzE0NjdSWCtDNWcxaHhOTGI2dW5ZTUxBRmJ1eGxWa3lBMkdVWXBSOXVU?=
 =?utf-8?B?c0hnYTQ1WTZiVFM4UEh3TTZJV1lPemZVVDkvSGFuZTlSVG14RG9QOVBsbjAw?=
 =?utf-8?B?T1VVVWhNMitXNmNXSitGWXViZWpEQW1ZL1hGSFgyYmRKN0pycis5dWhRdkFu?=
 =?utf-8?B?QkE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 6YPVeU9l/tpsoJtuci6WivmiUpsrqPsD6z3SAPe291rm4v4P1cPeOO041fgcEDEsIK8I4KnFlr+Pz3XjGfL43FwBDkwaJz0PvCIDYnAsoApitEfh4+a4P0mChkxrD2krSkaWW8m5Dzv5fMMefE3uhmwJwpeqjPgYvSZ2iHFPomNx8fqfhFPt6H7bd1vIuNpSxU6nrzCMWmIsvh7T5uoinIduoVEa8TNbkjdW4v+6IO5Nba93/96yyMWK5yNj7b/K8zS7HSqrA+lMr5Q/27L+P5RPsGB2fnaK/wLYUBQUQtC/v9HE96O9eWbT9eCL4jaC+V1s7BR39oLf508ayv5VVpQOsuTLyiSOHux6mieLrnDcGzuJjTQASMrfzOpA45vujoYpAPSsrWb4+W/Jq2+wBKPQds42wD0kYFQtpj6WorBM176KqfIjRmN+SXUZZIKH1+/e7Le0RzzjeMcc/qXbmtcgeU+rK+gNRV3DY3Bu99vNUnsWdzMN/RWqhL5wY22RKTrliCY5UKBxKXaGvK71hgV1vxoWkpHnuKrlz7KoOnauhmB9B6jFeNEaXXikHEZi51x3v78lQImikCRRrG1Q+1nbNOUmWNtw2bvCgAXfTcQ=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f7072a0d-847c-4599-2f18-08de1888393a
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5328.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Oct 2025 14:17:29.0281 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Fp/FAsnEfOa69MkLHvDXb8mrj8YeKDwU0DGwCc3Thu3L8lVhaOOsmbat4Nd7Pdw57uDYyQeVV8wnAqo+MU+wH5qaiA0X9Ad3APsB0kGJdGs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR10MB6763
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-31_04,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 malwarescore=0 mlxscore=0
 adultscore=0 mlxlogscore=999 suspectscore=0 spamscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2510240000
 definitions=main-2510310128
X-Proofpoint-ORIG-GUID: i4CAliDyKAzBc-Kz53-5JKDKGxHNBvh0
X-Authority-Analysis: v=2.4 cv=GY0aXAXL c=1 sm=1 tr=0 ts=6904c501 cx=c_pps
 a=OOZaFjgC48PWsiFpTAqLcw==:117 a=OOZaFjgC48PWsiFpTAqLcw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=x6icFKpwvdMA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=DiI1g35X_2ygBbSngLsA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=cPQSjfK2_nFv0Q5t_7PE:22
X-Proofpoint-GUID: i4CAliDyKAzBc-Kz53-5JKDKGxHNBvh0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMxMDEyNyBTYWx0ZWRfX+oIu56O+drNz
 t7QCqLqSysA5WdBvFkDdJZlz0UOJU/WiZBw9E6mEqW63U1q8qpjHUfPksb2xTCOVGXMCRKN5xAl
 R3RN0mY2JSNA4DMVia0BlYUq/W0X+kxNR5CgT6H6qb2xSnp8SFirMoY0Xot/wOoZNyhpgsCxDbj
 lUw5Sk9bKBPbmqqQc7/k2Q0wuTbZoRHXVRBG7iYmZJnT02tUNdI1O4MewfbzR1Xd/I7APCwX5ml
 UL/22EU5nSFtiGhkGU/CIpTXm0hv/wcmPS77Idl2M1UQyBTWU0wGwcC/QL6HPyKUMC3R2dkVJLn
 zvndxJSHB0M36avsdlfjiEvLMa8uuNj3Y7Xjfql4x2MByT01fGFJoUwF6VIE1cIco6xEVdVm7F/
 8LwC7wmKYmsYcwURbAJSiP9wu5UzpA==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2025-04-25; bh=YlrNojI+a0ahYnhQzy/LVskiP6qs1/8pRGLFJXkUmZ0=; b=
 FcoEmZgmgrngDrOei35FfTZT5KvY6ef2QpH4skoiUVaVzLXxb91UZEZdIW6GzKSM
 NDzRs5/3Mgh9M3FWwPTxHdJSeXvEcm8YTdNUqK6xCgh84pQ552/ha4j058OgHb+p
 3kbZb+XPcpHiYdCYV7yMVmCpqovPtlyWW37hSTnYhyiazqA1SFEF9tRZdbTLK8HJ
 HUZc89jdS1eKS39OmJa15NgfCTIj5Aro77D0lIjveIzkBw5AbK5ibTeOl06vp7NW
 qHcFKGou6I6QvzIl/UjIvvbbfd7YX5LJIiYrMNn6vrzfg40L7cCi2HsYzsDj3k4O
 EVozL8N7pBNZMt06M7tZrg==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YlrNojI+a0ahYnhQzy/LVskiP6qs1/8pRGLFJXkUmZ0=;
 b=dJ2AxE7zxGVZuXyiXjPzp8IM4U1lBlqhkHsqKqfyD+2JxSGyB/XxLhGQxXNLwMifKZ6BDPl16mYTVKbjZ++kflDkyAWkiT3Xs6V12a+odRu0TxsOEVwnKA7Tv79MjGMH3+Mmd/PXv76DnNS6dFbFM86gcfK0v7JAHTySH92oOEM=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=oracle.com header.i=@oracle.com
 header.a=rsa-sha256 header.s=corp-2025-04-25 header.b=FcoEmZgm; 
 dkim=pass (1024-bit key,
 unprotected) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com
 header.a=rsa-sha256 header.s=selector2-oracle-onmicrosoft-com
 header.b=dJ2AxE7z
Subject: Re: [Intel-wired-lan] [External] : Re: [PATCH net-next] iavf: fix
 incorrect warning message in iavf_del_vlans()
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



On 10/27/2025 2:15 PM, Przemek Kitszel wrote:
>> diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/ 
>> drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
>> index 34a422a4a29c..6ad91db027d3 100644
>> --- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
>> +++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
>> @@ -987,7 +987,7 @@ void iavf_del_vlans(struct iavf_adapter *adapter)
>>           len = virtchnl_struct_size(vvfl_v2, filters, count);
>>           if (len > IAVF_MAX_AQ_BUF_SIZE) {
>> -            dev_warn(&adapter->pdev->dev, "Too many add VLAN changes 
>> in one request\n");
>> +            dev_warn(&adapter->pdev->dev, "Too many delete VLAN 
>> changes in one request\n");
>>               while (len > IAVF_MAX_AQ_BUF_SIZE)
>>                   len = virtchnl_struct_size(vvfl_v2, filters,
>>                                  --count);
> 
> As Simon said this is a clear copy-paste error.
> 
> But the message itself is not great:
> there is too many VLAN DEL requests to fit into 4k of memory, so what?
> driver will just split into multiple virtchnl messages (with the "loop"
> for splitting is put multiple call layers above from iavf_del_vlans()),
> and everything is expected to work fine (despite the fact that this is
> likely not tested frequently ;))
> 
> I would suggest to also lover the log message level to info, and
> rephrase as "Too many VLAN delete changes requested, splitting into 
> multiple messages to PF",
> or similar. And the same for ADD requests, the same for v1 message
> (so 4 cases total).
> 
> with that there will be no eyebrow raised for the dmesg reader

I will send a new patch for this, covering both ADD and DELETE cases
using dev_info.

Thanks,
Alok
