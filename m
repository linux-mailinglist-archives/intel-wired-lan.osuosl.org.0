Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A7609854BDB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Feb 2024 15:50:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A2790822D7;
	Wed, 14 Feb 2024 14:50:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gbvljEp5AV63; Wed, 14 Feb 2024 14:50:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 104E582250
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707922205;
	bh=CNQZ7oWvcSVkOotsxDQSs3VMw3GXOlGhvOnt5ByrqUY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bnWU13WvGE4a3DFUlNeTmxQgmbO5TxoUo5SX7sS1pfvFdkx0UkNz0CeZLxqbRFwAg
	 TRlepLPjk/S36OOaBPy+gcMdGlVthZc7asEGb8RcAWhEoqpg+NpCWJK347QVSq0UvP
	 BNlHFvx+GyegLxAJkVb4J4zy8iLcJ5MMiJA903+xZwNo7K7EtmXWL7fSfyAzDx5M+y
	 yNcCOonjdh+SzxTdKV32jEBwVuBqi33DSwqmZRA2p5rNevMGwNi7Soow4R5wX7bo0k
	 tpd+wev9Q+LmY3HVNRvBCbp55vwe00FJB+xRRJa6gvQvp0Jlir4kQa9OXMKeuTUcnv
	 X3z2XvY+Mm6ZQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 104E582250;
	Wed, 14 Feb 2024 14:50:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9B4181BF5AE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 14:50:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 85E3B417AB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 14:50:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WG0ZRp96rGpZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Feb 2024 14:50:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E7CAC408A8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E7CAC408A8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E7CAC408A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 14:50:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="13357744"
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; d="scan'208";a="13357744"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 06:50:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; 
   d="scan'208";a="7828831"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Feb 2024 06:49:59 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 14 Feb 2024 06:49:57 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 14 Feb 2024 06:49:57 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 14 Feb 2024 06:49:57 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 14 Feb 2024 06:49:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Yd+/3z63iCQGucNnG46QOjF/gvHZa9HJtzttK4TuLlgq6ZfeoyakGYAVE4FQLdh/32cPtHkG4I7DhGGnxPMLsYE3fUMXhtd+79SmEP3Y1Y4429MsVpLxvDtCshtgDKCnuc+KaN3xLtm6uvoIvhWPOGwHBsQR5hCBDPFkSTCf0cau3MTqoE6SHwEZ564tKYRgHhWztHNaaL3VRhcw0/KrQtFLgGl2UgDtEgaNftjJJ19B+0NMUT9JMBFVZ18D+aJC0rvqk4EnoibV7qxy4igHTkMKP/IAoqI9bkADUlv6B8MnSnkGgi0rGqbNsbXYWcHoMcgrEtfRz6QyR2rLlijvVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CNQZ7oWvcSVkOotsxDQSs3VMw3GXOlGhvOnt5ByrqUY=;
 b=GTqvoLft75TYSKiSf3jFaLMvgDUBWJx851QrK/1oyNlDbKN0MjbBLLO9LtwEQ61+H7XgvRQlU0hvI5n+V4++pJSZKZhVirugvQJFM0U5z3R7rEtV1aG9h1+9MZlCjZTvg+SUpU2VS0pLOvDwsqymeu4gRryLJenXqB9Ak1GQAbRdIutteAyuk1OOgQsN2fStc/Jk+82zvjX0+ZiB8NxZJHX9KfXr7ZKsd6x67OnAoTaBupntlJNhfRFE6geeyIjlk/fEmzRPg88kfG83fOrdELg7JgleFpaA2u5HQrEeTrBjc4urMkpsZ2nHiOHBSh1XZ2Aj+ljzQvUr9NlsNknoyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by BY1PR11MB8128.namprd11.prod.outlook.com (2603:10b6:a03:52c::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.39; Wed, 14 Feb
 2024 14:49:55 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::c806:4ac2:939:3f6]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::c806:4ac2:939:3f6%6]) with mapi id 15.20.7270.036; Wed, 14 Feb 2024
 14:49:55 +0000
Message-ID: <04033c1e-c3f8-4f05-8c88-f0cd642e8c55@intel.com>
Date: Wed, 14 Feb 2024 15:49:51 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: Alan Brady <alan.brady@intel.com>
References: <20240206033804.1198416-1-alan.brady@intel.com>
 <08e761c6-d79a-4a64-a61a-9536dd247322@intel.com>
In-Reply-To: <08e761c6-d79a-4a64-a61a-9536dd247322@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0210.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a5::19) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|BY1PR11MB8128:EE_
X-MS-Office365-Filtering-Correlation-Id: 56912938-850e-4821-35f7-08dc2d6c34fa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jFFWp3psryVkmrXOrpdkXulJvpLyq7nnqaXVUMk1FvrczJEqSI2SqR9IX1M4exvOjUUhpe7nF/c3PrY5/H9OjwJLX5lwbWTKURwAlfwQ2AxLO0Wuy4FFTlsgoS2VnD8fKtqLOzXBPtV0AGUKx39QVfkxVqYnmH1zbPLD4b5FOMM9rrx7TY/dx9bor7NFqSevBiAs4tMxkWeWCVh3fhguy3R3wEe/zcnPZwYSbMX5VoO1de7ncyOT+XwPo6GSC4AGvuIWtYd35LwXOd9mo9lbdSsT2EGTUarUjTR8sslOUXXozlk6+djCXvSJyfSFDu27qbmP/uxodJF5g7wW7nZAyy8AOhV39sBuCQY+YtCUnJ7PcbCs1VAsp4d3XTeW8OMA/ZK9UfJHYiXmbfY9dEv/dR5UV9/LfojYE7FPGWf+6ErhYDzeBbsLoBkUSYlUgcPVGqrkHv3nKzeAoYYCk4JEYKfybl13EmV1fB5bbIA7Rtl6I2X3l8UCh1izZ8pr0uSUHPMrpsqVAJlLwmhC/tLhKHH8pwCQIGHftvRAPaOlhbvudCfBtwGUWVGCIQ37Ip5R
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(396003)(39860400002)(346002)(376002)(230922051799003)(230273577357003)(1800799012)(186009)(64100799003)(451199024)(36756003)(2616005)(66946007)(26005)(107886003)(6862004)(478600001)(6636002)(66476007)(8676002)(66556008)(83380400001)(4326008)(8936002)(5660300002)(37006003)(31696002)(316002)(6666004)(6512007)(86362001)(6486002)(82960400001)(38100700002)(41300700001)(6506007)(2906002)(15650500001)(31686004);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b0FwTXZhSENvWHpBVmkzcTVRdkFwYUNMVTkxb3JBWTl3WG0xS0dhM2M0VXkr?=
 =?utf-8?B?c0FRQW90N0JaU2xSMW4rUXB0Y0FYdUJYVy83SHpzZnU2UW1LeU5pQzRyOWNM?=
 =?utf-8?B?RStnWVR4YXFkWGc5SzdFcmdFbGpxWGpZS04vdVNxQVh5Mk96cXp1aGxHSEN3?=
 =?utf-8?B?YnI1aGpjWFF3Y3VKSUdUL2NpNllYWTF6UHVSL09QZ2lwdExhQk02aEh2VWps?=
 =?utf-8?B?UUlOOUpML1UwOGQvcHB4ZVlqL3drbEFMUXlXTW9nTmJuYk1EcDYyY213QzZW?=
 =?utf-8?B?OHNVd2pnbElsZkhlTGNqOG12MUJQd3VDVURzZnBieGFsMnFZMEcxYktkZ1M1?=
 =?utf-8?B?Q2JFRFNUbHBnUUJsYWlNSDFUUmR4MVB5TGZ3UUlETm5ITDQyN2hQN2oyOEEv?=
 =?utf-8?B?eEU4bGVnRVFxMXAzbDVsZVREaFRZL2pMeHZaOFJabHcra0pRNGQxejBBTzJL?=
 =?utf-8?B?QnFra0FIN1BOR3U1NDJOc1lBYzFwN01EVXN5UXZnVHFWbGUvNXJkTlkzT0N3?=
 =?utf-8?B?NG5OR0NmenFTWEVEdHQzQkhGOXRMeGxENklPUXJ1NjNOUUVuNVlKdTdtT2Q1?=
 =?utf-8?B?aTlqdmsvTk9ueTdWMzNvRzQ2ZVA5K3B2bjZrbGZ3NEtyTEJRdlVCaW9PaUtY?=
 =?utf-8?B?VHhiUnJPcHlEZ05tOG9tNVlFeGNiUEZSa0dTWkZxN3lsOTNOR0QwYXBNMmpH?=
 =?utf-8?B?QUtsakI4QUhuRmN1MVZ4VGNmS0tCYUMvejJ4ZlVlamRFYjdlbmtCZURDRDhh?=
 =?utf-8?B?MnhvQlljeEl3ODZBTW15Mk1GanlvS0pJQkhBWXpwM0VtNVpzNU5hZkswVEt3?=
 =?utf-8?B?cXZoVXhGa3VhRVRaU3MxNlRaNVRlZmZYazNQMHBzTi8yeFFiN3RLaWlrWFh5?=
 =?utf-8?B?NXdGNEhjUXBsVWFYYW0vUjE5MEhQQ1BxWEwrK05mN0JzS1kvc0w3R3A0Ny9i?=
 =?utf-8?B?WDdRVmFhOXZzcm5Xa3JSZVdNNmlHc1B4VDh0ZWNtRnVIVGxKNG9oL0tRa2gv?=
 =?utf-8?B?UG9nZno0aFlRLzRZRG9VUVdpNjRqaVZtemxCSFJIaXhhNCtVRUJYQ3hFMkxB?=
 =?utf-8?B?VmRBSm9UTk44aDdzeHFrUFFHaU9kY1dWblVsa2E0TVU5QjAxY280b0k0Um1C?=
 =?utf-8?B?ajNWcnRnTk5zcXR1MVl2d1hYSTkrak83K3ZMRkRkY0ZWZUJjOW9mMHdiZjI3?=
 =?utf-8?B?VE5qdmlub0lDbWwyUFZ4c1RJU2dtK1M1cnVjNmxjTU83NmFlbzJWN1JnTG41?=
 =?utf-8?B?NWJndldFS0ZzWWdkR2xPYzh2MjI4dHNJaFNvRk9mMEpEWTF5T3ROUGF4amlq?=
 =?utf-8?B?NGtKajN4ajBWeDE4L0lhY3p6QXRqN2p2Y1FpYVBjN05ka3JTMXZEcFdyelNn?=
 =?utf-8?B?dE1MbjFJUkl5N0MwdGZ0cS9KbmtRL1MrYTB6MTlZLzFSK1RzSU8xd2JaZHFE?=
 =?utf-8?B?S04xZmpwa0l3RE5CUXk1M3VReDM3NzFWUmtXNFY4QmIzdmd3b2dGQVhjc0c2?=
 =?utf-8?B?VGU3elNSSUR3b0RSdWlwNHlQUnJLazA2VWF4SHlpcjk3Qnh6MmFyVWRZa1BV?=
 =?utf-8?B?Zm94TU4rRVMyUlg3ZFprQ0NPUVM3RWdnbnNYVlNpbndjb25TZGhBS3JnRHY2?=
 =?utf-8?B?KzNNTE9lR2xtV1EvWG02RHJZaXNxN0VPbXoyTUNGWUJzdHlsellPcFpSZkw0?=
 =?utf-8?B?MitOOUJhdzBUajJmTGhwOG1TUnJIdENDM1NRbWI0Q3Zmb1F6dS9NZnhybDI0?=
 =?utf-8?B?cjdGSjRCSUJxTDY5aXdDN09YTVUzWTduQmZzN2dzcUhpVWxsdTJ0eDg5Z0hT?=
 =?utf-8?B?U0x2Sk9BajRwblg4ZmxYUmFRbWVTMXE1MGRQcmlJZVd6ZFZVWEFicVJuVFJD?=
 =?utf-8?B?NnlRMjZ1eDFUenNld28rVjAvYlhuVFFocHR0WkpKYVcwSThlZmZ5cUhMSTZJ?=
 =?utf-8?B?dmRuWVFxS2QxcStka1JSemQzVFk3Z2lLU0wzTlNXYWlON1I1VzZRTXdlNmFx?=
 =?utf-8?B?U20yRnRETkVoMmh3NFpFWlhZd1Y1UEYxS1hzS1BxQ3REVUNrbVRMenR4ZWVP?=
 =?utf-8?B?UVRUZWxaZ2YvQTBXTHRPRHcrdkNkRGZjaG1XaDB5RHhWMHpHY0JGb1RmY1NK?=
 =?utf-8?B?VU1yNTVid3BJYU5DSkZ2bVQ4VEpNUHAvQW1Uc1pqU0plVWhZTUV2bUdnYk85?=
 =?utf-8?B?YVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 56912938-850e-4821-35f7-08dc2d6c34fa
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2024 14:49:55.6060 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Nw0uEbe6BZ320/et0Uyoqy5UpW8zTLXwVtlRJyohCZR9Zy/rW+4iMR8bBGB5AV8y350BGzV1cT4Xl1GENQuIdjUo6TTzS1DaHRpKWo8LjMo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8128
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707922201; x=1739458201;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/PmEQR95z7IKRHhyDQvzjjepL743ZL6p5FcrXt/rOoY=;
 b=IP3p89YipABwLuu9VCXi0huWfOzTOgPPxvgwOFSN5xCHpbGmIJwpkjvC
 ofg8+KI1zEKWqQ3CgauaZx9I6JJtI1gJQgcvMryR53N82F1pAkxE2pHFZ
 w7AG5Y4QabcS0HWc3xpV7dFmGLQlHKATLN5BFCliYZcErRtdnvziMIAQK
 5/+S3ubDhmzXPae2IHnYoSi9b+AUqJc1oIfDnmcjqIZGkDajIwXJAVYuA
 /4ofYizBtxlLoONLPpJ7sl5Jhe0WJ18VS2oLNSuZX5Tn+UPYlmi6ydQlX
 Pc0ZHPqIqLuZmyVDtmeMkWt/M2OI2sq4q11+1pqM6XFrxoD7wIMq59yaa
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IP3p89Yi
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 00/10 iwl-next] idpf: refactor
 virtchnl messages
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
Cc: netdev@vger.kernel.org, willemdebruijn.kernel@gmail.com,
 intel-wired-lan@lists.osuosl.org, igor.bagnucki@intel.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alexander Lobakin <aleksander.lobakin@intel.com>
Date: Tue, 6 Feb 2024 18:02:33 +0100

> From: Alan Brady <alan.brady@intel.com>
> Date: Mon, 5 Feb 2024 19:37:54 -0800
> 
>> The motivation for this series has two primary goals. We want to enable
>> support of multiple simultaneous messages and make the channel more
>> robust. The way it works right now, the driver can only send and receive
>> a single message at a time and if something goes really wrong, it can
>> lead to data corruption and strange bugs.
> 
> This works better than v3.
> For the basic scenarios:
> 
> Tested-by: Alexander Lobakin <aleksander.lobakin@intel.com>

Sorry I'm reverting my tag.
After the series, the CP segfaults on each rmmod idpf:

root@mev-imc:/usr/bin/cplane# cp_pim_mdd_handler: MDD interrupt detected
cp_pim_mdd_event_handler: reg = 40
Jan  1 00:27:57 mev-imc local0.warn LanCP[190]: cp_pim_mdd_handler: MDD
interrupt detected
cp_pim_mdd_event_handler: reg = 1
Jan  1 00:28:54 mev-imc local0.warn LanCP[190]: [hma_create_vport/4257]
WARNING: RSS is configured on 1st contiguous num of queuJan  1 00:28:54
mev-imc local0.warn LanCP[190]: [hma_create_vport/4257] WARNING: RSS is
configured on 1st contiguous num of queuJan  1 00:28:55 mev-imc
local0.warn LanCP[190]: [hma_create_vport/4257] WARNING: RSS is
configured on 1st contiguous num of queues= 16 start Qid= 34
Jan  1 00:28:55 mev-imc local0.warn LanCP[190]: [hma_create_vport/4257]
WARNING: RSS is configured on 1st contiguous num of queu16 start Qid= 640
Jan  1 00:28:55 mev-imc local0.err LanCP[190]:
[cp_del_node_rxbuff_lst/4179] ERR: Resource list is empty, so nothing to
delete here
Jan  1 00:29:08 mev-imc local0.err LanCP[190]:
[cp_uninit_vsi_tc_q_region/222] ERR: Failed to init vsi LUT on vsi 1.
Jan  1 00::08 mev-imc local0.err LanCP[190]:
[cp_uninit_vsi_fxp_config/1101] ERR: cp_uninit_vsi_rss_config() failed
on vsi (1).
Jan  1 00:29:08 mev-imc local0.err LanCP[190]:
[cp_uninit_vsi_tc_q_region/222] ERR: Failed to init vsi LUT on vsi 6.
Jan  1 00:29:08 mev-imc local0.err LanCP[190]:
[cp_uninit_vsi_rss_config/340] ERR: faininit_vsi_rss_config() failed on
vsi (6).
Jan  1 00:29:08 mev-imc local0.err LanCP[190]:
[cp_uninit_vsi_tc_q_region/222] ERR: Failed to init vsi LUT on vsi 7.
Jan  1 00:29:08 mev-imc local0.err LanCP[190]:
[cp_uninit_vsi_rss_config/340] ERR: failed to remove vsi (7)'s queue
regions.
Jan  1 00:29:08 mev-imc local0.err LanCP[190]:
[cp_uninit_vsi_fxp_config/1101] ERR: cp_uninit_vo init vsi LUT on vsi 8.
Jan  1 00:29:08 mev-imc local0.err LanCP[190]:
[cp_uninit_vsi_rss_config/340] ERR: failed to remove vsi (8)'s queue
regions.
Jan  1 00:29:08 mev-imc local0.err LanCP[190]:
[cp_uninit_vsi_fxp_config/1101] ERR: cp_uninit_vsi_rss_config() failed
on vsi (8).
Jan  1 00:29:08 mev-imc local0.err LanCP[190]:
[cp_uninit_vsi_tc_q_region/222] ERR: Failed to init vsi LUT on vsi 1.
Jan  1 00::08 mev-imc local0.err LanCP[190]:
[cp_uninit_vsi_fxp_config/1101] ERR: cp_uninit_vsi_rss_config() failed
on vsi (1).

[1]+  Segmentation fault      ./imccp 0000:00:01.6 0 cp_init.cfg

Only restarting the CP helps -- restarting the imccp daemon makes it
immediately crash again.

This should be dropped from the next-queue until it's fixed.

Thanks,
Olek
