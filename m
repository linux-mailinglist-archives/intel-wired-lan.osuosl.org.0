Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E8BC71865A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 May 2023 17:29:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9CBFA81E4D;
	Wed, 31 May 2023 15:29:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9CBFA81E4D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685546988;
	bh=6c85/HxbUPHW7QP2xkv9M9SXIhdWeGxSyMiNhkTW/qc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cZ6W4LWY5WlAcxO6zfHSeuFjg5HrfMnzqYV9dMXCqXkp+2syHCPfil1yv1LeUHA0I
	 nnLh9ihGD9RwSq4PB5itM5gNCohSgpcC6Zlac8938GLpFdUpTMXQzSwJyPOqpHCoFB
	 GVNreoooT9T5IyrveGZg7wkB9pd9543BpfXBTwn/NzXMVKa2dOb9pIs9IVnFZew7NE
	 Pw05LuNu/ySALn8ZZIbmHlCyCieMfAe1/xZ1ztYP1gNN455rdkZOrzG5U1wrFDsoof
	 mf1aqyNsP1RDXio+WIslxBN6rG/itLcokCv/yoVMASjMqMXe3iKNPsTC7ZzvGQL0co
	 zocBteymS/dJw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nov4zALwsoTq; Wed, 31 May 2023 15:29:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 571BB81E38;
	Wed, 31 May 2023 15:29:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 571BB81E38
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 551E91BF5DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 15:29:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 38BF140550
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 15:29:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 38BF140550
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cc-pX4cn1Owb for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 May 2023 15:29:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2FFE840119
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2FFE840119
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 15:29:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="441630756"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="441630756"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 08:29:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="684422967"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="684422967"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga006.jf.intel.com with ESMTP; 31 May 2023 08:29:38 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 31 May 2023 08:29:37 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 31 May 2023 08:29:37 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 31 May 2023 08:29:37 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 31 May 2023 08:29:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OUD+8jR0veK5A7OugOCcMixwf21bUf5w8066mdPkbE72xt6sVhj3rc8Dx1XF8uawwsMyI5Ka0qVwELsjEplVjJHyFczq1yIRqGrp3aBv/LDWpYLItxdZMzTPuLcAr3ZOMW13jXjsRr5lIODoSOGxwuZLmKMh/e2FNqTaW21odgeYmSx0Nk3TT1I1qgvcDbfSlduFAZK7JQrMmDCr1tmjnzzajPsPHaqA9pwt8HfsdTXVm/oLxVhzGGfAS9+1RZXM+UxmOilm8XizUTov3tDLM2s5bd1XtPRDniHR6lBH8fsJRlHQbf1ndSpTHkEbWELPPLmBI/+6ijWfTh4GgXMgqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JxdaD87giADTBdzyF12R0ry1VVp4PygN2NZzgqDmGvw=;
 b=UelMlCBM7+M4sompuFf9qR/pk1OP2wKMq8E9CdEYD+wan4HGqbVQLRv105UCAf9RO4XUrFFyRCwRE59TCTqGgdBLa9MTwUqb3GeBQVJlJaAPc65vMeT5vINKJ1qqO3WY9ZFM0tyhmxmBdIDDWeyQ7AjM0MmiwltwvbIwCsFLUNU/2aF9NfJEkU0XWQaUwxcU+nQ80uNuEL9WntGLDgpNI/zWlSmXz7MVylLHCVEHGt88WdUJdxEQxBkRu/W6xsagboukMRa7QJyoh+X2Z5hpFFn5LHVa9BAyPNfiZrPj5L/5idQ/QEC5763YngfPQKKdjBGF+Ta78vNBCww5LlDgvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by PH8PR11MB7141.namprd11.prod.outlook.com (2603:10b6:510:22f::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.22; Wed, 31 May
 2023 15:29:34 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::64d9:76b5:5b43:1590]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::64d9:76b5:5b43:1590%2]) with mapi id 15.20.6433.022; Wed, 31 May 2023
 15:29:33 +0000
Message-ID: <a6a29f13-68ae-c7f3-e4c2-30e23eabc888@intel.com>
Date: Wed, 31 May 2023 17:28:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Alexander H Duyck <alexander.duyck@gmail.com>
References: <20230530150035.1943669-1-aleksander.lobakin@intel.com>
 <20230530150035.1943669-7-aleksander.lobakin@intel.com>
 <81d8da838601a2029e97937a952652039285cb4e.camel@gmail.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <81d8da838601a2029e97937a952652039285cb4e.camel@gmail.com>
X-ClientProxiedBy: FR0P281CA0177.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b4::16) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|PH8PR11MB7141:EE_
X-MS-Office365-Filtering-Correlation-Id: 680f6de6-d336-4c35-8b3b-08db61ebd577
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fisgIkBJV522JBnPX9WZkNTJZXCkc7eUxobtb+i897gB+BQLEGUNJVYnIF5V96+3jGweZN/ijo2iNCy0sovmUXb0jJbyOJ9q9hH5gcvRUKTleEqDxfppWth5llobtTvONVJQrFnJ704VLbWwEH2MqXbktJVXwQqZYfT1X92MUWrLYPu9Ms38IFqLNG3dZgaRuRwAw6CBDw99kih19jtTVvDAlZOEFHvNqHxZhQFGvs7hKWnfLj6r9dk+xwikJdT67WgvhNciSndj9J8stb9Jlbbx3EwKWDUToWno4Y5XAkTpHCfNdj85CgNmCzIj+XMmuTzPeeI19gaVqLLAJ/MYDCf0ZIDumE1b3Oiki+y1/AEyWXUSC7kKd/tXqGlbYucMJwmmMHLwNMaysQ24f2cePltM/tQ+sViuS4jD9flf2cKVtwn99MWt0OQjvlDsg+ppSqOWMpqtzMIVKvP3hDZ96uWPLQNC9wa2/yMwwbdlMocCsHGnqgz6Ly+lBPtcuuR5NlDgv2/5WYm+dsOxjjUddRQ+qX8rGk339uEcLJTYpi4d1T1dg7nJW5Aa1SwmOlE76gV+x8WCgcBtQ+oriNiOD2eVM36HfCcSL4t4fpb0mMdQTuycJHj+anOJksowcPVr3Z9F+h7t1S4nRSsV3dDFKg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(136003)(376002)(346002)(366004)(396003)(451199021)(41300700001)(478600001)(54906003)(38100700002)(66476007)(66946007)(6916009)(4326008)(36756003)(66556008)(31696002)(86362001)(82960400001)(316002)(6486002)(2616005)(6506007)(6512007)(26005)(31686004)(7416002)(2906002)(186003)(5660300002)(8936002)(83380400001)(8676002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YWJ3WDJpZTVPdzd4ME9SUC9vQXZlK3dFbmlkTmhNbEZ4cXVuS2NrcGlnVjVL?=
 =?utf-8?B?djVtclRPS1FlOTJ6Q3FXZjhnRmdLU00wMDFJeWd1MG5DbmM5U2k1ZGU3SzZw?=
 =?utf-8?B?djdrNFJyQ0JNL0l4dGhHb1VYY1BQckJGMnJneWszZWhZcGFUZGI1QVZiVkJt?=
 =?utf-8?B?ZlNseDBOWmJSS1hUYjM1RElaUk1MeFhydHUyM1JtbFVRMDF5UnNJL20wRG0v?=
 =?utf-8?B?M3dMV3VRTGJ1SVZpanp2TjRzU2xiNUhIZHdJNFBUSUYwRW9QSVQ3MGJ4SGNZ?=
 =?utf-8?B?bUhHK0NNQ1gyY1RkeFRvVHdRZXF6Sk5WMWNMWlNHNXpoT29aa3padTJnZDV5?=
 =?utf-8?B?SDVtYUNZdEMwMDN6ZEVaQnEvYmhsNDltdytENzRhWm1oMXhKUlpwdUxvT0hB?=
 =?utf-8?B?TTRSc2UyYkgzYlU3Z0x6MklFWlRQK1dCYSt6K3pRNU9EdG9ualhUcUVyR2sy?=
 =?utf-8?B?STNQS2tEWlFQYm1Oa1Z5REhEMmhsVUFjWGI5NWYxK1YzSmJpVSs0dWxudTVo?=
 =?utf-8?B?N2pNRjZvZnFtV0htRG1BTlRrcG12bXpXam83L0ZCS29ZYjhWYWJGMGZ5SUI2?=
 =?utf-8?B?MDJ1QThydERqNnJVREl0ZWNXUGJ2am5GcHo1SG9MZkduUXJPdVB3SW1jSHNu?=
 =?utf-8?B?QTR3aHNFRVFyYTJSY1ZDVTNsaDM1dGVXZ2hiVmxUKzhXTTZxaFh5R3JwUitm?=
 =?utf-8?B?U2oxSkVEOVVHcGtiY0JhQXYvRXdxMUdoM0U3SVViTUsrNmQ3MzJ1eXdwU1ow?=
 =?utf-8?B?Y3BsNTlrYzk3UnRkWUFwbWR3VHI2dlR3Q1laVmtlZGhSK050dVNPMzIyK2RD?=
 =?utf-8?B?VzRWYlNyTkdTempjVUo1b1hyQVNFaXh6ckFpRmhYR0lGSk9paTllYWJkaXNr?=
 =?utf-8?B?YVpEektwalF2c0lOcDJWell6WHNEQms2UWl4NW94TElOd2hHUCs1MFNUZEsy?=
 =?utf-8?B?Unc3MWp4ZXNISmxpaG9Mb1Joam9uN1VqQThYWlpkTUFUeWtjL2tHN0JCRE9X?=
 =?utf-8?B?UUN0MUVIMHpHVVcyQU45RmNaZ0lCcGZCSnRjTGxPVjlqanlIdjA2MXBJTnFp?=
 =?utf-8?B?d29vWnE1YVA3aHdUa1BSSnR6cE1lSTdOdHhYZEVJYndHVUtTRWRsc243bkpi?=
 =?utf-8?B?a3ZNK0s5V0h0aTErTnQ1cFNPaXNJUUdCMUhBbGQ4bkJiRkpGeEsvT1kveWdY?=
 =?utf-8?B?Yk9teEErLzdLZ0JsN1ZBNHZmK3VvWFJoMTc1T2VRWGYxNmk1YTczMFByK0lw?=
 =?utf-8?B?bFZWb2FkK016QXVBZXFSaU1MaVZHOVIrU1QxQ2dyNW1YbWJ0S3hWbEVlUy9q?=
 =?utf-8?B?Q0ZQWFVycXd5cGp4RDVOajdkd1czbDdkMm8yT0JTd0psUEpGWXlHVkF5MU5k?=
 =?utf-8?B?MUFud2xhSXIrT0JlWVNZYXord09Cdm90ZlZYazhVcW9UZjFvak5waXoyRDlp?=
 =?utf-8?B?bEcwVVFmOUdmZndqeWZKaEtRd1BWaTdnUzZtekg2ODJpRnhCT3ZUVUdPZkZL?=
 =?utf-8?B?bTB2Z1NqdXplR0ZiVUhxWTZwRjVJRWVxQytMTVV2RjFxenVnTzVMNVdKeXJr?=
 =?utf-8?B?elpIL2RQSkVwc3dHTEZWZzZ3NFZGNWRNMm5md0E1ai9UbGo4QnZ5aDUvMHYx?=
 =?utf-8?B?M3cvNHEzOU5RdGVueUlhdEorZEFuMWxzNzdkV0hZODFNN3pkM1NiSDZJaVIy?=
 =?utf-8?B?U3ArVmZ5WHFBSlgxWGllNTBEN1lOTW1Tb0cybXhVUElFbDMxWVJMS3lhSGx0?=
 =?utf-8?B?ZDBqckNjQnRabWlmM2N1ai9lU2M4NG5uYkNiVTkvbUM1STFqZ1pKVFNuclBq?=
 =?utf-8?B?NUVWbTJmRkFnVVNGcUpWdXhWdERqcjFDQ3MwcVlRWDFMQ2dyN203bjhtc3FN?=
 =?utf-8?B?U3AwYUlpM1pzMks1NjlrZUdOOTU2YU9Nd1VFcnd4TkN0d0dnWDVPVkNtNXlz?=
 =?utf-8?B?dlpTRFJKd2d1amQwYzdjTG1Wa0pISzVNdm1XRlpDNDZRSlIweFhEc3lMZU1i?=
 =?utf-8?B?TDNsQnRzVnQrVEVCRW1EaUF2WS9jNlp6c3BJaTV1Q1dsZ3pQeTZDcnVtUXkr?=
 =?utf-8?B?dWFCYnVtUnFxWGZrNlUwM05nK3V6MncvOS9qbnB3Wk5yZjRFclpreTlPK0lM?=
 =?utf-8?B?ekVLaVhMUkZ4dkdYVmYyV0VCWnJuNXZCRFAwWVpyREhGZDEvVnhXUXpOUXdi?=
 =?utf-8?B?a3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 680f6de6-d336-4c35-8b3b-08db61ebd577
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 May 2023 15:29:33.2315 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FtZAhBNPWNA7HQqr8R+iYZazOYSHTS9sULC5S4MvQ2VMFIuSosMvdiyhq63qFSfP0RHMImpZcP9SF+Gd24pempS30TxzDmxBf1hhUcR/BY8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7141
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685546980; x=1717082980;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=v0RajWYs4Ss15p3zbLQGeth/T2+unECLp6SzuWPJXZY=;
 b=cPcSrF1a7rLXof0Z4e+M4vTyVzr64t+/fYDzDJCAC/BNAzm6henH9HUF
 8erHALln2uZeI2Is86AQ4JrA3p0iEU+lX4dQpa2x93/q9MNXa/F8k9AgU
 dWC6g/YcBgEzLjTGE7iVx23C2+VAVhplNt1GU5i0sZ9FCRokddj4epR9x
 15+/H07L7+ysNocQZB8IwCznSdGecDwEGOaX1gqEy1ECiLJwl9TFarmUA
 h4ttQjd1XytZH4OOldKO8+zR8Hkg06LZ83/kHVoaOzvbItfq2+FVh822q
 D5UTo+I2s39mDP2NhHy5ZNQulumgQ2gb+c92v7joPLhZShfM2x4dujEjU
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cPcSrF1a
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 06/12] net: skbuff: don't
 include <net/page_pool.h> into <linux/skbuff.h>
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, Jesper
 Dangaard Brouer <hawk@kernel.org>, Larysa Zaremba <larysa.zaremba@intel.com>,
 netdev@vger.kernel.org, Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 linux-kernel@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alexander H Duyck <alexander.duyck@gmail.com>
Date: Wed, 31 May 2023 08:21:03 -0700

> On Tue, 2023-05-30 at 17:00 +0200, Alexander Lobakin wrote:
>> Currently, touching <net/page_pool.h> triggers a rebuild of more than
>> a half of the kernel. That's because it's included in <linux/skbuff.h>.
>>
>> In 6a5bcd84e886 ("page_pool: Allow drivers to hint on SKB recycling"),
>> Matteo included it to be able to call a couple functions defined there.
>> Then, in 57f05bc2ab24 ("page_pool: keep pp info as long as page pool
>> owns the page") one of the calls was removed, so only one left.
>> It's call to page_pool_return_skb_page() in napi_frag_unref(). The
>> function is external and doesn't have any dependencies. Having include
>> of very niche page_pool.h only for that looks like an overkill.
>> Instead, move the declaration of that function to skbuff.h itself, with
>> a small comment that it's a special guest and should not be touched.
>> Now, after a few include fixes in the drivers, touching page_pool.h
>> only triggers rebuilding of the drivers using it and a couple core
>> networking files.
>>
>> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
>> ---
>>  drivers/net/ethernet/engleder/tsnep_main.c               | 1 +
>>  drivers/net/ethernet/freescale/fec_main.c                | 1 +
>>  drivers/net/ethernet/marvell/octeontx2/nic/otx2_common.c | 1 +
>>  drivers/net/ethernet/marvell/octeontx2/nic/otx2_pf.c     | 1 +
>>  drivers/net/ethernet/mellanox/mlx5/core/en/params.c      | 1 +
>>  drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c         | 1 +
>>  drivers/net/wireless/mediatek/mt76/mt76.h                | 1 +
>>  include/linux/skbuff.h                                   | 4 +++-
>>  include/net/page_pool.h                                  | 2 --
>>  9 files changed, 10 insertions(+), 3 deletions(-)
>>
>>
> 
> <...>
> 
>> diff --git a/include/linux/skbuff.h b/include/linux/skbuff.h
>> index 5951904413ab..6d5eee932b95 100644
>> --- a/include/linux/skbuff.h
>> +++ b/include/linux/skbuff.h
>> @@ -32,7 +32,6 @@
>>  #include <linux/if_packet.h>
>>  #include <linux/llist.h>
>>  #include <net/flow.h>
>> -#include <net/page_pool.h>
>>  #if IS_ENABLED(CONFIG_NF_CONNTRACK)
>>  #include <linux/netfilter/nf_conntrack_common.h>
>>  #endif
>> @@ -3422,6 +3421,9 @@ static inline void skb_frag_ref(struct sk_buff *skb, int f)
>>  	__skb_frag_ref(&skb_shinfo(skb)->frags[f]);
>>  }
>>  
>> +/* Internal from net/core/page_pool.c, do not use in drivers directly */
>> +bool page_pool_return_skb_page(struct page *page, bool napi_safe);
>> +
>>  static inline void
>>  napi_frag_unref(skb_frag_t *frag, bool recycle, bool napi_safe)
>>  {
>> diff --git a/include/net/page_pool.h b/include/net/page_pool.h
>> index 126f9e294389..2a9ce2aa6eb2 100644
>> --- a/include/net/page_pool.h
>> +++ b/include/net/page_pool.h
>> @@ -240,8 +240,6 @@ inline enum dma_data_direction page_pool_get_dma_dir(struct page_pool *pool)
>>  	return pool->p.dma_dir;
>>  }
>>  
>> -bool page_pool_return_skb_page(struct page *page, bool napi_safe);
>> -
>>  struct page_pool *page_pool_create(const struct page_pool_params *params);
>>  
>>  struct xdp_mem_info;
> 
> So the code as-is works, so I am providing my "Reviewed-by".
> Reviewed-by: Alexander Duyck <alexanderduyck@fb.com>
> 
> Consider the rest of this a suggestion or a "nice to have".
> 
> I wonder if we shouldn't also look at restructuring the function and
> just moving it to net/core/skbuff.c somewhere next to skb_pp_recycle.
> 
> I suspect we could look at pulling parts of it out as well. The
> pp_magic check should always be succeeding unless we have pages getting
> routed the wrong way somewhere. So maybe we should look at pulling it
> out and moving it to another part of the path such as
> __page_pool_put_page() and making it a bit more visible to catch those
> cases.

I've just noticed that this function is exported with no modular users ._.
Anyway, I feel like it's a good way to go. The entire function, apart
from the magic check, can be moved and made static. And the magic can be
moved one level up, right...
v4 will happen either way I guess, so maybe I'll replace this patch with
that kinda change.

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
