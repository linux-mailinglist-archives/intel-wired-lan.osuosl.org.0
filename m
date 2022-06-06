Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 220F353EDD6
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Jun 2022 20:24:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A72F681A3E;
	Mon,  6 Jun 2022 18:24:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z7D4W6JEiiHy; Mon,  6 Jun 2022 18:24:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A194081A47;
	Mon,  6 Jun 2022 18:24:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C34881BF2E3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jun 2022 18:24:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BDF90415EB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jun 2022 18:24:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9zecgP5AK8Nj for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Jun 2022 18:24:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9416C41505
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jun 2022 18:24:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654539879; x=1686075879;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=cc4gzcWnV8U1xufe7mV0UyO9nvuaH74pYCkRNZ0R+dI=;
 b=ZXQww4Lve8+pmHQYXGNJdirPn9GssgDCMzQ0YmadDED5un/cN6CCuEn8
 5FSgL6fj0JdrmGJeq3ZzmsQdTCpfGsV5dup2/hDvb0DScGZVTwezU1F83
 bNWHwfa4nwiinjgxOf2NEa2mdKtaXi0iwYyDXQDVnAx84qOooyDTlA4LH
 swVlynzl+NHtShU+TO+afo2qsDhV5tFCeOBEmBYSH89KmsZAKWSuWjkhf
 4Lmy0p8xwBY5LY+79VTMP6Hgad/SfG1rhkoBxJk+82XTaRnJnk3u1BSya
 p6recLXsv/2wCJ43QjBEy8t77/AWR+k9P/4ULeCCEB6j9KPEBNSj9jfgY w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10370"; a="302041212"
X-IronPort-AV: E=Sophos;i="5.91,280,1647327600"; d="scan'208";a="302041212"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2022 11:24:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,280,1647327600"; d="scan'208";a="635736739"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga008.fm.intel.com with ESMTP; 06 Jun 2022 11:24:38 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 6 Jun 2022 11:24:38 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 6 Jun 2022 11:24:38 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 6 Jun 2022 11:24:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HrjyEgij+Fpowwrnr1x17jm4Gog3xjrzLbPhNDkWDfjVz0Qr/NnMBbJsJ0AEjS+z7hsp0eOaOi8D704yErSqDhizQlEUPspNINkwkjsP9MYVx8Ao2XjpFu1Xpbq70KXqdYLl52QLWdqTB8xfJGMvDK91ryIbCBqxP4KjpRHj46JLSYgD3UC2FJG6Sfhzt4NXRDi3zc/10ULZflrVa378xnk5Hu6LZOOhkDgOpVK78jKuaMuubk8H5vMDvFtJZeEQF4towiTQAorzUEzQwWFST5xMEYwRaho6RfsxwWZxUforppwliFbz2AkAT6I5ieC8UGzXuopMi/Gd6ZaciJPnzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qpz//tcB6mJsef98kO4Fg0KveAQzyyqBui/xaVqAhTI=;
 b=Pirs8PQFiUOVlLR4EVrupKdjaJ3NefjJTQ8S6htHAZee3JZMBHmAU6gbQXdToj6AjuLCzmadh+KD53yJ/G97UvWFPorod/bRuSATcVmE2bJ9V5ISJbtTxAF6z8bsx3pxtUnVDDQ/br/k/N75Ck2i4Eh8lrs1/3+YsFxhaue41DocrJqbw3s/MFUlaGoodGaj/VxfGuvuuygtglh48sSVyEczlS+gEA+iltxVzk6rqrqd4+dQWre3frKFoa/wu9Qj4Z6q7diwA46F85vglHGxO8H7YT+yQd8zoF0zfK3mxoMck0M2AL+vVNsGza0VHwq46JVnW7sOIox09Z3lfyok6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by CY4PR1101MB2279.namprd11.prod.outlook.com (2603:10b6:910:17::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5314.17; Mon, 6 Jun
 2022 18:24:36 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3%6]) with mapi id 15.20.5314.019; Mon, 6 Jun 2022
 18:24:36 +0000
Message-ID: <154a69e7-a17d-90be-edce-febfb41e2dc5@intel.com>
Date: Mon, 6 Jun 2022 11:24:33 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220606070747.3088370-1-anatolii.gerasymenko@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220606070747.3088370-1-anatolii.gerasymenko@intel.com>
X-ClientProxiedBy: MW4PR04CA0122.namprd04.prod.outlook.com
 (2603:10b6:303:84::7) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5bac1c2f-ea6c-473f-93ca-08da47e9cf59
X-MS-TrafficTypeDiagnostic: CY4PR1101MB2279:EE_
X-Microsoft-Antispam-PRVS: <CY4PR1101MB227949E3BE936454D576C860C6A29@CY4PR1101MB2279.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: p5DWLq3N6YP+yOdcPZPR02apDm2EWKf37LL8mIyOfdrjxrcpI4APzxySkyVbJWVMH8RnnCf0NPCRepFW/nT4bDy7YI0uYIN+lMY+U95ZKMuI1/QPBMU08+dhZ5NwCK4vj6LvySB2mkG1ehZVFsEldeG3E1AQBA9tdgAlVJ5GIBzcM1W9zPtLhWJ49yAPcdTl+4EhknjXyGZFDxQZA6he0g27n4SUnJQ4fX0Qpx6ZsvYe1IBZLDKmuTzyEUkbYf7ZXgxUIE2TL1vs9imY9iT0yXQeTvn04TrqOSqJcmES9oYmcLselFuSMRJqJohozN52aDx6UN+NKTeo7ESBzFWMnSWwS49DWzsUwhGz+umY1JLxOLjNDP9TFMg0PJRG2JTArQ9Woyf6EdkIG6ehIOlKExQVqcUTxHj+3QJBXSlp+yEfVkTFd9/PY7QuUwLJyWbcUDfnLX6nX2cdVaHO9UwN2qsEEYfuj/otd/vjw6i/uovRQEYgV4LhkhbiRZbjAOCZugOUtegcdIag6Si18tzV3zr9MR9F1/3U68SNPmPkZvc+3B3dzWSju+fefjeF96dMnj2usG7SVCpbpN36WVsEzmCnbL+AXpjAaafzV/Bcfve6uQcgoXlYpPT5DpQP06dTFgntjS4ocgs5LyH5Atkh4TAqW9w3wM0PfIvvhzxJjV+M1XyPZAO6mcexVdZjFU0FvBJbdXHLs6bZK59st5r8U0lww2ygipQx2J7PWt0dGVU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(5660300002)(83380400001)(8936002)(6666004)(66946007)(31686004)(8676002)(66556008)(66476007)(4744005)(508600001)(38100700002)(186003)(316002)(6486002)(6506007)(53546011)(36756003)(31696002)(82960400001)(26005)(2616005)(2906002)(86362001)(6512007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aE1DR3dBSTM0NlF2RlZoV1R3cEhPUTMvd2hZa0trVjd1blY5WXppUTRLb3hM?=
 =?utf-8?B?WnQ5Q0ZPK280c1VCSzFla1VTMGdUSE5OaFQrdTFrQWJXNk1NMk1PU2hUM2xz?=
 =?utf-8?B?L0hnY1U1KzdUaDh0cVpDYWJteFoyVEU0eXdma3NmT1VDWHIwNnhWQW1ZSzdp?=
 =?utf-8?B?eEpoNWFVa3RDcXhZZXBYTXcrNGRLdEIxSUNFMWFnK1Nma2hDQVY4c1M1alJ5?=
 =?utf-8?B?WmNyZW0yRDNQUFkvZ1VXUlJYNXJkdnRqM2NnaVhvYUw3eHdjczVnaVpLZVVN?=
 =?utf-8?B?eTloaUZlYXVpSlpxVnlLT2ZHZ1hlTVU2R245VTdHc0puTjNvNVU2TzJ4UVlK?=
 =?utf-8?B?cWpTb2l5em9tT0NId3BZMUpvOGoyeEJBa29CbU1aalZCbnkvdlQxZm85ZUVr?=
 =?utf-8?B?L3FkUVNUdXBwSGRXcDUrUUM2Z1ZzRy9hRGJGVVB5dVh4c2xia2QzVEVZdnd4?=
 =?utf-8?B?VHhSNS9SNVgvSnRabzFjTUtoSWpjQzZYWDlLVUduU2h3YUIwb1VTWmdGbHFt?=
 =?utf-8?B?U0QvbWd3TUhtSmp0R2NwdEpicWtFRGhtcnNOWkJVZUxVTWc3cVVXc2t4KzhX?=
 =?utf-8?B?TVVFMTZkMTBMeGRDL0ZWTk9DMW8rU3VtUjdYQk1aR2E1MXNDeWtPQ1hpWG1O?=
 =?utf-8?B?WWE4NjlBM0FqUzlINUhNKzBpZnZJN0x5WFhPYUxRMEJ6OUJ4ZmMzNFJpMXZ5?=
 =?utf-8?B?MG5qekxQdmQyWE1NOTlaNzdNQjhRYTJQQ0FrT0JZa0o1c0RoWDM4U2pLWnZq?=
 =?utf-8?B?Z2R1ZlF2YUZ0YS9RU05CUlZyc2d6bnhTVTN2aGF5NzlOb0FGNmw4VUIwS0Iy?=
 =?utf-8?B?Y2djdlVDajhNUndySFByVDJ1Y2dtcFlZRFh3RkYyamdzSnQvQjJKSDRGa3pl?=
 =?utf-8?B?WnNJM2h0cmhpbVJsUUU2YVdTcjNqQXlDSmtBQk1nVngvWktoTVg4bExsbjJu?=
 =?utf-8?B?Zll4WjlWeURsbmVJakkxK29pQ2ROME9nODF6aXVobUZhTXNCdnIxdDYxczZU?=
 =?utf-8?B?Snk5M1ZTNDZnanZYd1o5MXZSTTgwVUJvbG56U2NqTHduMUxrWG5wZElBMlEz?=
 =?utf-8?B?dXFQRFhVbjh2TytPTmNKVXZCdGVSM3dxNlhZTHl6REc4WUs5VG55TFUwaFh4?=
 =?utf-8?B?WEJMUUJOeEgzZFVRUUttWlNLdlgyTVJGVCs2OXVtVEg3R2liN00yV1loVjFy?=
 =?utf-8?B?eXFFOGRQakdiVXY1WFpzYmEzWUMreVp0bEJHUFZOUDRtaHcrUlE2b3A1TWNh?=
 =?utf-8?B?WDBpbHExa2xNY1ZlejdJZjVXNnJINFJZeWQyTDliWmx2VWtqZ2FDTkJJcTdY?=
 =?utf-8?B?ajR3TVRLVTljR3FEUEJLSnlRY2JNQXUxeENFbkVqbzFFVHlKUTlrbVBpNk00?=
 =?utf-8?B?eThGTEE3Q3lpRDB1NTlGVngxM2RmSW51ZzRSUlFuekdMc3NVQXI5dHlNY3pt?=
 =?utf-8?B?dFM4YmJPalZWazByV0cxdjZaQlJkNlFvZG96Y0pjbFpIdVlwcVFyS05oZXdn?=
 =?utf-8?B?aG51U1pWdXRtbStLWFhkZWRBOU1vZ3UvcVFaaTd5N1hNS2FTUmlMT29ydjlS?=
 =?utf-8?B?REkwNzU2ek9sMHNvaGZmcVRmWEJpK1J3dkRxZ053bkEyZUdCaE5qcS9RUlFC?=
 =?utf-8?B?Q1JvajZ3bXlnNVdnZVloTU1rdE1hTEFOWXpOeEZnbEJuam1OYzY1dU1JVU40?=
 =?utf-8?B?WWNHdlV2dFZKeUNqTVByYlJYa3YzMmtPOG1ieFdhVDJsWGpJWUNSVmNDeksv?=
 =?utf-8?B?L2lEaWU0Q0ZQQllGdjFEMFg5UFZuUnh5STFkMlQ2b01Ebkc4RkVzUFNFdndl?=
 =?utf-8?B?THQzMjBEL2FoenVKamZlNWExVHVON1JOdGxIU1k2bm9CY2pjU1dzUml4SzN3?=
 =?utf-8?B?L2psZnVQY1ZjUTRPdlJZaW82Tk0xTmljVzJnSjdnYVo3SWo4TjBMelA1WnJV?=
 =?utf-8?B?clYvZlpub0pyVU5ueHdnUGdMMkNLd3VGM2hEeG92bDk4OGN0TDQxUmJtR0tC?=
 =?utf-8?B?eTlqOE4yQmJOUXlsaU83SmhENlBMd1pKQjMrMFU4K2ZmR0o2UXFSQVkzOW55?=
 =?utf-8?B?N3I3MFlaRmVDRTBabVJ5K3JZZ2lMMUJIRkl4MnZmc1ZHMExTQjFMb2V4WW9Y?=
 =?utf-8?B?dHF3cDhXUG9PUmZoZHljaTlGU1JJdjVtajVZM2x3dzBWOEZlR1VUQXlORHdx?=
 =?utf-8?B?RllZeE1PKzVHRlZhSlBXZEVBYWJ3aTU5eFJtRXZ1VzV0WUEwQ2JrdDlWTjJP?=
 =?utf-8?B?VGhoOWg3WGdmcnVZV1ZpNDZKeE1CaVhobTU3US9wUTEwaFN2dXZPYkx2N1Ev?=
 =?utf-8?B?R2xPRjlQVnBscFl3ejU3RXQvaWRpZW1Ra3E2ZFJRUGpXUlNsM2NhMis4Z3p6?=
 =?utf-8?Q?YDdD42WzxZVJ1Rqc=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5bac1c2f-ea6c-473f-93ca-08da47e9cf59
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2022 18:24:36.0240 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6fc4lsIe1qHb90hTKdfUZbh+amVzHFlhKL9m0W3FIiot7X96lHceH8DvAYez3FFt+5Ym3sU93CtPgG5dPf2ZYyRBiVAepR7NI/cjYx2vgdE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1101MB2279
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ice: ethtool: advertise
 1000M speeds properly
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



On 6/6/2022 12:07 AM, Anatolii Gerasymenko wrote:
> In current implementation ice_update_phy_type enables all link modes
> for selected speed. This approach doesn't work for 1000M speeds,
> because both copper (1000baseT) and optical (1000baseX) standards
> cannot be enabled at once.
> 
> Add a special treatment for 1000M speeds.
> 
> Fixes: 48cb27f2fd18 ("ice: Implement handlers for ethtool PHY/link operations")

This has a Fixes, but is targeted for "net-next", why is that?

> Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
