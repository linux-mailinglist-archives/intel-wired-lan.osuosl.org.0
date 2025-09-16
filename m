Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F06EB59749
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Sep 2025 15:18:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A37B581CC3;
	Tue, 16 Sep 2025 13:18:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qJiLw9ItMMLf; Tue, 16 Sep 2025 13:18:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 273EF81CA0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758028686;
	bh=lrwWOrtyp0sJ1aiuPwzwwer3IwAhEaNl90HNoD/Kgb4=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PoVMXto17VFUisc/zE+oNzWcGO/aLDkrCMIWYvJdL4x3q98HZaZS1eUt7V3893xQF
	 GvQZ7avvon+gWwQgZAXebjUQ/wvp1EmyZUkI5Nx/oERZEoyqefPQ55RoqQOtyDLFsQ
	 koXlW6LsyxUV/Rr4Vhj8OgPMSnPbbiHoi9SN217vbbb5g8etS/RsQNXiAa6kvrPt5u
	 OUeIfaC7D7xuK6NYL51mfxLoWVuR1Y/38PTKHfoFgkM0P8NSliPwAvMiIR4zHjjari
	 SWvq8A6Cv6iRnR8d/LYRYHmVQsiZRAHC+COtDGcIeKkATpjY6aFkoezGuweEKABrgR
	 2bMFZ5YouVYjQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 273EF81CA0;
	Tue, 16 Sep 2025 13:18:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id E380012D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 13:18:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C97C040D16
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 13:18:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iaAPpuTQG42J for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Sep 2025 13:18:04 +0000 (UTC)
X-Greylist: delayed 6888 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 16 Sep 2025 13:18:03 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C24CE40AE7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C24CE40AE7
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.165.32;
 helo=mx0a-00069f02.pphosted.com; envelope-from=alok.a.tiwari@oracle.com;
 receiver=<UNKNOWN> 
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C24CE40AE7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 13:18:03 +0000 (UTC)
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58G1frdf001926;
 Tue, 16 Sep 2025 11:22:59 GMT
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 49515v4b9f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 16 Sep 2025 11:22:59 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 58G9W94f028761; Tue, 16 Sep 2025 11:22:58 GMT
Received: from ch5pr02cu005.outbound.protection.outlook.com
 (mail-northcentralusazon11012023.outbound.protection.outlook.com
 [40.107.200.23])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 494y2c7wcm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 16 Sep 2025 11:22:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JkKWJAGaehgIqGUsE8Z3s7uUcOYvk/yfZfBtGSga7B9ra3f4PpbgYxRfx7mua2eTP0ah6NN90yVJ5RpASEXKl7Lk0yi6bfyXGk6hKQBQ8xXzQ0kZ4FHgV1qt/kXTP7QZyy02ZtXZISRm07mfbQl4m8eiibRn+BHllKysJuy8Gg8mJSPgxd7jTtnHlJ+sRxQL5nVhw79vj8GTPW4GtoCaqRlG/wsOr7LmOJZ8ZhQXIZaojA6wBccTJ+0ZLxF+dOqs0mE8HGKuiG2RDyZ0F77WvdT6yWTgr1py/t/EHV/LMKIOAaygG+VMtBwZ1Lj85Kv/IELy4S2TX/5l2/XPptML+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lrwWOrtyp0sJ1aiuPwzwwer3IwAhEaNl90HNoD/Kgb4=;
 b=wOZ+yP9DctzB/mhKgH1DlGQ82eeMSkRhYdm8PiR3m66QljbnI0f9F1zAPvt2GjjRaQRct7TtGbjui8xuBTIEitjjRxxVB02mUCbNw3gzje+H/wu6hk046J3Hv/8i0HrqN275uT7fYz1Zq7g6TCuvD1ot3fbukeP7gqOs6oRc5gED0HSkd6lGp2picKVjbwhfaRIE4i5H1MEd6RCbW2tyY9MePJrQUgRnspg9lHSxDhrc4gvo3f10v0VGaObmAxC3+616ji1KTHVKeLRZa9pG+o3jCeOAO1hGTIQmXUtPqG1iGHTrEfb+0g+Gn5BFFmfKlmJ71kdCGidGYUVLfqt1PQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DS7PR10MB5328.namprd10.prod.outlook.com (2603:10b6:5:3a6::12)
 by CO1PR10MB4451.namprd10.prod.outlook.com (2603:10b6:303:96::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.22; Tue, 16 Sep
 2025 11:22:55 +0000
Received: from DS7PR10MB5328.namprd10.prod.outlook.com
 ([fe80::ea13:c6c1:9956:b29c]) by DS7PR10MB5328.namprd10.prod.outlook.com
 ([fe80::ea13:c6c1:9956:b29c%6]) with mapi id 15.20.9115.020; Tue, 16 Sep 2025
 11:22:55 +0000
Message-ID: <5278264c-90d4-499c-a918-c217ad7d74b8@oracle.com>
Date: Tue, 16 Sep 2025 16:52:38 +0530
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>,
 intel-wired-lan@lists.osuosl.org
Cc: Michal Kubiak <michal.kubiak@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Simon Horman <horms@kernel.org>,
 nxne.cnse.osdt.itp.upstreaming@intel.com, bpf@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250911162233.1238034-1-aleksander.lobakin@intel.com>
 <20250911162233.1238034-2-aleksander.lobakin@intel.com>
Content-Language: en-US
From: ALOK TIWARI <alok.a.tiwari@oracle.com>
In-Reply-To: <20250911162233.1238034-2-aleksander.lobakin@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR4P281CA0390.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f7::15) To DS7PR10MB5328.namprd10.prod.outlook.com
 (2603:10b6:5:3a6::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5328:EE_|CO1PR10MB4451:EE_
X-MS-Office365-Filtering-Correlation-Id: f505df7c-3167-403e-4771-08ddf51361c2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TmtNTXkrWDBYNGdieGZnaTZ0M3E0MW9zYWlMbTQ0WmtnVG9YWCtmenN3L2U2?=
 =?utf-8?B?QTdobHFLQkJGM3JqdGZ2YWliWXpoSC9CbEpZZVpaRUlWMGgwMkJUcDNON1Rv?=
 =?utf-8?B?UXM3LytKTUhtbmozV3FIKzVYT2VVM0hadHpQeHNyK01EVTBRQ0d1eExpK05Y?=
 =?utf-8?B?TWZUSFdPRWw0TmFtNTYvVG5xY3BDb3EyZ3B5WWRFbVhtRzBaVis4SHd1QkU2?=
 =?utf-8?B?ak9FaW96cUVrRDd4S2FJMlcvQy9adnk3OS9yUk1EeG1PbkhkZEhwV2VabXQz?=
 =?utf-8?B?a0o2ZzBqQ1pVazRXd0xsczJsSklXbFdQKzRQTnF6MUw1MkZGN0F0Sk4ra3NL?=
 =?utf-8?B?VEdlWjNBb0RqeFVrUzFzSkRwNUM0QThPeG1kNmdHY0Rzb01XRnlyNGNWQUtI?=
 =?utf-8?B?OWJuVTBUZFJOYVVWY0tVUDhCeUhOa3Bvb0tnQTNzSlJZY1ZkVHg3SS83VnpF?=
 =?utf-8?B?aHd0eG5seGkvb0VQZ2ltbW9wU2dSM3p1QXd2TUlHckZMOFM4TDNZWTNac2lz?=
 =?utf-8?B?TmtuZTRMLzF4bjVFR05oMGJoSXRiajYwOTFmR2xJM1ZqU1pvUFVuWHJSRDRz?=
 =?utf-8?B?RERPbHRSRzlSL3c5N3l0eElJd2FudktBTWN0L3lJSmVMQUU3VzlnMWxMU3VZ?=
 =?utf-8?B?RzZvMGtXKzZFZFZOc3JOeC8zajZ0cW5XTWlPRmJLVSs2Y3ppeWlxQk03VzRY?=
 =?utf-8?B?UHErNDA2MEFlQnRlVGh3M2hFZmRzV1Y4SHoxeDNpU0ZJRXlYWTJlYzJuajcv?=
 =?utf-8?B?UjlITkIzeGRwZDhrR0VoVUlQSXh5NGIvVFFHTlV4NlRYaVordkE2RHRjdGhJ?=
 =?utf-8?B?UnY0UDViUVFVNjQybm5DOGRGSnJvdFM1Q1BpdEpWKzByUklPMkZ4ZndLazJn?=
 =?utf-8?B?dkN6NTdCZzJxNGtBUWE3ZmlldnlBajJPMUNuS0Rnems2Y05MV3hqb1k5dDNr?=
 =?utf-8?B?Z3ZPWlpBUGFTbVJyTG9LMGV6MEV5bkVqOU5UbXFEVlpsWHg3YkVIcUF0RFNU?=
 =?utf-8?B?QkdjbUswaVBpa250WXNtMHo5SnNJVE8vTy9PdzZGNi9zL1Y5a01wUGhtMDMz?=
 =?utf-8?B?VjNJYkZwQldUU3ZLUzdPbGx2QVJ0WmFPcUNaay9aZFR3algxaEM0c3Nnb1Rx?=
 =?utf-8?B?SHFmcDNwNFBWRnFyTWtDbGlQWDV5UWZUV3BMOThrOE15ZjJ0YmRXa3QxSk1U?=
 =?utf-8?B?KzJJQVlzYkxWa0poNm8wMjdLR3grMnRWcFhNaElvNC9nY0phUUpJWlZBMWo2?=
 =?utf-8?B?N1FYVC8rcWErczdZT3BBRFJwQlcwMVlNbHRPNUdYSkVtTTJHZGRXWkpycnlm?=
 =?utf-8?B?Slo0WlZUVlBtRlpsdXpiZlFRdmp1NUNac2owZXVwTVpjQU5mbjMyMHZiTTNv?=
 =?utf-8?B?Vko0UFA2cTh2SXZYemNNcnBmSk9uWmhLWXNCaTRwVWxwUUluZ3ptcWlZdTlw?=
 =?utf-8?B?WFhFdDAvZWZJUk5kSks3VWdERUtTQm1UNGlMdkhkTG9CTW9JRTJwaGgzNGZ5?=
 =?utf-8?B?Zlo5cnpwWEV1QWZJU1hSODFzd3Z0cnRKbW1TMHdKa0lPMk9vS21XTlI1YUVt?=
 =?utf-8?B?ZnBqcDlvRXFjSEl1SDcrVVRZQ1l2WHJweFBVQ013RGxZeU9XL3JRZXV3eDN4?=
 =?utf-8?B?bHB6bmN3UkZVQlNnL25aNFNLNXNsamF0SEpYZC9rcGhpbFN2VHhxQmhCZGsy?=
 =?utf-8?B?ejN2eTNkMEw3YUZYZHpkZWZMT2tLWFBBWlVmNjFuNytHc01sZ21rdTUzTVFH?=
 =?utf-8?B?Tjdsc1V6U3lmcjduSnozU0V4WlNlTWFUbFB5WENpb2NyZE8wQVpzeU9iQjBo?=
 =?utf-8?B?NFJkVHJJRUhEdEtWVmdzVVMzK2ZtbmhFRlp6RUJQR2NYMGhEc0NmUkpmREJP?=
 =?utf-8?B?bndLMFFlZ0VOVUtxbEg1K3dhZHIxRkV0OCttMFBUZzV5b0hXMjZ0ZnpPcUs3?=
 =?utf-8?Q?r7ce84IYdeU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR10MB5328.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MGRDMEVnU2FYTGFEZDRlcUwzMy9XNDROcjJWVlE5S3ZCMG1paFJRUWg2MFox?=
 =?utf-8?B?STRsZEI2MGYyTmZNUGtRWnR1SUE4KytCVHpKbjMrY0NtTzc5OWlwVERnTjlH?=
 =?utf-8?B?Sk9yMVRDRzQxRU1FOUJBR0JGMFRJR3lZRHZNU3g2aUxOSXp0TWFJNFRrdHp0?=
 =?utf-8?B?TFVucGFmTE4rd0VmVUpHMEFFMjZVVldkRW5CVFdnbHUwSlFhblBFNExYRW83?=
 =?utf-8?B?RGdqL0d2eUlYVThpQjRSRkYxRlVFR0VXNkFZZWdjMVI0YnluV1llcXRNUzRJ?=
 =?utf-8?B?U01pQ0NWQ3M1NzdDYlgvZXJqRWhrTFlTVVlTNzkzWVkzWkFPeWxpNUFvMzIr?=
 =?utf-8?B?ZStmdS9uc2ZqQlNocmdCS2kyZnFOZlhVLzhyaGQvak1ZZXV6NzdoSUVMSWhj?=
 =?utf-8?B?eUtXVzFjSTBSQTQrOHpkL3JKRDYzTnFJaVR3b2hqb1o2TkVxS241RTc5NmFG?=
 =?utf-8?B?ZVlKK2QzN1gwWVFqUmp3M1E4bGVtZ3gvVk9TZzIxZFNMR3hCZTZpdDJVZklW?=
 =?utf-8?B?eCtOV1JGdjdxZUsvTk1oMFpid1NWSmp6YUpZVDNPTlhMRXNkaVdFaWJqa0dj?=
 =?utf-8?B?Y2FMM3JGNnh5a2RPQzBvVGpBcHZ6YWtlVGNTM2NYSVR5a1I1S1ZSRzRaSFlo?=
 =?utf-8?B?RFpVcmRBbVowcEE0ODY2Z09ZV1VjVWhrWXBublV3Um8vbDJ6MzRnR0RpeWNw?=
 =?utf-8?B?OFlvM3k5cEdWWHlEUCtXRzVFVU8waDdxaWdZdWdTRWJJSVZhM05CMGc0NERM?=
 =?utf-8?B?ZkZWZExvdDQ0b2owM2NvUlRjM2JrazQ3TEozREw0UlhtTjJIMWxLY1p5MzRq?=
 =?utf-8?B?NFE3TWVwNkVKamp6MTJwUktPYUdnZEd4MUs4MlcvQXFxb2pZSndWVTVUanpW?=
 =?utf-8?B?UE43TlVCeVY1clZ6UE5iOVc2NjlnWG9IUDR5dGdKcG9zYzhMUzdWaTI5L3Y0?=
 =?utf-8?B?RytWMk9JNkF4ZXZ0NFM5N1BvS2NrbSt5cUhxQVgvaE1rZlo5OExBU3ZNbVFj?=
 =?utf-8?B?MWMrYlFIdk03eVFDenpMVmsrS2RHOUQzWkpaN0g0MEZNUmVzUzJPWFFIRU9z?=
 =?utf-8?B?RzBlWEN1Y2NIaXJBbmQ2Sm8wTTRzbnd2VVczY1FxOW85aHpLTDNBejFlMU1o?=
 =?utf-8?B?TnFIT1FhMTQ5bzBrUnNZU2wwL1JUOGt6ZkQybmlZRzZQY0JQZDBWVGNYRm1r?=
 =?utf-8?B?Zlg2TEcyRHBHUy8yT0RRbmViWElTYUlQRURqTHJjMTQ3MmphVmJhM0VvbkpZ?=
 =?utf-8?B?dHloT0lyK0h5dEszL2lwYlQ0OHJ2QTV2cC9FYTRPcnBnZ2QyazZCMkNEZG50?=
 =?utf-8?B?WUtZZFZZK1ltS2h6TGFVd1EwY0l1b1J0SE1CTVMyNGVwa2sraGU1T2JJem9Z?=
 =?utf-8?B?TlFPTkVoWS9zWXIzRldUaERDaUFSRjhPS0Zxakx3blZEUmIxT0E0N21UT0ow?=
 =?utf-8?B?YUdDTTcwMEYzOGtFMHNyVFpGN0l6MWsydnlYTkR5L2R4RFhZZXpjNENzS2N4?=
 =?utf-8?B?c3UxbWdIcm9WYnVKNU1TR3l0bFZOdVp2MTZLMkkzV2d5dTNkbkdSaHVCVEw3?=
 =?utf-8?B?RGw2ektyc3ZMdktFSmloSFpjY1pWam1kRGFwaU1FZlFpMmZlNHArYlNzdzVk?=
 =?utf-8?B?TmpnelJXNmVtTlphVlFYd0hueGdxODladWZLWCtUVFhYRlhOR0NEb29aNFBp?=
 =?utf-8?B?bTBWeUQraFRRY3pZN29rMk5UenEvR1A1enVET2c5cGNYa0wwd2xvTyt2Qkly?=
 =?utf-8?B?cUhOWUhIVndZeXdwMkRPWHlCZVd3MzZzWVI1V0dJVjJrV0lsdVdmNjg5bFg4?=
 =?utf-8?B?NEgzclQrcWpaNFo1ZENMd1RuV2FZT29qbTRUa09uZjVlN1VLQUVaVDlZaXlR?=
 =?utf-8?B?eW9YZi9DdUNiamsrYmw1WW11YW5DZWhHRHU2Smg2UW55OFNVWDBkYVRBcHRu?=
 =?utf-8?B?ZHFSeUtZM1RqRGxOdng2V2tXc3dpeHhjWjkvbnYrbmJvaHk2LzFrVldkS3Nh?=
 =?utf-8?B?QlIxNFVuNkxSeTdkN2hYU0F0b3lvcGZUY0xaZmU1ZHE0dUZQVUgyWUx5ZzBU?=
 =?utf-8?B?N3RoR1hDVlplc3RSR2RzK3Job0Q1TGUxbUN4djVyOVJteHRSNjhvS0FrNm9J?=
 =?utf-8?B?MFFoTUdra3BFSGYyY2x6ajhKM2RiZEdaMW8yTlZIZjUwV05HbTlGUUV3czFz?=
 =?utf-8?B?WVE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: +xgm+eE21e3oaHi2kXePgSyc9HqtfGmdm8/d63PzWETvnK9ceJvV5HPp1cGNMOCtWhBSEa5SpQ8g/SwyEybm03ltcJAqFH+vGt0Isj5jQfgXKYDb22zWTPZn+ojJlwVRSPS5sfk0dQjFLnDe4xHuF3lpTpcDzhHMEiu4uL9kJzI3Vk9qQs0Z6Gjbi+CC1BQSldhhJz1+7t0atPuJ13s/noCPEJDNNJTGZwahrXWMZG53/zq5h43Yo4Khd8nyRmXbrKfi7GOqE4YsryWVapRtwKTAWLbGgi1LeojppoOS6UHpwk8gtboETak/xnBRfysWiAiaKayIKXwt6LGsNT58ySJGp5YWKDfQR+nMW+XowBteBqO0B7MJp/3dtFXJrnQJCB8tnqdUkzhEzsG19CR0DZDXswc4EU3sFySr2Y/IqpKefNHyNTStRT7s/4Dqn6FacGcr6awxP4fO3kwJry1PJyoctdNsWwu7nGzdry22EUpkyT7M3JGk89Ex4ZJqYhV+2V0Jcrdq79J2iXyOGaxipe4E/2a3INjUMmRkS+84ocLLGYj9KeLYP9AI9q8vbWNa9lk9ZJdgVHDa3zi8uoOUMEGEclymRI3H+Eqi708WsNk=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f505df7c-3167-403e-4771-08ddf51361c2
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5328.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2025 11:22:55.2133 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1bn0jOZPda83u2iMrd2rCVK7s52hW+tqA+N5ShsuUGfcIUBBjgL3bsAOuefvzdzZtIfI2YjwiSBHAV4xajHVMN7HRCiQSaR8FdlRqIILkSg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR10MB4451
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 spamscore=0 phishscore=0
 bulkscore=0 mlxscore=0 suspectscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2508110000
 definitions=main-2509160107
X-Proofpoint-GUID: 54eEkf3kfAWjk1mHTNTE70AEx2LJizGW
X-Authority-Analysis: v=2.4 cv=RtzFLDmK c=1 sm=1 tr=0 ts=68c94893 cx=c_pps
 a=OOZaFjgC48PWsiFpTAqLcw==:117 a=OOZaFjgC48PWsiFpTAqLcw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19
 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=GoEa3M9JfhUA:10 a=HzPBJnyQxJ-OJ0Ahin8A:9
 a=QEXdDO2ut3YA:10
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAzMyBTYWx0ZWRfX9EUwWZTB3ZGp
 QLkkT8JLeOdT4PUan95wxXoX0x6V74/9nXWAFQSBNhvPCM/lyHQseo55uUa6LCk62ubcjEEA+mv
 +UGxpmX909+fcfGkwPJutofu62QjBcnUUkAqs/i5pvdrtHeTPb9t4MoMi7kCM+i7e7dcdsLJ9qF
 Ue46+ZKoD9h2oknVwSHZ4uvy0w24hmb2b6mDKYsoRx9sRIAFOL7qGh/dGjKfUf3wzWNNuwAvLb8
 N3tUNl9oGYxszh0aSrotMb04fqYA4vpKY+nA8nmFlUKb6ROKieLv2I/nRLe6WldNp67ybIsLERz
 rDJ7c6d5f2whQY7KZoQIsFiWaOEdlRnlLSod3wd7ET572+OIufk8+qGr6d0/qa2YL4bvhRIUCzB
 /s3cGPc3
X-Proofpoint-ORIG-GUID: 54eEkf3kfAWjk1mHTNTE70AEx2LJizGW
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2025-04-25; bh=lrwWOrtyp0sJ1aiuPwzwwer3IwAhEaNl90HNoD/Kgb4=; b=
 MaM/8nejNhnSs+DwDTxDEj37E+H38HBty2ycxnWunjID1pLHlSMoIJ/hDh+B4UL+
 Ws2WJnZV34CZbbqAZgAJIN1+txLhJaXfwVrgU4FBsVC7WK8D5+2ktTC3hsnhEJFv
 j77QdgR3JMkBmSSo0avw4O5eKbdyBs3VbNfjK+GzVe8g0yAEq81r/TIVnNfiKKeC
 6agMcPn6K7eLmX0T/rjyDq+McMcsd6qsuuTFe4LYsBGpDOUz8wlnFv+Bp/QSUKim
 4aVJ0G9kvqbgVaMxqtdNu7hBhoGuA78PFm50ho0xnOLr3o1aqaCxPX22/yFm7OSk
 syJASPkKLJ7XofMeWovWzA==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lrwWOrtyp0sJ1aiuPwzwwer3IwAhEaNl90HNoD/Kgb4=;
 b=YWKhT+g+OOJcZtVva8sij1wl84gKYfaWOdFR/LMyNHvkLhSODKv3Npi+8KByBijBVri4fEpqIfg8a/Gt6ktfb6iOvwki9jHIGEucl6Xp0UhGL9z+q1DtBgNLF/f36KHgn6JWax6qNnNuliYzCFVpGAXcgsq7Shga4Yaz/fXYfzs=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=oracle.com header.i=@oracle.com
 header.a=rsa-sha256 header.s=corp-2025-04-25 header.b=MaM/8nej; 
 dkim=pass (1024-bit key,
 unprotected) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com
 header.a=rsa-sha256 header.s=selector2-oracle-onmicrosoft-com
 header.b=YWKhT+g+
Subject: Re: [Intel-wired-lan] [External] : [PATCH iwl-next 1/5] idpf: add
 virtchnl functions to manage selected queues
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



On 9/11/2025 9:52 PM, Alexander Lobakin wrote:
> +/**
> + * idpf_fill_rxq_config_chunk - fill chunk describing then Rx queue

then Rx queue -> the Rx queue

> + * @vport: virtual port data structure
> + * @q: Rx queue to be inserted into VC chunk
> + * @qi: pointer to the buffer containing the VC chunk
> + */


Thanks,
Alok
