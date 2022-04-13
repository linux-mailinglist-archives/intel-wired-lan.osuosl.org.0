Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2DC4FFD9B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Apr 2022 20:14:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B42FC82B3E;
	Wed, 13 Apr 2022 18:14:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SBXRWILKVrsR; Wed, 13 Apr 2022 18:14:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B181F82628;
	Wed, 13 Apr 2022 18:14:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0159B1BF576
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Apr 2022 18:14:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DC15281BF5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Apr 2022 18:14:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HfhnVY3eVENx for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Apr 2022 18:14:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2E7F381BD6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Apr 2022 18:14:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649873640; x=1681409640;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=1OUU8sg+Tal/oUTp1soX0loi5cyeBEA+PioXQopz9P4=;
 b=UzN7OLK9SkvMYpQtLHf2Ss7hllxmpSahqC5lP07Ut9pXSkgQucWF3wr1
 Sp2Tz8xDB01h0hSom20DzoAn92Vnk9PDp6PeXxybKdXvUKki+FLMzyX68
 ql0JF0f+252tOgc+iMfl1fmEJfGYi6w+SnaCOa/0FTuzyiBnGY1lVajmX
 6GQbi0uqxKGA4Xoi8/Lj8e50WOxINbtGFUU0w5TBfikzgmiGT0meQJIhI
 AaunyYyY6Lm30olDqiBSHkrga6iHl1O39rwg7b3AH+0hHL+Ly5eiWqBF7
 5aMxM2fLVWTmkDbcedXs4iLaBttHKRTx8q6Bze9WZzOgrkxbltgVGWyb2 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10316"; a="242674661"
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="242674661"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 11:13:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="508078326"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 13 Apr 2022 11:13:59 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 13 Apr 2022 11:13:58 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 13 Apr 2022 11:13:58 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 13 Apr 2022 11:13:58 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 13 Apr 2022 11:13:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hCeprHAkHNiEQIzJutjv22qwW+4X+rkCVrEzokejgTALBF4KEPWZ7Gg/XSdbdE6bw34k2JqYsZS8az+xf/0OLMenKNvBzT4pEpGq6DuqvskokW9nIDem+dKuW1vYyv9Vbnk4VjdS+lAie5U7NLARr7ZyuvJW5EKK2JA1Sf9cAIBwJzYVsoK/da4+14HcsBANeyheBaH2VWtvmfD6FRL7BkVGX37HvGsql93jnZZSt/kdAzFchSROtaEbHO8Cj0QRrVftfd7rcCW/rh23/SsqqxGncuePdtYzR0s9kcyJGrDv5I7ygSkGzjN08M8C+PvvhfkZw/lMl4TZWp3v31F1tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d8wJbwwnQwp+vPn08CDFl+0UoGkAdPyH8Io58hHBEM0=;
 b=f9bLDo4kL04KCTAlB4ErQcjIj9BKTJh23c2oS2h/ywCZOtwdMbMK7lxXsvtjNYJ6/3uiiCqzrQWxQk+eOxflDHs6CM8R5AG4qU0MWI2lgRwA25TjZzKkg5QTdUJJty5sPqV1ODI1Mvww4Dcm6MLI1IkNuuenZRIGpeLui7wsb9VSdUp4YJgL9VC8GPU+BpI6QKKj1pbCFD6O1XcITidoryF5BMuu4qhSNV0ALS1iLZKJkAZNBgY9zoaUSjyTp+B7cFwIlRw70WI43DAcOA7Z29ciqL02kSQut5meyLGx7LpLGq6/q9D9Ac/99ZrD+qe6P/+7ZtkGJJdRQCEvKEU95g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DM6PR11MB2586.namprd11.prod.outlook.com (2603:10b6:5:c0::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5164.18; Wed, 13 Apr
 2022 18:13:57 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::acf9:f012:22dc:c354]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::acf9:f012:22dc:c354%7]) with mapi id 15.20.5164.019; Wed, 13 Apr 2022
 18:13:56 +0000
Message-ID: <716d73f5-3e2d-0ed9-d9b9-356406988010@intel.com>
Date: Wed, 13 Apr 2022 11:13:51 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Sasha Neftin <sasha.neftin@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20220413053317.3297670-1-sasha.neftin@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220413053317.3297670-1-sasha.neftin@intel.com>
X-ClientProxiedBy: BYAPR07CA0089.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::30) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9ea1da27-7cdb-4fcc-06c3-08da1d79600f
X-MS-TrafficTypeDiagnostic: DM6PR11MB2586:EE_
X-Microsoft-Antispam-PRVS: <DM6PR11MB2586CDBFB58374DAE2E997CDC6EC9@DM6PR11MB2586.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: P6ZAyVnJ5nftffMlGe/S3CL0oHFBGV42TxMeDavQS5ZQVeVoqRg7QFcXqU/wJ+cu+jdExXVGkf9shlTKfIdD4o7Viic/BI5gZKfLRQbccMecQbVQDtBYjJYP+xaI4gD0HmnTwCxjYa4VKCODJ90tpYOnuJ3CuFOFuE/kvXz9lRaVeNvp7bPjIvkPU1rlNHjSQ7/xNk5XWDgcOb/rD0TGVSVrEjwEfbEUtMnKl4PeGy+pzPVPq9gt7AtTgx1M1CXxSIcHfbDaJBMn4qlkFJrlwJieyimVY1UyEbbtnD7xIHH70q0/0kB/UdkARg8rWVRYwccbw28egfd+314sTmEoxbWewX4xYUK2N6UFehjCDdnoa8naIXzvR2YvrtAhiV5+r9IWv7oh23wc51XlVoDdg5s7bc70Rn2MuS/dZEucesIdB8NJ0Cj23RZD3m/vHyAm1Nty8nPLGWOdSmY9g2VagRm6As9C0lPForAK46YidxOIMX35dzUVGU2DoxDLCNx+FA7LYCERrPpvgGZG9yxmzERVfpSO64lbCUESWriuLn8CFuIeIJkNrIX2l/2yc3udomY32Tt61SefDc8SrmAh7RWT27rWIWCSzw+99Q2yoJXkSkDFYBPQIajkupPk3jyYmbUleAEs7e7JgvjbYRWACJcnPt8j7XIOzNaSveRQozTL7Dkvt5FfR1zY8B20ARrCwngJgjxoNV1XuQZKQLY+BIYi1DeqvkpjuA9hSUPPC41FbihuKznC1nBfQGcsrkb3
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(36756003)(2906002)(31686004)(186003)(38100700002)(4744005)(2616005)(5660300002)(8936002)(26005)(82960400001)(6512007)(6666004)(6506007)(6486002)(508600001)(53546011)(316002)(8676002)(66946007)(66556008)(66476007)(86362001)(31696002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NGtBK3NlcTArZWx0Y3pPTWJYbmtLRWZzdEt3WFF5L1ZCTStQcnhXUkhwbWdN?=
 =?utf-8?B?K3hpbUVVbFRFcW9vNFNBTkQvM2xrL01GUk51cWVpSjNUVFdhUFJNRTlxWDRB?=
 =?utf-8?B?b0kvRUpwRE8wd2VoOUFVeWt1ay82aE1JMTk2c3NOMVdpMWI0NUMveXVZQXRD?=
 =?utf-8?B?OFdNNjM0cjkzNVdzYjh0QThmM0ZCcWttMUt3UzdvUnF1VmpPdTUvMU84eGpE?=
 =?utf-8?B?dXVNVXZZZzV3UCtJZmZSbTkzd1VtNWFraUlOM09pbjZ5cjIrSTZoRG51VVRF?=
 =?utf-8?B?WUFqdHFJbStkU1R2K01SNnlnZ05IQ1RXQThFblZ2QVY0U2ZDWE9LR0ZFZVNm?=
 =?utf-8?B?cFptbVhDNkcrWnpvVXRINUlLeG1tcHVVUDJwSEJTK1NTdWtMcm9BZ2xieFVj?=
 =?utf-8?B?Y0VWRi93OEZCMWsyZ2tha1V2MHlGQWltZHJqdVc2TEl1WXh1S1VlTTFsL3U5?=
 =?utf-8?B?d2FFZzE4UjAxSy9SNHp1WGk3Z1VoZWUxdzJMakJRNGJ4TXp3SnF0TUxOZm5i?=
 =?utf-8?B?VnhnWXZvODI5d0VGdG9sTnhncmZjMlhNU2hCUEtodVZMSEFBeFo3RXBhOTJU?=
 =?utf-8?B?NE0yZTVmelNWd0pqWFBPREsxdlFiWmE1RXRhZUFuK1E3cDY1NS9GR2pYNGNR?=
 =?utf-8?B?QVNjYjBISWpwYnY5eDZLTTFxNGJBZmlWcU5QUkpkQ3VHM2kxS256b3FZQytt?=
 =?utf-8?B?ZjkwWVJZeGczT0xEOE90eXJxNVJ2MitVWHJlQURvNUpEODkrK2lSMWsralc4?=
 =?utf-8?B?Rllka2VXSU1qT3docmFCSmt4azd5SGJ5MmRpcGNBYXdTVElscUdMNm4wcnkr?=
 =?utf-8?B?TlkrZWdqY2ROZVlIOC8vUVI4V0ZRbTZsNWlxWGtyd3A0WVFPWGZvRFVPNndB?=
 =?utf-8?B?a21rNm1XUW4xZG9UbWlEK0wwdUkrVUNPQWk0b3V5QU44RmxSTllZLzVWbVM3?=
 =?utf-8?B?MitGMkVHa2FWOTZ3UzJMa0JSSGtCaUtTZHB2ZmFuMlRXUldyQldQdWx1WjFz?=
 =?utf-8?B?Z0doZmxnZEtSS0hoUmU5cldRZlFyZWhqN2liaXFXWG16UC9FbkFzVFJmQ3B2?=
 =?utf-8?B?SUdyL0FHUVVtVW8xQUQ0SnhET0ZHQmEvNTJhc0VmRGNZNnB2S1NaUkxsbmll?=
 =?utf-8?B?dTVKRWU5MWFFYlJxbHNFZkYvWG9UOUlRL3AwVTVROHRNMXpSZFlXekY3Uzhv?=
 =?utf-8?B?TVhqbGVkVTdNNUpRc0ZUR1pjOGdmeUhJY29OUVB1NnVSVFVFQWVFcDkzRlRU?=
 =?utf-8?B?OFBxclh5Y3BPTXJWbkpBQXVvcVA3MzZySHVLaUtTT2l0V2RlcVMvMHZRODI1?=
 =?utf-8?B?ZHpMNjFlRktGUmxwUWNHUXUxck5sOW1TWUZ0RVhoakV3U0NBSDJnUS9RZlRS?=
 =?utf-8?B?Um5pSmoweFhvNm1nY3EvSWZkRkQ3aVkxcS94RTVwVUIzV0lpT0xQU3dQSG1o?=
 =?utf-8?B?b1hNZG1weTRUSGtGdTBPYk44T3ZLTkp2NTR0d0Fuc3dNbGk2M1NCTFNTWWJu?=
 =?utf-8?B?WkhYMEI4V2lqUGVkcks0dlRsYkN5aUo0d3QvY0FwTTQwc0VyTVVvaFcvS0Yv?=
 =?utf-8?B?bEJGSFNmYmxsUmFRMGY4dEJoamorQW9KMHNHRkFkeTRhV0w5T3poWXpHckd0?=
 =?utf-8?B?MzcraWYxSk9GSE4xUm9DQUxHMkhzeWZMTzVTNVlGd0VzdkQvSW5GbUYvNTBw?=
 =?utf-8?B?WkdmbzU3QnAySkVqbllpbms2VWYwNXB3cTYwR1RiNkhEM1pMb0M3U3ZzY0d2?=
 =?utf-8?B?N1BqSlg4OFh4SmRwTDRpYVMyNExhUTh0TVVJYkQ4Q1dYRHFuYzhFb0xybkNJ?=
 =?utf-8?B?TGsxaFArYVk4VG5WaThIeXNQVDBwRWtybjhnVDdGSUtxQUJoL3F6bXZTUll4?=
 =?utf-8?B?a3Ixb2JjOUxGVVRrQ0FKakFSTVdLc3VWNkk1SjVzTE4zS1lpTkR1QldwUDNs?=
 =?utf-8?B?TFBBajN0eVk2bHRsbW4yQWFKRUZ4MGxtaTF2RXRZTDFYdHBNYVFsUkJtVXlX?=
 =?utf-8?B?RmR5aDRmNDdkczRTTThpOFhrTDFFcGJEYk9CVit4eitKUC9reFRqWG1ESXNt?=
 =?utf-8?B?NW92T25tYjljaDVaaGgrbWtMVXRFR01icE44WXovUlJIVzJTcW9LdUk5ellI?=
 =?utf-8?B?R25lcXNwczFGN2d3bE9vRTMxanJJKzJZeTUxb2ZnNFpvSTJkbUpvbGpjRm8r?=
 =?utf-8?B?NlowRzlIUXVsd1BnRkVmODlYL1JrSzBmL1hxS0o4a05UWUFoWDhreEJLZFIw?=
 =?utf-8?B?YWozN2F2TUQvZnFhczBPRklrRHBmckJ6R21pdVFybkFqN1dwSFZKYUdRNDls?=
 =?utf-8?B?OHVpWnprVmZSdmZrWFo1c1UzOEQrZU5xTDRvQU1xcERZTml1eUl5UkJYTFhp?=
 =?utf-8?Q?shU2dfXqXLdHy5iw=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ea1da27-7cdb-4fcc-06c3-08da1d79600f
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2022 18:13:56.7754 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SAyocrMaK/djgFjdxPw9D0fxWb3sKp0+yApS2Z0mZ+H78UIqp9WtHi1kJ0QVv1CAUEwmyoWAt5ZA0HpHoO0sOu6npJY3kZBiGq22t7TBUAM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2586
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove unused phy_type
 enum
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


On 4/12/2022 10:33 PM, Sasha Neftin wrote:

<snip>
> diff --git a/drivers/net/ethernet/intel/igc/igc_phy.c b/drivers/net/ethernet/intel/igc/igc_phy.c
> index 6961f65d36b9..4f06e6bb68b1 100644
> --- a/drivers/net/ethernet/intel/igc/igc_phy.c
> +++ b/drivers/net/ethernet/intel/igc/igc_phy.c
> @@ -150,13 +150,9 @@ s32 igc_check_downshift(struct igc_hw *hw)
>   	struct igc_phy_info *phy = &hw->phy;
>   	s32 ret_val;
>   
> -	switch (phy->type) {
> -	case igc_phy_i225:
> -	default:
> -		/* speed downshift not supported */
> -		phy->speed_downgraded = false;
> -		ret_val = 0;
> -	}
> +	/* speed downshift not supported */
> +	phy->speed_downgraded = false;
> +	ret_val = 0;
>   
>   	return ret_val;

ret_val isn't needed since it's always returning 0 and could possibly be 
made a void function.

Thanks,

Tony

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
