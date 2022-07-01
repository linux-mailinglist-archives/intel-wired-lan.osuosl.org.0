Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF6F563B50
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Jul 2022 23:02:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 21212418E0;
	Fri,  1 Jul 2022 21:02:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 21212418E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656709323;
	bh=iBNZRUxsvGoBOV2a3yBDPn/IH/KFUJwI9VomaltWRQ0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=h/5J3lWpFKhehSHVDFNQhjTo5QXoIcwXKngDIV7yGRZBr4FDAmmPKVSHMcOJ88gnP
	 FovYp6CpP14BLWEctPV9nbBpGOEYyDx4pnJddwFLz9xDoYvy/KR63wsOaw4mPvKCuC
	 JaWsx6g0nryP7Fx4GmKnjOcbJvGxOEEwBIuPXDzt1+kPzPoBRnpO4CiF+AO/Rh+zin
	 1N6QpnJA8RGecdWxNuY6Wwk+DA1gdc/o0tJVpvJavZwRs2NGQ+g2GWx7qTydsn5qQO
	 d/txqFQumkze52qIMv/VnbuNvB6oKhUKtRmOijFLanHa5s/ROEhN8Pop15jB8wAp5f
	 uomvscqg6fclA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1WKBj9aNoqfc; Fri,  1 Jul 2022 21:02:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5DDB5418DE;
	Fri,  1 Jul 2022 21:02:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5DDB5418DE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6B43F1BF5B4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Jul 2022 21:01:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5252A83E4F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Jul 2022 21:01:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5252A83E4F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uX_6mtIRT-V9 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Jul 2022 21:01:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BB76A83404
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BB76A83404
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Jul 2022 21:01:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10395"; a="282773076"
X-IronPort-AV: E=Sophos;i="5.92,238,1650956400"; d="scan'208";a="282773076"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2022 14:01:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,238,1650956400"; d="scan'208";a="624412331"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 01 Jul 2022 14:01:53 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 1 Jul 2022 14:01:53 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 1 Jul 2022 14:01:53 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 1 Jul 2022 14:01:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CaHTZBqyUPBm3a+xs2gVtA7WoizV4psANwc/6EzWJ3ry4sdrZtgU+iMSud9dawl+kbPFkzLuRmTYheCHVgJHUBeZRdeAlNw2HfiGrOYUrpDwelY/7L7Q/gnQyNer16teq+9wLMb5bQ9x4uRA1cWMZ5wdyadcQozU64ALQEjSDAUHLkoU1NgHdRa8mYQkwZCgIZaBUYD5jWK2RAW495SM5/0f6GaEmIEkPwuPrpCiGs2R2U1EdIqw/sCWdvlybtYjHuQMT9oyV34Is/HptcEOk7XR6z2nOYGCjUeMK2JXAWFa/XOCE2ILTrbhyS7ojlLd29fDqZ6vshtbeBEaEEw9Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iuiYEqsmIeuTyFWZsikWkvb8vHTZSr8wHqRD0z1t3C4=;
 b=YsIQYdT7eOmngnAwshulByrk7EQQKoR9bLzRcanJJSowiY3vnvjQvXfyBy0CcKdQJT/i+FIKmk3BIe57PNDR2jbf/yk6F3z7eMVd3IHXMBb9Jt4bVWTuQRStYgqg84SawR+KkjwLmV/8z7MEQ1bVerjVjJpMJw8ubOH4KsPxmJTXm9KKbRv66GclsQyBGNPHtJJTNMRhJuh8dbyJGK2UbacIK43oJJNMmDqID4rpWZlFY+qEXv0aqRfp4oYZeO0D/d8Bbmsqux3FCC+6VawOPJhXtw4YGLidRJQs0KbAqvBOuMZbJcgDG7YN1tS+xI72+uk/8gkbL39QMXrOYwrJTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DS7PR11MB6077.namprd11.prod.outlook.com (2603:10b6:8:87::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.15; Fri, 1 Jul
 2022 21:01:43 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::70f8:baee:885f:92ef]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::70f8:baee:885f:92ef%2]) with mapi id 15.20.5395.017; Fri, 1 Jul 2022
 21:01:43 +0000
Message-ID: <04c3c622-29d9-b538-2ce3-2864a43ee5fa@intel.com>
Date: Fri, 1 Jul 2022 14:01:40 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Michal Wilczynski <michal.wilczynski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220701151750.2441885-1-michal.wilczynski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220701151750.2441885-1-michal.wilczynski@intel.com>
X-ClientProxiedBy: MW4PR04CA0284.namprd04.prod.outlook.com
 (2603:10b6:303:89::19) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9f9237d7-2903-4435-2623-08da5ba4e6a1
X-MS-TrafficTypeDiagnostic: DS7PR11MB6077:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6wkyWZaYkAcaNu6E7QqZ8fVAYzHNDPgGPRN14A3zQqtVCnsWRGRgoqHJQjzfQ4HhAARQ47D7vxXagkdG1kKwRLf2Z1xksySZIY/9sg8SOU24ZbYHObWlR00/AehJKo4ep9ypvNZ5PiWj5cOAXsv0slmkiHfn77UjISv6OjzaTQ0trwSywglu0GD8yuBygdQ6Aj7Q7SD6l0q/v2PLlzKGreL059lGajCI9d5IuSRDRS1LkOI9iVQ7XleC+GtFMVUyXc23PRo+K3ADuSm16c8uGDvYzq2aeOnysIzcP5FlZnFibUTKHfcF/RgJ4L1BTBco8mJGm4skv6IIYJPm6i+DlJBvWqAa4Rvob/A83kGTE7pfmGObRhO+Wd7Z14XGVSU1/Xr1R8trkX9uXVwz8NV+ExSS1OwYjDJyXfKnHcLl8xzy/QnCsEFKK39gAoBwCJNQF8kyrQstz4SrYYig7C/NvnQZjPqETDPK07qhVd/mqLlMfKIdXmnIUje+jvVExrioJ39Ct50J2biV/qSEQmIFy7uicCWumrjruj+qTi0pz6K5XHA0uP+jrI48MA2oXqvBfoVedBj6kqZtV+DUcwwAc2yTaaFTMwOU2qyF12xzSJVFqYQMnuyvSi+AvaAZOgG3Qxu8+EMDApD55Nw+rHohIi/iWvkeOqgZhSQxj/uUTh2B2+Unxbg5dlFyoXLONHbGBjmO8Iwwj0aefBedCvrvmM2stj/6hsaUA952nBHFG6+8eIBN0Ax8DCaJiTyQVdqJWCsyTXSPShNu80q4WjsLUjdBTcMPt3j1jRH5slj6fOa8F/M4YfEJjL9EzV7cFIKClosYL2z7NsFAXQQXqUfeqBhrpSuH9CU70+gHkW/xyZ6aD1xkX91KpMLImBknuK8s
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(366004)(136003)(346002)(396003)(376002)(2906002)(31696002)(41300700001)(86362001)(8676002)(66556008)(66946007)(38100700002)(82960400001)(316002)(66476007)(83380400001)(966005)(478600001)(5660300002)(8936002)(2616005)(186003)(6486002)(6512007)(53546011)(36756003)(31686004)(26005)(6506007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MERkNXdYbGVjR2wyZ0dPVGJtRGZ4Y0NWNkFxaVFHQXA2b2xCWTJvc3VLdUtG?=
 =?utf-8?B?NEdzZTM4K3hTaXRmYXJneFhiakFzR3ArZWVqdkg2THBzclJ4RXhuK2tSY0xI?=
 =?utf-8?B?ZXIrbkxFaXowa3g3SWR1Nzl6SnlST29DdjVUQUErbWtGMlhMUVpRaytwZXZh?=
 =?utf-8?B?TmU3TlVybWhtTk1ZTUFvQXZtS1pCOW4vSTJzVGd2bnMwT1B3M1J5RzNQb1BV?=
 =?utf-8?B?aEtrM0hyVnVFTGFpQ3NucnpaUkZDeXJhRlBKeXdlYjFNL08xaXljUFpML0xF?=
 =?utf-8?B?dmhiY1NLY2J2R2ZUUEpFN0hFTWJMdENhZC9SczdDMHAyODFqdUFRTU8yMU94?=
 =?utf-8?B?TVN3Umo5cElscDcrNUFESkdzM2xKNU8xOUMyY2hsa0pTcVVsNWlvc29DQnpm?=
 =?utf-8?B?dnhrblFLN2NJeU9WUnB2a3F4cDdpaFU4ZHVINVRpSnQyOEZzQ1haTEdpcmdm?=
 =?utf-8?B?NHE0NElWU2FFSkVIK3JUaUdaMTJGOVJrcTBJUlJ6cEpITUYzUklESzhoN3J2?=
 =?utf-8?B?RGhhbUhQdHdoSzhpSlY0R0RPNHF4NjAxZjZCSE9VaUJwRmdreGxyRFN3WGR1?=
 =?utf-8?B?RVZhMzFjT29DQW1XR1dCZW5EOHhCMEYrNlFnSUdJa1prOTdoaC9oYlZ1WGdC?=
 =?utf-8?B?YVIwWGtRTDFpZHJSRU1pVzVnbVBLdXZ0a0E0RE81M1ZJM25OMnpPblg3aUwy?=
 =?utf-8?B?TlBpUlhBbHRjcW96aFJ5VEEzaERUY29Ic3NJQjI2YzJKeHU0QUtsNXhONE5V?=
 =?utf-8?B?NmlJRlRNdXJ2UmNaUFYxdzcxU2pmUzlQZVY5YVNkMi8rRWUrSHNIWkVMamFR?=
 =?utf-8?B?dmlrcHRwTCtuMU1wdnVQKy9kSEdjZU00MzFkbStUUjRvVzY3L2RkS0Q3QWFZ?=
 =?utf-8?B?amJrNE1oc0xQWUQ5QjFVTHlNb1BZcmRHLzVGZ2phSTZsZGF5NkZWYlRJbElM?=
 =?utf-8?B?SU9OUUxVSTJGUWJ0b2IvS1lTd252b1VTdTlWY2x5clEzdEIrOUZqMTUzaGNH?=
 =?utf-8?B?RVRUbGsrUUtVQk85eG1GL3lJOVE5RWRwQ1NBUDZFUklDRmg3MnJhLzdRcGhw?=
 =?utf-8?B?ZEpqdTR4QVF6aXYrQ096WFJRNTVoOXBjM1l1cG8zZEg5T1BnKy9YcGFLeHVj?=
 =?utf-8?B?VHJ2VU1ROGZ0MlY4dWU3R1o4MTlIQ2REc1lkN0hxOXdrRS82R3h0N2NGVDRE?=
 =?utf-8?B?SktHTUJUZUcvcUxtN2JHekpSR0tDWXVnQnVFZk81T0JMY2RQTzNDODFDYjNr?=
 =?utf-8?B?UHB6aG9xZ0FzU21HM3FSTlB2RTRWVHgzK1pIVVF6WWJYalNCVmQyUW5Dc05y?=
 =?utf-8?B?c2dDbzQ4YkQwNzhidXRHT2tqVit1aGFnS0JESFViZ0RZVmpmQ2k0bXhVL1VQ?=
 =?utf-8?B?Zi9UNmF6MTd3T0VIMTU4TCtYaXZhTXhmWXZpMDNWaysrUlVqbElQL2xBR2du?=
 =?utf-8?B?V3dIT3p5RHAyemIyQkZXSmlaNnNucUJ6MDNxb1diMWwwZTR6Z08vSG5ONkRC?=
 =?utf-8?B?YzNSUkV1NjVWdG1kdXpBVmVWTGNScXNtbG9qT3RuNzFSalBsS1hYOStsdm1R?=
 =?utf-8?B?dVV1ZTZTTHNPQ1FDcVUrcE1JVk56cC8rbktubEtvSS9MMnZ4Und2TFJoVDN3?=
 =?utf-8?B?NGFrV2xtYURwN01aQWt5Vm1mRGdDbzZrdkdrTFZQcWZaOThPSWRYWFdIb08z?=
 =?utf-8?B?NEMyM3o3UjFOS2haanRuM0lvenpMaDZPU0JmWHpDb051ZWFnV3BObVk4eitQ?=
 =?utf-8?B?d0NxdWxoVXRMNFNCd1RNb2FyUko0QTNPYVYxaU1HdHJzUjJzT2F1SCtYSlZh?=
 =?utf-8?B?dWduV1cxVWY0QXNhaG5abDlNbEhDeklITG9qdEl5SnQxbys3MTE1OTdHcUZi?=
 =?utf-8?B?cm9jZ0U0eXQ4N0Q0NzIzNmxsQUxCYVNVdjV5LzVjcWcwNG9Mc1dIT2pNb0xF?=
 =?utf-8?B?azYwbDVmY3JsVjlidFYxNHBoVUdsNVB4eURsVU45bzgxNEplZGl6OW45Q0JH?=
 =?utf-8?B?aFB1bG5vWTY0SWUzeHhwbGsvYlZYT1dGYklRd1hWbTN6VlZpUUZONUdhcHlM?=
 =?utf-8?B?NmRWVkRKWUg5OVdsZ1BtZmhpYjhaUHgwS3dCL3R6YWZhQ2ZOK0dYYVptRXJ6?=
 =?utf-8?B?cjZQNGp4cG0xU2JhUFZSemN1UnhrS1c2ektuRlFReCtRZGZ0bFFBUy85eHpW?=
 =?utf-8?B?aXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f9237d7-2903-4435-2623-08da5ba4e6a1
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2022 21:01:42.9837 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HUs7xVAUjIYtylv/qCyYCbDfKJAVfvVvMkvfqNXzqTnrvMuXD5B6omSYTkKt+gMMOGhXowmhvu/usEThtIL7joUxGx0gLHBvoogLIUW3/fk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6077
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656709314; x=1688245314;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=UX299MGGxRx2xjmiIlpAz3UJbQEZHF8szGgabTQWdTM=;
 b=Ogrw8d/yHBxqazNJuJlN/01ef6Ok5/eNnD8A0V4SmV57hna8Ex8YRRW0
 wuI1enG1VbCzh+QabbIQ/90xVorUQiqR3fCVYNA7J4/HzQzz2K1yqw5WA
 L9wa/MneFO8rcX6lfiGfRvUvmeoW52UWuT4+bI99FBjVLhML9UtzGrzze
 DqAYD+aH9CPbnGSb4HgjREtX71F86jmSL3Pprem0dNlqlgr23Nqlu9Giv
 Gfrl3urylUKyhJ4Jld20k/q+X0BQM9bt7sWF/IdeXKKnFg/exjAJxlFMa
 bEtiTtLnpKySU4UCwgnMQ3kslAV9r7oNoRwKSGw7518d7IXSQPAdKA1me
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ogrw8d/y
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2 0/2] Improvements for default
 VSI filter handling
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



On 7/1/2022 8:17 AM, Michal Wilczynski wrote:
> Currently when vf-true-promisc-support private flag is set to false, default VSI
> switch filter is used instead of a proper promiscuous one. Unfortunately flow for
> default VSI is a bit different, which leads to improper behavior like not being
> able to enable promisc mode on multiple VF's, or filter not being removed in
> 'trust off' flow.
> 
> v2:
> - Changed net-next to net, since this can be treated as a bug fixes

I think I may have been unclear on my previous question regarding this. 
Patch 1 looks like improvement for handling so net-next seems the right 
target for it. Patch 2 seems like it's resolving a bug which is why I 
was asking why that wasn't going to net.

Also, for future reference, if the patch is going to net, you need to 
add a Fixes: tag [1] to the patch(es).

[1] 
https://www.kernel.org/doc/html/latest/process/submitting-patches.html#describe-your-changes

> Michal Wilczynski (2):
>    ice: Introduce enabling promiscuous mode on multiple VF's
> v2:
> - Removed unnecessary parameter in function description
> - Removed unnecessary comments
> - Moved ice_vsi_uses_fltr function
> - Removed unnecessary blank lines
> - Changed commit message to utilize full 75 characters
> 
>    ice: Fix promiscuous mode not turning off
> 
>   drivers/net/ethernet/intel/ice/ice.h          |   2 -
>   drivers/net/ethernet/intel/ice/ice_eswitch.c  |   8 +-
>   drivers/net/ethernet/intel/ice/ice_ethtool.c  |   2 +-
>   drivers/net/ethernet/intel/ice/ice_lib.c      |  67 ++++-----
>   drivers/net/ethernet/intel/ice/ice_lib.h      |   9 +-
>   drivers/net/ethernet/intel/ice/ice_main.c     |  14 +-
>   drivers/net/ethernet/intel/ice/ice_switch.c   | 135 +++++++++---------
>   drivers/net/ethernet/intel/ice/ice_switch.h   |   6 +-
>   drivers/net/ethernet/intel/ice/ice_type.h     |   4 -
>   drivers/net/ethernet/intel/ice/ice_vf_lib.c   |  89 +++++++++---
>   drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   7 +-
>   drivers/net/ethernet/intel/ice/ice_virtchnl.c |  51 +++----
>   12 files changed, 216 insertions(+), 178 deletions(-)
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
