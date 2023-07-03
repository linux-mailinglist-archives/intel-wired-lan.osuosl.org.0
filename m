Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A5592745762
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Jul 2023 10:34:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 41BFD60B44;
	Mon,  3 Jul 2023 08:34:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 41BFD60B44
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688373273;
	bh=6vl8HX8jnipwV5Ks4921eqmVNhbusJaGNZkZN1gfbzc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=t5+OaanomvZnceD57gpZNp3MX9qOkn2/EEhe8mpnIL4WKQEO0GHGDtPKgbvu2zZGM
	 xA38Ca6YAJZVEe0DNJ8gAon2zXnYSOAEuQDeni3W0cYExGtGAgVgCHhkLv20hE+ZaO
	 oxuZAajZfaHOYmfmqdSKwUwv3RIDSTLf/+BxxmwT69/axe3DAkPU8XImftta4W7k5x
	 +gMvyl6LcTp6SjFvmjmO5cQxli77JM2khr++gflAHw3IMDIy6LCBxbsUJmFY36eTxy
	 c7GVO2klN65ZDJOrmGVVMc1my0/c+RhWGYuCgw7hfZbt074gu3Jjh10PiZM51sruee
	 oYjIbaM/Dw7MA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jzZnVtUJe3dA; Mon,  3 Jul 2023 08:34:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 95E0560D53;
	Mon,  3 Jul 2023 08:34:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 95E0560D53
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0C1A51BF5E0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 08:34:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E478881263
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 08:34:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E478881263
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YjyAjQC3_Lwz for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Jul 2023 08:34:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 003B78126B
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 003B78126B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 08:34:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10759"; a="343161519"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="343161519"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2023 01:34:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10759"; a="721687883"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="721687883"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 03 Jul 2023 01:34:10 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 3 Jul 2023 01:34:10 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 3 Jul 2023 01:34:09 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 3 Jul 2023 01:34:09 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 3 Jul 2023 01:34:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VWwh/N3pSDFHMD780OSp6tIBu3I0PDI48DLvPoL7ueZDS6IIMZPNS1yYomaJmgh3fBirZvbqGnzdOhjy2QnmIVp2pbyUAfCf89Gvte6jE1u+KVBH84ztQOhGICHs+nop9o309NkfXzL9Xa3z+SkBYMG9TK1zK022SlA7ExjNnocOR/JLhRvICaw1y0WCTPJBGFp7jlSe2xXGr57VN6jxG5QdEEIO4VJAxAxjgWcFObmBE7eyqmECIC3m3llXV31+MhbS//nm2l0b+fEVVLlc7m8lBh0Ex1/xRA1PqCzIJKaEyEdOzuC4Y0M12YpRckqbzlyGZHBCymkdggS/toU0CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=43rKrE8GETG8Tj5hWmwGFItSUetSVU/aHut7YV/IbQY=;
 b=AvFKOCNhR79x1thPPs1FapWFRTkYqJyD/Y1muZjDj7+g3oEGVhb/Nn0w4shBMge2c0mELfSYCHHQiccRR22j+rcMuazGuEmcRr0mbU1o89RT98OXBtq0q5C1TTnrb+O/3K7xyekusAIjTF9+7G6sXh5Vs4O5+EOWI4jj8R5LGqZZhl8DQ1+RPDCTEmKagM/zh+chdd6EpZhn9SNI3SxIJ3+fOO/0Vrz8AFeCwYWC56hMAwll0eWU3tMeTCIp/s3dnvF+B0XDH+u55gGwNyMh4WShB+uHTZF22m1vEeZb3AEziToxF+ko0erKR2ZbTthSMbQMaJZRbZaRCKKdTeGv4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by DM4PR11MB5454.namprd11.prod.outlook.com (2603:10b6:5:399::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6544.24; Mon, 3 Jul
 2023 08:34:07 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::87ad:6b1:f9f4:9299]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::87ad:6b1:f9f4:9299%5]) with mapi id 15.20.6544.024; Mon, 3 Jul 2023
 08:34:07 +0000
Message-ID: <52b83a4f-9f65-fedd-54ae-c19df700d79b@intel.com>
Date: Mon, 3 Jul 2023 10:34:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230703074409.102367-1-jedrzej.jagielski@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20230703074409.102367-1-jedrzej.jagielski@intel.com>
X-ClientProxiedBy: FR0P281CA0146.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:96::20) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|DM4PR11MB5454:EE_
X-MS-Office365-Filtering-Correlation-Id: 592dc9ac-2032-4553-9f6e-08db7ba0446c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: brn1l2P0Q9IC/OEdrn4hWpH6fwynxs815GIiaGNm9eOqaNfRsuDVvEi07S67+JMCH57vUnPOBJAVyGjQRmkRC1nJuryrN16oAr2D+bBcu078jfK8DPESOPLoUsdT3WCNexd27dqIgQo94m9t7FFY7Yq4mkMoS5frnBwLkhJH32/gj+b2HBd8Pg0v3mCrsZlgr5pa//jPJhoMOFK8GLrF7obBJsAyUNmQ1V9jtX9bQL95Pf0neat1B9XCg1fOh2A0AEeEkpVsFLbTVupam9U7U+y9qZ1B/56jQiTZhEXX4h6NA0q7JsNzIqII0FU1gw7zZq9dPBuQj4j3/6POm7SqmKLxjnue1wXSG1VWc7pV9FJufdLDE+ZU0pXqbAL3n3tVJ9CK8fFDKWIif5xoZfl9JXevZSApqzPozHTn0PHjEiAZ4B9M4F8L2XIHKOjNuXyXfNhiX+BlduqbxiMHrTF/iuwE0zepNrzTvylIuNHUfbQ2AxLNHucslK2Xn5LubKOeORxyLOzmvgp5IQoadIrBTSD5XMfsJQwikQn1+HX+inGe9FoCGARgy5uVMKSpH6GBxCkgzY7TvuP5CPSn+LjqedM4Z0f05c0bwu9PiwyK1UBi+RiD9xNhNvdkNg5HxjYxB/3uA92XLvyeg7+0mjRTnA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(136003)(376002)(396003)(346002)(39860400002)(451199021)(2906002)(41300700001)(5660300002)(8936002)(8676002)(36756003)(31696002)(86362001)(186003)(2616005)(31686004)(82960400001)(478600001)(26005)(6512007)(966005)(6506007)(6666004)(53546011)(6486002)(316002)(4326008)(66476007)(66556008)(66946007)(38100700002)(83380400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?azdpM0g2MVplY0orWnNGZUlHNzVwbkoya21VWFFSNHVYMWt0b0tJMGVtNkt3?=
 =?utf-8?B?MXRJQmVQeU9ZU1ZYaSt3MVBPUXVJUW1KVWFlVEg0QUFMQ0Q1UFd4b2N5V1ZO?=
 =?utf-8?B?QWhkS1pxcWZzSmk4VzB2cE9LMG9iTHBUMFgxcm8vQSthTGw4blcwc0pnVVNi?=
 =?utf-8?B?MFBsd1ZBWDJjMUk1ci9EYUxpRHNnY3ZhY2d6eDNpc2ZkMkd1c1EvbTFTcmh4?=
 =?utf-8?B?SFAwTjZlbU84N0EzeUJ4UWZQdEM2SnU5NlczUUFvRDNEaGQ1MnNnWFBEWkJr?=
 =?utf-8?B?azdlY2VqU0ZGdkd3dDRuQXgrR2VDY05QYnVzaUUzMHhjaHBueTV5ZEZPT3d1?=
 =?utf-8?B?a1oyZW1pRjhia3M5SXNVcEpSVmJ0WTlYR2dmbjVJdUFEdCtteE1DUzFWaTlG?=
 =?utf-8?B?bzJuTzJxUlJDdlZuU29xM2R4TTZ2bEF5VjBFN0VuUm5vb053cExGVFJGcFJX?=
 =?utf-8?B?emZGa29FaWY4NER2YkdYb2JHaS9mc2lJb2tyb3FMQ1BQOU9PQ2xXYWE2cmpN?=
 =?utf-8?B?NEhmMlYyQVI2QUVqdnc2Y3FEOXdTY3pJZVRIYTlNc1dHaUhxL1VUWThwUEdQ?=
 =?utf-8?B?ay80VHROUk05b1UvSEhiRDRWV2xWakxhNVFadG5KRkJTS0FXN0NTK2xKdGdp?=
 =?utf-8?B?MWg4WGxaek5aUTNBUFVYTEpLSDdTckNmbllvOUxVR1d5cC85eUpwZU10ckFD?=
 =?utf-8?B?TjQydVlOYjIrRzdodk1kNXJyMGc5aFVwaGxCalMyYVNNVkZadEVUN0ROQ1pq?=
 =?utf-8?B?ekhFb05pZjY2bHJrTjZONGV5S3ZCNTF1eU43WGpzc0tUVzgzalphVG1xSFh0?=
 =?utf-8?B?eEprYUlTNGZpN3Yyckk2ZFRyZmVkSG5IVHJMYXJlVHE4ZE5SaEEzd3F4Wjky?=
 =?utf-8?B?bjd2bXowMUZVQUFtTHhPM25KLzhRZnRTeXA5UmhrWGZhUkJyaENzbExJaVVM?=
 =?utf-8?B?YVAvaEU3dDg2WWNrcWdSZXJWYzVoVFFsdENLV0p5RXl3Q3c2eWJTazFzT0t3?=
 =?utf-8?B?OFVBNHluQkl6bElGTmplTGdSM0FpWlZDaStLYS9YVHNpZ0Y5ZU1DbkxTM3Mv?=
 =?utf-8?B?Y1diejc5KzlFNEhVMmZwZlN3Rm9OSkt4WWYxRUFuYkZqT1l5NU4wUExES003?=
 =?utf-8?B?dzRRVUxNMjhlSFpIN0wwdGFrS1UzNW1sQVRsdXNkWGxXalJET2NRam1CTmQv?=
 =?utf-8?B?RERyQVpGalp6OUgvdUdUZUJEWmMwMkxKY09mU2x2M3ZMYm5yejN1RGJjNWcw?=
 =?utf-8?B?aTJGYVFKTFI2UmR3NlA3Rncxd3B2QXByZTJYaE0wQlNZUWRCQ05zSGU0Si9y?=
 =?utf-8?B?aStUVVY2Vzdjd2ZFYXE4MHY5TEpSK1VKR0ZadElpU25PYVhjRkxTbld3ZnY1?=
 =?utf-8?B?Sjh5R3ZwdTg0R3B5em9PS1pwVnBJYzNnRTFIc1JHUmVydUUzaXh4dnUyRktF?=
 =?utf-8?B?UEgrZ2VUTkNZR01lTy9YSWo1NzQ1NDZ1M3F6dWdZeElFY3dzR1JBczBuczRH?=
 =?utf-8?B?QlRlV2FSdmpTdWVCdEpjQWErRDZNbTdydSsvOHllZXRQaGl3TDljYXg0Rldk?=
 =?utf-8?B?Y1gxM3dKbnRyRnZZSTRLcjhQOU1pekh6MVdMN1RzcjJ3ZXVSeEswbkVoaGo3?=
 =?utf-8?B?S3JHWTM0MXlEaTB3NlAvdTZjTE15cU51VElXNXg4andGQWdLN3NGemNPeEYw?=
 =?utf-8?B?VWNrb0cyUlRUV2gvaHY3cWV2Syt0YnVtbzVNbWdzVXJqNUlVKzVtM1crdUdZ?=
 =?utf-8?B?N20yOFUvY2Z5STVrYlJDM2UrS2RYemk1MTlBZnVYV1ZOWVZodVVBQ3RJb1VK?=
 =?utf-8?B?Ung4Tk9UdU02QkJHTXlaZFI1Tmh2bk1pUEFEdFJTbG42WmN1T3pnSlh4b0RE?=
 =?utf-8?B?eGszakhLUGpMWUxLNnJ0QzJsaW1GUnFrYnFzNDFuY3FUbnNsbnh6M0JDM3VK?=
 =?utf-8?B?a1VQSk1VcXlzVG94dWZZMVlEczlFNkdYTVBWZnIwVVlTVXNGRjF3elhlL0Va?=
 =?utf-8?B?eXVNa3pIUzI0M3BNUS9vOHNGWkhiMG1QRjF3cndGZlNIRW9SZUtWdGlRdW9R?=
 =?utf-8?B?SkFDMVRqdUtKREVncGJ2R3YrMWQzK2M4Nm1qcTcwQ1FheGVxYjNZdGwrZk5r?=
 =?utf-8?B?T1pMeXFEYk5iUk90NjYrVUJCK1labE9DcVR3bkgzMEcwNlhxR3V6U0swRk5B?=
 =?utf-8?B?Nmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 592dc9ac-2032-4553-9f6e-08db7ba0446c
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jul 2023 08:34:07.8505 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: y1xD5CRXtqjtioQBallUvsWcThNvN3HjF7/qImxyIpS54lMgALX7OgX7rcp65dWqzRvR0GfDjUmy7UkXsF3mh/LMJaT3vyW0oufXT3SZ7bg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5454
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688373252; x=1719909252;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=p4JS0VfgftWCV72tBK3V+yySZHlEhmUeBqaNY727Nv4=;
 b=k0ulYPWapHVz/t0H7fzUHPL98hUKI25pwj6RLa8JwOQp8b2NHnCsTJ7a
 5iwGnU6LkPo2Rn0wAV226wu5yYenMsEjys7cWLYy8+AZZwp08D+vUk/Xa
 xmLze0qvbgeGhlJlsFO74B14RXKsbPIp+hgjkM8DCbHf7kV45QIXfmxK7
 nzcw5VFlm5zstBnrT30eEAVMKxdG2uB7XNbdDUIXABUmmm+mGl3vRKsRg
 rgCMAwC0Ghv6EgV7AZ1Ntn8+3XGpO+pNbZeI1DOuDTBsJtLFZENX93HLd
 93LO6V02zqcaIxMCjo2xGmHdcQH7sPescWcoy/mXd/+bJZl2pl3MtSqoX
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=k0ulYPWa
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: Fix memory management
 in ice_ethtool_fdir.c
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

On 7/3/23 09:44, Jedrzej Jagielski wrote:
> Fix ethtool FDIR logic to not use momory after its release.
> In the ice_ethtool_fdir.c file there are 2 spots where code can
> refer to pointers which may be missing.
> 
> In the ice_cfg_fdir_xtrct_seq() function seg may be freed but
> even then may be still used by memcpy(&tun_seg[1], seg, sizeof(*seg)).
> 
> In the ice_add_fdir_ethtool() function struct ice_fdir_fltr *input
> may firstly fail to be added via ice_fdir_update_list_entry() but then
> may be tried to being deleted by ice_fdir_update_list_entry.
> 
> Terminate in both cases when the returned value of the previous
> operation is other than 0, free memory and don't use it anymore.
> 
> Replace managed memory alloc with kzalloc/kfree in
> ice_cfg_fdir_xtrct_seq() since seg/tun_seg are used only by
> ice_fdir_set_hw_fltr_rule().
> 
> Reported-by: Michal Schmidt <mschmidt@redhat.com>
> Link: https://bugzilla.redhat.com/show_bug.cgi?id=2208423
> Fixes: cac2a27cd9ab ("ice: Support IPv4 Flow Director filters")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>   .../net/ethernet/intel/ice/ice_ethtool_fdir.c | 55 ++++++++++---------
>   1 file changed, 28 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
> index ead6d50fc0ad..89d6a1d2e7e3 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
> @@ -1204,21 +1204,16 @@ ice_cfg_fdir_xtrct_seq(struct ice_pf *pf, struct ethtool_rx_flow_spec *fsp,
>   		       struct ice_rx_flow_userdef *user)
>   {
>   	struct ice_flow_seg_info *seg, *tun_seg;
> -	struct device *dev = ice_pf_to_dev(pf);
>   	enum ice_fltr_ptype fltr_idx;
>   	struct ice_hw *hw = &pf->hw;
>   	bool perfect_filter;
>   	int ret;
>   
> -	seg = devm_kzalloc(dev, sizeof(*seg), GFP_KERNEL);
> -	if (!seg)
> -		return -ENOMEM;
> -
> -	tun_seg = devm_kcalloc(dev, ICE_FD_HW_SEG_MAX, sizeof(*tun_seg),
> -			       GFP_KERNEL);
> -	if (!tun_seg) {
> -		devm_kfree(dev, seg);
> -		return -ENOMEM;
> +	seg = kzalloc(sizeof(*seg), GFP_KERNEL);
> +	tun_seg = kcalloc(ICE_FD_HW_SEG_MAX, sizeof(*tun_seg), GFP_KERNEL);
> +	if (!tun_seg || !seg) {
> +		ret = -ENOMEM;
> +		goto err_exit;
>   	}
>   
>   	switch (fsp->flow_type & ~FLOW_EXT) {
> @@ -1281,16 +1276,25 @@ ice_cfg_fdir_xtrct_seq(struct ice_pf *pf, struct ethtool_rx_flow_spec *fsp,
>   				     ICE_FLOW_FLD_OFF_INVAL);
>   	}
>   
> -	/* add filter for outer headers */
>   	fltr_idx = ice_ethtool_flow_to_fltr(fsp->flow_type & ~FLOW_EXT);
> +
> +	if (perfect_filter)
> +		set_bit(fltr_idx, hw->fdir_perfect_fltr);
> +	else
> +		clear_bit(fltr_idx, hw->fdir_perfect_fltr);
> +
> +	/* add filter for outer headers */
>   	ret = ice_fdir_set_hw_fltr_rule(pf, seg, fltr_idx,
>   					ICE_FD_HW_SEG_NON_TUN);
> -	if (ret == -EEXIST)
> -		/* Rule already exists, free memory and continue */
> -		devm_kfree(dev, seg);
> -	else if (ret)
> +	if (ret == -EEXIST) {
> +		/* Rule already exists, free memory and count as success */
> +		ret = 0;
> +		goto err_exit;
> +	} else if (ret) {
>   		/* could not write filter, free memory */
> +		ret = -EOPNOTSUPP;
>   		goto err_exit;
> +	}
>   
>   	/* make tunneled filter HW entries if possible */
>   	memcpy(&tun_seg[1], seg, sizeof(*seg));
> @@ -1298,25 +1302,20 @@ ice_cfg_fdir_xtrct_seq(struct ice_pf *pf, struct ethtool_rx_flow_spec *fsp,
>   					ICE_FD_HW_SEG_TUN);
>   	if (ret == -EEXIST) {
>   		/* Rule already exists, free memory and count as success */
> -		devm_kfree(dev, tun_seg);
> +		kfree(tun_seg);
>   		ret = 0;
>   	} else if (ret) {
>   		/* could not write tunnel filter, but outer filter exists */
> -		devm_kfree(dev, tun_seg);
> +		kfree(tun_seg);
>   	}
>   
> -	if (perfect_filter)
> -		set_bit(fltr_idx, hw->fdir_perfect_fltr);
> -	else
> -		clear_bit(fltr_idx, hw->fdir_perfect_fltr);
> -
> -	return ret;
> +		return ret;

Sorry for late report, but now you leak `seg`.

I would rename 'err_exit' to just 'exit', and keep all memory freeing 
there. (That would simplify the if (ret ...) above even more.

Remember to cc netdev and our intel Maintainer for v2.

>   
>   err_exit:
> -	devm_kfree(dev, tun_seg);
> -	devm_kfree(dev, seg);
> +	kfree(tun_seg);
> +	kfree(seg);
>   
> -	return -EOPNOTSUPP;
> +	return ret;
>   }
>   
>   /**
> @@ -1914,7 +1913,9 @@ int ice_add_fdir_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd)
>   	input->comp_report = ICE_FXD_FLTR_QW0_COMP_REPORT_SW_FAIL;
>   
>   	/* input struct is added to the HW filter list */
> -	ice_fdir_update_list_entry(pf, input, fsp->location);
> +	ret = ice_fdir_update_list_entry(pf, input, fsp->location);
> +	if (ret)
> +		goto release_lock;
>   
>   	ret = ice_fdir_write_all_fltr(pf, input, true);
>   	if (ret)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
