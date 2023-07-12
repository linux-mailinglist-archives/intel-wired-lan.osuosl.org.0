Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D405751232
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jul 2023 23:08:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BBE4D41D89;
	Wed, 12 Jul 2023 21:08:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BBE4D41D89
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689196137;
	bh=0WTEpuwWHSNQqKdLNpVFxXFViqqFZyvLx0klvDCYtZM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=egsuAvZQmYxzKMPat+sKZwKhjqi2qSeNpdxwCe03ADPXeB6EK300dUSChLnjAZZGV
	 MoAbE5ePaPbmObA6CLpmLtRYk91qNpjcJfM5m/0syYUagyT5JKRhtFJFXWuj8mCHxh
	 cEKW3QR4xHKavezKGIRl7auv9XCufx5JCvlE0ndZPbncw7/bLjKTN/rrG3KlWnLfEX
	 f14JkAygvVwa2fMPfPWiY7gLggYYLRXZ4J9GJZBvYF7c9qEfCAIb6GUhs6XryCKsvo
	 PwmFD4b6Oh0N73lMG+CtSUN9pfqbOV4GyvBX4LgZbZjGA9UWKSe4HVprq1dGu0a+YA
	 YlkoH+U7ubWkg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RqpPiVJXvK-m; Wed, 12 Jul 2023 21:08:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 56C0041C5F;
	Wed, 12 Jul 2023 21:08:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 56C0041C5F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9607E1BF3A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 21:08:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6DB436124E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 21:08:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6DB436124E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Is1QmMR0UxMx for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jul 2023 21:08:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6E33860F0B
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6E33860F0B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 21:08:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="365040483"
X-IronPort-AV: E=Sophos;i="6.01,200,1684825200"; d="scan'208";a="365040483"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 14:08:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="845784280"
X-IronPort-AV: E=Sophos;i="6.01,200,1684825200"; d="scan'208";a="845784280"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 12 Jul 2023 14:08:43 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 12 Jul 2023 14:08:42 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 12 Jul 2023 14:08:42 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 12 Jul 2023 14:08:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XeJWQ4b6GQSnHc4quRh8MSE1l1vitLksRNzWrfidpnLBiEYnhx8Ne2vCUCjm8LBF4SzyNFRRYYETPLztH40USFdCeKbgJszuOjyLP74C306qAtandqoe4xilYZbaVKHQplVGyUswqNJ37Rm0b1WRxaJ9tqXCRj/7aWP7En4EaUmuJOmdGi92qjsXW6ibQaw4A5u17r0/bNCwamv6f/mzvDCySf+pMMbf7qUr9f9bBY78h3L9PD9AJmmGtQ1gDNyVHey1mwPuEpiN4Bl3ogrHl58kYTngD7msDN1twNyGOAApy1DTqWs3CKXQw59e0bYmnnAt58mcQdFOCtAsV2Uhew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Mt5sf+GZX5L+NCb7x9yrd4KOnxqGjUJstHLqmJ2fLkQ=;
 b=aYmzXYIAkZyaO+efQ/hTv+vB04xf4H/MFgJy1mCi+bYAtZQeZtUO1C4NpRi6/VHHhEXYFC8WDZLzBUEnezwJlXk/ve6hoVG0xg1CE+fBJi1mh7ZlTqe/ddV6jA3d249l0OGuw5qfxL0YAlMs8KHkbHC35AF07x7Qgt11I2iiyuN3D4BQGyQVHE6+7jgi7HxpSFo7GW3wjNIE1DNAM2Z05s4xDfCPsvVifWPGEzC1hsXnbKJLSXXsSsQp/UEucdY7uocZXfND56vKnBFMtwFGGvATHuvxlFxL9U5y+jS2cab3I0MRD6NUf4SdyoTZuRZt6ZLHLGAT52RJp6nD2DJDbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by MW4PR11MB6887.namprd11.prod.outlook.com (2603:10b6:303:225::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.32; Wed, 12 Jul
 2023 21:08:40 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::6cba:7ffb:4681:a38b]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::6cba:7ffb:4681:a38b%2]) with mapi id 15.20.6588.022; Wed, 12 Jul 2023
 21:08:39 +0000
Message-ID: <1f57810d-bf56-0b59-4ad1-22467c6b0000@intel.com>
Date: Wed, 12 Jul 2023 23:08:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Jacob Keller <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, Anthony Nguyen
 <anthony.l.nguyen@intel.com>
References: <20230712204730.326331-1-jacob.e.keller@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20230712204730.326331-1-jacob.e.keller@intel.com>
X-ClientProxiedBy: FRYP281CA0010.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10::20)
 To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|MW4PR11MB6887:EE_
X-MS-Office365-Filtering-Correlation-Id: 2a6e1ace-70dd-437d-b83f-08db831c2a1b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0msmKVXoeG9LVIX8RvELZJVNR48arL5pyXxAJfaS+2pnKfbQijv3tCgyC1oATn6ieTvCLZvjLPlOaF13M0mIILPWvmApvIQqB03vVM4oeBO6eKNgTMiDkCT5M7S1Xpr7KdSWMNaYn/QeXU0q0Ynvsn5bXkBFn/rzbYckW/wJ0F72Myvt9dbmJS72DNeT5Ahvnq4iQcuvdulBngOahsyw6YQ2JwQxez/Q/Hz19t9/6qEwzYKOS9JMtdGWEnQK/VqXoq3P0S5kLw7B8F1s72V/sdvQQuZ2Z9DS/wWXVtEfNLTyDomy9fBv9q96vu77VTEL22dZIPK8alDQ/yskCLEPBIOeKiGVxD74RH+OqpFZZcQoHo/UXVmNu9U+a5v0tAG5ZqMOMXS5xJjoz06exIIgWcoeXzs/w1VHCmy/01/8+AWLdIwQmoKjbc2TZ51E97LQlo7dHdrTatWCr8ExFpAolJBctRanhmhXcQEF7CW9xH34SQJVp8OLQAqYyQbSVlrMeWoTmk7ntFCpPpnd2TdF4tR2Ds0ptCOickP7wnpQAflj5pztdlp4KAq55XOcm0ORNDwg/Bxo3sN+p7+8FlW02lUVv0fChjTLFx4BjAEDgamy90mIDMHGYLwyzgexPB2xEEFuVHyMNXhH0rcYfdypVQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(396003)(346002)(376002)(39860400002)(366004)(451199021)(36756003)(186003)(26005)(2616005)(2906002)(5660300002)(6506007)(53546011)(83380400001)(6666004)(478600001)(110136005)(6512007)(316002)(41300700001)(8676002)(66556008)(66476007)(66946007)(6486002)(6636002)(31686004)(8936002)(31696002)(86362001)(82960400001)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QkowcHh3cE1DTHJNanE5RUtQS3Rhd1dOZzJQYkF2a2wrbjRFMlJVcmV6aVZM?=
 =?utf-8?B?SkY0WUZRM1VTQnMxaExOWUVodytZcU9Zd1RTSXlJak5STmd0eGxnTDNzbVlu?=
 =?utf-8?B?MEl1Z1hpeTV0UXYvdTdQVFRibWR4M0JuazAyeVZzdlZ5RXYveTBhdlM3clNm?=
 =?utf-8?B?REt5RW5IaFErc25Iazl1WFFoVUhuQk5MU1g2MFl4MEQ0ZXpsTm9ZZlNRdFBu?=
 =?utf-8?B?cUpDRUxqbUpRK3I4SEFOcXB0WHJxdTUyL1hkdm8ybXQrVmJaczlWd0VybCtR?=
 =?utf-8?B?YWtmZkM4bklBQUk3ZFZyZ052TjBNRVV5U1JVSGJjRFg2NTFKS1M3azlmemQ5?=
 =?utf-8?B?d1pDRnBmeVZQcWFoMnlKSGhwa05SV3cvMXFCUmpUU3EvclFpWFNpQWpheUtZ?=
 =?utf-8?B?K2RGT3hReVh1TkJpcmpIRXlqeSticm9XZzR1VW1XeVE3djlhd1U4SmZpemtD?=
 =?utf-8?B?aWhRdE5vU0JXNUY2alFISk1lQ0VDOWZOUUVPREc2NVRDMjBIcTg4bXRlVllU?=
 =?utf-8?B?OHF1V0pPcVQvSTZSUGc4aDNUeWFMaXYxZDFJZWRTTEZudlhycll5K0lUZDI2?=
 =?utf-8?B?Sk80Vm9mYWJSd0dYL1Y3Qm1MTS8zcFA1Q3JpaXROMDR3OGFTNGJyOEtaMWxw?=
 =?utf-8?B?YTMwUGl5UlMxbFRiY3pFRGpPcUZiaTRieEkvekZrNE5qSXRRaEhWeEpQZ2l1?=
 =?utf-8?B?bHNkUzVnc3BUSnlobkNjQmJpakNQTW9JWi9OSmNNNmxuekd3Z0kyeUtPNCs4?=
 =?utf-8?B?V0J5V21vWm5talV1QmxIMk9DeThKRXdweENYcWZoTTRSaE1HbzRCR2tNZkR4?=
 =?utf-8?B?MUE0aU9FN21oME1pUjVmSFhyTHJMc3R0WFVQRWlRcmtUK21mVXZDem5KMlhF?=
 =?utf-8?B?MHJ2d3lwSmI4ZjM0S3UrR2FBRk1JT3p1Rnh0U3o1aHRlTlNVUUFGbWhpaHdC?=
 =?utf-8?B?eTRoaUJ4bGdVaGFjYXE4OTFybmM3UnRza3RoZm5HSDJmbEx2aHNXNmJScUNS?=
 =?utf-8?B?MFZrRERoUkRVb09BZDhJeFpJbksyTTRUdHlGNk1RaThHZnpob3pDNEsyeGdn?=
 =?utf-8?B?SGFkcVJHSk16VHpHaU1QUHhpOXRCRjdsc2JZOU9xeHdkYWFucExiTWVTNGJZ?=
 =?utf-8?B?Uk5Kc3V0b0hDRERnNFp2a3JScGRWVTRUam9kMWFRZzlLTEVPdGI1UEVVZnpP?=
 =?utf-8?B?UEUrdlpHTmxwd3g4bEhDcGpiUGFtNm12ODlwOEJxcmRrN1BGT2xhdmdsUkZp?=
 =?utf-8?B?TFBnZ1dvNWRmM3FacnBvTVU0akN5eEtENW9GeVMvTFRrK0REdG5WdWJTRkFE?=
 =?utf-8?B?UHVSNno0aTN1bW12NGFQQWFyK09TVTRqRTFiN01PbGRMK3VuK3E0YjdTQm40?=
 =?utf-8?B?TFZlekxsYkFtWmR1MEkvOEc1VzFUNWc0UlViekUwRXp5cWdsNm56dERiaEJr?=
 =?utf-8?B?TFROZUhSSDUxbUc5K1Boa2hhWDJETjlSUjN6ZWJBMG8rV0thZGVmY1NJTnFt?=
 =?utf-8?B?aHA4czJaVGNSQXFMZ0ZoaGxYejFhSGtUNkJKZGVVSXNmZjVYSlJlWTg0ZjVY?=
 =?utf-8?B?RTZLK2VaeXBGVitrWExMbWtOM2VZR2RuWjFGRFo2TU4zZ2VXd3NISWVYVno5?=
 =?utf-8?B?Y1Z6dUpKTmtENkxNdk9LSXdHcHdZb0NOdklMYytOcmpiY1RaeVNQMWtvU0NP?=
 =?utf-8?B?ODIvTTVOcVVGWDJqdmFxSWNWQVhwZ0IwTGlqME1TNnBLRnhVUHI3UjdhNWNO?=
 =?utf-8?B?RERKM1NIbEo1MjdCOEpnS0pYZzlkSFkzM0lSNVNKSUFObUZZSW4yNVdzL3Fn?=
 =?utf-8?B?MXNzbXowdUdjeFJCNnNZdU5WVUNCTDdqcldMaVdldERVT1dkKzVxWSttS3Jy?=
 =?utf-8?B?OXI2VWYzWFFJdVFaT2kxUFAxbEtFNVp2M3d2bGUvYldhaDRBVTdvVmJtaE9Q?=
 =?utf-8?B?ZXFkc3JkOHU1T09kRHJqSThadjl1a0F3VVFnRGtaYmNHaTgxNE1sb1liaXZL?=
 =?utf-8?B?ejNSNUNxS3VISVFPN1NOa2pzU2h5VEMxbWZ1ZjFWZkFwZTRJcXptbDBENkFX?=
 =?utf-8?B?RGdzZFZuQW1hWUJEQk5BQlJDbGwyVTk4dUpNKzlGd1Q1NFZ6bjFtZ3lnZi9M?=
 =?utf-8?B?MWNFeUdxM0JDdUZVU3pQSVErQkQ3WGEzZThvYUtDQVlFL3lldmlRMUM2aE1W?=
 =?utf-8?B?S1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a6e1ace-70dd-437d-b83f-08db831c2a1b
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jul 2023 21:08:39.5646 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eriM5j0t2eNXiax0yqUFpXtkvu9SoHWjR/Ba1vjZ/gJ+imYl2gEEeH2vqZDovD8tN2yhiNWsIvg7LwTGHLGzh/6mdnK2yunBWyL2RM8/wMc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6887
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689196129; x=1720732129;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=sSv9vp7w4dFdHKs2S6pJXok8Bd3mcvkLh+aiDN7f9JU=;
 b=mMehyxqXMReuFegZst/W985wQ3dPoChhno2J6cgDWENaiUrbwPIUBT0T
 meov9fVEgOZX8VX2s3lzzh5vqTr1migJAJ6dRjh9DAi67yeGIazQXyfoq
 ILiOnczjOdBqetXBAEbTZj1OToILiAet6Nk+J2Uem2mYnYkMOpe1oo+tr
 lX8MIZZoMJZ+NjE32WU0dKQ0o0WWG0HJgGp6L/PZj1CTo6UZR25l+opG3
 Fv8P9/Ga/eo0ho8t3cfprAduH2bTV73CPcmgoKQ8fzVCQcRsFS/Lg/dn8
 V5p7LiRQydRzmaiOf7zMfL4QWIDGmty5hQ+OMf1On411p9/izA36HtpN/
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mMehyxqX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: replace
 ice_vf_recreate_vsi() with ice_vf_reconfig_vsi()
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/12/23 22:47, Jacob Keller wrote:
> The ice_vf_create_vsi() function and its VF ops helper introduced by commit
> a4c785e8162e ("ice: convert vf_ops .vsi_rebuild to .create_vsi") are used
> during an individual VF reset to re-create the VSI. This was done in order
> to ensure that the VSI gets properly reconfigured within the hardware.
> 
> This is somewhat heavy handed as we completely release the VSI memory and
> structure, and then create a new VSI. This can also potentially force a
> change of the VSI index as we will re-use the first open slot in the VSI
> array which may not be the same.
> 
> As part of implementing devlink reload, commit 6624e780a577 ("ice: split
> ice_vsi_setup into smaller functions") split VSI setup into smaller
> functions, introducing both ice_vsi_cfg() and ice_vsi_decfg() which can be
> used to configure or deconfigure an existing software VSI structure.
> 
> Rather than completely removing the VSI and adding a new one using the
> .create_vsi() VF operation, simply use ice_vsi_decfg() to remove the
> current configuration. Save the VSI type and then call ice_vsi_cfg() to
> reconfigure the VSI as the same type that it was before. Since this might
> update the hardware VSI number, we also must update the vf->lan_vsi_num
> field to match.
> 
> This new operation does not re-create the VSI, so rename it to
> ice_vf_reconfig_vsi().
> 
> The new approach can safely share the exact same flow for both SR-IOV VFs
> as well as the Scalable IOV VFs being worked on. This uses less code and is
> a better abstraction over fully deleting the VSI and adding a new one.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> Changes since v1:
> * resend, since v1 appears to have been discarded
> * dropped Fixes tag, since this is going to target next
> 
>   drivers/net/ethernet/intel/ice/ice_sriov.c  | 19 ------------
>   drivers/net/ethernet/intel/ice/ice_vf_lib.c | 34 +++++++++++++++------
>   drivers/net/ethernet/intel/ice/ice_vf_lib.h |  1 -
>   3 files changed, 24 insertions(+), 30 deletions(-)

This makes things work better, thanks!

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
