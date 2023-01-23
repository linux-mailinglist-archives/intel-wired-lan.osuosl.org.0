Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BC885677573
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Jan 2023 08:15:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A1CD8415FD;
	Mon, 23 Jan 2023 07:15:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A1CD8415FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674458127;
	bh=wcqDqa3i4lKwWBQi3MoGSLQKQyToe98CDcfc3CMlydU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=M8AStX88Zd5TnybT4NQ8CxZTbGAN+yH3GsXZwsYepw4SEb+SuMr8Py9B9D3FDhCVD
	 QePH0/fqmiSU2H11pPbR4LrP6H6zxxOvhXE+wz/Ke4yMQZ8bQ0PlbBGHcrbamLXalD
	 +pWse8YE/ZPYBpoWyXFe1V56MGexnb8XoHU5ZDSBWwC8mvIq8oJ0Zl2XeDPCvAUbx4
	 wLulcRL7f3q1QTqiujS91t2NlIOZhSMWq5baXwaNULdYBlDEVNkGUWkdwdX+SS644k
	 2Sb2IKl2sBI+tvjs4nDTwRxWXCV/doQyEteU/4SpVDVpWwhagOvJDHnL53KXMA8afN
	 kX9gay+EE6D/Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ALG9w2wrmz40; Mon, 23 Jan 2023 07:15:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 35EA1415B5;
	Mon, 23 Jan 2023 07:15:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 35EA1415B5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 785201BF36E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 07:15:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 59672403C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 07:15:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 59672403C9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 81FsoCVmp9IR for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Jan 2023 07:15:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E2AC84032A
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E2AC84032A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 07:15:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="326018930"
X-IronPort-AV: E=Sophos;i="5.97,238,1669104000"; d="scan'208";a="326018930"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2023 23:15:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="769691187"
X-IronPort-AV: E=Sophos;i="5.97,238,1669104000"; d="scan'208";a="769691187"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 22 Jan 2023 23:15:18 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Sun, 22 Jan 2023 23:15:18 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Sun, 22 Jan 2023 23:15:18 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Sun, 22 Jan 2023 23:15:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SlN5NLyFTC8gsnnKFuUF5XykY87S5UKQgLYLqWj2EOQ7353cQrSlPMX3RAKRduntgbugtocetAgTCbc8vSHCJecin8aGDSejDOAPiDiFhpjP08FRvaDonfYN5roCg66+QSfsnebhm0bX9neTGimZcxWBMi3crIquYyLDRooE0HqYPHz68ewPpBke/jMm7zvu1qiJUj9moo0or6YuORgOk/qs1nG7eESY1kMyRc1nFSw8VFqsQStR6GP3MZWcwNLtG5Y0ojA1R/mwOWdY0vRAlPBaxKYszdFRRlDXEYFlYKGcn1ehcu1U4SDVg7wIeW/QIAP1YWwiOG2k6oQ97NEj6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bj+rn2DZlQPyFBH/+zNkglpKdsBXxmLXGvZptQ53KoE=;
 b=RJ9VDbYMXmcbTPGzojmhlR+1ascTPW15ZNdko3+4N4piwZER62cN9xn5yzdCzTDj0bZhfBaX7ytx8begf4JFTzzFhgVLOrkYFK0WYJX3b1DEmev6HcLa1kXHpCsCowq9YbcuJ4yuAiJk5OuyOMDjZX7EXbEmNXEJC+jaqxZVvoftP93hT3zUWEHiw5kKcXta+ovDM/9WNNzqcK1SaV2stkh7CBp2o3pEBUJubK17LU9uJD2ioeBy0b0kkmbP3j7AzIOXesLaaND+5LFgEn0VyFxlJQy6qYdEhN5qnWN4hQSTjiHlDS7EYyDXAeozGrjMNSKGTsiN79+PdyO8DuFRhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6738.namprd11.prod.outlook.com (2603:10b6:303:20c::13)
 by DS7PR11MB5989.namprd11.prod.outlook.com (2603:10b6:8:70::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33; Mon, 23 Jan
 2023 07:15:15 +0000
Received: from MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::7c7c:f50a:e5bc:2bfb]) by MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::7c7c:f50a:e5bc:2bfb%3]) with mapi id 15.20.6002.013; Mon, 23 Jan 2023
 07:15:15 +0000
Message-ID: <31d7cee2-86cf-9a57-18bf-db57a9282d15@intel.com>
Date: Mon, 23 Jan 2023 09:15:08 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.6.1
Content-Language: en-US
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <bff5f4d7-bb85-e3fa-b8b1-76d1b8e0133a@molgen.mpg.de>
 <9505bc04-edbd-ab64-bc95-a06150bbba38@intel.com>
 <20e6d930-c50f-45b7-f98e-3d11c35a09d1@molgen.mpg.de>
 <9a5af9c0-e58a-250c-b030-05e3b73035b9@intel.com>
 <53168857-3dd4-17fe-67cb-15ab0c005ca5@molgen.mpg.de>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <53168857-3dd4-17fe-67cb-15ab0c005ca5@molgen.mpg.de>
X-ClientProxiedBy: LO2P265CA0157.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:9::25) To MW4PR11MB6738.namprd11.prod.outlook.com
 (2603:10b6:303:20c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6738:EE_|DS7PR11MB5989:EE_
X-MS-Office365-Filtering-Correlation-Id: f676e57e-4eb7-4c12-1ec9-08dafd11932a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: q1YqISamepfAQofS0aReRAQzbelX8c8yQu2ps7H01zGFeOK8BpFtUMJ3RCNBy6ANTOAXqy6GmgCWhT/J+b9v2a0EjQI+Q4d1FwfHxSBqY+Q+73uF3WGXlz1nm81V9PUBUQhkuazLoaIzqMhx6hsCrfc3TmR7gaKTM+OyOEAsO1d+hZO2eLmPUZw2FYCM6NsswYZPyZnb68Q+jn2W3Yrq5sFtf5F8EcL7/rx0lU5rqd9Q9gc7+c3sQmItEqmJAq8ohyC07wR9QIidP7bQCkglBXkVmRiuFbT3cKw8cO6nufQrMuUGrmIG/w+iYfFIUDOZ3WgDs74G0Uiq3fFZfdZcjSK+wVCc+fhfC3n/tlcyJ1hXaCvfMhIoeEEIXZAGSO+HgT0dIj0oCZzJ3QG6WR+uqV5QBTzQgjIOV9lQ4om5fStQivystL/5PivCI1Hei1urHFq7wQriTscaEeQ+EKxD21+vDJMwQYOzMUXwYxfZO01QbpvqMHyQQpM1au7uVmSkuNa6BdmHq5wL8xRJd6Un4+in1QMG8y3jAfRfjlP9m9KARBpYSODprXtPKq78CeE1wtDdTFNtZMhP4lQJuSYrDuge+S3L59BW+fpi1zaSG0eZ/zjirNDdhTO+cSKbcZsXRq/IejUmA4DEaWkWO9xPRq8WA1TAOCeAJ4MXpfoiayb6UpDYfyq3ICXcz07jYVbY4Lv3Bt+tNH/wn/G8pa4TKSphYDFP0xEiPyEow4eV6tg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6738.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(39860400002)(376002)(396003)(136003)(346002)(451199015)(31696002)(86362001)(6666004)(107886003)(53546011)(6506007)(478600001)(6486002)(2616005)(6512007)(26005)(186003)(316002)(54906003)(66946007)(41300700001)(8676002)(66556008)(66476007)(4326008)(2906002)(82960400001)(6916009)(38100700002)(5660300002)(83380400001)(8936002)(31686004)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ekU1eHVNOStZUDh6RXpadUx0U2E3RXdRZXk2dUJ2dmwvNExXTXEzMVUwSjdj?=
 =?utf-8?B?Y016UmNWOHN4Rmo5YWxxYnplblpHSkVteGJkVkdnNEREdXV0QVgwN2lGY3Jx?=
 =?utf-8?B?bEtnNGozM01YWUo1WmtBZU1GT2hmRTAxQkpyNllKU2JDbFRkNDk1Z0xDeWVG?=
 =?utf-8?B?SENIRC8zdEpaSVhwK1k4Z2NJS0plMlB2Ly90TWpmUEJHcVNiR09id3BPeWhQ?=
 =?utf-8?B?TDh0Tm1yWVJaSWtMRkRBU2dONkxqeHU2elJnT21jUWRnZFhKSGhSdkhWK0FN?=
 =?utf-8?B?ZmdMK0w5TVBGdWZqWURXOWJna0ZPRjJxWjJGTzBYZGlFM2wwQ1pXbG9HZC9a?=
 =?utf-8?B?RXVlY3M1L0M4eFdxejZhQnBBVnJzV1oxVitXUkVwUDJxR0F4VlRpZ0NIMXJr?=
 =?utf-8?B?YWdVUzRBS0taVitiOFpmY1B1TDFKaXVEOE1yd0VORWUwNTdOYVZEYUM0am1p?=
 =?utf-8?B?VUlaZDF2YVZnUXc3cFBUS2Y5U2ZzUEdKM3N3OXd1cnNmSEdSenVkdExGUWhZ?=
 =?utf-8?B?NVNtZEJOc3NjU25lTWV6YXpMR3dXN01nMXVzUW1SczRGb1VmcjduVkZWNTVI?=
 =?utf-8?B?WVpvZ2F2TVVmQUVCMkdXa3JYLzF6QjY2anlMak1sell4SlhPVzUvRGF0M3di?=
 =?utf-8?B?OEpaZENTZkNGTXF2UkhqaVVZcFpXdHNQdVJvanRsWE1LT1phSUc1N2d5Vk5H?=
 =?utf-8?B?dVVRVVlMRXl5cHh4RTdsVkFmcGNKR1l6RFFscmdiTDF6NEQ1NUhxZGtQcUZr?=
 =?utf-8?B?akxhM0lzQ1ZkUGoyVHRUN3NKZ0YzRG41Sk1qMFNBQTNSb0Z4T21NK3FVWU12?=
 =?utf-8?B?cTV2NjhvRURSa3RIdTBLUDJ2RUpJaDJqV2gvbTU0Z0R4aEpxREFJVXAzYnhI?=
 =?utf-8?B?Z0ZYNDRuWWNwcllycytEL2JrQk8zSmhPWndHWXNOVGdEaldvMDNlbkd0OE54?=
 =?utf-8?B?T1RtVk1KVlV4L2tINHZCS2VCZ1dBbDh4SHozeU5HUUhuWGZHVmNyZVpnUG5s?=
 =?utf-8?B?SVNOeFFWNklLNGhGMnlTbHdMaWpBSXl5TkNReW9vbGVUOTlHNjZ6RW8vcVQ0?=
 =?utf-8?B?U3Z3eE1YM20xcWZ1RDRvckFONXo1djhVbXdid3BhS2N2WjF1YkZpVFpsQmNm?=
 =?utf-8?B?U1VoeGVmY1lQcTN1MjhPMkV1K1pwYTkwaVVreExoVWVleHB2SDhqWFBpbmxX?=
 =?utf-8?B?N0JyQnJ4Qkh6eURjWStkKzVHNFczUTAzbWtDMVNkTVpaQkdZMlVxT2ZDbnU4?=
 =?utf-8?B?U09xMnpKTXNrQVBZdE1FR2Z2T3d4eVBlZW5rUU1KUGF3dmJGU2l4SjJQMlg0?=
 =?utf-8?B?YjJPTWVMRVMrQkpZRnJHZWRCVUxjU3FHWUJWcDlGYlE2WEJxaEJuNlNlemx1?=
 =?utf-8?B?SUdrMTd6T3JUaEEwVzd0dmxobTRMRkxTbVljakRqYmJHV0ViY2NiS1cxZ2p4?=
 =?utf-8?B?ZXM4dnEwQlczRGZERnNudk1PQWxDVnRyRm9XN0tNL0sxL3VVb0M4NXJYV3Jl?=
 =?utf-8?B?MUVaUUNDdmFQMmc0UGFQNkx2VjFEZ1FiUzNsWWVQbmpzMlpjTG9JSWx6NTQy?=
 =?utf-8?B?eGhrODZoQVFQVDlNQUZxS3piYzNONWdKVDU0Rm1LZzlSNFNlTVNZTDVUNkQr?=
 =?utf-8?B?WlhLdTdMdnpmTXg5SjhXQ09UVndoVEt2WHI4NWtKZjA0ZVNUR2E0a0poZk5n?=
 =?utf-8?B?MGdLTWxXRWlOdncyR01SdTJuWGtkTnVhUnM5MXZJK0JmSjdEOVlGVE1MUC9C?=
 =?utf-8?B?MXExNHlhMTdoMmhmUlFlSnhqb1VNS0lkZkxnVnUzK2J3ZHB0MEllcXowMnJr?=
 =?utf-8?B?eEkzQXNGQnhWSXl2MjhyOUV3czVKdXg1NDdCSk1vcGhocmVPQUVCR25aWjI4?=
 =?utf-8?B?ekJaUmNlbEpMY2JNSFYyVGVuNkFRcXNpdkJQeVovNXM3MXcrRFlMVEZKRTZv?=
 =?utf-8?B?ZUhDcFBmN2FwNDIrQms0WTI2ZlRxbDY4dUU0WStueStBL2NIa0dBL3lmeWRn?=
 =?utf-8?B?cEtpSVVsTlMyT2h5d0labjlvL3hVeUNKcVFyaXFBbEdXdDVyeHJoeUJudnJK?=
 =?utf-8?B?TVVFY3NjbWRrdmI4bEh0MnB0TkJBR2J1OE11WVF2TlhhdCtQUEtJL3ZVZmRI?=
 =?utf-8?B?ZzhqbDh3d01nazZaWWR1UVgrM2pTcTFZS29Hc1hTYUVnaWJZZVdCeXZSTC82?=
 =?utf-8?B?TGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f676e57e-4eb7-4c12-1ec9-08dafd11932a
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6738.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2023 07:15:15.4597 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3/QvwOugYozV1miTW5xF80pJu4ZTexeTfQmbx/Ib+hLZYDJ5RIhfzxS99Woke6ZOXg2nczy5H+NRwmBXbEUhgQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB5989
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674458119; x=1705994119;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JeY9Q+hOmIlU2jKzj2GdtsI4XtWovcTWRSE5IHVJqw8=;
 b=L7bGhbh1byQY4SAhEEGcgr2QZJyjY2+rdfhRU4ZWZ9dIWlegmxll4Cgm
 nmloc0Nc569E/NUvHiFOw2UzzuNczrtFWJdbyRMzSRg3+AWVQn5zcaQFx
 Efv86JSuKjHNBaClUmL/hbcQDDd+ozawD8qoh5SskiSJ1ypIKWq+NRka6
 9KpiovqScPXykV1vL6JhXX6NOjkYHwXNw90UAFQjg37cm3nYmVBSuPrBF
 epck3g6ia2Z+/z5rrHqskXb56L6kRxyhdBhH6vsY6kOh5r8+6ovDxjRVo
 z2kGb4op9uY8/7/KoVnSj8AiNVb/ZL0hCTFn5NBMsHmsgQoPjSdIuPL27
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L7bGhbh1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] I218-LM uses > 1 W with low traffic
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
Cc: Dima Ruinskiy <dima.ruinskiy@intel.com>, intel-wired-lan@lists.osuosl.org,
 "Avivi, Amir" <amir.avivi@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMS8xOS8yMDIzIDE2OjE1LCBQYXVsIE1lbnplbCB3cm90ZToKPiBEZWFyIFNhc2hhLAo+IAo+
IAo+IEFtIDE0LjA0LjIyIHVtIDA5OjA3IHNjaHJpZWIgTmVmdGluLCBTYXNoYToKPj4gT24gNC83
LzIwMjIgMTg6NTgsIFBhdWwgTWVuemVsIHdyb3RlOgo+IAo+Pj4gQW0gMDcuMDQuMjIgdW0gMTM6
MDMgc2NocmllYiBOZWZ0aW4sIFNhc2hhOgo+Pj4+IE9uIDQvNi8yMDIyIDEzOjA5LCBQYXVsIE1l
bnplbCB3cm90ZToKPj4+Cj4+Pj4+IE9uIGEgRGVsbCBMYXRpdHVkZSBFNzI1MCB3aXRoIERlYmlh
biBzaWQvdW5zdGFibGUsIFBvd2VyVE9QIDIuMTQgCj4+Pj4+IHJlcG9ydHMgdGhlIG5ldHdvcmsg
ZGV2aWNlIHVzZXMgb3ZlciAxLjUgV2F0dCwgd2hpY2ggaXMgYWxtb3N0IHRlbiAKPj4+Pj4gcGVy
Y2VudCBvZiB0aGUgd2hvbGUgc3lzdGVtLgo+Pj4+Pgo+Pj4+PiDCoMKgwqDCoMKgwqAgMS42MiBX
wqDCoMKgIDQzNSw5IHBrdHMvc8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBEZXZpY2Ug
Cj4+Pj4+IE5ldHp3ZXJrc2Nobml0dHN0ZWxsZTogZW5vMSAoZTEwMDBlKQo+Pj4+Pgo+Pj4+PiDC
oMKgwqDCoCAkIGxzcGNpIC1ubiB8IGdyZXAgRXRoZXIKPj4+Pj4gwqDCoMKgwqAgMDA6MTkuMCBF
dGhlcm5ldCBjb250cm9sbGVyIFswMjAwXTogSW50ZWwgQ29ycG9yYXRpb24gRXRoZXJuZXQgCj4+
Pj4+IENvbm5lY3Rpb24gKDMpIEkyMTgtTE0gWzgwODY6MTVhMl0gKHJldiAwMykKPj4+Pj4gwqDC
oMKgwqAgJCB1bmFtZSAtYQo+Pj4+PiDCoMKgwqDCoCBMaW51eCBlcnNhdHogNS4xNy4wLXRydW5r
LWFtZDY0ICMxIFNNUCBQUkVFTVBUIERlYmlhbiAKPj4+Pj4gNS4xNy4xLTF+ZXhwMSAoMjAyMi0w
My0yOSkgeDg2XzY0IEdOVS9MaW51eAo+Pj4+Pgo+Pj4+PiDCoEZyb20gYXRvcDoKPj4+Pj4KPj4+
Pj4gwqDCoMKgwqAgTkVUIHzCoCBlbm8xwqDCoMKgwqDCoCAwJSB8wqAgcGNracKgwqDCoCAyNDIx
IHzCoCBwY2tvwqDCoMKgIDIxOTQgfMKgIHNwIDEwMDAgCj4+Pj4+IE1icHMgfMKgIHNpIDE1MDEg
S2Jwc8KgIHwgc2/CoCAxNDAgS2Jwc8KgIHwgZXJyacKgwqDCoMKgwqDCoCAwwqAgfCBlcnJvICAg
ICAgIAo+Pj4+PiAwIHwgZHJwbyDCoMKgwqDCoMKgIDDCoCB8Cj4+Pj4+Cj4+Pj4+IFNvIEkgcmVj
ZWl2ZSAxLjUgTWJwcywgYW5kIHNlbmQgMC4xNCBNYnBzLgo+Pj4+Pgo+Pj4+PiBJcyBzdWNoIGhp
Z2ggZW5lcmd5IHVzYWdlIGV4cGVjdGVkIG9mIHRoZSBuZXR3b3JrIGhhcmR3YXJlPwo+Pj4KPj4+
PiBJdCBpcyBub3QgdGhlIHBvd2VyIGNvbnN1bXB0aW9uIHdlIGV4cGVjdGVkLkhvdyBkbyB5b3Ug
bWVhc3VyZSBpdD8gCj4+Pj4gKGFzIEkga25vdyBwb3dlcnRvcCBkb2VzIG5vdCBzaG93IGl0KQo+
Pj4KPj4+IE9uIG15IHN5c3RlbSwgUG93ZXJUT1Agc2hvd3MgaXQuIFRob3VnaCBtYXliZSBpdOKA
mXMgYSBidWcgaW4gCj4+PiBQb3dlclRPUOKAmXMgcG93ZXIgdXNhZ2UgZXN0aW1hdGlvbiBhbGdv
cml0aG0uIE5vIGlkZWEuIEF0IGxlYXN0IHdpdGggCj4+PiBubyBuZXR3b3JrIGNhYmxlIGNvbm5l
Y3RlZCwgaXQgc2hvd3MgemVybyBXYXR0cyBiZWluZyB1c2VkLgo+Pj4KPj4+IMKgwqDCoMKgwqDC
oMKgwqAgMCBtV8KgwqDCoMKgwqAgMCwwIHBrdHMvc8KgIE5ldHp3ZXJrc2Nobml0dHN0ZWxsZTog
ZW5vMSAoZTEwMDBlKQo+Pj4KPj4+Cj4+Pj4gV2Ugd2lsbCB0cnkgdG8gZmluZCBvdXQgYWJvdXQg
cG93ZXIgY29uc3VtcHRpb24uCj4+Pgo+Pj4gVGhhbmsgeW91IHZlcnkgbXVjaC4KPj4KPj4gVGhl
IHBvd2VyIGNvbnN1bXB0aW9uIGR1cmluZyBub3JtYWwgb3BlcmF0aW9uIG1vZGUgZXhwZWN0ZWQg
dG8gYmUgfjYwMG1XLgo+IAo+IFdpdGggTGludXggNi4xLjQgSSBzdGlsbCBzZWUgaGlnaCBwb3dl
ciB1c2FnZToKPiAKPiAgwqDCoMKgwqDCoCA0LjAxIFfCoMKgwqDCoCAyNiwwIHBrdHMvc8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBEZXZpY2UgCj4gTmV0endlcmtzY2huaXR0c3RlbGxl
OiBlbm8xIChlMTAwMGUpCj4gCj4gRGlzY29ubmVjdGluZyB0aGUgY2FibGUsIGl0IHN0aWxsIHNo
b3dzIGhpZ2ggdXNhZ2U6Cj4gCj4gIMKgwqDCoMKgwqAgNS4zNCBXwqDCoMKgwqDCoCAwLDAgcGt0
cy9zwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIERldmljZSAKPiBOZXR6d2Vya3NjaG5p
dHRzdGVsbGU6IGVubzEgKGUxMDAwZSkKPiAKPiBXZXJlIHlvdSBhYmxlIHRvIHJlcHJvZHVjZSBp
dCBvbiB5b3VyIHRlc3Qgc3lzdGVtcz8KSSAgZGlkbid0IHJlcHJvZHVjZS4KSSBkbyBub3Qga25v
dyBpZiB3ZSBjYW4gdHJ1c3QgdGhlIHBvd2VydG9wIHRvb2wuIChMQU4gcG93ZXIgY29uc3VtcHRp
b24gCmNvdWxkIGJlIG1lYXN1cmVkIHZpYSBhIHJlc2lzdG9yIG9uIHRoZSBjb250cm9sbGVyIGNv
bm5lY3Rpb24gbGFuZXMuKQpEaWQgeW91IGNvbnRhY3QgeW91ciB2ZW5kb3JzIHJlZ2FyZHMgdGhp
cyBwcm9ibGVtPwo+IAo+IAo+IEtpbmQgcmVnYXJkcywKPiAKPiBQYXVsCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGlu
ZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
