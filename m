Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB2FC2AFA6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 03 Nov 2025 11:17:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 92026417E9;
	Mon,  3 Nov 2025 10:17:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HY3MP4z3_AmK; Mon,  3 Nov 2025 10:17:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C4F87417C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762165048;
	bh=xAiEq3gG/U3SCYrKreCzaiYIfBrmSqF6YxjiMI5wfBQ=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=K9yzA83Q0L6ptZKmrCkSrNgjDEZn0w7oNYHkbRISJRD9nbynMJI4wwMI9czSCQNWO
	 qIoEpkMDU3PauK43Hj2FfdiN5AdjijSQL8qzNI7cvdNPqjFTycBl0xhfwsyXzfE0Vj
	 eoi6N4D5BqS/THXJvFyZ7bC8CIXdACLfIXbRyz7ToU83vhUHbeiq+jgPj2PNuOTRLU
	 83NoDAw9d2eE5eNcwC9YZtFPmEYmdfr+qeJ1ADofiq0AknQwkbtct407xPjjz501A+
	 e+ARJZ8LPDGTCCpfGN6pWHCn/wR301uKfEwWLC+nKMTKCCt5YP137DJ8mOBpQ9JPOW
	 EXBvToH/B7NJQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C4F87417C1;
	Mon,  3 Nov 2025 10:17:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9094C222
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 10:17:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6C66560EB1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 10:17:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TSFxpxuZ_4_D for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Nov 2025 10:17:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.177.32;
 helo=mx0b-00069f02.pphosted.com; envelope-from=alok.a.tiwari@oracle.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3ABED60EA5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3ABED60EA5
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3ABED60EA5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 10:17:24 +0000 (UTC)
Received: from pps.filterd (m0333520.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5A39sgGe003750;
 Mon, 3 Nov 2025 10:17:17 GMT
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4a6t6081js-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 03 Nov 2025 10:17:16 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 5A39Hr0E016025; Mon, 3 Nov 2025 10:17:15 GMT
Received: from bl0pr03cu003.outbound.protection.outlook.com
 (mail-eastusazon11012054.outbound.protection.outlook.com [52.101.53.54])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 4a58n7pq26-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 03 Nov 2025 10:17:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qYrHtVfJvyFXX2QJuHYzbz6P3+khms+4iSKZIVz47idKE0PFSDA1JBkJVV4BybAt9CYF5KtNxyOMoJsw/OHm5zztugAXZ5k/ywUVNvPaRFxqxSKI3Mw9AcmDxVZQHw6jDEig2DetWNm3+n1vJ+MZ6qgMLYhoLt/ULFKlQTeeDljMVWZ06x1/p/uSU2/PTos5RF6LfqVjpfXPXYs2uvO+nSAUc0/8/OpnNX1dpc4f07eGXqaKqSXwK/nBM5vqN5TcGvAdQoPRZosCFlqvQQLiUKLxDGBQ7dFTO+jAzR/tZP3M/tj24wG2kbVUPMlXj46xSIQi+CGdMUvP8KNQu5J39A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xAiEq3gG/U3SCYrKreCzaiYIfBrmSqF6YxjiMI5wfBQ=;
 b=ybYYjrFVY7JPpLjpepyLaKE/wJXAG7K50OV64VP2h/VkoDNTnhFUPsVuzu6L2sOu4u6A42ZEDRo5Wb71KWLa4c3NPafEtVHUsMgFCQAs6iF8Xgj6PzU25Vmhf3kkRwFh+FO6c2lt/MZ3xwErrC4RLtkg8RySKRjaPT/7bQogwTih3zM7dRCA7icgUtGlQ72KMnFvTLKEyZv5l1tCAS6PIakyru2NK8gWzz1jtrqsZHWIZNrVbZxpcJ9oneTMa6G7bbsMejD75IS5140fdYjDiK1R7jSDIEEM1sI+AbpNrbD57WgTr/kAN2qI6ecLlSK5ytsS1hfuPJi8mS/WS4tr1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DS7PR10MB5328.namprd10.prod.outlook.com (2603:10b6:5:3a6::12)
 by SA1PR10MB6614.namprd10.prod.outlook.com (2603:10b6:806:2b9::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.15; Mon, 3 Nov
 2025 10:17:11 +0000
Received: from DS7PR10MB5328.namprd10.prod.outlook.com
 ([fe80::ea13:c6c1:9956:b29c]) by DS7PR10MB5328.namprd10.prod.outlook.com
 ([fe80::ea13:c6c1:9956:b29c%6]) with mapi id 15.20.9253.017; Mon, 3 Nov 2025
 10:17:11 +0000
Message-ID: <ce91f141-102c-434d-a8c4-1d8e7ab5181d@oracle.com>
Date: Mon, 3 Nov 2025 15:47:03 +0530
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: alok.a.tiwarilinux@gmail.com, aleksander.lobakin@intel.com,
 anthony.l.nguyen@intel.com, andrew+netdev@lunn.ch, kuba@kernel.org,
 davem@davemloft.net, edumazet@google.com, pabeni@redhat.com,
 horms@kernel.org, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <20251103090344.452909-2-alok.a.tiwari@oracle.com>
 <05a823d2-231d-47de-89fa-9648e47cbfa5@intel.com>
Content-Language: en-US
From: ALOK TIWARI <alok.a.tiwari@oracle.com>
In-Reply-To: <05a823d2-231d-47de-89fa-9648e47cbfa5@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PH7P221CA0009.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:510:32a::28) To DS7PR10MB5328.namprd10.prod.outlook.com
 (2603:10b6:5:3a6::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5328:EE_|SA1PR10MB6614:EE_
X-MS-Office365-Filtering-Correlation-Id: a259a64a-092f-4c47-f3b3-08de1ac226d8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ei9PU3V5VTFVNFQ3cUV0NjhDS1EwQk9XWjRVd2Qvenp6bFZJRTFZcEpBSFFI?=
 =?utf-8?B?U0F0SStUcnRnTSt4am5aNFBEVVBMT0E2RXJtNHVsQlZCZmF2aE1UWlh0TEJt?=
 =?utf-8?B?RERMN1Y4TFJZL0o0RGxMcFdLQUU0eUlzTjh0T1RYQXd2S3dMTnl0d2hwVkFN?=
 =?utf-8?B?U2pROXQzVmR6RklOUG82Q1NuTnVnUXV3L08vOXdZcEY1QzJNbjJvSTR5VjU0?=
 =?utf-8?B?UWtSMHhTSE5FdklzbXZCSVh1QkZMRGZkWG5udEQ1NDhMb3JVNzVoVWFvUERa?=
 =?utf-8?B?TGhGYlVVelRVdjU0djlkMjBLRVRxUmlKVkxibklyWVRLNzZDMm13OWpUZmdH?=
 =?utf-8?B?SWFUMmc3dFF3Q0RJY1hZNlZLaTRpSlk3dFFoRWJPUW50ODM4N3o1RnRQZ2Y0?=
 =?utf-8?B?ZEU2VnhnTDYvNWljSnpQeUtzNG5FRkc5cGliaXR5OWloZjExbGxoZVN5K0hY?=
 =?utf-8?B?YUl3ZStVSDNWNmtPVEpCVnhkZ1RkaThTMVFVdU50WVArMjFtZFBYL1U0NWk3?=
 =?utf-8?B?N09kemk1UGpTSlpXSHNUWXFKZS9aN1NBTysrV0FJVk93amsyODE1V3UvK1V0?=
 =?utf-8?B?dFZxcTQwWjN1bjRUVEwrbXhvbGV1MWRVazVuNktCaEt6TzlkSE43V1JUWnJ5?=
 =?utf-8?B?dkhHQ1NzaFBIeERPWGt0YXpaYTZwNTRTQlE0VDlNMk0wL1dTdmNmbTUzSG13?=
 =?utf-8?B?Q216M2dUNUVUZmt5cCt3OUZMSlp3TjRaT3BBZkxBYUZtRGtRQ1VzVVYwM3J0?=
 =?utf-8?B?U0pmUWYvVVN5SkpZUGFGemwweVJNY3hwK2YzZlVXM2dBcWdwVGNhWU9sYnlF?=
 =?utf-8?B?K0QyUStNSENtTzAwOXhJMGdNbkdrU2h4ZVdseU9xZjdnRlpiZUdQZjM5cGhB?=
 =?utf-8?B?b0JBdGljQVVIMFpqcm80blloUkF0eGNSVTJtNWRDSnFQS1JLZm9BUFJucEZ6?=
 =?utf-8?B?dElGUUNNZWZmYkxXS0tEcmp2a1ptcG1YbFRvNkJ5ZDJrSDBBd2Z0V3ZWb2ow?=
 =?utf-8?B?ZklWTkVDMmMxOHFlNGI5V3VCU3NvZWFSRzROV3F6MURTeStROEF4Z0lHNkN4?=
 =?utf-8?B?d1VwazZpTURQbFJOZXV6ejl5L1hjbXlZS1grYno4QndIM25sT3NvWTBCMnFZ?=
 =?utf-8?B?RDVrRWs0Z01CdFJNL3Q0aW1odUJWc0xacU5LK0NXdHhpak9QUkxSK3RxT0FH?=
 =?utf-8?B?aFZqbkZJWWIvbGRkUlprMm9jYldpK2Rodk1wSW5WN1pMdDV5cjVzelA0SGZQ?=
 =?utf-8?B?WHl1NFVqS28yZkxqbHh1RklZYmxlNi8wcjdqNzRzRUZ1ZE9QRysrbWpCdzJn?=
 =?utf-8?B?TXhoZFYydEJkZ1poUHhnRWdDdXZ3N2o1ZEpGUnB1dVp5cjVzeU5mTHMveWxl?=
 =?utf-8?B?M2RQNFA1aTRzays1YjdsdEkxSGJWbytDMnowc3hrbVBIU0xkOVFiZ2ZJMTYx?=
 =?utf-8?B?ZGlsOEFyYXJnYTRmc2VJSW1DLytNd3BrTjRVZ0JVSmJnekdDYURmeDNBQm11?=
 =?utf-8?B?RjUxc2I3TzNzRlcrR05MbFFhcEtESzVEQlVnMzY2ZFRIV0FtNW1NZDlNY0Nl?=
 =?utf-8?B?WHVUMk5rMVhIQmVjWG0ra0tieDJyMFlXczZUdUd2QnJYWUpsN2lVNGpVY3lX?=
 =?utf-8?B?OHFnNnZCSnpobEExa1I0TzV4WXQ4RmwzWkN5bWgxaHpQaEoycnJaeWlQQUpU?=
 =?utf-8?B?VGhNVlZaS29OaUdGUlVJMWZINE1IemI3b3pOVFdEOVdjVi9XTkU0YWx5NklN?=
 =?utf-8?B?Y1BEU01wWFI2LzhWQ1NlU25kNUZzRkhjRFJiYXlQeWtZZGtMTng5ZVJsMnJV?=
 =?utf-8?B?a2tKUFZZa2Q3blFONFRWYkYvNWc2L0NFWUpXQVhvMXROWDNsT0IvTTVEaGR0?=
 =?utf-8?B?V1pMcndtQWpJU2lBYWMwRzR2M08zTU9ZOWxKSjJBY0RlTnc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR10MB5328.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZFJMd3dCMGtVQUJCYS9wWWNGWGJkNi81aC9tNUN6bkRIYnhDZFZ3OHp6cDRv?=
 =?utf-8?B?bmUxZjRqRks0bzVqMGJrV1Y0UWgrVXliOVlEdnZIL0RZUk82V2FhWEYySlIr?=
 =?utf-8?B?L1BqQ0d6aWNnTmhZWTBFS3p5Ym5GWDlHRGxSSis4VTB5MnZVZ3M2eUJxT0Yw?=
 =?utf-8?B?cmM2VXZ2aTBEemVUU0c4TUtUMGZkVUpCZ2xhOGlibVhIUGlWNk9YellnWmlH?=
 =?utf-8?B?THpsdmsxaGcvUlZVV0hjNFhaZlJuU1RDVEFwbnh6TC9FK3hhUEwyRTBXNGly?=
 =?utf-8?B?T3M5WFJTY0RieURHOFY5TFlnQnUvczlHU2x4SWF1OSthZ0kybHJqSjFyMzJG?=
 =?utf-8?B?dE9KS2djdGJWcmRvZW5EQVpyNEdQcUhDZXBoR2JuSFd4VVFXL1dGanI2QXpW?=
 =?utf-8?B?MEJMeDZQTE5yTnJrLytsbE5CZEMvYjhiTGJKWmFFSzJUcVpGcW9MTFV0ektm?=
 =?utf-8?B?MTFkSm1TZnVvM0VjT2tsM1B1TVAzTTdRV1RscGFtOCsvWS9VNFpyMW1ubUR1?=
 =?utf-8?B?eEVabkhZWE9TaUhFMjhZdEMraU16bU91ZEhxNjdHSDQzKzFUSnc0VGtxYmxI?=
 =?utf-8?B?bDBPejFBdmJCMnBZNVV4UEVDcjZpS3ZpSVlGbGdaSjVLZUovSFp4N2tRa3Qw?=
 =?utf-8?B?YWU3VzkyVlM0djN4V3J5NXFseUdsc0dYTkpVZGU3a3FaQkhVbklnVG4zY2FV?=
 =?utf-8?B?bmVyUWI1SFg2eHVjeWtraXhCU0l5NjRyNjF0cyt1aUREUFpkQnJHYlB0bmtK?=
 =?utf-8?B?YUh1bStJV3BVNjZvc2VXVG9jMEF5RTI1QlFvdnhzL0YyYnc4djdRMXczZkdk?=
 =?utf-8?B?WjRzeVR0RjFtVGQxZjkvT0tVYlpML2Jiamp5eWtNNGxna1h6eTFPZ0lwRVE1?=
 =?utf-8?B?dXJrdnBJdS9tTHBkSW14UUg3cjh3ZjRWa3JUdzhGZ0NJeFo0QysyMG05cWxG?=
 =?utf-8?B?NDArSDZ0QXJJN1M1blA4UDlMdHNkdDd3SHlGM1dxaEpVSE1QSGdtWWp2VGtY?=
 =?utf-8?B?cGYrTVA5WWpnRW9RNFdYNFdlZHJjdVkrbHp2MDhQWDdBVDdKUW1QK2dUL1hF?=
 =?utf-8?B?c2pSNDNiOERldTY5RklPRm1DOHlDSnZWdC80TXJpRTZva1dwOTZsbHA0b0tt?=
 =?utf-8?B?d0M0K0U0NUJmSk1NSTBqamdFbjZTcEVCdWF2ZEJBMlNsOTdwR2JhcWZESHVY?=
 =?utf-8?B?T0s4OExpOGxLd0xINVZaMi91aG53VzFEUm1Pdm5kNWdOZVJmWnR4SytLS0c4?=
 =?utf-8?B?MG1KWnRXM0xCSWtSOHdjZUtpMStmQ2t6NmNTR3krcGZ2d09jOG9pOFptUFdh?=
 =?utf-8?B?OXNldU8rNmtXTkM1TjFWMUlxN2JKUk9xWlVEMHUvQkg3U0xXNG1JOEZob2tm?=
 =?utf-8?B?eFh2WE1VdmIwZ0U5MTNocnB1TzZCaDhVajRreG1qMG9Bd0JrazMxR2xjd2dk?=
 =?utf-8?B?b0RHRkFGNUV1RjZRc0pTUkhJNy9QcGxUTUhwQVpkS3N1NHREa0x5ZGRRK3Nl?=
 =?utf-8?B?UFFKeFZOZW91TjI0NDVhNWZ6eHNLRmpzK09DSXJzMGQyT2h6dnJVMmJOa0sr?=
 =?utf-8?B?WUZrV2tiMXh6Vklxa2hac2dieDEweGdmS1BWOFZuQmVDbGFwSFI0cEwzdS9G?=
 =?utf-8?B?dEZYMUNhNkFSWkgrNTZla05QR2poamtyU3N2UEdJRkZ1eDlMSngzWVNVZkdn?=
 =?utf-8?B?UUV3aXB0dkN0SXd2d05iOTNUYUZWRjZibkMvekRSTTc1VGh5WjluMExxb1Vp?=
 =?utf-8?B?N2p3SERseUhXbFB2SEFmbjcwcExnaEJaZjZpdUNlYjFlYitraEZUZFpUTCtr?=
 =?utf-8?B?TWpXaysralQ3NU5SU0FLd2lnSmx0QzhsbnAwdU5KZEVKRXhDemZBN0FjdG45?=
 =?utf-8?B?MFFNdFBvODN1S0czbjY2TEdleEd4WTJrWEY1YlJXdVhyZEVqZjFRRENEV2Jq?=
 =?utf-8?B?RGNHanVTKys4NFI0Tkk0UDFaVHdSUklUUzhoZEptZnVpbE5Ic3Y3Q1FMMExj?=
 =?utf-8?B?MldxeSt3aFo0OFV2dGNWbXZhR2FGU2ZJa1Z6eGtYVTlVQXdaRmIraHNTTFM2?=
 =?utf-8?B?ODNNTFFyYmhoTWpmSmRSRGt4MzVzQTJaQlVnT2pHbnpPeFBXZk1FVTkvRVQ5?=
 =?utf-8?B?MkZ2dWJVZGMwOGZwYUdlbjEzYlk1dVZqS1Y2Y0xXU1huUm9XVjFpaFUwbGxk?=
 =?utf-8?B?UFE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: uUOePAWzIMrvyUKkH1mAVolm8djzJpTGdMXrbDXMEoYaTSQOLBPKiiU+GaSgmoGLYM75+Vs6iJ25QjKvgI8Ej2MYepZvj9lUOosJvDvDnOR1uh+cDiPSxHbtZ0vIasP4HMJP75FN/fr0HVF/lo4iZ8898HB3nodRSC/C1t1vn32cXrbLYWpihSpP5kTusMYRiO2mFF/hxTFqsuX0VKURIKxhvpmGoEs1iL2NQego69FciYTInXRVEb1IyO2VqtIBqiz+8Tp6nOl0Kk17aHVnrKxf/Z7XxQJxC5ROCL1TfvxqqCJunU6rrukW6Xh2v+k5zvK0rxmpY19+A0lURtmQMu1frFG8ZIF9JVG4V06bMBvtOKgtSQQVpIKZRGHNbIjGRpWKL7P1jJQnwoLiR138xjImiSovSXGCmujdo/tecr6N6Mu5+ruyKebXFAcgf85/wdPP8OEMW4h7gNecfg6t8nMR1N2YyZgxvRSJMtXX8bKBL4EBREoFAZbBws1hyyKqVPXKvv5a736Bn078kyOxiJGwtYixz2O3XX04qTM8VuWy2hWf5QJV19Oj0QO7FnKbVL11CI5zjXDw+u6M4DswPUtUNie/hVsxe6plfWWk008=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a259a64a-092f-4c47-f3b3-08de1ac226d8
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5328.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2025 10:17:11.2802 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kd12pTQm9/Ayh7nWMeitWGyY0r/0gXz6GlGvFM7JmgYFPCFjH+BlkueARYYn0Ygp7F8mKo2SIJb0OTLNKeeRubVLSvZ8/v3OCIqBkXWXGLY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR10MB6614
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_01,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 mlxlogscore=999 spamscore=0
 adultscore=0 phishscore=0 malwarescore=0 bulkscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2510240000
 definitions=main-2511030093
X-Authority-Analysis: v=2.4 cv=TMdIilla c=1 sm=1 tr=0 ts=6908812c b=1 cx=c_pps
 a=WeWmnZmh0fydH62SvGsd2A==:117
 a=WeWmnZmh0fydH62SvGsd2A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6UeiqGixMTsA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=uherdBYGAAAA:8 a=VwQbUJbxAAAA:8 a=QyXUC8HyAAAA:8 a=yPCof4ZbAAAA:8
 a=UPVFkPlpD1WrpORtNNAA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAzMDA5MCBTYWx0ZWRfX5fzLtxYTooof
 9a44Qtt9AaU5MRicBKmFJQpNda1wOUU5zltDRgrmWYkvugU2GgXc+p1odl+inbhMUznfHPho0hg
 /lbhKip/h5CvFhvCZ1WlT4BQ/ckXFgyd6TdHd1HqpuhKKqcv88/bctrrc5khox/D+NOYXAryOcl
 CBjh0L52sc5ptVxcJG8A8uZmGVxeuPY8ybOCdHvjM02jnzsDITNYgwztiOx+N9jQ8kUKxgr7L9j
 Ps2eVpWP35Z7TDFvtRvKUjZihagft8XuK7HtzjdcK8G+TBZMw7O0o7A1ixFwv4NebvRCySaHwDe
 I1hqOKH4b+lfBQBelmXIDLG6lCVNO7TFlN8W5/l1URx3DwtGa2c3M00zJBA3bq87ttzdWFG5Ukz
 vx5X3whNwGyJ/tCFboJQ+HsIo7TFYA==
X-Proofpoint-GUID: lQQhQRlnjD72wXePL9HOjPyKlG5FfXx8
X-Proofpoint-ORIG-GUID: lQQhQRlnjD72wXePL9HOjPyKlG5FfXx8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2025-04-25; bh=xAiEq3gG/U3SCYrKreCzaiYIfBrmSqF6YxjiMI5wfBQ=; b=
 dDgbqWLeJjYHxPwCKR7R9o8FygDf/KGXT9qyGb41nr0qPbKINeOyzt7x2/mYUDIh
 TH53DugUSUL/GiVTb/0K7KqRWmLb3wbqcbR6p8/XFnef53GXKFSl5+lSP3NQORkB
 8FWE68SX5OSZ9C1VWkXP/X6fSvPwDHLWTIjs/Qy/ziY5zL/Z+nZ3J5aMyKP+HhpC
 ZAM0rrKUvPH8Mf/eK4BUCCABzh+m03ZFkMSYLLOhPij1s5VQkNhIY36TpmCmnkAy
 fhGl0ryA4zAvKyLzcGHWh/wOMs2a2x6P0GYOSg4gvbWbs7bsXzjl93IZeTi02mCK
 d2A32Kg4FgCJhwoszH7dew==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xAiEq3gG/U3SCYrKreCzaiYIfBrmSqF6YxjiMI5wfBQ=;
 b=vxQ/7pWUzlKVcyv3bH6DUTkyoSMZJk5k40p0ai3g7sgzkdB5OedRIX/FBP7GkPX0GUMiVhveSFm0yqroeM+2m8qFBac7efW6xZ3eiAY/vfmY83iKiyj2lrqZ6cTyKTbpz9p4Bjli3qVSZSI1TX7Y/4zRPCBGefcj2ueePQTV5pY=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=oracle.com header.i=@oracle.com
 header.a=rsa-sha256 header.s=corp-2025-04-25 header.b=dDgbqWLe; 
 dkim=pass (1024-bit key,
 unprotected) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com
 header.a=rsa-sha256 header.s=selector2-oracle-onmicrosoft-com
 header.b=vxQ/7pWU
Subject: Re: [Intel-wired-lan] [External] : Re: [PATCH net-next] iavf:
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



On 11/3/2025 2:57 PM, Przemek Kitszel wrote:
> On 11/3/25 10:03, Alok Tiwari wrote:
>> The current dev_warn messages for too many VLAN changes are confusing
>> and one place incorrectly reference "add" instead of "delete" VLANs
>> due to copy-paste errors.
>>
>> - Use dev_info instead of dev_warn to lower the log level.
>> - Rephrase the message to: "Too many VLAN [add|delete] changes requested,
>>    splitting into multiple messages to PF".
>>
>> Suggested-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
> 
> thank you!
> just two minor nits, but the messages are good already, so:
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> 
>> ---
>> https://urldefense.com/v3/__https://lore.kernel.org/all/47f8c95c- 
>> bac4-471f-8e58-9155c6e58cb5@intel.com/__;!!ACWV5N9M2RV99hQ! 
>> MulRvlOtC3JAON-O816_nR2P2geYBHDIx86XOr_i1afc9gjSrXfpcVwFmP6uM0p1- 
>> kFN64zBSLjwS3XvTDQ6nJ5R2hyIaQ$ ---
>>   drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 12 ++++++++----
>>   1 file changed, 8 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/ 
>> drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
>> index 34a422a4a29c..3593c0b45cf7 100644
>> --- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
>> +++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
>> @@ -793,7 +793,8 @@ void iavf_add_vlans(struct iavf_adapter *adapter)
>>           len = virtchnl_struct_size(vvfl, vlan_id, count);
>>           if (len > IAVF_MAX_AQ_BUF_SIZE) {
>> -            dev_warn(&adapter->pdev->dev, "Too many add VLAN changes 
>> in one request\n");
>> +            dev_info(&adapter->pdev->dev, "Too many VLAN add changes 
>> requested,\n"
>> +                "splitting into multiple messages to PF\n");
> 
> perhaps it is too much bikeshedding for such a change, sorry, but
> I would rather remove the newline in the middle
> 
> nit: another thing that I would consider is to differentiate the 
> messages (v1/v2 or A/B, or whatever) for different protocol versions


Thanks Przemek for the feedback.

I initially had the message on a single line, but checkpatch.pl 
reported: "WARNING: quoted string split across lines"

To avoid that warning, I added the "\n" and split the message.
I can drop the newline and suppress the warning if the maintainer
community prefers.
I just wanted to stay consistent with checkpatch recommendations.

good point, I can adjust the wording and add version tags (v1/v2)
now The messages currently look like this:

dev_info(&adapter->pdev->dev, "vvfl Too many VLAN add changes requested, "
          "splitting into multiple messages to PF\n");

dev_info(&adapter->pdev->dev, "vvfl_v2 Too many VLAN add changes 
requested, "
          "splitting into multiple messages to PF\n");

Thanks,
Alok
