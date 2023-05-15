Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E3537037F7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 May 2023 19:26:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9B7D040BF7;
	Mon, 15 May 2023 17:26:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9B7D040BF7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684171572;
	bh=9divm2PSHLzmbIz0GaiXmecm1vJ0mH7WcPNAHUHfCHE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iNNzjx4qysCHuadLzSXIjCbzl0BCzG/PUHBFPqiTnjnQ6D3wX75lVo49Ym/8X+Zsq
	 53OsJYXWv9J3sMnNM+ggaU4BJQJIGt5mL6vG7FBTIBrBzL64ufNrKaMyF6+Qik9ZOk
	 y3cx4ZHS9/whDjZXB+SnOzGyanVm/o50jLGzNfzoFa+VNS7HYYZyDngvUwZBRRhSj5
	 7TguyiX34l2oSUQ3LaE1zkH60hVGxENhFTAn/ui90yjSYl/NYRMbmmGHGNHX+Z2ia4
	 M8UmxbgLRfoFN63PPNh9PByWp8/RWH4idnAbDqQ+u7a0cvYqJ1Pgnig0FKHyYv4iei
	 KESrIEhvIsbUQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cDCXRTFlVUty; Mon, 15 May 2023 17:26:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 007F6404FE;
	Mon, 15 May 2023 17:26:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 007F6404FE
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A419D1BF345
 for <intel-wired-lan@osuosl.org>; Mon, 15 May 2023 17:26:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 85A09417F7
 for <intel-wired-lan@osuosl.org>; Mon, 15 May 2023 17:26:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 85A09417F7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Tl9Ah9e27igD for <intel-wired-lan@osuosl.org>;
 Mon, 15 May 2023 17:26:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2341F417F6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2341F417F6
 for <intel-wired-lan@osuosl.org>; Mon, 15 May 2023 17:26:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="340622988"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="340622988"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 10:25:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="947506754"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="947506754"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 15 May 2023 10:25:42 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 15 May 2023 10:25:42 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 15 May 2023 10:25:42 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 15 May 2023 10:25:42 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 15 May 2023 10:25:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c6J79LXyzx4HF/s/XfWwj2VUP/6F9RSpIoMq4njHb1HaZCXcAdFOGUbaOgbNLjZqg3StizfK8AXK/zFXedPIa3IGtpgDKRheAanUamMU28BvfCtu1qPl+mfOPVb0Nkl0AqbkLpm5DGOKorSe6wAg4QOt3DmgQ48p/QU9HAqJZxMRCb82LLJ7/LbVDJJD/yl+8qyFRoOMPkKoJUkNuyGUe2ROBaTfSTNpeZ5GLTZQ5tCi4/vBwl7CbGPYcU+sh952il0nwDb7v8oQHMuUE8EyGD8lej+nitrT0+npNshrGqUe5qUZQaJwwlUJ4kUnRykz053fpe+2iNHf85ob9YdJyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rXhPeMSEeUomksvnjqAIVhGujjXqiPS1BGaGciH95Aw=;
 b=KCFsIXdG/ykuathIUTKyCQDGM89YhfX0xqlYoUP4Q9wNim6kd+n71NQzsqklneF4NURG3Ar9sEa2XQBux6PICrdBEV0gv+oeGpA7WzDKSEZ3TebCxK4mo+LgXretSEymKmOmC3Am+rVgQCTvODAeGJWu0+r7SNj5j1uPGavco6l/mLrZCOCHa+FG6Cm+0K1wKgXa3rUM+UFD67kJpvbO+GzjlZqGJ5ehdR8p3fTgyrjdVeZ7e348MZ+0UXLQve6/6wVWvDow4CRRKVC8g47x5di8hjhnWIrh4Zq81H65G1k8s4f2C2QueUpUTZCB+UGsysVvnUnieWJvM96rHm/QCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6738.namprd11.prod.outlook.com (2603:10b6:303:20c::13)
 by CO1PR11MB4850.namprd11.prod.outlook.com (2603:10b6:303:9c::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.30; Mon, 15 May
 2023 17:25:38 +0000
Received: from MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::df65:1e83:71ec:e026]) by MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::df65:1e83:71ec:e026%5]) with mapi id 15.20.6387.030; Mon, 15 May 2023
 17:25:38 +0000
Message-ID: <ce25c481-94b9-8a46-2963-3c881566dbcf@intel.com>
Date: Mon, 15 May 2023 20:25:30 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.11.0
To: Prasad Koya <prasad@arista.com>, <intel-wired-lan@osuosl.org>, "Avivi,
 Amir" <amir.avivi@intel.com>
References: <CAKh1g57BP-RHN7uG7+v3mzni1ZLOmd7aiqTTTunm=8D5dnCJBQ@mail.gmail.com>
Content-Language: en-US
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <CAKh1g57BP-RHN7uG7+v3mzni1ZLOmd7aiqTTTunm=8D5dnCJBQ@mail.gmail.com>
X-ClientProxiedBy: ZR0P278CA0023.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:1c::10) To MW4PR11MB6738.namprd11.prod.outlook.com
 (2603:10b6:303:20c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6738:EE_|CO1PR11MB4850:EE_
X-MS-Office365-Filtering-Correlation-Id: c5a199bf-dc4b-403a-b7f6-08db5569669a
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RV8OpKzp/SAoYQUciHdHSSaxODkjU89TxmYSx8xRGaAoEd0CUtSbjnd8KzyMZYeH38Jen22Y48gBH08uAdBqKCngC+xw4LpFUpQeYnFB91POcH7K1iea5+uDFLousAs0QKrVZxP7RrtSO+mTd+WtBx4Xdv4Jeh2Sec8eo3Cz5DpHIlRgSIYo6cSPxSW/cxq8fr8WRTxbVTm9p/22mX4aVPCJ0CLZ4P5ieDNbNG/WDT2Ocsfuk8QvjxI7JyXHlKuptcFx/1PJYKwhPHirjt9qCPnjZ5Nt0yKV4bKVkzfnFZQRjUmI4gk8A9FBrBxfDPIErziWI/qpRTpP5mBevzqNq97V2iyt6yA9DIN8ZTMc9kcL0Lb/6tSByncyyKuNDNxGbZuGBH4rH5pvS/xP7lESJQG3DFQ1WX/zSJTB+OAYzVfBPkrN8eXjQzdgo3KmOONk2nOB2ZSVot+W3sMI8hgz79SQ3NZX6QZE7yuXTPYPFEtVIybv6Z4vEr0xVXXSUgBXTfDrSuBt8vyLa3M1bUi5U8WfYRiXa/uekCOUhtZ8Z2OCPUfAq0/cTVBxTZYMjHJ8zZayNL4vyca6H6LGg1L9AJfXYjxWZa8xnvG3yJBrgrlvmqeXFIMjnEYJW1HERlEFS6c7CbrcpKjg9+/g2SufXJrkDHK6B9Z0cAV/BWfp99d0POM9wcXQUymjnqhgLCjM
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6738.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(376002)(346002)(396003)(136003)(366004)(451199021)(66556008)(54906003)(110136005)(478600001)(4326008)(66476007)(6636002)(66946007)(6666004)(316002)(966005)(6486002)(8936002)(2906002)(8676002)(41300700001)(5660300002)(26005)(107886003)(82960400001)(31696002)(86362001)(38100700002)(2616005)(83380400001)(53546011)(6512007)(186003)(6506007)(36756003)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c2phcmRPZ0tMUHBXd2ZoUU8wbHpyeVF4QTM0R3BCS3JYbkRCeWkva2hWZzd3?=
 =?utf-8?B?ODIyMFY1azBtWExYRlhQZkhDK0VvQWVXRTIvVjV3SWo4Y2JNV0lVWEhOUmJG?=
 =?utf-8?B?OTNuRlAvUUVKbGxsRTNtZG90WTNqdWErSGlPRkMzZ21LbU9jcjZPOCtVUExr?=
 =?utf-8?B?TUFqSm8rVGhZazRINVc3azFOSlBDRVNydDhobTYzWENzREVySk4zSTFoanFu?=
 =?utf-8?B?aFI0VVFGc295QW5pN0MzQk4vdU1tZFNkbGlncHlLMXdlbHI1NDU4WklXVVhB?=
 =?utf-8?B?S2k4Q3dYb3d6cUFxbGRoOG15bklxODBna0wvY1BjQmlhR1liRHVrSGZpYWE5?=
 =?utf-8?B?UWptQlU0dEdwRjIyTTZNa0pyVlErMmFTN01OWnBGMVBRSW00QjRWdnp1VnJu?=
 =?utf-8?B?T1ZzZGNyeXJEQTRtelZNRFg5ZDBMdWF4dVJEL0dsUTY3TFVrMHUvRDBFTFJu?=
 =?utf-8?B?WGk4YVhBUEIvQUtocGdKMWV6T1hWd1MyQ3lBUWwxKzR5aFZtNWp0eUJQR0VJ?=
 =?utf-8?B?SnBPcVcrbmI0a0xEd2xFaVMxUHNtd3VpQnc5MzVXeU85N0FNeXNGS3hEcFlW?=
 =?utf-8?B?aEJMZVRwYUhpdlEzRVRUVmJHY2xCalhrUHZVWDZzYlltTm15allxcGRYQkdu?=
 =?utf-8?B?MTF0UWxSUFBySXNTNk1YVTcyelNGeVBYQUh6TzRZMTVrOUljcHVpNmplRVp2?=
 =?utf-8?B?ZVhsM05tWnNyRjdhdUtWOU1JRmFQcUpRcER0VjFQaFNKQk8wMFhuS3krOVR5?=
 =?utf-8?B?NldVSGpYYmlNMkNlWmdnWHA5NTd2ejN6OFY5TTFHREZLdmg2YmJaOFVXZmY5?=
 =?utf-8?B?eERqS2VoZ0lSeGd5eGdjVmNqSHBVck0rU3VDNjBic0NEYktneG5YNXJsblFj?=
 =?utf-8?B?OGhNSnR0S09uTWV0eE93VVNMM3Z4VDl3UW80b2ZzRnRLMTVrZ3JtZUxYdEIy?=
 =?utf-8?B?TW9aN0luSytseklVdWFmNk9MUzgxamhWYUs5TS9wY0JYWXFmNjdlaXBKNXVm?=
 =?utf-8?B?Vk4raTFhSWp0YnZqYU9jaFFaQnVPaUJaRG1FNndMUThkWkpEbndQL0pIRUpy?=
 =?utf-8?B?dWcweXZOc2hpM3Uxa3F2cW5KZGxmMEhIUDRDVGtiaCt1RkNpZ2RZbHFsYnBI?=
 =?utf-8?B?QWhzUSs5Q0JmL3lQVUNTU0JMZkpEZjU0ZFJHOWJLMm40c0RYWlZ3MXE3N3lN?=
 =?utf-8?B?ejIybWdNajAyU3FEaXRvS0tOVkIvallnYkc1bkN2RU5rcXprKzdNa3NnNlNJ?=
 =?utf-8?B?OCtDOXdlTTY4ZzhvSTBjMExrWGtwU3YzaW9Pamx3c1dzOEkxaENCcGNJWi9K?=
 =?utf-8?B?b2dFTHp6dlFISVp3Sm1qMXlyTzlNYUJQY3ZpbGVrOTJIbE9hRERrQnZoV2t6?=
 =?utf-8?B?UDh0RmMwWTJyUXc0QmVzR05QVWQrSk1icElJOEhQNjd0Sms2a2U0d0dpUkRJ?=
 =?utf-8?B?Vmc5c1BxeGhEOUxaQy9XckRhQ0R5Ym1sNndUUmZlOUM0bjJZNTdOTHRVejk5?=
 =?utf-8?B?SWp4NmhLaWlBcmR2a2FJKzE0ZlZXc0drUklwc09qT2pWU0kzM21tWDV3L3A3?=
 =?utf-8?B?TDhXNzkyenpLQTNZd3NGSlZOQUpyUUw5aEx0MnUzUTdjZlhsSEZmeCtuV09q?=
 =?utf-8?B?Zk5zUjVORUtGKzhWR3BZMTVaWEhKa2ZWSFl1SkYzaDloWjhBamVrVFVuSzRP?=
 =?utf-8?B?dkZvUFQ0UGNiUkJEY0FBZnVKcFJlbEhydDlmalplQzUwOEI2Z05XS1pxM211?=
 =?utf-8?B?cHNXc0FURlNWNi9aV1E4UkNkQTFuaUNYVElyUHZJbUhSZGh2OEU5VEdJYUhu?=
 =?utf-8?B?WmxIUU5qeWRiK0R3REY2RkZzTlF2MTFxdnNmNDhqNWxKaUQ5K0tmdXZWTGtL?=
 =?utf-8?B?V2lScDB4dzV0MC8yOS9XaXpqQ3ZYSFpybCthRVFjUXFibDJuKzBSWXB5UkNz?=
 =?utf-8?B?c2JaTWQ0KzVueDZuRzlnS3AxZ2ZFcHY1VGNYWUVzSEtPZlpLWlpMR2ZDdnlP?=
 =?utf-8?B?RFZHVVgrUi9zSHd0czYrVFVqUzhDeHVVc0RxM0crOUJhU0srblJtbGpDUGpZ?=
 =?utf-8?B?NlM3M0tlOXlxcU82SjFDR29kajdQN1hlRGtxVkw3Um9PUUtBcmNENWQ0MFE2?=
 =?utf-8?B?WVVlcHNOYkI2TFZVY1hndVNibm81UzZUV1pCNHh4dVZJY3JEa2pHTXFISksz?=
 =?utf-8?B?OGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c5a199bf-dc4b-403a-b7f6-08db5569669a
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6738.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2023 17:25:38.5957 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GmSf3MTSfRTWL+bv5MiOeHhNNziBrHk3Vt4mPY8q+UJPMmFFaEU92ztY3uxK6HlRUkZdN7BNnvKsu1x0yhS4OA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4850
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684171563; x=1715707563;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Urekf5TGO6zijNaF1JxlZurow2bC6StYC5bbXUWq498=;
 b=AURaPfL1KcHvL2lxgfSNOMXhr03SmUDZzaR2DYSgcnBOTIyHTmulsFk4
 9M/lCrE/GzoUjxTfliXUISpyPPb+2KC6eY7/EPhZWkB50E+TPnoBT/ZzI
 SF5sK3bdbh8zkXrO3/0KxmCEy9v4b8v962isAnpYhgYq8LiGGXTN/20A4
 EpSvxZGGa+GBOHUCgsgS6EiF1dDJw9xqS7BTyaHxOkyDHecatPrKl+gfY
 4917/b00IkKIoXhh5X3VGILczf8Sfv6XWUsN+8BuEaDPo+uxzxycF45np
 MMCP14I08IfTEkEVevGrV+WLbUoi6FyqDGAoqQd0IGYum9SVAvLAv6U3b
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AURaPfL1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] I225/I226 does not power down the PHY during
 "ip link set dev down"
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
Cc: Salam Noureddine <noureddine@arista.com>, "Ruinskiy,
 Dima" <dima.ruinskiy@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/15/2023 10:04, Prasad Koya wrote:
> Hi
> 
> When we set the interface down with "ip link set dev <xyz> down", we
> see that the PHY is not powered off. That is, the LED next to the
> RJ-45 connector is still solid green on the host where the interface
> is "down" and at the peer port. After "ip link set dev <xyz> down",
> "ip link show dev <xyz>" show does not have the "UP" flag but the LED
> is not turned off.
correct, this is expected behavior.
> 
> Here are the logs when I tried this on Ubuntu running 6.1.0 kernel:
> 
> root@arista-Idaville:/home/arista# ethtool -i enp2s0
> driver: igc
> version: 6.1.0-rc4
> firmware-version: 2017:888d
> expansion-rom-version:
> bus-info: 0000:02:00.0
> supports-statistics: yes
> supports-test: yes
> supports-eeprom-access: yes
> supports-register-dump: yes
> supports-priv-flags: yes
> root@arista-Idaville:/home/arista#
> root@arista-Idaville:/home/arista# lspci -s 0000:02:00.0
> 02:00.0 Ethernet controller: Intel Corporation Device 125b (rev 04)
> root@arista-Idaville:/home/arista#
> root@arista-Idaville:/home/arista# ip -d link show dev enp2s0
> 2: enp2s0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state
> UP mode DEFAULT group default qlen 1000
>      link/ether 00:1c:73:b4:e3:76 brd ff:ff:ff:ff:ff:ff promiscuity 0
> minmtu 68 maxmtu 9216 addrgenmode none numtxqueues 4 numrxqueues 4
> gso_max_size 65536
> gso_max_segs 65535
> root@arista-Idaville:/home/arista#
> root@arista-Idaville:/home/arista# ip link set dev enp2s0 down
> root@arista-Idaville:/home/arista#
> 
> 
> root@arista-Idaville:/home/arista# cat /sys/class/net/enp2s0/carrier
> /sys/class/net/enp2s0/operstate /sys/class/net/enp2s0/flags
> cat: /sys/class/net/enp2s0/carrier: Invalid argument
> down
> 0x1002
> root@arista-Idaville:/home/arista#
> 
> root@arista-Idaville:/home/arista# ethtool enp2s0
> Settings for enp2s0:
>          Supported ports: [ ]
>          Supported link modes:   10baseT/Half 10baseT/Full
>                                  100baseT/Half 100baseT/Full
>                                  1000baseT/Full
>                                  2500baseT/Full
>          Supported pause frame use: Symmetric
>          Supports auto-negotiation: Yes
>          Supported FEC modes: Not reported
>          Advertised link modes:  10baseT/Half 10baseT/Full
>                                  100baseT/Half 100baseT/Full
>                                  1000baseT/Full
>                                  2500baseT/Full
>          Advertised pause frame use: Symmetric
>          Advertised auto-negotiation: Yes
>          Advertised FEC modes: Not reported
>          Speed: 1000Mb/s
>          Duplex: Full
>          Port: Twisted Pair
>          PHYAD: 0
>          Transceiver: internal
>          Auto-negotiation: on
>          MDI-X: off (auto)
>          Supports Wake-on: pumbg
>          Wake-on: g
>          Current message level: 0x00000007 (7)
>                                 drv probe link
>          Link detected: no
> root@arista-Idaville:/home/arista#
> 
> root@arista-Idaville:/home/arista# ip -d link show dev enp2s0
> 2: enp2s0: <BROADCAST,MULTICAST> mtu 1500 qdisc mq state DOWN mode
> DEFAULT group default qlen 1000
>      link/ether 00:1c:73:b4:e3:76 brd ff:ff:ff:ff:ff:ff promiscuity 0
> minmtu 68 maxmtu 9216 addrgenmode none numtxqueues 4 numrxqueues 4
> gso_max_size 65536 gso_max_segs 65535
> root@arista-Idaville:/home/arista#
> 
> 
> Looking at the sources, I see that the following code is commented out
> in igc_phy.c
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/drivers/net/ethernet/intel/igc/igc_phy.c?h=v6.3.2#n136
> 
> void igc_power_down_phy_copper(struct igc_hw *hw)
> {
>      u16 mii_reg = 0;
> 
>      /* The PHY will retain its settings across a power down/up cycle */
>      hw->phy.ops.read_reg(hw, PHY_CONTROL, &mii_reg);
>      mii_reg |= MII_CR_POWER_DOWN;
> 
>      /* Temporary workaround - should be removed when PHY will implement
>       * IEEE registers as properly
>       */
>      /* hw->phy.ops.write_reg(hw, PHY_CONTROL, mii_reg); */
>      usleep_range(1000, 2000);
> }
> 
> Uncommenting above line works. However, Intel support suggested using
> "Go Link Disconnect" (bit number 5) in the PHPM register to turn the
> PHY off. The documentation in the "Intel Ethernet Controller
> I225/I226" User manual suggests accessing this register by following
> the semantics to acquire and release the SW_FW_SYNC semaphore. If we
> go this way, after a few link down/up, I run into error. Please see
> the dmesg logs and my code below. Perhaps I'm accessing the register
> incorrectly?
> 
> bash-4.2# dmesg | grep -B3 igc_
> 
> [  8.936695] Copyright(c) 2018 Intel Corporation.
> [  8.936739] igc 0000:07:00.0: PCIe PTM not supported by PCIe bus/controller
> [  8.981607] igc 0000:07:00.0 (unnamed net_device) (uninitialized): PHC added
> [  9.003934] igc_power_down_phy_copper: 135 link DOWN. retval 0
> [  9.003942] igc_power_down_phy_copper: 142 link DOWN
> 
> --
> :
> [  15.791931] igc_power_up_phy_copper: 113 link UP. retval 0
> [  15.791934] igc_power_up_phy_copper: 118 link UP
> 
> --
> :
> [  71.918835] igc 0000:07:00.0 ma1: Error on hardware initialization.
> [  72.986277] igc_power_down_phy_copper: 135 link DOWN. retval -13.
> [  74.975243] igc_power_up_phy_copper: 113 link UP. retval -13
> [  77.074806] igc 0000:07:00.0 ma1: Error on hardware initialization
> [  78.142251] igc_power_down_phy_copper: 135 link DOWN. retval -13
you hit on PHY firmware bug - please do not use PHPM ("Go Link 
Disconnect" (bit number 5)).
> 
> --
> :
> [ 134.156688] igc_power_up_phy_copper: 113 link UP. retval -13
> 
> bash-4.2#
> 
> 
> 108 void igc_power_up_phy_copper(struct igc_hw *hw)
> 109 {
> 110   struct igc_phy_info *phy = &hw->phy;
> 111   s32 ret_val = phy->ops.acquire(hw);
> 112
> 113   printk(KERN_INFO "%s: %d link UP. retval %d\n", __func__,
> __LINE__, ret_val);
> 114   if (!ret_val) {
> 115     u32 phpm = rd32(IGC_I225_PHPM);
> 116     phpm &= ~0x20;
> 117     wr32(IGC_I225_PHPM, phpm);
> 118     printk(KERN_INFO "%s: %d link UP\n", __func__, __LINE__);
> 119     usleep_range(1000, 2000);
> 120   }
> 121 }
> 122
> 
> 123 /**
> 124 * igc_power_down_phy_copper - Power down copper PHY
> 125 * @hw: pointer to the HW structure
> 126 *
> 127 * Power down PHY to save power when interface is down and wake on lan
> 128 * is not enabled.
> 129 */
> 130 void igc_power_down_phy_copper(struct igc_hw *hw)
> 131 {
> 132   struct igc_phy_info *phy = &hw->phy;
> 133
> 134   s32 ret_val = phy->ops.acquire(hw);
> 135   printk(KERN_INFO "%s: %d link DOWN. retval %d\n", __func__,
> __LINE__, ret_val);
> 136   if (!ret_val) {
> 137     u32 phpm = rd32(IGC_I225_PHPM);
> 138     phpm |= 0x20;
> 139     wr32(IGC_I225_PHPM, phpm);
> 140
> 141     phy->ops.release(hw);
> 142     printk(KERN_INFO "%s: %d link DOWN\n", __func__, __LINE__);
> 143     usleep_range(1000, 2000);
> 144   }
> 145 }
> 
> What is the preferred way? We are using linux kernel version 5.10.165
> but I see the same code for igc_power_down_phy_copper() in the kernel
> version 6.3.2.
> 
Preferred way is IEEE via MII_CR_POWER_DOWN bit - this is a line in a /* 
comment */
I mask this code due to a problem with PHY firmware and I would prefer 
not to release it meanwhile (I am not sure it is finally resolved). We 
need to run the validation cycle over a wide range of platforms before.
> Thank you.
> Prasad
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
