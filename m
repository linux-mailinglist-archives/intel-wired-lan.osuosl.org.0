Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 901A9771FE0
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Aug 2023 13:12:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 303E54044C;
	Mon,  7 Aug 2023 11:12:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 303E54044C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691406767;
	bh=BGoNjPT6F4Bh2SSHk6iQT88gEDJwtq/ho5OCU+HZZfU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iukON93cJZshk3dUmoU66BhXNtiA+omJBaf3EsK9T9xoRAYzw1Xop7MJ/sy2CPAwV
	 65aEimGPEAqo1wDdA/nM+owjLu9MSLTRfkY8LrrHgJVWbzSqQjb11yJTA8cLaaXNMS
	 V1x2/2Knp2joypSF7ezCHZLWRIjTMCj6RBdkGNX25F69JIk41QL0Wk6yLsY/du1BRL
	 FePssRYcXT+TJZXvQBcLatQX0d0yRqClzdop/rQ8jmGn/0+spHWSxaZI7R6PgtHcS4
	 +bKlmvqm0o3US8IXz8iSQvYxJNWuh+prPGpMFU5cmz9T8w6Hxfl7KopN6TtTjW/+Hc
	 g4RzZjNOI6FuQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pOgsIsycHDLb; Mon,  7 Aug 2023 11:12:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6B14F4012F;
	Mon,  7 Aug 2023 11:12:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6B14F4012F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 332D11BF366
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 11:12:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 18C904031E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 11:12:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 18C904031E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RyTtYQyDo1J5 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Aug 2023 11:12:28 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EF48F40347
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 11:12:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EF48F40347
X-IronPort-AV: E=McAfee;i="6600,9927,10794"; a="355457366"
X-IronPort-AV: E=Sophos;i="6.01,261,1684825200"; d="scan'208";a="355457366"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2023 04:12:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10794"; a="1061552189"
X-IronPort-AV: E=Sophos;i="6.01,261,1684825200"; d="scan'208";a="1061552189"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 07 Aug 2023 04:12:27 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 7 Aug 2023 04:12:26 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 7 Aug 2023 04:12:26 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 7 Aug 2023 04:12:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V63xs/GYlkhvZKA8D7znV2Y0fcUjE6I6yduYwdBL7YhE6E2vEP+9yeSlnhO53ZPwGSaJ9vgwGe09jWZ7f9dsVuqlNhjiqTmkjJAsCx18ZWtJO0R2ymp0SjvHrqXqjPpvByP0DcMRjQ69w4yOQ7wN4TUxVXMw9wn+MGpIF4cy9wuR1rJSwmMYHQwiqiUYiMKoPA0gc6yM1gz8sR+ryMAM8ctZx7oM0SLnLybEnrsAVL+7xgV/zuek8wx7RekNj4M50aAtVoHKCXHRD9uPdj4aNjz5ujBjurqhJjK90X38Oqi7S2zT9VOja1TpHdVFfYRh9NAVzctLvoF3srTSvPcMVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0NFj1epD1F9/6jkwTPVuCaAdtZJX6POa8VySXeS3orM=;
 b=Z95zepa8WvgVZEX7Yt9zOCXArGx/5zZctKBPFjlGlslXO5DJWflsFzIyGho3jPIRaCtV9v2sarzoa3Euxk93syA0oLOEfDlUEZ3oD3lknSX+xJ1WsFvCWyFqvUNDZEP/Gl9mz3rqqTH81NcWID+fWVQWTWblrj8JRBwI7L+cw+dlJIrp0rHnVlRHNa/o9NWZ73n05H/HzRYThIWcX9zNOuM0NbIS11kA2v+wG+bJO+dtnak391vzftfaQ6KzReSLY/WIAn0pCBZNuEdC/MXdy+phdDtdV6FGpv44Jcwv5F1QEiyO9bHf1g0HI65KwIRSkfVMsFWSimXXGmLRGVdhJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by MW3PR11MB4636.namprd11.prod.outlook.com (2603:10b6:303:5a::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.26; Mon, 7 Aug
 2023 11:12:24 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7ed4:d535:7f41:de71]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7ed4:d535:7f41:de71%6]) with mapi id 15.20.6652.026; Mon, 7 Aug 2023
 11:12:24 +0000
Message-ID: <45567907-afad-635c-73d9-95860beefcf3@intel.com>
Date: Mon, 7 Aug 2023 13:12:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230807103624.468230-1-karol.kolacinski@intel.com>
 <20230807103624.468230-3-karol.kolacinski@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20230807103624.468230-3-karol.kolacinski@intel.com>
X-ClientProxiedBy: FR0P281CA0214.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ac::8) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|MW3PR11MB4636:EE_
X-MS-Office365-Filtering-Correlation-Id: 3fe0ffba-cb10-4978-396d-08db97372d4b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dt0bZMegeCMpB8wEZiTldB/W9vgoxUt0BQJCOerNxWfj3IsNZNwIkLU7WLgldAcDBVRchuZv9p6Sgmpfi001toRRA/9CGKztzOg3oSXDxzjiciaMDwpMFsRles+9reimOl+2HJefm3ZACttpz+2XTWATb2vLL27V73KKxaELYFh+4CUGZyfbRPG3m4pypYqrnG79ogvAmuG6IrdzA7fmenNELV3AOY0H5IO+i86NWDDg2rqpVsRbvPXG3CYLj51KDt9BAJa2h3K6zPWA43z9zDO3u5z579R8mLnDJ3ssvhlICKV0T1ptlHbaGGaAO7RaDXmgw9u9A8XK8ObWfenOcI+6vH96jUABSmBr2a/ojbh3EV1IE3hCrX6MQAKh/2B2eyEGIqJj5ZKpPCjd7y5TOpMISuJ4IVw5pKAnxcAmbXh142TXER8mmsx4Oh3Be1bYyXnj1DDHhNAL9Kv+yqqE3llcfmbV+deWcOgTExiGBaILc5ZLkD7qYUrA8EHQF6lW9QU2yu1bKjQHZ1DWn432hef76Y3HgCQyXQON8gf9eoiFUf4b95a8dJkpwvTJ51YrYxnlC/Xlf/wZnw4yMPeX5nTERxNDGLJ3AcWTv9o2eTl3kfKJrH5z5rBDKhHiXixiUDWdGTathJ/NFJvwkQOltA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(376002)(346002)(136003)(396003)(39860400002)(1800799003)(186006)(451199021)(41300700001)(26005)(30864003)(2906002)(5660300002)(31686004)(83380400001)(8676002)(8936002)(2616005)(86362001)(316002)(31696002)(6506007)(82960400001)(53546011)(38100700002)(6486002)(66556008)(66476007)(66946007)(6666004)(478600001)(6512007)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q3ZoeDVVT2l4d252dC9BZk1OWHkwaXFEVGJWQ01KdW14UU9CcmZIZW9tb1Qy?=
 =?utf-8?B?ZEtROXhUWEhBOTVDV2JVMDV6WXFmaXVuM25vdUZINWRIN0JXWnVjM0FMc0sx?=
 =?utf-8?B?U2lJWlN0eFdRSDVqb3NBY3FoeFdOajNtTVFyd0lncldqR3IxQmhVdXlrT2N5?=
 =?utf-8?B?TjR0cUxmOXYwZUJLei9TYVk4RkVLTk4xK1B6Z3p2cUxZbHBjNGZlTEpnRXNU?=
 =?utf-8?B?S0xHZG1KOG9yTVl1WE1wa3FTdEFqRnZBa3JjcUFHTTRzR3JIOS9NWFVnRnk2?=
 =?utf-8?B?N09zTlpOM0h6UFI0UXl3QzlRTHlZZFd2SnBnQWljbTkzVlMzKzZqdDNkaUE5?=
 =?utf-8?B?N09MdE9jQjlKNmkrYVViNmJSNnF6NHlCQ1JqZ1hCWDFIQzE1MzhjR3VxdWhu?=
 =?utf-8?B?TW1PbHJvbjRMWC83eU1oZkJTY0pzc2RDbk03dWp4YjBUWGFaZ3VJblFLYzFW?=
 =?utf-8?B?eFc1THdMSklDTXNPL2dibEhDdzRXUGx3VmlYWXN0elcra1lPc0xGenU2S1ky?=
 =?utf-8?B?VEo3bEM3SkJhM2wzeFJNNzFucTVpbXZxTVREWUFqandFdG8xOG9NRHdNT2dD?=
 =?utf-8?B?WERRQkdIOHo0MmJYcFpiZTFyMHl5R3YwRFdlemF2OHVjVXcvZW1kc3Z4ell3?=
 =?utf-8?B?MDVsL0dwMDduekJsVjJ0dWR5cVBBNWJFekNlbVlhTU5nbDZvN2JPdStqSGxT?=
 =?utf-8?B?cDZ5TTM4Y1QxNEJGbFVIaTd3U2Ira1pROGZlV1R0b2tsWWNBL2tCb0tJcExP?=
 =?utf-8?B?UzBTOUgwTlB5N0FkM1lLZ3lmRmVydzNSajVTdHl0VURiamFMMEcyandUR1k5?=
 =?utf-8?B?MGtoUkQzcXZ6QTQ2WHE2VHJORVVxSXFuOG5QT2dyd3ZoeENyeCtaT2krYk1z?=
 =?utf-8?B?VnFtbzZkYWI0bDdZdWYrWWJ6Ym9GRWNsM2hicUcxVk40aW4xUEhZdHNTRmFu?=
 =?utf-8?B?NTBmdzhvMXlsWXVUR3RtU0IrVjhUbTI1OCtiOTlGbUN0SjlFOVA4QndXK3Nw?=
 =?utf-8?B?VUcxVEFJNFBKaDJCaTN3emtrMzZWTnFEZ2E0Q2dLaTRUcXRKLzY1eTAyZFd1?=
 =?utf-8?B?R25xUmtQejI1ZUxmZVlPRk9XdFA1dytuaWFiZVBZZXk1bmNWRDU2N0dWN0o0?=
 =?utf-8?B?QUo5NkU3YnN1Skd2eTJjN2dCMTBWRGVZVFpHVnpUVnpqcmVEejZmOVJ2RDZz?=
 =?utf-8?B?TTZscDlGQ1YwYUcrWXZxSTV4eVpmMEpKWFROVnZUTFJFNVFXV3A4RStXMDJV?=
 =?utf-8?B?RUFpcWhrdTFXcnJqbnRkbnptd2VjMkp1S1MwVW5PemFpQzY4QmJEeE5GYWN6?=
 =?utf-8?B?YUlRaVFERDN5S2t3V010WmpNb3JTUWZWc1NnWUsxNXlJWTZPTGZVSW4rVi9J?=
 =?utf-8?B?UE42Z214ZWhnTFlRTVVFd1dHb0Y1aEtsTGNmeTZVSkc0d1ZpWlJlSVRDYWlJ?=
 =?utf-8?B?S0o0S2ZUSW1rOFVIdTZuMDFKU09ZZ2pyK3hZK0JFN2pYODlZK1Z5RXZEMFp3?=
 =?utf-8?B?dTdzdmluQ0w2L1NhYVNsTzM5bUJBeXc0TmFjc2xxaU1CdjZTWGhQbytTYjdN?=
 =?utf-8?B?bElqbG5OQkVuamFvOWZkMngvdnNIUXhNZUthVkxZV1FkOEwyaFpwb2pRQzZl?=
 =?utf-8?B?TTJ3R0YxUDE1N3lPdnFzUlQ5eVRlZWl4ekYxVXM1K1YrZUxXclN6WjR0VEN3?=
 =?utf-8?B?MzRmOFcwTjdxbi9ZemNjL1hMdlB1VE1LalZlV1Z2UFkycU9ORHRNOXRVaWRa?=
 =?utf-8?B?bjBScWZpWUs0ZnZubEYwamlRSVhIQnptS0U3cGJPeTAxeGlyaDBqTEx0SlVC?=
 =?utf-8?B?UWpMaWFwN1lrMHBMVHFpWVdXQ2F0UTBCRS9td09PMjQvUUZWKzdBcENiV1U1?=
 =?utf-8?B?YUhBOUJYczZRU0pqL284OUlMeGV2UU5pdkVJdEwzbVdkTnJtRi9Zemc1ei9w?=
 =?utf-8?B?Z1g1UFJUOTZVQzFpWjh1RC9yN1RsSFZMWmdLU1ZnUXQ4ZzZiWHpUSFo5Rm5D?=
 =?utf-8?B?ZUI4eGxuMjA0MFl3blAraDBYMmZsQnFNVk0wdTRlWndnVG56WlZyZGZ3VXVx?=
 =?utf-8?B?SnpWRlJ0VnF3eURqL09sSDJDT0FGdmJYcFZZenV1aGtkNDFreDMxRStZbzBo?=
 =?utf-8?B?cEh2SnQ0NEtMRGNqdnUwa2RRUUM4ak1EcEh3KzcvYktCdngvNkdXYTZmWENV?=
 =?utf-8?B?a1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3fe0ffba-cb10-4978-396d-08db97372d4b
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2023 11:12:24.4335 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HCeF4GqwBS+Pug7kD0hA1LAJrrje28oKvtCR6+B0PZ2ZYfcISpGUc3Db5E59dmYoRtyZ5tK7yDR6IA5ECWVvF90W8R+EcDgNL3MfS3Bo374=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4636
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691406747; x=1722942747;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=kZd5zJHZZtqlcvEQhOgw6Jlf/aAII7XiClQGNmorgfQ=;
 b=QUUHqOi1zai2PWcL9xWLkSqMjUByhr8SismYoOZO/uoNNHum1QXE+yuF
 9i1tspbauA7on12VPetsqcOs0ctnnLtu4zUOFIEJLQYzllvDN+UHxht2g
 eHttv8ZA6J0v+vPQndu/3zD/E//2NtR5xGoVTESGUB4/4wJ5umdLxOM7l
 mN3MvgvMMKhHpmL/abBwTuXO2zKCbNSdCMQhMo0kvqFbk+yqL+Gb/RMCa
 fKLQTXEpqiO2teY+oXxmVHJ1bdHrq9UHBUqTtVytdepG1hlvnXpFzxcRh
 yYxY7wd1vciVoqeTKDosK8nj0Tl8m656vq8Ms7hnrPJUGOFT55Jt70y2g
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QUUHqOi1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 2/9] ice: introduce PTP state machine
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

On 8/7/23 12:36, Karol Kolacinski wrote:
> Add PTP state machine so that the driver can correctly identify PTP
> state around resets.
> When the driver got information about ungraceful reset, PTP was not
> prepared for reset and it returned error. When this situation occurs,
> prepare PTP before rebuilding its structures.
> 
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice.h         |   1 -
>   drivers/net/ethernet/intel/ice/ice_ethtool.c |   2 +-
>   drivers/net/ethernet/intel/ice/ice_ptp.c     | 131 +++++++++++++------
>   drivers/net/ethernet/intel/ice/ice_ptp.h     |  10 ++
>   4 files changed, 99 insertions(+), 45 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index 34be1cb1e28f..86f6f94da535 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -490,7 +490,6 @@ enum ice_pf_flags {
>   	ICE_FLAG_DCB_ENA,
>   	ICE_FLAG_FD_ENA,
>   	ICE_FLAG_PTP_SUPPORTED,		/* PTP is supported by NVM */
> -	ICE_FLAG_PTP,			/* PTP is enabled by software */
>   	ICE_FLAG_ADV_FEATURES,
>   	ICE_FLAG_TC_MQPRIO,		/* support for Multi queue TC */
>   	ICE_FLAG_CLS_FLOWER,
> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> index d3cb08e66dcb..7d57ecf48da0 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -3275,7 +3275,7 @@ ice_get_ts_info(struct net_device *dev, struct ethtool_ts_info *info)
>   	struct ice_pf *pf = ice_netdev_to_pf(dev);
>   
>   	/* only report timestamping if PTP is enabled */
> -	if (!test_bit(ICE_FLAG_PTP, pf->flags))
> +	if (!test_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags))
>   		return ethtool_op_get_ts_info(dev, info);
>   
>   	info->so_timestamping = SOF_TIMESTAMPING_TX_SOFTWARE |
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index 0669ca905c46..a6ea90b9461e 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -255,6 +255,31 @@ ice_verify_pin_e810t(struct ptp_clock_info *info, unsigned int pin,
>   	return ice_ptp_set_sma_e810t(info, pin, func);
>   }
>   
> +/**
> + * ice_ptp_state_str - Convert PTP state to readable string
> + * @state: PTP state to convert
> + *
> + * Returns: the human readable string representation of the provided PTP
> + * state, used for printing error messages.
> + */
> +static const char *ice_ptp_state_str(enum ice_ptp_state state)
> +{
> +	switch (state) {
> +	case ICE_PTP_UNINIT:
> +		return "UNINITIALIZED";
> +	case ICE_PTP_INITIALIZING:
> +		return "INITIALIZING";
> +	case ICE_PTP_READY:
> +		return "READY";
> +	case ICE_PTP_RESETTING:
> +		return "RESETTING";
> +	case ICE_PTP_ERROR:
> +		return "ERROR";
> +	}
> +
> +	return "UNKNOWN";
> +}
> +
>   /**
>    * ice_ptp_configure_tx_tstamp - Enable or disable Tx timestamp interrupt
>    * @pf: The PF pointer to search in
> @@ -1285,7 +1310,7 @@ void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
>   	struct ice_ptp_port *ptp_port;
>   	struct ice_hw *hw = &pf->hw;
>   
> -	if (!test_bit(ICE_FLAG_PTP, pf->flags))
> +	if (pf->ptp.state != ICE_PTP_READY)

test_bit() is atomic API, but "just reading/using variable" is rather not.
Please extend commit message to say something about why transition  here 
(here=whole commit) is safe.

>   		return;
>   
>   	if (WARN_ON_ONCE(port >= ICE_NUM_EXTERNAL_PORTS))
> @@ -2020,7 +2045,7 @@ int ice_ptp_get_ts_config(struct ice_pf *pf, struct ifreq *ifr)
>   {
>   	struct hwtstamp_config *config;
>   
> -	if (!test_bit(ICE_FLAG_PTP, pf->flags))
> +	if (pf->ptp.state != ICE_PTP_READY)
>   		return -EIO;
>   
>   	config = &pf->ptp.tstamp_config;
> @@ -2087,7 +2112,7 @@ int ice_ptp_set_ts_config(struct ice_pf *pf, struct ifreq *ifr)
>   	struct hwtstamp_config config;
>   	int err;
>   
> -	if (!test_bit(ICE_FLAG_PTP, pf->flags))
> +	if (pf->ptp.state != ICE_PTP_READY)
>   		return -EAGAIN;
>   
>   	if (copy_from_user(&config, ifr->ifr_data, sizeof(config)))
> @@ -2422,7 +2447,7 @@ static void ice_ptp_periodic_work(struct kthread_work *work)
>   	struct ice_pf *pf = container_of(ptp, struct ice_pf, ptp);
>   	int err;
>   
> -	if (!test_bit(ICE_FLAG_PTP, pf->flags))
> +	if (pf->ptp.state != ICE_PTP_READY)
>   		return;
>   
>   	err = ice_ptp_update_cached_phctime(pf);
> @@ -2432,6 +2457,42 @@ static void ice_ptp_periodic_work(struct kthread_work *work)
>   				   msecs_to_jiffies(err ? 10 : 500));
>   }
>   
> +/**
> + * ice_ptp_prepare_for_reset - Prepare PTP for reset
> + * @pf: Board private structure
> + */
> +void ice_ptp_prepare_for_reset(struct ice_pf *pf)
> +{
> +	struct ice_ptp *ptp = &pf->ptp;
> +	u8 src_tmr;
> +
> +	if (ptp->state == ICE_PTP_RESETTING)
> +		return;
> +
> +	ptp->state = ICE_PTP_RESETTING;
> +
> +	/* Disable timestamping for both Tx and Rx */
> +	ice_ptp_cfg_timestamp(pf, false);
> +
> +	kthread_cancel_delayed_work_sync(&ptp->work);
> +
> +	if (test_bit(ICE_PFR_REQ, pf->state))
> +		return;
> +
> +	ice_ptp_release_tx_tracker(pf, &pf->ptp.port.tx);
> +
> +	/* Disable periodic outputs */
> +	ice_ptp_disable_all_clkout(pf);
> +
> +	src_tmr = ice_get_ptp_src_clock_index(&pf->hw);
> +
> +	/* Disable source clock */
> +	wr32(&pf->hw, GLTSYN_ENA(src_tmr), (u32)~GLTSYN_ENA_TSYN_ENA_M);
> +
> +	/* Acquire PHC and system timer to restore after reset */
> +	ptp->reset_time = ktime_get_real_ns();
> +}
> +
>   /**
>    * ice_ptp_reset - Initialize PTP hardware clock support after reset
>    * @pf: Board private structure
> @@ -2444,6 +2505,16 @@ void ice_ptp_reset(struct ice_pf *pf)
>   	int err, itr = 1;
>   	u64 time_diff;
>   
> +	if (ptp->state != ICE_PTP_RESETTING) {
> +		if (ptp->state == ICE_PTP_READY) {
> +			ice_ptp_prepare_for_reset(pf);
> +		} else {
> +			err = -EINVAL;
> +			dev_err(ice_pf_to_dev(pf), "PTP was not initialized\n");
> +			goto err;
> +		}
> +	}
> +
>   	if (test_bit(ICE_PFR_REQ, pf->state))
>   		goto pfr;
>   
> @@ -2510,7 +2581,7 @@ void ice_ptp_reset(struct ice_pf *pf)
>   	if (err)
>   		goto err;
>   
> -	set_bit(ICE_FLAG_PTP, pf->flags);
> +	ptp->state = ICE_PTP_READY;
>   
>   	/* Start periodic work going */
>   	kthread_queue_delayed_work(ptp->kworker, &ptp->work, 0);
> @@ -2519,6 +2590,7 @@ void ice_ptp_reset(struct ice_pf *pf)
>   	return;
>   
>   err:
> +	ptp->state = ICE_PTP_ERROR;
>   	dev_err(ice_pf_to_dev(pf), "PTP reset failed %d\n", err);
>   }
>   
> @@ -2725,39 +2797,6 @@ int ice_ptp_clock_index(struct ice_pf *pf)
>   	return clock ? ptp_clock_index(clock) : -1;
>   }
>   
> -/**
> - * ice_ptp_prepare_for_reset - Prepare PTP for reset
> - * @pf: Board private structure
> - */
> -void ice_ptp_prepare_for_reset(struct ice_pf *pf)
> -{
> -	struct ice_ptp *ptp = &pf->ptp;
> -	u8 src_tmr;
> -
> -	clear_bit(ICE_FLAG_PTP, pf->flags);
> -
> -	/* Disable timestamping for both Tx and Rx */
> -	ice_ptp_cfg_timestamp(pf, false);
> -
> -	kthread_cancel_delayed_work_sync(&ptp->work);
> -
> -	if (test_bit(ICE_PFR_REQ, pf->state))
> -		return;
> -
> -	ice_ptp_release_tx_tracker(pf, &pf->ptp.port.tx);
> -
> -	/* Disable periodic outputs */
> -	ice_ptp_disable_all_clkout(pf);
> -
> -	src_tmr = ice_get_ptp_src_clock_index(&pf->hw);
> -
> -	/* Disable source clock */
> -	wr32(&pf->hw, GLTSYN_ENA(src_tmr), (u32)~GLTSYN_ENA_TSYN_ENA_M);
> -
> -	/* Acquire PHC and system timer to restore after reset */
> -	ptp->reset_time = ktime_get_real_ns();
> -}
> -
>   /**
>    * ice_ptp_init_owner - Initialize PTP_1588_CLOCK device
>    * @pf: Board private structure
> @@ -3011,6 +3050,8 @@ void ice_ptp_init(struct ice_pf *pf)
>   	struct ice_hw *hw = &pf->hw;
>   	int err;
>   
> +	ptp->state = ICE_PTP_INITIALIZING;
> +
>   	ice_ptp_init_phy_model(hw);
>   
>   	ice_ptp_init_tx_interrupt_mode(pf);
> @@ -3032,7 +3073,6 @@ void ice_ptp_init(struct ice_pf *pf)
>   	/* Start the PHY timestamping block */
>   	ice_ptp_reset_phy_timestamping(pf);
>   
> -	set_bit(ICE_FLAG_PTP, pf->flags);
>   	err = ice_ptp_init_work(pf, ptp);
>   	if (err)
>   		goto err;
> @@ -3041,6 +3081,7 @@ void ice_ptp_init(struct ice_pf *pf)
>   	if (err)
>   		goto err;
>   
> +	ptp->state = ICE_PTP_READY;
>   	dev_info(ice_pf_to_dev(pf), "PTP init successful\n");
>   	return;
>   
> @@ -3050,7 +3091,7 @@ void ice_ptp_init(struct ice_pf *pf)
>   		ptp_clock_unregister(ptp->clock);
>   		pf->ptp.clock = NULL;
>   	}
> -	clear_bit(ICE_FLAG_PTP, pf->flags);
> +	ptp->state = ICE_PTP_ERROR;
>   	dev_err(ice_pf_to_dev(pf), "PTP failed %d\n", err);
>   }
>   
> @@ -3063,9 +3104,15 @@ void ice_ptp_init(struct ice_pf *pf)
>    */
>   void ice_ptp_release(struct ice_pf *pf)
>   {
> -	if (!test_bit(ICE_FLAG_PTP, pf->flags))
> +	if (pf->ptp.state == ICE_PTP_UNINIT)
>   		return;
>   
> +	if (pf->ptp.state != ICE_PTP_READY)
> +		dev_warn(ice_pf_to_dev(pf), "PTP state machine is %s, tearing down PTP anyways\n",
> +			 ice_ptp_state_str(pf->ptp.state));
> +
> +	pf->ptp.state = ICE_PTP_UNINIT;
> +
>   	/* Disable timestamping for both Tx and Rx */
>   	ice_ptp_cfg_timestamp(pf, false);
>   
> @@ -3073,8 +3120,6 @@ void ice_ptp_release(struct ice_pf *pf)
>   
>   	ice_ptp_release_tx_tracker(pf, &pf->ptp.port.tx);
>   
> -	clear_bit(ICE_FLAG_PTP, pf->flags);
> -
>   	kthread_cancel_delayed_work_sync(&pf->ptp.work);
>   
>   	ice_ptp_port_phy_stop(&pf->ptp.port);
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
> index 8f6f94392756..674a0abe3cdd 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
> @@ -201,8 +201,17 @@ struct ice_ptp_port_owner {
>   
>   #define GLTSYN_TGT_H_IDX_MAX		4
>   
> +enum ice_ptp_state {
> +	ICE_PTP_UNINIT = 0,
> +	ICE_PTP_INITIALIZING,
> +	ICE_PTP_READY,
> +	ICE_PTP_RESETTING,
> +	ICE_PTP_ERROR,
> +};
> +
>   /**
>    * struct ice_ptp - data used for integrating with CONFIG_PTP_1588_CLOCK
> + * @state: current state of PTP state machine
>    * @tx_interrupt_mode: the TX interrupt mode for the PTP clock
>    * @port: data for the PHY port initialization procedure
>    * @ports_owner: data for the auxiliary driver owner
> @@ -225,6 +234,7 @@ struct ice_ptp_port_owner {
>    * @late_cached_phc_updates: number of times cached PHC update is late
>    */
>   struct ice_ptp {
> +	enum ice_ptp_state state;
>   	enum ice_ptp_tx_interrupt tx_interrupt_mode;
>   	struct ice_ptp_port port;
>   	struct ice_ptp_port_owner ports_owner;

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
