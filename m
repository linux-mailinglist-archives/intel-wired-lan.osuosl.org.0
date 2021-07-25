Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 45EC13D4C19
	for <lists+intel-wired-lan@lfdr.de>; Sun, 25 Jul 2021 07:33:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EB70A832DB;
	Sun, 25 Jul 2021 05:33:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ob_UoD7-XFs2; Sun, 25 Jul 2021 05:33:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F93D82FAE;
	Sun, 25 Jul 2021 05:33:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 00BC21BF4E2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 25 Jul 2021 05:33:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DEC6582FEA
 for <intel-wired-lan@lists.osuosl.org>; Sun, 25 Jul 2021 05:33:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BTEoy0wViIet for <intel-wired-lan@lists.osuosl.org>;
 Sun, 25 Jul 2021 05:33:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9F03382FAE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 25 Jul 2021 05:33:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10055"; a="210179042"
X-IronPort-AV: E=Sophos;i="5.84,266,1620716400"; d="scan'208";a="210179042"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2021 22:33:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,266,1620716400"; d="scan'208";a="503300198"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by FMSMGA003.fm.intel.com with ESMTP; 24 Jul 2021 22:33:32 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Sat, 24 Jul 2021 22:33:32 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Sat, 24 Jul 2021 22:33:32 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Sat, 24 Jul 2021 22:33:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CQHoyuaH4a3dTtKQuZcilAkL3ObcStCMQu0aXE485wJu66Cx1UH5HFv7gnMCMHtJOfn6RyABwo6Rpmu3wGmjxEcUF5An5Yl1vEfj6To+1A04z+hj895n83wsYWFIZLjau6caWKyjO8icwQDXUYWm6jVVYFkwNrLW3gffk+JddfOImbTUyU/WvKd9Dz2eZX0Nb6pVj/Cjp+BM6XeFxf0RBm7LgMKNEkEhfb/ocZRhd/vyrpYvd7o5gEc3X2adc/JG9qi33keH5fdvkxXBcLr5iiAI/bcZSDr8ork4F1ji320yZzvQ0yqRFOyDPZJtp3N6h98KKsXzu4PxZdT0yPUkUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WNvlGlWWxQTdiRvxgR2JexAd7dqQp3K4hRUEsgrWbrg=;
 b=CSxA/VCskhSxglOxcPoV5V/99sYcmUhwm+7eoq9wpMYZchKdb8R0Jt9SdxSi2p9YozREbqcedaBl7hQqT6TVrQnlVlMjYgYlcxhQg77X9bWEAUkwH/eGX9LJahzErEGYfLLraGWrisOs0XhVrBgTy4o443ng7lUa4/n50zsiUKuw9xcXfbhq4+TG/nUzc6Dluzua/sCrnd1E5Zh591sksrtjdr7Cfd8IWHTSlE130RP9zdp+a2jHNi3n2ZunNRADGDNbbNt0NavoJAVpFyHa3qOQ6YHUpXsEpfAFULEN1jDeVyRXCyUXL5Po/AHk3AXyo9csXDxRW/kJLxo1BzWv7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WNvlGlWWxQTdiRvxgR2JexAd7dqQp3K4hRUEsgrWbrg=;
 b=IJQ+NTI0Kc2jzNfhVUNRYzMC1VWI2lzDO5/4BjGq+W6CK172+jQwZxWUGtIjh8S2ISxdilM9whYb2aNdt+iNEOziqmcGr6BSYk8HPaehP4k3LBtskXxW7VKanl61dLr3soTMZQ3I/pytp2Wp0buEqn8RtkaFgMged/68k+/bj/s=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4787.namprd11.prod.outlook.com (2603:10b6:303:6e::10)
 by MWHPR1101MB2287.namprd11.prod.outlook.com (2603:10b6:301:4e::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.29; Sun, 25 Jul
 2021 05:33:30 +0000
Received: from CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::b856:1bc7:d077:6e74]) by CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::b856:1bc7:d077:6e74%4]) with mapi id 15.20.4352.030; Sun, 25 Jul 2021
 05:33:30 +0000
To: Paul Menzel <pmenzel@molgen.mpg.de>, David Ertman
 <david.m.ertman@intel.com>, "Edri, Michael" <michael.edri@intel.com>,
 <devora.fuxbrumer@intel.com>
References: <04a175b6-797c-ab25-dbd4-f8bdbb165674@molgen.mpg.de>
From: Sasha Neftin <sasha.neftin@intel.com>
Message-ID: <958198de-818f-cebb-ec68-06dd2d6accb8@intel.com>
Date: Sun, 25 Jul 2021 08:33:23 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.12.0
In-Reply-To: <04a175b6-797c-ab25-dbd4-f8bdbb165674@molgen.mpg.de>
Content-Language: en-US
X-ClientProxiedBy: MR2P264CA0056.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:500:31::20) To CO1PR11MB4787.namprd11.prod.outlook.com
 (2603:10b6:303:6e::10)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.168] (84.108.64.141) by
 MR2P264CA0056.FRAP264.PROD.OUTLOOK.COM (2603:10a6:500:31::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4352.25 via Frontend Transport; Sun, 25 Jul 2021 05:33:28 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 61e54212-bfc8-428a-8c44-08d94f2dbc7d
X-MS-TrafficTypeDiagnostic: MWHPR1101MB2287:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR1101MB2287F93A92D44444DD744FD497E79@MWHPR1101MB2287.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FFVy5Vx5jicmLVOoe7AdWmeYZckb+S0f1RBVW3M0guwbWG4AlOdnRdsIJEucow0i2AhaIW0lz2uMWSjBDoNYQfrwauyryNO8yTcBy06gyFMNsa3Qhhx8MFxGsxvEYqCikcDE21OrpPejknpkrjiB8NgxtkAELJXI2bPai/n7uMqH3r+PJ1EONcjkyIQ3nn9PI6QT4BahHEd9uwil87JEjTvgmPVpWHIF2iL+zIZ/lyiUA+OQhPlGX/IA/rUpZElcWVuc0eK4lUuvmhXyJeEgXIK9Xp8BGQkL11LVe7tJZFL5HoFS4+NDNSFcvEx0T5E4epQ8usk+2QRC/A9LKlMucqBebx9hesGwJhOnDAh0aJ6pRjarMaOXNBIgoWOhdlTjWQpFzKY2aba8uczkMHzgjalsekMZJnBl7D5Otg//4tYt33bHSDeRx2oT+DPtPTIdU0gp7CiP5ehHir/eJyv8EwRss8uXhiSJuvWtTxVIWCzLY9N/IOevVWmMoL5xu4JnyhiO4Qt3j+Hs5B2NoCbvsacydKe1jGzEnRT/5qCEsJgrUHZVYhflNlxYjmdh1g9IRly3fbcz2JuKIG1aOMSh5DVHBeH76lyvvB5NKXWf1D8aUjxSDt5k4LReOKoAR3GU5+E3UZ81MOoHGn5WYV3jbnqdUYcXHg7t/D6gx9sznD5mzD5FW1fbPPi/ai54zB/KMjB9fK4V4Lwq5NGvker90x5Y9tivR8V2PKTG1fIW7P9W/V6/XJKC1Koe3n2av/jF0E9yvUPvRgjnbMtJi7fDRs/0jyrPnylh5IRa5dmJf5BStagnbeoRBFP/NJlDpLHGXbV1xhjCBERnmQeGTtwA0A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4787.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(376002)(346002)(136003)(39860400002)(366004)(8676002)(2906002)(38100700002)(110136005)(2616005)(15650500001)(36756003)(83380400001)(107886003)(8936002)(53546011)(956004)(478600001)(6636002)(86362001)(66556008)(66476007)(4326008)(26005)(31696002)(6486002)(186003)(31686004)(44832011)(54906003)(316002)(16576012)(966005)(5660300002)(6666004)(66946007)(81973001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z0ViS2VlSi8yY1hLaGoyeHhJK3NuWWdxVHlTdUpndHlmN3RuZ3ZEbHFScVZR?=
 =?utf-8?B?Yi9yWWtaenF3aGNCbE1PTUhtMTdnMTN2eGgxQXdGMnh5dkNkV3hUSUkrMjN3?=
 =?utf-8?B?Z3l1aTJ5ajAydXVwUFdDREJYK0F1cW9FSDFBM2ZhUTlEZmZHSytCSUIyVFVQ?=
 =?utf-8?B?UmNmQlZtcVY0d0xoWUJ5aGwvaDZuanZjYWI1bFlNSTZEQ3lOU3Q3U2FCWERT?=
 =?utf-8?B?Yy83RmVueFFSUHVrSlBJSkFQbng3MHNuUGxtR0FnTkxFODZhek9xTmdlRVpL?=
 =?utf-8?B?MGR6TzFpMkd5N0ZqTDNkR0RLUHRMR1MweUFyS1BHUkdBdHJINU9aejBhNGN1?=
 =?utf-8?B?NlRKUjRZSEdFcFZmMkNIU3I1N1d6QXZkeFgrWU9ldXl1VEsvWGYrWGpyWWNF?=
 =?utf-8?B?ZFBjaFdVd0Q4K2xRWmJIQ29LZzNONVc1TGN4d3NkRThwbnNuanNGL2dneGE5?=
 =?utf-8?B?SExUOW1zVjdXWmdYNFZ6VkFLQk40c3kzd0Q2M045WFQvRVlaaFZRUEFxampH?=
 =?utf-8?B?QmRJYXJTWGtzOWZZeUM2SmdZOGV3Zk9SRkQ1TGFDeDRoajV4ZHB2TTRjbkhK?=
 =?utf-8?B?dk1QTGR6RHgwTnplZTJYbENucm9vL09ldnBDajZWemQrdFl6ZWUzN1B5TFRp?=
 =?utf-8?B?RjREKzM3R1h0TmNhUEN6SlhncUFiYi9zeEhPeHZGNmlTWDZiM1pjNTJ0eXhR?=
 =?utf-8?B?NGRWUENVb2VlYzdyVjQ5QWFMOFlNeHZUOHcrTlQ4OW94UkpEcmxUODY0aXRZ?=
 =?utf-8?B?eDRzdm8vUkh0Wi9HMC9HalBBb1RMS1VPd29Bdzc0eVZRRmtPbVlrNzJSRUdN?=
 =?utf-8?B?QVRUeEQ3c3NvWWpERUFWWGJwanVMRWVHVC9kS0pkbHlGNm8wcmxNVnA2RDJp?=
 =?utf-8?B?d3FVcXJXbzVXR1lxemJVQmxYWEovckNXdDhWZW1ncWp2U2F2VlFDTnNrR3A4?=
 =?utf-8?B?MjFLNGNFYzhlRDdYakRrSXd3dU1DVlVXWDRHY0JBeVprd0dHakUzVzNpMVBV?=
 =?utf-8?B?Nko3V3RRaU9YTVRhRUlkT21DYTRDTXhHMnRlTnJzRWwyd2lZZnJqYjlkZzNP?=
 =?utf-8?B?U1orcjBXK0JnM3pxSW5UZXJ1cjZUZnFjeFdvaGg0bmxVd1BIVG1rS1VPcnla?=
 =?utf-8?B?SWF1RUhwbWpOOUo4blZER3l5VkRnWDFGQ0pVSG9IUTU2bnd4VjdkOU11amVq?=
 =?utf-8?B?R0hud1RoZlVZUkFxWVdqTlhJVk1qTUp6QVJwZExwc0VaaFVmeUdWQ0xxZks5?=
 =?utf-8?B?aXY2T3pVTmhpN1BWNzQ3a0tkcUhyWTRzYnk0SFkzN2dRZjZPeW5DcHlEelFE?=
 =?utf-8?B?eFlTejEvc2l3ZGNWbVorbDU2cE5uT0V4SXpOckdKTWtxRUt1M1JwVk0zWGdE?=
 =?utf-8?B?QmY3TUFCdWQ2enJQTFVlRWN2Z3lnaXR1MlM0RUd6VlBRWmZKUFFFS3ErQ1F5?=
 =?utf-8?B?bW5uN0d1SitVWlY3UjZyblNGZ1V1ck9XWjJYOHdxc1dEYUxqOWdoU1p3Y1BD?=
 =?utf-8?B?Y2JlWDBnR1J4eW5YWTlxVDRic2RwVS9PaEZFSnJ4OXBYamdOM3VTd0U1OWs0?=
 =?utf-8?B?cUxXc0UzTUpRWklLNytqdGdMYkJMNE9SWHMvMVBYZElpOFJZa3FJSU55cWw1?=
 =?utf-8?B?QTBBOGh3cyt1cXB1UFprL1lyOTVwRnRrditDZFZHQVd4VG11TFQ4LzZjM25Q?=
 =?utf-8?B?dlkwVGNsZDlyOHJVci9NN0FIdWhPcDh1UDNQWnBSZ2cxd29VSG9UNzhGWmV5?=
 =?utf-8?Q?F2BpgE53sjZje/Ofh9cYnAJkCRt9ws3ipbvuzdg?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 61e54212-bfc8-428a-8c44-08d94f2dbc7d
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4787.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jul 2021 05:33:30.5576 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +9khe182kCKgcXgZthAQZG5BTFbXqI0pSz/MXqsIc1e/H72rf2urAQ12G/7nQa74g7dEdjmttxBkiCMvTc7w9A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2287
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] What to do with info log message: `e1000e:
 EEE TX LPI TIMER: 00000011`?
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNy8yMy8yMDIxIDE1OjI4LCBQYXVsIE1lbnplbCB3cm90ZToKPiBEZWFyIERhdmlkLCBkZWFy
IExpbnV4IGZvbGtzLAo+IAo+IAo+IE9uIHNldmVyYWwgZGV2aWNlcywgbGlrZSB0aGUgRGVsbCBP
cHRpUGxleCAzNjIwLCBMaW51eCA1LjEwLjQ3IChhbmQgCj4gb3RoZXJzKSBsb2cgdGhlIG1lc3Nh
Z2UgYmVsb3cgd2l0aCBpbmZvIGxldmVsIChvZnRlbiBkdXJpbmcgc2h1dGRvd24pOgo+IAo+ICDC
oMKgwqAgZTEwMDBlOiBFRUUgVFggTFBJIFRJTUVSOiAwMDAwMDAxMQo+IAo+ICDCoMKgwqAgJCBn
aXQgZ3JlcCAiTFBJIFRJTUVSIgo+ICDCoMKgwqAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
ZTEwMDBlL25ldGRldi5jOsKgwqDCoMKgIHByX2luZm8oIkVFRSBUWCBMUEkgCj4gVElNRVI6ICUw
OFhcbiIsCj4gCkhlbGxvIFBhdWwsCkkgYmVsaWV2ZSBpdCBpcyBhIHNpbXBsZSBkZWJ1ZyBwcmlu
dCB0aGF0IGhhcyBmb3Jnb3R0ZW4gdG8gcmVtb3ZlLihtb3JlIAp0aGFuIHNldmVuIHllYXJzIGFn
bykuIEl0IGlzIGNvbWVzIGp1c3QgdG8gaW5mb3JtOiBMb3cgUG93ZXIgSURMRSBFbnRyeSAKVGlt
ZSAtIG1pbmltdW0gdGltZSBiZXR3ZWVuIGxvdyBwb3dlciBpZGxlIGVudHJ5IGFuZCBleGl0IHJl
cXVlc3QuCllvdSBjYW4gcHJvY2VzcyB0aGUgcGF0Y2ggdG8gcmVtb3ZlIHRoaXMgbGluZS4gKG9y
IEkgY2FuIGRvIGl0IGFuZCBhZGQgCnlvdSBhcyAiU3VnZ2VzdGVkLWJ5IikuClRoYW5rcywKU2Fz
aGEKPiAKPiBXaGF0IGluZm9ybWF0aW9uIGlzIHRoYXQgc3VwcG9zZWQgdG8gcHJvdmlkZT8gRm9y
IGEgbm9ybWFsIHVzZXIgaXQgbG9va3MgCj4gbGlrZSBzcGFtLgo+IAo+IENvdWxkIHlvdSBwbGVh
c2UgZXh0ZW5kIHRoZSBtZXNzYWdlIHdoYXQgdG8gZG8gYWJvdXQgaXQ/IE9yIHNob3VsZCBpdCBi
ZSAKPiBtYWRlIGEgZGVidWcgbWVzc2FnZT8KPiAKPiAKPiBLaW5kIHJlZ2FyZHMsCj4gCj4gUGF1
bAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50
ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdAo+IEludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCj4g
aHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFu
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13
aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8v
bGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
