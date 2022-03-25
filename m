Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6999C4E7AAC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Mar 2022 21:36:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 02B2960AAE;
	Fri, 25 Mar 2022 20:36:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qrJuRes9mJlr; Fri, 25 Mar 2022 20:36:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0614C606A9;
	Fri, 25 Mar 2022 20:36:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F38361BF396
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Mar 2022 20:36:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EF2B1844A7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Mar 2022 20:36:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AXugk_shM6hv for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Mar 2022 20:36:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4EF6A842D4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Mar 2022 20:36:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648240597; x=1679776597;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VMJ3VWzZdrNAhtGbnEeuzqrk9STdgZZdImHdinVE1Nc=;
 b=XOmfGQuf5ylIFb1j22WmO1PKyfxhzo1OTH+eXx20Abkm0oNZ6n1m6Now
 jfLcprDzgP2YDcr7/1qSO7fK+AYWbJLQ++87fxDSLYeb3vwVaNGhQNRfD
 FQ927fwDYb3IEL5kmtvW6co3qWifI79QNr7jr9h+1COjn/iFCgroLsAuJ
 fiyMLM9OxmY7dvsfGUmPTWrB0LihlBsZopSSaBSr7EHT0p44cjGqwctuw
 FNByNUqcWnObii7kL+wq7HrhQGfK3Jepw1gi7apGUhZ/se0JApn+yNJxs
 Yn9EHa6Vmx8Q7uO8qZ8YHNtT7smxF6uDCulPJZ6YmRmeiGr88Dhgo65m2 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10297"; a="239314452"
X-IronPort-AV: E=Sophos;i="5.90,211,1643702400"; d="scan'208";a="239314452"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 13:36:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,211,1643702400"; d="scan'208";a="650364892"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga004.jf.intel.com with ESMTP; 25 Mar 2022 13:36:36 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 25 Mar 2022 13:36:35 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 25 Mar 2022 13:36:35 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.43) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Fri, 25 Mar 2022 13:36:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gUbrYAYoPnwf4LYKlK7g0tLyvNBaNCmOCBcZJyjf3vwT+OImxjUaD4S/6MFq7sHAA5pXh/vObWKiJr2MIES6gFtdB1oEHly45BOdEI5EP4mNb8BBeHyPMUkBc1vFgO+oAE7pLiacoG/9Mk+BZfdaZzaU6Ed/bCx4LPUK+14Wx06DGuIRlc7HVjlA9U3nXd2+iZ9zkkty9F1fqX3W6ZAkz2zy11LC+52Nc+EzOQetwsMME0Adwfq2aVlS6aPerzGc0gtpmwoQ0c3y/ikk+q3bmb2sGeSFGMNAE2YzAPi071asrdflxkBR2QPQISMw64+o/rxafhKq1M0CN2I1zZrahQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bZYU/P5m1INdmjbhG2gONoMUNTf57IIiB3+y5jAs680=;
 b=DeJqZupxSDLOQ+TMWhAfLvb+luE5bwWvFjgsfa0chiycgfjF1Mdcb4cWI92YexIYmXx1atWRiXZGiLPCQPN4gmBLEM1QwLO2ltRUnb/Rj/dCVGFtHHEUl/ZyXYO3KNaM6Vn8hhgWwFDE4kZ7UInjm3cEswf7DeCcNGAE8Xa6OpK0Cie08DMPeyyzjzStEmAGdTWLk5xJjRAiZo7OBdDMJBwHBLAHqYHEeb0Sa8pht5s4cze4Sl5lvvwHpPQBzTI/WpMn95ljetRsYzZPieJjjOhIrqP9EwLoJHAVO6qCl/RVyx0bUcY0CwofcH21uUvrMUj/G1rEtoNRxW1Rgkr3hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by BYAPR11MB3847.namprd11.prod.outlook.com (2603:10b6:a03:b1::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.16; Fri, 25 Mar
 2022 20:36:33 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d484:c3ff:3689:fe81]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d484:c3ff:3689:fe81%6]) with mapi id 15.20.5102.019; Fri, 25 Mar 2022
 20:36:33 +0000
Message-ID: <06caaa26-d0ae-989d-d55f-6535ba30a117@intel.com>
Date: Fri, 25 Mar 2022 13:36:31 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220325102922.3320-1-martyna.szapar-mudlaw@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220325102922.3320-1-martyna.szapar-mudlaw@intel.com>
X-ClientProxiedBy: MW4PR03CA0277.namprd03.prod.outlook.com
 (2603:10b6:303:b5::12) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1eaeb0b8-fa18-4ea5-8cba-08da0e9f266a
X-MS-TrafficTypeDiagnostic: BYAPR11MB3847:EE_
X-Microsoft-Antispam-PRVS: <BYAPR11MB3847D6E67AC8D0289E8E2FD4C61A9@BYAPR11MB3847.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bLe2pDYc5Bk7JYF932AeWtEEUY93P8+wFZCySKD8W4gDg80/K1/BnwXpnaE9UODdkwXqZXUk0PEGY/h+kQH6I5fbCR+bsGVB1Dt4J3JCZDnIekmtTyB4r/fQnDT4H8Pd5eccvLBUyTRCUcHWB4IEsZyQmdlfEgg0YN30oW+L3HjoZpsJ4wwFxfFLC2JR6FPLRAtdTUlmwWKbr4Zvs8EtBOHuKjp5kM0MznThVE084gUXH5rVyXBW2mG0kKnhW0caSMwMTlJu2P9UM4113L46VJ4+vav7YFQK/yP6mMCvNI9E/oXXH5rf/CekQTHe5NplCJhSe5s1klTw5AcKcbFNAUFeOlYpmuYWNbp8qmrF6JudENyI/anMeiOynucM77Wt6mCJNwMKEbluuB6eA9Bcd963LyjOhwxSI9fey/dTWSx1NkZepWUv6v169cBbf8FAPhvm2j0UD/JLQxOTjij/4ZvyGlJaLwasi9IkQWeBO66D+Ah3lcfRCa/YgvyAimX1sIpyvp8q0tA4Zc+rIW/UwwSIMYzqYGDQA109s3iMGXqVWSh2t4b1hMlP8TK8P0urr1v88CFDJX7Ky3YzKMQY9wT1mcRBiFeNRG8y2z8Aqu01g/pmIDrHT71BOaJFjsdDsCqv8wch2/RWsWm+EAFND1u2pQm1EZZPNiy1h7QyyRj7iwQpB513pv1tVE3aL8Wvr/fipIdJmdxxFwqWjdJ8VMs2I6nyBi0d1Dl5N4t/cVY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(66946007)(316002)(66476007)(66556008)(4326008)(31696002)(107886003)(36756003)(2906002)(82960400001)(38100700002)(8676002)(2616005)(26005)(6506007)(6512007)(186003)(86362001)(508600001)(6486002)(5660300002)(31686004)(8936002)(4744005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y0dteUY0c0JpVnJXR3dwTnpLaXBBbFBwTzBQK3pVN2toQzhwU0lHVjZyVXh2?=
 =?utf-8?B?UTNENjZHSkR5ZEJDY0M1SkpIZnl6ZWg3WW1kZWlEWW5LWW1zWFA4cjd3ZXJ3?=
 =?utf-8?B?TzdWYm0xaUhIaUVXY3YwdEc3SkFMalRFVG9YeGRPTGVMeVVKOG1iTDUxUlNo?=
 =?utf-8?B?UWNDNm5EbEZOUGFBUkdOcTlMQmxjbDhVMUovZW1yNS9XN1d6RHQxMmwxSFZj?=
 =?utf-8?B?V09oSUFLZDlpZCswQnJWRGxTeHlBMUJYUjJheEx0NTFDTDV5NFlUcTVhK3Vl?=
 =?utf-8?B?aEU3dFVpSHMyc0x0d2RqMnRNaXpNM3F3Rk54TnRWUnlsVlhKM0EzaTEycS9G?=
 =?utf-8?B?WC96MFBMUnllaitheTdEcEhqVDNvZ0gweG5EK0dFbUh1U1R6Q1VPaHMveUFz?=
 =?utf-8?B?dlVvR01vbDExMUJOeUZwS1JjM1Qyb3krcG1uWEg0dmtYa3prUnhVZUpkTHdt?=
 =?utf-8?B?Z0l1ZXdBSDljZFNtbFV3Y1JmcUdLMFh0cDdVdUZDenE1cmtBQXJtemtMQnM2?=
 =?utf-8?B?WWcySUlyelYrK0ZhczZJQlhhNHV6UUR6NWFvNU4zL1BIbzk1YlJqU0pORzJ0?=
 =?utf-8?B?TDU4ZzhhS01sUTJKdkZNczBPZ3Raa2xtY0dvNGFnZTJBU0lNRHBpZnVoUTBG?=
 =?utf-8?B?cHVTMVN3UHBST2VQVGI2bXF4TmRZdWJwM3JOQVlDamtzdjNEcnF3R1h5YXdp?=
 =?utf-8?B?YWpKd0o1QTYwR0RWSklCRHJCTjJwbFpjRjkza3QrcVI0M3A4eDZHRDZPQi9k?=
 =?utf-8?B?eVhqSSsvSVZoNTFwQ25YL1lRdjY5dER2MHZyRHlaNWltMGNSY2pndWZXV0Rl?=
 =?utf-8?B?MnB5SFhKYWg3ZDdrOGdkVjIyNTlVUERGYXBzUU1nSE9YZVFtQzFQQksrUmdP?=
 =?utf-8?B?MXI3ZDJkN1FCQ21NUER0NXJnbjAxSngrMVkrSGhWNHpYeEZPTTFkcVFHeHp3?=
 =?utf-8?B?SzJHS1YwT0hyNDZmTUIvbkxLRlZpZENzQk9MOW9CYzFXaW0rYUMvaFhuNC8r?=
 =?utf-8?B?eFc3Q3lKZytCZkRCMUUrTDMyd3VPbHNQSVh2L01PRVkzdHcxcHRJRE9WMkV1?=
 =?utf-8?B?MGR2ek0veEp4eVBqUm9yc3ZIektybmpJb0kvT3J0SmJiVGE4Mm9vTFluTjdN?=
 =?utf-8?B?dHJCNWRMcGcrWXl2NEVNM3BsYVBXSk8rcjE4ZDA4VGxJTWNXZUx1RFBDNmdO?=
 =?utf-8?B?UG9UOW93aXBMUGZGNGN1dHh6aDIzR3QzcHYvTXhKY2VRRENZYS9GajUvWjM0?=
 =?utf-8?B?cjVNbEdrb2FHa284MlJjbFA4LzVQNkhZRjJKalBvQzk3KzVtajBBT2FmbDFn?=
 =?utf-8?B?KzdWbTkrb3BGSnNrMzY2Y3REWnVRL2YyQk4wSlFteWFkKy9rWHFFVGcxaGhu?=
 =?utf-8?B?L0VWMTdjaHA4T3JWM0h6N1NzUTVTN2pBaXZsOUFGbkd4ZGdQZWs5VVRUcjVn?=
 =?utf-8?B?blorOEx0WEszV2N2eUtzek1pQ0JPd2NxSzBGSWNoTW82L2pwYlBwcGg5N09R?=
 =?utf-8?B?RFZMcUNNNTRibG9PbnZCL3IrelJ5RlF5UlFqd2Ewa0s5dElsaXB0OWZCT3Z1?=
 =?utf-8?B?cGxiZHdvRG1qYkNZRE1uMFRCVnRqblRVMnNJSmFmbmExdVlFSUh6V2JEaHh4?=
 =?utf-8?B?MElkM3hTdEFlQ1NVZ09VNVlMM2lUTy9uWkI0M0lhU1V0SjZJUVNvdkJSSXhI?=
 =?utf-8?B?NVRteWxIN1Z6MERMajJHS25ZTUNIbkZ5TlVISjBxS1BGeXljQmNJbmJJMXNj?=
 =?utf-8?B?alRiUVNSVjRLbnB1T2pHNXpXN3g5ekJPMDlRNXhCTk11MDRLemowTk1IYThN?=
 =?utf-8?B?RkRtcFk1a0hPQUFlTllnMjNUUnVkL3dxRVZNUnBpTmFxZW1Ub2dQVHJUWUNn?=
 =?utf-8?B?RytPbThIOUppMzMzTFEyMG5sN3hsODE3d2poMlVOeWtTK29jQVcvdHJzalRG?=
 =?utf-8?B?QWR3NU5xWVN3aG1jVXhKYk9RckFhNm9BelBzUnd6US8wZnYweVhQSUZpWGo2?=
 =?utf-8?B?QVBUN0w0a1dBPT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1eaeb0b8-fa18-4ea5-8cba-08da0e9f266a
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Mar 2022 20:36:33.5014 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /+PqGjvQuvt0gWrqLZNl2jcElNOmJFXVAYt/jiV+oCdAeGET7E1sKXUUVO6a7QRuHkS3R6sNzRv644BFBMomM5TAack5vb2nLG2OmAD2G/w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3847
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next] ice: Add support for
 double vlan in switchdev
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
Cc: Wiktor Pilarczyk <wiktor.pilarczyk@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uIDMvMjUvMjAyMiAzOjI5IEFNLCBNYXJ0eW5hIFN6YXBhci1NdWRsYXcgd3JvdGU6Kwo+ICAg
c3RhdGljIGNvbnN0IHN0cnVjdCBpY2VfZHVtbXlfcGt0X3Byb2ZpbGUgaWNlX2R1bW15X3BrdF9w
cm9maWxlc1tdID0gewo+ICsJSUNFX1BLVF9QUk9GSUxFKHFpbnFfaXB2Nl90Y3AsIElDRV9QS1Rf
Q1ZMQU4gfAo+ICsJCQkJICAgICAgIElDRV9QS1RfVkxBTiB8Cj4gKwkJCQkgICAgICAgSUNFX1BL
VF9PVVRFUl9JUFY2IHwKPiArCQkJCSAgICAgICBJQ0VfUEtUX0lOTkVSX1RDUCksCj4gKwlJQ0Vf
UEtUX1BST0ZJTEUocWlucV9pcHY2X3VkcCwgSUNFX1BLVF9DVkxBTiB8Cj4gKwkJCQkgICAgICAg
SUNFX1BLVF9WTEFOIHwKPiArCQkJCSAgICAgICBJQ0VfUEtUX09VVEVSX0lQVjYgfAo+ICsJCQkJ
ICAgICAgIElDRV9QS1RfSU5ORVJfVURQKSwKPiArCUlDRV9QS1RfUFJPRklMRShxaW5xX2lwdjYs
IElDRV9QS1RfQ1ZMQU4gfAo+ICsJCQkgICAgICAgICAgIElDRV9QS1RfVkxBTiB8Cj4gKwkJCQkg
ICBJQ0VfUEtUX09VVEVSX0lQVjYpLAoKVGhlcmUncyBhIHNwYWNpbmcgaXNzdWUgaGVyZToKCkVS
Uk9SOiBjb2RlIGluZGVudCBzaG91bGQgdXNlIHRhYnMgd2hlcmUgcG9zc2libGUKIzI2MTogRklM
RTogZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9zd2l0Y2guYzoxNDQ2OgorXkle
SV5JwqDCoMKgwqDCoMKgwqDCoMKgwqAgSUNFX1BLVF9WTEFOIHwkCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBs
aXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
