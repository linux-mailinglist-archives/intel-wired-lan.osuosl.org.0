Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CBFF974CF2F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jul 2023 09:55:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3C0C6404E9;
	Mon, 10 Jul 2023 07:55:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3C0C6404E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688975755;
	bh=upwPiiLhYDfuqA0GAJvc/RMJmkHVISklTr+T/RC33p8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DBqWPElL8KY543lgajM60x3hZy/6kws9y12vmWCEbJjp0iePOnxrMZmLV0TjyCNFa
	 ufofE9lBmiUu/gGI3vaH9FVQLcubu+SDt1+8LEa7ZPo6fYsgfB7w71tlsKkRWgtrT5
	 5U+ivazP8rTA4HwW6lwYLO24abTpe97AWQRRpyG04jD1duBi1LnQ1Lh0a/k9RrFKpu
	 MraBnx85Mdea7PhezkaD5TwS3BACbkDeMyczLtsIXlZcVqpLXJlBcK84XaPlr92ieZ
	 /V5W2FETP8wCe2WBogcLLcoIfcgzl+34OKrqwGapPNQ0C1aNQU7o1fRowDEh5TMfMb
	 hIoeAgzg3sn+g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vzEOIVuKGUTw; Mon, 10 Jul 2023 07:55:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CFFEC40087;
	Mon, 10 Jul 2023 07:55:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CFFEC40087
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 902BC1BF47F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 07:55:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 676F681762
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 07:55:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 676F681762
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a2oJIGPZHHtd for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jul 2023 07:55:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6C53E813DB
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6C53E813DB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 07:55:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10766"; a="349081510"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="349081510"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 00:55:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10766"; a="755904983"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="755904983"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 10 Jul 2023 00:55:46 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 10 Jul 2023 00:55:45 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 10 Jul 2023 00:55:45 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 10 Jul 2023 00:55:45 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 10 Jul 2023 00:55:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WiSW5Lr8kjUlG9rp6OeisHRhWq+9xasWJetud0Iit60sXyxK47W4AO8KSFJBiIiTAY0jAlGOL6/SVlFMA/RFZ/Te1doTptl+gqSSTT259Y1kSc0fWhXFf46ua2Amicu3fzJPiwbG5yzJX+qPA3chyCOCoNgCqp45EBMZje+rDHzY9SAvKKk+OIo1/PH8CnanflG6Q07KwwhpNSBBG53/vpN/0o2JSVAI5eZaAVXzUv7u2vhorsJZJ4HLl0q9xbjITKLaz4RywS1QW/9e3k9xeUQBMRcDrDxgLFn7eL3SJxnQoNAnpsYeC+u1UOe1hM/qu/5tadB0U1b3KfAgaK0FaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/NHEYXCpMKLLIsRvJPmnjg4eBM+J0pYr5cXS4psZVuE=;
 b=PUPPeN916J+luEyzNMRWUq6Wct3jm6d2d4r0gQsvup9IRa0sSO8S+SIXEzOlLO15bYdBFRLEClwa/fSOxy/uzeOHz4s+3D9Seo0/rBZ0isT12UzjsYYTfDLyPccMumGksEHQRjvNYAjIuPrVtkXlxcf1Z13VKTe87KO1h6Lk1wW4g0yIE6aAh+KsGG7A27eiDLEDH2/nzpKI1VxXgYkrgnuULSHcQOy4mDvhHFNhZU6azrf87p5LylnhHblXfB9Vo7PGcfNtF23JaE6ERYH7Hx9kuiT3S/FNBgTv9EZBcQ6LcOOw2NferVMJXLbla03m/3eXydq1KTmDu/vNUcfRrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6738.namprd11.prod.outlook.com (2603:10b6:303:20c::13)
 by BN9PR11MB5385.namprd11.prod.outlook.com (2603:10b6:408:11a::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.31; Mon, 10 Jul
 2023 07:55:43 +0000
Received: from MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::8029:1845:3559:3560]) by MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::8029:1845:3559:3560%4]) with mapi id 15.20.6565.028; Mon, 10 Jul 2023
 07:55:42 +0000
Message-ID: <3b1807c0-c0ab-0bf8-e1b2-e3005b677340@intel.com>
Date: Mon, 10 Jul 2023 10:55:35 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.12.0
Content-Language: en-US
To: Yu Hao <yhao016@ucr.edu>
References: <CA+UBctC57Lx=8Eh6P51cVz+cyb02GE_B-dWnYhffWoc-nm7v6Q@mail.gmail.com>
 <9fff2b17-0b66-93a0-87aa-ca6479cb0663@intel.com>
 <CA+UBctDVMXGcCi1ZVepNCGSZvhw4OR8fqWOOQjLkOQ6NXNAnJA@mail.gmail.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <CA+UBctDVMXGcCi1ZVepNCGSZvhw4OR8fqWOOQjLkOQ6NXNAnJA@mail.gmail.com>
X-ClientProxiedBy: FR0P281CA0100.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a9::6) To MW4PR11MB6738.namprd11.prod.outlook.com
 (2603:10b6:303:20c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6738:EE_|BN9PR11MB5385:EE_
X-MS-Office365-Filtering-Correlation-Id: 9e3d8a3a-aacd-4af5-c4fc-08db811b0f6f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yEByvcuHY/aa2nznlp4OP07f66MWjO89I+UWqy7NJ1B070Mi/szfLb7zsPp1ul0DzpcTMPTnCxAXeytmxTlc0D73Hgluq+2h2fJ5n1KDcV9JZvq4h7mLUM3eLptTPui/7PNM4WDeIvfa23yEKEmvUf2x8KKkJw+reS7/RoRFKR7qd40R0NoJ4bCFR2bIMaMe001hDT0egFe8cgZpYD0B0mX9D0JJCiRRq24+2KxlCesO8QHBPaod4Eh9dv87pnTkJgM5HKp122vQK8BTwCM+X7ved33RNK7gj+ZTA3hnt78V0LfuPg1ZCep4dR8L9iC5H8x2gTwR7PzyJvQQFLQMWhHTRP/aB+OvuLlSaVGdDKSMEyqNthtk4fUc/T/DgRc6ZAz6bc+lVrrnkyc6jtXofVxsaRqh68UWkNhihT8pVmvfPT2u6cT6UKkNSXt40LL1SdStQeqtR5eyFVmq4XIMtcYVoL6fww6V1ppRg9VpLHB6d1RoW+lYxYkJpCIVZ2D7Q9iG9UvVeF0tXZKP3jei/9A9+PK97c45Gu8wA3w0La+ObMITktnUM9nQZj6qprVXCvmvlCRQzJwnug2l6IKdyE4fjkodYMDE+WHOKz67UD5VbOYMZuOk2xE3lUd9bzzS9N1XYSEMiqnNEMdiaGoxnw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6738.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(346002)(39860400002)(136003)(396003)(366004)(451199021)(5660300002)(8676002)(8936002)(316002)(66946007)(66556008)(66476007)(31686004)(41300700001)(2906002)(6916009)(4326008)(54906003)(6666004)(6486002)(6512007)(107886003)(53546011)(6506007)(26005)(186003)(83380400001)(2616005)(38100700002)(478600001)(82960400001)(36756003)(86362001)(31696002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eldHQWg5K240M0tqZk5oVUVLM2xYb3N6RjNaVFhtcFUxeUhUYlEyVEY4bFZQ?=
 =?utf-8?B?cGs5eFRFRUE3T0RXUklOTklKU3JzTmpSQ0hBQ0ZUUUVlNDlmVloyelF5QUU5?=
 =?utf-8?B?dWxEMWJRcFFUMkI3THdwaXgvUUMwMVBDYXR0cWdGbVY5ZVpRNGdyOW9aWVB6?=
 =?utf-8?B?MVptREQwMFd1NDFlV2Z0dktXNm9jL056QWdHTHpzYVd5bk1za3BPeXRTSElr?=
 =?utf-8?B?SVFsUmFHSDlxeUV3Y2Q4V3VxVC8zUkcrSUpGNE9BVlV6dm9lTmhtUnpRYjFx?=
 =?utf-8?B?eGdjbkwrSkpPWlN6MER5d0tVQmhLTGhkM0RoVDlVeEp4RTJnVUJzZWtpaG9n?=
 =?utf-8?B?NVI5WVlFOTQ0d3JPdmZycHJzdStLMzFOaklJSnFVTzBRbWYweGg4dXViYTVt?=
 =?utf-8?B?bDZvSWo0cFdGbU8vOFlKU0xxTk5pTVVhaW92NHRuSy9NYnlidFIzWGZZUmlq?=
 =?utf-8?B?NkZEdmFKaktGOVI2enlCM1NlMzJlY0dGMEhlT01xZXdqWk83ZWRGRlNRL3ps?=
 =?utf-8?B?TFFPWktxRzljM3Zwams2SDhqS21CaUJWRFVaR25YbFl5NUhlajZJTWVxeVcy?=
 =?utf-8?B?MTdObjlkN1JVYWw1b2ZYZWRoK1YxcjY1RTBXakc4RG9HSjdPSmNZazN3Z2M2?=
 =?utf-8?B?L0pvTzQzRjhHVE1VNWNoSGRNanFxNlQ3a3M5WlZrKytxbURUZDF2SHc3NjBl?=
 =?utf-8?B?dUhDbW4ycVRJSkRadExhY0RUTnFGYUFDTDF2Uk9nc0szbmY3UmV2VWFCajBq?=
 =?utf-8?B?dElEaFVpV3RJVVFwSmVPKzdFM0RubHcrN3FuckZyQURxWHlKcjVLUVdZR1lV?=
 =?utf-8?B?UFhvTGJYRG4zTUdDbWJUYy9Ld0xKVmQ4VVFsM2JqV2dCb1p1SGlSNzk1S25k?=
 =?utf-8?B?aXNBQU9qYXZLYWFLcUt0QnJwYmRhL25RT1dEQUxSaHZzcCsrVjdRZzFZSWJV?=
 =?utf-8?B?eWFTbEFIUTdidDVpc3F5RXkvTTcwbjJMNjUxSXJOMlorQWFhU2MvbWNHR3Vo?=
 =?utf-8?B?dVpsVzM2K1NxM1hqVXhQRGUwaDUzS0RvZytqMjNWWXlyeTRFUkU2eUhUQUxL?=
 =?utf-8?B?ajlWcDBKblk5WlExc0JsUVkyQWN3QTNSUW1qUGh1VzlCalM2b2pMQkpSV0Ft?=
 =?utf-8?B?Qk4zRGhRK0lFQko1UTVveG1xMzQwelBEVWVvdFUrVW1OZXJZUXVRWWJzSy94?=
 =?utf-8?B?Z2lDR1FYQ3U4RU1CV0lJSVlWY2hXMGEyS2NReE1KVzB6TDdXSXZOSW4zUUtZ?=
 =?utf-8?B?RDBSU0lXOTA5U3VjOGNxbDlVczNlNlV4c3FCNitQQzVDYTljTE13dU9Va2xW?=
 =?utf-8?B?WFdIME1IbFRSTEhydGtRQlFma25iTGRKNmRrUUU4U3JwblVuTlppQUJlbm9G?=
 =?utf-8?B?OWtpMmF0OG96S1VTWVVxSXhwUFNvblAwT2tGVEpVTkRiaFhjVVRkak1PNWNT?=
 =?utf-8?B?NUpicHMzZ3pMZytpcEEwNWlIbjQ2NzV5WDZjOERZT0VNSzIzS2E1L1FVTm8z?=
 =?utf-8?B?V2xrYnpGSkt0cUcvZjA0VXorWG5aWitGWUNvdXh4WXcrd2dZUkNMZnAyV2NH?=
 =?utf-8?B?anoyZVIyUGZYOS9mK2IyWHpVUW5TMmZXTDVXS2VaUXozZkZFTkNJbndoWEZr?=
 =?utf-8?B?SzJJdTB2QVRIdHh2NzJsMWtUaTNPSVIybVUrMDRqRExCWXo4UUZmREU5WHZk?=
 =?utf-8?B?QzRwMXlLUFlqNktUTXZhOE9xQlFhOU5BYlgwbGZnaDdRZVJnRzNOalNFQXN0?=
 =?utf-8?B?WkFiSkp2SVhYd0JLVHlRQm00cUtYZHc3U29JaCt5bE1hbU1ybmdIZDI1a1Bs?=
 =?utf-8?B?eFVOTXM3ZTgyazBocU9pdlU4K1ZiVko4bDk4NXVYV3IwWjBJWFFsbWV3bTc1?=
 =?utf-8?B?R0V2L0hGZVlUR0FMNGdFWmJpVHRFMWZ4UzR3VEJtS2xFeW9QakozazZHSlAv?=
 =?utf-8?B?OWw5VmQzenQ0QWVKRUVrQitQaVBTTGZObmhZaUVFVnp6UGd5M1UvT29maTFJ?=
 =?utf-8?B?Mkw3UEt2bSt4WjEyN0MvN2pVU1Q5M3VkZDJ2YUh2NjZWM2cwUDQrSUt0c3h3?=
 =?utf-8?B?eUw3ejBvdWlobEJCU2ljeUE3OWJaLzhqZGYxUFl6R1pyWTgwOXRPYitpQUhE?=
 =?utf-8?B?TWpaaU5qUFJPOEphSHQzYkd2UEVrRXMxcnVoeHYyeVhLeTVLOUZhZWpuRjVk?=
 =?utf-8?B?NlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e3d8a3a-aacd-4af5-c4fc-08db811b0f6f
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6738.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jul 2023 07:55:42.9200 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TLQNJ4kBMctwhlSBQT8b3y72/Uy+cS1N8k1UVgR8jBSh/Cz5l3ZAJk//Cm9sqS3EivUY/kVNiC/PSnwH8EgHzQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5385
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688975747; x=1720511747;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2Wi3o8P2G84QB/68Z+5t81eZMTi2b9kMfMRSZTKfRzY=;
 b=BmN4ksUAaEqyQwwMjRokjp2UQT/C98V+vkdQz03T7x6vN2XCh9GThOCO
 aV8iwDtyBq76NoqdIei7U8pLvc4nPsWspa0NcwHem1xczAEs6gY1fftwA
 5K3Xc4V9d1jovbumnbvt7y5gRwBrISTL4hdnrMjBLpyBxJgjn6FLVCvBy
 QkXFv5D+ZUFTKEMmPiqK74RM2ByxKRr2cJylc98gKJF9RQqPesBWThdpF
 orLnbsLc4p5dYLBd2Ot1HKuxCY2Vb1XRlO2P62TEwjr2HuXnfJ9Bp6HLf
 OfKVGzow2cchwk1GpQUM4tl2iXkV31aHl3ktmvRnGWc8t3XEtHaZUjjkO
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BmN4ksUA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ethernet: e1000e: Fix possible uninit
 bug
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
Cc: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>,
 intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com,
 linux-kernel <linux-kernel@vger.kernel.org>, "Edri,
 Michael" <michael.edri@intel.com>, edumazet@google.com,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNy8xMC8yMDIzIDAzOjU1LCBZdSBIYW8gd3JvdGU6Cj4gSSB0aGluayB1MTYgcGh5X2RhdGEg
PSAwIHdvdWxkIG5vdCBodXJ0IHVzLgo+IExldCBtZSBzdWJtaXQgYSBwYXRjaCB3aGljaCBqdXN0
IGluaXRpYWxpemVzIHUxNiBwaHlfZGF0YSA9IDAuCkdvb2QuCj4gCj4gWXUgSGFvCj4gCj4gT24g
V2VkLCBKdWwgNSwgMjAyMyBhdCA4OjQ34oCvQU0gTmVmdGluLCBTYXNoYSA8c2FzaGEubmVmdGlu
QGludGVsLmNvbT4gd3JvdGU6Cj4+Cj4+IE9uIDcvNS8yMDIzIDAzOjEwLCBZdSBIYW8gd3JvdGU6
Cj4+PiBUaGUgdmFyaWFibGUgcGh5X2RhdGEgc2hvdWxkIGJlIGluaXRpYWxpemVkIGluIGZ1bmN0
aW9uIGUxZV9ycGh5Lgo+Pj4gSG93ZXZlciwgdGhlcmUgaXMgbm90IHJldHVybiB2YWx1ZSBjaGVj
aywgd2hpY2ggbWVhbnMgdGhlcmUgaXMgYQo+Pj4gcG9zc2libGUgdW5pbml0IHJlYWQgbGF0ZXIg
Zm9yIHRoZSB2YXJpYWJsZS4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBZdSBIYW8gPHloYW8wMTZA
dWNyLmVkdT4KPj4+IC0tLQo+Pj4gICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBl
L25ldGRldi5jIHwgNSArKysrLQo+Pj4gICAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9lMTAwMGUvbmV0ZGV2LmMKPj4+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
ZTEwMDBlL25ldGRldi5jCj4+PiBpbmRleCA3NzFhM2M5MDljNDUuLjQ1NWFmNWU1NWNjNiAxMDA2
NDQKPj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9uZXRkZXYuYwo+
Pj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jCj4+PiBA
QCAtNjkxMCw4ICs2OTEwLDExIEBAIHN0YXRpYyBpbnQgX19lMTAwMF9yZXN1bWUoc3RydWN0IHBj
aV9kZXYgKnBkZXYpCj4+PiAgICAgICAvKiByZXBvcnQgdGhlIHN5c3RlbSB3YWtldXAgY2F1c2Ug
ZnJvbSBTMy9TNCAqLwo+Pj4gICAgICAgaWYgKGFkYXB0ZXItPmZsYWdzMiAmIEZMQUcyX0hBU19Q
SFlfV0FLRVVQKSB7Cj4+PiAgICAgICAgICAgdTE2IHBoeV9kYXRhOwo+Pj4gKyAgICAgICBzMzIg
cmV0X3ZhbDsKPj4KPj4gd2h5IGp1c3Qgbm90IGluaXRpYWxpemUgdTE2IHBoeV9kYXRhID0gMD8g
SG93IGRpZCBpdCBodXJ0IHVzPyAobGVnYWN5KQo+Pgo+Pj4KPj4+IC0gICAgICAgZTFlX3JwaHko
JmFkYXB0ZXItPmh3LCBCTV9XVVMsICZwaHlfZGF0YSk7Cj4+PiArICAgICAgIHJldF92YWwgPSBl
MWVfcnBoeSgmYWRhcHRlci0+aHcsIEJNX1dVUywgJnBoeV9kYXRhKTsKPj4+ICsgICAgICAgaWYg
KHJldF92YWwpCj4+PiArICAgICAgICAgICByZXR1cm4gcmV0X3ZhbDsKPj4+ICAgICAgICAgICBp
ZiAocGh5X2RhdGEpIHsKPj4+ICAgICAgICAgICAgICAgZV9pbmZvKCJQSFkgV2FrZXVwIGNhdXNl
IC0gJXNcbiIsCj4+PiAgICAgICAgICAgICAgICAgICAgICBwaHlfZGF0YSAmIEUxMDAwX1dVU19F
WCA/ICJVbmljYXN0IFBhY2tldCIgOgo+PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJl
ZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC13aXJlZC1sYW4K
