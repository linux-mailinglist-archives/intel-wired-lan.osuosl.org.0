Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E831C564C7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Nov 2025 09:36:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AF0E1405C0;
	Thu, 13 Nov 2025 08:36:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s3R2MCBTxq_S; Thu, 13 Nov 2025 08:36:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E706E405F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763023006;
	bh=sw6Aly6xySO0SimQkRFXAV2LsP6J26Ytg1uBM8NwG/I=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3b/15VVh1+pkmOvDRLUWHEpXLfjeRfI5SiLH07sW5XYKWPUq4EWR0+HjFCFyVdn9r
	 iIKXC8DiK3z/r+ubIuIHikgVdBAy3mNMA4+jK/5lmwef0LmTHd/oHnk4siZnn7lOf2
	 kW7baAkNi2xBRQ6scArrB2oI836o7gZgaFbsGI2niAiIKL27dKhc8rqYHFP7+xA1g6
	 0JjqEwV7T7pFOD34virOR5b19BXTt154SPoSIb6NBhNmhr0zJ/snGDTuUoRTcwaIVK
	 tCBsySHwPHYxb13mgeOeZzL5s/UPQxB2ssBoLCOZB1uaP2+TGNQ7ID3tJybrvQTdvK
	 tM0JAJuHxc3cA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E706E405F0;
	Thu, 13 Nov 2025 08:36:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id EF104342
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 08:36:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EBD8D60DF1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 08:36:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O_ZHfzeRQ1Ek for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Nov 2025 08:36:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.177.32;
 helo=mx0b-00069f02.pphosted.com; envelope-from=gregory.herrero@oracle.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BABB960881
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BABB960881
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BABB960881
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 08:36:41 +0000 (UTC)
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5AD1hL6H031849;
 Thu, 13 Nov 2025 08:36:34 GMT
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4acyra9666-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 13 Nov 2025 08:36:33 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 5AD6TkSY029104; Thu, 13 Nov 2025 08:36:33 GMT
Received: from dm5pr21cu001.outbound.protection.outlook.com
 (mail-centralusazon11011021.outbound.protection.outlook.com [52.101.62.21])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 4a9vafve57-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 13 Nov 2025 08:36:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VbgfZ/msQeCDbYit0TUYnyJVpafdVCF7UPxU4PYH+jpyjdamaCmPR14Is9cS2YOK9EUZFAOjzoof/DZaQrDZzxazZoNZspXIwXlD/jc2RuJsbFCXfr2LAAQQLonYZzgb76Svn6aArS+6CnxiV/p9wI8MhWmymvw+BCQKEFVXWDAHHG3r/f7WqdfBedWef7tIgTdoz9KJGMmzkiv7mXzVVbPaTIgIhxPcHfeIHpkddCBMJPkzau3mAAHM5K9BYqk9DPOb2XqFexo+61IC5AmVbbwXO02PvUDLd6YXGk9fGAezU1D0h0xfOrn+bMOvwGz4KfJPPY3W4ijzeu65/ZGZQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sw6Aly6xySO0SimQkRFXAV2LsP6J26Ytg1uBM8NwG/I=;
 b=H5eqAYgXTsb53OPRps26tMqhLGVRVB8/XlutQu02U9SDt32HUmHXVxMhwRFKdgId3CaEzvamvICVLY4j9hoUzyBVfEvVhWcsg6VSVb3oti8lp/DtE7hUYVlTWWyBj4RwkVr1IXluvv8azbnwJ8mrxwPHF2K18cIurRXZHssJtp2PNYHDD+Q8/3w+PgRGBdBLOGok0RYCq+19iSYx8y5x83WUQhkNBRk7Xh2WqyAK9NzOXtu8mDov8VeCgQ6fUOunMptm9MRDpw7JPk8XlDllIlm6hbQd04rZKXQ9kzkUK1+y2pQP+zdnMgKjCs95OiwXLwQRHCtQ5JMR8c5jnWCleA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DS7PR10MB4846.namprd10.prod.outlook.com (2603:10b6:5:38c::24)
 by DM3PPFDEB3189E6.namprd10.prod.outlook.com (2603:10b6:f:fc00::c4f) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.17; Thu, 13 Nov
 2025 08:36:29 +0000
Received: from DS7PR10MB4846.namprd10.prod.outlook.com
 ([fe80::ade8:e990:1af7:f5f8]) by DS7PR10MB4846.namprd10.prod.outlook.com
 ([fe80::ade8:e990:1af7:f5f8%7]) with mapi id 15.20.9320.013; Thu, 13 Nov 2025
 08:36:29 +0000
Date: Thu, 13 Nov 2025 09:36:25 +0100
From: Gregory Herrero <gregory.herrero@oracle.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Message-ID: <aRWYiafAr6qivBHm@oracle>
References: <20251113080459.2290580-1-gregory.herrero@oracle.com>
 <20251113080459.2290580-2-gregory.herrero@oracle.com>
 <IA3PR11MB8986755762618F3EE7AF309EE5CDA@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <IA3PR11MB8986755762618F3EE7AF309EE5CDA@IA3PR11MB8986.namprd11.prod.outlook.com>
X-ClientProxiedBy: MI1P293CA0007.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:2::18) To DS7PR10MB4846.namprd10.prod.outlook.com
 (2603:10b6:5:38c::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB4846:EE_|DM3PPFDEB3189E6:EE_
X-MS-Office365-Filtering-Correlation-Id: c5b257eb-4cab-4773-c772-08de228fbdbc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?R3BhTGp3dkhNMmxIRmJ1R21VK3pTWjZ2bXNUS2Y1YTBKZUpxdWR2RmFxamJn?=
 =?utf-8?B?TFl3cnZrdUt3a3ZuSEY0d3poRGppd1Z5ankxSzN3OWNMRHAvMWdtR042elha?=
 =?utf-8?B?VGtxMUJRaUJEamswa2Y0Ylk1SWh6V2VZWFQ3eUFJbFUvZ2JIZnVQZkp3R29V?=
 =?utf-8?B?K01DU20vMUIyNTlaOG9aUGJCLzN6NDlsZGdTQUJFMFh2ZG9VTWRQeXV5Tk5m?=
 =?utf-8?B?Z0VyN0NUTk05dU00RTJIQlBCRDZydXZqVlM3Ty9rMWRMWmJCRXY3OFMrZnRp?=
 =?utf-8?B?U2U4TXcyMm40dGxKemtRUjlWN1JXaXZRYU5jemxPb1ZoeGlHendlS2tiYjYz?=
 =?utf-8?B?emZhZStOK2pRNjVwcGEvNlN4eG84aDA4Ny9mUkx4S1JRaENKZXFORTB3TlF1?=
 =?utf-8?B?U25rcWZjWFBISmFva3J3b2RjbXZZbHIrSjh5WlZSYm1UN2o0Y0VPNGhubGxa?=
 =?utf-8?B?cXdNUkpTRjVqNDBlU2lZL3FHMkRwdmtTU3lUMTJXd2dTMTdFZUR3UEN6NVZ2?=
 =?utf-8?B?NjZnS1JtRDdONU1vZC9ORWw4WWxNaVVsOEZkOHNqcnBGOGZpTWVVck1VZDZ4?=
 =?utf-8?B?bTllQnBEdDVMWXJlY25wQzdCenlOanh5MExzeWNITjNMVW1TcTcwUHdORU5r?=
 =?utf-8?B?OFdwM1JleGFhODRpM1BaV01xcURHWHpRUHlhWFYwbWVGSkE2b3EyVHZTMmV1?=
 =?utf-8?B?cWNXeTlwbnc5b1c0MXpvek5zbDRMWngzaWg0QldGaDV2YWIwU2s1QnUvUDJn?=
 =?utf-8?B?RkxCSFpoVWgrUzlXSFVGaWRtamlQV1RtdVBBZVNEcithcHlucDBOMGQyQWhC?=
 =?utf-8?B?VWtDbVpMNi9mcmZRNVVCcXp4ZkhoSDAxKy9yTUhFL3pZTE9Dd3pJbDdWUzNq?=
 =?utf-8?B?bmNQTG1lRVVoRVJRVVpKelRUanhBK2JpODlGM3ljYkNmZnBOc3hDalREdUhm?=
 =?utf-8?B?NERKMXhyTVdDaW0wRGc5VGZLK2dZVm9jUDkvL1ZHVVZ0cDdlWmZFck95cHEz?=
 =?utf-8?B?RGRLa0p2UHY2bmE3QzVVcVFESmZRSjlxcmhMWnp5OWRuckNsRWVQYTdlblFp?=
 =?utf-8?B?cUNwVzhXNU9ZVG43c3BSL3djNEJYR0dmdGcxaU5Yb3FOV3ZqY2xPNDlDWDY1?=
 =?utf-8?B?MXRvSCtHWG94MU04ZG5PclBZSVBrYW5URFd0MWwzQmRBRmRPT1FnaW5Pbktv?=
 =?utf-8?B?a2FlVnpZQ08rTGlWWGxzUXh6U2pwaHcyNGhwSGg0UHFsUjNLOXR1VFRDQ1pw?=
 =?utf-8?B?VTVRS1JDaEVpWDhHL3pEbW1TZmhsNUpaME8zM1RSOEY3eGt2YXcwQXRRVjUr?=
 =?utf-8?B?WDRzL1UvcUtxcVUvQTFlSUJQUEU3ZnFVOTdPTk95ekYrbGV6WUtqWjFyVzl5?=
 =?utf-8?B?eFdkY0c2eCtmWG9KNkl4YytLMUJMekZaa3BCbmxWMVdZMFZWY0tBVkVQc2dG?=
 =?utf-8?B?OUxBcUpTSnNPaW0wQlpycFcvQXJzenIxYkhEVklHVnBFdEtuL2k5V09kYkw5?=
 =?utf-8?B?TlYxRjdrMUxMbFVRS0E2UHJEYzhMQjBtVGhxUE5EZDg2Mi9NVE1oVFZka1Jx?=
 =?utf-8?B?UVhKaGNGaWdSN3VSSVlvYmNuR1I5cVF2b2dvaVQ4ZTJybTdOYVEvcGpCWDVk?=
 =?utf-8?B?V2RLY1NjT2hmZDh1QXlyZXBLSmNtVE03d1kxM29iVThHcll4dFVlK0dGUFFF?=
 =?utf-8?B?MXUxWWY5Wk9rNnRrSFpKc2k4eWhVUW9zd2U4clBKY0xNODAySlppeXJUa3NI?=
 =?utf-8?B?SUFSTEgwT1JESmN0VU9nRzc4K2hXbHA2ZmE4UEYrWkNPTXN1NkIrbzdjeGdu?=
 =?utf-8?B?RUZSTGg4RFFpdGxJd1Flblk4UEZmMmhtdUkvZG41RGc4YXYvTHl6cnBNRy9L?=
 =?utf-8?B?NThaYTFETlZ0L3dKWkVuR1lxMVNJd3lpd2E0MEVNZUlaYkp6N3c4N3N0V3NQ?=
 =?utf-8?Q?6yFxRGfmYmiqlftXeBBZaDYY9Y/ZFuJM?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR10MB4846.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SWUyb2dwbmFnQTB5TjV0VnkvMkJrSlJrR0xqNmFUYlUzMUlVTTNZNW1HUmRE?=
 =?utf-8?B?S3Y4L2pWYUkzOW43Z2Y3Vy9aWmw4ejdYS3ByU04xQ2tuMm9weHFDWGxZZHI4?=
 =?utf-8?B?WVlOZDlYUUFFdGtRNE9YeVdSOFZwaXVMcFNsaXFLMXM3elRuTTUzckhLQVh5?=
 =?utf-8?B?WW0yMnpGYWFiQ205TERUT3RROU0yU29qU0F5dGJjZ1pIZVRXcWRYeFpEbkFO?=
 =?utf-8?B?MDZLZ2h2c0hYQUtVNVd1MmZoNHJ4K1k1T0FLaGtOT2Q4RFAxbEdtQ2FIVlVU?=
 =?utf-8?B?RWZBdEg3VlRTWmVGS2VuOUs4SThhKzBHbVN4TlF3ZHR1QWxhcUtKZVg2MDJB?=
 =?utf-8?B?MHVwNmlDWk44dWVjMG1rSExPalVDTHRQWmtlQlBDTHhNcEVSejFZU2VnNW1F?=
 =?utf-8?B?NlpLTGEzeG1PY283VWFMZGhuZisrRjUwNUw1ZWxLSnFuYUtrTGoyRzhvRDhj?=
 =?utf-8?B?TzBwK2hkV0pkVE11R01xMjlBRHNXY1pxMWl6RnFyY1JrQUg1b1gvYW5IS0xp?=
 =?utf-8?B?dWhEVTVmZkh1YWN3QXJFQUlmbTB6SUEwT2JTdXVEOWpNYUdDYzkxRGRZTXgx?=
 =?utf-8?B?dVZwejlVMVd3aEpLYjJ1N2VYOFAxMUFrN0ZMN0RYVHdGMnR2U2wxTVdCRk5X?=
 =?utf-8?B?VWJ4Mjl3NUIxWlVWblUwY3V0LzQ4WGIyNytBdGk5NU52S2FyeDh2bXE3UGpB?=
 =?utf-8?B?dTNjWll0VXc2Z3ljSXhpSlF4QWg0Z1FJOFZ3MkRKeGVoZUczVjdlTndkSTBp?=
 =?utf-8?B?a25jVytRZzZvQk5RczNOSnE2aEFWUklUTUdkUjZtQTA0RksxVW5OSXdMRDJR?=
 =?utf-8?B?eWdDVE5pcjY3VVhsZUJrRzVnS2Ivemh3dmNXU0tZY1MvQjhRUXd1dFZPMklV?=
 =?utf-8?B?d05VNitreGhJODYzcGt0RnlrSzRoTU5VZ21xdFQvOTc2cVllNllvV1BmZUdC?=
 =?utf-8?B?TTI2bE9ONGFQRVFvd3VIMGpaRlpkK0lXd1dFcVNWZ2xpZUFtYXBUS2V5ZEVU?=
 =?utf-8?B?bWg3SFZWR2MyRTc3QlZhSEJEMWFrNDJqYjRkOC9MSkswSWpaWXZpYUg3a3lV?=
 =?utf-8?B?YXR2SnN0NklaeVdzVVVvU2NoSCtLU3l1Q3ZWVHpZVU4yUFBpcXBzaEtPd003?=
 =?utf-8?B?SkUrR284YkRNNkdwa3U1SEpCRmxyZWdHUEcvcWpjN2pCdTlMb3JoU3BYbGpB?=
 =?utf-8?B?RXpPQW9UVm5pT3M1UVkwbjhoeXc4SnZWV3FyWFF1SStSbkF4c1JvUjA2NlRE?=
 =?utf-8?B?ZVk0S21hdTE5NnJlL0h4aVlOeWtpWGI2azVwekM4Y3o1M290SGYvNlNZeWRp?=
 =?utf-8?B?eXBZSHVZUUNyY2YyTTFzb1k1YVFISW9rbjRJZVIzbWl4TTlmdk1TczlMRmt5?=
 =?utf-8?B?Y04vcS9LS01wL0FjdExVL3p5ZVJzSXlkNnRwTGU1SGZoUlV6M25nYjlRWmR1?=
 =?utf-8?B?Y0FDTmc2eXdCdE5qVGJRNDRXVzhESjBXbDlGYzJyTkVOZ004U1AvMXhGWlVK?=
 =?utf-8?B?NENlK3ZIQ1BlNzBpc0M3R09YeG44b2h6MCtkd216ckc2c0JLY1RrUG0wTVBG?=
 =?utf-8?B?eGxwSFd5RzE2a3FLc3lsMS8xRTZEQXdPTXFhRm8rY3UxR09ZZU16RUJwSEdR?=
 =?utf-8?B?dUM1RHF2MlNFSWN4TEdsRGpDOTI3SEtxYVNJSXpXdmdPK2lpSnVFTzE0em1B?=
 =?utf-8?B?Z1JnRTc4ZkNIV2JHTzBuSnlqV1RER3RGSWhFbzJhZldsYkY0bDRpTk1XUUVt?=
 =?utf-8?B?cHEydHBoMmNCb0pTT0psaEtSZ2w3WTIzMlV3TnVMejQwcU5waysvNHZWWDZz?=
 =?utf-8?B?eUR1d1FuSWZLZE56L1dSNldzL0hYM3RDMi9Gd2hxRmRjeGkvRGJHUkF4ZXMx?=
 =?utf-8?B?M3ZsU2xhQ2dtZWQ5eUo0US9VRCtvQXA3b3VNajNBcElPZHByc1NWaFptZGYr?=
 =?utf-8?B?aGdKWThjVEczVzdPWDF2Rjk1NGRwTmVoRTNTMFhRMHZETlNmaTkySVFMVWFw?=
 =?utf-8?B?UjBGcGpvQ0E5bkx4NzhPWlRIRmtlSGpkNVJ0ZHc4M2J6Vk5VM25acUM1Vzlu?=
 =?utf-8?B?aE5TSUhEdkpUcTE3QlVuUXZZbzVOMUVYcEozU1BORmoxb0s1SER3Z3JlL3dq?=
 =?utf-8?B?SW12VmRFS1NGRVhicWw2WU1aM05qby9zTWZRbHRpaTEvdFlPaTdURGpOa2g1?=
 =?utf-8?B?cHc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: oRw8vZW+MO3NPiqboWwCbMxUlLuAdtRq44JDC+DJT4CpX3uoDEU8r3m2iK4Jo+0GG6x3svL8GeI0+iaS6iCz2F4rxx5CNNxfUYWWgzWPcVhcKQ02L/QOOFTM3Azttsg4ngkVrcQLiMASZ8Pi2+n1LO3+EsqfW1H97nDj3hrydnMWQ3y/RFkz26KudKn0NqtPSRVfMsrgyB5Pw/CzA4TRl169OO+Q8jhwp9RD8Q3StSPYorNCwimPGe0iUkCpWRjVDbORdtBkf6XwH1IAqEXVFnW3Rw6JmPT7sv30RK1qPE/rUZPh0lh9K8YddrmewOwciTqo4EpivBqaH/9u5HCVU7iQku3hJU2EzFptehBJvQvyuU8ZCiK+vvWewo9tsMcVxZ8my611kN+aMFkzMjixAsF7mTaOBUYqNQAfcOOhsiAClXF5au0mEqa8ApOOj1jd+ygGp/VwZFWUE5ez6kE9O73N8IXnCCzv2kQcMwusGFO7Sp3icXaVywMiyQsi2CP5i5PRt6cvGRAVtqotlZ3utFVwWqnC688uQHMem+WYP/m2TNiBLcsehJ1SfpXWsvURokJL7k19KD076eOO4zrDCDOuV9r3WN3BZBjUrgD80yc=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c5b257eb-4cab-4773-c772-08de228fbdbc
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB4846.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Nov 2025 08:36:29.3704 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: y2UvbMxLAFEwJZ1Oh1W1sUdR1bMtQt2EhXBd2FL6DFkQrCMZXkz6SaNEofluk/lPJFNKvwgW7j5TygWPQ329j3R26dR9yP6q/I3v8TG6yXw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPFDEB3189E6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-12_06,2025-11-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 adultscore=0
 malwarescore=0 spamscore=0 suspectscore=0 bulkscore=0 mlxscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2510240000 definitions=main-2511130061
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEyMDE1MSBTYWx0ZWRfXzTl4iKCVN/ui
 DhMB17SboAIyFHXnMSFTzwvPNXZg53GFgxzMvjJ2rfo9Kh3O0Uwkim5K+D55Fu6szEvCxBE9rqp
 WpcSSDAsIc5hT7pHx7IHPPGTGYKIDMHTPbRZtttWGIekZ0qyzs7WTStN+hTFds45+IJ2F+ql3iQ
 GzgR+6m8J8T0F/PuAy0vfGrSzT/65sUZYWamCS3tAYzEbiianSXPPQcWyYzb9AVf59XsrjmUR4m
 LKuQnpeyxabrXmaKRlfFqjNvVeMJZbiT1WY/R/kBMmyZIRaIrqOlTI3nuzjUptab0/5eAtsSh6N
 Vw1NylnO88mM4mH35J4l5zsj2fdklokJaXumEKlRRAUTPBP84uzb/uxxPC0W4vl8i5LpsqkakmD
 yNpJNZ5KM43dWhWMX2M+b3HedgITo14bZ5m1scc6vjNyXVbShAY=
X-Proofpoint-GUID: bT1Vd86NSHo1FdFMf-tQdUA__i7Qou8S
X-Authority-Analysis: v=2.4 cv=ILgPywvG c=1 sm=1 tr=0 ts=69159891 b=1 cx=c_pps
 a=e1sVV491RgrpLwSTMOnk8w==:117
 a=e1sVV491RgrpLwSTMOnk8w==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6UeiqGixMTsA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=yPCof4ZbAAAA:8 a=QyXUC8HyAAAA:8 a=J1Y8HTJGAAAA:8 a=1XWaLZrsAAAA:8
 a=VwQbUJbxAAAA:8 a=20KFwNOVAAAA:8 a=lTbjQzD5AAAA:8 a=9p3OSDFrIo-M7HaLfsgA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=y1Q9-5lHfBjTkpIzbSAN:22
 a=w8YF5asEQ23juLwKoPR8:22 cc=ntf awl=host:13634
X-Proofpoint-ORIG-GUID: bT1Vd86NSHo1FdFMf-tQdUA__i7Qou8S
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2025-04-25; bh=sw6Aly6xySO0SimQkRFXAV2LsP6J26Ytg1uBM8NwG/I=; b=
 bushX4bFwKageqIdOC0Zyi4oyCo5JiE5M7dj59sSnvbUBBUCPtjpYZVkrK4eiUdZ
 oSjr4j/chTMU4dFXF/xViTeJTRLF1yQXelpnhL+mIMJ3FzhDbElm6PfO4s/+ICiU
 5yh1LdVWjMXyHdBgbsZVTg0Xmb4W8HpwrZkatnMQtahg7ZnypZ148shLGiQBadi8
 GupQysuBLgobSFg5cbdCP22I/COCEy6NFiULrHc2NfCAVY86Z5Nl92oE2avBn4c+
 xsTPRBDnSnJKee+V2XsMIcrgRIJc4ArFdKQuBrgxZTk98FyJKbADwlx0kHkCHT9/
 qY+n6bLSvs/aPFkubrwQ3w==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sw6Aly6xySO0SimQkRFXAV2LsP6J26Ytg1uBM8NwG/I=;
 b=o6vHOs+9Kmv7DU12y2FMBliEzlwf0+anp9ie7XrQRoZYWgvD8d4iDfpRtBOCdFoluMT9FgRTmbwfsR1FLCePuek+75feKpx9TDp+HyBH4zw34s6+xQA6kZA3UTGPoENKOlY7ZpID/CBvSZZqscoHY0wALKZzteMIrK0h98auOwU=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com
 header.a=rsa-sha256 header.s=corp-2025-04-25 header.b=bushX4bF; 
 dkim=pass (1024-bit key,
 unprotected) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com
 header.a=rsa-sha256 header.s=selector2-oracle-onmicrosoft-com
 header.b=o6vHOs+9
Subject: Re: [Intel-wired-lan] [PATCH v2 1/1] i40e: validate ring_len
 parameter against hardware-specific values.
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

On Thu, Nov 13, 2025 at 08:18:30AM +0000, Loktionov, Aleksandr wrote:
> 
> 
> > -----Original Message-----
> > From: gregory.herrero@oracle.com <gregory.herrero@oracle.com>
> > Sent: Thursday, November 13, 2025 9:05 AM
> > To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Nguyen,
> > Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> > <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> > davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> > pabeni@redhat.com
> > Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> > kernel@vger.kernel.org; Gregory Herrero <gregory.herrero@oracle.com>
> > Subject: [PATCH v2 1/1] i40e: validate ring_len parameter against
> > hardware-specific values.
> > 
> Please drop the trailing period from the subject.
> 
Ok
> > From: Gregory Herrero <gregory.herrero@oracle.com>
> > 
> > The maximum number of descriptors supported by the hardware is
> > hardware dependent and can be retrieved using
> > i40e_get_max_num_descriptors().
> > Move this function to a shared header and use it when checking for
> > valid ring_len parameter rather than using hardcoded value.
> > Cast info->ring_len to u32 in i40e_config_vsi_tx_queue() as it's u16
> > in struct virtchnl_txq_info.
> > Also cast it in i40e_config_vsi_rx_queue() even if it's u32 in
> > virtchnl_rxq_info to ease stable backport in case this changed.
> > 
> > By fixing an over-acceptance issue, behavior change could be seen
> > where ring_len would now be rejected whereas it was not before.
> > 
> Please add a short “Tested:” explanation (what hw/flows, expected/actual before/after).
> 
No real test was done, it was found only by code inspection.
I could update the description though:
 By fixing an over-acceptance issue, behavior change could be seen where
 ring_len could now be rejected while configuring rx and tx queues if its
 size is larger than the hardware-specific maximum number of descriptors.

> > Fixes: 55d225670def ("i40e: add validation for ring_len param")
> > Signed-off-by: Gregory Herrero <gregory.herrero@oracle.com>
> > ---
> >  drivers/net/ethernet/intel/i40e/i40e.h          | 17
> > +++++++++++++++++
> >  drivers/net/ethernet/intel/i40e/i40e_ethtool.c  | 12 ------------
> > .../net/ethernet/intel/i40e/i40e_virtchnl_pf.c  |  4 ++--
> >  3 files changed, 19 insertions(+), 14 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e.h
> > b/drivers/net/ethernet/intel/i40e/i40e.h
> > index 801a57a925da..a953cce008f4 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e.h
> > +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> > @@ -1418,4 +1418,21 @@ static inline struct i40e_veb
> > *i40e_pf_get_main_veb(struct i40e_pf *pf)
> >  	return (pf->lan_veb != I40E_NO_VEB) ? pf->veb[pf->lan_veb] :
> > NULL;  }
> > 
> > +/**
> > + * i40e_get_max_num_descriptors - get maximum number of descriptors
> > for this hardware.
> > + * @pf: pointer to a PF
> > + *
> > + * Return: u32 value corresponding to the maximum number of
> > descriptors.
> > + **/
> > +static inline u32 i40e_get_max_num_descriptors(const struct i40e_pf
> > +*pf) {
> > +	const struct i40e_hw *hw = &pf->hw;
> > +
> > +	switch (hw->mac.type) {
> > +	case I40E_MAC_XL710:
> > +		return I40E_MAX_NUM_DESCRIPTORS_XL710;
> > +	default:
> > +		return I40E_MAX_NUM_DESCRIPTORS;
> > +	}
> > +}
> >  #endif /* _I40E_H_ */
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> > b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> > index 86c72596617a..61c39e881b00 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> > @@ -2013,18 +2013,6 @@ static void i40e_get_drvinfo(struct net_device
> > *netdev,
> >  		drvinfo->n_priv_flags += I40E_GL_PRIV_FLAGS_STR_LEN;  }
> > 
> > -static u32 i40e_get_max_num_descriptors(struct i40e_pf *pf) -{
> > -	struct i40e_hw *hw = &pf->hw;
> > -
> > -	switch (hw->mac.type) {
> > -	case I40E_MAC_XL710:
> > -		return I40E_MAX_NUM_DESCRIPTORS_XL710;
> > -	default:
> > -		return I40E_MAX_NUM_DESCRIPTORS;
> > -	}
> > -}
> > -
> >  static void i40e_get_ringparam(struct net_device *netdev,
> >  			       struct ethtool_ringparam *ring,
> >  			       struct kernel_ethtool_ringparam
> > *kernel_ring, diff --git
> > a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> > b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> > index 081a4526a2f0..5e058159057b 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> > @@ -656,7 +656,7 @@ static int i40e_config_vsi_tx_queue(struct i40e_vf
> > *vf, u16 vsi_id,
> > 
> >  	/* ring_len has to be multiple of 8 */
> >  	if (!IS_ALIGNED(info->ring_len, 8) ||
> > -	    info->ring_len > I40E_MAX_NUM_DESCRIPTORS_XL710) {
> > +	    (u32)info->ring_len > i40e_get_max_num_descriptors(pf)) {
> >  		ret = -EINVAL;
> >  		goto error_context;
> >  	}
> > @@ -726,7 +726,7 @@ static int i40e_config_vsi_rx_queue(struct i40e_vf
> > *vf, u16 vsi_id,
> > 
> >  	/* ring_len has to be multiple of 32 */
> >  	if (!IS_ALIGNED(info->ring_len, 32) ||
> > -	    info->ring_len > I40E_MAX_NUM_DESCRIPTORS_XL710) {
> > +	    (u32)info->ring_len > i40e_get_max_num_descriptors(pf)) {
> virtchnl_rxq_info.ring_len is already u32 (as noted in the commit message).
> Casting it to u32 before comparison is redundant and adds churn without value in mainline.
> The (u32) cast on info->ring_len can be dropped in mainline; if you need it only for a stable backport, consider keeping the mainline patch minimal and adding the backport‑only hunk when submitting to stable.
> 
I've dropped this cast and removed the comment about it from the commit
description.

Thanks for the review,
Greg
