Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 57757A449FC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Feb 2025 19:17:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F27A460A40;
	Tue, 25 Feb 2025 18:17:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JgYx7FHwWgR2; Tue, 25 Feb 2025 18:17:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6A89760A88
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740507428;
	bh=y6loGPs0Yjml1rqWaTgz3tHEXDdkPwhgW9t9/PBuBZQ=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Mh8lLOYWkh+Z9si2vFNU3y/h100OFF/fxZ5075Ju1W1LSKTJ/qTAYMsMBMzsq9iYA
	 72j9Z/cTvLYElnChIsvL4b9aqcj3S3GX2a/RlfLQ3wePMTTVSSOUw6KTKdyNS0zW2o
	 m2R/kogFcx7uSDKeuWNtLsSO8elyGJ1S3gAO0pbp9iVOpJntgWe4xowaCT18VNPNZw
	 3w/xqzie6cU/LCCK85yCkS5fzxtQyvtOKsX4e4EhNnqSgjnQe+r2aqSv5hZrpmrlZt
	 3qwJD+cBAN+JyiR+4ksBMS/ObPBIqhZp9hPHFq/2H3NyvgqQLCAmYOtSfYkObRpgzF
	 NWabN19GHJSQw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6A89760A88;
	Tue, 25 Feb 2025 18:17:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id CCD112292
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 18:17:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B8901402D4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 18:17:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cRFIdnq-DxUm for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Feb 2025 18:17:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2A01E40AB1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2A01E40AB1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2A01E40AB1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 18:17:04 +0000 (UTC)
X-CSE-ConnectionGUID: StlZsPv6SPC0QRDiJUmiYQ==
X-CSE-MsgGUID: m4m1zph3SYiIn2KXxQbZ+Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11356"; a="41465709"
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="41465709"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 10:17:04 -0800
X-CSE-ConnectionGUID: VurlYaacS3+ngSMZM+qsaQ==
X-CSE-MsgGUID: jmXp9DBqTDqgRm3FOKdkcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="116269644"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Feb 2025 10:17:03 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 25 Feb 2025 10:17:02 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 25 Feb 2025 10:17:02 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 25 Feb 2025 10:17:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uzeOOINjRZBRQ3eLP9BMytlQNBVUzpo9pCDTkpAn5wH0PcmuG6HY2bSf8+u8JaUBoQhNtKoLO1fRt5MDR9p5Wo+TevZzM3Dg35FfVRcuVl4EUipuucfdvm4rAOw7uYXZrUXHiSvaZQHrS24KTg4utAQgVjVS0G7NRWDgRw7kPUY+NKMO/qoqSEF+gMEeqp4VIF1xEXX1ilmchJN4UZIY4QQ5zSt9upT1HtOGluJWrgqWpfbndHvKA1DvRPzb520iprVj2Mh9/NDWqBTJwzEl5gLhyOemjpB22aQq7z8sXO3+p+3Dc+DhGaictK8wdyMHApqZHmWCgbpt3gJMyiJBSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y6loGPs0Yjml1rqWaTgz3tHEXDdkPwhgW9t9/PBuBZQ=;
 b=GtPFiox9uNQ/nqwjoWPqSZk6hfalLoBHpt6t5YL49Q4EKsUTxK4z4DvmAC2fVX3OgdExhtDbq5ZNqXDbwcjQXM7xmTxq4nTnHgFd/Pg8EzcWq64sdGJy0LvALmw6oOThwv0SneBdfptJaxCYxGCe8uRZdXEuueEaV4KMPqMrxUc1d+F1R93Om08DXBCp58gbk5epooFs2xVULpGILUxDP5RF8mSTW1h7M7N3yNe5DzDBpnCDIBCrGH+ONxfsk68JLI0w5eLVWUHVfSbfPuKAiM0Yt8Rq4TPP+TPXhpIjkyZU8gZ7u6iPHrwgX3ZDpQ1T9WrLXEVt/3tcjjYBPn9SSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DS0PR11MB8069.namprd11.prod.outlook.com (2603:10b6:8:12c::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.20; Tue, 25 Feb
 2025 18:16:39 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%3]) with mapi id 15.20.8466.016; Tue, 25 Feb 2025
 18:16:38 +0000
Message-ID: <e21c9996-8ec7-42e9-b202-f9f502efa02d@intel.com>
Date: Tue, 25 Feb 2025 10:16:37 -0800
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Jiri Pirko
 <jiri@resnulli.us>
CC: <intel-wired-lan@lists.osuosl.org>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>, Cosmin Ratiu
 <cratiu@nvidia.com>, Tariq Toukan <tariqt@nvidia.com>,
 <netdev@vger.kernel.org>, Konrad Knitter <konrad.knitter@intel.com>,
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni
 <pabeni@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 <linux-kernel@vger.kernel.org>, ITP Upstream
 <nxne.cnse.osdt.itp.upstreaming@intel.com>, Carolina Jubran
 <cjubran@nvidia.com>
References: <20250219164410.35665-1-przemyslaw.kitszel@intel.com>
 <20250219164410.35665-2-przemyslaw.kitszel@intel.com>
 <ybrtz77i3hbxdwau4k55xn5brsnrtyomg6u65eyqm4fh7nsnob@arqyloer2l5z>
 <87855c66-0ab4-4b40-81fa-b37149c17dca@intel.com>
 <zzyls3te4he2l5spf4wzfb53imuoemopwl774dzq5t5s22sg7l@37fk7fvgvnrr>
 <e027f9e5-ff3a-4bc1-8297-9400a4ff62a6@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <e027f9e5-ff3a-4bc1-8297-9400a4ff62a6@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0090.namprd04.prod.outlook.com
 (2603:10b6:303:6b::35) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DS0PR11MB8069:EE_
X-MS-Office365-Filtering-Correlation-Id: b1b43594-0e08-42ca-745a-08dd55c88bae
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|7416014|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cTR5YmQ3VUdrbko3cUwvRjcycTRTa3o5TkJDR1pSUTNwN1lWV3NwdHZCeGtU?=
 =?utf-8?B?eExnTDRtU0s3WnhzNHJOaEtCTitKNDViVG84KzFSaVRiVGpHZEpidHl1ZGgy?=
 =?utf-8?B?VVpCbmNxOTJrQjRTcHN2ckxjK1JuTGQyS0gxaUpWWUFIcy85clVidW5DbTFr?=
 =?utf-8?B?ZDBUT2RFZUdnZFRqeUU2djhyUy93T0ZzQjJ6K0JBT1VVdTVSbG1pMGdkZUha?=
 =?utf-8?B?QUlBS0hjbzN5UEFFdHdaUm41UWRYNGN4bmtORUgyQTU3Mlo5S1VodEc5K29I?=
 =?utf-8?B?NWVrcUc1c3B6Wm9oYjVIRENPTW1LZjZSaTVYQXFaWGtNVEpWbDdCVWtOay9y?=
 =?utf-8?B?ckQ1VEd5dlNJMEZTUXB3MHBJTVJuQTFQWk5vSmtXek5vMWJEQnVzd3ZSN2FS?=
 =?utf-8?B?OFF3VEd3c0dTZDRaMEpKMUh4c2g4UmtUeGYrcjh1VGVLYm5TQ2R1bzRyUlYw?=
 =?utf-8?B?QVlacnUzd2pRUm5kNGxSOWJRelh1QVZnVk92dVZoQUlTaW9vOHVkMG92YXY4?=
 =?utf-8?B?K1U3VU5JZnJHd3dTa1BGZWZQQXZwUmZWdDFXTDJUNWFmNC83TzdiR2VRZ09s?=
 =?utf-8?B?QkNMSTE1WStNRndXa0FUcmxNcGFBdmFxN2pXam9nRElHbTRMQjhiNHZscTEx?=
 =?utf-8?B?bVFiWE5MUDR5aFZmMTNBSmR4bGZmV1NSOXZFb1Qya3dxNm9xNXE2ZG9UanY0?=
 =?utf-8?B?VnllWk93RDJEekV4R1I5QmJ3ZzZySWlhR3gwTnhmbzdlWnVDNzlmOHFvUTN5?=
 =?utf-8?B?aHB1b1VLWG8zNkhobnZxdVpOUXY2aFhtK1FsRDk1NEVTU0ZtbnRsZ0RqNWRR?=
 =?utf-8?B?UkxRelJQRkNRRjN2K0ZVbnJqSnlkWE5JWnE2STE0d2JncmFtUFNmRXpyVXBz?=
 =?utf-8?B?MkR6ajZGWHJZM05DNFNDOUtPK0xyT2VrdU8wSFZwVGwzN0V4MUFKTDVwaXpN?=
 =?utf-8?B?RzVoMHAwc3prVVRwbm1PcEdvQmIrYkNrYUdENkRnZlhSZmlpMStiVEJEc3RF?=
 =?utf-8?B?Z25mL3ZNVUQwNnovWGNkbHpUektvVXMvSGM0RDc1S0pHWnhmbEFxZ01tWU9Y?=
 =?utf-8?B?NmJlYjZJZXRhK0Z3WTh6Y0pmRlpBaUx2cXhIM0NpMms0L2hHaW1IdmxKMUt3?=
 =?utf-8?B?UVRzRHVrTllybDdEdFQwbk9sVnZpbmJDQ0xWb2hjZ29hT0F2cXNzdXU0L0ZM?=
 =?utf-8?B?ak5FZmJ2dGk0MFJyeVk4Y0ZkRk55U3kwQTVCWjJweVZnYWRaQ3drTUVveDhp?=
 =?utf-8?B?M204bXUvSUxaWS9SQVFaSDJrbXdwWHJRT1NvUEpOWExsOGhWNFlGQnNxZkZp?=
 =?utf-8?B?RDh5K1JETmV4ZlRyNnBRekl1L2p1bWNSTzFFcVV0YzlRN1JBRmNKbU5XNk9j?=
 =?utf-8?B?UWplSm0zOFMrSjNPcEIvZ0hJUC9qRVJyU3ByWEFkSEs3RDJxK2w3MXFqODhW?=
 =?utf-8?B?b0x2MnZHWkszbERBcWRRTk0zNnkrQjZsQUcwcnlPODZuREE3MXdEdlA1V1VV?=
 =?utf-8?B?azYvNSsvVTRLSnYvMHllQjJSUCtPbXFQVitlWGl6NlNtdmxIZUg2eUZvcjRS?=
 =?utf-8?B?Vk5VeWRHbUVXMVFTL0EyZFZtNjNVY3R3N3hLZ1dsSy9TRmRWSDIyOVpObmFm?=
 =?utf-8?B?NlcvTFBNNGNzWG5Mdm4zckZxVytXZVNxeW01VlZLRUVsK0IzdWRJMUJUbDRa?=
 =?utf-8?B?OURiYkowQUNGbUh0T3VydzVmS2hvc2JqK0pwMzBlMklNVDFack84cTBnblJV?=
 =?utf-8?B?cXdsTTU3ZU9ydzVJZG9xSGdRcDBuK1RBT0d6c3hCVE5jSHhCd0x2NXo5NHA0?=
 =?utf-8?B?ZkN5WUJEd3JjelpzWUU4SUNhUXdoVVkxVjUrUFdEaHZQeVFZbFEydldHL3dN?=
 =?utf-8?Q?6Qnw6WtjMlSe0?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QmZVZ1l4bWRidm01M1lSUG1JQWt3RHZiSG1sSXZocitkMWdLbXlmUXVMN2pF?=
 =?utf-8?B?RWZXOGZqSkVVT0JJNGVYa2VHZ3pzTTNlNzhyTUxjenQ5RXRLK1dXamhaN0M3?=
 =?utf-8?B?QWMxd1VSVitoUDZLcDdZTnN3bzAyV2UyUWpVVVc3dnpwek1ldWV5K1NXd0JT?=
 =?utf-8?B?c0hERzhtMTNKZVphNFIrZVZReEtZaTNRdHhPbTVRNFZVUHl1enNMOXMwNVdV?=
 =?utf-8?B?V1ZpMHcwS3MzOTBiVnhPcTV6K2FadGs5aFRGTlNpNkRwaXFYRjV3b0JVTjBB?=
 =?utf-8?B?N2xLOWthWWU5cUVqeDhiY0h6VmR5dFpOeDlBdWQrUExGdUFBaGF3bG1rV0F4?=
 =?utf-8?B?RTNjRDYrcWRrWUxtUmpGQ3o4Zmk3T0dyNXpzYlQwOWloaVppYjUwMEFuUkZU?=
 =?utf-8?B?UktBZWIrUDM2c3JmSDNMK1VrT0JvcHE4OXlCMHhLVmdHNVllN3FnVG5KRnJ6?=
 =?utf-8?B?bjBsNlFlOVhFTFY4NHBGc0hYNnFLZC9CRHZVMll5YURTNG1vbU1NOTVkcGdl?=
 =?utf-8?B?VkIvQXo2WE03d0F6RXFEaDNIblJGbnRvYk1QY2l1TXRYRXVJMkxhdTBaTUNT?=
 =?utf-8?B?UWd3NzJ2S1hweUxiN3BWdUl6a1Y5SU40anlORC9GVXhaOExFZ1FLWi9jQTVJ?=
 =?utf-8?B?WHh4dUVzUU9MZVVsYjVOZXU4ZHNCK1F2RkFZUFVYREJsSmF1Z0JOL2ZtU0do?=
 =?utf-8?B?TjZqZnNBNFFKVTlSeVdLMjFUYzZLcVcvZFR5eWN0d3MwMUxhelYwS09yTFZS?=
 =?utf-8?B?QXZRQW9SU3l5Z1kydW8vTEkwZVZTWVRGM2p5NzNSTjNldmNBYmhrQ0I3U1c5?=
 =?utf-8?B?M1BNYnFQVERrc2ZNd0VJZ1pGbVE1Q1hkQ2p6M3JQSVFVOXgvNk9GbW1TWkVy?=
 =?utf-8?B?N2RMK1ZUM2NtU3FxOHhZdmx5R3MwT08wS2NGSkxobnpJZHg0ZHFKdVNSSUQ3?=
 =?utf-8?B?bVJab3RnN0hQWnpuSkxELzJUajBXSG9HWnFYWWUyRjBFeHN3c3o4TVRLT2JO?=
 =?utf-8?B?aFhValRncEdTdzJWMG5QWTh1a0hLTUlLV3FhbUJrN01DVUJrZWd1ekFzbklQ?=
 =?utf-8?B?ZFBBek43c2VmRkR3YURMbUV3TkhnZG52VWh6ZWJNTS9pVEdKY2NLYW0yVjZX?=
 =?utf-8?B?cTJ2TVJ2LzY3eXNlVElqTmk5WnB2ZGMxMXFIWlhYb09md05xcTViWERkekNW?=
 =?utf-8?B?Tkl1Q1ZiWlhoRlcxc3JrNVdhL0E0eFk5VkhkenRvUzVUdnBwT2JUeFp6VThx?=
 =?utf-8?B?UXVUV0FZa3NqMjB1cTBvZVB2Y0sxQzNzRDhyM1piYXpta0NTZmhHUldKVUhw?=
 =?utf-8?B?b0hqOGVpczJUeHFHUGxlZDQ4OFJNZ2Y5T2g3Z2hKNWxZbEtQMnpCT1A2OHFQ?=
 =?utf-8?B?cTVQbDNBODlJVVora0NUR0p3YWRWOHhqTVlDdWJBdVZHVUllTjEzbVBoaG0r?=
 =?utf-8?B?M1Fac203VjZvR0tJN2lNaWhSWWhQQTN0bHFDK0VNdldoSSs0SG4yUEc5eCtU?=
 =?utf-8?B?Uk9qeEkvR1N1K3hPOWZUc0lBZGhDWkdZWm85WnJyNXB0UTFkOXZkMEU5clBh?=
 =?utf-8?B?OFZPNnJVSGtkVjBjUENxK3NuQjQ3blFQdzVZcVVGZ1dtOVd5WEZaems3ZlpK?=
 =?utf-8?B?akwwNFBNQ2F1YkgydlpOZER0TjNtWHE3c0VNRzBXdWVvVzhUV1lBOElPVHhz?=
 =?utf-8?B?MWNENlpnbkdRVWtWc2JpZXFQdDRCbDRFdmZVMHlZaXpYNjAxK2twM0dpRkpZ?=
 =?utf-8?B?RmNGYURMMXVkR0p0K0JrTFYzR0lNT0diOWdYVmY3UmxGTVpRZE52cktkM3VE?=
 =?utf-8?B?Wmw4RGZpMlFickEvMjFTQm5QTmJqS0dFZGlQTysxNWNZSmFoMEZ3YnJteDFa?=
 =?utf-8?B?NjFYN05wZjV3NElSbzk0QkRJSTBSRlRzYm5oa3FnZm9VQTRJNk1TM0YwbEtL?=
 =?utf-8?B?Q1ZtZ2ZsVCtoV3p5U0k1aDZXRUF3NGtBTXkyY3dRRVU2RUZLTWxITXIvQ3Vz?=
 =?utf-8?B?YXJBWFNUblBnUU5nTkcxcHFQZzg0aUFydFp5SWk0a3QzeXNHdkZKSER4SEt0?=
 =?utf-8?B?SVhwK2VXY2Eza2RuUXhrWXpXUEJoZ3JRS0VuMlFoRjFqYVdzSVlCZHlXOXY5?=
 =?utf-8?B?Q3VVWitkZCtEa0N1alFidnc4MHNoWkdVYkZYSitFb3RyT1EwUlVEazFORjRp?=
 =?utf-8?B?bEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b1b43594-0e08-42ca-745a-08dd55c88bae
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2025 18:16:38.4985 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kp08u0A4O0nuucIFeZdX0LnuARN3Vz6Ja0GGLrsg1hE0HnKHGWutuDjOv8T1TOXEYXewuDLPh37PaP8seI0WOE+pCeMqton+kt6oH7DPGcs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8069
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740507425; x=1772043425;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FR1LmlS4f4HVIE2wMsW8ecb5enWzMA3D4TslLZRFXsw=;
 b=ItzFuqxSx7SAAjz2XUpD2nNko+aaAZv4zOipQIkUewHUE5tCq1GL8zt9
 VE2cbhd9r3EtOdcJmZjEaKqd64fr92JGmacNllv5bTmQKFJpnH+mmutU2
 hsctlqVvOv/jOV3nJcgJ7g12CVeXBy39CeLUUX6A5z/OLJj9mvthUgf0f
 e2J9a1bIvKSPb0eubvJpcKf+koeH+Q5VshU4dj2cFHOWBx40FgKFqwOML
 0hAlenWm8QTZTYZyIf5llH5Vx9Xhjmmkn0eOXMLzs6SViokzfLKmgxYX9
 1OiRmIIW3VnlhbkmOEZie4MIBqNhIUN39WlA2KJjSR3SRttEF6ICTOfgc
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ItzFuqxS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC net-next v2 1/2] devlink: add whole
 device devlink instance
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



On 2/25/2025 7:40 AM, Przemek Kitszel wrote:
> On 2/25/25 15:35, Jiri Pirko wrote:
>> Tue, Feb 25, 2025 at 12:30:49PM +0100, przemyslaw.kitszel@intel.com wrote:
>>>
>>>>> Thanks to Wojciech Drewek for very nice naming of the devlink instance:
>>>>> PF0:		pci/0000:00:18.0
>>>>> whole-dev:	pci/0000:00:18
>>>>> But I made this a param for now (driver is free to pass just "whole-dev").
>>>>>
>>>>> $ devlink dev # (Interesting part of output only)
>>>>> pci/0000:af:00:
>>>>>    nested_devlink:
>>>>>      pci/0000:af:00.0
>>>>>      pci/0000:af:00.1
>>>>>      pci/0000:af:00.2
>>>>>      pci/0000:af:00.3
>>>>>      pci/0000:af:00.4
>>>>>      pci/0000:af:00.5
>>>>>      pci/0000:af:00.6
>>>>>      pci/0000:af:00.7
>>>>
>>>>
>>>> In general, I like this approach. In fact, I have quite similar
>>>> patch/set in my sandbox git.
>>>>
>>>> The problem I didn't figure out how to handle, was a backing entity
>>>> for the parent devlink.
>>>>
>>>> You use part of PCI BDF, which is obviously wrong:
>>>> 1) bus_name/dev_name the user expects to be the backing device bus and
>>>>      address on it (pci/usb/i2c). With using part of BDF, you break this
>>>>      assumption.
>>>> 2) 2 PFs can have totally different BDF (in VM for example). Then your
>>>>      approach is broken.
>>>
>>> To make the hard part of it easy, I like to have the name to be provided
>>> by what the PF/driver has available (whichever will be the first of
>>> given device PFs), as of now, we resolve this issue (and provide ~what
>>> your devlink_shared does) via ice_adapter.
>>
>> I don't understand. Can you provide some examples please?
> 
> Right now we have one object of struct ice_adapter per device/card,
> it is refcounted and freed after last PF put()s their copy.
> In the struct one could have a mutex or spinlock to guard shared stuff,
> existing example is ptp_gltsyn_time_lock of ice driver.
> 
>>
>>
>>>
>>> Making it a devlink instance gives user an easy way to see the whole
>>> picture of all resources handled as "shared per device", my current
> 
> This part is what is missing in current devlink impl and likely would
> still be after your series. I would still like to have it :)
> (And the rest is sugar coating for me)
> 
>>> output, for all PFs and VFs on given device:
>>>
>>> pci/0000:af:00:
>>>   name rss size 8 unit entry size_min 0 size_max 24 size_gran 1
>>>     resources:
>>>       name lut_512 size 0 unit entry size_min 0 size_max 16 size_gran 1
>>>       name lut_2048 size 8 unit entry size_min 0 size_max 8 size_gran 1
>>>
>>> What is contributing to the hardness, this is not just one for all ice
>>> PFs, but one per device, which we distinguish via pci BDF.
>>
>> How?
> 
> code is in ice_adapter_index()
> Now I get what DSN is, looks like it could be used equally well instead
> pci BDF.
> 
> Still we need more instances, each card has their own PTP clock, their
> own "global RSS LUT" pool, etc.
> 
>>
>>
>>>
>>>>
>>>> I was thinking about having an auxiliary device created for the parent,
>>>> but auxiliary assumes it is child. The is upside-down.
>>>>
>>>> I was thinking about having some sort of made-up per-driver bus, like
>>>> "ice" of "mlx5" with some thing like DSN that would act as a "dev_name".
>>>> I have a patch that introduces:
>>>>
>>>> struct devlink_shared_inst;
>>>>
>>>> struct devlink *devlink_shared_alloc(const struct devlink_ops *ops,
>>>>                                        size_t priv_size, struct net *net,
>>>>                                        struct module *module, u64 per_module_id,
>>>>                                        void *inst_priv,
>>>>                                        struct devlink_shared_inst **p_inst);
>>>> void devlink_shared_free(struct devlink *devlink,
>>>>                           struct devlink_shared_inst *inst);
>>>>
>>>> I took a stab at it here:
>>>> https://github.com/jpirko/linux_mlxsw/commits/wip_dl_pfs_parent/
>>>> The work is not finished.
>>>>
>>>>
>>>> Also, I was thinking about having some made-up bus, like "pci_ids",
>>>> where instead of BDFs as addresses, there would be DSN for example.
>>>>
>>>> None of these 3 is nice.
>>>
>>> how one would invent/infer/allocate the DSN?
>>
>> Driver knows DSN, it can obtain from pci layer.
> 
> Aaach, I got the abbreviation wrong, pci_get_dsn() does the thing, thank
> you. BTW, again, by Jake :D
> 

I agree DSN is a good choice, but I will point out one potential issue,
at least for early development: A lot of pre-production cards I've
worked with in the past fail to have unique DSN. At least for Intel
cards it is typically stored in the NVM flash memory. A normal flash
update process will keep the same DSN, but if you have to do something
like dediprog to recover the card the DSN can be erased. This can make
using it as a unique identifier like this potentially problematic if
your test system has multiple pre-production cards.

Not a deal breaker, but just a warning if you run into that while
testing/working on an implementation.
