Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB8DE8C7A70
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 May 2024 18:36:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F124440133;
	Thu, 16 May 2024 16:36:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5GDvOo45bFPf; Thu, 16 May 2024 16:36:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4193D402D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715877402;
	bh=ftGk6MViCdm5NwSjQ3BlUruoO77uHp6RL44D6EZw3fY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vzi3z5awjNDAdIkKghiF4/dyauUhwVEMFJKGtDywRb2SNnegMipWfi51II6b+fa7b
	 v+RrH2gHSKCZ6FE8gAUyyJe7lymEQDFyeuyz+NpQyGMdY/tUM8rLCJ3fDEnLyeHCwv
	 kSgK7TG0HYCVY8K8ppFu4vXcD+Xj5nJoAAgBz76mV+U3iiwKjLYy7r1ftlEpMLNfBG
	 /et2pf7ykg7HMvZMcgM2WqyIAF96L5diOP6RMJJXOlUILrnyXFKaIDiN6iSPVj2n3O
	 Tv3OhSP3zwI7T8Wf0FoBMRO/7/tePh6v6o61x3a6Ao2ZVbKQ8JCq27iWqdg9a72G9b
	 2+90EOe1WOtTQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4193D402D0;
	Thu, 16 May 2024 16:36:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AED4C1BF5A3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 16:36:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A6F6660EC6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 16:36:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CSSaXEwbGJXa for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 May 2024 16:36:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.243.80;
 helo=nam12-dm6-obe.outbound.protection.outlook.com;
 envelope-from=brett.creeley@amd.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8BC5A60594
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8BC5A60594
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2080.outbound.protection.outlook.com [40.107.243.80])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8BC5A60594
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 16:36:38 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CxKQyoIHKVZJZqdzIRafHru5OOKrdCbsGESyXzO/adVFDgJoE7BBNS64qarbDZfU3hAWQGHc9kPu3ujsECu3F5GCNoWukuuor2IEsrpULL5/PV2MS3JLeGVfHN4joNqa/3VQ8nHqsTJZD6QO8DcaoQdrGpzvbMwtT4HqcT4YUhCvIKWaeOitOKIHcT7jWFLGbWmSByrF43qAQXcg3szCqG1DWdffqEicqRwi4bORERl+z+JiTd45DueXVmfXY+impPrM+WBqj8r8Rq5Ctzt2JS5Klqz6Ban0G2Au8+bjeAzmGyAJBDfP33G5OeJuyKtNSciVD80ls+sN0/e5Fd8bHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ftGk6MViCdm5NwSjQ3BlUruoO77uHp6RL44D6EZw3fY=;
 b=XFin3DJkz0IE505LvpMzfTTwVDYKAofUHy3yLTb5yBw01i5iyHFh7E5hQgRU9QEijxrvpdi+JbS3bBJBikszv8DAwUdkZ/aenpWbZOfUvrCPNPJYUr3l5j1oe1JeFQIxL2DGaMnoyQPH3u2/gXR6dhgJMVJJc4L636HtRF8/VdotI3OKp7o/HCcs1PqRhmLAzgjpc5DpTSV5gCq1JBC+tqd7+skYV+ZbSfXxOvHIwClfV1x4enTtjIy+NT3yB3HvK+q6vMQuwv1acrQj6JYB2qivfcZ7IYMn1WQwtKmgmvOfAJ+yl5nQ5/BE+dATZRv1orQOoB2TcIPUue5Yjxm4aA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from PH0PR12MB7982.namprd12.prod.outlook.com (2603:10b6:510:28d::5)
 by PH7PR12MB5596.namprd12.prod.outlook.com (2603:10b6:510:136::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.30; Thu, 16 May
 2024 16:36:35 +0000
Received: from PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::bfd5:ffcf:f153:636a]) by PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::bfd5:ffcf:f153:636a%5]) with mapi id 15.20.7587.028; Thu, 16 May 2024
 16:36:35 +0000
Message-ID: <342a9b10-97d7-4720-92ef-a548179b990f@amd.com>
Date: Thu, 16 May 2024 09:36:33 -0700
User-Agent: Mozilla Thunderbird
To: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org
References: <20240516140426.60439-1-wojciech.drewek@intel.com>
Content-Language: en-US
From: Brett Creeley <bcreeley@amd.com>
In-Reply-To: <20240516140426.60439-1-wojciech.drewek@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR13CA0221.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::16) To PH0PR12MB7982.namprd12.prod.outlook.com
 (2603:10b6:510:28d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR12MB7982:EE_|PH7PR12MB5596:EE_
X-MS-Office365-Filtering-Correlation-Id: d988909f-3422-4768-b3ac-08dc75c659c8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|1800799015|376005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VkJwcTVEV2dSSjBhV2FoTTVIS1dpZUJib2NBSk51WFY5NkpQVGVwc2dYNUcr?=
 =?utf-8?B?ay80ZHhCRzBPS2FZTlpRcXdoc2xjLzlaQzk4VGd3Rk5OYVlJNmhsSDdiOWVP?=
 =?utf-8?B?UE9Xb1pVT0FyYm5vcHlNNHowYVN6WmVlMk0wcm9IT0ZNK2pTeG8vTlFqUHcx?=
 =?utf-8?B?QTVVUXI4c3dDMm1yOU5SZ3kzY1RJTlJ3bEtSVXdzQmVSNTNDaWozTHZMQmQz?=
 =?utf-8?B?bTV3WXdVRWtxZVE0cVRYT0hEdW5pYzVCdXRZblpXbVpkajNUNWhYRmFvak42?=
 =?utf-8?B?RnhkUzRQQ1I5azZyeDB1RE52UXlSaUphWS9BSlhNRWhva1V4TDZ5V09sMzVV?=
 =?utf-8?B?dGFGdHJPSjNoL3pSZkllN3dzckg2ejR1WU1RcG9ZNGd6K0w3RWxBU2U1RXF2?=
 =?utf-8?B?dEVuY2hoZVFpQ0VNbDRGSC81SHZ4NEVBdm1LSWdadVhHSTB2VENDWDZRUkNr?=
 =?utf-8?B?d29kR0xuV0QyVXFYOENWb2QrZk1SZS92akFUaDhPREo3Z0lMcTNuYzZzS0lI?=
 =?utf-8?B?cTFCWDZLTlo3bVVsWDcrcWVWOWcvT1dOT2dmTE1jWGNuTHlHRkwwTVRDRGlM?=
 =?utf-8?B?NGloYUlYRTFKQkx4bVo0M2YyQ3h4aDNhOHFwWTJ3WlByeG1NcWRNQU9Fbk5K?=
 =?utf-8?B?dUNKTzBSMkVVRm1Vb29aVGNJaDNHamlRRUFDbVd6N0o0WExDVS9SdWJmTExm?=
 =?utf-8?B?VjFUVkVQM3lGRWkzUzhvQXhyOFdPNk5FanJhS1ZHZ1hqOFNMZTFYQ1h5QWd2?=
 =?utf-8?B?QUIvNkJMRjhXVzhLYVEyNEhKZ2Nta2R4ZDFqaXRxK0lKWHNjb0lqMVdPTFFU?=
 =?utf-8?B?YU1GUTBVc3ZWZ0U3N3dMRlQ1ZU5VaEozWFVaU1U0ZGNPZVBLclRnRU4wdTIv?=
 =?utf-8?B?OEU0RG04QWp0emZEM0RUcmFCZEpoQ3k2SXFwTEZuV21wQk1zbk1XWnMwU3ZX?=
 =?utf-8?B?Qm81aUhFMkgrU0dvOHc3aW1LcXNjcmRsZXBrVWJ6NFFORTU5NWV0c3dicHNO?=
 =?utf-8?B?b0lTOVZtT3pLSXN2M2RDK1Y1eGVtdkhhVEtla3RKVWptZE0ySkVYVk1oa3pD?=
 =?utf-8?B?cXZzUEZicWx4SFlOY0NIRXZhMzZtQWJpZHhWWGQ0ejh1UkhkMExJNDQ5QkRO?=
 =?utf-8?B?TzVTbEt1QXY5UnRFOHBERmJNY2VsNEsreDdsT3lYekhlTHZMa0lwKzBaa2Z1?=
 =?utf-8?B?Y3ZYT2FLNEsvb2IyQ2R3bzRQd1dYZXZsS2QrQ1MxMTc4b0dVQmx6TGpqbm5B?=
 =?utf-8?B?eDlyNCsvR3RBc0lndkFNZEw4SDRrZ2pUdnhOUDdHRC9MVStld1VIM28wWktk?=
 =?utf-8?B?NzZ5LzB3SlRjaHRPc1JCckd3MjMwQnlMNk56U0x0TGdHZ2FuQ1ZZcmRKclFB?=
 =?utf-8?B?NVRDQmt5MTVFTTNFRmRRZkNqNWJBQjhpdDhRWlUrdDQ5bkdNcXd1ZkhTNWx1?=
 =?utf-8?B?ZUlOa2FRNU5hZmxsNVdoMi8vTWk1UGRRbjJsTGViZFQrYmtXMERoTGIrRE1K?=
 =?utf-8?B?M1hzS0JyZk4wMmFtdGhQSmxZVm1rVTI0K3NwQ28ydXFQUFAzc2VIU0FhNW1C?=
 =?utf-8?B?S0tIRHV0VjZaaEhjRW5TeEtwNjJXK0pNQ29HK0h5MGk3R3ZhL0d1YUJXUEhl?=
 =?utf-8?B?SjRZeVhxUjdyWWtEc1RDT0MzZFlWWUExeENxV3pBRk5TRFJpdnlYYTVtYnNi?=
 =?utf-8?B?MXVYR2g2elVXSGtqWkVGbkVEK1l0M21adkNYdUVsTnlNdy9GaUxHL2x3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR12MB7982.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eDd0Ym1IYVNuUk5qa2tmS1NZSlBiWmN1VTIwVmJmU3VrQWQ3YWFxTHRhc0tq?=
 =?utf-8?B?c3JXU25xVk1ibzN2Z2VGVTlyRkpsRU1ycFRFUjdPTDFQeUNiVjR2c1pEemt0?=
 =?utf-8?B?TVlhU0tXQjcvOFY5SGsxUWhrVVFFZUxTUHQra2Z1TkltdU5iZ2YvQWdMcXNB?=
 =?utf-8?B?N2p4SzR4VWwrM3gzWWZsWmZ1NWdjMmdXSnJwM2F0ZmJTUW8zdTZyTUU0ZTln?=
 =?utf-8?B?YVRyN05Yc2FJNTRFQ0NlcStxVWM2YU1IeXY3bXZRcHFEemwxSnJWeElwZ1FJ?=
 =?utf-8?B?R1NOQ3NYOG5Dd296OHVVMFIvOHB0UDRtOS83MUlObmp6Mk1SK3NWUWdLMDEw?=
 =?utf-8?B?LyswUGRsVWFnYkFEcERjUXpZZzZvWld6WCtmTWszbGZSOUE5ODFPU1ZETzRy?=
 =?utf-8?B?dDZWKytEZnltN1lwcjVYZ2doUTN0c0FkSVUwOXB5VWc2T0djNUVTd1lHakMz?=
 =?utf-8?B?dmVLdkdpaDdTcW1nR1JvRmFnTnNPQ0MvUlFtMG5WVnNEMVA2Y2c0V0laVGl4?=
 =?utf-8?B?MDI0ODU5dFA0V1RQa21tWncrdVJlb29MeHJxaG1uL1V4eTR2bEkzbnFmVldZ?=
 =?utf-8?B?RmZUayt5Rk5RRjBJQnBrdGhxeWpPejhBUTVqRVQyRFFzWmRNNDJuWURRNXJC?=
 =?utf-8?B?YVZsc29yUXRZQ2gwZFZTemFyQmYveVVXaWcyOFdOeTRTblF6QWlscElIZVh6?=
 =?utf-8?B?NFRBeUN1RmZZalYzMjBMTHUvTW0yNWJXRzFLSnY2OTZpSjdLbjlVM2JMeVhv?=
 =?utf-8?B?RmQ4Wnl5K0FwTnlQdmM2ME10K2ZGaE9yb1BwRUFsbkRFa1BQNHJZQXBna1VK?=
 =?utf-8?B?ajhESHUyUnNhcEo2VkRuNXFqaEU3dTd3VklyclhNUEtIcGRpbnErLy9GZzdO?=
 =?utf-8?B?RzVhZjhLVTRjQW1UZ0VnMnE5UVR5aG9JNTBtam5WUi9DMy9lTThRQWV4KzNP?=
 =?utf-8?B?ZjR2azdHUUVrVWJ3d0xkcmZHWDc0c0FVR3c3aDdMeXNnNzZveDExclVlYXJ2?=
 =?utf-8?B?YWhJWHZocm5rZEptcDRXVTJSTFJrQktST1Z2VkpKV0Evc1d4MFg4bWN2am5x?=
 =?utf-8?B?a2ZVTHVyanlIRk9CNlJMT2EvTFVMTU1tNzZHYzM3ZE1mMHlNSm9kZzEwVjlR?=
 =?utf-8?B?d1ZnQjF4ZEV0bkl0dENDVDdFNEVNcFFnbEpSTnoxVVViU0VIRFh4ME5KSDZq?=
 =?utf-8?B?bjlKbEpqN2ZsWE02VFAreHVUM0RzYk9GYzMraFJEMkRINDhsdlluUXhabVAz?=
 =?utf-8?B?Z3RoVHF2K1JSc0dhZ01QTUZoS3FPQ3VBRXJtVUFkYVJnOXFOTzduVC9sc1Zn?=
 =?utf-8?B?QU41a0hzWFJRcHRyZzZDVlJRNnROcXlqc0s2MU02bDZlcGY5aDB6bjVFYTlC?=
 =?utf-8?B?czNsS0tNcEg2dEZiNGxwcVpmTEEvZ1dLdm0wZTBFM1ZkdlhCdldxay9WNk16?=
 =?utf-8?B?NHF6S20zT0d3RFRkUHBFUzBzZDMzTEVyK1pjRG53TjFDR0VSTCtDeGR5OGIr?=
 =?utf-8?B?VDJ3YlFobEFHVFVzcVNBcm1HZVhqWE9UdDJmSms3STcwL25NVEYvd3dMWGF5?=
 =?utf-8?B?Z0c1Zy9uZnNjVHNVc21DQmNrN25UMXpkdXJCVUR3ODUyL1d3RUVBZi9lSFBJ?=
 =?utf-8?B?aVdCWWZSb05LdHlickZKQ0hCRTVRM3ZrU3dpcDlkVTJFekM1ZktIRkFpWk16?=
 =?utf-8?B?K1JHL1pDNHJLU2tUSVV1eURidXowODIrWHE2QnFsd1poZGdtbFdianlTT2VF?=
 =?utf-8?B?SDlCN2lkWVpxUnVhQVFoV1MzVzlobTlsTFdEbWRBQkE5dXNvMURLTS9QL2k3?=
 =?utf-8?B?SVpoQ0VMb1ovZklubWpMSkVKN3U1a09yemdVSndSdGxMa3hXUDhtb2VqaTdG?=
 =?utf-8?B?TlZKR1lNdWovZHhXbFc3NmFmSi9RTjJ2N1lxbDIvTUhmTjZGRGlHZmZ1ZEdE?=
 =?utf-8?B?N3pWUnFmdnlzTm9Ta3NtcTRud2ZDTlNKT1pOVFppU3NBMzN1bGxWRDRiRWlL?=
 =?utf-8?B?UExFcDNEZXU2QmN1YktzajhSTHJQcUZGWTNFRlNvNGpVSUIzcHFXSFpZS05N?=
 =?utf-8?B?MVZEWmRiRk9NYnBGSHpVTHdGeDRCZkVoanN2NFJYeWpabGJDdHdYZjdvcGYy?=
 =?utf-8?Q?eqKc5oZjKWw7/5PPwImXod09y?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d988909f-3422-4768-b3ac-08dc75c659c8
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB7982.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2024 16:36:35.1121 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cFIY5E6hExdl+uMwSV2SkZyT72BmJPKQQQQlH9H33aTCYwc8Q3GnPRF5jfoZ6CeLNlaLICpFZUFwJ0Y84nvkeg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB5596
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ftGk6MViCdm5NwSjQ3BlUruoO77uHp6RL44D6EZw3fY=;
 b=VJ/DLayXZbY1YzcVd7LjSodPQPGzAviygiK5Sq7xRJMPLFHMGl6CThHiTku8I+P/ZF+Tf1jNw4krklGPstQeDoG44FPEi7SgRfjO0GTv9ijjfJDC32DN/AWuTaYyQSU4RRtY3abAcQkE9BC3gyV5GLFkfBr/9wPH3qWnB7vdpI0=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amd.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=VJ/DLayX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: implement AQ download
 pkg retry
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
Cc: intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/16/2024 7:04 AM, Wojciech Drewek wrote:
> Caution: This message originated from an External Source. Use proper caution when opening attachments, clicking links, or responding.
> 
> 
> ice_aqc_opc_download_pkg (0x0C40) AQ sporadically returns error due
> to FW issue. Fix this by retrying five times before moving to
> Safe Mode.
> 
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_ddp.c | 19 +++++++++++++++++--
>   1 file changed, 17 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
> index ce5034ed2b24..19e2111fcf08 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ddp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
> @@ -1339,6 +1339,7 @@ ice_dwnld_cfg_bufs_no_lock(struct ice_hw *hw, struct ice_buf *bufs, u32 start,
> 
>          for (i = 0; i < count; i++) {
>                  bool last = false;
> +               int try_cnt = 0;
>                  int status;
> 
>                  bh = (struct ice_buf_hdr *)(bufs + start + i);
> @@ -1346,8 +1347,22 @@ ice_dwnld_cfg_bufs_no_lock(struct ice_hw *hw, struct ice_buf *bufs, u32 start,
>                  if (indicate_last)
>                          last = ice_is_last_download_buffer(bh, i, count);
> 
> -               status = ice_aq_download_pkg(hw, bh, ICE_PKG_BUF_SIZE, last,
> -                                            &offset, &info, NULL);
> +               while (try_cnt < 5) {
> +                       status = ice_aq_download_pkg(hw, bh, ICE_PKG_BUF_SIZE,
> +                                                    last, &offset, &info,
> +                                                    NULL);
> +                       if (hw->adminq.sq_last_status != ICE_AQ_RC_ENOSEC &&
> +                           hw->adminq.sq_last_status != ICE_AQ_RC_EBADSIG)

Are these the only 2 sporadic errors that FW will return?

> +                               break;
> +
> +                       try_cnt++;
> +                       msleep(20);
> +               }
> +
> +               if (try_cnt)
> +                       dev_dbg(ice_hw_to_dev(hw),
> +                               "ice_aq_download_pkg failed, number of retries: %d\n",
> +                               try_cnt);

If try_cnt is non-zero it doesn't mean the last download failed, it just 
means one or more attempts to download failed right? Maybe just 
"ice_aq_download_pkg number of retries: %d" since the if (status) check 
below will print on failure?

> 
>                  /* Save AQ status from download package */
>                  if (status) {
> --
> 2.40.1
> 
> 
