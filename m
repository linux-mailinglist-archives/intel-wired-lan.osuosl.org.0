Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A628571375
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Jul 2022 09:51:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0350283F1D;
	Tue, 12 Jul 2022 07:51:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0350283F1D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657612305;
	bh=vgGrvEBQ0tdwREVts4ahgvVDqkVH5f5qf104T1e4WIg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rwA+b3NS9rrahJnEIvamp4JOx8413KtbM9HQJvhLluiGl/y1lPxgE2fKdZdbQ6J4P
	 duu+AULnZT30l+bV2WINIKYNa3eOC2qYWuJwd8ZRBy/IpXRiTqCCIPq55uD5LeWHVZ
	 1hePxalYpcPyBifNhGj/rKx86aumb9mKtEfNpI/6x7CRO0uL6fRUe1KqiEAsfRQiwb
	 +2ctyX7zVAF/J9zB65fieA3Lci9qxShgpyGhqWNqSu5Jb+brFag+vbv3rspUb7iqpG
	 WFo2NQkJMulrZN8heU0Bby0jsEqvRKfy1spnaP3UrYvLiN5vGtrNIu5TsCqywnF4on
	 2lKLH48QDPpeA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NcLaEYesiPRA; Tue, 12 Jul 2022 07:51:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D313A83EF2;
	Tue, 12 Jul 2022 07:51:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D313A83EF2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6395E1BF288
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jul 2022 07:51:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3B19F83EF2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jul 2022 07:51:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3B19F83EF2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ag93MO8ztjMy for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Jul 2022 07:51:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 39FBD83EE7
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 39FBD83EE7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jul 2022 07:51:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10405"; a="346549072"
X-IronPort-AV: E=Sophos;i="5.92,265,1650956400"; d="scan'208";a="346549072"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2022 00:51:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,265,1650956400"; d="scan'208";a="771793475"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga005.jf.intel.com with ESMTP; 12 Jul 2022 00:51:36 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 12 Jul 2022 00:51:36 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 12 Jul 2022 00:51:36 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 12 Jul 2022 00:51:36 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 12 Jul 2022 00:51:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cMW/Ba6/I3weQ+ftTNqfzzrwM6DydBxqJu2sQwt5JFcaEv1zX+JaDZsL5UJxYBjvb20y00csOtUAPwQ7KbHmQkQPUfQjVZC7pWHLmFHz9afuSJlsfO1flcjbOZsNe/OxZ9dk/zySm2NT8+Wky4DmIzcQS5smfOY6sC9YsvJfxgHwTQOccg9aPkCdoRAYmdxFl/f7I6NB6pu4boYEWEb12fwjAMHE0lxnzYKNTuVaYs3lBqKYU/NYOUE0yN65ewQt/uXTU0BieQmMJ4MZ1SCNfspSXJm7EXJ154zhOcIZ7QOtb/m5mVy7IMy3KXSe3CWT5jEu9vM/DMoUDpDIdJJ19Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DnkYDeMXLSFttWROOfwspFPVv7TAkXiYjId1xWFjKR4=;
 b=KniV1rfjazF4HNeiyNvuFyBRSYNcWdyptpf57bVulYVYuVoL+1puewrcbHLXGLMThdqcvinYMRqHfksgOBze3zwGvqiTzOudtIW6sTjtTvKTk8b8Im9mjHeaM5pcmMsSmvVwyHh4e09Nnhd2t06Z+2XUYUZYEdpeeUd6MjjS6cTrhZGIsZM5glrrWn/6vWVPMw8dmHl3Lr6ERQjmgg4fLeA8eBh8wV9ILP98LHnhITND4QV5tlA81s01J1KFR2HvGL1Kt24lBxgyLD3MjFK2K1qZJP2WC4lbf70rZa8RP6/gf7OpY9vTfc1Woxh1FgpBVOLP1anKJx8ZdiGzH2srrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO6PR11MB5603.namprd11.prod.outlook.com (2603:10b6:5:35c::12)
 by BYAPR11MB2741.namprd11.prod.outlook.com (2603:10b6:a02:bf::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.21; Tue, 12 Jul
 2022 07:51:35 +0000
Received: from CO6PR11MB5603.namprd11.prod.outlook.com
 ([fe80::5008:4f0:1078:7ba3]) by CO6PR11MB5603.namprd11.prod.outlook.com
 ([fe80::5008:4f0:1078:7ba3%9]) with mapi id 15.20.5417.026; Tue, 12 Jul 2022
 07:51:34 +0000
Message-ID: <beb3878b-df7a-2925-9a88-39e806b9eade@intel.com>
Date: Tue, 12 Jul 2022 09:51:28 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220704123252.2962020-1-michal.wilczynski@intel.com>
 <20220704123252.2962020-4-michal.wilczynski@intel.com>
 <5b566477-85d5-d319-a81b-4b7cb064f9d5@intel.com>
From: "Wilczynski, Michal" <michal.wilczynski@intel.com>
In-Reply-To: <5b566477-85d5-d319-a81b-4b7cb064f9d5@intel.com>
X-ClientProxiedBy: AS9PR04CA0057.eurprd04.prod.outlook.com
 (2603:10a6:20b:46a::17) To CO6PR11MB5603.namprd11.prod.outlook.com
 (2603:10b6:5:35c::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 43ef2128-136d-420c-ecc6-08da63db5799
X-MS-TrafficTypeDiagnostic: BYAPR11MB2741:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: L69LndF7nKbXhOKKMNG7KJjkAuR7Zod8/yRsR5NtTQEyRsYmLssJJgdFZunT70t/rM0uIXaEZVE5GIrLzlva6TEBVHy+W4DwwJjDZeOW/Vue7dtSCBgTvrML+eHR5OlzCxzg8Fm+6uo6JG1J29wn7+YXqBuS92uosav+CAiSoOtya6AZMcTPNtZ2c2hURvpMxL4VDmQINmWRS3ZfoH4ewC/bB+GDjN4IvsnpBCE6mNb4MdeNHyz45ptd/KXxlMC/sejsfj5HCIqqQuK9aoYdWUymgNCAziZ3GyOkJf8Irw28e50vgyW8JXaLcEYtJ5lk358sLCbnwIkL3lTQ//ACXU/n/hl5tjgn+/8NZYG1qLvQjNsdOSnrD4M4T1llVHEOJFGKvcBx78nPdyEuuLlzbRC0FqjGKcNH1COsNEMHBPQ5TVt3LOvbAmlaElGJC+BSE92KybZwcvQXLH7dO2jRXPQdnBlrRTfaId3gsklyZl/ygHNFJbQkVDkt3ymotGxj0VO1jU6ZLK/z6CXFKhAc+NbU1J0ZR6E93aLneZRrsswgkRxZZx704H88ynwMSOuk7mg5s29cgzL26Yy7lW3Wq+KSUjTQ8YPJ31rJ+Csa2hVB2UEbefmvaqM72i3+MgRZY6agF0NbeaafiNWVxEumgi43IhPK+ejKihMObMGK0q2ODFs7I0EDconhczG0XVD6D01gB5HU5s8W3Y06leZmRBiQbh8lBbdYOuabn48D12dbuSDx9ZdhCqZgbDqYeDDvmyh7fgP6FMe0DTcPoHV3FBNdJEBb1TNdxp0fWuTeZhLlYWuUkh2SMuvxnbZeAHijYlced01v7KXm0RT00F7qVA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5603.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(366004)(136003)(346002)(396003)(39860400002)(86362001)(26005)(8936002)(6506007)(31686004)(6512007)(41300700001)(36756003)(38100700002)(5660300002)(2906002)(66476007)(316002)(82960400001)(8676002)(66556008)(66946007)(6486002)(53546011)(478600001)(2616005)(186003)(6666004)(31696002)(83380400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QjhFL2xmVW5BOUFaMFZmamtRQ3VibFhYVFRSYmdrUkVKTUpHMEZMRGp1K0tn?=
 =?utf-8?B?ZC85ZmMrS1Z4cjMwY1k3bGlkVHBzWHYzQzVJMmZzUmU4clZsT3NmZnAvcWFY?=
 =?utf-8?B?c3JsQ2EzU1Vja1M3OXJIZDJTRG9OTXZFNEVrR0wrbXJuZzM0NFlidUw2d01O?=
 =?utf-8?B?VTJpMXh4NnhvRjdiOGEzQWQ0aFU0UW5oT2NBUDRENjBIQ2Qyb04rTGFpRWZZ?=
 =?utf-8?B?QndhdUxSbk8xSkRiSG9KcFZlaWt3bFR0VGUrYzJWaTVadGVRcXphdURUTHZ2?=
 =?utf-8?B?anMzUzU3OWVuQU1ST0dmdm9VV0NvOVpHb0Q3WElFWStzd1lXaisrbHZvdXU4?=
 =?utf-8?B?SUtRd0luNGI3WFY2NXJyYkp1YW4ydHk1UHVFTDVCUis1Zm43ZTBUV0F2Rmwz?=
 =?utf-8?B?ZkRqSUNkUkw5Y3lXY1Z1UEJwSDZjYnJRcG9sRDFGdWt3cmYzM3FUcVdmUFQy?=
 =?utf-8?B?NVdROVB2dm9WTm41cXlzWkR2QmZTNG15UjNGSkx0Qy9sTXU4NThJRDBaWnJh?=
 =?utf-8?B?bEViYXVSZGxuU0RrV09hY2F0UXBIVmxvd1J1OUE3R0FsRkJvOFlEVGxGQUJY?=
 =?utf-8?B?QjlWTHdOMTl1Q1NtWkVtdUxYWnc2YkNGVDAwd0dkM2IwVXlweHBJRjQ5dHFL?=
 =?utf-8?B?VTUrWENvTlZ4Nk5mQURUWko3YWpsUS9sL01FeFcwWDl4a3FyMUN0T1Q2VWt0?=
 =?utf-8?B?WlRQT0pwdkZZYWlyc1F1ZEc3K1hHT2lkQzQ1MHJFc3NXWGtrNFVySDZWWVFr?=
 =?utf-8?B?anE1RlAvYTJxbERtU3YvcXNkRFZVUE9aZ0lhMDVhdlp2UjhaWWsreDRDYkdX?=
 =?utf-8?B?ZVlMMkhMTmNGelRySkpGOFdNbkt1bWNoam5RMGRVK2JoWjRYT0l6UkJDYVNP?=
 =?utf-8?B?N09rSFRlNDlQZytqK09uMlNUVDNZdzFDZnF4cFFiWVBsVkFndlJzditMN09a?=
 =?utf-8?B?ODV4QUxyMFh5OFVDZE1uZlNvUTk1cnhFdHJMUEpJRFpSRlgrQ1pOQk9PSnRZ?=
 =?utf-8?B?aGEvK2JMeklOaEFMQVNCcnB2UTNoVTNwRHNKZ25sUVgwZlIyY1JCVzlGNnZZ?=
 =?utf-8?B?L0pTTDI4M3N5Ni8rYjQ3TGRkOG54dEY4QkU5Wk02bDdUWHFORjMvV2tvVjlv?=
 =?utf-8?B?ajFhT2ZoSTVHdkhoWWwzOTZNQ0RYc2M4UkVFYzh6MHZ2NHE4UXMydUtiN3hW?=
 =?utf-8?B?ZlgyODloWC9BeTRPT3YyL1dMZjFzME81SHFnclNvYmN1RFBGVUwraC9LYllx?=
 =?utf-8?B?L0ZyUS9RU0ZacU81VVZhUlVDc0FxR1ZxL3pLekRWeEdPRFovNjNLN3Z5YWxP?=
 =?utf-8?B?OHBLeDlPazV1b2IwRzMwSTBJbkFWMTBqK3pxdUJrVnphTUdFcFNET1MxNG9U?=
 =?utf-8?B?cTljRzRIOG5kOGlOcVhRTlJBdXMyU2JqY2RvRnVacjFubkVqcUhIaHk3TzdB?=
 =?utf-8?B?Nml1dFFuTlZvYTlkWDlRYzJxL1JRWEV6dmZYek5HeXpvdDBqam5TQ1dwTUJR?=
 =?utf-8?B?bmFjZW94N01iL0I5WFVrU25waFY1SzMxWExUZ29jTUNjZGs0d1ZyMlppb284?=
 =?utf-8?B?T3Z5ZWpUNTFUaENwY2FTVDRGSUFIVDdzbGpZQzZoMFowRnU4SlBEYXEyWWQr?=
 =?utf-8?B?R01lZjN1dnRNWXg0S1pXTUhZMm5FMHJXRjQrWHprWjA4eHdiN0J5U1dmeWZU?=
 =?utf-8?B?QmVNd1pzT2cyT3Fhd2NCdm5TalhiQ29sTzQ3TWJDODh2VUdOTVlDV3Jnc0t4?=
 =?utf-8?B?WkVYZHZsN21qYi8zNzErRnNwUkRRdldVSm5uVFB2Q3lpQWVGbDV5dzBVZldQ?=
 =?utf-8?B?ZWVKWTVPVjVEUXJ2YkFreWErWVNLdVllRkFDNnVCZ0xFeXp0aE9aTGpIeGVK?=
 =?utf-8?B?SFdQV1dMMXFNQ3lndnFtajB6dWsrQnN4WnRnaERKZEdNR3RNc2luUXJ5K3px?=
 =?utf-8?B?aHg4TFFWSWRTSE9yemxnMW8ybWNqbUg4aEsxMFdCaStJMjZGZ1A5eVZURGlS?=
 =?utf-8?B?OGRLaUo1MjZKYnBpZWRha09vSmsxTGNlbzZPZjYrNDZid3JLV0RVZG9zNTMy?=
 =?utf-8?B?YnpnU1UwM3hVOXFQT3M0Tm8wNzJmQUtYb2hSWVJRQlk3K0pISnNDL0NPNVdY?=
 =?utf-8?B?UnhURXVjQWUrMmJ4ZkU1dnIvMHpZMWNNdzBrSVZlNXNIYTJUZVMvbFMxUFRX?=
 =?utf-8?B?OVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 43ef2128-136d-420c-ecc6-08da63db5799
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5603.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jul 2022 07:51:34.7539 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LLE/cCLBaLYyic6IFR/j+9FeMaNe8ui82leCT5ITK00Y4FLHMZ+wQeplmm7G6FgRAhUqddtK0MtDiOk1iVKp815Y+amXXVG7uKXs9yeyOCY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2741
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657612298; x=1689148298;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=4q6voCrf5QW8fVNOXbnDiofr02yZFzNxB53woW4EO5c=;
 b=oEgb9Z7g0jrvt2vgcQmn6uyTkughOpnb8oApMFGTZtkXFNENIwgqcd39
 oBfRZLOMXoZEZPAlFi7v06K+y1oX3zTAMh0NLcGwMqWRaqV2cCPMm6cxL
 x7gwoXgpG6uYeuil0Tg75fFySIDLwcInPidAMhn1aLvBhjXg/Hf5eUh19
 b7Wk1s1JX4B0nJGN/RUQJfnOUMB0DjERbdJP5Yhiiyx0ymMC6s84Wq6GZ
 E//icOP3K1VCSKhjPtcbTtFp0bqyMCkQGngP06tw5+FbaBi1GPEwK38TS
 hwGZjGr1nLqLvlPWHV7bD0OWajsAz/F+sDOiBrS/fXLnidxpykecOrld3
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=oEgb9Z7g
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 3/3] ice: Enable switching
 default tx scheduler topology
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiA3LzEyLzIwMjIgMjoyNSBBTSwgVG9ueSBOZ3V5ZW4gd3JvdGU6Cj4KPgo+IE9uIDcvNC8y
MDIyIDU6MzIgQU0sIE1pY2hhbCBXaWxjenluc2tpIHdyb3RlOgo+PiBJbnRyb2R1Y2Ugc3VwcG9y
dCBmb3IgdHggc2NoZWR1bGVyIHRvcG9sb2d5IGNoYW5nZSwgYmFzZWQgb24gdXNlcgo+PiBzZWxl
Y3Rpb24sIGZyb20gZGVmYXVsdCA5LWxheWVyIHRvIDUtbGF5ZXIuIEluIG9yZGVyIGZvciBzd2l0
Y2ggdG8gYmUKPj4gc3VjY2Vzc2Z1bCB0aGVyZSBpcyBhIG5ldyBOVk0odmVyc2lvbiAzLjIwIG9y
IG9sZGVyKSBhbmQgRERQIHBhY2thZ2UoT1MKPj4gUGFja2FnZSAxLjMuMjkgb3Igb2xkZXIpLgo+
Pgo+PiBFbmFibGUgNS1sYXllciB0b3BvbG9neSBzd2l0Y2ggaW4gaW5pdCBwYXRoIG9mIHRoZSBk
cml2ZXIuIFRvIGFjY29tcGxpc2gKPj4gdGhhdCB1cGxvYWQgb2YgdGhlIEREUCBwYWNrYWdlIG5l
ZWRzIHRvIGJlIGRlbGF5ZWQsIHVudGlsIGNoYW5nZSBpbiBUeAo+PiB0b3BvbG9neSBpcyBmaW5p
c2hlZC4gVG8gdHJpZ2dlciB0aGUgVHggY2hhbmdlIHVzZXIgc2VsZWN0aW9uIHNob3VsZCBiZQo+
PiBjaGFuZ2VkIGluIE5WTSB1c2luZyBkZXZsaW5rLiBUaGVuIHRoZSBwbGF0Zm9ybSBzaG91bGQg
YmUgcmVib290ZWQuCj4+Cj4+IEV4YW1wbGUgd2F5IG9mIHN3aXRjaGluZyBOVk0gc2V0dGluZ3Mg
aW4gZGV2bGluazoKPj4KPj4gU2hvdzoKPj4gZGV2bGluayBkZXYgcGFyYW0gc2hvdyBwY2kvMDAw
MDo0YjowMC4wCj4+IMKgwqAgbmFtZSB0eGJhbGFuY2luZyB0eXBlIGRyaXZlci1zcGVjaWZpYwo+
PiDCoMKgwqDCoCB2YWx1ZXM6Cj4+IMKgwqDCoMKgwqDCoCBjbW9kZSBwZXJtYW5lbnQgdmFsdWUg
dHJ1ZQo+Pgo+PiBTZXQ6Cj4+IGRldmxpbmsgZGV2IHBhcmFtIHNldCBwY2kvMDAwMDo0YjowMC4w
IG5hbWUgdHhiYWxhbmNpbmcgdmFsdWUgdHJ1ZSBjbW9kZQo+PiBwZXJtYW5lbnQKPgo+IERpZCBJ
IG1pc3MgdGhlIGRldmxpbmsgaW1wbGVtZW50YXRpb24/CgpJdCdzIG5vdCB1cHN0cmVhbWVkIHll
dCwgaG93ZXZlciBJIGhhZCB0byBwcm92aWRlIHNvbWUgZXhhbXBsZSBvbiBob3cgCnRoaXMgbWln
aHQgYmUKY29uZmlndXJlZC4gVGhlcmUgd2FzIGEgcmV2aWV3IGNvbW1lbnQgYWJvdXQgdGhhdC4g
SSB0ZXN0ZWQgaXQgYnkgdXNpbmcgCmVwY3Qgd2l0aCBPT1QKZHJpdmVyIGZpcnN0LiBPYnZpb3Vz
bHkgSSBjYW4ndCBwcm92aWRlIHRoaXMgbWV0aG9kIGZvciB1cHN0cmVhbSBjb21tdW5pdHkuCgo+
Cj4+IFNpZ25lZC1vZmYtYnk6IE1pY2hhbCBXaWxjenluc2tpIDxtaWNoYWwud2lsY3p5bnNraUBp
bnRlbC5jb20+Cj4+IC0tLQo+Cj4gPHNuaXA+CgpDYW4ndCBmaWd1cmUgb3V0IHdoYXQncyB3cm9u
ZyBoZXJlID8gU2lnbmVkLW9mZiBzZWVtcyB0byBiZSBva2F5LgoKPgo+Cj4+ICtzdGF0aWMgaW50
IGljZV9pbml0X3R4X3RvcG9sb2d5KHN0cnVjdCBpY2VfaHcgKmh3LAo+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGNvbnN0IHN0cnVjdCBmaXJtd2FyZSAqZmlybXdhcmUpCj4+ICt7
Cj4+ICvCoMKgwqAgdTggbnVtX3R4X3NjaGVkX2xheWVycyA9IGh3LT5udW1fdHhfc2NoZWRfbGF5
ZXJzOwo+PiArwqDCoMKgIHN0cnVjdCBpY2VfcGYgKnBmID0gaHctPmJhY2s7Cj4+ICvCoMKgwqAg
c3RydWN0IGRldmljZSAqZGV2Owo+PiArwqDCoMKgIHU4ICpidWZfY29weTsKPj4gK8KgwqDCoCBp
bnQgZXJyOwo+PiArCj4+ICvCoMKgwqAgZGV2ID0gaWNlX3BmX3RvX2RldihwZik7Cj4+ICvCoMKg
wqAgLyogaWNlX2NmZ190eF90b3BvIGJ1ZiBhcmd1bWVudCBpcyBub3QgYSBjb25zdGFudCwKPj4g
K8KgwqDCoMKgICogc28gd2UgaGF2ZSB0byBtYWtlIGEgY29weQo+PiArwqDCoMKgwqAgKi8KPj4g
K8KgwqDCoCBidWZfY29weSA9IGttZW1kdXAoZmlybXdhcmUtPmRhdGEsIGZpcm13YXJlLT5zaXpl
LCBHRlBfS0VSTkVMKTsKPj4gKwo+PiArwqDCoMKgIGVyciA9IGljZV9jZmdfdHhfdG9wbyhodywg
YnVmX2NvcHksIGZpcm13YXJlLT5zaXplKTsKPj4gK8KgwqDCoCBpZiAoIWVycikgewo+PiArwqDC
oMKgwqDCoMKgwqAgaWYgKGh3LT5udW1fdHhfc2NoZWRfbGF5ZXJzID4gbnVtX3R4X3NjaGVkX2xh
eWVycykKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZGV2X2luZm8oZGV2LCAiVHJhbnNtaXQg
YmFsYW5jaW5nIGZlYXR1cmUgZGlzYWJsZWRcbiIpOwo+PiArwqDCoMKgwqDCoMKgwqAgZWxzZQo+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkZXZfaW5mbyhkZXYsICJUcmFuc21pdCBiYWxhbmNp
bmcgZmVhdHVyZSBlbmFibGVkXG4iKTsKPj4gKwo+PiArwqDCoMKgwqDCoMKgwqAgLyogaWYgdGhl
cmUgd2FzIGEgY2hhbmdlIGluIHRvcG9sb2d5IGljZV9jZmdfdHhfdG9wbyB0cmlnZ2VyZWQKPj4g
K8KgwqDCoMKgwqDCoMKgwqAgKiBhIENPUkVSIGFuZCB3ZSBuZWVkIHRvIHJlLWluaXQgaHcuCj4+
ICvCoMKgwqDCoMKgwqDCoMKgICovCj4+ICvCoMKgwqDCoMKgwqDCoCBpY2VfZGVpbml0X2h3KGh3
KTsKPj4gK8KgwqDCoMKgwqDCoMKgIGVyciA9IGljZV9pbml0X2h3KGh3KTsKPj4gKwo+PiArwqDC
oMKgwqDCoMKgwqAgLyogaW4gdGhpcyBjYXNlIHdlJ3JlIG5vdCBhbGxvd2luZyBzYWZlIG1vZGUg
Ki8KPj4gK8KgwqDCoMKgwqDCoMKgIGRldm1fa2ZyZWUoaWNlX2h3X3RvX2RldihodyksIGJ1Zl9j
b3B5KTsKPgo+IMKgwqDCoMKgwqDCoMKgIFRoaXMgc2hvdWxkIGJlIGEga2ZyZWUgbm93LgoKCnll
cCB0aGFua3MKCj4KPj4gKwo+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIGVycjsKPj4gKwo+PiAr
wqDCoMKgIH0gZWxzZSBpZiAoZXJyID09IC1FSU8pIHsKPj4gK8KgwqDCoMKgwqDCoMKgIGRldl9p
bmZvKGRldiwgIkREUCBwYWNrYWdlIGRvZXMgbm90IHN1cHBvcnQgdHJhbnNtaXQgCj4+IGJhbGFu
Y2luZyBmZWF0dXJlIC0gcGxlYXNlIHVwZGF0ZSB0byB0aGUgbGF0ZXN0IEREUCBwYWNrYWdlIGFu
ZCB0cnkgCj4+IGFnYWluXG4iKTsKPj4gK8KgwqDCoCB9Cj4+ICsKPj4gK8KgwqDCoCBrZnJlZShi
dWZfY29weSk7Cj4+ICsKPj4gK8KgwqDCoCByZXR1cm4gMDsKPj4gK30KPj4gKwoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1h
aWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9z
bC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
