Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8957166A5B0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jan 2023 23:07:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CC000415BA;
	Fri, 13 Jan 2023 22:07:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CC000415BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673647655;
	bh=Z7HOBoibVFGmukvkcv8DM7wMgszstKIg9sKCFe4iBcU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eSz/XerVL+f/DLzwP3+1ntPF2LRAkmpmwK+AzD26/wKr1PmkIqqdXNlrnXZLCYO3D
	 QtO1P5542oogy6vRNdKtt5253EzVkpyxuXuU2wW/+ooQQ1wkkhciI4JRuoUGwGOlnE
	 0KfLEVrtYsQ7+rQfq49xwnqudFgqHd7Gx6mBhqRiCsa+vd4M4NwQydba3SFZxRwo3S
	 3IXQG9q2xevxvq87jckwaQsRwVTVXxqGL3wDJiKa8G2wXelFwPb3tHCwPmov4mE+tt
	 JFGVY2Ae0pKEpL/U6Mgv+oIg3/IvhKayF2RQe3eHKlLRgJhkQXXkX20S81ond8oZA/
	 LitFzMsH1awhw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g1_-UWpvqdSO; Fri, 13 Jan 2023 22:07:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9EC2340185;
	Fri, 13 Jan 2023 22:07:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9EC2340185
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B2A911BF399
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:07:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9846240185
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:07:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9846240185
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MUYlVZV19jc9 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jan 2023 22:07:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5D18C400C8
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5D18C400C8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:07:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="386454414"
X-IronPort-AV: E=Sophos;i="5.97,215,1669104000"; d="scan'208";a="386454414"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 14:07:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="782304671"
X-IronPort-AV: E=Sophos;i="5.97,215,1669104000"; d="scan'208";a="782304671"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 13 Jan 2023 14:07:27 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 13 Jan 2023 14:07:27 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 13 Jan 2023 14:07:26 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 13 Jan 2023 14:07:26 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 13 Jan 2023 14:07:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LYq1ubnDuHIuZVFqSyPoQdfpAjPGmssfUWLs2zao6DEnXnVMSMdLHkK8tAy8BXCz85fgRZDr1N8Q+r7x/7N7spe6/zT2C1ohLEoTHmwjUdz3Szsz7j4ZoBm6XPAguMHcRVQWCyE1G5ysF2hK+IIuLKoh74hfi3v7clG9IZhMSqxe6xOl1MSPDaA/gO6KeXL9UKSCas/y4Pjqik3iY5olMEUQJrEqUNSZh6XXtX0G4TVrDl0Jv7nV7BBPK73Un7slOFjr7vEJimT91xfrTQMGMNCfq5f5RgtJi00CIa0eY4CCIehbTZlZkf9Cr7v6MsltMdWJNGzTEnds80xfm1M5Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F6aQFKGTUOiyYHDAFZ5ufqmR8RSmOCJkzDZdkFiBYOk=;
 b=UkEMm2u2Fb5Tls4rX0lsULIgYibXGfVeSK67C+D4xch8uj6vt4/6DTA2wAMko83or+J+ne71VmkZNfkCqc9pSUOkKHDzk727swajR8GikDW8zfDB4dnLUZ3tSOYuF1xa0uOoMd9kIshLJixy4hdZvrE5UkTq90BgsZbUPMJfiOGb+YW9VxlUcjoYvCOf4wVs4/rEqw9synkx9tpuPTbhiBG3xtnQrsoic7NXVUrO4Tn6K6UGOfsHu4rMYeVQk7P00DaTYN/v4cvFqBexKqQXDwB5fUC+PGrYwU/jGUJVmHnKLs3riMZjgLU4PyXV3iJLAcJtfTIBlX8q43Pk4PcfZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO6PR11MB5636.namprd11.prod.outlook.com (2603:10b6:5:357::21)
 by MW4PR11MB6737.namprd11.prod.outlook.com (2603:10b6:303:20d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.13; Fri, 13 Jan
 2023 22:07:24 +0000
Received: from CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::ae83:22d0:852a:34f7]) by CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::ae83:22d0:852a:34f7%9]) with mapi id 15.20.6002.013; Fri, 13 Jan 2023
 22:07:24 +0000
Message-ID: <01b8aa18-a871-bb96-69fc-c4b636102522@intel.com>
Date: Fri, 13 Jan 2023 14:07:22 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
References: <20230111191906.131-1-paul.m.stillwell.jr@intel.com>
 <20230111191906.131-4-paul.m.stillwell.jr@intel.com>
 <Y7/aLiP5b3oWSV+R@localhost.localdomain>
Content-Language: en-US
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
In-Reply-To: <Y7/aLiP5b3oWSV+R@localhost.localdomain>
X-ClientProxiedBy: BYAPR07CA0096.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::37) To CO6PR11MB5636.namprd11.prod.outlook.com
 (2603:10b6:5:357::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR11MB5636:EE_|MW4PR11MB6737:EE_
X-MS-Office365-Filtering-Correlation-Id: 904bfc1c-b674-4fee-aa45-08daf5b28cca
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hx3Zpjm+UCmyAHel6KObRYjcHuSUkOBykagBwflKA9vrtk8gbhCzDjRXEE4SKUyaaGDRt+AwWOZ1k1SjMMKcj+KiEjT31ypbu2aPJ68J49nE08oMPp8hFLkhBc2CvOfzFUaD4ZsAxSdu1ekmQeQ5sLfZ7wPsHvAlf9a178EOGHgqnOVyPgxpqDZPSVclrbNQ5OKlQP7IHPoxJDdEKxEwro6eRu1Mh1PJFxkN6qoTQ3KuauH4WprsPkO7S7qi3l3qzHFqApcHq7fpahexQ9rnbgxotRLZGdaAja9NnVzGdzkcsXcbyoxbk+Kpw6fqrzuR6qeP3CHFO/ghaXiZiqVXMVQi56s+SAK2t4EcxAYp4BWwWd4ipVokG4wSlY/1qUk3CO/H1314gJXQusIGiNi16jnkbZCvmUY/0OSCCyVpZ2r1h8aBobWbMsmiuAJWwqQYPRKvd2y1UGE9Khxdn0QO0BH4ECaEgyHklI+qCBUr1GcLuvh6p/BcUlWe5Svrb/fKeE9p8K674i9PGV72q/O1Ey6RSsckBmxvrUkxz3X+KO7qKAHFeduflBoyA5yNB07l3jEBaKODzV8ZA96+hOqJhyRG97RJdXjxgYapT//meaR5/9xHnXAv5o0Ujtdk+8pon3ZGHE32ZeMxslSfv+F+oWjb6S3LaNZke9+2sanU51jZc5Ey+DK7ryGv69qqZCGubdFGfQJ4P0RknT+lmlu5dgKYSZcuuAzkJb2B6H62HffGcy/lxHDelpvfn0Cd+9seMQhvtUVgcwjVphhostw2kQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(366004)(136003)(376002)(346002)(451199015)(6506007)(36756003)(26005)(6512007)(53546011)(186003)(6486002)(4326008)(966005)(478600001)(38100700002)(82960400001)(31696002)(86362001)(83380400001)(2616005)(8936002)(5660300002)(31686004)(66476007)(2906002)(66556008)(66946007)(8676002)(6916009)(41300700001)(316002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YjAyNlh5RXNlekNPU2ludUh0R0xEV2ZtYWFyQ3AyYXlJWlhPMGt3czJFVEo5?=
 =?utf-8?B?T3duWHIxbkhuUVJEYUJ0TmV4dmxwR1dQaHJoTkFlUG51YVo2Wm9DcGNldFBp?=
 =?utf-8?B?NHBvdFBIakM5QmJjdkZKZGE5Q2s2RmhieXI2SjFGcm1ZQVBndHFGa2NodmQ0?=
 =?utf-8?B?UDFvMTdpWnQ5TUEzVnhvNkdmQXZnbDRlVFRnWktZeVBtMnRBaHAwcmpwSGdq?=
 =?utf-8?B?bnNOWDJKcTYwckhDRmQyaXJITjdlR1BBbys0alNQeCtDWFdqa1ZVTWR2WThi?=
 =?utf-8?B?MTFrM0Q0NDlKbjZuRlBuNUdSZmhidlJ4b2JJM2s5S1luM0p4NHFLNWpMNlhD?=
 =?utf-8?B?cXNaMUduMXhYRmFHUVhsMWgrcC9XOVAzZkw0SkRXY1UzaEo5aFFvNkRZNTBl?=
 =?utf-8?B?UFpuYXl1Y1ptd3hERjJ5QVgyakszZnRCcFpMQW1FUTV3RXVod1U5dHprbmRz?=
 =?utf-8?B?bEFyd1B0a29INHMzRi9iRUtwMmh3b0ROc1AwMGdtODN4djgrQlR0b1gvL2ND?=
 =?utf-8?B?QXZUZmNjeUxDQ3hreVRWcDNpZjFTQUhiOHRvVFh0aGdwV0hLemthbElLVUtz?=
 =?utf-8?B?UXFVY051YUQzVnMvM3JSMU1PNktBMnNQYTh4djRYL2JUMkQxK1ROQ25NcFlX?=
 =?utf-8?B?emtLUkdhVHZhTVBRSjRrRGpyMlhESzhmeUl2UjJRdVE0djNJUlltcUl1Mktk?=
 =?utf-8?B?NWErZFJVNzI5SlRkWGxyQUVnWUFVS0pjMEEzekhjN1lyNjlkNWJVeGwxTXE1?=
 =?utf-8?B?R09BM1pKdFcxUjZOMHBwMGdiTDc4aHNYZ04rVzZYbURBSElyM0hGNjJFZGYz?=
 =?utf-8?B?bW1HNzZ3OUhuVDZYdFl5MzNiNHRZZElxbXBVY1VIdHcvRm0xOWVwYU5kSWhM?=
 =?utf-8?B?WkhwS3VmSm5HWlNtblM0WGhCbEd3aTZlcVUrbWdGcUZuVlZRWkR1MzdpQ2Np?=
 =?utf-8?B?S29GMytvTm9TWlRJWngxMHJQeVZBbmtCSVBaVUJYRTBoWjZTYXNFSnFJOTIx?=
 =?utf-8?B?TE5sbnVITDNmLzh6ejNjVmdWV2VvQmtGU0g0NVNaY2dBTFF3a0FrQlF0NFhQ?=
 =?utf-8?B?NTlpdzd0YnkrM3JFTlNhaGdkRTM2cTNLUUkzZXJ3V2RJQkZNZ2lvbHdxUTcw?=
 =?utf-8?B?dVNIRXZQSGx2YmZMakNsRjl4RW5QczlPeTR3TTlBZityREVaellCSldZeEtm?=
 =?utf-8?B?UnVkdWx2OGdINzJudkQ2Y3MyelhPVUc0c2dqWnhVMXJabDNJZE5hK29KY1hH?=
 =?utf-8?B?cTh4TkJFOWU4WDh5T1lZVmhia2Z3WjVBL1R6ekxrcEVOZXJnWWhtZlFVN1lS?=
 =?utf-8?B?LzFDcXhXdnFxYUI0cncrMUtaN21hRy9xZDNsdGlLV2ZiZHgvbExaNDg1M1pI?=
 =?utf-8?B?dXFHMzY2dmo3R1NKd2dWYXIwYTVTZG5NVDcyOFRoaDZ5RXlIOXowRDkyOVNW?=
 =?utf-8?B?M2J6d0hzeG0yVTlaVnkzWEJmUHJoTEZwOThmT1FSZzJYVGwxaFFvbkQwakVE?=
 =?utf-8?B?MHBhcmd3elhHckVlRWYzUFBLdkVXd2IzZFV3VFNNbTNpanZDRzdmUkc5eUN4?=
 =?utf-8?B?N1d5c0ZsTzJzam9pYk1Gc2xndWxyT1kya3hML01LcmRNRUFFc1RsL1h6YjQ5?=
 =?utf-8?B?bTFqNk1KRnN5Qk1VdTNSbmRYcExKb0tJYnpGUzlDV1ZNV1ZVdnpJUm5pelRC?=
 =?utf-8?B?UWVsbzZDVHZiODVaZWYzeWNVMytNY0tRUDk0c0pQZnVPaGJEZ2lTbUFZZDFj?=
 =?utf-8?B?RFJvcEhPZ3hsak9aL3Bmd2gvVjFrN3BER1lVVU51emgxaGo4Q0FxY3p4ZlE4?=
 =?utf-8?B?M3IrcFNNK2YvZXNwVUo2YXkvS25rcWNHL0orMlRpc1ZkbWRvcVJnWkpLVHpB?=
 =?utf-8?B?Z0hKc2VuQWxMYUxYWHI0TlNJTml2dG54bllGbHVqUzZiRTR3UXBxZE9JT0t6?=
 =?utf-8?B?YXhTMFNhb05CczJOZzVmeUJGSFpmVUpWVE1YL3ErU3hlRmtvR3hkejRabmxr?=
 =?utf-8?B?RDdRSnJNY2RDZXpyMXBzNXNiWWtjTVd0ZGRGTFVEcTAxZmVQRHdoR2MxM1pq?=
 =?utf-8?B?K0hQbklvYnhFQk1JUUdmdDJrSTRrL0FmUitTNE8wNzJCRS9iY0V3d2FDRHhF?=
 =?utf-8?B?Tjd5UlhDa091SUoxS0RrMmZBUGY3M2NIUnJRL0VzMDVsWEhVZ2QybFV2OC9L?=
 =?utf-8?Q?APmSDqs225r1n0RZJLC3eIE=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 904bfc1c-b674-4fee-aa45-08daf5b28cca
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2023 22:07:24.4233 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DBQfzryoRmxE2c3oCU7n7ytHlOBCFU84SUrX8xdrr31GlzPf25bJC0EhQZiDyU6ZpMWn2g4pG+8MsGxnZW9ack8vX8eK4JAs7F7GMTQk92g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6737
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673647649; x=1705183649;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aL7AxvoGhoP6PpjkwFC+OAzcWmTEM9kMOrBs5IzIG8w=;
 b=cGZJFQXaEMmneAPP1ztpkJXlvjXFxyPX/Qqx9q1USx3a0RpRvAYZPMOt
 IyqY2ycRiWO3jNdLqs6dnHlzW4xP+Pzwsbv7DyhPVZYLmEbe4xlKqESPn
 C0CnSKY46FlKZDRMq7WzjnX3z2raJrb9+X20fZI1YQVEEhWDSXegcqBFO
 15CfelqqhfrXmNxa3XP8N+/moUa7xZOIJ2OqSDPI1sTu/X56qy6DQeCUB
 ftE7n18vEJbExyMmPOnVGVyM3ag4ka2H0fNmjtFbS+rORIiHB46gkrPd0
 JaAS19zr9f6vHbEubcxQuBdO+lvgBQ510XwCl1AhO8zXUlu+9oyizuiq4
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cGZJFQXa
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 3/5] ice: add ability to
 query/set FW log level and resolution
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/12/2023 2:00 AM, Michal Swiatkowski wrote:
> On Wed, Jan 11, 2023 at 11:19:04AM -0800, Paul M Stillwell Jr wrote:
>> The E8xx has the ability to change the FW log level and
>> the granularity at which the logs get output. Enable
>> the ability to see what the current values are and to
>> change them.
>>
>> The following devlink commands are now supported:
>>
>> devlink dev param set <pci dev> name fwlog_enabled value <true/false> cmode runtime
>> devlink dev param set <pci dev> name fwlog_level value <0-4> cmode runtime
>> devlink dev param set <pci dev> name fwlog_resolution value <1-128> cmode runtime
>>
>> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
>> ---
>>   .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   2 +
>>   drivers/net/ethernet/intel/ice/ice_common.c   |   4 +-
>>   drivers/net/ethernet/intel/ice/ice_devlink.c  | 131 ++++++++-
>>   drivers/net/ethernet/intel/ice/ice_fwlog.c    | 278 +++++++++++++++++-
>>   drivers/net/ethernet/intel/ice/ice_fwlog.h    |   5 +
>>   drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
>>   6 files changed, 416 insertions(+), 5 deletions(-)
>>   
> [...]
>> diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.c b/drivers/net/ethernet/intel/ice/ice_fwlog.c
>> index efea71b6c9f8..6973f01749f9 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_fwlog.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_fwlog.c
>> @@ -4,6 +4,165 @@
>>   #include "ice_common.h"
>>   #include "ice_fwlog.h"
>>   
>> +/**
>> + * cache_cfg - Cache FW logging config
>> + * @hw: pointer to the HW structure
>> + * @cfg: config to cache
>> + */
>> +static void cache_cfg(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
>> +{
>> +	hw->fwlog_cfg = *cfg;
>> +}
>> +
>> +/**
>> + * valid_module_entries - validate all the module entry IDs and log levels
>> + * @hw: pointer to the HW structure
>> + * @entries: entries to validate
>> + * @num_entries: number of entries to validate
>> + */
>> +static bool
>> +valid_module_entries(struct ice_hw *hw, struct ice_fwlog_module_entry *entries,
>> +		     u16 num_entries)
>> +{
>> +	int i;
>> +
>> +	if (!entries) {
>> +		ice_debug(hw, ICE_DBG_FW_LOG, "Null ice_fwlog_module_entry array\n");
>> +		return false;
>> +	}
>> +
>> +	if (!num_entries) {
>> +		ice_debug(hw, ICE_DBG_FW_LOG, "num_entries must be non-zero\n");
>> +		return false;
>> +	}
>> +
>> +	for (i = 0; i < num_entries; i++) {
>> +		struct ice_fwlog_module_entry *entry = &entries[i];
>> +
>> +		if (entry->module_id >= ICE_AQC_FW_LOG_ID_MAX) {
>> +			ice_debug(hw, ICE_DBG_FW_LOG, "Invalid module_id %u, max valid module_id is %u\n",
>> +				  entry->module_id, ICE_AQC_FW_LOG_ID_MAX - 1);
>> +			return false;
>> +		}
>> +
>> +		if (entry->log_level >= ICE_FWLOG_LEVEL_INVALID) {
>> +			ice_debug(hw, ICE_DBG_FW_LOG, "Invalid log_level %u, max valid log_level is %u\n",
>> +				  entry->log_level,
>> +				  ICE_AQC_FW_LOG_ID_MAX - 1);
>> +			return false;
>> +		}
>> +	}
>> +
>> +	return true;
>> +}
>> +
>> +/**
>> + * valid_cfg - validate entire configuration
>> + * @hw: pointer to the HW structure
>> + * @cfg: config to validate
>> + */
>> +static bool valid_cfg(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
>> +{
>> +	if (!cfg) {
>> +		ice_debug(hw, ICE_DBG_FW_LOG, "Null ice_fwlog_cfg\n");
>> +		return false;
>> +	}
>> +
>> +	if (cfg->log_resolution < ICE_AQC_FW_LOG_MIN_RESOLUTION ||
>> +	    cfg->log_resolution > ICE_AQC_FW_LOG_MAX_RESOLUTION) {
>> +		ice_debug(hw, ICE_DBG_FW_LOG, "Unsupported log_resolution %u, must be between %u and %u\n",
>> +			  cfg->log_resolution, ICE_AQC_FW_LOG_MIN_RESOLUTION,
>> +			  ICE_AQC_FW_LOG_MAX_RESOLUTION);
>> +		return false;
>> +	}
>> +
>> +	if (!valid_module_entries(hw, cfg->module_entries,
>> +				  ICE_AQC_FW_LOG_ID_MAX))
>> +		return false;
>> +
>> +	return true;
> return valid_module_entries();
> 

Done

>> +}
>> +
>> +/**
>> + * ice_fwlog_init - Initialize FW logging variables
>> + * @hw: pointer to the HW structure
>> + *
>> + * This function should be called on driver initialization during
>> + * ice_init_hw().
>> + */
>> +int ice_fwlog_init(struct ice_hw *hw)
>> +{
>> +	int status;
>> +
>> +	ice_fwlog_set_supported(hw);
>> +
>> +	if (ice_fwlog_supported(hw)) {
>> +		struct ice_fwlog_cfg *cfg;
>> +
>> +		cfg = kzalloc(sizeof(*cfg), GFP_KERNEL);
> I don't understand why hw->cfg can't be used here? It will simplify all
> this cache_cfg. Is there any reason to alloc config and than set hw->cfg
> to it in get flow?
> 
> When config parameters are being set from devlink context hw->cfg is
> used instead of new allocated config like here (and than casched).
> 

Good point, I removed the allocation of cfg here and removed the 
cache_cfg function.

>> +		if (!cfg)
>> +			return -ENOMEM;
>> +
>> +		/* read the current config from the FW and store it */
>> +		status = ice_fwlog_get(hw, cfg);
>> +		if (status)
>> +			return status;
> Shouldn't cfg be free here? If ice_fwlog_get fails cfg isn't casched.
> 

Not needed since I refactored the code to remove the allocation of cfg

>> +	}
>> +
>> +	return 0;
>> +}
>> +
> [...]
>>   
>> -- 
>> 2.35.1
>>
>> _______________________________________________
>> Intel-wired-lan mailing list
>> Intel-wired-lan@osuosl.org
>> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
