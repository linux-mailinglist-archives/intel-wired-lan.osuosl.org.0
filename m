Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0045DBFCC27
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Oct 2025 17:05:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0964861090;
	Wed, 22 Oct 2025 15:05:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TCiXEbl-PE3z; Wed, 22 Oct 2025 15:05:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6F7BD6109A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761145538;
	bh=D6xmDDIvKPnBKBTQLaPBkHqf/mD8cS2eHB1Es6ICzO4=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Ga/YJ/EJJLfJfVUuHyVg1EmjILj5UhnFrbCJ9zbAZtB73E/4YNvaNxN3Q0flyor/P
	 adsTr6iiASmaIhxuhE0pNacuzYCtzBNfwkeCQg+n1PJNqIEmgJyWFZC5hEOf8PK9Xr
	 Gp+Hdeg0PwAGLhG9wCv2P0JeNOP70HqMebBV+umdbRRmBW2Nk0QJmGxA3PeDt5sXH5
	 Cthu2PHCm0gjBcM+Nq70LCubCN5oWQ7I7iRnwiR6tr+P4/00OMfcB+iBjiQb7E0jb+
	 0H8YHXnZwS8+cwShqzcbjUto2ZdFa5ENFSk3aoq1fHvY5v0jI06sPWJS+iLpMrEEK5
	 yfyIzLJ8N4iiw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6F7BD6109A;
	Wed, 22 Oct 2025 15:05:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 54FE8DE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 15:05:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4648D61069
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 15:05:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lvPY5J26L8c5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Oct 2025 15:05:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.165.32;
 helo=mx0a-00069f02.pphosted.com; envelope-from=alok.a.tiwari@oracle.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2F4286102A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2F4286102A
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2F4286102A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 15:05:34 +0000 (UTC)
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59ME0vZD020258;
 Wed, 22 Oct 2025 15:05:28 GMT
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 49xstygy98-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 22 Oct 2025 15:05:27 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 59MELHPL000849; Wed, 22 Oct 2025 15:05:27 GMT
Received: from mw6pr02cu001.outbound.protection.outlook.com
 (mail-westus2azon11012069.outbound.protection.outlook.com [52.101.48.69])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 49v1bd9tx4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 22 Oct 2025 15:05:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MZ/yhK3eGGVcarRqjLM2U/6vjtEv4QD4t60uQg4W8eyfCNMiaoahRlQ68ytaOI9792QyImsRvenqClpNCA40q0Rm9Fn8KkEbmJ4ZDkeKJAlnAvmOb+0KUQQxx3LRKzlABAzEm90srogoLaEB4W/GYns9IR66b57lEo3ys1goWSndJEwF8Euc6cALOjgb9bECQ5RVygHh0iQgi3npWmTD7RwonxlITUWftX5AuDM5GLL69WzxA/S8Tw4sHjRohJmHyf5oYPZ8SlEnQ5oKuf1CDR1UabcznRBsK2NWeiIw4c/074/ywlGhBnaIEFQqi5oUdSWXo3xxSJa6SGwQTocvEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D6xmDDIvKPnBKBTQLaPBkHqf/mD8cS2eHB1Es6ICzO4=;
 b=UJrmMSvzq3m+ULfkgQ8mOW0Tey9NTVSGsrqaRNcteTRj4YSDNgvPW2aJDNo4clsY+gt4t/1W+9+h2CHdXnHg/ip8WFS6tKa7hzUEZr2oXiBHm50Igj6lIhUxIKzSVix3nx+Nyc1pTESTRiKJKzDXI9EOabMParFqbEmTVl0Gsj7vaWTOmxSZ5GsV1inndrnC30Erm9g+pqfFYCoany+n3t73Y7FT5vqesk9MMMD9ZQgpF10Z11mdx1NIhcXkqmdcC/6r1brO2QPWeKruPV83Rm3UjiCxBco6/YgG4L07DneSCJVuilDH1XHaBKE1oD6eL2CFkE0U2SWkWhJkCAnnYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DS7PR10MB5328.namprd10.prod.outlook.com (2603:10b6:5:3a6::12)
 by PH7PR10MB7840.namprd10.prod.outlook.com (2603:10b6:510:2fd::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.12; Wed, 22 Oct
 2025 15:05:23 +0000
Received: from DS7PR10MB5328.namprd10.prod.outlook.com
 ([fe80::ea13:c6c1:9956:b29c]) by DS7PR10MB5328.namprd10.prod.outlook.com
 ([fe80::ea13:c6c1:9956:b29c%6]) with mapi id 15.20.9228.009; Wed, 22 Oct 2025
 15:05:23 +0000
Message-ID: <3aa7dc80-ef6e-43a8-a374-a4528ef34657@oracle.com>
Date: Wed, 22 Oct 2025 20:35:02 +0530
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, kuba@kernel.org, davem@davemloft.net,
 edumazet@google.com, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 alok.a.tiwarilinux@gmail.com
References: <20251021184108.2390121-1-alok.a.tiwari@oracle.com>
 <20251021184108.2390121-2-alok.a.tiwari@oracle.com>
 <aPjszTp0QCYowpKy@horms.kernel.org>
Content-Language: en-US
From: ALOK TIWARI <alok.a.tiwari@oracle.com>
In-Reply-To: <aPjszTp0QCYowpKy@horms.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR4P281CA0185.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ca::18) To DS7PR10MB5328.namprd10.prod.outlook.com
 (2603:10b6:5:3a6::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5328:EE_|PH7PR10MB7840:EE_
X-MS-Office365-Filtering-Correlation-Id: 25539795-16d0-4b12-01ce-08de117c6cbb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VGg4Wk1rWnZ1aU5UTWNLelVLaWx2YXNZRVIzNzRKbzhXUlduM0ZtVDJjU1Vr?=
 =?utf-8?B?UHMxSEVJaTkrMXFxRERZRENtQUhJMVpGRmMvVDlKREdXNlp1SWpKNkRzeXpr?=
 =?utf-8?B?Kzl3ZmJkbGV0UGVyL1Z1YVkvdEVic240by9STnlNclJ3VEVWRGUxN0E4dnJF?=
 =?utf-8?B?b080K3ovT1VPQ0hiR0QzaS9kclg0dWY0Q3YzZUdNSFY2L2pKYjRSZGtxN1lh?=
 =?utf-8?B?ajRBWXcrNjRPeHpaeGhaTnJtZGpEZFROOExBejlJSnZHckFUZ2RMVzJVQVFW?=
 =?utf-8?B?aXJKdkRsdDZXU002UEVTMnA3bjJYSTlMc0xTNWlvd3RWSGNmZXpNbFlTWm5s?=
 =?utf-8?B?eHU2VFY0VXdLdHovM3JuNDBjazVFUXo0ZEFaOGI5aGhueEFqdmtmcXRJV1Iw?=
 =?utf-8?B?OERsZjE4U2ZGeCtLUG5GY1JCeWdsM1ZJRG9MeFZWdmFEY2N0VHRjejBrUHdB?=
 =?utf-8?B?eE9zaFFwQXNaeXBBclQrbGYwTUhkWG15N3BVSXBkNEJVdTJLSnlabDA0YUNm?=
 =?utf-8?B?ai9KN2dTOUFBWERTVlgzcitDamFjQlZCS2I0dHJOZ25aOGFSSnhjUy9mb0lU?=
 =?utf-8?B?djdOeThhQlY4VVN5L2hBQnl5L0UyN1k5dzJadTF3S29vMjdPN3Zmb2RYNmNs?=
 =?utf-8?B?cWVQWHdFNytQa0pqMDBFNVJzaVBRL2o4bEpyRCtMR0RDWVM1THE1bTdDeW81?=
 =?utf-8?B?dkJHOHYwOVlmNDVhaFhVNnJjdXI0bE5wc1Y3cXVqdmp4c24wL3FNNHFvQ3hE?=
 =?utf-8?B?bHpLdE4vT0RzdVNPaFJTRkl0MXhzTk9sQytBbURvS1RFcTVsNzJFaXV1QmlI?=
 =?utf-8?B?M2VoN1NWeE1KSWpPajVpbW1VejJNY21aNEJCV05KbGUzTmVPYVFzN2tMdlB4?=
 =?utf-8?B?a1dsc2VIMUFwWmxzMEFnc0VWLy9rWXFUYjNwL1MvTGhlZFMyYVNiWjNpVHFa?=
 =?utf-8?B?N3FUNWxWR3Fpc3p6eFNTZDhrQkJPVlRucWdqRkZOU2FGc1A1MERQTDMrc3dS?=
 =?utf-8?B?VmNveGJPL0lxdmFHTUs2TU9yOEpqcE9ONGJzS3o1bDd3Mjd0NWNrbmdSeU1B?=
 =?utf-8?B?QkhsRTdFSnNXMmRtQUxicXREbTJqUXFvTDd3YmZBMHZ6dHo1RTU3eS9QdFpk?=
 =?utf-8?B?RVVNbWZkMUVzbS9UcWhGak9mUkdHWCtDd1ZXUFpJMWNLVjR1NURQdXJka3dT?=
 =?utf-8?B?U0h4eTc5NGlPZ2huTXpDWUZoWU5LR2U1V3ZHaE9RTFBOSXh5VUYyQTJFMzV5?=
 =?utf-8?B?Z0M4SlRQeW0xZXE2aUJwRjVadjJkbk9pMHRlaHlta2NXWTg4cXovQlVPM0dD?=
 =?utf-8?B?MTFiL3BwZm1LTUJJa3pjMGlLTHlqd2s1Q3FVR3k1ZGd3aWJsK3lxVTJGcUxV?=
 =?utf-8?B?blpmaDlQblRQN1M2NktkWjVIS2tkeTFGMGhEVGhDdU9hSFpGeXgxOHZiMEYx?=
 =?utf-8?B?TWFLTGJyODRNNXo2MVp4b3NSYTd1TGFhN2VhYWxVNmdlUVJ0OTZhWUsxMno2?=
 =?utf-8?B?NjBEV2FCbzF4TmtXSDRPY3FwOHZ2NjhNZ3drTjlFcDU5bXJCOTdoUFhOVGx0?=
 =?utf-8?B?dG5YQ2pZaVdvV2RFQzFvVERwR2FRa202bmNVMGRtU1RHR2dkd0pjOUpZVUFa?=
 =?utf-8?B?STFVYktaWTc5d1BncTAzNThZUjdKZHN3R1lIQkNFN0l6dUw3ZUVRV2pFV01K?=
 =?utf-8?B?YkEvUTFtRXk5Vnk0bk9DVEc4RHI0ZmllNEVmZkpCRVhJdVUxdE1sS2x1WUxx?=
 =?utf-8?B?Sm90blZka2JNdkFWMFhCbWZLb3dyV2hEOU5kSDFMODlWUnhscUpyVkUva2NO?=
 =?utf-8?B?bU9JY3U5NmhEZm52TVpGQUZCOU5BRTRkaG5tdjlNZUdPUVFyMGtwcThEdk91?=
 =?utf-8?B?c1lKRUtOT2lqdVEydWZvZHp4dWQ4dEFveWkvUERGM0dmMzlpT3M5dk8vZ1po?=
 =?utf-8?Q?RFHGhTFphr8f6drhBaQC2oe09LYhLSXO?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR10MB5328.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?andCUDZobDRrZlFBOFBGSWtUdEVMN3BqTXBPaE5HQkh5bXZVTjBRME5yTmhn?=
 =?utf-8?B?a2xhM3R0cjFhRkdxRXhIdER2REd1ZXZYRHpVWmplTncxZ0ROUkpqdUlaaVNk?=
 =?utf-8?B?UDk5WFZncVYvSUVJSFB3N25KUExDQXUrNHR4dzhsZHo4MktoK1ZKS0xIcDY4?=
 =?utf-8?B?VXAvM2lvMWwyYkpDVnduRzZUbnlNZmlJZEk5c0lPdE1iSGQyTXdyN0JreG9H?=
 =?utf-8?B?T2w2b2VDZHVmYkdnc3BPQzIxTzlodU92NmhLUEh4Z0pjMncxR21KZlBBdnFt?=
 =?utf-8?B?d0g3NVFSMFJVdSs0NEthOGNwMmV6c2M3QmRPQTFwa1Q3L3QyT0JCVjF1RUNz?=
 =?utf-8?B?RnhSUENXRUV4QUt3YXNOS2dpbWRUbjFGWmltMUhSd05QUXFWc0d0TUpRNmI3?=
 =?utf-8?B?bklYOVFza2pQWnhCcWJCSW9LeUlqN09MOTd5TURRWlB4a0N2UEJRUXk4azNa?=
 =?utf-8?B?QmdrMHlCRkJBZzN2VXNDYnhCTEFwN0RtUVYzaUttNHFmd201Zkw3dS9PMzg0?=
 =?utf-8?B?ZkxnZVovdlFPTys4MUdQT3VhNytZcWR4TUZWUklLY3BPb1lkRWQraW9KZkdQ?=
 =?utf-8?B?NWpycmg5NlhISTgvdGs2U2YrYkpRTjU1d25SenRzYUhRS0Y2R1gxSDVrZU1w?=
 =?utf-8?B?YldxV21PbDBxZVpaNjM2b2FkQ0Qxa2QwZ2QzUmdsV0NVVGp1bWsrMjBnUzJW?=
 =?utf-8?B?bWxGbERRUmNSdTZwZURGTDFhT1prVnJnNEhRQjJ6VWM2TGpaa2NQajVnR3V0?=
 =?utf-8?B?RkphV0VwRzFCNUlyVFMwTTdmLzYyYVVCaGIrT0Z6N1dVUnZMYWhlYVJSMk5D?=
 =?utf-8?B?RCtYeGQ0RVRMeW9YVjQrQkVTSmxha1N5S1V2L0NhYmdMWUhKR25SdnVZV3Jo?=
 =?utf-8?B?TXphNngzb1Ayem1tNHlhQzNRTjZtTVowMGg5UzdTSnFPWHRzVllBa2RqOVBj?=
 =?utf-8?B?eFFzQTgyaDI4anJFbVhLUUM0bm9NbkVNYjJzUms0ajB5eGZLb3pxczluU0Z4?=
 =?utf-8?B?ZmNKQjFldEhNTldzRjJGbzV6Z3VVbi9RaTc5WlVzVElKOU12TEVoelNkN2tj?=
 =?utf-8?B?c0drQmlKaTBNNUZPalRpeGl4dXhEWG93L2xOWHVSSm1POE1CVWZxL0svY0E3?=
 =?utf-8?B?ZnBoR3RuRU94OElRWHpSUW9MNmpwb0M1QXJ1T3Zwd3RXMWt5bG5WZnNYQWd1?=
 =?utf-8?B?L0FVTUNsU1Q4QTZ6a1cxQ2dyTk5uYmhwSGNhMmhsUU9FaUhVbnd5SXozZGl4?=
 =?utf-8?B?RWQzR3dYZXdjQ0dzV21ubUFqeEpDODhWWXFmS2hDdGVGaG9hUFRRbVI1Q0Y1?=
 =?utf-8?B?ZXhFOG1LaHlPMjJOVXA2cUlwTllQNm1QTUNJQTU2RXozUFVpRjNvOHNhcHg5?=
 =?utf-8?B?a0xVYW1hTTIxaGdadTR6T1JKcXJiUlZuYTJtU3dWTXpOcE55M1JYbXVtanZ6?=
 =?utf-8?B?dzRiZ1BqTWIyYUdLZzBMY2F1SlRmVHJhSzloVUdsc29UcGIyL0lkUjkzYWtY?=
 =?utf-8?B?Q3Vidm1ScGg3QWFZcDNBbWZTSFlpazdma0UxSktpUFhvL0s4NlBCb3RYcmJa?=
 =?utf-8?B?VGx6ZVcwbzFoT0JwYmtyaDA5NkFBdjVGVHZ1OTNjcGZpaitrVzZUK0tLY2NK?=
 =?utf-8?B?elRHWGw4VElpVkt2MXhKdDZROTg4azZUSjUrUzFEYU9nSEFsYzJEWVF6c0VN?=
 =?utf-8?B?SGdBZWRsT1kwSWQ5ZE1MdmxKcU9xZHBId1ZEMmRkUlVWSVNXRlo3cFltMzZs?=
 =?utf-8?B?WXNuWFllcTg0MzNoWmlKZEd6dk0wSkRGV3VXOE1sbWowaTlQbDMyOUhIZ0hE?=
 =?utf-8?B?bThUNFlnK09JWEJaaEtBUGwxU2VkTmJrWDhBZXUyMklRT05IMTNwTTZkaXJ6?=
 =?utf-8?B?cmMrUlFwRWxUbkpmRXVTS2Rwanh5V01aWWx3Y3lGS1VQbGNIUVlySFdSaXQ5?=
 =?utf-8?B?WFpPS0dOZk52b2JNVzBKR3pseGxQTmJVUDlmVU5pQm1wbkZvNUFRT2xwTW0y?=
 =?utf-8?B?UGxQN1RTR1BUaWJnamJ2eGhHT1BHTGp0RlhpTTI3VUtLRlhFVVgzdk5kVmlO?=
 =?utf-8?B?L1ppTldGUUtraVJkMERIU1hWZGNqckNURHBxazVlaWhoQUJ3K0R5elpiNGZE?=
 =?utf-8?B?ZmJJKzNYdUJhTnM3Z0NRY2xOcVEwZHY0QVhhbnVWbjZZNmhRRjRsa3c3dnVm?=
 =?utf-8?B?L3c9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: nu3K9yidrNCRWDiCQM1zrIMjXGZzHBfoZxgH7+72Fwdky04HxhpxmoGsDQ60551ZLQISQAcuYWxbSI9kplaqYC2pLNkOExuxgfzvZGLE42ArcHvHvWbgEbfjzGiwdnSTrxJKF6YV5L7TZY8ImzCumKeFZR2RRmnWXm7oSwtekQ8oiSRI19KgLY4HBG+i4O1ZiN9eWgmIYRfAnfwotfA5Y40adadIL33RK6yhIEST6UJKxUXANlziZQrBKwY1FAMC2O9+EGq3y62KsG81/LJWfRRKh6PjFqPACh4XwQWWHouSNjTiWx77RogRkInmuiznNHUG8ZlaguJ9lsNuY1/e3E35F8crW3HsshXWlf4SGat+GWRGqiBl8QmffCDrdBjehAjVRvGW7pc327meB6MNYiqbxiFlE/43eLVVX5DDBgXQDbvm0ObNyLeZVNXW5RB1cqrxiAWlGEW2I9UaRANRW8L3w2DqFrITZC/xe7WOBj7Rgnl/d7qc91fhEAgHfRp/lMuofJCkuaizTE0fCtLxLgeIWHvdIgR16YeDeSWIDaP7i+98ze+qzVY9P19ZUKv8gyWBr+InezeGxV5UHKpEjMYWKwWE65TRgHjRyBWJ5Jw=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25539795-16d0-4b12-01ce-08de117c6cbb
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5328.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2025 15:05:23.2281 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gXQ4AvDHJ8DyHiYRCPOJegs1y+9jkugpExjbApENvb8srN8QQ3CIh7CUS2pjkeVSWzS47UjNf4Mjfba3SpUcaxH/5YLE5KyemoGeGkjqpGk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR10MB7840
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_06,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 malwarescore=0
 suspectscore=0 spamscore=0 adultscore=0 bulkscore=0 phishscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2510020000 definitions=main-2510220123
X-Proofpoint-GUID: 2xjHvzCFPXVl1XWaHGcnNHo3wjB3jyzV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIyMDA1MCBTYWx0ZWRfXymoa4Cr9PQhv
 AKcJCLYXcVowBHbchEvZ1/QrkZULgE2elUQKu56CphaB5zBF4Fec8KefZGxm9AMPdzaJqsEj/xn
 9bTrqWNIOr9/vqreLmA4zopFfVxlycLil2H9MAVdlXsyKJX+Oogc9sX47x0W462fco4Gv8ZaFPt
 fhojiDuXJhNwF8bFOwtSToLcVaTQ8VWv4d49xmivPi7yGnhrvHFEfqzz4yvoyRGcf80wC90Hs+s
 IcLJmBt6A2kXosUnTu6EebemaNcxYhL1sF/feyrSkQ68npfJKgA1dYrttUDYSmvjlIidzKdEorr
 E0YnAfioZFIi/BeJs91ZfqyGa+en+dQhLC4/fIDhi2NSMrOaoX3v7R58onRvWUu57+nmxqyuR+J
 6lqSW4PQovCrTQLA6s4VR/nng58SCw==
X-Authority-Analysis: v=2.4 cv=OdeVzxTY c=1 sm=1 tr=0 ts=68f8f2b7 b=1 cx=c_pps
 a=WeWmnZmh0fydH62SvGsd2A==:117
 a=WeWmnZmh0fydH62SvGsd2A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=x6icFKpwvdMA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=N4pIQKmVc8SQhqnyh1sA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-ORIG-GUID: 2xjHvzCFPXVl1XWaHGcnNHo3wjB3jyzV
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2025-04-25; bh=D6xmDDIvKPnBKBTQLaPBkHqf/mD8cS2eHB1Es6ICzO4=; b=
 FxUScy9M7DxRI/tHP0wkItP2lDpa7oOP6H/PS0OFlJQ4GfGa5MwPxwM9sB16E3v3
 CbiKomlfMpABLKPCaNuanqnA39j70SVewentN2NBAvxMtiRJ9hpL54F6ZI/YRerM
 /tZK04NztBPvMBDMFS3YAjw6bA2Dt+q8HRpem24IFsF6LGWXrEzmCUFT2X/96HJC
 zR0DfqTH9eIAl2CK8W8r2e+ahvAcA7yjZ31cHSwFqkYYcxPhf/X7AWWiUea8w0fF
 uuyIZwuq13dhTmGDeQ/mAThgDytmw/5x385HyjQ8rqijhPBqFIXX5vI2rSRg4tvc
 U151c+I/dddHy6VHiE9LXQ==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D6xmDDIvKPnBKBTQLaPBkHqf/mD8cS2eHB1Es6ICzO4=;
 b=wHb2Z0p7VoC7FjmQYHf6857YTONTDhW9ZRmqrb/qbS+3l9EbKcipcjxaGynP5Lf6pYlDZBQgPCcE8SbOdSFXk0oQ0E8k+g/KU/gUd8/frhBuqGxJzQVTq7M7FuC6xh6UOmK9KzJZiRSg4MoMCBVt5ShBmLM8aj/0JZsDJ1fEwQs=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=oracle.com header.i=@oracle.com
 header.a=rsa-sha256 header.s=corp-2025-04-25 header.b=FxUScy9M; 
 dkim=pass (1024-bit key,
 unprotected) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com
 header.a=rsa-sha256 header.s=selector2-oracle-onmicrosoft-com
 header.b=wHb2Z0p7
Subject: Re: [Intel-wired-lan] [External] : Re: [PATCH net-next 2/2] idpf:
 fix typos and correct doc comments in idpf driver
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



On 10/22/2025 8:10 PM, Simon Horman wrote:
> On Tue, Oct 21, 2025 at 11:40:55AM -0700, Alok Tiwari wrote:
> 
> ...
> 
>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
>> index 61e613066140..ffc24a825129 100644
>> --- a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
>> +++ b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
>> @@ -1029,7 +1029,7 @@ static void idpf_xdp_run_pass(struct libeth_xdp_buff *xdp,
>>    * @rx_q: rx queue to clean
>>    * @budget: Total limit on number of packets to process
>>    *
>> - * Returns true if there's any budget left (e.g. the clean is finished)
>> + * Returns number of packets cleaned from this queue
> 
> Hi Alok,
> 
> Perhaps while this line is being updated it could
> also be changed to use "Return:" or "Returns:".
> 
> Flagged by ./scripts/kernel-doc -none -Wall
> 
>>    */
>>   static int idpf_rx_singleq_clean(struct idpf_rx_queue *rx_q, int budget)
>>   {
>> -- 
>> 2.50.1
>>

Thanks Simon,

It seems that this file, and almost the entire driver uses "Returns" 
rather than "Returns:". In this case, it might be better to keep it 
consistent with the existing style. or
Should we just update this file to use “Returns:” for consistency, or 
would it be better to update the entire driver for consistency instead?

Thanks,
Alok
