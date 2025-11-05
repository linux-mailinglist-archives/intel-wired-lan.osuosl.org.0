Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E47C35021
	for <lists+intel-wired-lan@lfdr.de>; Wed, 05 Nov 2025 11:01:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A40A48409C;
	Wed,  5 Nov 2025 10:01:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FnlC2DgezBoR; Wed,  5 Nov 2025 10:01:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1C0D884097
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762336909;
	bh=k/Plo4vF1wIlVsUdXO/x95TBIlp9Rv/rc5EvS33o2KQ=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=YmAzSS8nY7ijgZCQgbOEUZZOo8EFbxMJTBL5YZHGIBs2xN9BdHAWhGvRuu53iSP3N
	 j6253QyevVtAIkwTeXo7QsiiCFovCnGVIOwD2hWEpCBTTzAaOz442jAwop92RJWAbt
	 Zgq9vi6P2v1C2MMAjVmrMo1jplGG2FYj4kv0kuLkscsW4BCwpjDQQPJjWvpRPnULFG
	 0VW2JAJY0ow0Zj00VJ5orq+LdYgUlbfv9a1F0YHXydtFrhbDvB2e4LFtVzSGYe6o9/
	 ZzdQmVQBg5S/jYKry3EHtPa1RX8NpTxJ2fMRDgdsIDZynia8E6oV9LqswRKn70nNzs
	 eaS++rP0Puh2Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1C0D884097;
	Wed,  5 Nov 2025 10:01:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id AFEC3462
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 10:01:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9C4FC6067A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 10:01:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id poH3m48sYEPK for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Nov 2025 10:01:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.165.32;
 helo=mx0a-00069f02.pphosted.com; envelope-from=alok.a.tiwari@oracle.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C09E6605CB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C09E6605CB
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C09E6605CB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 10:01:45 +0000 (UTC)
Received: from pps.filterd (m0333521.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5A59j2Pq020699;
 Wed, 5 Nov 2025 10:01:44 GMT
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4a847cr1fn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 05 Nov 2025 10:01:44 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 5A58OWHc019017; Wed, 5 Nov 2025 10:01:43 GMT
Received: from mw6pr02cu001.outbound.protection.outlook.com
 (mail-westus2azon11012002.outbound.protection.outlook.com [52.101.48.2])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 4a58naspa0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 05 Nov 2025 10:01:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HK4Pqx5v8yeG3RPAn3Mce8FILLRVJ5UF+YG11A+5P4V6mzD4lJ7ZiRMUeCTEv1uwkydIgjuu+PZzyWVOGtU75ohhbPvPde7Cmv7YKv68Zqf/qUKbAL0hvv2CBtM4WtEMCGoNtAQK9UeCiZxbiRKA7H2hsu64JwzLk+jbsH7Mbo11sEzIBgOcxYiJMH8eAJVNB1akthY8ndayw4YA+gt36F6tjA3XTSJUiuInGwvCfXDvDSCG0fj5e4hWXObfY6D+6JVChCyrWU4UfWu6h9Wa71JoksX5oSRKJf6zo4EjqyL2dDEDko4VdW5X9qjlSMRF44FHdh+HDYnXg9rOTxLiZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k/Plo4vF1wIlVsUdXO/x95TBIlp9Rv/rc5EvS33o2KQ=;
 b=RRfqiQg+Ms9yX9KvksciIN+pbYm3fwKPq98gvnrlhVqvyHyWfskaanJ7bNuFt3K6CNvPfVQXBqzIN89AcBrLlbMW4al9uu446p6Wy6D2hQA2hxSwpZ/O2LPvEkkuzvPjXpjQQwhqQRd0xYs7Pm43vXbM4YCfjtsKkYHMCFZ/25tGc0mW4XcgiROVjUveOmdee2ofdxqPbrh447aBg1VkWJbcK3XvjTrZ4lUo+E9wXtraz61jBhMGxxQcSx/OMVfnZ1lo5ysf36JJtO3AgOaH5VMuz7cUCD3s4WUK0A8yFD68tpI/jcoP3PNuHy1EK8O79omRStWQ0VQyNRczLmTpIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DS7PR10MB5328.namprd10.prod.outlook.com (2603:10b6:5:3a6::12)
 by LV3PR10MB7961.namprd10.prod.outlook.com (2603:10b6:408:21d::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.7; Wed, 5 Nov
 2025 10:01:39 +0000
Received: from DS7PR10MB5328.namprd10.prod.outlook.com
 ([fe80::ea13:c6c1:9956:b29c]) by DS7PR10MB5328.namprd10.prod.outlook.com
 ([fe80::ea13:c6c1:9956:b29c%6]) with mapi id 15.20.9253.017; Wed, 5 Nov 2025
 10:01:39 +0000
Message-ID: <17e6c453-6c58-4b71-a4cd-237143d006cc@oracle.com>
Date: Wed, 5 Nov 2025 15:31:34 +0530
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: ALOK TIWARI <alok.a.tiwari@oracle.com>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 alok.a.tiwari@oracle.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: LO0P265CA0013.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:355::8) To DS7PR10MB5328.namprd10.prod.outlook.com
 (2603:10b6:5:3a6::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5328:EE_|LV3PR10MB7961:EE_
X-MS-Office365-Filtering-Correlation-Id: 30362d44-49ae-4e1c-135b-08de1c525007
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S3RTckV6TUozcmgvckZacTRicTNrcnN3Z1pwUk0yUGFUcnlaSmNJWkcrZitN?=
 =?utf-8?B?ckg5YWhqdmJ4RWQ3SlQyU01ESEJMRzFUQjVuYTIxT1ltN2pZeDZsK1YyV2gr?=
 =?utf-8?B?WDlueE53dGtrODQ4SGdZUjRheDI5Z2VWVGhRQXNUNVVFQVh0WVdic0FFK1BS?=
 =?utf-8?B?eVNBUnJZcFRJQW9wMm9pNEs1ZkdPbXF1TDlUd1d2MVV3UkZiN3lRNHB0WWxx?=
 =?utf-8?B?c3IvQW4yalVhekdBcFRvQk9FbDhaa0IvOEV1eTU2QTBzbmxIRnpTQXJXUVJr?=
 =?utf-8?B?Ukp4Y1Y2NVJ2NkFsMXNCSzFVaVRXemJ6azA4UWw1TDJtSmxzSm9BdTEvTkFP?=
 =?utf-8?B?K1grL1lwZDV2KzdmdjlJbk40Z2hGb1praEZkNFVjOXJKQ0NjNzFjenRzOE9X?=
 =?utf-8?B?MUI5bFQ0bkNXRFdNRnIybEtNait5dGkzWjRPVy9VMWxqd1hGZFpvOThkdmhz?=
 =?utf-8?B?NTFIOWs3alQ4QVdtTFlxcWtaaXhuNzI4YUV1eldQQld6M0RIY2EzWmtaaktJ?=
 =?utf-8?B?b3JvWDlOMmlWQVBrN1FseTFTTGZ0YVR2V09oL1dZMmdFV0owYzFXbVBIMXRq?=
 =?utf-8?B?QXo5ZXVJekRIUUtPOXJidjVFcHFsa0I4YnRnZ3JjdGtGVE9KVjVHM1NHejZJ?=
 =?utf-8?B?eDVVYVhFZlpDdVp0YlBFZWdYWWx3eHM1aE5SL2hScVBMWVgvUGs0UlVyZFNN?=
 =?utf-8?B?RVVWYlpsbFVkb2RjZGU1dWYvZ0R2Mm95SjhEcFhsMmRvVkFOT1pjcHp2SE1F?=
 =?utf-8?B?R202Sm5icWIvUFU4SDJrZkIwUGo3T0s1Zyt5TGY5V3AxcFRTN2x6MnJLY21Y?=
 =?utf-8?B?NXcwT3lteCt6VU1vMUpoZy9DTzZrNG5RWnVHOTFVNmNSODFyZjU4dzB2d2Z6?=
 =?utf-8?B?TjBsVU43S3Npd2R6a1A4dlpZZFN5cG5OKzJXQVlTNFZNVkU2c1haSklucmtQ?=
 =?utf-8?B?amptOWRTVkhheEh2MGh6aGl0ZldZUEVPTGZ4UmRpZTRJR2lxS0VHKzJ3T3V1?=
 =?utf-8?B?L0lzM01UTWxkTVRudEl3eDFndndxVERJS1VRQzUxL0RUSlRhSE5aeFNJMFo5?=
 =?utf-8?B?Uktwc0hNdnBVV0dNbEM3ckttc2VsNXJYNFh2dUZCSFlWTU14NzMxajcwYlR5?=
 =?utf-8?B?UmlDVU5neEZ6QjRDT25hZ2pxQjZHMi9ENXV3d3c2ZmpucUVpclJvdFhJejRq?=
 =?utf-8?B?TVdhRkdRSnlyLzJhcGtwejdNUmJsSUdXanpITjdMMlBWN2N3RWRXeVRSY3NS?=
 =?utf-8?B?eVRZYU81UEt6eW1MWDdnSlpQTWVnb0hBMW9WRGRtdEZKd3NmK2pHMU1IOEMv?=
 =?utf-8?B?YkZ2SklIRzRuaHBzQm1Wa2Y4V1R6QUFOSUd6V3djeHpBb042RTBLTjd0NDVF?=
 =?utf-8?B?MXlPWFA1U2NoQ1AzaXVyL1djd0FLeGwzL0M0QkQvemhXNTVIZTZPK2JzYmZ6?=
 =?utf-8?B?dlJiaS9nMDZSMlVPOWoxb1JYQUVaU1lqVE1nQm8xT3RWZjZUVm8zeFBKM3lV?=
 =?utf-8?B?eTMxNnlhY2hnbWFUUXcxRGNHMzVwcEt1aURPVnBCNk13RkpHcUhaaGU3ZW1O?=
 =?utf-8?B?RzNQYWQxNjZDVTVFR3E5YVlJZE4zTWt2Rk00Ky9kaytTRHZVWWJBV3dlNDEr?=
 =?utf-8?B?c2RraGpjaG1xeVg2Z3lobkFYMjNlOUlGRkhncDZNc0ozWUpQRFFiWmhyb0Zh?=
 =?utf-8?B?dkErTUZrNWZCZnVjMW5PdVJ5dlRuUzVKL2lTNmhpR1Q0WFlyN1pFMWhnNFhD?=
 =?utf-8?B?ZEFhSDBwbXdKVlMvQnRyNHc1azdpaUZoWUlJZ3V3YWtObWg2ZXNUMTBzeTA0?=
 =?utf-8?B?NE01dHBoSU1sQXZidVVNZ1hlUDJOQ1BKQkczRlZ6TkNoUENHOGpGTmI4OGdO?=
 =?utf-8?B?NEp4RDhnU2RZQUVwdFkxMjlJQytyazhROTFnaWhhS0xTTUtvRHNjKzlMeFlJ?=
 =?utf-8?Q?pDle2MlCsL0XeQ0FORdKXwEXykPcHhlw?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR10MB5328.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MXNaeFN1NExCMXA1U3BheVNxU0MzVFdDcHZBR3JnaW5XUlF5RCtQQW5nSFVk?=
 =?utf-8?B?eFYzUWx3bzBLS2VRL0FyVDBpVTdSa3VVQklQSUFzSUpPKzBFQU8yVzRuUG9M?=
 =?utf-8?B?UzRFVXpHZWsyM3RNTTFyZmZ2bGR3RnAvSkxNOGtDdXZ1VkhTS3lHVElFUG44?=
 =?utf-8?B?VDN4RGRuS2UxTmFaL2k2UXhQQmV5WU5xcGl0MWJ0Y3IrbVVWcnI4Q2k2M2JT?=
 =?utf-8?B?WGRrRHZEQnF3RHczT2hTdjZLMm5oNlE2Q1pUc3Q2ZURqc2Q2NG5WM2EvK2p0?=
 =?utf-8?B?NFB1alphNEszMVJTZHJXL2tqZGdoclN1Q2pldnVJSnQxTFJFa1JhaEZQTDd2?=
 =?utf-8?B?aGs0T1pjd2RDTUpZN3A0TFc1RDlTMmZrMWhNcmpoUlBtNEFDZUw5T1pXMk9x?=
 =?utf-8?B?b2xEWmxxVk04Q1JmZ3djMGZkNGpVMUN3T0NxdTZTUFY3MS9CUHNlS0Y2ZFlv?=
 =?utf-8?B?cUtaZVFtbTBWK0Uzb1JkTzFaT2x4QTlUeGduRG0wSFlFS0d4NWlWRkJQVVp6?=
 =?utf-8?B?ajl3Z1RWSzFtYVZjdnhBYWZuV0FXblM5Sk5DSnQxczh0N0ZVUTdza2RoeWNv?=
 =?utf-8?B?ZE8zb2JSSWdBYVdzcyttSW9jYWF3K3FqL1E1NGJIM3A1NTZlYW04aE5vTVVk?=
 =?utf-8?B?ZVFiZTQ5V3M1U21ZL1RYSVRITWpEdU5RejA2eGdSVWtiR0RNR1haNXovYnpK?=
 =?utf-8?B?b2JJNHBtUnlQZGQyQXRDeG5KSkQxb3RWL2tjekx5cWVqMVdBdUZ1RjNwY0pC?=
 =?utf-8?B?S0ZVQXFYZG9TTWdkemZ1OElWM1M3WjRXS3plZXVobW5QdG01c2g5VEZwTmEz?=
 =?utf-8?B?czAvTlM3OGxsWnZZN00raXFqMWswN2hwUGpIRmpVNDlEMy9RS2ZsejU3Si90?=
 =?utf-8?B?dlVEVE93L20yTHluWFJIbitxaGg3Nm1oOUszWWpjRVRubXd1MzA5Wm95Tlo0?=
 =?utf-8?B?Q2tVVUNJQjNySzB0cWI1RGtWRHo2SWxxNmNPd2dsYmMxSFRWaGYyRWdqM3l3?=
 =?utf-8?B?VmwybS9GQ2ZtQ1ZSbDRTMU5QM2VLK25GcXlaQ3FCVW9XTXJpdXEzRWJzSThR?=
 =?utf-8?B?ODJNMlBPSERlQlM0ZEJGZnJub2xhbkdlR0lTOXpYOGFzcHJUNUtMNmMwazdK?=
 =?utf-8?B?enE1NEZLQ2tHNEJ3VGNsVkFMdExFUHQ0UG45REZoV3VQRDJFRDZFbFFrc0Rq?=
 =?utf-8?B?VktJRmdyQUFJRWx0Kzk3Z0kvSnNIMEhWcXZ3ZlpJRzBuT3cyNDBxQmtqOTVU?=
 =?utf-8?B?YVYrOHV4Y1FEQVFQWWJ1MWxUY2tCVTd2MnZBTWxzZjRZeHFKM0hkcndkdStt?=
 =?utf-8?B?ZTcvb0NqVjUwL3lRbERlb0loZ2FtaGdGVTZGelA1amFJVGNFcnlRMy9INUxM?=
 =?utf-8?B?M3BmWlJ4TTlZY3RLOVRaR3lmem94eG1ISGNEWDVlS0ZHdjNNVnVpVjByVHpt?=
 =?utf-8?B?NjRaSnFrTFNSaGc2VWdKRXhsYXJEZGxaR2ZQNVNzeEYwanAvRDgxcXpCMlJX?=
 =?utf-8?B?a2Jpb0ZBQ1lQdFBJSHNhYjJ6Sm1QTXlNR3NjZEU2aUQ2QklLYnhybmpOanU0?=
 =?utf-8?B?MGh3UCszSlNrZ1lkTFVVR0hQeVJwd1o3b092UWVVSzVaUFZzS3hFNExtOE9T?=
 =?utf-8?B?ME1ISWdjTWc3Wk9iTytCUXFmNHpGREpEY1NDZVZRU2JucitFRUREQWlWVjcv?=
 =?utf-8?B?eUZiTzdvamx4UmZuVzdpbExPckxFcDl6OTgxWTBkS1B6SmlmWXo5NjNVUS9y?=
 =?utf-8?B?YVFOQjJwQjZpRGNSMUs0aEhHWktCVVdMNVRrZ0doS0tOanhUL3VIVkZta2Jp?=
 =?utf-8?B?d1p1QUJsdjJnTTByRHh3S3pmUTVoem9KT1ZGbWIzLzFYNUV2dG1kS25Bb3cy?=
 =?utf-8?B?SWEwUU1LNGprdmx4dm1objcvNmYvTnRPWmJqRGlSbjAwc0RsQ0JzODIySGVU?=
 =?utf-8?B?T0ZvOUtNcVBZWEFIc0lmWFpBKzhsaWVkaXhLdzRtQm1US1RCaThkbERoOVl5?=
 =?utf-8?B?aVVGeXZBM1VJMjh1cTEyMi9SYkZyb2ZKYXNqcHQrUkxPd0N5TnAvWU9TNU5j?=
 =?utf-8?B?R29iaXcvUVg5QXp3aHUwMlFmQnRtWE1SZ0Rya3AvNWMwVkVmUUVPZjlvNTc2?=
 =?utf-8?B?eUNwVEIrWjRBZEdmSG5FUUttQmY2YkdkVlpaZk04UEtkWnV6Nm9LWGZUcVRu?=
 =?utf-8?B?VHc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: GC98oe4EHvh3hjCU1NrhSkHJfYdcyuKO0fWhOoarq9rSqwBpN2msJ2Zsle0n2ieBY/V+1XHav1qRVPyMhGPHPP2HQxdvyqcao6eP3BOWalRH/9P688jjjJahqEdF3Rex3HCOJtqluzc1mpMXiZMwdjWp4cOqJy7NQ1wO3WnAlHHbsJpbHH2dp5FCCXsqb+V92Hl+ZMp5fBgiPWft2ZFoxEfxm+2+qD1dkbpw0EVntKOocDepSPk3lPcq86KYTT5y4bWGf18RbIaqgWNoguBw6wcXAKsClf7wwzbyKSrMINBATxGL2NZCd9/B9BzW6lEwXjcA5rvCbmB6A9OYHxCCu5XDcjadEs7nKElXNgyqDYOEMHscp+pOJglQ1fbtPIrmXoQNFSSWM0dIQYqd5yew8DUFJofQW885GrZeBZeIud52bahd4cFjbBWjmDQ/WEmBs2Y/F+JY6LxW5RiH+Se8KpfHEcaQMU2u3nvDuLe4GECqwD1fzH3ULJgzcbxivXb/eI1Mt1BzN39JIqeo9BZ3pkuc1pRLHwY8jtLPm80bEArapbtK2ZzMneRO1lTm6hgXOXGTi7eZtpGbZOG9LOPCKyv6bKkyiELUC2C5DjahhyQ=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 30362d44-49ae-4e1c-135b-08de1c525007
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5328.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2025 10:01:39.1242 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aIaYLrlD2yloIPjJol0H9eVP+2Fh3pyDKNmviwO6s0JaOX8DLzmeSgLNgPHC27exeUTiJLGgSSndHUF3UXPtGF2t3gNok4xwii2Dtj+Ltow=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR10MB7961
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-05_04,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 bulkscore=0 malwarescore=0
 spamscore=0 suspectscore=0 mlxscore=0 adultscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2510240000
 definitions=main-2511050073
X-Proofpoint-GUID: Jbc4TWVQ2nG58gYSkPJe9kHDFXM0g7Sw
X-Proofpoint-ORIG-GUID: Jbc4TWVQ2nG58gYSkPJe9kHDFXM0g7Sw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA1MDA3MiBTYWx0ZWRfX1w0JIuw3HF6r
 wh7SV4VIcutAgk/TQAXSp92u0yPtK5iHHsYSFnl49hCYjy6epcUH929yiFIXt7yBrB0ru0Xxn2f
 MQxk1qeD+hghaCnpcnsYqFABcoKlNOlbcn/UeFtx1oSARw5iTsZQmaNy7KdsqK62leG2DuEnyUi
 aqVHidkUy5jcqSLMSDTlJTkkeNgNStFrcAvn00cKL+c6FK1asZYndhPWco0K1ji26Dj80l2fWFG
 XDxgW8EU5iWkPN6B+jBaO1XeS4iN+ywT5PzCl9rpvuzVwKgjtDNxJYT2qiLM7V2p4p3FHSDWihl
 DTkPKDB7ckVZPraw7OIrIKKpeq+ywOR+JmfsbQfYhEVnzul8vbR0JAMgjureMBOTtE4Ueyt4qzF
 lbJy1XXyubXYXRPiL1Su3JJJ93sXBA==
X-Authority-Analysis: v=2.4 cv=H+PWAuYi c=1 sm=1 tr=0 ts=690b2088 cx=c_pps
 a=OOZaFjgC48PWsiFpTAqLcw==:117 a=OOZaFjgC48PWsiFpTAqLcw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6UeiqGixMTsA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=a6DrP59lxYfBO9W3EK8A:9 a=QEXdDO2ut3YA:10 a=HhbK4dLum7pmb74im6QT:22
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:message-id
 :mime-version:subject:to; s=corp-2025-04-25; bh=k/Plo4vF1wIlVsUd
 XO/x95TBIlp9Rv/rc5EvS33o2KQ=; b=Xpyl9mIcTukwHEcTafBJ1Ck8oyfEn5T7
 CQecmVMBN+UdcCLgiTi2JFTmdxZTYXrtYVZYbfAtSZ6pyyCX0GEqnUBWyvAYoZlC
 YxqKs6hA/45PMRcMYiRuER+A2l+x+AJSZnump6jWMfjHICX77MYzuV93LprVW8os
 cRKVVh8JJhFKnW5MUmzwbw1kdCss9o3yV/ua53nTgygTLQTv7WO15/9r5OxfiMOD
 ofwpd2EH9KVIy7bY/XpoPn+pXI7a708RIHYGSC0drw6TH9VV9ZL7o04MdNOOyyxC
 cNRJHQZKdMx4nz4Qw41NLrTfAz7dkhEC6sdKxNxiTxumdcHvgR523A==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k/Plo4vF1wIlVsUdXO/x95TBIlp9Rv/rc5EvS33o2KQ=;
 b=Cpzjd1OzP9R29nMLI1J3TpYIpjWRKc+qeadGMrpz6E3+KtGY4cB3ZgBl4UOQ6rHOM1IWKuhuNobnqTYzjHkTcroipNbrh77cL5aMI2SOQQWeyAeg9hnxiSmzQAhQb5zr9wbTbwG6s2edFgTdgqjzDEY3qQ9nkVY9SfDMQJyyigI=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=oracle.com header.i=@oracle.com
 header.a=rsa-sha256 header.s=corp-2025-04-25 header.b=Xpyl9mIc; 
 dkim=pass (1024-bit key,
 unprotected) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com
 header.a=rsa-sha256 header.s=selector2-oracle-onmicrosoft-com
 header.b=Cpzjd1Oz
Subject: [Intel-wired-lan] [query] i40e: Clarification on mask.src_ip[0] &
 tcf.dst_ip[0] usage in i40e_vc_del_cloud_filter()
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



Hi,

In the function i40e_vc_del_cloud_filter() in
drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c,
I came across the following segment handling IPv4 flow deletion:

case VIRTCHNL_TCP_V4_FLOW:
         cfilter.n_proto = ETH_P_IP;
         if (mask.dst_ip[0] & tcf.dst_ip[0])
                 memcpy(&cfilter.ip.v4.dst_ip, tcf.dst_ip,
                        ARRAY_SIZE(tcf.dst_ip));
         else if (mask.src_ip[0] & tcf.dst_ip[0])
                 memcpy(&cfilter.ip.v4.src_ip, tcf.src_ip,
                        ARRAY_SIZE(tcf.dst_ip));
         break;

I wanted to check the intent behind using tcf.dst_ip[0] in the 
mask.src_ip[0] condition.
is there a specific reason for referencing the destination IP in this 
context?


Thanks,
Alok
---
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c 
b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 081a4526a2f0..1553157dc53a 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -3819,9 +3819,9 @@ static int i40e_vc_del_cloud_filter(struct i40e_vf 
*vf, u8 *msg)
                 if (mask.dst_ip[0] & tcf.dst_ip[0])
                         memcpy(&cfilter.ip.v4.dst_ip, tcf.dst_ip,
                                ARRAY_SIZE(tcf.dst_ip));
-               else if (mask.src_ip[0] & tcf.dst_ip[0])
+               else if (mask.src_ip[0] & tcf.src_ip[0])
                         memcpy(&cfilter.ip.v4.src_ip, tcf.src_ip,
-                              ARRAY_SIZE(tcf.dst_ip));
+                              ARRAY_SIZE(tcf.src_ip));
                 break;
         case VIRTCHNL_TCP_V6_FLOW:
                 cfilter.n_proto = ETH_P_IPV6;

