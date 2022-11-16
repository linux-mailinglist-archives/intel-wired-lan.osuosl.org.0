Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D8262B0EA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Nov 2022 02:59:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7088381B9D;
	Wed, 16 Nov 2022 01:59:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7088381B9D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668563966;
	bh=OoFX/YJn+A5dxq5Y9c2Bc4yqoWXGRBtDNM+Wr6//JDU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=idSwkY8ocYYbOWC0RXvcBS6LlrJ2laRirrDw5EK8/tMlJ9YUy0AleMbLrNFKLLOZf
	 Qe9eo+wf2aWF4v9A+Dq9oKDWrEXKJWX4ImAuyxJga1eVEbur6e290vey+3hYWezKyh
	 aQ22svw8G4rl9kmJU5cnaeSJEx5VBVyL4IazaL8v1dhH2TkUoyBxbVP2bMHpblvsp9
	 JcDyWobsuZPOpgr1oA0ajGrZ6MKvy+muTSXlW2X5I0nhjAPEOu694qRPYOxfoKl7Gl
	 LLV+yf3v4i7s6ESNoC2L9JiLkmBLOp19GdQ84OGXg99gGTYjjUJLd4DlPHyzFYl2Oy
	 S2LcuC827XlQQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I4ppmXkSr5ib; Wed, 16 Nov 2022 01:59:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3D40C81458;
	Wed, 16 Nov 2022 01:59:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3D40C81458
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 273971BF228
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 01:59:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 033DA41763
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 01:59:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 033DA41763
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NzAyoR0JTmgM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Nov 2022 01:59:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4915B41760
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4915B41760
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 01:59:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="310049175"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; d="scan'208";a="310049175"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2022 17:59:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="744846102"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; d="scan'208";a="744846102"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 15 Nov 2022 17:59:17 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 15 Nov 2022 17:59:17 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 15 Nov 2022 17:59:17 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 15 Nov 2022 17:59:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gnittxcjw4KmQCFzeZ+/3MZfu9710avgv/lOPEDC9TgneF15gWGo5Sq/+3edqJZfTNejewI6KVa4NdL98T9hhlSox8CEN8/L4x7dURo//oDUtjxOrC2VLhfJmuBWfXJdgZ68wD9tcsCypuEcXPqy8BQ2iDN+sH0pBBBzHeN4mBoiBB8GOj4GBhImjgJDFZRRrR+uweumFhcaMb6IShNvfTyBmvmhU7r7ZsQ6if6BezsV13DdzicutWMkGHatbvhqgqO24nvGXIVO9RTc33T6r4rWOv/89yOOzCDpgutc10r8zhFar5qNYYfcEkD4uHyoX9RKFgG38qrWq8zOtFBI7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fp6z1Yg8oRGsNHryYkP4IU8DclP202+4kkWC21KW2hM=;
 b=VVPa2UCo+htd+z49Y1i7/SJ1LLsA/xmsO67kIO0ReSVgj9WJuvTZekhymcq1Ffx4oGbmFxXZIEKnHTl+HgyySRCKl+3jviTvRjhBPnEhkbuz+vGHlxiAipk9ls8q4LiHXzOiJAmhvaQlNRfF1WD3VQ6zaeo0bK2qYVFtYbNMbYTvmR2XrSEhbFugbarg9lu8CWAnkFtE3sxrSU9JhTONvTm4xHaQzykLC8z/gTB7TR6lnkr4X66AvipDk5x+PPW+jWMU6ZiYa/UeKwgVL8J6Q9X1Fu0ml76GE9uIZEY9HvfG/aCkJ8hWC9+nvBqNzKmNWa3/M8bEv1Wb7lB0+9wK+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB4893.namprd11.prod.outlook.com (2603:10b6:a03:2ac::17)
 by CY8PR11MB6914.namprd11.prod.outlook.com (2603:10b6:930:5a::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.18; Wed, 16 Nov
 2022 01:59:13 +0000
Received: from SJ0PR11MB4893.namprd11.prod.outlook.com
 ([fe80::a32f:6a9a:c9cf:e771]) by SJ0PR11MB4893.namprd11.prod.outlook.com
 ([fe80::a32f:6a9a:c9cf:e771%4]) with mapi id 15.20.5813.018; Wed, 16 Nov 2022
 01:59:13 +0000
Message-ID: <be2954f2-e09c-d2ef-c84a-67b8e6fc3967@intel.com>
Date: Tue, 15 Nov 2022 19:59:06 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
To: Leon Romanovsky <leon@kernel.org>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>
References: <Y3JBaQ7+p5ncsjuW@unreal>
 <49e2792d-7580-e066-8d4e-183a9c826e68@intel.com> <Y3J16ueuhwYeDaww@unreal>
 <Y3M79CuAQNLkFV0S@localhost.localdomain> <Y3NJnhxetoSIvqYV@unreal>
 <Y3NWMVF2LV/0lqJX@localhost.localdomain> <Y3NcnnNtmL+SSLU+@unreal>
 <Y3NnGk7DCo/1KfpD@localhost.localdomain> <Y3OCHLiCzOUKLlHa@unreal>
 <Y3OcAJBfzgggVll9@localhost.localdomain> <Y3PS9e9MJEZo++z5@unreal>
Content-Language: en-US
From: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
In-Reply-To: <Y3PS9e9MJEZo++z5@unreal>
X-ClientProxiedBy: BYAPR05CA0099.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::40) To SJ0PR11MB4893.namprd11.prod.outlook.com
 (2603:10b6:a03:2ac::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4893:EE_|CY8PR11MB6914:EE_
X-MS-Office365-Filtering-Correlation-Id: 5ec204d3-53e9-41da-e79d-08dac77628fa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OHv3OC7rr0dNM+1i9foElheq87E4/cjpCrXq/Y93JlhFCF2hofhl2Xoivuw3jR/t9s0NuBZ+1RNo3U91bkXzPNh7ByF79xLoL5azk6YkuqolSXGh7/0snvbwXo69kBpxEa0Wo4bf5cy84dm9aBjIjeHUAZXb042oxCHAG2Wa6b8eDofw4cpO0Km6KiAehf10va9RtU5srYzJ04RCeGUWzbBv/iz4PoPugfOWVpUkCIK49/7LYwQnBHyammHMy/IZFC1S+qrCPNTNkUp49aPuwiwVBLY9KKIJrT0vai6OoDY5GeSWxk543eE1RTdZsS0K0Gbns/fboq90tPyhVbLnPxa9hbP/uQ9wmDibNmxWQDN+tqYsCRzijI74hOGTsAR94jtQ7epeV8H6BoWBbESJgBGJJK2Pd8cTVjXgsQK4dc9QVHeqFQUrTsRPqmGRp6cw6uELJKj7A9flwocQPHheU9Dc3MHOjncZqy1AN2Hj359ZFhZBjsKo53+k+OM0FAeQpv8vbKhTVGWWrhR/rdmp96ISOsmm7zcxHr6jQZvMVrMJeArOJO+t7jzYbzmPGOsRhsjFekhzmjviXOo29Nx7u8TKloIWOmKQIXOKaz81z2AhPQAWvgvuAR8sQqioc82MsMNP3Cf1Rs36pNqAZSXG+3zGF98sS3jZ9Hos0uI6OHin4IAiDX8qUIGUwZetQ5/UIeMo0n6XBOXxC7y+2V0ZFgI7+Hd5hSct3Ay1VFoJNqtIXbeREWIPg9jf1iHI9g3UZBYmRgl2qbzafZ9FXU1LjJqcjLh0JmTsmNHixK+CXYY6LeuQ3JkzGs2tTdx8RoqvhSv+vjDsCFMP3V9ktxESSg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4893.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(366004)(396003)(136003)(346002)(376002)(451199015)(36756003)(31686004)(31696002)(86362001)(83380400001)(2906002)(5660300002)(26005)(53546011)(82960400001)(2616005)(6506007)(186003)(6512007)(38100700002)(66946007)(4326008)(966005)(110136005)(6666004)(8676002)(66556008)(316002)(8936002)(41300700001)(6486002)(66476007)(478600001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MmQrQWRGYzdNODIwRkF1djlQYjg0Wkd1QWtsYS94ZWNkcjdCVWQrcWRZaVhS?=
 =?utf-8?B?RDJWeDdBd3VnbHhZK0JVTnl4V1F4eVJid1BmSk9LbkFGblRoSjN5Smx4QmZ1?=
 =?utf-8?B?VDNYSURhSkw2SlVpcG5OZTBGMXN0LzZKaGIyc2lxVDdRZUhBRCswK3J1NGMv?=
 =?utf-8?B?Y3V2MzQvYUpJazNWZThESGxXcTk1Sy9wa2lWTFA5OENha1ZaN1V1TGtnUkln?=
 =?utf-8?B?U2ZBZldDMmk3NDNGZUR4UndqZkFRalhqQmk3YXhCUCtDREpMMW0xb3BZQ1Vi?=
 =?utf-8?B?WVFObUd6cnpPcE1hRnVBN3ZqQ2YxUHBWQnpRS053LzhZL3hJQ21TY2dlWFRa?=
 =?utf-8?B?NUJiR1BBaHhBR0Z6azZwdWhFeHFXQWoyYXR6QmtUSkh6anpqcHlWOFd2VHNF?=
 =?utf-8?B?WGFJR2VpZU1XMFBzV1VGUnFvTDVudnh0TWROaG9kcHMwVnd1NURJeVRhZXM5?=
 =?utf-8?B?dmkvbG1DdFlyTXVvd0xLMUdiS1J3RnRPclBTbmZ6Y0E1ckZOcDBqUUZ5cHJQ?=
 =?utf-8?B?UWtJTURQck9LKzIrOVgrRTBKRFZNWUFNeXJYaUZndnp5Z1lQMDE2MkJpVGFk?=
 =?utf-8?B?L3E1cUVWQlg1R1dCbzl4ekJYb2tEV0N2UFlsdHJYY1RyVHFBa0tIVFkwdDIz?=
 =?utf-8?B?M1dDVjJZN0cvNXVZTU9YU2UvRXVTWEY5cGhwUFo3a1NYbzNrNFlSdXRuZGxH?=
 =?utf-8?B?Y3VPSXZOQXhFZ1NNUHp0RmRFVi9oQ1NNdVBqZERoTGhYVTd2MktUZUF0Q2lN?=
 =?utf-8?B?enV5Ym1BczZRRVRVL0JveFd4WFRNdVh3S1dGdk0zTm4yYmhyRkR2VC9BWFhs?=
 =?utf-8?B?WWVHVVJ1MWRvSTZoYldka0x3YlB5eVY1S2wwNEZmNktmeDA2OUs2VDNRZkF3?=
 =?utf-8?B?bDdWejNjNThOcjhrRDVIdEhuOVhWMzFva2FUWWlUNjJTMUovWU5GeklxM0ph?=
 =?utf-8?B?QlNxbmtnUjJVK1lKcDdWays5QmFwU0JscC9yNk92b0l3aWNrbDZSSUNjYjNF?=
 =?utf-8?B?SVcvRERvQm5GeGtmQkd5QWNpZ29pbWIxcWxILzFhYjR4d2txOW9rZGp4UHBP?=
 =?utf-8?B?aW10cUxmSFhldmtWd2t4amNHdFd4RER2VE9JNkxqREJQVzBLa3lHYzlEL2di?=
 =?utf-8?B?SVh5d1d3ZC9ZTlFZWGlUWmJNK041RC9GeUFJRGEvU0xqR21MbGZZdkVnZmRI?=
 =?utf-8?B?Q2ZUTHo3RG5VZ2tvVXF4ZndQK2lCbWxvd3o0QUtsenprMXUrc3RkV052VkhD?=
 =?utf-8?B?Ry92L2Nad0hYN2hFVFQyWHV4bGxYUW9DYTJvMEhqNzU5aVFCQ29oUlE0Y1hH?=
 =?utf-8?B?WW1UWkw3b1VKbjRYUUFpYnBiWkxFZWRKVERrMXcwMkFuTXQvL0FRS2NudzZi?=
 =?utf-8?B?aGFKZVR6N0xXZXRYZyt3ODlrUG9ZRDBSeHUzcmxwS3pRVHIybC9Fek5kMGVF?=
 =?utf-8?B?SGU0aXYyQnJ0TEpkQjlXSWJPNkdsbWp6N015M0RWVVZTK2hRYk1FcWZYQnFZ?=
 =?utf-8?B?RXBYL2o3NlpUY1FXYy9WRU9sMnlQeldkNHNIRG5lZjBYSzduejJKRGhzR0p2?=
 =?utf-8?B?bWIxM1VZSzI1bGFPQUpsTjNQS2tOdGU4bUhTdHN3aUorYzlodkpoWnVweHJw?=
 =?utf-8?B?RFVlTU4yckxORzQyUTVWazlCbU1kMUNVRG5mS041WEl1Q2k3QWpETU1qNm5U?=
 =?utf-8?B?R0JlbHJBY0swNURSd0hQTUd5cE9QK1JXZnVjZWNBS2hpU1pCOE5FQW9xc0py?=
 =?utf-8?B?aXZPUmsxTWxpT2ZlTkNobVcwTEM5OTREeXh3bWZmalNmUUkxZTJGVHdtdGJ5?=
 =?utf-8?B?Nll4NmtpZUwzaTJIcDVSc0VzcjFFLzV0ODlKMTJ6cWx6ZzdGVDU4S0dWSUFw?=
 =?utf-8?B?TWN2R05kdW1XbzFXbEJETjFOVytBVVNmUThiM0EzRVhpR1BIdzdjeHllWEIw?=
 =?utf-8?B?UzJjcTFkb3JSSVBFWlkyOW9YMkVlL0RxTnBUV2tCQXlKOG9VelpBdHB2Qitu?=
 =?utf-8?B?QXdRRnVLUlhBNmRhRm8zcThzSFA4Q3Vzb09RcWdNcmJuU2JyUkFEUUhyeVNB?=
 =?utf-8?B?QXRJczcxYjBiZnNpanNnWC9HRm5QVTFhMjlCZ0I2aVZGLzV3N3RpWEJIMDNC?=
 =?utf-8?B?UU9pY1FWQ0JudkJYKzVvSU9PUVY4aU1ocGtIRzRJV3V0OVVTK2Rodkl0QXNK?=
 =?utf-8?B?aVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ec204d3-53e9-41da-e79d-08dac77628fa
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4893.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Nov 2022 01:59:13.5665 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EvQnWvW4fyxQmTY54EcAX4z5CDc+3+Hw6H2paUXgjHMwZar1r5puK2gtZcD76e/29JERyg7pctl4j4O4OZcnepMIQeGHCaWpJUuIOrWoFOI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6914
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668563958; x=1700099958;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fp6z1Yg8oRGsNHryYkP4IU8DclP202+4kkWC21KW2hM=;
 b=RF2eykajIrtl9hrDbnREdJSvzZTfFKi5R6JFGSb7fuO/FKYSif9MeE1b
 rKSCZzoyUm7rX5ahYGnoTrDnmaF6xU5RiSt5xQgcSxlJlQsKuaohdGUUS
 lgrWcdvfKheo4itU2MAd4mCT5FYaEwf+ddKiVA8RLcqICVefLLzK9jx3b
 vi/12mrSpH07wE3kCIEhijaooyimBlHnVTDXIVLqbWwUlqXTCSRLFzijj
 D0awccXJkQFe5bHqAsH3xkjartL54b9dxD/YRPQcPYuivHkVob8kpGYW5
 D0PE5K32+40t1ZI1ErM707wljvK55GNyYJ9vEVsggEsa5Y5i7mSuzMrWY
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RF2eykaj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 00/13] resource management
 using devlink reload
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
Cc: mustafa.ismail@intel.com, netdev@vger.kernel.org,
 leszek.kaliszczuk@intel.com, przemyslaw.kitszel@intel.com, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, jiri@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, shiraz.saleem@intel.com, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/15/2022 11:57 AM, Leon Romanovsky wrote:
> On Tue, Nov 15, 2022 at 03:02:40PM +0100, Michal Swiatkowski wrote:
>> On Tue, Nov 15, 2022 at 02:12:12PM +0200, Leon Romanovsky wrote:
>>> On Tue, Nov 15, 2022 at 11:16:58AM +0100, Michal Swiatkowski wrote:
>>>> On Tue, Nov 15, 2022 at 11:32:14AM +0200, Leon Romanovsky wrote:
>>>>> On Tue, Nov 15, 2022 at 10:04:49AM +0100, Michal Swiatkowski wrote:
>>>>>> On Tue, Nov 15, 2022 at 10:11:10AM +0200, Leon Romanovsky wrote:
>>>>>>> On Tue, Nov 15, 2022 at 08:12:52AM +0100, Michal Swiatkowski wrote:
>>>>>>>> On Mon, Nov 14, 2022 at 07:07:54PM +0200, Leon Romanovsky wrote:
>>>>>>>>> On Mon, Nov 14, 2022 at 09:31:11AM -0600, Samudrala, Sridhar wrote:
>>>>>>>>>> On 11/14/2022 7:23 AM, Leon Romanovsky wrote:
>>>>>>>>>>> On Mon, Nov 14, 2022 at 01:57:42PM +0100, Michal Swiatkowski wrote:
>>>>>>>>>>>> Currently the default value for number of PF vectors is number of CPUs.
>>>>>>>>>>>> Because of that there are cases when all vectors are used for PF
>>>>>>>>>>>> and user can't create more VFs. It is hard to set default number of
>>>>>>>>>>>> CPUs right for all different use cases. Instead allow user to choose
>>>>>>>>>>>> how many vectors should be used for various features. After implementing
>>>>>>>>>>>> subdevices this mechanism will be also used to set number of vectors
>>>>>>>>>>>> for subfunctions.
>>>>>>>>>>>>
>>>>>>>>>>>> The idea is to set vectors for eth or VFs using devlink resource API.
>>>>>>>>>>>> New value of vectors will be used after devlink reinit. Example
>>>>>>>>>>>> commands:
>>>>>>>>>>>> $ sudo devlink resource set pci/0000:31:00.0 path msix/msix_eth size 16
>>>>>>>>>>>> $ sudo devlink dev reload pci/0000:31:00.0
>>>>>>>>>>>> After reload driver will work with 16 vectors used for eth instead of
>>>>>>>>>>>> num_cpus.
>>>>>>>>>>> By saying "vectors", are you referring to MSI-X vectors?
>>>>>>>>>>> If yes, you have specific interface for that.
>>>>>>>>>>> https://lore.kernel.org/linux-pci/20210314124256.70253-1-leon@kernel.org/
>>>>>>>>>> This patch series is exposing a resources API to split the device level MSI-X vectors
>>>>>>>>>> across the different functions supported by the device (PF, RDMA, SR-IOV VFs and
>>>>>>>>>> in future subfunctions). Today this is all hidden in a policy implemented within
>>>>>>>>>> the PF driver.
>>>>>>>>> Maybe we are talking about different VFs, but if you refer to PCI VFs,
>>>>>>>>> the amount of MSI-X comes from PCI config space for that specific VF.
>>>>>>>>>
>>>>>>>>> You shouldn't set any value through netdev as it will cause to
>>>>>>>>> difference in output between lspci (which doesn't require any driver)
>>>>>>>>> and your newly set number.
>>>>>>>> If I understand correctly, lspci shows the MSI-X number for individual
>>>>>>>> VF. Value set via devlink is the total number of MSI-X that can be used
>>>>>>>> when creating VFs.
>>>>>>> Yes and no, lspci shows how much MSI-X vectors exist from HW point of
>>>>>>> view. Driver can use less than that. It is exactly as your proposed
>>>>>>> devlink interface.
>>>>>>>
>>>>>>>
>>>>>> Ok, I have to take a closer look at it. So, are You saing that we should
>>>>>> drop this devlink solution and use sysfs interface fo VFs or are You
>>>>>> fine with having both? What with MSI-X allocation for subfunction?
>>>>> You should drop for VFs and PFs and keep it for SFs only.
>>>>>
>>>> I understand that MSI-X for VFs can be set via sysfs interface, but what
>>>> with PFs?
>>> PFs are even more tricker than VFs, as you are changing that number
>>> while driver is bound. This makes me wonder what will be lspci output,
>>> as you will need to show right number before driver starts to load.
>>>
>>> You need to present right value if user decided to unbind driver from PF too.
>>>
>> In case of ice driver lspci -vs shows:
>> Capabilities: [70] MSI-X: Enable+ Count=1024 Masked
>>
>> so all vectors that hw supports (PFs, VFs, misc, etc). Because of that
>> total number of MSI-X in the devlink example from cover letter is 1024.
>>
>> I see that mellanox shows:
>> Capabilities: [9c] MSI-X: Enable+ Count=64 Masked
>>
>> I assume that 64 is in this case MSI-X ony for this one PF (it make
>> sense).
> Yes and PF MSI-X count can be changed through FW configuration tool, as
> we need to write new value when the driver is unbound and we need it to
> be persistent. Users are expecting to see "stable" number any time they
> reboot the server. It is not the case for VFs, as they are explicitly
> created after reboots and start "fresh" after every boot.
>
> So we set large enough but not too large value as a default for PFs.
> If you find sane model of how to change it through kernel, you can count
> on our support.

I guess one main difference is that in case of ice, PF driver manager resources
for all its associated functions, not the FW. So the MSI-X count reported for PF
shows the total vectors(PF netdev, VFs, rdma, SFs). VFs talk to PF over a mailbox
to get their MSI-X vector information.



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
