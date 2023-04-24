Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF906ED377
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Apr 2023 19:27:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6014D410E5;
	Mon, 24 Apr 2023 17:27:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6014D410E5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682357226;
	bh=bgGa+8Yzln+ke9MyxaxqOamYu98NCzexhn2bMsTNVQY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uOqYXtNNxaA9wLYKSXMpuzua8JJO+Ip5SjcwF5xUI+jAPhtMl0qCWZJP/R1ljEcjx
	 VllU34YiL5vWkKWynqZGvZPi0Ko2QAjzSNn37hMScNTyGWLnPVLWVc750JO5u//x1J
	 Rc4HBIbDw9uYKCOuPLG/2QKNM+43v7wl8hShVq+ARWr1s+9HIrpuee+D8UHyG537md
	 6KRzH9HFShe9fc1NLhjixTy88hl84MN/LK0/8ebKJFO1r4vttvO70O0C++kJg2LcBH
	 kPlbeki4HnWk0nMyBHYtUgmkEip2xUIDi0EbAKu32Yo3yobnm6xNCY7hevf/bFVsm1
	 crvDRCRIIeHnw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 99tPzJGEe7QS; Mon, 24 Apr 2023 17:27:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D2A634098F;
	Mon, 24 Apr 2023 17:27:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D2A634098F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 757971BF83E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Apr 2023 17:26:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 49A9F404C3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Apr 2023 17:26:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 49A9F404C3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pcRFENuKo0Wm for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Apr 2023 17:26:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 78F014038E
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 78F014038E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Apr 2023 17:26:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="345264780"
X-IronPort-AV: E=Sophos;i="5.99,223,1677571200"; d="scan'208";a="345264780"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2023 10:26:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="757782538"
X-IronPort-AV: E=Sophos;i="5.99,223,1677571200"; d="scan'208";a="757782538"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP; 24 Apr 2023 10:26:56 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 24 Apr 2023 10:26:56 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 24 Apr 2023 10:26:56 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 24 Apr 2023 10:26:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LMIlIY7rQKRUYqQXdO5kkjmcIdC5VO5edAd6lDPztwKPwnYlpsedNPYV0njxPaw6X+N95gh/U3v9dqoJhce9qG5npCqMRNTwGwwfrRzF8N09hmzHArfJi8z4U/A9X+R/PL9TE720Ey2104wEL9ib2IVfcRP+VBSIh4K68yPSRpexP8XMUGcr5zKcLTGQ4hP+Y9O7S86n+SwWGRe1PJdetY1Z7p/FmuHIiXxZy0L6eyaSJATbtluHU6HpJgGPd3VcFjzPDzw74vMdGytTQafhFCU5j4Wg8ej3ha3Fu85nK2PABph3Go0EcvBXGtZHOrzZ6Ckll/gL+05o9aG4P7TBUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dwsrL3Dy42w4yYzl8cApbMEEMvMnEN4k7LokvqsXnuk=;
 b=ECxsfZYaDf3hVusKeziOogVAMaomeuhXvI0khjqlSTjb8teX1FI1t1tebIdZRvTuHvDxhDeTBI6tmndrEAmlujhvQ4yuwRylnoxEGvYrfCtJZgdtzW1VB1tcasDVx9XSvJZluKBFMdSvzNccQbEMLJZ1TTxs4lDYNEitQteYhogoX/6ss8dawcR9vyIVoFzel+KKLnRF3MLIs+DDPDJLfGCn/5KSEyH4IPgFTJDL/AbFa1pZqy1AL5OeoVI4eGHHcyX+Wy4ilsecn3SEVCgeYoM1vgZTdoPglcnpLvOEfuU/0ca4z4157NqKOBqarZfvNYymLDYz1jF3+dtwdSUaCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CY8PR11MB7874.namprd11.prod.outlook.com (2603:10b6:930:7c::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.33; Mon, 24 Apr
 2023 17:26:54 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::3c6f:a70d:414b:98f7]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::3c6f:a70d:414b:98f7%4]) with mapi id 15.20.6319.032; Mon, 24 Apr 2023
 17:26:54 +0000
Message-ID: <3acea164-4ba8-5ef8-cc60-c71f335fa157@intel.com>
Date: Mon, 24 Apr 2023 10:26:52 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: "Wesierski, DawidX" <dawidx.wesierski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Maziarz, Kamil" <kamil.maziarz@intel.com>
References: <DM6PR11MB2700DCD3A6E740829299103F88679@DM6PR11MB2700.namprd11.prod.outlook.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <DM6PR11MB2700DCD3A6E740829299103F88679@DM6PR11MB2700.namprd11.prod.outlook.com>
X-ClientProxiedBy: SJ0PR03CA0248.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::13) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CY8PR11MB7874:EE_
X-MS-Office365-Filtering-Correlation-Id: b641d58c-ff9d-40ad-d6f8-08db44e918fb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: q2a/LU5MM2JxWijcc5djPUcf+jnoyAor8luby4VPbRp/wpJwd3XlOi4UEquPYYhbGvM3RkjU+dUG0fFJl/9ZhjpjNHvMZONqFkbsxlbO3eYQcePc+6N6B28FFSiXJp+U8C6GL0XOF3E0lj/yjW495hamoOltS1kSewgeiIIfZ1RZEUlQPCbrTnA68f/OBXZFWCxy95x+fcuEcEXvygdO5OiGMsHUwKgS/GQTRX6HJwqoaTeEJkb9RvIYq/NIUqydPFyL/AiRd+ZmX5YMtHA5usjDZ5R0n/rHAuNU5sycTkO+J0p3SSx0ja07uJnmBlL50UPIrxIqnAdW9TJSAFTCn4O7rWUlFWD6E25aqbaZ56CjJHzZWmtkWm0SXHwec7sOetiDDorUM4ZdR9arbs2oIq+2EL9jYSF59UFJdfsfxiBwWjNyqkhdu8Xve2GwR8dlkaXupX2ir0FEkhCAa70nOPx5aryxWSmjZjpZ1QGuCDq23s48od3RFH7Gu7OZqV0DNUMow45VXPDDk7oCpuIHoy1AG8Z59NdsyqKPxQjuAl/wHUUnkCI0Pmv5p2bZ12Vmm+0ZAAmFsSVH+mYsMA3TUr7+b722f57wDOlf9p6Avud6KQnDGJs+RgrvznzEQzxHOUJ8V0k78chtOFZSGCTDEQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(136003)(346002)(376002)(366004)(451199021)(66946007)(83380400001)(2906002)(6512007)(6506007)(26005)(316002)(66476007)(66556008)(82960400001)(2616005)(8676002)(41300700001)(38100700002)(8936002)(5660300002)(31686004)(110136005)(6636002)(86362001)(478600001)(31696002)(36756003)(186003)(53546011)(6486002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OHRLRW4zU1FvZDJjTks5N09VbE8rQ1N0M0JaVVNyK3VhSW1aZVlCMWVvbGVY?=
 =?utf-8?B?T3Mvdllva1Z5ck01NWFka2hXc3B3WEkrWElQbkRkK2xLVEpqaXM0ZStWRWZy?=
 =?utf-8?B?Y0pJRTFUMGRXd29MRTVwREQxWW5BSTNhbUw0RG9XZUlNK01DVGIrdzE4YUl5?=
 =?utf-8?B?dU9VbW5LZDdTd3ZHN2pKTWdzNFBQNGcvTno4TkNNMk8vRm96Q2c3Z1ZxV2w3?=
 =?utf-8?B?MGxTYVN2cExNRk1NSzBKbGhVMHpaM3BVTmc4Z2VDTFJZMmJTb2lISWNCYnRo?=
 =?utf-8?B?ZnBjMFBrRUY3NndHVFdtSmQyQkpzOVZaeC9tdXByckhScU95OGZIbnVENFNQ?=
 =?utf-8?B?VjM3SVZocm5RZXFpSXlLZ0xaU2hlWkYwZm5FV056em5oZUhoNlY3blJVZ2FL?=
 =?utf-8?B?RGwvajhvdkRoenFkbi9XR3d5dHlYekk4YnJhamhjOU5xWnVuOEgzZGlCc0dw?=
 =?utf-8?B?aVg3WTFPWDhFTXo2R0NhbWZScWQybVc4bjNrbEdwY3BmbURkZGlKNHFudzc0?=
 =?utf-8?B?akYvOUdFUE9EUys3dWJzMldGV3NPNTRGME1iVFhidUdMU09DMzlucWJCV293?=
 =?utf-8?B?Y0xEMzMwUXk3VVVHY2JsSzZXOVRmb3B2cmMyMHd3S3ZmcGRsVENNYUdhc1oy?=
 =?utf-8?B?MVR2dFdjcWg3YStOcm42Y0RCM0FwaUhWWHVlYzQweVQyTmNmd1p2TW4yZCs3?=
 =?utf-8?B?VmpyNWk3YVRxSXF1NVkxcGlUU0djUi9ITzJ6TDNqMmgwdmRHQk1ocVZ0Zlcz?=
 =?utf-8?B?SFNsVGJzdzZWQnRMZjV2RXA2d2hJM3pTcTZJWllkeDRLVFZkSzJCVkJoY0Vr?=
 =?utf-8?B?Wml0TE1DZEdKY0pSR1k3b09tUExYcGN5cUpoOWYvaHhGRFAzTnByTFpXcGRX?=
 =?utf-8?B?V2JQZG1adkswbFBMYmF1Mk5rcEdGWDdxTjZ1T2I4bHlmS2ZmbTN5b0JIRlZV?=
 =?utf-8?B?eFZ6NVRPZm5IRUpIMHBvbVZmMXBlWFIrTWhWVjM4Ykp0Ymd0ZHJMSFJtbVZB?=
 =?utf-8?B?QnBFa2diWEJlV05SV1VIeGRtLzJqdFFoK1JZaW9vVzA3bTZ1bEtVdlhLMU9o?=
 =?utf-8?B?Y2lIS3BpdlJUZE4yYmN3em9UWUFiMWRoM0tiZlJTTFVQZHM3cGxhNG9mMjZj?=
 =?utf-8?B?SDI3Y3Q3dytLSXFCYWk3N25iZGkyOGNwdmdaZ3M2ekxCbW01QWNQRVd2QnF0?=
 =?utf-8?B?WjN5YTU1QTZ0RzMzMFozREYybEVmc2V4bXhBanBVQjRDZnZrTVA3UnZiZVhl?=
 =?utf-8?B?RmRjSjNsdWtXWHJlK2lERm53bXRsQWlrZ2x1My9QeUxDZFJkQzUyUE11aW9s?=
 =?utf-8?B?Qml3NzZZWkZNMUJrQklkbXh0SnJPeXNlMHNxSDMyUTdUb2o2bHgzM1dGMndz?=
 =?utf-8?B?ZmZkVnpOb3J1c1NSY0s5NlFjOGhLM1I1ODZRZkFqTWhNV3p5Qk5FaTZNVFdx?=
 =?utf-8?B?TmM3ODA2V0JXYkJveHY4dE1uK2RzOFBndVJGd0JtUElQZ3JORjFEZTFlQmtI?=
 =?utf-8?B?ejNPT2src3Y4YXYzejdYL0pDSzR1TFBmNmltUXIvQkcxK2d3WE1lVm1ieEZI?=
 =?utf-8?B?NTlmRUxWRTBGTWZKRW92KzJDRWliaHg0NDJwSFNkTkFKVmR6SDBsTjBnNGUz?=
 =?utf-8?B?RjJadU1wcytwSnA2NWlycHpZS2I2VEtIQmpKSHpkR0Y3YzJrTGVYQTF1UFh0?=
 =?utf-8?B?TC8zcXhFbHBPa21MQ21MNUZHeFk5U3NoUkR1KzIzWUlwVlg5RnBDVVA0MFlQ?=
 =?utf-8?B?Y09ZanpLamM5bDBYUTNQS3VMN3lQZGhadWtqOE9VaHh1RGlnOHZPcG5BcmtZ?=
 =?utf-8?B?OE52WFJnMGRtR0hGQXZqOUpKR0tIcUJHN21uNlFtM1Z5OWpKbHpDaHZPQkVV?=
 =?utf-8?B?THp5NnVXU2c4NE9KdUlIdE9ySytqOGQ1RGtSWk9neXU4Rm83aVlrdWp5TCsx?=
 =?utf-8?B?VWJoVWlXNW5xMVVCQUxrNzh5TjFCL1N4V1hzdmI4Um5iQWpzblhpT2ZSTng3?=
 =?utf-8?B?akYwdEVtUTdnakpxdXRCS1pEdUZkajVseC9DaEtoOWFsVlU2WC9nVnhpeWUr?=
 =?utf-8?B?alRWVmQ2QmhnQmVCQkVUSTRpMFRjMzJab2I2cnZTM3B0VVh5STJRZDBvR3A0?=
 =?utf-8?B?anRLVEc5U05ZTGtCZkR6Mk1xTjkyZkJtVnJHQ3IxMVNxT3p2U3lKOFppOEI5?=
 =?utf-8?B?bkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b641d58c-ff9d-40ad-d6f8-08db44e918fb
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2023 17:26:54.3330 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5SQlYTjHmpVt70W+RzJSktpQXdIvBBfxWNUBwnbxbphh9gIOufD/D3kmATvM+EqQxLMaPs5VkXCmtQR4PufoqgPp5e15V0vak1+KT1hKjPk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7874
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682357217; x=1713893217;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=sM2XUsScA2CBpX/hulz0tHBEsVyUfH/s6LsAXY5eJQA=;
 b=RDeCD1vEVs+Zb/+Mneq7Juo78WxVxafMnX8xmpl1AwgG8pPwRll0xxOc
 cx4KPMPIeKyhx4VCcs301kgsHxZRQ+eU59T0Zz+aWu0CmWtPp9Q1OS0t4
 tdm49YZmG4oBux5YeN6FndCFWz9A4dmyL/ue3roHYxmGgUey6rsiv8eV2
 dWEqayNkOy/bAa5DcH5fqKGW28UIENHa9RAQxIJBM9FVzfgWPETIWiEw4
 /X8CooRCI/qCNQ0faTcwTL/bkjXnH3KKquQfoz9heQzb907BdB5mqtrV5
 R2PYt4eKIcQQ+Fkm0W4r/fRI1oWcMHwMJlt8vet3/ncJRu4waH82TjGkx
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RDeCD1vE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v4 2/4] iavf: Don't lock rtnl_lock
 twice in reset
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 4/24/2023 5:27 AM, Wesierski, DawidX wrote:
> This function schedules itself in case it is impossible to update the
> netdev at a particular time.
> This scenario could occur when multiple operations require the rtnl_lock
> simultaneously.
> By implementing it this way, the function seems to introduce unnecessary
> operations during
> testing with operations requiring reset in quick sucession. However, my
> thought process was to
> make it more error-proof in normal use cases.
> 
> 
> Do you think this information should be included inside the comment or
> commit message?
> 

Just take rtnl_lock. The only reason we *can't* take rtnl_lock in the
reset flow is because we're holding another lock in that context which
leads to a hard lock where:

application thread A:
<netdev call>
rtnl_lock
<driver handler>
driver_lock
...


reset thread B:
<reset request starts>
driver_lock
<perform reset>
rtnl_lock
...


The reason this is a problem is that the driver is already in a critical
section with driver_lock, but if it tries to enter critical section for
RTNL, it hard lock waiting for thread A to release RTNL, but thread A is
waiting for reset thread B to release driver lock, so we get deadlock.

In the new case, reset thread B looks like this:

reset thread B:
<reset request starts>
driver_lock
<perform reset>
schedule thread C
release_driver_lock

thread C:
rtnl_lock
finish netdev task
rtnl_unlock

In this new world , thread C doesn't hold any driver critical sections,
and it is safe to just take RTNL lock.

It is also potentially more fair and less CPU waste than try_lock +
reschedule. The scheduler subsystem can sleep the thread until the lock
becomes available.

The complexity of the reschedule is only necessary within the critical
section of the driver lock used for reset handling.

Thanks,
Jake



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
