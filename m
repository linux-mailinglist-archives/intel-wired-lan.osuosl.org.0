Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF0B5979DB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Aug 2022 00:59:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0C3D140C67;
	Wed, 17 Aug 2022 22:59:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0C3D140C67
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660777149;
	bh=sbiaLKS9xBnZmHgNzjrEn3cxQGq3EJxLDuKnGj9plAs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8L0jF0CfsRm6SIeGDU7DyESYDoIOrqVifiBRARsG5dqt1IJqiRuUSymKHAZMfQKoV
	 JPf5L80Cnd8LsBdm8Xdj4UgMp/J3lDyuUtEM5ZSUuPGDYQ2ajzDLU/OIcgb7arNR+/
	 oCffxNA6nrun2rkAXIo5vyC0q1nTM2j+D+AvCBtO08Kc62+bXOYjx6ficaoz/VNp8i
	 zbSLlEnmf4fEFC37pxCS5fZHXthl5fEPxcu3zOhL0k9Cdxey1LcsmnF5zOO0JHH0F6
	 0YC7fgItoG4A31M17fYgl+uw5tXg2lBPvW+7dbt4GQAGTixJF/7IMquY0ui34r9EtG
	 S3Qt+AGnNbZ0A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eGtXGmk2Ai-0; Wed, 17 Aug 2022 22:59:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8147640391;
	Wed, 17 Aug 2022 22:59:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8147640391
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 23D061BF33E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Aug 2022 22:59:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EE55041739
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Aug 2022 22:59:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EE55041739
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JKsWky0L568s for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Aug 2022 22:58:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E311E4172F
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E311E4172F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Aug 2022 22:58:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10442"; a="293895716"
X-IronPort-AV: E=Sophos;i="5.93,244,1654585200"; d="scan'208";a="293895716"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 15:58:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,244,1654585200"; d="scan'208";a="749880004"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 17 Aug 2022 15:58:57 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 17 Aug 2022 15:58:57 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 17 Aug 2022 15:58:56 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 17 Aug 2022 15:58:56 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.43) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Wed, 17 Aug 2022 15:58:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j8QF8GFVchn7moAxY+EsGdKElLdkQl78E2TzlOgEEWcX/k7siahPJ2slVcuGQjCZjsHOh88kGadCrvPDorxT5MjXBvKB7uIn3LXG8GwUsOrV1sjbBQRgVSowVFOFrSJsGq6//l/lBTJCDT0hgRCQJt6/lzxfRj3Ngo5IHX3Y6Tmft7aVCWLeK6zXzDA44OhZwglBQerRCMAe9KxkeLLE9gTwdeg9qLGPYTqpPTrJkiPUo4BvDUH34joL1DAwTZOkzGlh91+3BLgzeRIqhBPj0E+8HEiNO1iK1gDYN3Tl8yVRbkQbL28zJLbFBXo1fdkWozMCjZr/8fCGXFA019OHkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s8Ohptu61rmQAasOkFXXbphnJJsdYjPORsoEQqaXI+c=;
 b=e5QmkXyjppnl3sNJve96OaWplPX0sXW37SjJfEqx6Dy80Kpcy3mwfV6CWWjI+/IzezYl0SE+tqns3DNYrpHfkazmX/7jx5J+SYLbFexyy4MTWcslfOV4E7i9hT1z/1gzfqg7KjaUPDmwhijXHxcovTcAR5B+7mj4MLJN7k5+y83rdZrhtNmfWk5CAnaH3vwcNiNih6J4bFC4kx/oY8BWGr7u2yfKLoEFsLgfFZRqQP1lqAaq8kUVSwL1l4AC2krCDZ7eVXxb2k/hfcLvGh00vMf8Ki2HsEEBk0yD6JLo984Q5bpgXWp9BxwgBB6/fJ+TX6SjLvT4F+R8bVQ+BQGXkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3224.namprd11.prod.outlook.com (2603:10b6:a03:77::24)
 by SA1PR11MB5802.namprd11.prod.outlook.com (2603:10b6:806:235::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.27; Wed, 17 Aug
 2022 22:58:46 +0000
Received: from BYAPR11MB3224.namprd11.prod.outlook.com
 ([fe80::41f3:5842:f3cf:a173]) by BYAPR11MB3224.namprd11.prod.outlook.com
 ([fe80::41f3:5842:f3cf:a173%4]) with mapi id 15.20.5504.026; Wed, 17 Aug 2022
 22:58:46 +0000
Message-ID: <ed1ee7d7-6b23-684b-006e-3dc7f81d054e@intel.com>
Date: Wed, 17 Aug 2022 15:58:44 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Mateusz Palczewski <mateusz.palczewski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>
References: <20220811114552.1577550-1-mateusz.palczewski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220811114552.1577550-1-mateusz.palczewski@intel.com>
X-ClientProxiedBy: CY5PR22CA0064.namprd22.prod.outlook.com
 (2603:10b6:930:80::8) To BYAPR11MB3224.namprd11.prod.outlook.com
 (2603:10b6:a03:77::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8ca3e04d-1f40-4496-653e-08da80a40a45
X-MS-TrafficTypeDiagnostic: SA1PR11MB5802:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tYiiUNkVylfFQ/JHl+gqSgRBoDa0NoggTPZw2OXyLj8TXyrdZ6s/wG7slZyvOG9Ao4ccUtKU1oqap95SBQE69jA/vziFzu5schXHNq8r3G2mFKkXRAuWyqiKNpyvtdf6lwNf0dHvsp4GxDOa2t2iRpE0t5OS7cKHT2Eb3fjGOCJAgrtcz2McUcfhKOxKdfcW+dXvJK6StPb8qUgjW4rDh0wFLhWEN57TqXEtNsojk2KVc3ny8WM3U6ZDQYrdKsgbjhGEM/23s3tE4Xa198LZmYSYJ8ue17VXuZsiTL5/LZMtcCbg1f0zcpOFZGFlz7YSK1WeDv3zzrIwELql/ICwom3ID87PYrh9uEBY2uQdZZHK/T4Cd4iDm36OXfy0oWJdOz1YFoG+EK/GB8ga5nPdCcBq/eHOTXr93wjxz2gra+RnJ73gqCCX7qWsRlQdiPx9beZ+4ZuGTNYP43tftMfbx4lxt3nsYlunM72jF085tlpAkc/HmM/v0Kf0B7qqujIJlNnZky27fmPqbVJv6ohHzDS0LrqPV0/X4vP0AUn0wPxGT4hibl+fVCFgaNI1DqkVN7zPxt+96dZEUuFWK1jtN2VgMid9wf3HwAUZrrn409Js7wnN4rcNwtYvkmvbcO+nTGYE2Zeexxh85GtVF1mhflQ34fAMrAba2uKYgnTR170/5b3Izdivb70i8Ojq4hYpeeYEHNkp8LYSmMHNHIFO3QgqAmjw/3qx0sz3QXBZsGVdIECMP78qYbqXU192dH/o0mK6aw457ppZJTIKaYtPltWCh98f33gUeFR/53nFi8g7SffbmoZpBcxsUInG3dSndCUh/WEKXn2Pj39zVCTtNg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(396003)(136003)(366004)(346002)(39860400002)(26005)(186003)(30864003)(6512007)(6506007)(15650500001)(36756003)(8936002)(2906002)(53546011)(5660300002)(83380400001)(6636002)(110136005)(478600001)(6486002)(966005)(66946007)(107886003)(31686004)(316002)(86362001)(38100700002)(66476007)(4326008)(8676002)(66556008)(82960400001)(41300700001)(31696002)(2616005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MGtpM09KS0l2ZEFtVDJYZW83R2pZaEhmT1hlQkIxczhsaW1pTnAvdzViVENV?=
 =?utf-8?B?a2dSd3F1ZEsxSmhKMGR6UGVEbFZpeUx2VGxJdGd1czNENnVBRUJ6WXQxSC9V?=
 =?utf-8?B?cWg1QzUyTWh4NEFTMDFaenQ5K2dLMGMramI5TFFoRDVuVlZQTWJLWkpTbFdF?=
 =?utf-8?B?WUszcVBuTnlGV21lMTJISVkyVTlXUUluNTVoMUlQMDd2djk5NFNiYVpYeTdl?=
 =?utf-8?B?TDhQTWNuM29QcVFZT29jU0Z6QjdEMThvcGx2bDJTYk95TW40UGdyZi9pMmR2?=
 =?utf-8?B?V1cwdUpybkNIR1dTb1ZzcHh6T3Nka25hSk1XWGlNbDB6SWpsNmt2QTQwdllq?=
 =?utf-8?B?MG5xQ0hQRlJHNExuSmkrMUY3TExOVDQ4dXFBOXJBT0NBcE1QdW1PeFo0Smkw?=
 =?utf-8?B?dzI2bXFwVGtVZE9sbThpa1NyeFppejJnOXYxM3Z4RTJGMjdJc05oZTNhdFpv?=
 =?utf-8?B?UjR3ZW9oSDIrT0JMQjUxREh3UE1pdnpLZ0VkVjRueGR3SWFGa1hPWStBRDhJ?=
 =?utf-8?B?QkJuQ0dxOWhiSWhaN3BRSWpQTmJicFgwWGh3ajBQRG0xRGxNeWR1b3JQWUVV?=
 =?utf-8?B?Qk9LdUF2Q0dFaEFsaFR2TEx0WEE4Tjh4K3VQZDM1UmFyRXQ2MWhiL3JNcHJ1?=
 =?utf-8?B?ZXd6VnNjWW5oQ0F6ZEFxZWhzZHJCVVo4aEdMYTJUNFB1Rm9YempaWkdOdlpR?=
 =?utf-8?B?T1YrZThxMTJ1OVVXeTRRR2FHaitmTi9QQ3g4c3I1SVE3MTJCNVBuZFE4MUEz?=
 =?utf-8?B?dmpjYW9xVGZ6WWZRcmkxdFV6TGM0bFQ3eXpPYldhRFFNejViZDJmc0NmblRZ?=
 =?utf-8?B?SXlmQXllcGRGaGV0SldZckc1UjZPWFpaSDVVOUJaQnlYR21jM2pISXFmQ3Nn?=
 =?utf-8?B?cUd1eEhBemZVMEtEN3ljOTdDWStuQTBkampSblpoQVZGVTBoUi92czU3TjNZ?=
 =?utf-8?B?S0RyQzBkVDVrQ1FNM29RN2orZUY3T0IxUUNGb3M5ZlByY09qOTljS0hVQWJj?=
 =?utf-8?B?bXZiUGdoM09jb29IeW5tekJVbjVueit1MWhpUVBKMGFMd3FXRGNjdVZwS3dr?=
 =?utf-8?B?WmxOVWp1UjFSNE9aQ0dhdmdHZ2hFOFNDaVlzbzJ2bHJrUEpvdW1GTURGeFh4?=
 =?utf-8?B?bFVKSzZZOWdQK1lleUpaN1pPU1h6RU5FRldJeW9IQjl2UjQyNm1OVTM3bmFG?=
 =?utf-8?B?TG42ZHdMZ2lCejhjbjVWQVgzaTU5RzFyNEdwUUVCMDBISjAxRWFxelVxMzQw?=
 =?utf-8?B?ZHU3TmJjNm8yeGJxSTFQdDI1Wlp5U1ZWWGlUKy9vbnMyVFl2b3JJVzJwWXda?=
 =?utf-8?B?elArdS9vM0Q3R2Rqb0pSUlc4Rmp3Z09leWhkb0xJWlIrdnZZZHk1YU9zZDhQ?=
 =?utf-8?B?M3NQdnRGOVFZVXB5ODNqdnQ3R0RZUXZUVUZnV3p1MUsvdi8yVHo0VkgyU1RU?=
 =?utf-8?B?UFRxNXJramc1Y21aOXZzaFBrbXp3SXl5R3VjMWVXRWowZU1WUXN2VHNBMWpN?=
 =?utf-8?B?TmhaMUN6ZFlsTHJlV20vc1lWUWVDaUNRL1A2OWY0d1Z3anAvNzFQWmtlcnRG?=
 =?utf-8?B?VlpSWEE4VFgvMmkrOFJoWGFwSm5JTDRzaDlMNWd0UXE0WE1kcVBYVTFNVk9p?=
 =?utf-8?B?citPVzRQUkRNMHNFTkk1TFdXTmZsbUVhcE1jUWEzYTFEWld2b0JXMG43d3VN?=
 =?utf-8?B?eHFndHF2MVlCRERnYlJmUStCVlhBTnFkUDRGNEJVVm9HUHNWMEVsWU4wYVNv?=
 =?utf-8?B?UUdYNndCakNFenhQallzcitLOWNZREFGU2x1THh2NG1DT013NnhFcm90eE5y?=
 =?utf-8?B?dXExQWFpcGIvK0t5cnY2U0ZlWjMxWWRaa0xFWnh3NkgrajM5WDlFNTlvYnpW?=
 =?utf-8?B?NUo1MzBkM0xUVmwxeHNkNmdqQm5QRnZxcnVHa24wN3pYZ2h1QU5WMlpJdWJO?=
 =?utf-8?B?N3hVN3ZXbkJXOWgvcHhMMUFDazlNN2NpZkpGa0lOdW5ZZDhsYyttMnVoNU5o?=
 =?utf-8?B?R05pSjZxUWdISEI0Yi9LbGkwcVQ1MW5KWW56bVZLSnA1Vzhhci96OU14bXJt?=
 =?utf-8?B?YWgvSmdWVWdheFNqWmVSWmJKV0ZwcG1rNk1GcTNrbWJGTTIyd3FkTE5VMElY?=
 =?utf-8?B?U0JaOUxJU2VCR1FoVlZPVnFuN1VvVENKMStPK0ZpRkc2SmVZMWV4ZlprSnVr?=
 =?utf-8?B?QXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ca3e04d-1f40-4496-653e-08da80a40a45
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Aug 2022 22:58:46.5720 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: o1dAJgsKaQoQaaPh+A49QV6mae5QxHovfZw8MggIFOvXov19fkfmQwt8r/greY3OTF40rBr4SnK4Le6ESCAf5Ng1JhOJqxjzg8HGezfiSXI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5802
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660777138; x=1692313138;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sX6LVjGm9a4kveJRnFsbjjU2ZiLY7X7caWFXvG9OcqA=;
 b=Vstae+XdUSKjSjkI1BGxy67dklpz80tTFdHIFFNgd3auI/z1S4r+5+C8
 GJsnpbqcMztCqIpSAo5stOjO6g0hTpDFv2gZZ0s4U87JLG6a96RERwF9E
 k8277Fg8qm1Zvc8a1IdJkwUR07lEIV/+NM1Y5d/eMgzJcpQiOxQmZeMON
 eBZA63VSA/ZXblLp2EdguMapEPaoE1Mg2yw2PMb7iSSG8SJrofzCIHpJt
 a9zJn7Ka45KtIXYrwh8whhdjB6vFNU+JRVhiWyM6R9TFXpWLAmwnFwQIe
 aIX/hqtXmL2xBJUk+8HoDzpFcF7FInyoxAcD7OP5KsOSOwaJhnTQ+9OLL
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Vstae+Xd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: Fix inventory failed
 error during flash update
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/11/2022 4:45 AM, Mateusz Palczewski wrote:
> From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> 
> After updating flash image on E810 card with NVM update tool
> there was an error: The inventory process failed.
> 
> This was reported at bugzilla thread #2114483 and caused by the tool
> trying to read devlink parameters fw.mgmt.minsrev and fw.undi.minsrev
> but those parameters were not registered by the driver.
> 
> The ice NVM flash has a security revision field for the main NVM bank
> and the Option ROM bank. In addition to the revision within the module,
> the device also has a minimum security revision TLV area. This minimum
> security revision field indicates the minimum value that will be
> accepted for the associated security revision when loading the NVM bank.
> 
> These parameters are permanent (i.e. stored in flash), and are used to
> indicate the minimum security revision of the associated NVM bank. If
> the image in the bank has a lower security revision, then the flash
> loader will not continue loading that flash bank.
> 
> Fix this by adding two new devlink parameters fw.mgmt.minsrev
> and fw.undi.minsrev and function to read they respective values.
> 
> This idea was proposed before with both write and read funcionality
> but was rejected by community. This patch focuses on read only.

Adding Jake for his input since he sent the initial series.

> Fixes: 1adf7ead8204 ("ice: enable initial devlink support")
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> Link: https://lore.kernel.org/netdev/20210129004332.3004826-5-anthony.l.nguyen@intel.com/
> ---
>   Documentation/networking/devlink/ice.rst      | 33 +++++++
>   .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 17 ++++
>   drivers/net/ethernet/intel/ice/ice_devlink.c  | 90 +++++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_nvm.c      | 53 +++++++++++
>   drivers/net/ethernet/intel/ice/ice_nvm.h      |  1 +
>   drivers/net/ethernet/intel/ice/ice_type.h     |  8 ++
>   6 files changed, 202 insertions(+)
> 
> diff --git a/Documentation/networking/devlink/ice.rst b/Documentation/networking/devlink/ice.rst
> index 8c082b139bbd..aabd33a7f7da 100644
> --- a/Documentation/networking/devlink/ice.rst
> +++ b/Documentation/networking/devlink/ice.rst
> @@ -90,6 +90,39 @@ The ``ice`` driver reports the following versions
>         - 0xee16ced7
>         - The first 4 bytes of the hash of the netlist module contents.
>   
> +Parameters
> +==========
> +
> +The minimum security revision fields of the ice device control whether the
> +associated flash section can be loaded. If the security revision field of
> +the section -- ``fw.mgmt.srev`` for the main firmware section and
> +``fw.undi.srev`` for the Option ROM -- is lower than the associated minimum
> +security revision, then the device will not load that section of firmware.
> +
> +The ``ice`` driver implements driver-specific parameters for reading the
> +minimum security revision fields associated those two sections of the device
> +flash. Note that the device will not allow lowering a minimum security
> +revision, nor will it allow increasing the security revision higher than the
> +associated security revision of the active flash image.
> +
> +.. list-table:: Minimum security revision parameters
> +      :widths: 5 5 5 85
> +
> +   * - Name
> +     - Type
> +     - Mode
> +     - Description
> +   * - ``fw.undi.minsrev``
> +     - u32
> +     - permanent
> +     - The device's minimum security revision for the ``fw.undi`` section of
> +       the flash.
> +   * - ``fw.mgmt.minsrev``
> +     - u32
> +     - permanent
> +     - The device's minimum security revision for the ``fw.mgmt`` section of
> +       the flash.
> +
>   Flash Update
>   ============
>   
> diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> index 9939238573a4..4d46f91adbdc 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> @@ -1509,6 +1509,23 @@ struct ice_aqc_nvm_checksum {
>   	u8 rsvd2[12];
>   };
>   
> +#define ICE_AQC_NVM_MINSREV_MOD_ID		0x130
> +
> +/* Used for reading and writing MinSRev using 0x0701 and 0x0703. Note that the
> + * type field is excluded from the section when reading and writing from
> + * a module using the module_typeid field with these AQ commands.
> + */
> +struct ice_aqc_nvm_minsrev {
> +	__le16 length;
> +	__le16 validity;
> +#define ICE_AQC_NVM_MINSREV_NVM_VALID          BIT(0)
> +#define ICE_AQC_NVM_MINSREV_OROM_VALID         BIT(1)
> +	__le16 nvm_minsrev_l;
> +	__le16 nvm_minsrev_h;
> +	__le16 orom_minsrev_l;
> +	__le16 orom_minsrev_h;
> +};
> +
>   /* Used for NVM Set Package Data command - 0x070A */
>   struct ice_aqc_nvm_pkg_data {
>   	u8 reserved[3];
> diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
> index 3337314a7b35..95f1653306d5 100644
> --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
> +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
> @@ -372,6 +372,83 @@ static int ice_devlink_info_get(struct devlink *devlink,
>   	return err;
>   }
>   
> +enum ice_devlink_param_id {
> +	ICE_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
> +	ICE_DEVLINK_PARAM_ID_FW_MGMT_MINSREV,
> +	ICE_DEVLINK_PARAM_ID_FW_UNDI_MINSREV,
> +};
> +
> +/**
> + * ice_devlink_minsrev_get - Get the current minimum security revision
> + * @devlink: pointer to the devlink instance
> + * @id: the parameter ID to get
> + * @ctx: context to return the parameter value
> + *
> + * Returns: zero on success, or an error code on failure.
> + */
> +static int
> +ice_devlink_minsrev_get(struct devlink *devlink, u32 id,
> +			struct devlink_param_gset_ctx *ctx)
> +{
> +	struct ice_pf *pf = devlink_priv(devlink);
> +	struct device *dev = ice_pf_to_dev(pf);
> +	struct ice_minsrev_info minsrevs = {};
> +
> +	if (id != ICE_DEVLINK_PARAM_ID_FW_MGMT_MINSREV &&
> +	    id != ICE_DEVLINK_PARAM_ID_FW_UNDI_MINSREV)
> +		return -EINVAL;
> +
> +	if (ice_get_nvm_minsrevs(&pf->hw, &minsrevs)) {
> +		dev_warn(dev, "Failed to read minimum security revision data from flash\n");
> +		return -EIO;
> +	}
> +
> +	/* We report zero if the device has not yet had a valid minimum
> +	 * security revision programmed for the associated module. This makes
> +	 * sense because it is not possible to have a security revision of
> +	 * less than zero. Thus, all images will be able to load if the
> +	 * minimum security revision is zero, the same as the case where the
> +	 * minimum value is indicated as invalid.
> +	 */
> +	switch (id) {
> +	case ICE_DEVLINK_PARAM_ID_FW_MGMT_MINSREV:
> +		if (minsrevs.nvm_valid)
> +			ctx->val.vu32 = minsrevs.nvm;
> +		else
> +			ctx->val.vu32 = 0;
> +		break;
> +	case ICE_DEVLINK_PARAM_ID_FW_UNDI_MINSREV:
> +		if (minsrevs.orom_valid)
> +			ctx->val.vu32 = minsrevs.orom;
> +		else
> +			ctx->val.vu32 = 0;
> +		break;
> +	}
> +
> +	return 0;
> +}
> +
> +/**
> + * ice_devlink_minsrev_set - Set the minimum security revision
> + * @devlink: pointer to the devlink instance
> + * @id: the parameter ID to set
> + * @ctx: context to return the parameter value
> + *
> + * Currently manually changing minimum security revision is not supported.
> + *
> + * Returns: EINVAL.
> + */
> +static int
> +ice_devlink_minsrev_set(struct devlink *devlink, u32 id,
> +			struct devlink_param_gset_ctx *ctx)
> +{
> +	struct ice_pf *pf = devlink_priv(devlink);
> +
> +	dev_err(ice_pf_to_dev(pf), "Setting minimum security revision is not available\n");
> +
> +	return -EINVAL;
> +}
> +
>   /**
>    * ice_devlink_reload_empr_start - Start EMP reset to activate new firmware
>    * @devlink: pointer to the devlink instance to reload
> @@ -589,6 +666,19 @@ static const struct devlink_param ice_devlink_params[] = {
>   			      ice_devlink_enable_iw_get,
>   			      ice_devlink_enable_iw_set,
>   			      ice_devlink_enable_iw_validate),
> +	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_FW_MGMT_MINSREV,
> +			     "fw.mgmt.minsrev",
> +			     DEVLINK_PARAM_TYPE_U32,
> +			     BIT(DEVLINK_PARAM_CMODE_PERMANENT),
> +			     ice_devlink_minsrev_get,
> +			     ice_devlink_minsrev_set, NULL),
> +	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_FW_UNDI_MINSREV,
> +			     "fw.undi.minsrev",
> +			     DEVLINK_PARAM_TYPE_U32,
> +			     BIT(DEVLINK_PARAM_CMODE_PERMANENT),
> +			     ice_devlink_minsrev_get,
> +			     ice_devlink_minsrev_set, NULL),
> +
>   
>   };
>   
> diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
> index 13cdb5ea594d..1c3fa733387d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_nvm.c
> +++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
> @@ -1139,6 +1139,59 @@ int ice_nvm_write_activate(struct ice_hw *hw, u8 cmd_flags, u8 *response_flags)
>   	return err;
>   }
>   
> +/**
> + * ice_get_nvm_minsrevs - Get the Minimum Security Revision values from flash
> + * @hw: pointer to the HW struct
> + * @minsrevs: structure to store NVM and OROM minsrev values
> + *
> + * Read the Minimum Security Revision TLV and extract the revision values from
> + * the flash image into a readable structure for processing.
> + */
> +int ice_get_nvm_minsrevs(struct ice_hw *hw, struct ice_minsrev_info *minsrevs)
> +{
> +	struct ice_aqc_nvm_minsrev data;
> +	int status;
> +	u16 valid;
> +
> +	status = ice_acquire_nvm(hw, ICE_RES_READ);
> +	if (status)
> +		return status;
> +
> +	status = ice_aq_read_nvm(hw, ICE_AQC_NVM_MINSREV_MOD_ID, 0,
> +				 sizeof(data), &data, true, false, NULL);
> +
> +	ice_release_nvm(hw);
> +
> +	if (status)
> +		return status;
> +
> +	valid = le16_to_cpu(data.validity);
> +
> +	/* Extract NVM minimum security revision */
> +	if (valid & ICE_AQC_NVM_MINSREV_NVM_VALID) {
> +		u16 minsrev_l, minsrev_h;
> +
> +		minsrev_l = le16_to_cpu(data.nvm_minsrev_l);
> +		minsrev_h = le16_to_cpu(data.nvm_minsrev_h);
> +
> +		minsrevs->nvm = minsrev_h << 16 | minsrev_l;
> +		minsrevs->nvm_valid = true;
> +	}
> +
> +	/* Extract the OROM minimum security revision */
> +	if (valid & ICE_AQC_NVM_MINSREV_OROM_VALID) {
> +		u16 minsrev_l, minsrev_h;
> +
> +		minsrev_l = le16_to_cpu(data.orom_minsrev_l);
> +		minsrev_h = le16_to_cpu(data.orom_minsrev_h);
> +
> +		minsrevs->orom = minsrev_h << 16 | minsrev_l;
> +		minsrevs->orom_valid = true;
> +	}
> +
> +	return 0;
> +}
> +
>   /**
>    * ice_aq_nvm_update_empr
>    * @hw: pointer to the HW struct
> diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.h b/drivers/net/ethernet/intel/ice/ice_nvm.h
> index 856d1ad4398b..b44ecb8b9341 100644
> --- a/drivers/net/ethernet/intel/ice/ice_nvm.h
> +++ b/drivers/net/ethernet/intel/ice/ice_nvm.h
> @@ -20,6 +20,7 @@ ice_read_flat_nvm(struct ice_hw *hw, u32 offset, u32 *length, u8 *data,
>   int
>   ice_get_pfa_module_tlv(struct ice_hw *hw, u16 *module_tlv, u16 *module_tlv_len,
>   		       u16 module_type);
> +int ice_get_nvm_minsrevs(struct ice_hw *hw, struct ice_minsrev_info *minsrevs);
>   int ice_get_inactive_orom_ver(struct ice_hw *hw, struct ice_orom_info *orom);
>   int ice_get_inactive_nvm_ver(struct ice_hw *hw, struct ice_nvm_info *nvm);
>   int
> diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
> index 861b64322959..c14fa57b1cb7 100644
> --- a/drivers/net/ethernet/intel/ice/ice_type.h
> +++ b/drivers/net/ethernet/intel/ice/ice_type.h
> @@ -428,6 +428,14 @@ struct ice_nvm_info {
>   	u8 minor;
>   };
>   
> +/* Minimum Security Revision information */
> +struct ice_minsrev_info {
> +	u32 nvm;
> +	u32 orom;
> +	u8 nvm_valid : 1;
> +	u8 orom_valid : 1;
> +};
> +
>   /* netlist version information */
>   struct ice_netlist_info {
>   	u32 major;			/* major high/low */
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
