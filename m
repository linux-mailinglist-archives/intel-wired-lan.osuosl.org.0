Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 629CBB1635F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Jul 2025 17:09:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0639541044;
	Wed, 30 Jul 2025 15:09:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OX3ekm9KHsG3; Wed, 30 Jul 2025 15:09:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 43FFA41042
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753888165;
	bh=a3NwR0yLeuuYcIXorTeM6sgOCX/fhvFjTrVB4K95OKQ=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xBTRf4rwg9NIm7lUZXCYG4ETp0VXXpKTkjJlGLFybDmN8ygAStUKD6lzSmPxr0KnG
	 +lSzyMRnMrr8ldPkUvBQx1qFAun6/hoFrCwZ0GomSCtfrHoMVc5aCV5fAiVgUY/k3y
	 5fGOGcNlnBsZl8JNz0k/ot7uUpXzplBKu7R25x4om6VLbnGIM3JrzUsTsVTU/s8oAE
	 lyMml1bK+uQgNXstmtvNObk6ZJ9z6AlD3RV95xAt9dzB9fQluSmj2KcLaYZuagU7KP
	 f10V+Ai25kjtPZOxFZ4IHaH+QrVwVswIrk2pMC8k4Q62IxUGqCmlruL4M490NcUceJ
	 VO+kROHqQVRjA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 43FFA41042;
	Wed, 30 Jul 2025 15:09:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 10313186
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 12:08:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EA12C40D81
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 12:08:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z_Sisa_Nq98M for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Jul 2025 12:08:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.101.70;
 helo=nam04-mw2-obe.outbound.protection.outlook.com;
 envelope-from=cjubran@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5AD6940C1D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5AD6940C1D
Received: from NAM04-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam04on2070.outbound.protection.outlook.com [40.107.101.70])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5AD6940C1D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 12:08:29 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yR6cOe2CQhwOzQSUJdoJyWFeUNLlElEsRZX06p8GzDdKmIFSt+uebJogTOqCsrwYFB7WDl/l8hBFAr3tR3kzZuipECctSXunDxYcsd21HToIja7NjCWClEMy0yV2kXyZgb3ZTeMksawk6pGvBIJ/UGJ4ZLoaiOvCyguSn6IyB7igrG4Z4211T+Zf/XvvAdHO0LkmFYTo0HwX173MmTIeZpgmjytX7C7nLoFjcfQXE3QZx+FnnXBXo3UcdyfINc1AaBsT0FxA3KTGM9NBeiRJ4gTW8ByageMUzP7DYYzXqcQCL01SpUHkiz0pUyFRos1ub6QPVU4KBTtTUxHzr832AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a3NwR0yLeuuYcIXorTeM6sgOCX/fhvFjTrVB4K95OKQ=;
 b=uYFjLXPNQE64YSa6bw+wE1zYgHa4KngzjC45xz6C+GgJcnQopcfTYsbIAjDvb/K+5V67gkKhYwLyVqz/zpjYoG/VLXPj2FDUI1iRBPlmfQc3PQn0PRl+EtNtBsuHNIOcDyYJ1CW3zYVOi7C0sbPDOstwGuh8pHG8zc/Yv+ZOgEAFaeUsBKY1hGMi7+BRUaoWxgwMLkisNqpUH1tMvqC7MtA4Pu0UtO8MoEjDi76JCmjGLycZSc6UrMzocuDCMQkuxVjtRDSyUzxUXck/iFBBnoevgJQl/9ufJCreQpc8opgV9HrM+gUlgNBj2bkSyLsAHUUh49/SzJSP9s1PS3LOWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from MW4PR12MB7141.namprd12.prod.outlook.com (2603:10b6:303:213::20)
 by BL1PR12MB5947.namprd12.prod.outlook.com (2603:10b6:208:39a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.11; Wed, 30 Jul
 2025 12:08:25 +0000
Received: from MW4PR12MB7141.namprd12.prod.outlook.com
 ([fe80::932c:7607:9eaa:b1f2]) by MW4PR12MB7141.namprd12.prod.outlook.com
 ([fe80::932c:7607:9eaa:b1f2%5]) with mapi id 15.20.8964.025; Wed, 30 Jul 2025
 12:08:24 +0000
Message-ID: <8e1d127e-0723-4b90-984a-59fb8de1e43c@nvidia.com>
Date: Wed, 30 Jul 2025 15:08:15 +0300
User-Agent: Mozilla Thunderbird
To: Vadim Fedorenko <vadfed@meta.com>, Andrew Lunn <andrew@lunn.ch>,
 Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>,
 Gal Pressman <gal@nvidia.com>, intel-wired-lan@lists.osuosl.org,
 Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>
Cc: Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org, Vadim Fedorenko <vadim.fedorenko@linux.dev>
References: <20250729102354.771859-1-vadfed@meta.com>
Content-Language: en-US
From: Carolina Jubran <cjubran@nvidia.com>
In-Reply-To: <20250729102354.771859-1-vadfed@meta.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0021.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::15) To MW4PR12MB7141.namprd12.prod.outlook.com
 (2603:10b6:303:213::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR12MB7141:EE_|BL1PR12MB5947:EE_
X-MS-Office365-Filtering-Correlation-Id: 69eac761-85e2-4b46-2f4b-08ddcf61c8b1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7416014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UG8xMkVRZjU0TnQwb3JTMlpyZWkzZnNWc2dOUzVuSGdQdmxIelhXNm43WGhr?=
 =?utf-8?B?dFNNTlRVNG5aU0kyU2hyOHY2VFIvd0kzU0tvUm1iTzNlVTJERXhiRmo1TEFR?=
 =?utf-8?B?dFFEVFEzZ2YwV0dBdytUTEEwazdxS09XcDRYamJBd2IrWHRaZWIzc3RtYkxi?=
 =?utf-8?B?R3Z5NlNvdnV6YVR2SWM3TXVmVnFEMy9PSzhPemhTZDg1c3lrVjE0T0VUU09C?=
 =?utf-8?B?ck9kWk1mTlRuWVRVN1J2T3BSUlI1TVVqUzBpY0RpaGxTdklvdlVOOVJxS2xX?=
 =?utf-8?B?aEhia24xb1h0TUxEbk1jUGdHQlY3bk1oMjhGa1JPYUlsZVJKWXRhZWd3c1F4?=
 =?utf-8?B?MmJ1eGR5OUlZNHlSZHBuR2hxZjhSKy9oMTc5Mjd1azIzdDA2Uk0xWkN5bjBB?=
 =?utf-8?B?TXdjQUszVFZCbW9Ydm0zaUJ1YzQ1cjMyNVVZeFhMZWZ5M2pEUnZCUi9yVUpV?=
 =?utf-8?B?dEJBaHJDenRXTWl0bkFWNHBtVEtaNStBMzBmdUdaUlBQRS9WWTZPOEJTdXIv?=
 =?utf-8?B?MWp6OXNpcWlhRVZjVUxZTmsyMnpMVkxiMTFYNVNDQWNaZytOcm1qeVZSckNK?=
 =?utf-8?B?WFRqSXEydGp5ZDRMVnF3SmJwdmlTbXV5dnc1MTFmK1hZaUVTQXRidXhmbm9r?=
 =?utf-8?B?TWk1bWdCMnFhVmF3L3MxaVpKNTNtYVNOcWptNUsyKy9kRGlTVktYempoT255?=
 =?utf-8?B?Y0V4aDdRU3pnVmxsOUJ0WDJ5VndvYzdLZjAxSWxqZGJaay9lVWlEUEQzREY5?=
 =?utf-8?B?MUJzNXFuRXVwMHMyYVhvWUhCWEd3Yzk2OTlpTVBJOE5jbW9lTHZjZEtYWTN2?=
 =?utf-8?B?V0UzUzA3aVE1TzExOHUzMnVQQ2dQbHc4SG8xa3JFdlNkaXl1bDhUcVVYdjVX?=
 =?utf-8?B?KzFrbmVOOTlucVFrbHVnNzA2NFAzOGVxRmJTTmppbWNvUDRVTUMvTDI3YmYx?=
 =?utf-8?B?RVFPSVlDT2NBT2RFU1kwOHI0N0d0SWlXb2RQbjVGTnFvOHdmTFNVeHR1NFpa?=
 =?utf-8?B?bGkvR2NHVzI2Wld3OG51WGZkYXRmY1U5OWhDaTloM1BkMXN3UlQ3WnU4djF5?=
 =?utf-8?B?dTJhaENaWkUvQlgvMTRoa1k4bytFZWpLOXpZenFMVDlEc0V0NnF6VTlPUnVF?=
 =?utf-8?B?MzhMTlVycDhBb0Q5QnBBVVE4TWRwc2Q0TW9pR29uZ09WM2Q5TjF0aDM2Wmpy?=
 =?utf-8?B?aEhBblpPa29HUUlIcGJheGdRd29mem5iL0dqZ0dpZC9XSDU2S3RUUkM2c2Z0?=
 =?utf-8?B?QnJQd2UyYU9OQm90a3JuS0swNjlWRExEeE95QTYxMUhpU1FRWUVNc1E4WTJO?=
 =?utf-8?B?RU9xaGViazYwN29oNzhSSVZxSUQ5RVp1L0UrK1puS2FqZ2FKUFU4Q042am92?=
 =?utf-8?B?YVhQT2JpN0x3T0pwNDRNdWlGckF2ZFlQZ1N2cFhSbGNwMDhkOHVoOTdVeVJo?=
 =?utf-8?B?UCtmeHhLa0NuUWMwZDVZQXlQb1owWXZRVGd4RFREWm5jZEFMU2xzUktPbnNl?=
 =?utf-8?B?L09hSDZMbVVMSjJHaGxNM2QzVk4xanNKVWtEejJUYmJCc3ZiWEJVYy82QjE0?=
 =?utf-8?B?dGpZckxaU3MxS1N1THdCTzQwMXYxQXJ3cW1qREpBdStQUzNXYVNSNTVXTW9n?=
 =?utf-8?B?SUFFSThyN1g3bFBvOHhJVzYxN2dTdGlqbmljcWRueVg1aGI0eWZyWW4rb3hT?=
 =?utf-8?B?S1laU3l0bDZyWnZvWW1jaTEvTjVFR013MnJNa0pPdDRIQ2RMMitRRTJBdW1t?=
 =?utf-8?B?WDJWMHdraHIzVXlhOWtFL1BsTFAzTGl0bkRkOWhqaVN1RWdLWkZHT21wTXJ6?=
 =?utf-8?B?VmpiZytKMkQ1S3NoODMzSTAwaXkrTU51NnNES1pSekZZQ0RDR0U5UWVKUGZk?=
 =?utf-8?B?bXU1SE50QzhjNVExaU80Z1BsNk1IS2dEb3FHMTVaSU5ldUE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR12MB7141.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?alhOZWxJY05OeXdRVkUzNHFleVlWVTdFVnhYRjR6T0NJd3hqWTVKZUp1YUkr?=
 =?utf-8?B?MGFveDhjb25vcDNIZ1pidmVWYXFEOXlQSU9RY0NwVy9IQ3hlS251SlRvQjNZ?=
 =?utf-8?B?Uml4UHQzSGNDRzljeHdNZmo4ODBrL2k2VTFmQm0yM2RBcDZQUjlzNDRLYllw?=
 =?utf-8?B?bERJbWtFbnlWQlNPbHVLcjY4cDN6MTRJUEZCOTd3aTZERzFnaU55QndjYTY0?=
 =?utf-8?B?dTg1dXVwbTlHbGMyQWIrYTI2clprc0x5U1NZQWs3S2ZoeWRreUlZa1FxaW5B?=
 =?utf-8?B?RElUdXN3RFBxL0NDWmdtSjIrLzVwdS84S0NSL1R0ZndCN0JzcFNXM3Nqa0tG?=
 =?utf-8?B?RkZIQzRXRTEzQnJ2QW9KdUlGVlh4VWxyYlJIQkhtdm4wYThHV2xTaFprNCtR?=
 =?utf-8?B?eTBJWWoxNDhob0VJbjllby9wSE0zZnJITzNLTmhrbzgwZEo1MjMwMTRZeTdG?=
 =?utf-8?B?WjVUL05ON3JOVGlHd2Q5QUxjNm1ReW5WMkVCUDdjQzE2UnpGcjR0NXJKMjRp?=
 =?utf-8?B?eE5jL1l3R3pRaGhqb01tVnNsakVmdHNHWWsyY1c2SXpnZk1xNVRiRDZjOW1y?=
 =?utf-8?B?MXFFb21zZFBmTjZWL1kvZ0hWeDFiMDhUYS9nWGJya3F6aVdibERXaUpGR2x2?=
 =?utf-8?B?RDAzSEtHZnovd25pU1RteGpFV1NCRlN6WEpZUjM1ODFhUDdQVTRvck4zMWtX?=
 =?utf-8?B?cWhBNnRzNEFqZ3d1dXhBallrWnRQRm1DYTVOSUhWayswTWpBMS85QTN0cmND?=
 =?utf-8?B?a3Y5T3haTUVyN21zRTI4S0pQWXQzdjEzaUJFc0ZROEtFM3lsQlBDM0tTZTV2?=
 =?utf-8?B?bzVOVWRzNTA0am1rSk1oajhENno0dmQ4MFlYN2F1TFNya0JXNm5rRUk0RWgy?=
 =?utf-8?B?NVNnSWNUeUFPZGVHeVQzRHdSZkxodWFETitsUU9sODZlZEpsZUJsODFuWEwz?=
 =?utf-8?B?Qy96N1d6Y2VsRk5DSDhFV0lEdW9TWTdVQU9peXBWMGFEMU9xeXVLa3pob2F6?=
 =?utf-8?B?M1NiN3ZqYWpIeFdJcEVwTmNrZmxzNHFqSnp3K0VHR2xQb0E0RGpIbUpXcFli?=
 =?utf-8?B?cnZXeFpLb3VpMnZDVkZIcVRLREVvdEg3U2FpSGFyUXI1SWpid2VlbGN3NC9t?=
 =?utf-8?B?NE52cjdZSisyL0RRV2FmNGZ0Y3h1KzdhRW5xbGVmcGV4RGVzdlA2aloyamZz?=
 =?utf-8?B?ZFFEOW41OE5mS2JRcEJPK1UvOUR0U1V5RXhMUVh6Y2hqUThzWFAwcmVwTHdi?=
 =?utf-8?B?M3VuKzA1bVNWVWRjKzRhRG8vOWV5elJQbjg2R0N1cU80eERvcmV4QlAzQU9U?=
 =?utf-8?B?S3RRNFp3ZkRwZU9FVndGL1FRUVZidkRTd2NUT2ZwRVROR05WU0d1YUN6WnIz?=
 =?utf-8?B?ZlF6TkJTZ0xvUUovako5NXhJb3FxM3E3WEdoRklEc0lQUWxPWWZtalg2ekcx?=
 =?utf-8?B?ZnZneW9DSUVURWZjekdoU1Z4Wlczald3RVA3UkhxQXBSaDBlMkdUdWRjdzY4?=
 =?utf-8?B?NFFZbWtrMWRMa2RRbUppeXdLTlJpOHdPNldzcE1yREtBdHQ1VUE4ZGlVZVow?=
 =?utf-8?B?Uk5qRnRBdjdhTHN6Rnh1SmxpbFdVL2JJQVh3MnFKY21DMGxZYnFWUUJyM0Ir?=
 =?utf-8?B?ZXpMb2NobG5LZ1JMNUpLRWh3cEZ5SEV1RXBudTdkV3JGTEticndpeWNCd2sr?=
 =?utf-8?B?UjJmM3ZkMUFDSFZtRzJsa2dGN05TMGpkMXY2R1FhNm1PQ3ZrQ2w2K3V3VjQ5?=
 =?utf-8?B?QWNQYWQwMnNrVVNYUnVrSHpjaVdBN3piZ3hJbDh6alh6a0VOR2dIY1FJZDMx?=
 =?utf-8?B?SncrWlViYTMxejRJNlJvMTAyeUZKdnFPRFB6YjVmTTZUSldRUi9wVmpZbzhJ?=
 =?utf-8?B?M0ZpRUpKNmhuSDJNSmc0U1hNYS9lN25hQ2t6K0xrenJ3cDZMQmNrYUtoaHhK?=
 =?utf-8?B?VEU3d0RPM2dldWRPNWZNMXhRT3F5dE1ZTGtIbm1jWG5wUENzRUZvVWEzNUNo?=
 =?utf-8?B?ckhWT1NZUWRJK0FEQlNvR2VNZVREUFNUU0lWRTVDSHpKT2FmR1VGcXViL0Nh?=
 =?utf-8?B?eVVKOW1odnlBSXY3Z0src3V3UzNRSWlIaHRNOTVlUUtxRVhmYWpKT3JuRXFr?=
 =?utf-8?Q?7bsnlORg2QOGoTKW11Hp0VYos?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 69eac761-85e2-4b46-2f4b-08ddcf61c8b1
X-MS-Exchange-CrossTenant-AuthSource: MW4PR12MB7141.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jul 2025 12:08:24.8480 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XsY8Nnybg+2nHr1f5HbxZOu0u5IsC2AedcyCrEPnOBzcMrsqaJLjbH3hUXhHM+0WwB6YZBQmecqEhB+gNQcSxg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5947
X-Mailman-Approved-At: Wed, 30 Jul 2025 15:09:24 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a3NwR0yLeuuYcIXorTeM6sgOCX/fhvFjTrVB4K95OKQ=;
 b=kJ0UAj27wMk1oxmu9Upl/7VHLfQyC8Ib6cD0jaczibwaXNQLitg+27++fXd9FxKrSrizMzq4RPN33z1g3EYs8v86n32b6l77HfGXex7SSRuzezqZNNY9MKwTb7vU7UeedDWyY5dKckHkrvc9czr0o+6ZLW1rpud0NGRzO5SlFbRvaW31FuvLSJ6IsJCAN2AqGFC3J56EmZq2Ff/Wv9dwDbT/aKOaZWM85Ndev5qniQZuUxvD3adnTTJUt9+xKWMDR3AXP1e+VgjQcFbLksD57l7DAKP1QZA9zsVB5gFlOXoTONLCACxdAWlX9F9LDDBO7etp8Oo3PQjt9SIm9jmOEA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=kJ0UAj27
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH] ethtool: add FEC bins histogramm
 report
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



On 29/07/2025 13:23, Vadim Fedorenko wrote:
> IEEE 802.3ck-2022 defines counters for FEC bins and 802.3df-2024
> clarifies it a bit further. Implement reporting interface through as
> addition to FEC stats available in ethtool.
> 
> Signed-off-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
> ---
> 
> With this RFC I would like to get early feedback from the community
> about implementing FEC histogram statistics while we are waiting for
> some vendors to actually implement it in their drivers. I implemented
> the simplest solution in netdevsim driver to show how API looks like.
> The example query is the same as usual FEC statistics while the answer
> is a bit more verbose:
> 

Hi Vadim. thanks for the RFC.> $ ./tools/net/ynl/pyynl/cli.py --spec \
>   Documentation/netlink/specs/ethtool.yaml --do fec-get \
>   --json '{"header":{"dev-index": 10, "flags": 4}}'
> 
> {'auto': 0,
>   'header': {'dev-index': 10, 'dev-name': 'eni10np1'},
>   'modes': {'bits': {}, 'nomask': True, 'size': 121},
>   'stats': {'corr-bits': [],
>             'corrected': [123],
>             'hist': [{'fec-hist-bin-high': 0,
>                       'fec-hist-bin-low': 0,
>                       'fec-hist-bin-val': 345},
>                      {'fec-hist-bin-high': 3,
>                       'fec-hist-bin-low': 1,
>                       'fec-hist-bin-val': 12},
>                      {'fec-hist-bin-high': 7,
>                       'fec-hist-bin-low': 4,
>                       'fec-hist-bin-val': 2}],
>             'uncorr': [4]}}> ----
>   Documentation/netlink/specs/ethtool.yaml      | 24 +++++++++
>   Documentation/networking/ethtool-netlink.rst  |  5 ++
>   .../net/ethernet/broadcom/bnxt/bnxt_ethtool.c |  3 +-
>   .../ethernet/fungible/funeth/funeth_ethtool.c |  3 +-
>   .../ethernet/hisilicon/hns3/hns3_ethtool.c    |  3 +-
>   drivers/net/ethernet/intel/ice/ice_ethtool.c  |  3 +-
>   .../marvell/octeontx2/nic/otx2_ethtool.c      |  3 +-
>   .../ethernet/mellanox/mlx5/core/en_ethtool.c  |  3 +-
>   drivers/net/ethernet/sfc/ethtool.c            |  3 +-
>   drivers/net/ethernet/sfc/siena/ethtool.c      |  3 +-
>   drivers/net/netdevsim/ethtool.c               | 15 +++++-
>   include/linux/ethtool.h                       | 15 +++++-
>   .../uapi/linux/ethtool_netlink_generated.h    |  4 ++
>   net/ethtool/fec.c                             | 53 ++++++++++++++++++-
>   14 files changed, 128 insertions(+), 12 deletions(-)
> 
> diff --git a/Documentation/netlink/specs/ethtool.yaml b/Documentation/netlink/specs/ethtool.yaml
> index 1063d5d32fea2..3781ced722fee 100644
> --- a/Documentation/netlink/specs/ethtool.yaml
> +++ b/Documentation/netlink/specs/ethtool.yaml
> @@ -1239,6 +1239,30 @@ attribute-sets:
>           name: corr-bits
>           type: binary
>           sub-type: u64
> +      -
> +        name: hist
> +        type: nest
> +        multi-attr: True
> +        nested-attributes: fec-hist
> +      -
> +        name: fec-hist-bin-low
> +        type: s32
> +      -
> +        name: fec-hist-bin-high
> +        type: s32
> +      -
> +        name: fec-hist-bin-val
> +        type: u64

These attributes are already defined inside the fec-hist nested 
attribute set. The top-level definitions can be removed.> +  -
> +    name: fec-hist
> +    subset-of: fec-stat
You can use here name-prefix as fec-hist-bin- > +    attributes:
> +      -
> +        name: fec-hist-bin-low
> +      -
> +        name: fec-hist-bin-high
> +      -
> +        name: fec-hist-bin-val
>     -
>       name: fec
>       attr-cnt-name: __ethtool-a-fec-cnt
> diff --git a/Documentation/networking/ethtool-netlink.rst b/Documentation/networking/ethtool-netlink.rst
> index ab20c644af248..b270886c5f5d5 100644
> --- a/Documentation/networking/ethtool-netlink.rst
> +++ b/Documentation/networking/ethtool-netlink.rst
> @@ -1541,6 +1541,11 @@ Drivers fill in the statistics in the following structure:
>   .. kernel-doc:: include/linux/ethtool.h
>       :identifiers: ethtool_fec_stats
>   
> +Statistics may have FEC bins histogram attribute ``ETHTOOL_A_FEC_STAT_HIST``
> +as defined in IEEE 802.3ck-2022 and 802.3df-2024. Nested attributes will have
> +the range of FEC errors in the bin (inclusive) and the amount of error events
> +in the bin.
> +
>   FEC_SET
>   =======
>   
> diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c b/drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c
> index 1b37612b1c01f..ff8c0977a1f4a 100644
> --- a/drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c
> +++ b/drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c
> @@ -3185,7 +3185,8 @@ static int bnxt_get_fecparam(struct net_device *dev,
>   }
>   
>   static void bnxt_get_fec_stats(struct net_device *dev,
> -			       struct ethtool_fec_stats *fec_stats)
> +			       struct ethtool_fec_stats *fec_stats,
> +			       const struct ethtool_fec_hist_range **ranges)
>   {
>   	struct bnxt *bp = netdev_priv(dev);
>   	u64 *rx;
> diff --git a/drivers/net/ethernet/fungible/funeth/funeth_ethtool.c b/drivers/net/ethernet/fungible/funeth/funeth_ethtool.c
> index ba83dbf4ed222..42027ce2b013d 100644
> --- a/drivers/net/ethernet/fungible/funeth/funeth_ethtool.c
> +++ b/drivers/net/ethernet/fungible/funeth/funeth_ethtool.c
> @@ -930,7 +930,8 @@ static void fun_get_rmon_stats(struct net_device *netdev,
>   }
>   
>   static void fun_get_fec_stats(struct net_device *netdev,
> -			      struct ethtool_fec_stats *stats)
> +			      struct ethtool_fec_stats *stats,
> +			      const struct ethtool_fec_hist_range **ranges)
>   {
>   	const struct funeth_priv *fp = netdev_priv(netdev);
>   
> diff --git a/drivers/net/ethernet/hisilicon/hns3/hns3_ethtool.c b/drivers/net/ethernet/hisilicon/hns3/hns3_ethtool.c
> index d5454e126c856..c5af42706c179 100644
> --- a/drivers/net/ethernet/hisilicon/hns3/hns3_ethtool.c
> +++ b/drivers/net/ethernet/hisilicon/hns3/hns3_ethtool.c
> @@ -1659,7 +1659,8 @@ static void hns3_set_msglevel(struct net_device *netdev, u32 msg_level)
>   }
>   
>   static void hns3_get_fec_stats(struct net_device *netdev,
> -			       struct ethtool_fec_stats *fec_stats)
> +			       struct ethtool_fec_stats *fec_stats,
> +			       const struct ethtool_fec_hist_range **ranges)
>   {
>   	struct hnae3_handle *handle = hns3_get_handle(netdev);
>   	struct hnae3_ae_dev *ae_dev = hns3_get_ae_dev(handle);
> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> index 55e0f2c6af9e5..321704c53a0c2 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -4623,7 +4623,8 @@ static int ice_get_port_fec_stats(struct ice_hw *hw, u16 pcs_quad, u16 pcs_port,
>    *
>    */
>   static void ice_get_fec_stats(struct net_device *netdev,
> -			      struct ethtool_fec_stats *fec_stats)
> +			      struct ethtool_fec_stats *fec_stats,
> +			      const struct ethtool_fec_hist_range **ranges)
>   {
>   	struct ice_netdev_priv *np = netdev_priv(netdev);
>   	struct ice_port_topology port_topology;
> diff --git a/drivers/net/ethernet/marvell/octeontx2/nic/otx2_ethtool.c b/drivers/net/ethernet/marvell/octeontx2/nic/otx2_ethtool.c
> index 998c734ff8399..7c6643aa24bfa 100644
> --- a/drivers/net/ethernet/marvell/octeontx2/nic/otx2_ethtool.c
> +++ b/drivers/net/ethernet/marvell/octeontx2/nic/otx2_ethtool.c
> @@ -1283,7 +1283,8 @@ static int otx2_set_link_ksettings(struct net_device *netdev,
>   }
>   
>   static void otx2_get_fec_stats(struct net_device *netdev,
> -			       struct ethtool_fec_stats *fec_stats)
> +			       struct ethtool_fec_stats *fec_stats,
> +			       const struct ethtool_fec_hist_range **ranges)
>   {
>   	struct otx2_nic *pfvf = netdev_priv(netdev);
>   	struct cgx_fw_data *rsp;
> diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c b/drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c
> index d507366d773e1..9ad43b40d4ca5 100644
> --- a/drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c
> +++ b/drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c
> @@ -1927,7 +1927,8 @@ static int mlx5e_set_wol(struct net_device *netdev, struct ethtool_wolinfo *wol)
>   }
>   
>   static void mlx5e_get_fec_stats(struct net_device *netdev,
> -				struct ethtool_fec_stats *fec_stats)
> +				struct ethtool_fec_stats *fec_stats,
> +				const struct ethtool_fec_hist_range **ranges)
>   {
>   	struct mlx5e_priv *priv = netdev_priv(netdev);
>   
> diff --git a/drivers/net/ethernet/sfc/ethtool.c b/drivers/net/ethernet/sfc/ethtool.c
> index 23c6a7df78d03..20de19d6a4d70 100644
> --- a/drivers/net/ethernet/sfc/ethtool.c
> +++ b/drivers/net/ethernet/sfc/ethtool.c
> @@ -217,7 +217,8 @@ static int efx_ethtool_set_wol(struct net_device *net_dev,
>   }
>   
>   static void efx_ethtool_get_fec_stats(struct net_device *net_dev,
> -				      struct ethtool_fec_stats *fec_stats)
> +				      struct ethtool_fec_stats *fec_stats,
> +				      const struct ethtool_fec_hist_range **ranges)
>   {
>   	struct efx_nic *efx = efx_netdev_priv(net_dev);
>   
> diff --git a/drivers/net/ethernet/sfc/siena/ethtool.c b/drivers/net/ethernet/sfc/siena/ethtool.c
> index 994909789bfea..b98271c546738 100644
> --- a/drivers/net/ethernet/sfc/siena/ethtool.c
> +++ b/drivers/net/ethernet/sfc/siena/ethtool.c
> @@ -217,7 +217,8 @@ static int efx_ethtool_set_wol(struct net_device *net_dev,
>   }
>   
>   static void efx_ethtool_get_fec_stats(struct net_device *net_dev,
> -				      struct ethtool_fec_stats *fec_stats)
> +				      struct ethtool_fec_stats *fec_stats,
> +				      const struct ethtool_fec_hist_range **ranges)
>   {
>   	struct efx_nic *efx = netdev_priv(net_dev);
>   
> diff --git a/drivers/net/netdevsim/ethtool.c b/drivers/net/netdevsim/ethtool.c
> index f631d90c428ac..7257de9ea2f44 100644
> --- a/drivers/net/netdevsim/ethtool.c
> +++ b/drivers/net/netdevsim/ethtool.c
> @@ -164,12 +164,25 @@ nsim_set_fecparam(struct net_device *dev, struct ethtool_fecparam *fecparam)
>   	ns->ethtool.fec.active_fec = 1 << (fls(fec) - 1);
>   	return 0;
>   }
> +static const struct ethtool_fec_hist_range netdevsim_fec_ranges[] = {
> +	{  0,  0},
> +	{  1,  3},
> +	{  4,  7},
> +	{ -1, -1}
> +};
>   
>   static void
> -nsim_get_fec_stats(struct net_device *dev, struct ethtool_fec_stats *fec_stats)
> +nsim_get_fec_stats(struct net_device *dev, struct ethtool_fec_stats *fec_stats,
> +		   const struct ethtool_fec_hist_range **ranges)
>   {
> +	*ranges = netdevsim_fec_ranges;
> +
>   	fec_stats->corrected_blocks.total = 123;
>   	fec_stats->uncorrectable_blocks.total = 4;
> +
> +	fec_stats->hist[0] = 345;
> +	fec_stats->hist[1] = 12;
> +	fec_stats->hist[2] = 2;
>   }
>   
>   static int nsim_get_ts_info(struct net_device *dev,
> diff --git a/include/linux/ethtool.h b/include/linux/ethtool.h
> index de5bd76a400ca..9421a5e31af21 100644
> --- a/include/linux/ethtool.h
> +++ b/include/linux/ethtool.h
> @@ -492,6 +492,17 @@ struct ethtool_pause_stats {
>   };
>   
>   #define ETHTOOL_MAX_LANES	8
> +#define ETHTOOL_FEC_HIST_MAX	18
> +/**
> + * struct ethtool_fec_hist_range - byte range for FEC bins histogram statistics
> + * sentinel value of { -1, -1 } is used as marker for end of bins array
> + * @low: low bound of the bin (inclusive)
> + * @high: high bound of the bin (inclusive)
> + */
> +struct ethtool_fec_hist_range {
> +	s16 low;
> +	s16 high;
> +};
>   
>   /**
>    * struct ethtool_fec_stats - statistics for IEEE 802.3 FEC
> @@ -524,6 +535,7 @@ struct ethtool_fec_stats {
>   		u64 total;
>   		u64 lanes[ETHTOOL_MAX_LANES];
>   	} corrected_blocks, uncorrectable_blocks, corrected_bits;
> +	u64 hist[ETHTOOL_FEC_HIST_MAX];
>   };
>   
>   /**
> @@ -1212,7 +1224,8 @@ struct ethtool_ops {
>   	int	(*set_link_ksettings)(struct net_device *,
>   				      const struct ethtool_link_ksettings *);
>   	void	(*get_fec_stats)(struct net_device *dev,
> -				 struct ethtool_fec_stats *fec_stats);
> +				 struct ethtool_fec_stats *fec_stats,
> +				 const struct ethtool_fec_hist_range **ranges);
>   	int	(*get_fecparam)(struct net_device *,
>   				      struct ethtool_fecparam *);
>   	int	(*set_fecparam)(struct net_device *,
> diff --git a/include/uapi/linux/ethtool_netlink_generated.h b/include/uapi/linux/ethtool_netlink_generated.h
> index e3b8813465d73..f9babbd2e76f9 100644
> --- a/include/uapi/linux/ethtool_netlink_generated.h
> +++ b/include/uapi/linux/ethtool_netlink_generated.h
> @@ -567,6 +567,10 @@ enum {
>   	ETHTOOL_A_FEC_STAT_CORRECTED,
>   	ETHTOOL_A_FEC_STAT_UNCORR,
>   	ETHTOOL_A_FEC_STAT_CORR_BITS,
> +	ETHTOOL_A_FEC_STAT_HIST,
> +	ETHTOOL_A_FEC_STAT_FEC_HIST_BIN_LOW,
> +	ETHTOOL_A_FEC_STAT_FEC_HIST_BIN_HIGH,
> +	ETHTOOL_A_FEC_STAT_FEC_HIST_BIN_VAL,
>   
>   	__ETHTOOL_A_FEC_STAT_CNT,
>   	ETHTOOL_A_FEC_STAT_MAX = (__ETHTOOL_A_FEC_STAT_CNT - 1)
> diff --git a/net/ethtool/fec.c b/net/ethtool/fec.c
> index e7d3f2c352a34..b20a1e40dc45e 100644
> --- a/net/ethtool/fec.c
> +++ b/net/ethtool/fec.c
> @@ -17,6 +17,8 @@ struct fec_reply_data {
>   		u64 stats[1 + ETHTOOL_MAX_LANES];
>   		u8 cnt;
>   	} corr, uncorr, corr_bits;
> +	u64 hist[ETHTOOL_FEC_HIST_MAX];
> +	const struct ethtool_fec_hist_range *fec_ranges;
>   };
>   
>   #define FEC_REPDATA(__reply_base) \
> @@ -113,11 +115,13 @@ static int fec_prepare_data(const struct ethnl_req_info *req_base,
>   		struct ethtool_fec_stats stats;
>   
>   		ethtool_stats_init((u64 *)&stats, sizeof(stats) / 8);
> -		dev->ethtool_ops->get_fec_stats(dev, &stats);
> +		dev->ethtool_ops->get_fec_stats(dev, &stats, &data->fec_ranges);
>   
>   		fec_stats_recalc(&data->corr, &stats.corrected_blocks);
>   		fec_stats_recalc(&data->uncorr, &stats.uncorrectable_blocks);
>   		fec_stats_recalc(&data->corr_bits, &stats.corrected_bits);
> +		if (data->fec_ranges)
> +			memcpy(data->hist, stats.hist, sizeof(stats.hist));
>   	}
>   
>   	WARN_ON_ONCE(fec.reserved);
> @@ -157,13 +161,55 @@ static int fec_reply_size(const struct ethnl_req_info *req_base,
>   	len += nla_total_size(sizeof(u8)) +	/* _FEC_AUTO */
>   	       nla_total_size(sizeof(u32));	/* _FEC_ACTIVE */
>   
> -	if (req_base->flags & ETHTOOL_FLAG_STATS)
> +	if (req_base->flags & ETHTOOL_FLAG_STATS) {
>   		len += 3 * nla_total_size_64bit(sizeof(u64) *
>   						(1 + ETHTOOL_MAX_LANES));
> +		len += nla_total_size_64bit(sizeof(u64) * ETHTOOL_FEC_HIST_MAX);
> +		/* add FEC bins information */
> +		len += (nla_total_size(0) +  /* _A_FEC_HIST */
> +			nla_total_size(4) +  /* _A_FEC_HIST_BIN_LOW */
> +			nla_total_size(4)) * /* _A_FEC_HIST_BIN_HI */
> +			ETHTOOL_FEC_HIST_MAX;
> +	}
>   
>   	return len;
>   }
>   
> +static int fec_put_hist(struct sk_buff *skb, const u64 *hist,
> +			const struct ethtool_fec_hist_range *ranges)
> +{
> +	struct nlattr *nest;
> +	int i;
> +
> +	if (!ranges)
> +		return 0;
> +
> +	for (i = 0; i < ETHTOOL_FEC_HIST_MAX; i++) {
> +		if (ranges[i].low == -1 && ranges[i].high == -1)
> +			break;
> +
To avoid relying on { -1, -1 } as an end marker, first check
if (i && !ranges[i].low && !ranges[i].high) break;
to treat a second {0, 0} as the end of the histogram, while still 
allowing {0, 0} to be used as a valid first bin. Then check
if (hist[i] == ETHTOOL_STAT_NOT_SET) continue;
to skip over any unused or uninitialized bins. This should work safely 
even if the driver provides fewer bins than expected.> +		nest = 
nla_nest_start(skb, ETHTOOL_A_FEC_STAT_HIST);
> +		if (!nest)
> +			return -EMSGSIZE;
> +
> +		if (nla_put_u32(skb, ETHTOOL_A_FEC_STAT_FEC_HIST_BIN_LOW,
> +				ranges[i].low) ||
> +		    nla_put_u32(skb, ETHTOOL_A_FEC_STAT_FEC_HIST_BIN_HIGH,
> +				ranges[i].high) ||
> +		    nla_put_u64_64bit(skb, ETHTOOL_A_FEC_STAT_FEC_HIST_BIN_VAL,
> +				      hist[i], ETHTOOL_A_FEC_STAT_PAD))
> +			goto err_cancel_hist;
> +
> +		nla_nest_end(skb, nest);
> +	}
> +
> +	return 0;
> +
> +err_cancel_hist:
> +	nla_nest_cancel(skb, nest);
> +	return -EMSGSIZE;
> +}
> +
>   static int fec_put_stats(struct sk_buff *skb, const struct fec_reply_data *data)
>   {
>   	struct nlattr *nest;
> @@ -183,6 +229,9 @@ static int fec_put_stats(struct sk_buff *skb, const struct fec_reply_data *data)
>   			  data->corr_bits.stats, ETHTOOL_A_FEC_STAT_PAD))
>   		goto err_cancel;
>   
> +	if (fec_put_hist(skb, data->hist, data->fec_ranges))
> +		goto err_cancel;
> +
>   	nla_nest_end(skb, nest);
>   	return 0;
>   
Thanks,
Carolina

