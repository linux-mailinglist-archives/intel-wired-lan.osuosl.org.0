Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB1C58AE04
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Aug 2022 18:24:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8D0AC41DCC;
	Fri,  5 Aug 2022 16:24:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8D0AC41DCC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659716692;
	bh=yDHerAaYeHtMfXbjbpK0dq5qftLOSASPMN1XTF4N9Pk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0b9v5D65WfG1+Oy16JBNL7pucMoZhUYesaiGKev5x8ZjWB597T8fW8cQjtaj7LEeO
	 c64RinBWFfH+7+dkhG7WGt706y57uMY81vJxH3tsbme5Y7BU+/KVB48l50A+dkXPsE
	 LVvZUNk2MX5byiH1lHtwMpjRVvRrXsfZTv3cKOh41L6ahidCJAd9PWxkU725r2edry
	 oSuyytLaodtxhEI0baFSLYgPZmRCrDGEE/E6h/D3af9vJMEZttBOwilrFtPMmZJIyd
	 JKQEMsBSc0iH8T42Uqf2ZycPMgOoKQXCa3+LFsVDPkPQcfPrXGOoKgHRmoc6r2gtOh
	 rqkcR6YXYS68g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dSk19xRA89uO; Fri,  5 Aug 2022 16:24:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2979D41DB4;
	Fri,  5 Aug 2022 16:24:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2979D41DB4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C7A9B1BF31E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Aug 2022 16:24:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 94B5983EE1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Aug 2022 16:24:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 94B5983EE1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SbEukSC6x2HD for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Aug 2022 16:24:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DBF6883EDF
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DBF6883EDF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Aug 2022 16:24:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10430"; a="376530922"
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="376530922"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2022 09:24:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="779788477"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga005.jf.intel.com with ESMTP; 05 Aug 2022 09:24:33 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Fri, 5 Aug 2022 09:24:33 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Fri, 5 Aug 2022 09:24:33 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Fri, 5 Aug 2022 09:24:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PXjlvrPCeeYfckYi8U1nteZI2W4tZvHV5nRZIzg3yFFQ+lHJrtLPGCiUW1nMY1IYsGMR6jFzl+3WtO7v4rHANAaso27+kdyLKSzdUAzWGUmkAsfh9Nd6D5SDuDvW1FeHEOKdM4U5QWW0xHP0iqBCNTSO33yThwycqUwX+hdm9mxBOFqoY+2m75n/Ab8/v5LEcCyOf+YHmeHf8SqfeetXqaSYcaEauMHZu9Ez07xuvHl8O+UUrB29QCGTwZ5m8pS+AJxwze+c4fH7ijmKiqOqqVA9MjNdAvNCO9+ps544l3Olpeoy7F7Pr5uV7zr3JOXQS90VRq3Y3pGFGOW3zec2Tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GBj/z0blmbFdPrfF8UJVtajDLf7gp1nSa15BU5daatw=;
 b=MWKawneUtR8i4ZrtjqoCHLgEFD+sqfFr9IADJWglvGFq4iS1Pt/rcM+UEOfrNS4Kn+4DG8zJ1AF76kS6CjQbuZFMzTFrYFlcsUwpWShlsyU9I1wLUOVmaZhDy7xAJEDku66mOgZZcbkPnrtCuh3QXLRaW7DKQyCNuhU9Kv3+leAKFLX3jQia2hCEU8jlNlpX05BqP3SJHDwLzCanJP+YhWXhXrQr3LPQEWlgugbfRhn2PB5/i4eVhi7wb/7JinOmgE7rQpko+1KodQWtzpKJJpLU31ZM/8EC2W6HtvcMr/ctPnF/gxc6FQuAkmlk/UiKSXEwF74/t0E8y9h/SUe1Ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DM5PR1101MB2236.namprd11.prod.outlook.com (2603:10b6:4:58::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.15; Fri, 5 Aug
 2022 16:24:31 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::9d3b:23bc:a1e8:2475]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::9d3b:23bc:a1e8:2475%7]) with mapi id 15.20.5504.016; Fri, 5 Aug 2022
 16:24:30 +0000
Message-ID: <a3e37102-1f74-a9f4-d202-79c94add0afd@intel.com>
Date: Fri, 5 Aug 2022 09:24:17 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Grzegorz Siwik <grzegorz.siwik@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <1659622830-13292-1-git-send-email-grzegorz.siwik@intel.com>
 <1659622830-13292-5-git-send-email-grzegorz.siwik@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <1659622830-13292-5-git-send-email-grzegorz.siwik@intel.com>
X-ClientProxiedBy: SJ0PR03CA0260.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::25) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 39fa1f78-5305-4a60-91d3-08da76fef98b
X-MS-TrafficTypeDiagnostic: DM5PR1101MB2236:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zQllHtBHgUw8tw2FMl2B9b7I36YOsG+Sg3mYE2kCrAqSRYcGTYQTKDcbo8AIpcL8Rd9N8WP/Kr8pipHg7NKsL5rMhxK/y2+tsds66yLFwSSb8gbVNY7NvG1v+jUESgLA25XYqidT9OqaknYD9Sl3pPgLqMvyaH6+OyateoS76ZNyGpHpmWnqmfTdZ9xrxlycjwXJuEgF5OCkVY1iKKtog1a45jTCq4Z5uVIU1nWplyfFK3e3s5N+yTTvXWZYwCuard5CS15SgYMwSbOntVc+03ftoBnvtZiPOKGWSMEhKeYGskGD0Ih4394FK/0gRIc6UC5XQfi4r+tFnI5ApSTApp1bo5N9lyPFv00P6QeR+TyEvcyms/qeZS2pjdo90CUv23Kx13nsERN8kSkQtQ6Qs2SuCMM9gWGIrEu5VTnXRMEvXkwnqHlfRu/JZaTJWtAVzII5/ikIB8VvgB1bJdN8Y15mbtYROn6Ec8t9pe1kXHlm8v1QzkF8TnWdAxlJjf+WEzQEG/SWqwnI0FbgfGiuBRhgAn/EhMm4Kk8b1VAjqkslvaDA9Ep3ORlorXIwnZcwN8Yz3+qkNTeWm8qm6dsI87+xDMGNblgZOepRp2CoxNMFAedieTuA9g5IPlJHrAlAic7xO/mh4KSw44ZX5G+yIORuGvVhur6akRyppXreQyaZJJ1+WxrhHOf19i5L/vUmJn3A9Zn/TsbwCSnMBVpLWi9J6k+//sJmpdeZ2AJ4jg9RE0B7hj3yL9K9ho/k0Bc9sdHfzxE/kT1UOjd8bLr+W08xdz90HZzH18QcfB4ktXlibBiR8FLk/PwOVvWNjAZJLW8bJrEMWq4cwVr8xQ3syg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(39860400002)(376002)(346002)(136003)(396003)(82960400001)(6512007)(8676002)(4326008)(66946007)(66476007)(15650500001)(31696002)(86362001)(66556008)(5660300002)(38100700002)(186003)(31686004)(478600001)(2906002)(8936002)(6506007)(6486002)(2616005)(53546011)(36756003)(83380400001)(26005)(6666004)(316002)(107886003)(41300700001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z1ZmL2pudTZ3MXdZdzJCVHJ1bHZRRDExSG1TSHhVVEgxanU0dTVXZVRoaHcw?=
 =?utf-8?B?UnFRMVY1Sml5UnVoOVBMSXRWS1lQazhtU3NUL2JLbWp5dGFEWFN3ZE1scmJZ?=
 =?utf-8?B?aVlJOEpReVV4SmZ3NzBvOWZrc2FBZGtRY0tOUCt5NUFOeXN0V1N6c01RYUVO?=
 =?utf-8?B?Q2IzWGJzSDdYVHdYUzdxQnpIcWdVdW5YL0VxRU9Kb3lVU1FvMEw0NFRyd3hD?=
 =?utf-8?B?VEdJNjN1VmlJNExZMzdCZFQ2UFVzWVpjNEwrK081SitlMDBpRU9LSXVpS1Rx?=
 =?utf-8?B?RkhvaVU3dS80Nk5FUTdrMUxRRHBtTjQ0Q29HektyWXpvSkh5T0k4REI1NzEy?=
 =?utf-8?B?d0RiN1FXeUtXOGxCOXBWOW5HV2E1aWc2bnZ4d2huU1VoMERwaHRWN2hWWjR0?=
 =?utf-8?B?V2RMaStGOEhpRU5Tc0JSbW5DWktHcStCdVczdzd5TmN5NDlWdmE5VEtWQlZX?=
 =?utf-8?B?V09ZL0RXMmhlZ2lJMXJXWXcvSW1EeExWc3A2UWFPUW1XV1drRTFlaEtjVDZo?=
 =?utf-8?B?KzB0YWJNWXNaYXRHVjlaQzhWbkhWZ3IxK0J5UjZ1K3RpY2tONVBjQTZwV0ww?=
 =?utf-8?B?OFVXQUlscXJ6UHcvTTlXY29heSs5a0RkaWZkd0RyaWFwbFZVc21wS3BYdEZ1?=
 =?utf-8?B?NEdRSExlSDhDZjVEellkLzY4RENYUHQwWFZRYVhiZUxWRUpWSTJzOGNuVllh?=
 =?utf-8?B?Nkt3WU93OUVHTjZtMjNnS3h1d0xWQkdaa3pvYjFldjJLYW56cHc2OWNYdTZ1?=
 =?utf-8?B?MmRSeVUybnBSeUlWQmpJZUtOaFdBWEVvWUppWHpLcVpETlFPdU5hWWhsZ1Aw?=
 =?utf-8?B?ZlIwNzdVYnJoWW51RDlOM0NHYngxNHhmZjVPUWYrS3A3Ri9mc2NkVlRUZXhS?=
 =?utf-8?B?eUlaY1cvNjlhNityaHBISjlZR09kd29EVzlSZnEvS2s2Y0N6SkU5d2gvbE1q?=
 =?utf-8?B?dGdMbGo1a0V1Q3haSTVNQUo2MEZhVzhLS3JUSUVYYjFxSWYwOEhhNE1xYTBx?=
 =?utf-8?B?N2gxK0xWTGplRG5vc1ViSkRUcjVHa1ZDeDk5azl5SmVLd1VXeFEvbjdaNWJT?=
 =?utf-8?B?OXA1c2MvUGFCY0dMTW1hejNWMXM1T0lKY1NTekZZTVFTU2toTWk0MCtsdHFD?=
 =?utf-8?B?bElXQ1ZkNnBYQTVWVnl6TFVNOUtpUit3RlhHM1JQakRHN0d1NTVLWWJ1clhF?=
 =?utf-8?B?TmVaUEU2UmFidCtNUGFSelZSZ0pGempsMnlrcDluMHJXNVNySW9zci9nT0RX?=
 =?utf-8?B?YS9jRHZhYkFjZ1FENXZWNVAyWVBzY2s5VTVsa0tzNTFvZDBXZ3F0Z01adzFj?=
 =?utf-8?B?ZGM4WUZuN1NYamhQSTRoUG5FbXJhUHVlVGZpY3R1R2lPb3VEUVFRUmx2R1l4?=
 =?utf-8?B?NDQ0WGtuOWw1bXI0V3dOK1RENTU3RzBvUnBqM2N3RzV6OU02RUZyd1JvekJW?=
 =?utf-8?B?M0ZXUnI3K0RTdDhUSnJBWms4N1ZmZTYzSUdEMVIySURtNzZDRDU0NWlGSysr?=
 =?utf-8?B?ZjNJQWphdEtndGltTytmTloyRmhVdHV3aUhHZWtlbm51Y1RNK3diMmovMDFP?=
 =?utf-8?B?NUNmYlJrVkJFSVNpZHA5d2tQN0ZOck81cEFRZXY3Y3V1SjVyUVRBRnNsRDdr?=
 =?utf-8?B?ZmJvTjlWOTJGTUpRem8zSmF5cFlreXdEejZ4Wjg1S1NNRWtYclZBcEl5c3F6?=
 =?utf-8?B?aElUdWxjV05mNG05QmUwQS9FQkx0bXVBWXlnNmZHaVA5bDVzQ1VJbC9FS1Vt?=
 =?utf-8?B?ZnlRb1BYaUZlVUZTd1QrdkdaVVhqdEpseW0zVWttb2lFY0h0WmFiQVJlOURI?=
 =?utf-8?B?QUxKNGhDZzU5b0U5bnJRZHFmVGtFNWhWb2NpL2tVNG1NOVh4ZG1Ec0pkVzBw?=
 =?utf-8?B?ZzdOckpuc0MwbEhUY0R1aTBMZGR4dXpmRFhPVDFkL2Nza3ZLMm5wKzdLNHU1?=
 =?utf-8?B?VEtxeis2Ti9FZzV6cVIydVBFQmg2MVhTaWlEWUFkS1pSVktacXFhdlhRckNa?=
 =?utf-8?B?WXMrT1JkUVNOTkZlL204eWFPYWxmOHh4YkJXa0UyTmlvZlYxcHJHazJ2M3Vj?=
 =?utf-8?B?d3JWb2RNZUVoMkEybC95RUZqWVJSTDIzZGl5OUdXSnV5WVNTMkpYU1J4VmFS?=
 =?utf-8?B?dG5ZQWpuTmNOdlRwYmRJR29ZeUgrbkxOZzZnZm5EaHRkakE5SWkreE81NnNF?=
 =?utf-8?B?V3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 39fa1f78-5305-4a60-91d3-08da76fef98b
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2022 16:24:30.8197 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g67wCfjj7VCepmd4Tuweo+IZ1wZ7XSyp9QtTy9Y/W2T18PlyYDwIAcKy4WNYcQJdFnYMcvIESNYLneXODVZ6ZSeVphJesAe/CyJTm4eRl44=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2236
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659716685; x=1691252685;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fTpqVz3RHkrCRXXSmeG32Zz3CGEBNY/cvOymRyCfFNE=;
 b=aEBIFBHN9l0L7YclHCWWXC0Z3r6tXAOg3fTMIzlB49WqBl/oCnwgX6V7
 Uz2Q+vrHscTZMufyi4Pphv2jMTF3ufGTg1Li3bTagHcbTxyFZBs3VwFN/
 mhJYbQlXt4jILCqyx8Z3S4ICf4PlGe5twkPEIZk3wtfs5wapancdo9CJF
 P+0jT/DQEMbqLnBOl3B1bwPcW98qDA87CMsANXxmcdJajkkStIB4IqlxE
 9K7de7CQ0pENTry8BRt1A0fY1xNlsH+PORmHd5+zYhQnX/uz+MzJ6MOqm
 mdee0i9sCvpK7aiP/NB6rCdHR4LdMaJmLvZAm7/nQ9VMxN4HyagjOacil
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aEBIFBHN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2 4/4] ice: Ignore error message
 when setting same promiscuous mode
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
Cc: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/4/2022 7:20 AM, Grzegorz Siwik wrote:
> From: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
> 
> Commit 1273f89578f2 ("ice-linux: Fix broken IFF_ALLMULTI handling")

ice-linux? Isn't this just "ice"?

> introduced new checks when setting/clearing promiscuous mode. But if the
> requested promiscuous mode setting already exists, an -EEXIST error
> message would be printed. This is incorrect because promiscuous mode is
> either on/off and shouldn't print an error when the requested
> configuration is already set.
> 
> This can happen when removing a bridge with two bonded interfaces and
> promiscuous most isn't fully cleared from VLAN VSI in hardware.
> 
> Fix this by ignoring cases where requested promiscuous mode exists.
> 
> Fixes: 1273f89578f2 ("ice-linux: Fix broken IFF_ALLMULTI handling")

Which is also incorrect here:

Fixes tag: Fixes: 1273f89578f2 ("ice-linux: Fix broken IFF_ALLMULTI 
handling")
	Has these problem(s):
		- Subject does not match target commit subject

> Signed-off-by: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
> Signed-off-by: Grzegorz Siwik <grzegorz.siwik@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
