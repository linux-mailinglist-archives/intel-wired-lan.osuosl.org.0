Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D8279412B8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jul 2024 14:59:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EA68C80AEE;
	Tue, 30 Jul 2024 12:59:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mRPVwsaCheZo; Tue, 30 Jul 2024 12:59:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F3E3480B0F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722344396;
	bh=8uw9aDwLKVDWmz/I9bgwEk1qk+2zXcGyaLQzs6lAOUI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hsxFEfuHmSahX5ARtc66QzqEjve5GUDtrPLUR3vAoWV1kAFq1pRERPxafJJZctejk
	 DY7wIfbskgf2b2UYywq9AIzznW/pIiL8lP72sm6aVUE1EBYggGTswyrj9RGUYKDW+m
	 +7mmyozeRayKvK+3sTaVjMOwc5Wuw5PtlJgwmtHPdKCF8vT09+Ho0eYZW3aKSInpE4
	 vPdxp/bLsJO9/wDeH3gg37m5qZEBbwIKBBsN4cpmaSgI9TLhjs3uKikC9HDLtqH4ny
	 aAfiDgTSBW4O97xJeg1C0Mx8+Mq99d7T5UZBlY+kk1ZvgohB/sNZexA7rKP9weEzZ4
	 h4k/6EstevjBg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F3E3480B0F;
	Tue, 30 Jul 2024 12:59:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9C0901BF267
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 12:59:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8899E4035F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 12:59:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3zrTUpNvYkMP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jul 2024 12:59:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 81F4540313
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 81F4540313
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 81F4540313
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 12:59:53 +0000 (UTC)
X-CSE-ConnectionGUID: mraZypuxTQ6I5rgP7ROaRg==
X-CSE-MsgGUID: 5cXFPDDeTzuPKNJE2lJ6mw==
X-IronPort-AV: E=McAfee;i="6700,10204,11149"; a="30823506"
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="30823506"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2024 05:59:53 -0700
X-CSE-ConnectionGUID: RN4EJgvJQl6BaC9F/I2mLw==
X-CSE-MsgGUID: Gsuh+4bjSh6E61VaArdWjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="54232217"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jul 2024 05:59:52 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 30 Jul 2024 05:59:51 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 30 Jul 2024 05:59:51 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 30 Jul 2024 05:59:51 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 30 Jul 2024 05:59:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=g1I8NrB301TGpa3CysL1SEWEfoDkqRYdt74+SSMw1bRhtXrGLzh9wois6/MwBLGF+HfAWaXpby3f5yEzVivABZ42rzHCXbEA2RqvkzWsERpmH80YKW9nyVsEEu+EKuLeg9XfUZfRD+feniBcre9b89SG67c3xhR87kuXzd7Z3kfNJZO5v98EnLiQ0NlAIygf5AOtrJ4PU6iYTSZUJ7b+r/eAsxPKqDz+++gG9qC7WgMacjwT971YR96tt5xB2yVlcYICl732oGEOj+tbs7ke/9nDTa31rvcVo3i9xHgQAUJanDni8lhGjoSVDjmKxqvMahkVJfj1wd8zBf89OPUEJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8uw9aDwLKVDWmz/I9bgwEk1qk+2zXcGyaLQzs6lAOUI=;
 b=AIFi4tLx6wUPPTkyXryfgCXE2b6au0TqSYNrZCSxkbzpNWcEPFf3ppBKi+zgHaiMwIJK8eW7YKHZtCIvW4RC78V9c4KLQ2jwk4/mwrozM7pLFDKzWNHZr0IpYolYCyhuSxlPR01LIBIwglhh4XePFOuV/gcu7IVdDC1sz/jP5qKp56A7S1N/+yY/SQe2a9ZuQ6LqRhO76zZguHO0s7BweNac6zW2AZGvU3YKuqYpRThFhgQdLQd84XuVq+0/2EgbjrK7T3v6Q6DKOKxtyCn0qmVK7HSxuL2rP3uCu0+iLsHsc/Rv2twAfIG4NsbqNVTebMYHyrA0ooqmCwvzV/YfrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by CH3PR11MB8702.namprd11.prod.outlook.com (2603:10b6:610:1cb::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.28; Tue, 30 Jul
 2024 12:59:47 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.7807.026; Tue, 30 Jul 2024
 12:59:46 +0000
Message-ID: <e6953dbe-2ac6-47c1-8cfc-0f161e6422bf@intel.com>
Date: Tue, 30 Jul 2024 14:59:41 +0200
User-Agent: Mozilla Thunderbird
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
References: <20240730091509.18846-1-mateusz.polchlopek@intel.com>
 <20240730091509.18846-4-mateusz.polchlopek@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240730091509.18846-4-mateusz.polchlopek@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MI1P293CA0025.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:3::11) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|CH3PR11MB8702:EE_
X-MS-Office365-Filtering-Correlation-Id: 4aba17bc-1e6e-4818-a360-08dcb0977d2e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RDBHNExvV0E4S25Fd1RId2xJUnBiYlBwbnpmZUlZbUtRZVQxNy9YbE55czNz?=
 =?utf-8?B?T01HbmRSQmNRZHUwZnh0amoxQ3hneWJLZ1FVQmRFSUNvbEtqN3dQSnI4RTBD?=
 =?utf-8?B?ZmdOcGdIK2NNRjZmeG1UVXlDZCtZTEhxRFp1Nm0wTTh0UUFpL1Y2MmpZcU5r?=
 =?utf-8?B?RWhyZGJLakxEckY3UU1LV3l6YWxNTjlmN2l4M0JHVUpiUHFvcDJYaFd2Wnpo?=
 =?utf-8?B?b0hyUUVxZ2lOSTZmanlrYzMzYkduR2N3UElrQWJ1UFJremh4SHVtZm1ZWlZU?=
 =?utf-8?B?Q08xa3hUYmdDeFBqNDczSTZLUzR1U1RDdFM1ekNaamVpc1NtR014dmFoYnFl?=
 =?utf-8?B?WXJqYTZSREhQK1VQUk1KQXQxeWVVUFE0RTh3ODlOTXh5S1BRQlR5NkcwY0JS?=
 =?utf-8?B?Slp2Q2JwMjFjTnpXd291WjQzSWhmUWJVSUduTWlvU096VDVhQk01YjdadnRK?=
 =?utf-8?B?VGprZm9TdDRyTXcyS2pEYXovck1wZ1VxMmZZQnpOMzkxUlJJMVZMLyt1Q2hB?=
 =?utf-8?B?UUFtcHBmZHo1eGVoUUhTZ3ZTODRyQldpQXlXRmkyQ0lja3JLUllvUjRGQU4w?=
 =?utf-8?B?azI5U3NDbkxCVFUrWWtTWUJ5VVp2U2g1YndON3c5N0sxQk5JamhLMlU1TlUr?=
 =?utf-8?B?T3IrMkZBWTJpWnZRMG9uUm1pYXBDaStvdUs2eDVkNFNJR2FPSDNIMDNBbCt4?=
 =?utf-8?B?ZXFSNXoxNXdzaVBjMUdyeGNnNVZKN1V5b0Y4MDRSSFFXRGJqT3dCSVJYZXpT?=
 =?utf-8?B?MTdMcVZDRWlFQXZ6Kzk2NFhKakdiMk1WZE0vbGVXVDMrVXIxQ1plSFpOMVJp?=
 =?utf-8?B?cVJabUJ6ODg2ZG9GbDRZQ3lvMWtDTng4eUJYSDdPVlpZanVGcEZpRVpwNXp6?=
 =?utf-8?B?U2xmN3VIT0lFNG81TFIzUURkUXY1dW91ZlU0bURRUHJtWmFjK0JYSDltclpV?=
 =?utf-8?B?UU5XMXFma1IxekhLYno0QUhiVndqTjE4WExWUVljRWk0ZWhJUGdqMGhodlND?=
 =?utf-8?B?S3lqZHhGUk14OVVPQWRwenA1MHh6NUhyRHd1VjB0SGI4MGdBWkFQVmhsT1ZT?=
 =?utf-8?B?OGQ5ZFA3M2h1NFhJNEJJNXpmNC95amJuNndXWjk3QXljZUNhZ05tOU14WEM5?=
 =?utf-8?B?Tm9pUS9yUEZDUWxnSkwyVXRFaE44eG5CQjlTTUpZR2o2MW5OQzU2clEveGFn?=
 =?utf-8?B?RlJMT2I4czNYRml6SEFaM2xTdGhaVHpYbW1CWHllRHJLbVQ1VlFiRmN0YnQ5?=
 =?utf-8?B?aTNlODBLYzVLS2VUNnpEMGhFZTVMak1zL2JwTnVvYWtySUVFRFhCK3V5K1Fx?=
 =?utf-8?B?Q0xuc2RWdW1rVUZEb2tsQzRkUGhXU1NmTEFrRk9lcmIzSEg3VlZHTk9Dek9R?=
 =?utf-8?B?OUphS1R6bm9hWGF0K1BXWVZQY3YyL201UThOMk9XdjJCandqdFZJYy9MbldZ?=
 =?utf-8?B?VkZKMkE4YkdNTVAyWEVocHFrbVFqQWF2bi9zZmpFcUI3aitNVExuamZnZGNV?=
 =?utf-8?B?NjhEb0JBZVdsK0hwOENtTEZuUkRNN2k4cVM5c2pUWlZCVUdGNE9SZURRVWhK?=
 =?utf-8?B?bGZJbnZTa3ZFcEFKeHdaMVRLUG40V010cFF5QUJPUHZPZE93WlB1eW9jUS9G?=
 =?utf-8?B?cmZJZjg5cUszbW1udElsMkVmRzhoS3lxVmw0elk4VkFyYzFyRDdwQXBHejQ2?=
 =?utf-8?B?a3dJblQwY3BOekJybVNsY2N2WnMzbC9HcE0wdkJkc0MzVzQ2aXhiTDRMTjdJ?=
 =?utf-8?B?c0w0QllkcndqMXBrYTNVcllYV1V3Y2R6NnVOVGx1c2VONEhVQi9QclBBZW9I?=
 =?utf-8?B?SFlhUWdFbWVVS1NRa0JFdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z3ZoMnJaOW1IaWxRVm83VnluakZWZUFDNTdXSlNIc2RiVkErL3d6QkNERzBi?=
 =?utf-8?B?SGFzb2NIVHlPMGJxOWpGMjRYSEowNkZxUzBkZVdrU3ZVTFpmdDMrdnVPdFRT?=
 =?utf-8?B?SHJEQnhMSjlYOGthUHZtWTAvbW9oaU1LOW92QldyUnl0eExtYjFCdTZoYmk0?=
 =?utf-8?B?cVo5SDY1NjhvQ3JRQzhONzlDS2MvdUR1UFo5THg0eWxOdnN6Tnl5K1JmbGFR?=
 =?utf-8?B?UDdpbUc4RjVBT3NIaUMzaEdkaG5EMEFJZnZZTkd1dTh4SDFkYmRGMzVMbHdQ?=
 =?utf-8?B?aFVLakE4VDUzbkJ5R0l6WlJPOGFveU1tQVFTV1RkU1dMZUJ3VWtpZko0UExo?=
 =?utf-8?B?NFlqeWptSWRRbmtmZHI0RlU5Tm56L0pBUHprbmEwNWFacERaRGdGQ2ZwYVhh?=
 =?utf-8?B?UUlGK1lvQkplUmZzbCtSV2Y4R1Q0R2VGdlRPQW1ITGZ3b3VVM0pTeUZ6Vmwy?=
 =?utf-8?B?UVc0VXBzS2JrSEZ6TGFrWkY2Y2tTeFBibkI0MFAyZFVPSnJGR1lWMVl5c1VE?=
 =?utf-8?B?aGF2QzJEcE5Vekk2cS9pQ085UnhudzNiMTVjS1BNbVZqM3UwK3NIZ2x0Mm1s?=
 =?utf-8?B?eVlBYVZHR1QrcTc4SkN5S082TE5ZN01WQnY0R2JFT3gwSXg4aHpkYVJOenNT?=
 =?utf-8?B?KzdMTlQ1NmhJZCt1cDV2OWdqYTYvcU5pcGxDWDZJU3RkRzV0MlRlYjdOaUU4?=
 =?utf-8?B?aFQ5Qm5aSjNrQTVBYVhxSlZsTU1EYVdLWFY3Q29rSkFManhDaVg0NWlYa0dy?=
 =?utf-8?B?RGw1ZjlFdHFNUlFJM054Smlhcm5YN2VibTNmbFRRZkF0bTJmWDVDMExFam15?=
 =?utf-8?B?elc1U3kxa1M0SCsvdFlNbUFNaFBtMDBHVzdBd3MrQ1dyTjVlK29YMWZseUhH?=
 =?utf-8?B?aFg2eDRpR3FheHpYK3FFaHB0RVJYTmk3a2o0UFJPd21URE83VE45WDk3Ujcw?=
 =?utf-8?B?bDRKKytDaXBNVHMycDV6T1JkaUZ0S0NFNTJSU1hUOWhmRHg1UCtaQnZQUHVN?=
 =?utf-8?B?SnU3SG4zNG1EM2Z2cnVkODRSMTBiWmF0M0RySHdIZm1sbHlTUjhtSHBnN1Zr?=
 =?utf-8?B?UDZpQ29YTTJMamx4aWFMSFNjNHJyenVzVkRUdUdzVUVMMmtrczdVS2VMOGRD?=
 =?utf-8?B?dnh6dkNZVFpjRU4zZUxYRC96Tk9KQXZOQWVXd3hDS3p1bUVmbTBTREhaMzFN?=
 =?utf-8?B?UUdJak1lWmYzbTZFUFpRb0ZLV2dlbkVZeE5oMTFYbk55MnFiSnlYQkIrdWtP?=
 =?utf-8?B?OVlHTzhvTklxdTl5ZjljUSt6aFFOWGJnSXV0eGwyV2hDRjFUOXVOVTBxSElX?=
 =?utf-8?B?bkRESjdQOExsTjJ0dDQyZER5N1VsNjlVVFcyWkNpVVhmZk9OdGR2UXF0V2pv?=
 =?utf-8?B?SFZncGNkdUU3aEQ3MTA2dHdoajBLdzVaUnVRMUtxdG5GWElUN3JvcllmR3ZV?=
 =?utf-8?B?cG44U1FLb1RZZG5qRDhYa3ZKR0xIZ3Rvb3JoNWhZM2tYK20wUFdtK2tYNThv?=
 =?utf-8?B?Y3o2a0RKMTd0OEFhNFBrSmVqUTEyYTRrcXEyeXY4cU95Q0NOVHVTNm9ZOXVK?=
 =?utf-8?B?bnpHVmFOSjJQYzBTYWkrVXB1RmRyU0ZMVHhBOHhNVkJnQWZ4TmE2SWs5Y2Fi?=
 =?utf-8?B?dFBoUFgyS2QzQUZ2SFY2UW1oZ0VBSTR2Q0c3WVVMdXcyWWJla0Q3aUlZZmtB?=
 =?utf-8?B?cWQxVW1vVGx1djFLOG5wRTM2UGJid0ZNeHg4cWpPa2tkdTQzWGE1TTVHd1Zx?=
 =?utf-8?B?R1BOZ1RlL0hIMWhWczV0QnRPWm5PRDM1YmsveW5GdmhpRHdHTGwzRHpTWEVN?=
 =?utf-8?B?emtrWHB3b3RJRWhoRnZNQkE5TDFJeGpRT2d1S1IvL0RxSFdHNElMVFJIdFFr?=
 =?utf-8?B?TnpralRBRkNFcFluQ2UvdGQvektIQm9FdldsbUdIYVdieGtmM2N2Vll0b00z?=
 =?utf-8?B?SUJsbEZwdVJoanY5MzVIN0JRYkdPbWdiN09PSEgxdlM5eGkwYm5XcWxuNmhM?=
 =?utf-8?B?OUxSdCtkdytaOGtRdFdOb2NRdG5zN1VreWNTcnE2MW9rSTFTZW5xUmpVKzFQ?=
 =?utf-8?B?Z0VNMXQvZG10enJaakNraElROVNnczBwR09RL2NLUStGS0Y4ZS9XZXdIRXVL?=
 =?utf-8?B?TGVFcDVETjIxWEoyc1dVTDNYd0UrRWU3V3V4dmV6WTBKUEl6SG5qQlNnQVVx?=
 =?utf-8?B?U0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4aba17bc-1e6e-4818-a360-08dcb0977d2e
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jul 2024 12:59:46.7679 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qTW/2cjhuNy5GnnCf5qWaKYhTho3sowrJDVyb+g6S2ePDOzbvkHx6ch8Tdk0LokgytBuESP9uAGB2yXsWWmlHfVIrNvVSckjzakmyY93afE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8702
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722344393; x=1753880393;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wOKNADU3SAmk+pdQGakX/5+uCplkmpkyL7E1k0u0Scw=;
 b=lqTvgGjg/cB1NfTqol3snoR0IRqS04ucNSNxUvKo1kR3AyCporiprl30
 dBta0Ju0v7S/ps/y9w1TORugQucOQcV1gaPR1dSa8AVvaFKg71ber6yUI
 E2g2+je7zGDJI69UqhAjCxbMdtE4AEaXZZYW/YM+229MAcaQPnaAZ4/Dd
 6ETxZZJjrVV4Bbv4snY73iMtMvF0cN45Y+9opbyfJzljibNw732quNvpr
 /ALWJCG3IsEmjyxuVbN8C11DX/7VSsf51ZYdgeF963bUg2bOKNNMS6qnr
 hrHVwEwWLcTuG+q8ZJCLfHWFaQRGgJ7JsOERfaqEqABqtk6xwa4cGyyWT
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lqTvgGjg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v8 03/14] virtchnl: add
 enumeration for the rxdid format
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Simon Horman <horms@kernel.org>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Rahul Rameshbabu <rrameshbabu@nvidia.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Date: Tue, 30 Jul 2024 05:14:58 -0400

> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> Support for allowing VF to negotiate the descriptor format requires that
> the VF specify which descriptor format to use when requesting Rx queues.
> The VF is supposed to request the set of supported formats via the new
> VIRTCHNL_OP_GET_SUPPORTED_RXDIDS, and then set one of the supported
> formats in the rxdid field of the virtchnl_rxq_info structure.

[...]

> +/* RX descriptor ID bitmasks */
> +enum virtchnl_rx_desc_id_bitmasks {
> +	VIRTCHNL_RXDID_0_16B_BASE_M		= BIT(VIRTCHNL_RXDID_0_16B_BASE),
> +	VIRTCHNL_RXDID_1_32B_BASE_M		= BIT(VIRTCHNL_RXDID_1_32B_BASE),
> +	VIRTCHNL_RXDID_2_FLEX_SQ_NIC_M		= BIT(VIRTCHNL_RXDID_2_FLEX_SQ_NIC),
> +	VIRTCHNL_RXDID_3_FLEX_SQ_SW_M		= BIT(VIRTCHNL_RXDID_3_FLEX_SQ_SW),

Macro compression? ^.^

#define VIRTCHNL_RXDID_BIT(x)	BIT(VIRTCHNL_RXDID_##x)

	VIRTCHNL_RXDID_0_16B_BASE_M		= VIRTCHNL_RXDID_BIT(0_16B_BASE),

and so on...

(optionally)

> +	VIRTCHNL_RXDID_4_FLEX_SQ_NIC_VEB_M	= BIT(VIRTCHNL_RXDID_4_FLEX_SQ_NIC_VEB),
> +	VIRTCHNL_RXDID_5_FLEX_SQ_NIC_ACL_M	= BIT(VIRTCHNL_RXDID_5_FLEX_SQ_NIC_ACL),
> +	VIRTCHNL_RXDID_6_FLEX_SQ_NIC_2_M	= BIT(VIRTCHNL_RXDID_6_FLEX_SQ_NIC_2),
> +	VIRTCHNL_RXDID_7_HW_RSVD_M		= BIT(VIRTCHNL_RXDID_7_HW_RSVD),
> +	/* 8 through 15 are reserved */
> +	VIRTCHNL_RXDID_16_COMMS_GENERIC_M	= BIT(VIRTCHNL_RXDID_16_COMMS_GENERIC),
> +	VIRTCHNL_RXDID_17_COMMS_AUX_VLAN_M	= BIT(VIRTCHNL_RXDID_17_COMMS_AUX_VLAN),
> +	VIRTCHNL_RXDID_18_COMMS_AUX_IPV4_M	= BIT(VIRTCHNL_RXDID_18_COMMS_AUX_IPV4),
> +	VIRTCHNL_RXDID_19_COMMS_AUX_IPV6_M	= BIT(VIRTCHNL_RXDID_19_COMMS_AUX_IPV6),
> +	VIRTCHNL_RXDID_20_COMMS_AUX_FLOW_M	= BIT(VIRTCHNL_RXDID_20_COMMS_AUX_FLOW),
> +	VIRTCHNL_RXDID_21_COMMS_AUX_TCP_M	= BIT(VIRTCHNL_RXDID_21_COMMS_AUX_TCP),
> +	/* 22 through 63 are reserved */
> +};
> +
>  /* virtchnl_rxq_info_flags
>   *
>   * Definition of bits in the flags field of the virtchnl_rxq_info structure.
> @@ -338,6 +378,11 @@ struct virtchnl_rxq_info {
>  	u32 databuffer_size;
>  	u32 max_pkt_size;
>  	u8 crc_disable;
> +	/* see enum virtchnl_rx_desc_ids;
> +	 * only used when VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC is supported. Note
> +	 * that when the offload is not supported, the descriptor format aligns
> +	 * with VIRTCHNL_RXDID_1_32B_BASE.
> +	 */
>  	u8 rxdid;

Same as in the previous patch, this can be enum:8.

>  	u8 flags; /* see virtchnl_rxq_info_flags */
>  	u8 pad1;
> @@ -1041,6 +1086,7 @@ struct virtchnl_filter {
>  VIRTCHNL_CHECK_STRUCT_LEN(272, virtchnl_filter);
>  
>  struct virtchnl_supported_rxdids {
> +	/* see enum virtchnl_rx_desc_id_bitmasks */
>  	u64 supported_rxdids;

If this is u64, then virtchnl_rx_desc_id_bitmasks should use BIT_ULL(),
not BIT().

>  };

Thanks,
Olek
