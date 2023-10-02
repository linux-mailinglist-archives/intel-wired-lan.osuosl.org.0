Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 46CAF7B5ADE
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Oct 2023 21:06:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 86F2741755;
	Mon,  2 Oct 2023 19:06:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 86F2741755
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696273587;
	bh=OGSIFo1RKbWzT4ha6r0RSknXdXkVA7GF/+uLUscK/PQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tcqsGf+otDpoUQ5ghKSTrR1y7DlpACYe4V2MoQFOgJrpe6VB9+WZwMUhofhx2pGYf
	 S2wUP+/X1Q0LHdwqlHtbbI+2/VGELLDQcuYwxBSDQY+HIeFf6HkebhP7YooTgLkl4g
	 ED8tZsV/XfsgnlwhKA+bNd/fkjHxeMBMRjgNENF7mKT/72lUPWFtoSzhSXgpHD0gEH
	 GlQYaa3RcTrWpmzq2IytWRHKIimyB+B3TkoZVcRnXHaqhsRzMmVsziv2YlUg4OKfV/
	 o+fg/m3NhLOHf2uToN2kSmxqtLQx2o78A/CmGyRSE5qPscN1KNt3jS0Q7OLuBGeKtm
	 HcgQhbLJB8WTQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0jC-pFrbO5_J; Mon,  2 Oct 2023 19:06:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E090C414E4;
	Mon,  2 Oct 2023 19:06:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E090C414E4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1BDAD1BF3DD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Oct 2023 19:06:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E755F81E17
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Oct 2023 19:06:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E755F81E17
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tAQ1hMGenuSx for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Oct 2023 19:06:18 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8A1DC81E08
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Oct 2023 19:06:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8A1DC81E08
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="373049428"
X-IronPort-AV: E=Sophos;i="6.03,194,1694761200"; d="scan'208";a="373049428"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 11:16:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,194,1694761200"; 
   d="scan'208";a="1619261"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Oct 2023 11:16:16 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 2 Oct 2023 11:16:13 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 2 Oct 2023 11:16:12 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 2 Oct 2023 11:16:12 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 2 Oct 2023 11:16:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SQaFgQqyth761qBpR2w0aGJo9kj9KTwtqsujIp55hcWqt2co2Zar6fVrE5iRShaWRFuBrcOjEoFaeOOFi7L8Or6KSV6ymnzRoooJgFQnqYXQVwYDisXV/8GUtFe04FKBdRCM2+pYiV7DXbglVe+bVxBEWrIuISJGdeG4cCnZC3GcsqqXWTd8RtewVDcJV08xeUWqGAR+X9gh5T5AOJfwAzH0Z+A2ZescvxOql+ekNsIqrf3xigatD51Mvhpb1UkjiBWzKwpEIO8zDRA63ShQxNq2MAYp/IPKDk28ppbaJWD2I39HmWaAI93do1d4KkqLRsJ9WwpeB7y4UNCQXyycbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wIC77Gr1DV5hCrrDxqsAwK6eEI8AEQOxwGBPujzpMak=;
 b=OkSmPxOE5vVB/qA5aYKVyAYjlkN7DMw5XFS3f80EUBopgRrdDZXbKKstdCuSz7GJtGhY2UR35l19U2y+Z9+enPkvCrkWUZtvrV4Jwecsw8y/eI4NZJwkE2gSACiiGqhQEAcOBFwZmMZ8Ve0JPW+Bsxj/B1pf3LjczoCT9TAPa3LwbaQtCp0t8VoBk8HIf15bHLVp9FvpKYmuEINDmoizJY3BbnccSZ8ZAiPbJ9WL0kIME1OZxqddUDhNPx03ftANe9KH7amYy7pqC6YDo8ynBvBVzD5ivhRDGF9ASSjZ1xLKKzzYDaryaljLpWMkvrxuChR05+qdPKV0xXc1lb4rew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by SA3PR11MB8074.namprd11.prod.outlook.com (2603:10b6:806:302::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.28; Mon, 2 Oct
 2023 18:16:10 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::9c1c:5c49:de36:1cda]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::9c1c:5c49:de36:1cda%3]) with mapi id 15.20.6813.027; Mon, 2 Oct 2023
 18:16:10 +0000
Message-ID: <de02a6f4-b0e7-3ce0-9928-7eedbbc810fb@intel.com>
Date: Mon, 2 Oct 2023 11:16:08 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.15.1
Content-Language: en-US
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20230919212959.1939749-1-jesse.brandeburg@intel.com>
 <1cc59274-4555-409a-9f9b-16707f832b52@molgen.mpg.de>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <1cc59274-4555-409a-9f9b-16707f832b52@molgen.mpg.de>
X-ClientProxiedBy: MW3PR05CA0029.namprd05.prod.outlook.com
 (2603:10b6:303:2b::34) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|SA3PR11MB8074:EE_
X-MS-Office365-Filtering-Correlation-Id: b9ae1586-e777-45bf-3c01-08dbc373a784
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: d1uPxfroGTOTnhKIOgqEe1bKnw0INFVln9PILNp0B434lM62enFpbYqOb5OLxjB383oCzH/ePr7hpZKvHmTxKq83lXZ0TG+BFlwKEapVuTOjhKcZusrXseol2cMSZP8W3UNBflcYsKxgDeogU+RC+sp7bqc2VzH4VVX/c2SRG59EkoktqtVzxgIb3I/XUp59swFzYE4MrkwFzizYl5iYEFPwwxDqwZphMSeVtEhusAJlBhIkPGYbzAAWxJ+6IJ8nMpmIQ/EAVFbQLYrr5oMXavaQGYECPLZS407aebtIsgQQIrXmg3kJ2b6jk6S5/tOZQUI9tbwICQI1AyhcARBlb2G3brErnBKEXMDm7OIxdF2Mh5PYryju+Ooa2FxEXHYFL3bK9Jg1Ofu50jMGl9eBo7AwXJDY0lzo16KXVKkbxXrfeZQylSVgfGVR6FlHzcjawfWHR4ubeCixmusMlMujxzb5bHqYmMUjeVnw169IdTj0+68b/3+CDFRQ8XC+RLkLfdVFQbTKnIB4uYtMKIBqNq8M6Oqf3/yc4VRvkXGF55peDrsXNI4Acej2Zpe6jEY7/yN/dizi0dk1zwLfne1fHRGRJTAdeN01EuLKZYKQockqG63hFX+18tjmgEQNW1Y8aOw87lT+w7nbu35eS4BItA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(346002)(366004)(39860400002)(376002)(230922051799003)(64100799003)(186009)(1800799009)(451199024)(2616005)(86362001)(53546011)(6506007)(6486002)(478600001)(4326008)(83380400001)(26005)(44832011)(8936002)(66476007)(8676002)(41300700001)(38100700002)(66556008)(2906002)(316002)(6916009)(66946007)(31696002)(5660300002)(82960400001)(36756003)(6512007)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bTlXQlYvY2k2bjlKc2lDVTB2UTc2U25NMWhFYm03eFdtaFdIVzFnclFCTUVq?=
 =?utf-8?B?aVJvQjRGQy9RcTNoSjkyVzBNOURVNHVvNllyUjNuczRIQkY0TDFYZ08zSDVF?=
 =?utf-8?B?ekN0MVI5OVh1VW1qS1JnblNXMFFkWGF6NHdIZ21GWC9ob1cyWjcyS0hZMzdx?=
 =?utf-8?B?ZHl2dlk2MXl2TTlBQ2w0bmNhTW81TEJJNk1tYmZMWU1nTmFCWW5JTVNqWFg5?=
 =?utf-8?B?Qm5Hb0ZyT1ZwSnpxREdZeEU2ODc0MTNTbk9mUS9hZktPNVFaWkNaSlN4V2Nl?=
 =?utf-8?B?Rjd3dkVNQ1czTm1CK3dkZk9OSEFPbEFVTXZQdFRCU2JCR0dGU1NTaFltcGlZ?=
 =?utf-8?B?OU5IUFZtbjdDU3NFTTB0VzVoVUpoTnd6SHRYb21XSzF4T1Q5eU5Ha0NVWmpz?=
 =?utf-8?B?SFNyQnhNTTZURGtacVBLcndvb1dIRnVKWjFnVUJxYnQrV0pLWFU4OE8vVG1H?=
 =?utf-8?B?dElwNDFGV3BkMkJURjA2ZFU3OXVlbVB2WXZ3Wk9KWU94ZlUyZHZ3QzFtTWVI?=
 =?utf-8?B?clJPayttak55S0RhdDI3WXI5YnkvZjVJYjJFTXRBVytNTHJDcjlnbmo1UGJO?=
 =?utf-8?B?c1JoRkg4dkxZUXFWVmluRllGOFlsdkMwWURxRklKdHU4Vjk0aWFBSnB3a20w?=
 =?utf-8?B?ZDZNbCs2N2o2UGdWYzdVdi9qVEJqcHJRWGZhTUh2UUVQdFNkOHVPUXZOblJI?=
 =?utf-8?B?QTl6RHRVZ1NJTmpQZEw2dTRKNXlQeHFuczVZWlJnd0l2QnRVQkJzUGIxUzdv?=
 =?utf-8?B?emhxZi9obXJQYWwzUUF3ZEwvLzluWTN5TjZpdVlrbTlvaXFoVTg5ODRBUGJF?=
 =?utf-8?B?NEhPMzcwSjk2OFU5OTFYaXdSVFZEZFBNa09xNHBDa1BnRFN3SFRwSFYvWEl3?=
 =?utf-8?B?d051UDhRVG55dERqb0JjbHZLUmR5TGV1dHUwV1NORFcrL2owMDkydWpMbVpC?=
 =?utf-8?B?T0gvQkw5ZHRKbEFXZ2UwczB1cUpZUWFZNXp2bUk4VG1kYkt2ZFdacFR0MTAr?=
 =?utf-8?B?SUE1d01GWnFvc2VRQUJ5U3lGeEQ1WTg0cVJyeHd0ZUY5YTRucE9meTRsV0ow?=
 =?utf-8?B?N2F2Y1NBc1h6R3IxZGwwQ2lzVCtBUTNSVEZlVVpHaURiMUJnM2JPTHA0bGZU?=
 =?utf-8?B?Ky9pd3FZMnJEK0NqdzFob1lxNGpWNDNZc3BOa1pEWjltWmlaeVhvaUZWNlg4?=
 =?utf-8?B?aWtHL05QNzgyaHVXeGhuT3lWZmpyQXBXd1E5aGRUVTlUeFdnS1B3MlU1bjdh?=
 =?utf-8?B?ZDlHaDNWd0FBWmdTVnY1VnpFbkZBeFBrcEI1YkNjaHdoWCtuNVhKUUJJbSsz?=
 =?utf-8?B?aWlJcVgydW9SOTBpVjhJUjU1cktjUmRjMlpXbi80NGxVYi9rWDZiOW5BSGVl?=
 =?utf-8?B?dlU0ejdqMTFTRFJTeTBIaU9IaWJiVXk0U25Da0Rndm5obldNdFBxODdoOXZP?=
 =?utf-8?B?TG4vMVIwUEJvTnZHVXljYmxEc1VPc0lSMm1UakR0UzMxbHNiMjZYOUVTeERG?=
 =?utf-8?B?U0dYNk9NVEdIeTBlUnBhZHBGWmw3UGpEdVBGYUFVSHBIWHc0dThSNHJQZjdm?=
 =?utf-8?B?MS9TcGFMcWljeklqM0Z6cW5XSk1kanpxNjdOeDQ4NFRBUGcxNkpKb0NmMldq?=
 =?utf-8?B?UFN3eEZHYTIrSUZwSHRJaFpNQVJGMDhaMmtLZXdyVEgvaVowRnhydk9pWkZq?=
 =?utf-8?B?aTFCb3lxRVQxTmh1YVJ4QnZnNkNUb1FMNFk5MnNXK2R2YnMvS2pia1lZb2I3?=
 =?utf-8?B?MnFlWWZMTThRUWZXRHF0YjdCUXlDQUlVeU9VZiswWUZQMy9YMDhHLytJMXpW?=
 =?utf-8?B?SWJScHB2TW1rWkZMdEJ3dHcxVklUS3IvRW9WNDdFUUhOMDNEN2JZWFRMRzd0?=
 =?utf-8?B?ODVLdGM0by90TXVCUjdCUzVWMlhvWFdGNDRtdFROSG1PT0d4Z1MxK1k0bCsw?=
 =?utf-8?B?Z2RIN1NuTzJNS0M0ZmVzYkwzYUNwVnlQQ2c1NDliM1NBRlVaalZnV2pLOU9T?=
 =?utf-8?B?R09DbHMwY2N6cjBmRVJ5NUVwbE41STJrdzdoR0VsU2VFQjlDUGlOVGZ4dTNL?=
 =?utf-8?B?TTEyMkxHTlczRDFOd2Nyb3ZZTHdiWUV4U09TMUZoQ21jK3RRR1IwVk9ZRTls?=
 =?utf-8?B?WUZTU1dQeFMxaUdSeVhMQUdLdDJEWWZ6YUl1V2syRDdCdnlJSFFwZEZBOGlI?=
 =?utf-8?B?WEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b9ae1586-e777-45bf-3c01-08dbc373a784
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Oct 2023 18:16:10.4135 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6QNDx1JMSHdjjq4OO0k1sr0XMWRQtbb5qMkMoAfBBo+SFkKX6eIccraBj7K0/4IoF63LxjPXOX0IkCtcXLFUgNRc/WwdQwHKKKSKEvvyzvc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8074
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696273578; x=1727809578;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VuRWihod76+kTh39t4K3QyTN+1VW1IjaQYF6nlPkXeA=;
 b=Djrte9CzlTgoNCE69pQSvpXH/UTowNR7lBmf560WpxZt0AdSwhDapkpj
 DYgXedVCvbSl7p6M+5r4SYyAQOlhlQAvGISTV0DcwpsAdu8oAxDWcSsvv
 pi4FQhcfeuEyIvxbtgCaEuVJvhUFzE+CGUXOYPAdkIDXb77xT2KHguTlk
 MRUk15WuJKs4kFQFjrg+79tiA0cIfqgSfv1lIYUr9DB0ltk2cKjEZPqGU
 RTBAnTSUEraNex6zOtAYxJ0z916z7EZT6IKTCoRBm5+uvi8paxWi/Kc4u
 ECPAFMoBuXgiGIke6CKzGFhXqb/uU9TuWLJ2g3ZwX9ZKvliZ8rVQWmvbC
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Djrte9Cz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: reset first in crash
 dump kernels
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>, jkc@redhat.com,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gOS8xOS8yMDIzIDEwOjE4IFBNLCBQYXVsIE1lbnplbCB3cm90ZToKPiBEZWFyIEplc3NlLAo+
IAo+IAo+IFRoYW5rIHlvdSBmb3IgeW91ciBwYXRjaC4KPiAKPiBBbSAxOS4wOS4yMyB1bSAyMzoy
OSBzY2hyaWViIEplc3NlIEJyYW5kZWJ1cmc6Cj4+IFdoZW4gYm9vdGluZyBpbnRvIHRoZSBjcmFz
aCBkdW1wIGtlcm5lbHMgdGhlcmUgYXJlIGNhc2VzIHdoZXJlIHVwb24KPj4gZW5hYmxpbmcgdGhl
IGRldmljZSwgdGhlIHN5c3RlbSB1bmRlciB0ZXN0IHdpbGwgcGFuaWMgb3IgbWFjaGluZSBjaGVj
ay4KPj4KPj4gT25lIHN1Y2ggdGVzdCBpcyB0bwo+PiAtIGxvYWQgaWNlIGRyaXZlcgo+PiAkIG1v
ZHByb2JlIGljZQo+PiAtIGVuYWJsZSBTUi1JT1YgKDIgVkZzKQo+PiAkIGVjaG8gMiA+IC9zeXMv
Y2xhc3MvbmV0L2V0aDAvZGV2aWNlL3NyaW92X251bV92ZnMKPj4gLSBjcmFzaAo+PiBlY2hvIGMg
PiAvcHJvYy9zeXNycS10cmlnZ2VyCj4gCj4gQWJvdmUgeW91IHByZXBlbmRlZCBhICQuCgpGaXhl
ZCBpbiB2Mi4KCj4gCj4+IC0gbG9hZCBpY2UgZHJpdmVyIChvciBoYXBwZW5zIGF1dG9tYXRpY2Fs
bHkpCj4+IG1vZHByb2JlIGljZQo+PiAtIGNyYXNoIGR1cmluZyBwY2ltX2VuYWJsZV9kZXZpY2Uo
KQo+Pgo+PiBBdm9pZCB0aGlzIHByb2JsZW0gYnkgaXNzdWluZyBhIEZMUiB0byB0aGUgZGV2aWNl
IHZpYSBQQ0llIGNvbmZpZyBzcGFjZQo+PiBvbiB0aGUgY3Jhc2gga2VybmVsLCB0byBjbGVhciBv
dXQgYW55IG91dHN0YW5kaW5nIHRyYW5zYWN0aW9ucyBhbmQgc3RvcAo+PiBhbGwgcXVldWVzIGFu
ZCBpbnRlcnJ1cHRzLiBSZXN0b3JlIGNvbmZpZyBzcGFjZSBhZnRlcndvcmQgYmVjYXVzZSB0aGUK
PiAKPiBhZnRlcncqYSpyZAoKRml4ZWQgaW4gdjIuCgoKPiAKPj4gZHJpdmVyIHdvbid0IGxvYWQg
c3VjY2Vzc2Z1bGx5IG90aGVyd2lzZS4KPiAKPiBFeGN1c2UgbXkgaWdub3JhbmNlLCBjb3VsZCB5
b3UgcGxlYXNlIGFkZCwgd2hhdCB0aGUgY3Jhc2hkdW1wIGtlcm5lbAo+IGRvZXMgZGlmZmVyZW50
bHkgZnJvbSB0aGUg4oCcbm9ybWFs4oCdIGtlcm5lbCwgc28gdGhpcyBzcGVjaWFsIGhhbmRsaW5n
IGlzCj4gbmVlZGVkPwoKSSBhZGRlZCBtb3JlIGRlc2NyaXB0aW9uIGluIHRoZSB2MiBjb21taXQg
bWVzc2FnZSwgSSBob3BlIHRoYXQgaGVscHMuCgpJbiBzdW1tYXJ5OiB0aGUgY3Jhc2hkdW1wIGtl
cm5lbCBpcyBzdGFydGluZyB1cCBvbiAiZGlydHkiIHN0YXRlIG9mCmhhcmR3YXJlLCBkdWUgdG8g
dGhlIHN1cnByaXNlIGNyYXNoIG9mIHRoZSBwcmV2aW91c2x5IHJ1bm5pbmcga2VybmVsCnRoYXQg
aGFkIHJ1bm5pbmcgZGV2aWNlcyB3aGVuIGl0ICJwYW5pY2tlZCIKCj4gCj4+IFJldmlld2VkLWJ5
OiBQcnplbWVrIEtpdHN6ZWwgPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+Cj4+IFNpZ25l
ZC1vZmYtYnk6IEplc3NlIEJyYW5kZWJ1cmcgPGplc3NlLmJyYW5kZWJ1cmdAaW50ZWwuY29tPgo+
PiAtLS0KPj4gwqAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWluLmMgfCAx
NSArKysrKysrKysrKysrKysKPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKykK
Pj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFp
bi5jCj4+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWluLmMKPj4gaW5k
ZXggYzgyODZhZGFlOTQ2Li42NTUwYzQ2ZTRlMzYgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jCj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jCj4+IEBAIC02LDYgKzYsNyBAQAo+PiDCoCAjZGVmaW5l
IHByX2ZtdChmbXQpIEtCVUlMRF9NT0ROQU1FICI6ICIgZm10Cj4+IMKgIMKgICNpbmNsdWRlIDxn
ZW5lcmF0ZWQvdXRzcmVsZWFzZS5oPgo+PiArI2luY2x1ZGUgPGxpbnV4L2NyYXNoX2R1bXAuaD4K
Pj4gwqAgI2luY2x1ZGUgImljZS5oIgo+PiDCoCAjaW5jbHVkZSAiaWNlX2Jhc2UuaCIKPj4gwqAg
I2luY2x1ZGUgImljZV9saWIuaCIKPj4gQEAgLTUwMTQsNiArNTAxNSwyMCBAQCBpY2VfcHJvYmUo
c3RydWN0IHBjaV9kZXYgKnBkZXYsIGNvbnN0IHN0cnVjdAo+PiBwY2lfZGV2aWNlX2lkIF9fYWx3
YXlzX3VudXNlZCAqZW50KQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FSU5WQUw7Cj4+
IMKgwqDCoMKgwqAgfQo+PiDCoCArwqDCoMKgIC8qIHdoZW4gdW5kZXIgYSBrZHVtcCBrZXJuZWwg
aW5pdGlhdGUgYSByZXNldCBiZWZvcmUgZW5hYmxpbmcgdGhlCj4+ICvCoMKgwqDCoCAqIGRldmlj
ZSBpbiBvcmRlciB0byBjbGVhciBvdXQgYW55IHBlbmRpbmcgRE1BIHRyYW5zYWN0aW9ucy4gVGhl
c2UKPj4gK8KgwqDCoMKgICogdHJhbnNhY3Rpb25zIGNhbiBjYXVzZSBzb21lIHN5c3RlbXMgdG8g
bWFjaGluZSBjaGVjayB3aGVuIGRvaW5nCj4+ICvCoMKgwqDCoCAqIHRoZSBwY2ltX2VuYWJsZV9k
ZXZpY2UoKSBiZWxvdy4KPj4gK8KgwqDCoMKgICovCj4+ICvCoMKgwqAgaWYgKGlzX2tkdW1wX2tl
cm5lbCgpKSB7Cj4+ICvCoMKgwqDCoMKgwqDCoCBwY2lfc2F2ZV9zdGF0ZShwZGV2KTsKPj4gK8Kg
wqDCoMKgwqDCoMKgIHBjaV9jbGVhcl9tYXN0ZXIocGRldik7Cj4+ICvCoMKgwqDCoMKgwqDCoCBl
cnIgPSBwY2llX2ZscihwZGV2KTsKPj4gK8KgwqDCoMKgwqDCoMKgIGlmIChlcnIpCj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiBlcnI7Cj4+ICvCoMKgwqDCoMKgwqDCoCBwY2lfcmVz
dG9yZV9zdGF0ZShwZGV2KTsKPj4gK8KgwqDCoCB9Cj4+ICsKPiAKPiBTaG91bGQgdGhpcyBiZSBh
ZGRlZCB0byB0aGUgY29tbW9uIFBDSSBjb2RlPyBNYXliZSBsb29wIHRoZSBQQ0kKPiBzdWJzeXN0
ZW0gZm9sa3MgaW4/CgpPaywgSSdsbCBjYzogbGludXgtcGNpIHdoZW4gSSBzZW5kIHYyLgoKCj4g
Cj4+IMKgwqDCoMKgwqAgLyogdGhpcyBkcml2ZXIgdXNlcyBkZXZyZXMsIHNlZQo+PiDCoMKgwqDC
oMKgwqAgKiBEb2N1bWVudGF0aW9uL2RyaXZlci1hcGkvZHJpdmVyLW1vZGVsL2RldnJlcy5yc3QK
Pj4gwqDCoMKgwqDCoMKgICovCj4gCj4gCj4gS2luZCByZWdhcmRzLAo+IAo+IFBhdWwKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxh
biBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5v
c3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
