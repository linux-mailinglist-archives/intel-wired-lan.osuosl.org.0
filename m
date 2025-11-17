Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 728F6C639D3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Nov 2025 11:48:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 06A9360D98;
	Mon, 17 Nov 2025 10:48:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nHBhkkueQsGJ; Mon, 17 Nov 2025 10:48:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7764260D79
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763376531;
	bh=9V32TL9kPMPPV+/m214T5/YunaDR0t5/w5ha7Gw99Oc=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nfYVZoXdIbw3qxNl2ZdQucS7mwQgETqj02nBIVbxxkh9niFsBa5AL0L/GMHLud/WA
	 Pw0eQUa+yevUpzbyNr3fcZZNsuDl6Yqrp8FoTOxjth2e1Ii0IGSHo2ZOvnk2Z0k90c
	 X8QOQd1G1giv5ehfEK8qliFUDRZ57CxgkabHm+8v6HVp+5+HF14ka9i4VjEeDuJBJP
	 yBA4gOsXw9X7H+VebQj3uDpx0LtE47t4J/EWe3Rs1ZNqkdAxQhoyzkfloSYwHCAa+t
	 1YXI6H6uQlOJVAao4k2fGp8O6qAUbU0YS5lCLqPYBTEC9lYdPdNx2Td+YtMR3kF2YH
	 17/MmoTpqv9VA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7764260D79;
	Mon, 17 Nov 2025 10:48:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6C7F31A9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 10:48:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5E42C60D71
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 10:48:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id euS0ol6r_dDz for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Nov 2025 10:48:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.177.32;
 helo=mx0b-00069f02.pphosted.com; envelope-from=alok.a.tiwari@oracle.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3D94F60D6D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3D94F60D6D
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3D94F60D6D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 10:48:48 +0000 (UTC)
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5AH9upao012028;
 Mon, 17 Nov 2025 10:48:41 GMT
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4aej8j28m8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 17 Nov 2025 10:48:41 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 5AH9AFm4007938; Mon, 17 Nov 2025 10:48:40 GMT
Received: from byapr05cu005.outbound.protection.outlook.com
 (mail-westusazon11010008.outbound.protection.outlook.com [52.101.85.8])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 4aefy7gutt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 17 Nov 2025 10:48:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=v/t40cBz8OoNjoqhW3lZKgiCz7YLDK+LDKQqGDyC/qZWrRF7ZPSwTAPK6SV2THkcWuxA3XeEKFzsm4NeVCGTsR5SBCjT7/pforv4rkKyPpHvHexTeIpFwTim2DagwM1XeimJhD0oiJnrROqVQgBWdYqDGGRbFktYWEVXk5myJBcUn/eojM68KtEiKDqMtTxxGJQme16qwGJjyYxbKQcbFKKvD68ZyIdtS+SsB0RRat0Z1J+Up27kR36bRLhudPzgHmuNE/BPc6iYRFMlvBPxZbpio91hP1Sz5kkUoN8yY/DREORrGmJRW4R+KO62axk0tzvVftnr2/6SqaWyjTssbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9V32TL9kPMPPV+/m214T5/YunaDR0t5/w5ha7Gw99Oc=;
 b=ED5YWpfTBZV+JpHCN7QmOSVzeUhExsYuwlpc20rfGssPIf+DrTaw3m8X1Ez5y+3VVZSJXqHuUxaSvK14l1A+1Xbn4UfSjAhhSxBpAeZrR/+An845DpFD3ONQsefGMkFLyuOjkUuYMcvTFoioqNW54K1euy59+hABKoCDzlkY17+81Sy8CYKrEnuJSw8hrAKPnYGd8SYDgymxqYKMkvWq/JDHjlStJH7ZFqsfnSm0hrHSugJM7UxfwRS+MpaMP+nys88RjHXkZhZGYez1fCTN+zlAc8L9rD6qCuFKW3FWv9xUCGumxR6q4baCVjVmhwxNORkQ9CRvZPzlwGOzmkL3FQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DS7PR10MB5328.namprd10.prod.outlook.com (2603:10b6:5:3a6::12)
 by DS4PPF67D158296.namprd10.prod.outlook.com (2603:10b6:f:fc00::d23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.22; Mon, 17 Nov
 2025 10:48:10 +0000
Received: from DS7PR10MB5328.namprd10.prod.outlook.com
 ([fe80::ea13:c6c1:9956:b29c]) by DS7PR10MB5328.namprd10.prod.outlook.com
 ([fe80::ea13:c6c1:9956:b29c%6]) with mapi id 15.20.9253.017; Mon, 17 Nov 2025
 10:48:10 +0000
Message-ID: <519b3bb9-2fa2-4447-94b3-91c7a45bf54b@oracle.com>
Date: Mon, 17 Nov 2025 16:18:02 +0530
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Cc: alok.a.tiwarilinux@gmail.com, michal.kubiak@intel.com,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 andrew+netdev@lunn.ch, kuba@kernel.org, davem@davemloft.net,
 edumazet@google.com, pabeni@redhat.com, horms@kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <20251117102244.9188-1-alok.a.tiwari@oracle.com>
 <8347f99e-8f00-43c0-b492-4b0b6653bbe5@intel.com>
Content-Language: en-US
From: ALOK TIWARI <alok.a.tiwari@oracle.com>
In-Reply-To: <8347f99e-8f00-43c0-b492-4b0b6653bbe5@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO4P123CA0502.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:1ab::21) To DS7PR10MB5328.namprd10.prod.outlook.com
 (2603:10b6:5:3a6::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5328:EE_|DS4PPF67D158296:EE_
X-MS-Office365-Filtering-Correlation-Id: 2f93323d-8100-41ff-28ec-08de25c6cca8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?K0NISjhHYXNZTmRhdDVmWlkxR0JKZFppeVh2NzM3d3ZaNDZuVTZTVkd6ZjZF?=
 =?utf-8?B?aEg0bkQxd3FvVnFOMXo2c0c1N0hJK0pycmJZWlJ4WUNQOHhaNnJRZjJTcVlJ?=
 =?utf-8?B?OGt1OWpNUUVoeGpJODg3b0RXWVEwZmpCdHZscWNrbFdoODhPSnB0L2ZFY2RW?=
 =?utf-8?B?ZWdNNXhZZHluTDQ1anNJTVVMcW5WOEFHMXJoNXZ1Y1dYRVlDMnNwem1uMEVs?=
 =?utf-8?B?dkxDZEVTSEFjQW1xcm1aY0tXRHp1elQ3SjJtRE50Y2F4a3IrMGZCcTJDOHRh?=
 =?utf-8?B?MmJtd1VaV2xHUzJvVFo4dmx2K2NvdEFEM1BNK0t4RUUwVHJxREZKMlBLaElV?=
 =?utf-8?B?enhNTVN1NUhYRXRIdjlUc29SblVwTXRxOUJIa3lGOHBlWFVmMUNsYTlKMk1D?=
 =?utf-8?B?aHluZkNvS0pETkRHZ0NzSWp3MkQxdUZOMkUvS2Jnbm5SM3RvV2RWRThjTnJq?=
 =?utf-8?B?L2diN1NBZ2VNZklMdVB0TG5QT0NJMlVyNXhzRGlncVEwczhzY05kaG5Idm8r?=
 =?utf-8?B?MTlSVFhBaUJxYldrR3p3VkhmaTVYaVdvdjJJUFRXYk5xbGpJUFI3ei9DYldZ?=
 =?utf-8?B?MURDRkhoakxtUDdQZjdldGYzVEpFbUVaTTNWVENKYTZnbVUxa0hnUUNmbW14?=
 =?utf-8?B?a3pIcEhPTWIwQnJMYmp3ZnBDb3hEUXJ2bno3cm5WbHVCY3d6S3ZXNExBZFJJ?=
 =?utf-8?B?eGUva0Fjdlo2bWFBZTJyTTVtcWhsWHo0dGd3RmNiRmpTSDhhcWJxZmFWNitv?=
 =?utf-8?B?anBZRzczaDEzQzdXcEZNU296K3I0TE5ubzVpMTVoVXhLRitpeGRjNjFSQVlB?=
 =?utf-8?B?VXBIRkpBZE5jSmUrVnpJaG9ZVHhucUcvbnBPU0srZmN1eUdsYThzcVh1OFRJ?=
 =?utf-8?B?YU52MWdwcEFQQlM4UDlsNE1iNFBoT2xuU1o1b094WFVvRjdMVFFkZ3VuMEhp?=
 =?utf-8?B?S01NRTluOGhhWFAvUEphWkpKbmdwUWFkU1pWV0hFZ0Eyb0xMLzhSbWFoQUNG?=
 =?utf-8?B?NWlGSzN6WG4zM2czcytjaFhUS2IwR1lJMTFzVTNHZjB1THRmd1d5Y0JIdVFR?=
 =?utf-8?B?SkdJMGtaV3c0NEVoUGtRSVI2Z3hEdDV5Q3U0SG1kUHc5VzBRTThDcG9SSjQ0?=
 =?utf-8?B?RHZMUDNrMVdXWHNDMm5ITURyNXdBak9mbThQU3MzUWxaUy9hZG9QUlZsRGVa?=
 =?utf-8?B?MGN1T3gveldIUFpsUEVSQmpNN2kwY0NCdUV0K1NsZ2ZSQTVCS0Y0V3lOZmg0?=
 =?utf-8?B?TGkveEIwcWgwRkxYUlcwdTA4V29SY3JLN1NZelNaSThZTWZCbS9iWGFaMTJP?=
 =?utf-8?B?Vjl4ajlQb0RBc0N5VWZwYlQ4QlhFUGs2ZXc5andYS2xNd25ta01CQWcxUEE4?=
 =?utf-8?B?aDhkUStyY3hZcnNyUmJMaFVxaDNDa1k2UTdQd1RYM0xlakEyL2sxa3JVVVVS?=
 =?utf-8?B?L3NUbkJ6amY1UFlVeVJkMittSk93QXVuR1Zla2thbmViQ0JHQll6ZVR4am5v?=
 =?utf-8?B?dC9XVFdRUjNZaTVQNUhXUHQyOG9vUDZQVCtjbEUzN24zNnZKOHFKQ2x4TG5M?=
 =?utf-8?B?elNGWlpka1pzQ0NxQlYydFdSSjBrTWRqMXhESWRmMlhNYy9qVjFNV1R5ek81?=
 =?utf-8?B?SXBYbWovS011ZEwxU1JDeHEvT0cvUjVjd0psOXJoMHZwSG85SjhROFY2aXJo?=
 =?utf-8?B?ZisxaEtTZ0RJMk9ENHNyUDh3L2k5aHk1dU1oNDJ6LzhTams0Nkw2TTFGTmlN?=
 =?utf-8?B?ZWx5R29GYUNHM09ONTlPcXJPUjVtNXBBZ1JWMVMzU3dwdHQ3cnFoWDd1bWpp?=
 =?utf-8?B?NGV1c2tRRmFORmVyakV0YXhRNjZRaE9YcE5mYlRoOUozU1FwQzM0d1BhSG1R?=
 =?utf-8?B?ak14QVIzVzVnYm82VFB6ckF6aDRzUXlwMm9TNlVWTnFLV1JUbE91elI4a2ZN?=
 =?utf-8?Q?DNa9xM001gFan192VokFebASowB67ILU?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR10MB5328.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L1FlSS9hQnU2QlNObTlya3pzWUpxQzhPZEl1TWM4TXFYWk9uU3RabksxYkV5?=
 =?utf-8?B?SnBHanNuN3YxTTZNUFY1TWZVdnFCTnF6RGN4dUJLb2MrVU8yMVhGVXBoNVF5?=
 =?utf-8?B?NHltbDJ2QXliaDRHMEQyQVh2REdwUEFLV2RwY1dhekdwZ0o5V1NsbjhaTmht?=
 =?utf-8?B?ZWw1a2pEN0NFVVAvcmR1WGpLdmJvWHE5Uzh2cHhNN3ovaTFCRW03NzV1cm02?=
 =?utf-8?B?U1lObitVUW9HV1dXcHV0ME55RFF3aCtQU1k0UVdBNStudmlCSWlDdlpFNlRH?=
 =?utf-8?B?VjB4OVYySXlNRXNRRjlRN3Rhci90N3ZQNkp5allNZUlaSXRqdjU1TysvTDNV?=
 =?utf-8?B?enQvaXVISjRUVy9KYVYrUS9KV3EySTNFeFNVK2Zpa0hLd2JEUHBRN3dGZFVm?=
 =?utf-8?B?amFLNGdLRDUxc0NBNXV6OFFxWTFxbXlRSzFNQWhraHR4ZkV5eFNNTEV1WUpq?=
 =?utf-8?B?MjFFcTd4T1NrMHY1UEtTempZRlFiY0VCQzF1MzljZGpUcDZkbVlDZmwvNXNP?=
 =?utf-8?B?czhSSmRSS0IwdGYrQVdESW1kemhweWplMW9WSVRZTXVaL21rWWltNmFPOXRm?=
 =?utf-8?B?MUxCMXhOeGhJTDh3RS9waW10UFRMT2I4TjJFdThHVDZRRUNQN3dqcnQ2V0dk?=
 =?utf-8?B?cDJXY2x6YUM0K1ZYd2VLZlZmRWVBNG1UOUxtNysxeDdISG9vNjI1MDB0ejBU?=
 =?utf-8?B?WXV2TktrNVI0SmZMbnE1cjU5VDVncVNOTXh6K010WjhzK0JZWHhYa0o0Mi9M?=
 =?utf-8?B?OG4vTVZSaXZJRHZoQkM5ajRYY0JSdEpLSlF3MEtnS25ydExKdkN6TlROWFFG?=
 =?utf-8?B?OU81bndIMzJJNHE2cTl4T0FPcTkxZ1NNV1BEUVUwRE90SHNZZi80VVFlMDRE?=
 =?utf-8?B?UnR2SEp0cFZZdU04STBFaVhiOWIvb2d5VzRBY2Mwb1hibFpDd2xVRklVYzZT?=
 =?utf-8?B?TTE3anpaaVlMV2hpNVpTb3lsUldNUmZDb3NVZzJsRTFiOVVkMFp5a2Q0S3hz?=
 =?utf-8?B?cHZtVU1Ld2FVbU84NmxyOWRXcE8vYnpReXVTOTlGWUVzSnZiWXhxUlNxU2Zp?=
 =?utf-8?B?THVNbnVSaGRTbkN3dDFvcDFvNERJUlNhV2lOV3JLYW9hT1hITTl5ZHdBcWtn?=
 =?utf-8?B?YUJoanI3cFptenNZM2k0ZzVKTW11WWxzMHZEOXBIdzV1QzRqWnUrVjd1V1A4?=
 =?utf-8?B?MmRTeHVzRHIzVzRvc1hnaVVCeFYrdnppMERyZUl5ZCt4Q2xyZndlZ1Y0OUNi?=
 =?utf-8?B?dDF6NlZNUEFJajBtcklkQjM3NXFoTDNieTFXRnZJVXRrWEY4SEw0WnRBSW5R?=
 =?utf-8?B?cU1OeVRvMXhnR1piRHUzckNtYTA5UG1IUGNzeS9adUQ4b0p3alAzZE5aUnp1?=
 =?utf-8?B?QkpHS09Sd044VUw3SG1uMWpWYkdxOHFzLzFyNk9SbVBXY1lRblA2WmdZY0VL?=
 =?utf-8?B?QTRCSmwyUitGTm1uUldzVGd5QmtwQkhnK1NFV0xRdi96L0tWMFp2VzY0T25F?=
 =?utf-8?B?RWZZQXllcmNYYldIb29yRDgycVlZZDlQK1E3ZWhmUzZWK2tINFRHQWRGdlFK?=
 =?utf-8?B?b0NKdUlIT3M0Vjd6dnN3eHdoNUd3VnZybStzV3YvdGRncUFXdE56Wno3MWF5?=
 =?utf-8?B?SEZ5VGpHazdFQXo3R3VMV1hndHJYZTNFUHdPeDdFcU1JTVpHUGs0Zlo2UmRl?=
 =?utf-8?B?WTNZS0ZuM1VpYTNLSGR2dG9yZ2hubWNRd3d4YVlxSTk1UVMwaHBBQ1dpeEhJ?=
 =?utf-8?B?aFdabWF0QUpSdU4vLzRLZHM2MndsU1E2YTAyRG1tUHFEUXJsVHI3SDBqZmlG?=
 =?utf-8?B?MDFnNDdQdVZYK1hFOEk3dSs4VjJhdmF3OEJMcm1QWkVMU0Q1RTUrRTJIM2Zn?=
 =?utf-8?B?V3dkdkF1WGVFOXFiY2tlNFJJbGZsSHlMRk9BM1FmQXlZSysydXk5cnh5S2E1?=
 =?utf-8?B?bU14alBNaTFidEFqQk5acXhhYjJvTkJMVDBQeHRwNXQ4K0pubng2R2RTN2FG?=
 =?utf-8?B?b1FyNmRhU1ZuK2I4MVRwQWt3eG5GQ3FFM3FvNHQxbGJJTTVVbGdoN2Z4R3Ar?=
 =?utf-8?B?RDBXRkJtWS9tUCtpN3FPN2pNK0hibDE5cWZCOXNVcU1oU05rZ2VhTWd2UTht?=
 =?utf-8?B?bzdvbE1ueDlxT3JXNnEzTEs1WHRJc2p6V2JsUHpvWnpKOFR6QWhnaFhvQkY4?=
 =?utf-8?B?Nmc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: WymRWlQh8XyxQpydUvrFWAiIW3DzwTEVXcpZ6oBV8WWUezFYQqgbW0OUSg0kWKwPDMK8YybDqvOI+kXHO26J/gypJgm0IKYACjDA+aNNL5vb6ekIGMzge8PDcNeTPOFU8yTYtelR0qzLbvVRPFuBMmF3uf24TxV/NMscGRF2kYHnnqobmQhZd/CCOLhelLU9VtV0QFp0UdMx9Ui4ZUlbAwf87EnnwM6kfWCf11V/qnAkAMEjITjmQCmdixsz47HJ0R0O/JC62DRVe7NuLWqGp0KuXgUAtv7FwcSdiMfYEqNHjZnTzw1fgnAWH/uQd8uYmA86PFsFvfP3W9w2N5tpjPyNAt8FnpEebRFOtKnGUY3anEbIjMzXJHvf8LYC+nn0IIQDHTZA4R0pN+5CbXEyyKcV0Fg25dpiLY8nbDfO91McEtiXeHKJesvqoqZtgocD8S0IF8XK7aaxvLCW0S6T/Ycl8IJZcQSklcitnJQnuoYX6w5JQ9VNg7KdFD/6gh/1C/+XOpRxTVQMdnOYND57xNu0hz/xV53NVu+im2R1AwYUXjSZOW9tABA8cQf7akB68E9XgywfdbhZ8X/us/Af2fX8zhmAA4904YyuJRNMbMg=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f93323d-8100-41ff-28ec-08de25c6cca8
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5328.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2025 10:48:10.2577 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nk8I1mdrTRknmPEy7f1oquBAjJzQxlBEl8XBar5rAcAoyChZ/ip1j/EfPYkBECYEATdwGWcTDX2puoyp+Ffk8oAhENQTs/MF9Y/6Pf0NjTc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF67D158296
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_02,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 phishscore=0 bulkscore=0
 mlxscore=0 malwarescore=0 adultscore=0 mlxlogscore=999 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2510240000
 definitions=main-2511170091
X-Proofpoint-ORIG-GUID: oS2bmDO_c1Z6Bs_IHyi0mPhulwpjkgPB
X-Proofpoint-GUID: oS2bmDO_c1Z6Bs_IHyi0mPhulwpjkgPB
X-Authority-Analysis: v=2.4 cv=I7xohdgg c=1 sm=1 tr=0 ts=691afd89 cx=c_pps
 a=OOZaFjgC48PWsiFpTAqLcw==:117 a=OOZaFjgC48PWsiFpTAqLcw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6UeiqGixMTsA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=p-_syvmvW6yRcjVXxjAA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=cPQSjfK2_nFv0Q5t_7PE:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE1MDAzMSBTYWx0ZWRfXxCvNzMLoAOyK
 EXg3e+FuXMJHb1QAmlZP641luO1pKSUGJbxTZqNCUwGroo/0y8HPxyBn9IzvM12ng8kcr0+M7cW
 NX7+CU2/LQ1I7DdDxtVqkEVap4arTNAIDMxeIPP0YyG1hzukD5+eqVcmq3DtGIeY2E4hWvtqh6F
 UVM/MX+6JcFOULH3kQBVd016TxDS4YLII1NeI5QIo4boxllUt8IYk48wToydBvhTnwZzmIEbwMD
 3YvrZeszJFDZH0uvqKXypkgyFLlkLrYZy00ctzyqxkDzslW7xkogsMYWjWp90O6ufUB4zboyqpE
 KzrZz0w/uEYYXQ9z6WKkW1W7LDlzwxGS3lYuIyGCFNdYyPeObTxTi3TsJYvm4357cfry1ttMFdD
 GGgO2uSbBJs/nZEtFeLuaod70ZZXGw==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2025-04-25; bh=9V32TL9kPMPPV+/m214T5/YunaDR0t5/w5ha7Gw99Oc=; b=
 bKScbo2738XJuUdySbH64c01IgXq/TS+/ab6nIXgTPMeLAdUJxajfFgWLO1uf2IE
 kSB+6ma8knsUFJQih7J6xbI2fVjBX/JbkC7P0+1cHeRxlWI/r2sriq1wWWDyk7D+
 LdDYR/+KqreTNg1O6wO2/GOo7etpZ6qkIFJBZZiI4Nlui+VWdC4bU6+MEEMcvlog
 OTw4t2stIfrjtQYRuVCS6SHl4i06Dpduk4PGiMS2zuTErGDTklo7TV8fXRR6d5/K
 +UL1nZ1IOf2V8qTYIf7e00iRADw2S6u8ecm/ljDvH8bN7sym/fhUfxkQ03MiF1mQ
 PK8hHQzHLBGOu8svDuPNkg==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9V32TL9kPMPPV+/m214T5/YunaDR0t5/w5ha7Gw99Oc=;
 b=nqpayk3YrFU0pyPhgE631NCWtj0EGUuQ/PGVZIIjoHeSLeXHaJ2QkUGJdVZbFMTuNoLAcBRUqf5SOeu9g8VLLiUCNX9INDDPJDCvJTJgioPrE/gbmEv2nsTC8Q1dcD7ujTDpCQdEdrvQ6nZnbyebcdMJXHMoP5/z7OeejyPdKGI=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=oracle.com header.i=@oracle.com
 header.a=rsa-sha256 header.s=corp-2025-04-25 header.b=bKScbo27; 
 dkim=pass (1024-bit key,
 unprotected) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com
 header.a=rsa-sha256 header.s=selector2-oracle-onmicrosoft-com
 header.b=nqpayk3Y
Subject: Re: [Intel-wired-lan] [External] : Re: [PATCH net] idpf: Fix
 incorrect NULL check in completion descriptor release
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



On 11/17/2025 4:00 PM, Alexander Lobakin wrote:
>> idpf_compl_queue uses a union for comp, comp_4b, and desc_ring.
>> The release path should check complq->desc_ring to determine whether the
>> DMA descriptor ring was allocated. The existing check against
>> complq->comp is incorrect, as only desc_ring reliably reflects the
>> allocation status.
> How can it be "incorrect" if these 3 are in the same union and have the
> same size of 1 pointer? Any of them reflects the allocation status.
> 
> While your change improves readability, it doesn't fixes anything at
> all. You can compare the object code to see there's no difference
> before/after.
> 
> C unions are not the same as C++ unions, but even if the kernel had
> `-fstrict-aliasing` enabled (and it's always disabled), the result would
> be same. And C unions definitely don't work like std::variant.
> 
> So this could only go to -next as a cosmetic change if you really want this.
> 

Thanks, Alex.
Agreed the check is functionally identical. I’ll mark it for net-next.


Thanks,
Alok
