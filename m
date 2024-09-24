Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E9C0984B56
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Sep 2024 20:49:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D87DF40E16;
	Tue, 24 Sep 2024 18:49:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X68h0pmVK1Z2; Tue, 24 Sep 2024 18:49:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B282440E0B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727203766;
	bh=+85nLNQF53WXx8GzJVO6BbSDm2lzN0Awzzh25uZ9QUY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Zu1J5id1ExPvs1D73Vj6oQ/K0Rm++w5swM1nTqovSvOamzapEb5SSwcuioLRdPOT8
	 IieBTggX841ry6+riFfgNLfvOKW+NcbR9J03zEf1ipoeYgTQeG/4cZ9i9RJNKs4rKn
	 Kf6oIz7M1gaUDI7R+0AkI99C3xRcx3DGOU9nVQPZJWH/HmsjOId1OBvtuwc7ttVq6i
	 69Yegx7xVGPsegvEnnG5N4ocaLR98C0eGfkpInoE6n2inCL6YZjikKpCS70k5QdR+G
	 nhGDiTevNXDGI4u2Ng7NkhD6tKW4R1mnqQTlDSKnLC6PLXT/azp5DETFari7LFGKc7
	 VANns5HRuuCRw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B282440E0B;
	Tue, 24 Sep 2024 18:49:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 829DB1BF57F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 18:49:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7D38940A48
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 18:49:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dIzoXxlTHDq6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Sep 2024 18:49:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.237.66;
 helo=nam12-bn8-obe.outbound.protection.outlook.com;
 envelope-from=brett.creeley@amd.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 299C040436
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 299C040436
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2066.outbound.protection.outlook.com [40.107.237.66])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 299C040436
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 18:49:23 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iUbqgMHt2X0QOUquu0dU1hQX2c4dBqRW4ZZGRfyGhMjVJGxsXh07s64IFGJ25VmBuI1Omyp3UITHlrPiLz825ZjH8yur/i2lvnMpx6VQCMfMRI4HOYlncLtICRkr8b6m69qwBMsCOrRW+gT+d7/8PzHemdbcMqgE5X4fLwFnNRiHLRO5o1LyOghV4Jz5uvdLvomfyHLddxcn/SIu0hr6YX5TU71CCkhyj2Jd6G8nr0ey9JuWYr51tI92Brxh9Pr30Dc52aaF+FECEmjUGZLiHQGCMZZcXD4U7jzEJlaRIhULKaSvTYCzEV48cPSge+KY9fM2L+G40FtZckjJmM4GwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+85nLNQF53WXx8GzJVO6BbSDm2lzN0Awzzh25uZ9QUY=;
 b=ID+TH+TI6sCTttkpJg5N/hQQOupx/4fDXcBCFTrMhS0Uj3RQCponuUfuTEt9Gpo4HpZeOIUTHKP4ot7diHgiiW5r5VKu6L+w1h2BnTkyJRQw7LfDzuHzCOAZVb1RL4ge0gXnVCbqYvX7as28TID6eWJAlB/YEI5xZXBQfbt4Di9lObaUciE/vPMERwYEdvIMkh64cn3RZdjKfchL1xiiHDA5H0+bRDgzxxnJr1aasNXvSG2p0O30u2V9S2gVj8bhDuIZbYxDIZ3J9O3KZkLTWNKio+9kpzlbnvDBtj27JvYLwk98RB65CSN5JzRYqufRyjV22mp5APoUOd7mRsTR5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from PH0PR12MB7982.namprd12.prod.outlook.com (2603:10b6:510:28d::5)
 by SN7PR12MB7323.namprd12.prod.outlook.com (2603:10b6:806:29a::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Tue, 24 Sep
 2024 18:49:20 +0000
Received: from PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::bfd5:ffcf:f153:636a]) by PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::bfd5:ffcf:f153:636a%3]) with mapi id 15.20.7982.022; Tue, 24 Sep 2024
 18:49:20 +0000
Message-ID: <ede73dc3-fac0-4152-8b2e-27cd1b1666b0@amd.com>
Date: Tue, 24 Sep 2024 11:49:17 -0700
User-Agent: Mozilla Thunderbird
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20240924100422.8010-3-marcin.szycik@linux.intel.com>
Content-Language: en-US
From: Brett Creeley <bcreeley@amd.com>
In-Reply-To: <20240924100422.8010-3-marcin.szycik@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0194.namprd04.prod.outlook.com
 (2603:10b6:303:86::19) To PH0PR12MB7982.namprd12.prod.outlook.com
 (2603:10b6:510:28d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR12MB7982:EE_|SN7PR12MB7323:EE_
X-MS-Office365-Filtering-Correlation-Id: 4dd54d19-a7c8-42e8-cd2c-08dcdcc99978
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MHA3YStpNlhIN01YRzhZZDFPME5WN1ZjM2QxNlVUc2VhMHBJVWhWbTBLaUhY?=
 =?utf-8?B?Wnh4M3hwTHltOHN6M2kvdGc4UWZCbkhVQ0w0eHBJZjNPZTFLUlA3bCtVeWNT?=
 =?utf-8?B?T2lZNURrU0U4eHRibXBCVG5SRkFRQnU4eEJKbEQvZDFsdExxZ21XQWRPOHF1?=
 =?utf-8?B?UnRnVFJJWUV0ZUJ1V3dBUlhNUlVkS09BUXdpWStpcy9SSlg0Z3V0cEl0UGRG?=
 =?utf-8?B?QlFLRDRmalcxcC8xSVQwTjRWMEh6dW5DZ1plbTNtQ3pPdyt4MWV5NUpYd1VR?=
 =?utf-8?B?ZjFxYXdzZzl1QnF4Rmx4dVplVWF0UnpzWlAyUVVmRUtaakxpZWpJbktGZ2Nj?=
 =?utf-8?B?NldnTVkybUhKLzJzMFBLMTVpRm9jdkg5endEMlcrbHpXdmVScDhyaFlQODN2?=
 =?utf-8?B?cXpvdndGbjdIU2pVdWtFQXdYV01jL1doODhsbHIwMk44YklzYjVySDVvRHho?=
 =?utf-8?B?UUM5aTJQSzB4dFZkaTdnUENoU2dUdHE4WG01VGNOMDN2d3VqL05sRDlIejFG?=
 =?utf-8?B?L3NkTDVSWHlweDArSElYOTJPUi80NDhLM1hsSGphbStkNTdBV3BQTEtEQ2du?=
 =?utf-8?B?VmVQY3NLQXRQYk9EbDhCQWRPTVRCdm9OL2R4azNzb0l4QmZmV0U5S0lSNkxo?=
 =?utf-8?B?N3BMQU1tdG5FMGZyRnI1YVZFbFd6clcvU1ZuN3h4ZTFjazRyOCs4eGhxM2d0?=
 =?utf-8?B?bm1ya2hRODJIRjlqNGZZZ0NqSmJJbEdIKzRudEZuTkxLZ3pSVmlZQStLWEhj?=
 =?utf-8?B?MC9YdERTQnRmNzhIWER2SlZ6bEVDMnNOYmh6dFYzLzJJenBZTWNHUGc4eXJy?=
 =?utf-8?B?Q0xZVW5XREFnSnVCM0g4Z0ZIQVczeVRUT1JOZHM2MDFiaVk1dEYydlArcCtp?=
 =?utf-8?B?OEZrdEVtOWpGV3NxRlR1U29CQnZMSnN6S1RIellQNDJyVzA3ZnBkUHVTVnF0?=
 =?utf-8?B?cS8xZ2pqV0RsMDVxaDE5QWZtRk9lTnR4U0d3c1NwUUlrUGQ4bmpNNnJBUHA4?=
 =?utf-8?B?NEFFK1dFd09rWUE3VmtPQkRSTWRuY2k2OGdpbnlpYnkyOXB4bGY4aXNEbU9Y?=
 =?utf-8?B?aFAwcEJWNHdwYkJtcDI1dnY2bEk4OHlpbG5ENGRSai9XQ0dNQ09aZHNUSDhH?=
 =?utf-8?B?WklGQ0YzMERIVUtQN054dVpnQ1dIZHEzV0JjbkNUalY5cFFlNHd2NzlIeWFB?=
 =?utf-8?B?dnhJZmZaZjZFMVprelAyRmpqazFNSGd6enF4bHB5VDdmY0dVYUsxWEljSTNE?=
 =?utf-8?B?RmRJeWw2T2hXUlN1a2IyTEg1MktjaXJEWGRnb2VqbXkyRmxTNzZRaGlEOHBC?=
 =?utf-8?B?RXNIbVBmTXo3dEtRYTJRMEhEblkvQU5VNGhlVEtyckRmcVJKMFN5VlUyOERS?=
 =?utf-8?B?ajBGdTcyem5OaVlZTS9DbDFITTUxMTVjRGVtTHZnRDc3c0h5djlGOTF1bU9y?=
 =?utf-8?B?RjNtM2h2dGRvL3pZR2ZlYVI0OTgxZDNXSnl4ZGZ2S25jMHVveE54ams3RG9R?=
 =?utf-8?B?eWRRenBlQjFjaVdsSWpJdmVDZzBIelZhWXJqZy9sajdTdEZudy8zdUJjcGRh?=
 =?utf-8?B?dExRcmYxTnhldVlrb2o0TFpJZWFIcU1QSHVWa2trNDQwNE4wVmx4UFBhU083?=
 =?utf-8?B?aEdFai9lV3hRbEVlVXpWUmpHaVByNEpkSHZRc0pnM2ZGL25CakE4Q0UxVmVr?=
 =?utf-8?B?Y1EzTHNqWThzd29rVTFhTU1OTjFwK012QkdRUlYrZ0Nlc2w4bkxwR3ZWczlZ?=
 =?utf-8?B?bVV1TStIejMxNktyRXNsUmlGb3ExSWJPU0FpSkowczVWVGEzTkdzZlNRQTZZ?=
 =?utf-8?B?OU9pd2t4Vnh2c1VXaE83dz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR12MB7982.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WUFXRU1ZSnMwZ0ZTcEVrT0h2eW9mUXE4SWQ5Mi9tTkxJRGdoMWs5Q3MxQ0l1?=
 =?utf-8?B?enRkS3RDdnFPN2dXeEJENlJ5cXB0VW1SU1JCRTlVY2JLQm9YYVRZem5HbE11?=
 =?utf-8?B?MjVRL3h0ekgwbGhRbnM5RndEVE9PcUFsTFRjY0xVaDA0ZG4vWXI3c2NCYVd2?=
 =?utf-8?B?aW9ySS9MMk5VRHFoeURNSUVSUGxHV0k4NTZycmFpV0ZDQUNCeDhjRW1jWDJ3?=
 =?utf-8?B?T3ppS2U0MEFrNVkvblNhSjhoOFRDdkNSRnZzbUlacndVaW5DRFFxczJ2SmRG?=
 =?utf-8?B?VXR4Wm85RitUTHl2cUxnWTBqc2pwb2xZVmZIdWs5cXM1UmN2SGhiTGh5YzBm?=
 =?utf-8?B?RGYzSFBRcTBPOEk5RUg2YlBDWklKWlc2QlBhUG5tVVJBQm1rSEZPTFoxQ21B?=
 =?utf-8?B?emJFM09kblVKWkFZMWRPVWsyMmRmcjB2Q21odWJBaHhabVNpNWJReDIvYjAv?=
 =?utf-8?B?VEgveE15V0I0MStXbyswSGdPNzBNR1JrcktLcU5NRi8xRzRoYVRaTjFwUkFi?=
 =?utf-8?B?dEQvSG91Vzl0ZEo1MVpxWkdjZnoyeERSVnh0N0VUR3dLNyt0VHhhNm92NlNl?=
 =?utf-8?B?Rkh4bTFRSENWOHFnTUhLWWhmTk9wNE1xM0FGTTY5SXFqRjZkbnRxSlhMamlI?=
 =?utf-8?B?ZUZNWHhtWDlWWjE2Ty9FMzZMSy9iUVBwbkErVVVtVVpIWm9LSURPTHRRdktp?=
 =?utf-8?B?T29EL2JRNEpjd3dRVWZvMWM4Q2l2aDN6cG8yNURKU1ZkUnF1K1R6VzlxWk9B?=
 =?utf-8?B?b0pQM3BGR3hFdEJSRmZyZkdMczhMaEtqeU9IRUMraEFqVmJrRFNzYXFTNWxn?=
 =?utf-8?B?VWxXRlJUcC81WDNhMEhwcDcranJvWDh2S09CUEZBU1ozVnJKelN0cWIxd0V2?=
 =?utf-8?B?KzZkd0NFMEJJS2NJOUdNbyt1SXlXS0FhUTE1a2tuSXhCTHV3eXo5Mm9xeHVK?=
 =?utf-8?B?QVFqNDh4dzRyRGU2UDhFNjgvcVRrcUFVbERvNWJQQi9TRFFxQlpGeHlsLzV4?=
 =?utf-8?B?MzM5L0tCU2RmZFJlZW1OamI0bXRQandCUWU5U0QwZE9sWnYyWDNFbEpaV2c5?=
 =?utf-8?B?ZFF4ckpsZW8xSUFtNC9ZUG9OY0ZIWlBjZzBNUGFFam9qRjc1VG80OENFOVR3?=
 =?utf-8?B?VUY5MWJ2a3FMbFZZQks5RmZkY3NRc2RBU01XNzhhanNqTDJ1dUxGL1c0cGJu?=
 =?utf-8?B?Q0kzMktwdEtpZjJQNktKeFBxZDdBb1FzYnBIenhXQU5IcFFiYmVaYmdVaWQ4?=
 =?utf-8?B?VnJKSEVpSS9XYkl6ais0aTRtaUNOekwzYStTaWtMMTlFaGZQcXUrTTNjVFVG?=
 =?utf-8?B?c0MzQm85Tm5TZmQ3akFpbklMMXBvT0lBSVdjWGdMeTc2S0RSeEFXTERxSWlX?=
 =?utf-8?B?S05QTHdtMWZia3dJQW13QmhjZkdMSXV1UEkyMkM3ZjdUb1RJWWdYNFRTS2ZL?=
 =?utf-8?B?Q1RMd1RxVE5tb2toM3J3NTRGKzIzWFBFczVRU2dKUUFCZU9wOFdYNVhSQjIw?=
 =?utf-8?B?QjNKM1c1RVdmNnNlNjRUODRGaFFLS1NKUDFJY1lzQUlwUUFwMm5LcG1DT0Jz?=
 =?utf-8?B?R1I1S1FKK1kvTitYRTAxN2gzcExoNndVOVRrUlcvTGw2dHZWNGVxTTRVeTNj?=
 =?utf-8?B?UU1oOU91WVJoeStHMnhtVHc3QmNpbGYxTHd2SEFaUkllRmZYZlBXNUNoVk9x?=
 =?utf-8?B?WjlnejN1TEo1ZjNXbjBOY0RZbFhzVjcwRU1xZGh3eU5QeGZ5MXJZMENkK2ZF?=
 =?utf-8?B?aVZJcWxrcVFvbHVzaHUxa0lLWk1rckNhV1JtRllITFRoekFwbnlLTDRJVE9y?=
 =?utf-8?B?SVlrcVdIOHlVMEQ5UzZlajAwQno0aTVNM2lkMjN0Z1FmcHFsRlplSHV6TWlq?=
 =?utf-8?B?ZUd0bThWRUxISW1obTJJYUFoVXFWMEs1WklxUk1KRjMxazRIZU5Ld0htUnk1?=
 =?utf-8?B?R0FFSmZTV3BZN2VTcVlrZE9xOHc0Q3lMWUhTS0Z0MmpaYS9oSUtNOVFtWnRQ?=
 =?utf-8?B?UUFoRXgwK1BBazQ5aG5QYmNyTDFzM0lNRmxhZlltTEY0Vi83REhpN2Uzd2Va?=
 =?utf-8?B?a0tiYnU3dS9jTmxMeTdDZzE5R0xudmxyMmlEcmMrNzZ5ODVud1k2SGFJM1lH?=
 =?utf-8?Q?8t1ryD7gH6+PifUTNOUxxFkCd?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4dd54d19-a7c8-42e8-cd2c-08dcdcc99978
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB7982.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2024 18:49:20.2190 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cgdGEtddTqKPdqUAtSWk7jKIz0puE27x9+A1/CVxNe9YJBmsJInWKdyKA6vsotqDk6Oln2wwEBxvOtNIMFaF2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB7323
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+85nLNQF53WXx8GzJVO6BbSDm2lzN0Awzzh25uZ9QUY=;
 b=ZCPwpWBV55uoiY4v3+xKQZO+pN1lUaJFJKWIUUl8DT7Pwjl+rQrO9A8LT+HC78w2yCVsl96M0iehmUddrpqnaY8LEEFKMp68AY5dKNEERTsGITz4G/SLkoMd2M0Km7+h6PWjOGg1rje6tLcVwjcccw9mYjLQufoFhz81OEQyS9s=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amd.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=ZCPwpWBV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 1/2] ice: Fix entering Safe
 Mode
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
Cc: netdev@vger.kernel.org, maciej.fijalkowski@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, mateusz.polchlopek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/24/2024 3:04 AM, Marcin Szycik wrote:
> Caution: This message originated from an External Source. Use proper caution when opening attachments, clicking links, or responding.
> 
> 
> If DDP package is missing or corrupted, the driver should enter Safe Mode.
> Instead, an error is returned and probe fails.
> 
> To fix this, don't exit init if ice_init_ddp_config() returns an error.
> 
> Repro:
> * Remove or rename DDP package (/lib/firmware/intel/ice/ddp/ice.pkg)
> * Load ice
> 
> Fixes: cc5776fe1832 ("ice: Enable switching default Tx scheduler topology")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
> v3: Change ice_init_ddp_config() type to int, check return (Brett)
> v2: Change ice_init_ddp_config() type to void (Maciej)
> ---
>   drivers/net/ethernet/intel/ice/ice_main.c | 4 +---
>   1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 0f5c9d347806..7a84d3c4c305 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -4749,14 +4749,12 @@ int ice_init_dev(struct ice_pf *pf)
>          ice_init_feature_support(pf);
> 
>          err = ice_init_ddp_config(hw, pf);
> -       if (err)
> -               return err;
> 
>          /* if ice_init_ddp_config fails, ICE_FLAG_ADV_FEATURES bit won't be
>           * set in pf->state, which will cause ice_is_safe_mode to return
>           * true
>           */
> -       if (ice_is_safe_mode(pf)) {
> +       if (err || ice_is_safe_mode(pf)) {

LGTM.

Reviewed-by: Brett Creeley <brett.creeley@amd.com>

>                  /* we already got function/device capabilities but these don't
>                   * reflect what the driver needs to do in safe mode. Instead of
>                   * adding conditional logic everywhere to ignore these
> --
> 2.45.0
> 
