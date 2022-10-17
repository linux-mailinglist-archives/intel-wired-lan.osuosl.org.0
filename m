Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F61A601CA7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Oct 2022 00:52:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 03C7A40574;
	Mon, 17 Oct 2022 22:52:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 03C7A40574
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666047177;
	bh=YTBWy+G1QiCyAldtg6QWt5uD5CFbCmwaq+1sw+nlE0Q=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ds/aqZ9+Nf8nMpmviYJ3b0ECyMuF5hEbdgHZ0mGLiBbqa/nFLgt3xp1xNZ+HBphNQ
	 dHi24V+FxGdyDRKooJEXwFLkZOnYLJPA+B+nOvCbWNkuOZxw+Xcjvo0uv5etKiQnTf
	 ysADtWFi+ffbaEp4SiGijv1Vuo+yZipbxGeeS6zfrrI4Ju6lRQl66SeuHC8s9lM+BR
	 6Lxus5TQg2DIllii1zQUFGBL3InGKews0acSMa4MSA0QwELJC/nEwE53PSGAyVjsUJ
	 nIDpoAb8Ys1cCCHU/Hd8sie0E33MZJDLq6Ta2xkvFwJddWfDT9MLj3PE0qwaOQyHkS
	 jRZ1kmSgDcUmQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ekU0U5Un3oE0; Mon, 17 Oct 2022 22:52:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D9129404D8;
	Mon, 17 Oct 2022 22:52:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D9129404D8
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 296F61BF3AD
 for <intel-wired-lan@osuosl.org>; Mon, 17 Oct 2022 22:52:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0F41C404D8
 for <intel-wired-lan@osuosl.org>; Mon, 17 Oct 2022 22:52:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0F41C404D8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id truEnl4aJmYR for <intel-wired-lan@osuosl.org>;
 Mon, 17 Oct 2022 22:52:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1289540498
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1289540498
 for <intel-wired-lan@osuosl.org>; Mon, 17 Oct 2022 22:52:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="305923130"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="305923130"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 15:52:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="606292249"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="606292249"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 17 Oct 2022 15:52:47 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 17 Oct 2022 15:52:47 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 17 Oct 2022 15:52:47 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 17 Oct 2022 15:52:47 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 17 Oct 2022 15:52:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H+/1AZpexf6NPASGoy193QdQjR+hOjco4497xSz7KM6SgpZIQYoHabM5LbXniIHY9lP4OZhDO+mcSdozzbjk1Vn8KV0Umkdo45kpwLKo067huPybkXyvVIhn99Ir/n+q4pKL8p7TZSnl76ha15kwBrEFFsV1hDUwZgFWvz1AI2EEU5ogW9g6qZy/hK4GZC9pmYqgNxzxJa05I//8j345iX7+xw4if7yOPHy1sjlekLtz6Bg/xwqjdkZ/0aWrnZ1CdKATx45tAby0bBu8CcHF5qq8ddIw6n5i+nB4oJmnlJZgh8cWNkeho42/PE6LdSIkXhzJ0OvS18dSXtf80/sjFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xfSqOoPawQER4K5RZMdd3/2yvntlP7ls+Lj/AHzNPSs=;
 b=hRSAXsIqf1ZwOY3//lqQyUbk8ME+jTukzgB0yr2JWZSWfJbO1DnTivs8lfXKWhacKNMgzRfVYRchY7kBvWb40SQzoMNmgd6yDiSlON2VwB1cmhbHtic6pm/JEvUmRdPdJ49DZwRiF5W/aansaQf3KxgJzpivQYar8y2r7rSWhoH4VY4tJFh7iugQM7cgvO+sI27APUVDYdRwGff4FQTRJ7u3eOyFMrmE3bDQiGF2Jy7oLsUXaoS4OfUL/H1w+Ckk1o4g7dPLrWqWx34nfp3Wey+HjDpHtm2bJvIsrd+c3OKmmT+rw4iIiY/6I6TKWPgopc9sI5IvWVNuEeT7kXh0Eg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH0PR11MB5880.namprd11.prod.outlook.com (2603:10b6:510:143::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.29; Mon, 17 Oct
 2022 22:52:45 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::e314:2938:1e97:8cbf]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::e314:2938:1e97:8cbf%7]) with mapi id 15.20.5723.033; Mon, 17 Oct 2022
 22:52:44 +0000
Message-ID: <65b11d3a-8806-7d1d-e010-eb886af9f772@intel.com>
Date: Mon, 17 Oct 2022 15:52:42 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.13.1
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20221003095519.539390-1-karol.kolacinski@intel.com>
 <20221003095519.539390-2-karol.kolacinski@intel.com>
 <7b4176bc-a5a8-467f-f2f2-a7defb37b89f@intel.com>
 <MW4PR11MB5800C7EFFCA3CFE32A351EFB865D9@MW4PR11MB5800.namprd11.prod.outlook.com>
 <87bkqqou2e.fsf@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <87bkqqou2e.fsf@intel.com>
X-ClientProxiedBy: BYAPR08CA0065.namprd08.prod.outlook.com
 (2603:10b6:a03:117::42) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH0PR11MB5880:EE_
X-MS-Office365-Filtering-Correlation-Id: 92b4a9ae-d158-4835-79ae-08dab0924e15
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: od8RuOI5cqgwBuE3hfizPyTQZyqexr0DubpmzDdV5c52g9+jU+rXQrxVSJwgBHVuW35vxklJwaLHxzpihQrYIIb0MFr3EHK+nIaXStnFi4h7OZLNxsBHY8BZMAPV74egs4o2v2tDZhaLENNjmJvauqxYyq3z+4DZI1nAgdNbkNxVatD6AcKe3NgXRX4M/PD4BJQRyhJtqFMltr0fPJ0xSKzXkwYZtantOuZtZzRtgr2ABY3iu9FkqkxJ17euLNMiQ7U/9Fls2sL+6Uy0ZqSwQMRHIX+V/SVZJkkPsKTG06OWdWztffYOnbtHdHIsfH/tm/1C+K9V6IYmzdsI0Xm2m2WLWelndvE7ByCnHgtTU9i0VazSKm3hlIeQGnllwdzAMdCpXa+l0uBLx0HZIn0vnHYcbkPY9ooHd27rEBcD1+OyROKsov4/Ce3i2YIjp609CDjcFGGJeHTJNsVfE6KtgxQIUf1s5RsEXycprmbbKto5Qxp4ZQvTkxMENNCsqKxGR365m5qYTVKstRevuE+iuxPPCvT/WJQJjiloZsPMnbh+3tl38DYq/YcSFFsGIoDp6YQXZ1TspIzQ7pxugIMY8uIJbrAyw+5sRwrwepnzSuyS6O8QIHfT3LD2bBNkB3DVS8kZjSBw6IXFpao4b41B6Eh4tnaizoXQosF63GP9E13eV82HNdoF7LNKLqusYvdvRW8BWGAZ67TKzXVZj4OujyeZKUzspbHaFtR06+I60Mz+satR2pmGq/lIhvqJgzhCw9MJmg31XJ9yuY7TULoDM5cg1vr6lBK9ZASLMyEbOQY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(346002)(366004)(136003)(396003)(376002)(451199015)(31686004)(31696002)(86362001)(316002)(82960400001)(66946007)(6486002)(6916009)(66476007)(66556008)(8676002)(36756003)(38100700002)(83380400001)(2616005)(6512007)(26005)(478600001)(6506007)(53546011)(186003)(41300700001)(5660300002)(2906002)(8936002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZzZzYlBSYWMrQUZ6NTdHdk1XRkFkdFVFQnd0eWRrK3lLTjY5V3hPRkllTkVE?=
 =?utf-8?B?UU1KaXFiNnVmakV3WFNMcVF3d2xtNjJqQ0svbW5aTURPSlVWWkJpVnpNSzJ3?=
 =?utf-8?B?cnI1N1ZtcGdEdXZnYnYyNS9hNW1UVDh2MXZTZHBnWXVWWDJ3R0hhZHFMcXJS?=
 =?utf-8?B?bmVybDVIdytOeEZJNE1iTkk0STZoZGNZTzhmdGZuRmpsUGlPbWk2RWxjQWlu?=
 =?utf-8?B?N0w4V2xqWlN2QWlXLzVlUWFLRkRLaDB3OUJpNmpLS3JQdUlCYVkwN0pIL1hz?=
 =?utf-8?B?UUcxczQ3TGpLM2NySFhFWGlWWnZHMVFSSkMwVnBuUHkvTUtIUlM4Z09IRnJj?=
 =?utf-8?B?ZjR0NzA4QVJXMy9CM1hNZ3VYWHVabURkV3dxS0JuelZEY3haSjRVRlliMWFD?=
 =?utf-8?B?SkZEcTRsQlg4bkNFdnNsMXBwakNWUUIxTEVPekFkSFNiV0V4NGt0UTVybWlz?=
 =?utf-8?B?d1g1YVhpS1RuRTBlOTdPZENzRWxCVVVqYXpJOXQ3aEdiVDEwWUpIeHozT29R?=
 =?utf-8?B?djhZa3FwUnJFV2ZKSHgxZEFLYTlXMk1FNlgydU9XK3RWYW5Dc3NkbnZkQTZE?=
 =?utf-8?B?TUhiempMdTJmUHdxOE9vNXdOUHZPL1dvMm03czdCRko5L2xzeXlibGF5Vmpp?=
 =?utf-8?B?aks1TkNKT0RDY2RxMCtYMHBQRUlFOXhNTE4xSU96elV0WGV1VGg3T004TGNJ?=
 =?utf-8?B?dkRpSnNPU2g3bXJZRk94NXJZUGRJeFdTcmtRY2Zkd1dWME1YUzBKdHlSQXBP?=
 =?utf-8?B?eURVbkRobUhOdTFXZ3B4N1FGbEMxazIrbm1Xc3BNMVdNbE5aS2g1cUlFbk1q?=
 =?utf-8?B?cTRXd3RNNUV1QkdxMnhVWWxJbWpCSWJza0d5S3pNZ1lsNXdUNHJ4VWZPRHd5?=
 =?utf-8?B?Q1lKZXBPVlA3anRjeE9lL2Z1MVlXamhZbmh6Y2lOeWNyUjR2R2FsdW1RMGdN?=
 =?utf-8?B?VUFlTTBGTm1CMEFSakd5c0Fmc0NkdGpQM2FKd2o3QWpqYWgxMUh3eHlRaE5P?=
 =?utf-8?B?eWRGb2t1bEl2d1UrbmZhbzFPK1psUU1VK1JnQzRpWGZzdTZZby9KVjZmUzlC?=
 =?utf-8?B?ZHcvUWsvUkx5TDhDMWFSKzZPUmwwOUhsYVJnVG5CaG9nWE9LRGNkL3E2TmN3?=
 =?utf-8?B?ZzJibmRyZDhxUzN2TDVwTzNQWWRHd1prTjNiQVYrM0JWVjhrUGdJNDdDZzh2?=
 =?utf-8?B?b3JQMXR0R1pCb0YwZ0Z2Y1AwYmVJQXNHTjduTnBxeFN4anNTRHZLeThXK0pl?=
 =?utf-8?B?Y0p1NW5WZlhHRERCd3VRWEM4Ukpub0JOdjkwQ0gvOVB3M01VSkREMzk2M3g1?=
 =?utf-8?B?czN1aDFmSWFPeDJZeVZkeHRqdlFicjRXK3A4ZExIWUtwRFlkeVl5UmtieXRr?=
 =?utf-8?B?Ukh4LzBjQ2xpL0xkZXNxNmU4SzhnMFJuUVBQQXJTUXBuNGtOZFRvZFpTQitu?=
 =?utf-8?B?T0FmMXBPZkN1Y2w1eXlMOHc0MWg1VDZSQXk0dS8wNEQrb2pneGRyVXQwZm5E?=
 =?utf-8?B?WkNTRHMxOGVsWERWRU40NUJ6VHJCME5UeGgvS2pReklkajFBRlpuWVN1aXVq?=
 =?utf-8?B?TTdBMGxkcVloVWlFK1R5UnpPOVV1cGFrNG1MaytqV083SDZuemFmZysvMlNl?=
 =?utf-8?B?cG0yUVgzYmFQREExZktab2VydFRHYmlXUWoyejkzN0ZZTWlVa28vaklQeTJF?=
 =?utf-8?B?cWo3bzJxNFBreW1HTVRhVWJpbzdHSTdWcVAwL1RtS0JxQXJlQVlnNkNqUmZ4?=
 =?utf-8?B?TjlBRERNcEdCTTBuSUlZN0hpSEFEMERBNFUzNE5mYjB6M2laYnRvazlKTVY1?=
 =?utf-8?B?eFRsWm5CTjEybFRDVTRUZ25BNXBtRmtYQXB1V3pSdnBvUmhRNit0UlVWeUJY?=
 =?utf-8?B?SDY1ekFHQXdKclRzd045b09mME04amZDbC90Z2xDcWRwUW5tRlRZQ09KaTVI?=
 =?utf-8?B?SW5sNnRFMXRSRGVpMzdKSTU4S050ZEwwUGRYc0g1RGxvbklCMUJBc01sYkZN?=
 =?utf-8?B?TnkvY09HK0xDMHo0REN2UGhSaXF6amg4UG96ZFhtRWVTOEpneWJhZGNJSkxD?=
 =?utf-8?B?bEdCay9HUWxWeWFPcHo2V3pXaXBsVG9heDAxNjZBU1pINUJkN2JIcFROakwv?=
 =?utf-8?B?NHV2MVYyOUVyRUs4cGZhY2VIVnBlaE9PSjJhNytDYlBJUlFhU0Q2ZVdmbXNv?=
 =?utf-8?B?TEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 92b4a9ae-d158-4835-79ae-08dab0924e15
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2022 22:52:44.9496 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TLeFPyqpqy4A4ZrmFjzjy009JTyNDfBazlNOuSoGD3Y8atsbep9O/ZeWHskx59a+2nZtabOdxmWgwj4xCuevukzqYc3JkLR0r/j2Q8nnLag=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5880
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666047169; x=1697583169;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=MqvgBUDqlNeFE5XZXL9YXWCOl4JrSRgnoNKPWtu73/s=;
 b=QLe1HgP2G1To+fuGN2xwdnQk5XGuQUCc4u/KiOFC65LdJ7657J5fc9AQ
 t96fBm22SHEq17rgifrEErGgCPIEQfw279uZx3g6j2uo/AAHHGydq7Z5x
 cdCK4eMmuBYX7hWqhjetOhMj5yZ/h4Ona0xHn0UQtknTZxudvWTElA66S
 PugvPu/zdMv34deDWaBUE52uYNoprYqnEYGRk0DxQMoUS4WCznM4XjzE9
 jOVkIyscjaIkKOsDFlZyQemPfIDcZPP7UAEojpu17lxft4T4/x1JbGucw
 d/+CaU2O9z/G3tfNLRIuL29t5/I+1YpNsL8EDCjISdTxkxz5sbCDC4VNJ
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QLe1HgP2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/2] ice: Remove gettime HW
 semaphore
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 10/5/2022 2:10 PM, Vinicius Costa Gomes wrote:
> "Kolacinski, Karol" <karol.kolacinski@intel.com> writes:
> 
>> Hi Vinicius,
>>
>>> I think the problem is less about concurrent writes/reads than
>>> concurrent reads: the fact that the registers are latched when the
>>> "lower" register is read, makes me worried that there's a (very narrow)
>>> window during rollover in which the "losing" read (of multiple threads
>>> doing reads) can return a wrong value.
>>
>> The issue in this case is, it's either risk of reading slightly wrong
>> value or having multiple timeouts and errors.
>> We experienced a lot of simultaneous reads on multiple PFs (especially
>> on E822 HW with 8 ports) and even with increased timeout to acquire
>> the HW semaphore, it still failed.
> 
> I am wondering if using a hw semaphore is making the problem worse than
> it needs to be. Why a kernel spinlock can't be used?
> 
> 
> Cheers,

The same clock is shared across multiple ports which operate as
independent PCIe devices, hence having their own instance of the ice
driver structures. A spinlock doesn't work because they wouldn't be
using the same lock.

We could try to share the lock in software between PFs, but its actually
quite difficult to do that with the existing PCIe driver model.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
