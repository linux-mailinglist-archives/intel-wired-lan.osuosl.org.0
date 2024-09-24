Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A976984B52
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Sep 2024 20:48:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3424240B8B;
	Tue, 24 Sep 2024 18:48:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id agaYL074jVbI; Tue, 24 Sep 2024 18:48:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2AB9B40E09
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727203714;
	bh=m1NZldsTXywrgWkk5uIyumr9pxz/aOhEftZOOuJtqoM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=C+qQdXGvG7ESlkP4dO/raKEMG/c7b96MCJtCwnIEb7bjuhGhsm4nHoPwHPvh+iCma
	 yhCWKTD8CC5sdCfzbhuhj/Efn1IDss5BK7PbvNoJbyOd22TnpjiQ0+81DMA6KOEXOU
	 DC0HndpLw2Or9y0DFORZy9wNPeqbL4c63llTJWqY4PcIcS9HsvOIXW4JWl0NzFIlU2
	 zqKI6+wsaNBRtrrL4W5TgeqeY19BioTJDmPSYiQYjCk1hHiYBZ4sYCFUTiZRbVIyvv
	 BI1t4Ctm1MecSg03GLEdy/APv20Wl+lZecQEt5M+t9UldE/MxfjSp9oq6/HCHSeRjK
	 rJUM1fDX0D+/g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2AB9B40E09;
	Tue, 24 Sep 2024 18:48:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A477C1BF57F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 18:48:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9288C60D68
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 18:48:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OhQ672SpDqNd for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Sep 2024 18:48:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.236.67;
 helo=nam11-bn8-obe.outbound.protection.outlook.com;
 envelope-from=brett.creeley@amd.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7245660B17
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7245660B17
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2067.outbound.protection.outlook.com [40.107.236.67])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7245660B17
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 18:48:31 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qQDagd2Yp3oQEm5xnUNAbpKKyhTQ308PZwwPuqzwACI0OXiNRIRPN9Hj95yaHPzEC9KL3z+PmBYGK5HOnvCiibmVxnLdkE0wHNCtUi1jbACLwo0c+fBrkUlPPPVvlnL7Oh1MLCV5l37zluDQw1UOhXjQ2SM3iLmcYZdGRyLXL/2oHqRaKZdaJ9DEuCPbZ+vOFGJW304buZ199PByO/hTmh6UnaBjyYvIhyC/sTwFEHgmh7HJMWoEA5SfdJYdUIKSQUyalE/jItQbtXiJrpSsrOQJaL9HIwGBWzHbbngRq17rX/7XDmLs0+OI16owrpS9n/Lxgx3yMoe7vkNxarz2Yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m1NZldsTXywrgWkk5uIyumr9pxz/aOhEftZOOuJtqoM=;
 b=zEJLzECwdxsIyeblR8QZ88PAARTsaeyAxMJ+nkgxDNjXGHnyKOJEkCyQiQTk3eILtnpZDdhfeStOlJRxnChlvsZ3NCRQiA96eMZxTOBgsVGQ0+7FpJOzEkLUkm0aoAwk/St3um47nLsIPGlme5lZe/k1uVFpie3nEsIFEkX22eqRBikN7KxLZmPBpxsaUAkV7s9CMRZ9b+xProZxHOZXLj1+Nt+qI+ifxELarrCiB9/sP2eX9WgFUj1PSWi6gT46WJyu3wV2QXu8bHRg0h55o/+rQoY5DCIMv63MSC/j75D0Y0TLeEFME4vLTMJ1/h0gccc664ee5OAQ7DGnEorlvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from PH0PR12MB7982.namprd12.prod.outlook.com (2603:10b6:510:28d::5)
 by SA1PR12MB8141.namprd12.prod.outlook.com (2603:10b6:806:339::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.27; Tue, 24 Sep
 2024 18:48:28 +0000
Received: from PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::bfd5:ffcf:f153:636a]) by PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::bfd5:ffcf:f153:636a%3]) with mapi id 15.20.7982.022; Tue, 24 Sep 2024
 18:48:28 +0000
Message-ID: <f2b5ece9-0167-46f4-94fc-28b48c489e0e@amd.com>
Date: Tue, 24 Sep 2024 11:48:25 -0700
User-Agent: Mozilla Thunderbird
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20240924100422.8010-3-marcin.szycik@linux.intel.com>
 <20240924100422.8010-4-marcin.szycik@linux.intel.com>
Content-Language: en-US
From: Brett Creeley <bcreeley@amd.com>
In-Reply-To: <20240924100422.8010-4-marcin.szycik@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0187.namprd04.prod.outlook.com
 (2603:10b6:303:86::12) To PH0PR12MB7982.namprd12.prod.outlook.com
 (2603:10b6:510:28d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR12MB7982:EE_|SA1PR12MB8141:EE_
X-MS-Office365-Filtering-Correlation-Id: f54225a3-8caa-4b77-e18c-08dcdcc97a35
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?K3R2bXZsTW4yWThiaVhEZnFaT2ZSZWpwdTBqLzN5WFN2dmUzRU1MV0twVG9V?=
 =?utf-8?B?QlRZeVQyVUVCZFpmL0hWVi9NeXdSMm1WMXlrTlBtSE4xTTBZMHVMcWs3SE4v?=
 =?utf-8?B?eWxMc3B0UzdWUWw0WUU4ZDliU2NEUjd1NlJHZ2lCbUUwalZRRHlrNXU0Q0U2?=
 =?utf-8?B?V3NwL2VicjFiK010RTZEMDJwcFIrLzRkWC9ZUklLTWd5cFVyNFRFMDBzL1lK?=
 =?utf-8?B?SGNRN0I3ODdFUDQ0QWgxV0w0dDlJdUZ0SGc2Z1NYV3dzb2hCQ1pKdjJuY0ho?=
 =?utf-8?B?alE2RmlmNytHeE5xZnpRTTdnVnJKQTgrWjJZZy9Ld0lvMmJQU1I3R0U5TzA3?=
 =?utf-8?B?Tnh4SlhCTytVeFZwaVJXZHAvK0R0Q2xqZlI4UXJZeW1SZHdwN1ovOU5yUzFV?=
 =?utf-8?B?S3ZKMFAvN0V3N2c3bE1yUFNxbEJqNmRKQVZtbW5EWnIyRmpVRW1FS0xiTUh2?=
 =?utf-8?B?cjllbU8zLzcyTFVEZTJWc0Rpa3lkZXpCdVd4eEhqSGhTSjBHZzFFMkNHdVBt?=
 =?utf-8?B?dkN0cXFqTTNTVCs0VGE1LzZNSkVEK0RIeHNsNTF0Y3ZMa05CTlZId1pSUVBX?=
 =?utf-8?B?cWlVWGQyMVp3RmRkZDBDeUhvSVZpOGVNT0NPYzVkN0dxWEIrMWpKWVRrNE5M?=
 =?utf-8?B?S3kyWWFJR3JmOHFsaFhhTGQvUVloVXFZUGZLVitHamhPQllxbmgxaS8xa29T?=
 =?utf-8?B?RldlOU9KV0Q0dFJMR3RYVUVnb3BuZEhvZGtNbVNtaFllNlZOUFVLd0NXampp?=
 =?utf-8?B?NVdkMlRBblJzRnE1YlkvRHo5MHZRbGhvWG1QcDFRaUxCOG5uYzBaQ05XbUQ3?=
 =?utf-8?B?ZHdOcHNybEN3YUgxNlFFNC9uNVBJZCtCUm82RGdLOERnS2RNNWtydWc3V0xm?=
 =?utf-8?B?QkxFS1RiU1JCZExQNlVVZHhMYURYOGJ2N2xEV2xLcHMwazZHSUNXVTgzbVFo?=
 =?utf-8?B?OThaL3Z1Z1ZvaEViMTRKd1k0TC9hbk43Q0hCalQzdEp0b3hKUFRhVXdxbm05?=
 =?utf-8?B?dEUwZE9KTlVaT0JkZmIyL1JTNGtzSWpBMmNCK3dVSE1Td1EzZkhUWEtycVYx?=
 =?utf-8?B?bHNPUm1XQ1JxdFBNTGJ6cHdBY3NMQlByaE8wSXRnRlo2NytZZlZrOVI0M2o3?=
 =?utf-8?B?Nm5zZk1tamVpYVA4eW80OStydDlCWnhyazArUnEvK3l3RjEyTnlXbGcrdjkz?=
 =?utf-8?B?Y0lCQ2YxZDBRQkNGSm9QVUtGazNtYUpCM2p2bHBVMjJvL2d6YSt0Rzh0dmhM?=
 =?utf-8?B?bHBzMkI3bmhRUVlBZzc2THlTS05HdG9PdmkyaDdxT0IvMGNOb2FCeGVrOUpT?=
 =?utf-8?B?dXlHRG1qOW9zaU5wdUx3SlpsM0VrQk5yRHNpalpsTUhXTUo0eGV3M1ZmSWlY?=
 =?utf-8?B?UlhEYlhzWHkvMEJxeFdHdVY2OWIzdXRaSi9WSVpzbjdKK3BpaGtrUEY3TE9Q?=
 =?utf-8?B?VS9OUFRhZWRmUlBkeS9COFdLYUNGcHNzbUYrMnl3bm9XcDVMN0dFRVp4MzVz?=
 =?utf-8?B?TjdkNFFGRlJXY0ZLMVIxcTN0MStQS2RjUWRpSGRjbnU3bmhZcVhsV1lOSWlF?=
 =?utf-8?B?OXBrbmFQd1ltOTJSOHlaTWdKMXVSbmRqdGVHTXlnQlF3d3Bkc2RpWE5tVHc0?=
 =?utf-8?B?UU40WHRUZ3FRNGNxc2RRdWxoazVsTmJmUitMWG9KQWlPTjQ1MC90VDIxSXB3?=
 =?utf-8?B?UFBvUDAwTVNjWmNlbmxxM0EybGtxa05HeHo3YWk1QlluaTdLSmhiLzQyS042?=
 =?utf-8?B?aHFDOVF6YnM3aWw0TGFIZXhwTjZDUmV4aUIvTWZMVDhjbmZNWE5ld3hDQ3lZ?=
 =?utf-8?B?WnduZFlCTW5haC82cG9YZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR12MB7982.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NVhhVCtpaXp1ZDZLREpJVFNHSVhoZitUTVg5dHVxc3lZcWZ0YWhFWk1wWnI5?=
 =?utf-8?B?YzNqUzlnR00vSit4Mkh4bjF4NHd4SUExdi9HeGg2UWFiTFpOamhlQUNUMWpt?=
 =?utf-8?B?WEhLOCs5ZmdXT25SejNUakhvQ2xIOVQ1Y1RVanB6R0R0MU1vL1B5S1Y3NE4x?=
 =?utf-8?B?M0RBUjh1dU51dzdtdFIyZjFQczgyMkJhY0xRVTA0M21RVW5lSU9ZUlc2Qldl?=
 =?utf-8?B?eDZocFprbVo5WEw5MVRyRjBpQ0loK2FCZlFLbEJMdk1sQ1lQenZIK1k2QzA3?=
 =?utf-8?B?bTJ5d0NvUExZUmtsSDRrcDhNbmF3dFhrc2lQNi9LTGN2Wm1SNFcrK0NwdE84?=
 =?utf-8?B?SU13bU5DY29FNG91TFMwdThKQmJFYy9ndXU1eVR1Q3VrWXBHaSthQWdJc1Uv?=
 =?utf-8?B?MnBTTGhJT2QyK0FDQW1kdVBzZkVYMXVqdnhIb1lybFppb0tGdVVJR2t4eER3?=
 =?utf-8?B?eFZtbDNmcXN4RmN1UW0zclNoUUV0Ykt3ZGR0ZzBQZHovbzNKc1puY2RyRFpu?=
 =?utf-8?B?bjlZT3N5SW1qZ0VaTytyeDZLNWdWMjQ3ckdKaUE1NFlyZXJVb1ZSR0VwdHl6?=
 =?utf-8?B?bmxJN0MyRnFxazFSWmFOWVJES2VSQWxGV0RTWWhjUzZQZDZraVBOVzRHbGxE?=
 =?utf-8?B?WTE3bEZzTkhURWowbmRpZ3kwVTYwaEJqQTUreklzUTN5OGZKS0hzZlFDMlQw?=
 =?utf-8?B?eU9naWh0V1V4VDVXUFJhTFYvUTlzWG9aUFZ1clBQMXJiUUNkNUEzd1hCcHd3?=
 =?utf-8?B?WmNMcDU3dXlBU2txWHUwWEwyNmtDMlZPaXQ2bmxXeElDR0lwR1Q0Z2haTFdl?=
 =?utf-8?B?eHZIbjhMd3h5TXdQZWl0K0hUTE9Ydm1qTmIxMXFiUjZ6Zm9HTTRGcWs3UlN3?=
 =?utf-8?B?MU9QMk5mSlh5SUdUVm5iRUVaMDI1TmtJNktSeG1QdTVpNGowSlNkdlkzNVFm?=
 =?utf-8?B?VHZ4ZDFEN01yV2x6TGJNNE9PczgrNXNYTEdCZXZzbTRBMldHQytOS0szQkJE?=
 =?utf-8?B?ZkY5ampVQXZMcmU5aktYVmo3OWlrWXNkK2ZWcC8xV2tQMkRsQ0ovT0tLMHdq?=
 =?utf-8?B?RHp0NFNVMGhsMUUzTVBQMlQ1dmo0cUxxTmxmRzNxNFFGRHRqQkkwNnZwVE1n?=
 =?utf-8?B?YlFQNXhhck5uVFdrRFFGRjJYbEZnNHAvNTdkSTJlR0U3V0NRZzFkZ1hYT04r?=
 =?utf-8?B?ZVRNaitOMFU4WEUzNnk2OU9BWTlwNFZsMjgxNjZYSWl0OG5BZy83UXdNRm1J?=
 =?utf-8?B?TGlKY1gxN1ZBV1oxQ3E2blV6ZnlNcTg4KzRXOWhCaDVOVy9zdGw2bUdFT0E4?=
 =?utf-8?B?R2czSk90REFyY3dyYkkwazBKV2tXYlh1QmI4WmpVRm9nNWs1Y2IzWXVjeUJu?=
 =?utf-8?B?ZjkxVkNvMlB1RWlQdHN0TXZjSjM2ODZ4VlV1Z281VVVDUDZ0a1ZFejhlQ01r?=
 =?utf-8?B?VEpBV0ovNS9ROGRrcTllMEhNK3FXU0d1TE8raFJ5ZFo5YkgvbGs0TlkvZ1dn?=
 =?utf-8?B?ZHAxdVZ0WTNSNG5sU1JPNFdrSkxVYU90d3V6UXJCbjVZOXNRbkpHU1ExOE5M?=
 =?utf-8?B?by9SelkxWURFSkkwVXhNbE1xZ1NJZ3VRNU8xa0x4dUxzR0ZvaEJNdXRXa09z?=
 =?utf-8?B?bTU1SnMzcUdvcmR1UmxaTWVLaGJPU3J4clZUb0I2aTNVRmVORjdPK2gyNkhv?=
 =?utf-8?B?VmlBdThOVjRuVnNsbU40T1IvRXQ5TW9NMXNLRUNiUkN0RHNydzY2RkFVWVJS?=
 =?utf-8?B?b0V6R0xzUUVtU1FmRkNnL3U5S1pnK052dFMySlhmQ1F0bFJVRUZLZURqUzFz?=
 =?utf-8?B?SFhQcG1PMVBBL2V4OTZEOUNWazBHM3dZbWViUEZkaGVnVXNLc0d2cGJ0RXpJ?=
 =?utf-8?B?STZBdzhiN0dRSnI5YkJYa0Q3NW9ObGYrRTkzSmFIRmRYQVMvZXNzOVcycHpo?=
 =?utf-8?B?QTM2dE5LaUFOL1d1blg1d3dTNW53UW5KTEYvM1ZyZ0pIM0FLWTBjV1RxUWVw?=
 =?utf-8?B?aVhydE9yUVY2NkNzNWM3MUFTelRwN2tsUE1DdmRNRVR4TzBCZUdjcmlFTHhs?=
 =?utf-8?B?K1A4bVllRG9rTEpSTFZ4R0VKaWdGTUIrRUExclRvTkcwdHRtWjhoR3czYTRL?=
 =?utf-8?Q?Qo11bXuQkvja+vZla8yoPgKN+?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f54225a3-8caa-4b77-e18c-08dcdcc97a35
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB7982.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2024 18:48:27.8458 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: R49n2PQdc9Mtrdkw7B1JxefljZF+B3yKKtR5UOH6T+atzjLjnRaWtFUF/0cm890tThD4vtjREqNnt3Hv6jxtzw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB8141
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m1NZldsTXywrgWkk5uIyumr9pxz/aOhEftZOOuJtqoM=;
 b=omt9DW3CrGHn5TCZ/Mrpun1jHIV93WrJCG+kAAwbjX6u8fAqqANN8Uk+3x2JqZ+n+AI4HB6NYCvA3qrRYUF5IFWa3J05AUEiBtszQpU3g7RtWxx6JBxUUWWikYRd1caC8K/uDPHRBnRUg/6G2HHuneK9Q8c96KSZj35IjLJc8eQ=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amd.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=omt9DW3C
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 2/2] ice: Fix
 netif_is_ice() in Safe Mode
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
> netif_is_ice() works by checking the pointer to netdev ops. However, it
> only checks for the default ice_netdev_ops, not ice_netdev_safe_mode_ops,
> so in Safe Mode it always returns false, which is unintuitive. While it
> doesn't look like netif_is_ice() is currently being called anywhere in Safe
> Mode, this could change and potentially lead to unexpected behaviour.
> 
> Fixes: df006dd4b1dc ("ice: Add initial support framework for LAG")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_main.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 7a84d3c4c305..b1e7727b8677 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -87,7 +87,8 @@ ice_indr_setup_tc_cb(struct net_device *netdev, struct Qdisc *sch,
> 
>   bool netif_is_ice(const struct net_device *dev)
>   {
> -       return dev && (dev->netdev_ops == &ice_netdev_ops);
> +       return dev && (dev->netdev_ops == &ice_netdev_ops ||
> +                      dev->netdev_ops == &ice_netdev_safe_mode_ops);
>   }

LGTM.

Reviewed-by: Brett Creeley <brett.creeley@amd.com>
> 
>   /**
> --
> 2.45.0
> 
