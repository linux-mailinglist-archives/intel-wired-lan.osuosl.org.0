Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D267E7861D3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Aug 2023 22:56:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1CBCB814B1;
	Wed, 23 Aug 2023 20:56:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1CBCB814B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692824187;
	bh=LeA3a2snOEs43LBIm9nzxKYbRTP4Mc7vc5BZpabRtKs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wFvLIGa5MH01wVEPC2eCiBFNpl7m6JUCN0H0pvcqgrUIS82h+KTG+pseSn0t2ORUP
	 oUFiFELo4FB2wPGvi5aHTHcF7IK3vuWqexv3MN0kF8/tfL3STkjdPxVCfVhkRxY7t9
	 zkomvm3nKACvdZ0/hpt6tvVBGRgKCRbjecgPidKxqtaNp/xQ6WZFSUHBLjbYm1TCOE
	 GU+dII4BoqS/svsW3A9eBh1kWoubI9hCUmT6voh2Z5Enzm061J88HQz+ivs+OjvHkU
	 hgMQhy6LkEZYkqIa8saxwcUamDjXFZesDmp7ku634eL0MxWM0I1to3X1q/KHBrHU1n
	 d6ME7y6PC1xDg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7selFNlT0A77; Wed, 23 Aug 2023 20:56:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 741FB813D9;
	Wed, 23 Aug 2023 20:56:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 741FB813D9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5605E1BF2BE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 20:56:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2E5C8813D9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 20:56:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E5C8813D9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qCTwqrfCYGsh for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Aug 2023 20:56:19 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0718F813D8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 20:56:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0718F813D8
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="378023034"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="378023034"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 13:56:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="802281180"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="802281180"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 23 Aug 2023 13:56:17 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 13:56:17 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 13:56:17 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 13:56:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gkHCatr7gFI20rqWdvuaFLHwX/+eB1s7mYmGCi2OIib7oOXrYZXVgBlWP4ZVAzjoxIAb7DanADvtJNxlAb8xoowC1P5qUW9yUF1cSNrXKu5x4YzOcNiYPmqyC+HXsa4CUN/Ib/cNPRpAMdaNQ3EGcZ3IKtDAL6gvcHMEEjRaS7MHX3KcUNuixR45w3npAhn36flKH8yGO/j+edSugr3O0Fnpxwd5ZZemhbZhNe/f9LLoPuKLQAUFM17C/78VjSX/HSkToAU7woZApqAu6W9kuvQC0UUxuYZUKy/C5kNY4qR1qq7DHXERDM8Pk1QXsicCWQqXLj5YLtXLofEwN1LP9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SSaFOMNyuHurPNfr+3cNqwYOw6I2DAdLBDXBe2+Xggc=;
 b=CMMKKJQk9LHY8TIy4MkXCg6bq6SW44fPkTscW23PTU6m3WUmIiUX8tKfSsxYgq1blkboNbYbaPf130/TOPBH7ru09IZEB0Ue4zisWr1C0qudzMsWUEewASXr7zGNqGsKrIZEHjppPpRMZOrdTtOOpArNQgCkILZ3LUweSairrZPTW2BrvKASahbPYoFIGmrPGemul2uY5T8c+jb7+bQFDNP+CpVwMq2cuPu0WcCjtMIN/6y3y+lw+ADfBg2onU74Jhvf8ZTl3rRkck5CjLFkJBtXx0c0W41ElD0rk4DCm1tVINC5PFG0AbCZpswXxpXkUIInM5Xm4VLy8hvH4Xp5Aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by IA0PR11MB7185.namprd11.prod.outlook.com (2603:10b6:208:432::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.26; Wed, 23 Aug
 2023 20:56:13 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::6a23:786d:65f7:ef0b]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::6a23:786d:65f7:ef0b%6]) with mapi id 15.20.6699.022; Wed, 23 Aug 2023
 20:56:13 +0000
Message-ID: <54a53056-8217-bf67-155f-ab5569df71e1@intel.com>
Date: Wed, 23 Aug 2023 13:56:11 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Content-Language: en-US
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230822124044.301654-1-karol.kolacinski@intel.com>
 <20230822124044.301654-5-karol.kolacinski@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20230822124044.301654-5-karol.kolacinski@intel.com>
X-ClientProxiedBy: MW4PR02CA0003.namprd02.prod.outlook.com
 (2603:10b6:303:16d::30) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|IA0PR11MB7185:EE_
X-MS-Office365-Filtering-Correlation-Id: d45d23db-4cc9-451d-3040-08dba41b62eb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3VudAyUaCEebbF5C2c5Rgz4UpORoY1eKcXQWHmGh0b4cDE1JU3asWRM2+C7PiA6F/41OPIN9X6yK8kf32Cdrvvk6Zbz9JZNTI8SWvGaJgEMgSFrA0afWRrN9+ZwGwwl9U2BnFbigPkkoTuGvC13Mz9sVazH24aDnfofdaUhD3vUwe9QQjmWDVxjIbqGbbTclROx1sEksTQR1TEdvGTzpBp0gZHBYqLPeU4tCTPlQ1cu6/E4d3CCFIa8KPD9+q/fu3BX+ShzE4U72ONU1VgPt8l+dHIRHaL8mU7tWYo2cJ+zNBIdzCzE4ZuF9dj796YsH69qE8QjuzbtY3005mWFbM6Im9BevaDW5JPB4V7AoEJlKtaSPg0jqxOb5k2aAuLXcuZ66su2Bw5Yf80VEVxXhjIUfJ+dWh6QIJ8ujLcteS6khN4ZJswVxH3evoERP/nyG44fOGd1nFGXurujcbwXlFSXJAGeGWaBgqqR3kwayJMZtqL2Ld3U+7nd0ltzR4CvZVdKJsQLTTekBEQgtIJHAQIc+jLQwK0cPYudFQrDg5jE6iWlIdQAxgaWwQChIHtF1CFZ5tA5BRI0IeqaE0uxKLhYFghNjIg+1Lk4Hmcj8rlfAiwWmUmB5CQckqn3kNUKBtJrDte4oVs1sLzcwDsdCcQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(346002)(136003)(39860400002)(376002)(396003)(451199024)(186009)(1800799009)(31686004)(478600001)(86362001)(36756003)(6486002)(6506007)(66476007)(66556008)(316002)(66946007)(53546011)(41300700001)(31696002)(6512007)(38100700002)(82960400001)(8676002)(4326008)(8936002)(5660300002)(107886003)(26005)(2616005)(83380400001)(2906002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q05ValZRR0k5M2hRV3JYVWdoQVNEQzRybzBsaFlyQUJZS0FRVlZZb2pzQVBi?=
 =?utf-8?B?NkViZkdDNkZhWHJhVjIyb1pkMlo2dVZOQnNqbkJBTmh0M2lNdzVKeFdnNUhV?=
 =?utf-8?B?alJmazRsUm9UbTliMC9vZ1g5YVBZekhVUnJORlZSQTcyYWdCcnBVZWdFY1o5?=
 =?utf-8?B?U0FYeFBwbG0yTjMzMmlYTjZ5cUI2SnZDZFRGblloZEphUnRXbnNvWEEvdTE5?=
 =?utf-8?B?cC9MSlQzeVpOSU5GckNPNXlGK050TWw5SXlUaGlIeTl1RUZnQ1BUb0lGcytq?=
 =?utf-8?B?V1ZKQ2ZLN2JTdVpVbjV4WXJlMnc4V1NsUHRISkV0N3JXM3QwdnZIczI4Um41?=
 =?utf-8?B?ZmFvZ3RkNWNuNWRzQzlJSGFEQzd5QVQ0cFpkMXJjbnl5VURXdHZ0Q2JQazNK?=
 =?utf-8?B?L2xmQXVBclBVUUVuOXFIV214SWdFVkQvc1J2TzJkVXFkSUxDZitYM1NqeDVO?=
 =?utf-8?B?RWhxaEc0RnpMY0E4NzlrNVRHMHFnZXdUSVNwRGhLd3ZxeXplTytWU25hUzBZ?=
 =?utf-8?B?bnFDYUNJMUpOOU5wSXpHYUJaYmcyQWRiMzY0eU1xdFZ4bjlWZHU1ejhtdmVC?=
 =?utf-8?B?L1lYWXVKNXVkVldHWWdvdFZ0a3lwbU02TkZjYnU0V21QbjVreHRVWE5RQkVS?=
 =?utf-8?B?cU80WWR0U0IyOXRia2ZNR3hRVmoydUpBYjgyMXRSV2dpT29qaC9LdzdrVnc2?=
 =?utf-8?B?am5vbEdZeGN2UXJ3amZLL2JGUmJhYW1LNGpUQ0tIeUNoQ0JIVThkVjNuOGNo?=
 =?utf-8?B?S2lmZDczNi90b1c1SkxlSUhJWTVNVHkyQmNSSE9QcEVzMnNIdFJ2R2JpcUh2?=
 =?utf-8?B?WXZNL09EcllaR1pBcTI3VG9QQmRKVGJ5Z09zWTBQR3dyOGN6N1RVRVVjZFFT?=
 =?utf-8?B?N0hVSkRxcjdSL2w1REt3WE55WXRKSXVzaDJKYXRVU3Fad2xYMVdML2NrZWw4?=
 =?utf-8?B?N0xUbzQzMVJva2pabDZpTWtRaUFmalRUS1BVNEJaSFdrTmhBZHB0R3JNM3hh?=
 =?utf-8?B?TkpYVDFlUFdzVStRVmprWkdNZEoxSzhqM1EzSGRibXhOYkR6b1dVa3BqdUl5?=
 =?utf-8?B?cGJJVXF1YXp6WDRieFVkY0ZxWXc5ckFURDhHUmFRclBlNlBTbVY0Rzh6WTAy?=
 =?utf-8?B?T3FITkNuTW5LQjdjaGl0ZVZ4QjQ0Qm9vdXQvMmhWNERqWjIxTnRuaEI3cU9y?=
 =?utf-8?B?QzZKU2RRSk9yVWdFUTRDcnF0cWFHTkEybWxIMDRaTEt4cHhXOTRwL0djQXI2?=
 =?utf-8?B?R0hHK2hIWWxoa25VZEYxSkpQZWo3eTdyRE9IWWNlK1hLeWZCVFN3YUFiK3lq?=
 =?utf-8?B?K2VmaXJSaURERDlCdWxWOVIwdWMzWHJ2K082RDVzd0N1Si91eGl3Rms2OW4r?=
 =?utf-8?B?aXBBN0tiaHFvWXlhZWxsK0N2ajhza0lZYWpSbnRjeUJwVitaSExncFIrSll5?=
 =?utf-8?B?U2RqTVVBN1l1WWZSRUJvdHBSN0x5d1FtVTkxdms0S1BCSEJ2TllnRmJWODRP?=
 =?utf-8?B?WFpoT2RiejY2TmlTcHMzT2lzYnh0TnNSb1ZrWXZFTUFwTUdPVkkzeUg4TEZL?=
 =?utf-8?B?REVUMU1rTHRHTDY4R3Z2TXg0Tll3S3g5Z04yNXZZUElFdCtHa2Z5N1lxRnRy?=
 =?utf-8?B?VmtwOVdaTDZBQ1h1ZmVmbUQ3T3hnZTc3YURJNElQVnc1QjBjcjkzc05FM0pt?=
 =?utf-8?B?TFJ2VlQ5cVRMbjlPakltaVpZUjByR2xYMmI2clRWK1dMdXEwLzdHZzJnYWdR?=
 =?utf-8?B?azNGUHc0VGo4NWxQTktjbUJHTTg4REljMzZxZFM0cmUxTHRrVzNYd2ZmWjZG?=
 =?utf-8?B?NHU5UDJxL0FzbmFMalBGdVN2czhBY05HRm5pVVpNNEYvL3JwWVQzL3YzemY1?=
 =?utf-8?B?MmMxV1FiMkd6WGExd3I5RHltLzZKTitrSU1qbTlPWGVKbkRZMXVuZ2o5U1Z4?=
 =?utf-8?B?bVZydFhEZkVGT092c3hlN0o4TXBxZFBGK1hIU3VGQXU4WFl0R28wSUY3eThD?=
 =?utf-8?B?dnJOd2tJcGxDN0xjNkZzK3Z0eTd4U0VVTHhGOTU0eGlOVlAzcWlwcVZwM3hD?=
 =?utf-8?B?OUd3S1kxWTZyR0FRV0swc3FUZDViQVVmdTBMKzMyR2ZTYzdYQ2lBWWtVS3FU?=
 =?utf-8?B?WG1WVURxcUx5cjJzZityeFFoSWNRWnRTWXpMa1dJQlRYejZWRWRxZFNDdjhN?=
 =?utf-8?B?Snc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d45d23db-4cc9-451d-3040-08dba41b62eb
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2023 20:56:13.4773 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oVDyFfoTOZQCT3SHa4VQXgCZktisqUIlc9AW+01nPPX+E9tQp9GwEBXmbZz72WwsrtfG7EvZ0wHuiin+Y5FQd9U/Mx7VMGDeHbc4ezxrGIs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7185
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692824178; x=1724360178;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IoNMHdXToSkdNV/P+Ls0j6WvSu4gX+qouzOVvkzW4t8=;
 b=HCJ6hfowTiETjTdSbqSPAuPqs+xWpIFrqMYs+OBnoJNq4n05a8b8omDz
 C9P4EKFF0SrV8Pl7QADvnSnAcQJCipeMwqiHUd9Zl1ePDMn4/RdnyWjiZ
 xA0Cb1/wOAxiAjb3TiZCfIkFsnwDMDX3yLq6ZKiOpYZmJOTeXdvajGfXp
 0cqFH5mjWuQ00Keos5orxFjdw8hkXyTuTQr9ytIx0etOQk2ySwclJBXC/
 ax54GaJ2sy65VFnLbtOKCTsKd6rWM9a/lVBcY/0sXvQ1iskP3pUeJ5oNt
 YKkwafVVtG+T/uE8qoCmlyobbQNrQnVdS0mMYXCjEv3vCceB/5cExd9GY
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HCJ6hfow
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 iwl-next 4/9] ice: rename PTP
 functions and fields
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 jesse.brandeburg@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/22/2023 5:40 AM, Karol Kolacinski wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> The tx->verify_cached flag is used to inform the Tx timestamp tracking
> code whether it needs to verify the cached Tx timestamp value against
> a previous captured value. This is necessary on E810 hardware which does
> not have a Tx timestamp ready bitmap.
> 
> In addition, we currently rely on the fact that the
> ice_get_phy_tx_tstamp_ready() function returns all 1s for E810 hardware.
> Instead of introducing a brand new flag, rename and verify_cached to
> has_ready_bitmap, inverting the relevant checks.
> 
> The ice_ptp_tx_cfg_intr() function sends a control queue message to
> configure the PHY timestamp interrupt block. This is a very similar name
> to a function which is used to configure the MAC Other Interrupt Cause
> Enable register.
> 
> Rename this function to ice_ptp_cfg_phy_interrupt in order to make it
> more obvious to the reader what action it performs, and distinguish it
> from other similarly named functions.
> 
> The ice_ptp_configure_tx_tstamp function writes to PFINT_OICR_ENA to
> configure it with the PFINT_OICR_TX_TSYN_M bit. The name of this
> function is confusing because there are multiple other functions with
> almost identical names.
> 
> Rename it to ice_ptp_cfg_tx_interrupt in order to make it more obvious
> to the reader what action it performs.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 41 +++++++++++++-----------
>  drivers/net/ethernet/intel/ice/ice_ptp.h |  6 +++-
>  2 files changed, 27 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index bd94b42e19dd..393156b9b426 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -281,11 +281,11 @@ static const char *ice_ptp_state_str(enum ice_ptp_state state)
>  }
>  
>  /**
> - * ice_ptp_configure_tx_tstamp - Enable or disable Tx timestamp interrupt
> - * @pf: The PF pointer to search in
> + * ice_ptp_cfg_tx_interrupt - Configure Tx timestamp interrupt for the device
> + * @pf: Board private structure
>   * @on: bool value for whether timestamp interrupt is enabled or disabled
>   */
> -static void ice_ptp_configure_tx_tstamp(struct ice_pf *pf, bool on)
> +static void ice_ptp_cfg_tx_interrupt(struct ice_pf *pf, bool on)
>  {
>  	u32 val;
>  
> @@ -320,7 +320,7 @@ static void ice_set_tx_tstamp(struct ice_pf *pf, bool on)
>  	}
>  
>  	if (pf->ptp.tx_interrupt_mode == ICE_PTP_TX_INTERRUPT_SELF)
> -		ice_ptp_configure_tx_tstamp(pf, on);
> +		ice_ptp_cfg_tx_interrupt(pf, on);
>  
>  	pf->ptp.tstamp_config.tx_type = on ? HWTSTAMP_TX_ON : HWTSTAMP_TX_OFF;
>  }
> @@ -591,9 +591,11 @@ static void ice_ptp_process_tx_tstamp(struct ice_ptp_tx *tx)
>  	hw = &pf->hw;
>  
>  	/* Read the Tx ready status first */
> -	err = ice_get_phy_tx_tstamp_ready(hw, tx->block, &tstamp_ready);
> -	if (err)
> -		return;
> +	if (tx->has_ready_bitmap) {
> +		err = ice_get_phy_tx_tstamp_ready(hw, tx->block, &tstamp_ready);
> +		if (err)
> +			return;
> +	}
>  
>  	/* Drop packets if the link went down */
>  	link_up = ptp_port->link_up;
> @@ -621,7 +623,8 @@ static void ice_ptp_process_tx_tstamp(struct ice_ptp_tx *tx)
>  		 * If we do not, the hardware logic for generating a new
>  		 * interrupt can get stuck on some devices.
>  		 */
> -		if (!(tstamp_ready & BIT_ULL(phy_idx))) {
> +		if (tx->has_ready_bitmap &&
> +		    !(tstamp_ready & BIT_ULL(phy_idx))) {
>  			if (drop_ts)
>  				goto skip_ts_read;
>  
> @@ -641,7 +644,7 @@ static void ice_ptp_process_tx_tstamp(struct ice_ptp_tx *tx)
>  		 * from the last cached timestamp. If it is not, skip this for
>  		 * now assuming it hasn't yet been captured by hardware.
>  		 */
> -		if (!drop_ts && tx->verify_cached &&
> +		if (!drop_ts && !tx->has_ready_bitmap &&
>  		    raw_tstamp == tx->tstamps[idx].cached_tstamp)
>  			continue;
>  
> @@ -651,7 +654,7 @@ static void ice_ptp_process_tx_tstamp(struct ice_ptp_tx *tx)
>  
>  skip_ts_read:
>  		spin_lock(&tx->lock);
> -		if (tx->verify_cached && raw_tstamp)
> +		if (!tx->has_ready_bitmap && raw_tstamp)
>  			tx->tstamps[idx].cached_tstamp = raw_tstamp;
>  		clear_bit(idx, tx->in_use);
>  		skb = tx->tstamps[idx].skb;
> @@ -895,7 +898,7 @@ ice_ptp_init_tx_e822(struct ice_pf *pf, struct ice_ptp_tx *tx, u8 port)
>  	tx->block = port / ICE_PORTS_PER_QUAD;
>  	tx->offset = (port % ICE_PORTS_PER_QUAD) * INDEX_PER_PORT_E822;
>  	tx->len = INDEX_PER_PORT_E822;
> -	tx->verify_cached = 0;
> +	tx->has_ready_bitmap = 1;
>  
>  	return ice_ptp_alloc_tx_tracker(tx);
>  }
> @@ -918,7 +921,7 @@ ice_ptp_init_tx_e810(struct ice_pf *pf, struct ice_ptp_tx *tx)
>  	 * verify new timestamps against cached copy of the last read
>  	 * timestamp.
>  	 */
> -	tx->verify_cached = 1;
> +	tx->has_ready_bitmap = 0;
>  
>  	return ice_ptp_alloc_tx_tracker(tx);
>  }
> @@ -1338,14 +1341,14 @@ void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
>  }
>  
>  /**
> - * ice_ptp_tx_ena_intr - Enable or disable the Tx timestamp interrupt
> + * ice_ptp_cfg_phy_interrupt - Configure PHY interrupt settings

This should be in a separate patch, it looks like it got accidentally
squashed into this when rebasing.

>   * @pf: PF private structure
>   * @ena: bool value to enable or disable interrupt
>   * @threshold: Minimum number of packets at which intr is triggered
>   *
>   * Utility function to enable or disable Tx timestamp interrupt and threshold
>   */
> -static int ice_ptp_tx_ena_intr(struct ice_pf *pf, bool ena, u32 threshold)
> +static int ice_ptp_cfg_phy_interrupt(struct ice_pf *pf, bool ena, u32 threshold)
>  {
>  	struct ice_hw *hw = &pf->hw;
>  	int err = 0;
> @@ -2507,8 +2510,8 @@ void ice_ptp_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
>  	struct ice_ptp *ptp = &pf->ptp;
>  	struct ice_hw *hw = &pf->hw;
>  	struct timespec64 ts;
> -	int err, itr = 1;
>  	u64 time_diff;
> +	int err;
>  
>  	if (ptp->state != ICE_PTP_RESETTING) {
>  		if (ptp->state == ICE_PTP_READY) {
> @@ -2561,7 +2564,7 @@ void ice_ptp_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
>  
>  	if (!ice_is_e810(hw)) {
>  		/* Enable quad interrupts */
> -		err = ice_ptp_tx_ena_intr(pf, true, itr);
> +		err = ice_ptp_cfg_phy_interrupt(pf, true, 1);
>  		if (err)
>  			goto err;
>  	}
> @@ -2847,13 +2850,13 @@ static int ice_ptp_init_owner(struct ice_pf *pf)
>  		/* The clock owner for this device type handles the timestamp
>  		 * interrupt for all ports.
>  		 */
> -		ice_ptp_configure_tx_tstamp(pf, true);
> +		ice_ptp_cfg_tx_interrupt(pf, true);

This looks like a change that got accidentally squashed into this patch.

>  
>  		/* React on all quads interrupts for E82x */
>  		wr32(hw, PFINT_TSYN_MSK + (0x4 * hw->pf_id), (u32)0x1f);
>  
>  		/* Enable quad interrupts */
> -		err = ice_ptp_tx_ena_intr(pf, true, itr);
> +		err = ice_ptp_cfg_phy_interrupt(pf, true, itr);
>  		if (err)
>  			goto err_exit;
>  	}
> @@ -2925,7 +2928,7 @@ static int ice_ptp_init_port(struct ice_pf *pf, struct ice_ptp_port *ptp_port)
>  		 * neither on own quad nor on others
>  		 */
>  		if (!ice_ptp_pf_handles_tx_interrupt(pf)) {
> -			ice_ptp_configure_tx_tstamp(pf, false);
> +			ice_ptp_cfg_tx_interrupt(pf, false);>  			wr32(hw, PFINT_TSYN_MSK + (0x4 * hw->pf_id), (u32)0x0);
>  		}
>  		kthread_init_delayed_work(&ptp_port->ov_work,
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
> index 48c0d56c0568..30ad714a2a21 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
> @@ -100,7 +100,7 @@ struct ice_perout_channel {
>   * the last timestamp we read for a given index. If the current timestamp
>   * value is the same as the cached value, we assume a new timestamp hasn't
>   * been captured. This avoids reporting stale timestamps to the stack. This is
> - * only done if the verify_cached flag is set in ice_ptp_tx structure.
> + * only done if the has_ready_bitmap flag is not set in ice_ptp_tx structure.
>   */
>  struct ice_tx_tstamp {
>  	struct sk_buff *skb;
> @@ -131,6 +131,9 @@ enum ice_tx_tstamp_work {
>   * @calibrating: if true, the PHY is calibrating the Tx offset. During this
>   *               window, timestamps are temporarily disabled.
>   * @verify_cached: if true, verify new timestamp differs from last read value


We're using has_ready_bitmap instead, but we still kept verify_cached in
the structure. Oops.

> + * @has_ready_bitmap: if true, the hardware has a valid Tx timestamp ready
> + *                    bitmap register. If false, fall back to verifying new
> + *                    timestamp values against previously cached copy.
>   */
>  struct ice_ptp_tx {
>  	spinlock_t lock; /* lock protecting in_use bitmap */
> @@ -143,6 +146,7 @@ struct ice_ptp_tx {
>  	u8 init : 1;
>  	u8 calibrating : 1;
>  	u8 verify_cached : 1;
> +	u8 has_ready_bitmap : 1;
>  };
>  
>  /* Quad and port information for initializing timestamp blocks */
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
