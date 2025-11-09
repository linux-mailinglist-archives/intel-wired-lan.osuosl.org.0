Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AD821C44165
	for <lists+intel-wired-lan@lfdr.de>; Sun, 09 Nov 2025 16:33:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0AC0A812C6;
	Sun,  9 Nov 2025 15:32:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MUs8sRaejbFS; Sun,  9 Nov 2025 15:32:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 70CC5812CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762702377;
	bh=cS6b1tMf4cML9numgBiyJGSq0PI6fALflWjDzwW98bA=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AcuHzpSyH+USzU0/kyy9kb4BicpElpOZZYzhzOb3UFPwUhdTwbBdeBTqausHnaa9+
	 GtPo9iNnBnae1kXMYJ6uASL9337OwuCWBN2g7Fw9GniWHA9goQYhDHFEd6OsPJ9g7e
	 K4BFvWlXY5bcVtChnijY3jjg+TYMlXl9htN/rW0XqYV8TnT4YIoJ/oSMpstOXHBH7L
	 6C1JnJK5xCTMJLKpKcPmBkzkTZtnqBtkRvT6tciIvHHcU3Ferk1JprYdMcGdu6e5jf
	 bnbJpadH/gOZhpi9i4mdMABWEttE99lXSoYWHbB043uYaqjGlStSwP8W83Zt/YEQHA
	 hTRjRYn7XiVfw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 70CC5812CD;
	Sun,  9 Nov 2025 15:32:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6494225D
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Nov 2025 15:32:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5590F812C5
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Nov 2025 15:32:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3XzqQ3J7xvnP for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Nov 2025 15:32:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.177.32;
 helo=mx0b-00069f02.pphosted.com; envelope-from=alok.a.tiwari@oracle.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 315E481295
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 315E481295
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 315E481295
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Nov 2025 15:32:53 +0000 (UTC)
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5A9Eg1jH027366;
 Sun, 9 Nov 2025 15:32:42 GMT
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4aavwyg0y6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sun, 09 Nov 2025 15:32:42 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 5A9A8adr012535; Sun, 9 Nov 2025 15:32:41 GMT
Received: from cy7pr03cu001.outbound.protection.outlook.com
 (mail-westcentralusazon11010068.outbound.protection.outlook.com
 [40.93.198.68])
 by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 4a9vaaseu0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sun, 09 Nov 2025 15:32:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QEyh8B+1C3G7t/6iOtkD2Xpx8PufFmUDjaHfWs8eHpHZHC6S/Sv7ijHVhwM7Im1sFRP6P2FIVjOSHozXRKzY3B0uZ1WijbYVfpBOrwCpjCXM6UhF4CZlkoCHZ8sOT+dxZfcfNH6SCWqNO1FaCgAZJlRUdejMepAAYGkAd3Jlm39EGeAlsh9ZRqFsMKAHt9uQYxUqFQSlGgERSbV5iqShIu77dCj9s5tiBpbpAEe6oGJBuwoAdBoAWUaVE5h6s5BCWjNCCj3/Qw2akptf0l1u9x67wyscRdivqNX71SDBQF/Sxpvo+7+GMRa8FXAz6RABUoj7EPvsX6327EoFusGxBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cS6b1tMf4cML9numgBiyJGSq0PI6fALflWjDzwW98bA=;
 b=uOaYZ6cgApKxgS/UxOevjq/qq4sxsxvC+j/XVSst8YUoZ3byQPcuHgmYim2bm/vXWpC5iAxSkk9v5NI12crPsSmZ1tDBlURdeCKDGMH8iPpe6h8rE++8rIHuKqajUbtDJdfQHC1GhMzecMDZumWf5OGrDxDGEmPjgwzBOUSgV8/M/TyQB5brTvF2vPcpnARqdDyk/QHf7MJELhIs5v7TGTlfqaLt+Dh2j6Lxpusr/ahn8CfClsYsXTV2Kw2TYJS3M0fPN2ShexA/aSM7hNZ+gb/awoIVD7mty3O5RbZHeweqsB/ffMvGN4fBcjhN6o6UQiNxiVBaUg1dLRYapJRh9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DS7PR10MB5328.namprd10.prod.outlook.com (2603:10b6:5:3a6::12)
 by LV8PR10MB7968.namprd10.prod.outlook.com (2603:10b6:408:200::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Sun, 9 Nov
 2025 15:32:38 +0000
Received: from DS7PR10MB5328.namprd10.prod.outlook.com
 ([fe80::ea13:c6c1:9956:b29c]) by DS7PR10MB5328.namprd10.prod.outlook.com
 ([fe80::ea13:c6c1:9956:b29c%6]) with mapi id 15.20.9253.017; Sun, 9 Nov 2025
 15:32:38 +0000
Message-ID: <c86e71bd-0e67-4ea0-a62f-a8c729351649@oracle.com>
Date: Sun, 9 Nov 2025 21:02:30 +0530
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: przemyslaw.kitszel@intel.com, aleksander.lobakin@intel.com,
 anthony.l.nguyen@intel.com, andrew+netdev@lunn.ch, kuba@kernel.org,
 davem@davemloft.net, edumazet@google.com, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 alok.a.tiwarilinux@gmail.com
References: <20251107123956.1125342-1-alok.a.tiwari@oracle.com>
 <5a9fa920-105b-4707-9e5a-c92e9d7fe49b@molgen.mpg.de>
Content-Language: en-US
From: ALOK TIWARI <alok.a.tiwari@oracle.com>
In-Reply-To: <5a9fa920-105b-4707-9e5a-c92e9d7fe49b@molgen.mpg.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BM1PR01CA0164.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:68::34) To DS7PR10MB5328.namprd10.prod.outlook.com
 (2603:10b6:5:3a6::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5328:EE_|LV8PR10MB7968:EE_
X-MS-Office365-Filtering-Correlation-Id: 677e332c-e891-47fd-36ff-08de1fa53698
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QVR0cVc0Y3QvWmdtRkdlV2s1VllDTy8vU1grWER2MzY3ZGVubVNSb09OQS9s?=
 =?utf-8?B?SDl5dU85WWFvSmFmYW9IRjB0am9TZ2pkNXlDN2V6RjFRVDNSNGl5RUd2bnBE?=
 =?utf-8?B?KytXclZHSitKSjBaN01NRXVqVFFTWVZ5OVdoTmpkdmpEUW1lYzk4VDF2N0FQ?=
 =?utf-8?B?M2RzU01XRnNURkFaTGQ2QzBYamRvaWtOT2NWVm9wY0k4SmJ6d1FJSzMrSEJu?=
 =?utf-8?B?azFWaGV2bi9aVFlOdDQyOWJyM2tDV3U5c25oQTZoU0JkeTJ2NTJUUGZkRlFz?=
 =?utf-8?B?NjdydDdYNVdOV0RuNk8wWkpvdnRXQTVSK2RkcklvQmpxQ0I0V2RIZmRVeklx?=
 =?utf-8?B?TTNTUDVFd3Z6Y1pYL3d4VGVXNERKS3J6TERGajR6dzFaLzFmRUc5djZtdk44?=
 =?utf-8?B?NTAwd1FiWEt1TWoxS1FkQXAwV01oVSt0VGVSZ0VVUVZqSVdxQURsL1ZmNnpL?=
 =?utf-8?B?U1paYzZOdEZHcFFQZmpSSE5Ddk00VkE3UWRONGxBZ3o1a2czSnoxQ3B4akhS?=
 =?utf-8?B?U2VjMDNqTE0rTWNLUjhJMEhBVmpHVHpCdklwdm5xdHNpeWJYU0x2TFhzTFpy?=
 =?utf-8?B?YmF0VXIvUWIrV2FoR1JVcHpPaWprVjFMOGZvNVpYS2xCaStaZnFWQ1JQakNI?=
 =?utf-8?B?K0ltajBmQUJTOUlmMm1UbUhqdXY3OXF5QlZBQXdYVlVlVDVWQVFsUnlVY2lX?=
 =?utf-8?B?K2QyL0ZQbDVZQTRHMXFrM2doSWZ3eVJoSVIzdmo3Um1FY1RXVXVFdWV5OUQ1?=
 =?utf-8?B?a1FnYTdibVVSRjk2TVFUeUhOTUhyaTZ5dHV1SlF0QkdaMlJodHFacXJZNXE0?=
 =?utf-8?B?d0cvUUhGdUxvR093VmMxSnpOQURZU3dxcHdJWGlkR1FuOS9TV1owTmkvb0dJ?=
 =?utf-8?B?WkRDTGIvcndXdkZXUDhFNkRTMlltekQrOFZxek5Ea0NvN0t2Mm1YbFo2enQv?=
 =?utf-8?B?c25mVVM0dUQvdzJPS2V6MjdTcXRUY0FnbDRlQ04zRFNHcExQOUwyWUFGdkhk?=
 =?utf-8?B?MzVTd1QvN2U1VlVMbGF3VEdUMTloRW9KRnNGTDErRWVkakovb1VkeWZoNEYr?=
 =?utf-8?B?N1FaVmFzVHBKNW5OeHdQWGpDSlo2Nlp2SEl3b005ZUpreitNWXhpTTNuTjRX?=
 =?utf-8?B?eFdZdkloK1VmQ2NXTkxvTGhveGlNL1FMMktJbVIxVkUzZTZxNXZUNGVDMEcy?=
 =?utf-8?B?T3lkNFlnUWZIVVRYOHM1TmZobW0vZUxKK1E0TWN0dE9JOHJRTHg1U2RiNFow?=
 =?utf-8?B?cWllYTh2Vy9VeDdjREt6VzEvNHdSYUFqaXRzMk1oWU1MOFdOUzY5VStxTndm?=
 =?utf-8?B?cllVbHZxeHRHSUwvdlAxUElNV1hlNFJlZzg0b1ZXVzJEZjN2YmcwN1VlbWlz?=
 =?utf-8?B?YVBMWVpJWS9SRUZNNDRuVDBsUUZyZkFIeWJPRkhpM3hZbldHWkZzSnBjMm1m?=
 =?utf-8?B?TTVTK2w2bHBmeEJ6MVNjNWlOWmlqKzY4eVBBbTBGcCtQeStwZERxbU5qOU52?=
 =?utf-8?B?STl5TFlIYWE2alMzVzZUZnRoaDgzak9pa0IxUk5hNFA3UCtmVExzVEJxM3FI?=
 =?utf-8?B?OUl6NExlbWt4VUg2Zk5NZXkxS0JaSnB1RUpHbXZZdkRDYUVnbU1iaFpMc3li?=
 =?utf-8?B?UXd5bE5VM2tiNkZlTlVBTS9sdElKUDRDNFhmaXR3UGdVWmhaUDhrSGRwU0RN?=
 =?utf-8?B?cFV0b1EzRnNFQzdIUVN3M20yakhqRHIxNVZBOVJqSHllMlF0VEVGdUZpL3gy?=
 =?utf-8?B?MzZkd1Q3WmtVMk1kRFNqZ2VvWUlMVjdtem5VOEVhOS9SNGlIRWRud0hvdmNo?=
 =?utf-8?B?ei90Z2o1dUF5TmZFZ2ljM1h3YlQzRTltbDY0SE5vYkN3dWthemNnVGw1RmV1?=
 =?utf-8?B?bmN2RG1HZm1YamZaNDJhQlpZeUI0WUpidjFXUFNuWUlpMy9zallhUk9OanUr?=
 =?utf-8?Q?rWbL+NcVTDHG/mMqSz27pzVBQM0pY3AL?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR10MB5328.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UWxicEdHczBHRmVJa0JVbVRab1AvamU5N1FPSnl6QlRIY1FXdXVMYUc3YWcw?=
 =?utf-8?B?YXhVbVQyS0pGRXgyK1d5MG9Ua1RPWm1vR2YzOUdMNGFINUhjaS8yYUNuUzdh?=
 =?utf-8?B?d1JsSCs4ZXlIT0RIR2VQSFl0YzdHU2ZhNlpLL0FFUGVFcWpoVnVXMyt5OTdr?=
 =?utf-8?B?M3hsUlNLYTRWYU8yc1FyY1VGc1BHbk1jbkhMM3EvT2VQa29IU2xRVjc5UmUy?=
 =?utf-8?B?TVdrdW1UdTVaaW15ZkRlM1hlamdQcFlqNkt5SkIweTR2RHUyakVrWE5iSEZ3?=
 =?utf-8?B?ckU1MzZ3SXZDUDI2WXdZOTZrUXVlcGN1d1Uzc1lRZTFUYVFWUmNtQVVwVHJF?=
 =?utf-8?B?bkcxMEszZXF5WjhJdW9keHR2SWltQ3IvZVFvbGdiQ2pvQy9DODlNMm5sWGpY?=
 =?utf-8?B?VU9ON3RzKzUwcElJbXdDYVZLejZyYXFtZVBWbnVwRzF0QlBKQlR3SnhXMWZE?=
 =?utf-8?B?TGdVTVR4UXc2UU1YNU5FNG1VYjFyWmZCZlVDL3dheU1DMnhjdS9XT2tRenI0?=
 =?utf-8?B?S0pmaGJXZytTNmZkNjRMSUlsUEMrQ2U1c1Jqcld0clEwSUt5Z2M5YW1ZdDJs?=
 =?utf-8?B?cm50UXZ1N1k0ZnVXTk53aXVNekMzeDVwdEZWWHNZdGtUN2dkVmJoRmN0ZVE0?=
 =?utf-8?B?czBYQ2pxeHpWQTBJaFpwelBYWGRUT1VPU3NVeXAxcDFxalV0elBqeFBMZjNP?=
 =?utf-8?B?dTFJZ1ZUVGpMZjNNeElwTUNOWE83czljSytmUWpHUU5Ka2Q3ekNmZTFTZkRW?=
 =?utf-8?B?MEFiMUFyeWVTQldGNU8xUzNJK3MzdlJtajZFeE93akdpTFQ0TzJFemhhaFJP?=
 =?utf-8?B?WFJzRFRKRmo4aHYrVjlOL211djRQZENhZDhxR3ZkaklDM3lLdXMwTGZ1cEZ4?=
 =?utf-8?B?aE9OZ2hYZnM3WGtwU2duamVUa2VNMXV3Qys1YTd2RVNUQStYYWRtSENEU3h2?=
 =?utf-8?B?Rm43akRIMExaSkVvTVNrdExzNEZRM2k5eFc4anRDK004bjlFSW9DSWxnUGo2?=
 =?utf-8?B?SDIrQVdxTTdDcWhuajRzb3JzRkJpZ1dGNXYyOStlM2JOR2FUNWFpUEhPa0gz?=
 =?utf-8?B?RU1odnRtWFFLR0t4UHNDVWloTE10REpiUWF1UWgzeit0dUFVWERCN3h6eEpk?=
 =?utf-8?B?d1BqQTVCN2M1NnNpWEs5SFkzL0w2Sk1XRmw4bW9tRTV4T2tOQ0tBeW9vZWVG?=
 =?utf-8?B?L1ljcXU1ZnE2QkRzMkRlbzBPRi91WkJveWgxQlhTN2Yyd0ZNTDFNcUlmcWJG?=
 =?utf-8?B?ZVNHNUQzQy9OTG13UzNzUGhBcEJnb1VqQU1ldG52U2FBbVJyYTZFZGdDRDl0?=
 =?utf-8?B?RXNzWTVMZmFYcEVROXBjTEtDdkNSOHFNbjVPSVJZU2ZWMUp0NVF5c2tIaTcz?=
 =?utf-8?B?Y3BmbDV5VmhGRmpNdXV3Q1UrWFRBYlV1SkR2dkpVVUs3MTRuc1A4cmc4aVAr?=
 =?utf-8?B?LzU1a0sxS0hHZFZ5NU94MzI4c1E4R3dCS0NRWDJ4TmRjTEdjY0QyQjNNcXlx?=
 =?utf-8?B?TXZzRzlJT2t6d3BOajdjMnZ6akZSWmUrd3kraWs4RjJUYnloeWl6NWhmakgr?=
 =?utf-8?B?WUphaTdTTGF6b1dKdEVqeEYvdWdLUllSZzRrQ3FVWFNaWVN4MEcyYzg5SURN?=
 =?utf-8?B?dGlVbkpZdU8zZDFoWEVxM2I2eXpxQ001RGpUUklzTzVERnRha3VHR1JTYytW?=
 =?utf-8?B?RWNzTzJWMEdQOUlGNHBFcGZKRjZWUHQ0ZEVSckptMjVVNWI0Mi9mVXFHV1NG?=
 =?utf-8?B?WTdjTEdla05TUGh1RTFQL0JFUTlEa29DU1Z3cThrVjRVLzlOT2ZRS1dxdWtJ?=
 =?utf-8?B?cnM2ZFRyK2NacWRZSklJMmpNeW01aW96RDlSRmMwcWZoTnAzUjVQQWhDeDlz?=
 =?utf-8?B?Q1VSaStyTTc0T1daaUl3ZzRMZzNjTWp3WU1MMVRWVURXdndLNUVnZ1craDIx?=
 =?utf-8?B?YjQyM3hIUUxNUlU0OHBZOE5MQ01ESURWdW5POURKR1ljdnJyUjcxODRRTFJU?=
 =?utf-8?B?ZlN5bVZvNGVwR2p3OFljaDJKTVpHcG4wbHNpOFRyRS9TcnZPVDhOOGRERkU2?=
 =?utf-8?B?WkYyTEZQaG9tYVpSa0R3VVBSL01jUVpvZS9GVzZGS2hWc3E3ZHhHU1ZGbHNh?=
 =?utf-8?B?OHZSZ0QrTnllWS94N05Ub3JZRVlHN0RvUkxHRjhRRWo5TFdBemdpTXRETnNM?=
 =?utf-8?B?S1E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: xsyJhvXuoGZDFfglevZEMiuOuZjdo3iZrXMgm/OOpaVwtis4VAg4WsyufzHPtoLelErkxwZLirQTMAK/0B9aTcccico1GirAzx00bikGspzSBuilQem+c7lcLrvenuMyd2zUslWPlWwSg5//HIEkFpliiiW77DRXyO4fVF102gTdM3V1AhvedKSx1Mpu+qxExHoqJMQt10V6xaRBoHAj987/9m2JruyeYQ4l0cdbFUjqtXc3x7Fbktq4KF1xzH6uudDvhw7feZHS0og1TXU79tZYA+pF+5jseXnOuIgWL7XersUWk24/ES+grBYLlEmFj2kjFGp9i/h1+Hr6YVKU74RIQVhnW5b3guf+82570IbUseaozGFfD06tEv7q80w/EuSuA8sINVPMLJYC/+UTQT4Tm7a4ycRDdTTh5LRB1BdLzir3JpeE6jOkzFRpBSgBI6dXRvJzExoNi5uQHhj8JquqRqYmRPh7wv59qdXZ7HSSTDpuvF5tzV6d6hjIkM2uW2ljzLW8cPhRbAQfByTsPNDuMF+YCsEz0vtIuYw3qFNdqeQt9I/fBFaErBYajL5ZS/vgtSXJQt8u9n3E5oCnejluf0aoW1aBQ7N1jfpOySo=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 677e332c-e891-47fd-36ff-08de1fa53698
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5328.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Nov 2025 15:32:38.2471 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tbipsBjMBsMgyzRr9dZmjCQg6czs286/xsuMKpoJelG+sc5Ap1pvX+v2oIiZwBcEbFF9FJ+Dh9fff1+Axy8uihT8HmARdsChpbE+0r6lTq0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR10MB7968
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-09_06,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 mlxscore=0 spamscore=0
 phishscore=0 suspectscore=0 adultscore=0 bulkscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2510240000
 definitions=main-2511090136
X-Proofpoint-GUID: hQqJ14-Fjd5_RaLrXJfbLGEya36iETyu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA5MDEyOSBTYWx0ZWRfX+xcjAwQqIfbv
 A384N9F1ZbpPb/lsYOxQfHXlD9uT1V6Ijb0SHAlmtI0eXZg65CV9IIJ/p/Wq414Sk5Rhm0DItWZ
 w1L2fXEPxMEK5twr/ne0JEj56E+ukRnbyLFi/HWu1J7w3hEtMnFdoFP0nQN+dXqvZIp0wcSptDL
 E2aTLxnJiuel37jJhSHJV9QVZOmANcVlOyXA+yOSkeWw22vzhSU/CtV3SSKbf8gwnYqcFdny+0P
 tD/v7wRp/Xp3GIHxVU2JCg/Mv3PCLE67yEh1YsI6oCOm9GrnPNp0O5qqfFSSo/R205FgDZXHPf6
 VnJ57MOyrCAI6QdYGftFQZZ/IQsBqFeuPHtT9fc7EjP4dmMakKZ/gEXOmw+SRHiXOaOU19HoJ80
 AWXK1kSF7Ki5TVxAdKkTn78VPBLE5uAbXAcEjvD8xI9S5/Ov/do=
X-Proofpoint-ORIG-GUID: hQqJ14-Fjd5_RaLrXJfbLGEya36iETyu
X-Authority-Analysis: v=2.4 cv=AvDjHe9P c=1 sm=1 tr=0 ts=6910b41a b=1 cx=c_pps
 a=zPCbziy225d3KhSqZt3L1A==:117
 a=zPCbziy225d3KhSqZt3L1A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6UeiqGixMTsA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=NtKl-qp2lKbLfmIZ-G8A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 cc=ntf
 awl=host:12096
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2025-04-25; bh=cS6b1tMf4cML9numgBiyJGSq0PI6fALflWjDzwW98bA=; b=
 miivMGUa6jB8ETk/2oE0vHSrKSbzhhtXMplcNh72GY5Hrc4ZstsHWz4QbLBjvh0W
 3J2Ou7elQAf4EUBg/ZJqSRs7nwx8mXvPcM0nHTJBa5L+wfkWa4lcpY9DQDcxRp/b
 dQAl/bjuS/f1fGeMABJ1E0V/WEE8YQJENvNa6JutKCsdlcu9eJJ/8xStx55PIyxv
 fla2f9DOesBh+4vKgGHzcFwwZ9HLcM8cdUwM3ORE3BL+zrHGRAj14HOE1+6j+oyl
 PC4/Uhxu0EDTvKghBhpbhKLV7yUMuU4ve0i5UC6Y5gSIMOTzpXNs9PPeOAT58FEX
 UIZfUorWRi5s4dWAJRZ0ig==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cS6b1tMf4cML9numgBiyJGSq0PI6fALflWjDzwW98bA=;
 b=opcP4l7gdUSxs5ruT2UvfcngZuvNSu1EosS+ctEqwQwP1yE6jsAVrPBnc2v314Y7OLnGF58Ia0yLM+NtRi6MCZeuqoIJWUFyOI1E7NyUofw/eBaWbg3OlcUVkDRi2qU8Cm6agrFBi4jAIMr2n2uJNMglFGrbg1mvzgSl4g+bUkU=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=oracle.com header.i=@oracle.com
 header.a=rsa-sha256 header.s=corp-2025-04-25 header.b=miivMGUa; 
 dkim=pass (1024-bit key,
 unprotected) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com
 header.a=rsa-sha256 header.s=selector2-oracle-onmicrosoft-com
 header.b=opcP4l7g
Subject: Re: [Intel-wired-lan] [External] : Re: [PATCH net-next] ice: fix
 comment typo and correct module format string
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



On 11/9/2025 8:11 PM, Paul Menzel wrote:
> Dear Alok,
> 
> 
> Thank you for your patch.
> 
> Am 07.11.25 um 13:39 schrieb Alok Tiwari:
>> - Fix a typo in the ice_fdir_has_frag() kernel-doc comment ("is" -> "if")
>>
>> - Correct the NVM erase error message format string from "0x02%x" to
>>    "0x%02x" so the module value is printed correctly.
> 
> Listing changes in a commit message is a good indicator to split it up, 
> even it’s formal changes.
> 

Thanks You, Paul
I will ensure that future submissions split each logical change
into separate patches, including formal or cosmetic fixes.

>> - * returns true is there is a fragment packet for this ptype
>> + * returns true if there is a fragment packet for this ptype
>>    */
>>   bool ice_fdir_has_frag(enum ice_fltr_ptype flow)
>>   {
>> diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.c b/drivers/ 
>> net/ethernet/intel/ice/ice_fw_update.c
>> index d86db081579f..973a13d3d92a 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_fw_update.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_fw_update.c
>> @@ -534,7 +534,7 @@ ice_erase_nvm_module(struct ice_pf *pf, u16 
>> module, const char *component,
>>       }
>>       if (completion_retval) {
>> -        dev_err(dev, "Firmware failed to erase %s (module 0x02%x), 
>> aq_err %s\n",
>> +        dev_err(dev, "Firmware failed to erase %s (module 0x%02x), 
>> aq_err %s\n",
>>               component, module,
>>               libie_aq_str((enum libie_aq_err)completion_retval));
>>           NL_SET_ERR_MSG_MOD(extack, "Firmware failed to erase flash");
> 
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> 
> 
> Kind regards,
> 
> Paul


Thanks,
Alok
