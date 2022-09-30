Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 326595F0E70
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Sep 2022 17:08:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6F8B9842CA;
	Fri, 30 Sep 2022 15:08:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6F8B9842CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664550487;
	bh=azBnia0PT1KGzDowkNkKU+iI7Tc2pc4OK70p6SaF1k0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WQeF+lvIG2wsiq5Bw1biGKf5X7R12p3IuV8hKc/ygLJxwJpXjfvtCteZKvlrxOeH/
	 pKe8RxMuGzB24o/VafPztwbdedOXjYlY/O+7QDede0N6ejehKVgI3BzrpZ/fuQeUfA
	 HdNePeyb3z/XFbuCDtnUnx7wiKkCXWbTw1sJetywIKdoZbVwuBVA2ogfY5iw/WbZsX
	 rINXt5+wD+nPqoWs38Iv6tZlKrvcoEgIJ5SKNoOlB0R4QmuoRFOESWXPYG7NIQ67Sa
	 DdKRHjjTRPXcOWsR+Y8mMxETnlYLPPn5urGhuAEMktOktHCPx5YgRqR1gCeM19NMIl
	 sr8/40IrrT2Bg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LbmXHvq5RNdT; Fri, 30 Sep 2022 15:08:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2CBEF842AE;
	Fri, 30 Sep 2022 15:08:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2CBEF842AE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 01DB31BF2F7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Sep 2022 15:07:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CB46D610D4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Sep 2022 15:07:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB46D610D4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BIU0uLrPb1R3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Sep 2022 15:07:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B568960B4C
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B568960B4C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Sep 2022 15:07:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="303121533"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="303121533"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 08:07:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="797990516"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="797990516"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 30 Sep 2022 08:07:56 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 30 Sep 2022 08:07:56 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 30 Sep 2022 08:07:56 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 30 Sep 2022 08:07:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JcP34dvdat2VdM2ALkmqKcBoxEwUR67x/hfCdeF40ep2VcghXaZ2ag4OEuFx6CwH6kI7XRrdETc6GIcdNPVvU4gHQqh8AaJ7QrMh2pGdRYy9FslCQoNvKwrbPWamEOSBoZOGLLLPjnTmZsBPr2S0s6Lhxxw7vVPxmL2/zz93Tp563AUm+opXY/MAtW0SWjSJSITYz2lNPkg6wDdu9WPRcp7HuLZX0/kz7gK+4tHUmTodv75+mecvwB6qgOMXMyzHLLbU/df+GbMid1gKwHA42oLCZJ5o3A+9s5hg8qpIZPljhEYn2Grmy4On55OUroBqldymuFx38nd0EkO8kILWoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=90ytCqLvaJTmjHpj/ENNs324jS/PpjBmTVS0/4imoNY=;
 b=hhI801fxL5aDGGxZXedv8egvoZGfNvEnaqVUbfGFY6vE5DBF42FpFiV1YOdhiUoTsj294+gyDfbsuocmoEGtKW4k/ZM7e0pEWysr1aPv8s1EQjYdYpoT2UL1t5bX6oD2VkujOtBx7UBk1uzabE2bZWuYedOrCqIzcvf2fyXIZA9YUPcNALcOMwehmxr7yoYwc4mUFNxWuJcJqVrlSuqJUmV1Bc1fswaRaXAukbff8Ygg/FH+IHF7CA318g8F/CEAzMWVc+OQlCG9/taO0B6/BFEkq/9KHtPRpxTVh5AKTOw3VQx8hoKrtC0NULpDMRSZ9e7A0inU8qvbEnQFHm5ruQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DM6PR11MB4548.namprd11.prod.outlook.com (2603:10b6:5:2ad::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.23; Fri, 30 Sep
 2022 15:07:54 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::e1bf:5cad:6e0e:cd0c]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::e1bf:5cad:6e0e:cd0c%7]) with mapi id 15.20.5676.023; Fri, 30 Sep 2022
 15:07:54 +0000
Message-ID: <23d35fdb-6f99-466f-a557-ccb044579bd1@intel.com>
Date: Fri, 30 Sep 2022 08:07:51 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
To: Ivan Vecera <ivecera@redhat.com>
References: <20220913140206.64330-1-kamil.maziarz@intel.com>
 <20220929095307.2c60d651@p1.luc.cera.cz>
 <86313d0b-9d2c-289f-e13e-742cdeb45aa7@intel.com>
 <79bbcecd-0d6e-f8e1-3895-2dbf2f3903d9@intel.com>
 <20220930132133.4d312070@p1.luc.cera.cz>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220930132133.4d312070@p1.luc.cera.cz>
X-ClientProxiedBy: SJ0PR03CA0057.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::32) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|DM6PR11MB4548:EE_
X-MS-Office365-Filtering-Correlation-Id: 80283665-215e-4b5f-d515-08daa2f58cae
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wSkf6HwTFNis5lAtp9lrpp+EeBrVeENegtu97c9WQtIG29Cyw9pBh727gCI4K5qZIeVihBHkqsrBRhY68JHf7MaVlD2tzRQWHt/hgluj6LDIR1A7UHRvZ2vRN+cYJXwz+3fql4hdanfKs37le3sCuvMZkrc2S6uzAP77aKHkZMMW1oFb+uRqezWQEqceYiX4oPoHHi4EYdhy3lnbI7SXktlwxLWoLn5/o54wKy34VEpBOS44lMuv57vfEuCZyV7X6C5wUSW6w/vPgTLjCXeQRfJ1f3y86/UDNQGlTDZgvwmacWFD9Y0HMJpn3e6Di5Yy9WipE5WGMiXSikDibgBVLR0XyVtITylaQBZr4NfxZZm67x/QM8h7S+2jdc69GGgazDOb8sVhi5mPjCwq2egLO9oD2rVxGnKpxlQRI5rM4aJi6oC8Xz1ytCY9QU8D4zIJq0JX8+rcIstRnBGcHAK3sOn1xFZJBuOJox6cZHpcf9iqpZyMhS204tbKJQjfiP72khl+HN9nhtOKSF622sLbssN/j0objNb7CVlfQWcLk1kZfu1jY4hXVFQtlUAKvf3TSgDhLN+Hn4Ui1KvXE3ULpMYmkYncAqx7xx+g/xtFBSAGv/jgTdhWT1TeYkDqFm2ElWRSHUtlFAsQKDhb/MA6ed929NPw8LjevOLY3spkAB75vZr6DjR1wU1KFYsUGbhjUfXVc2Jsg9rn5ptuCcsNMQZZe4k7uygd2s1BZ65BYVUMthNKpe1Pqt1H7+x8kcTcCUdFUWcTsnKoi4FtK89T5ZXv9Rs963CRwEWWBZPbgRt7hhjRh6SnvRJ8pFgKsJyw1on6AnofL4TShySiG0/CRuzFZLxxrvMaU/TZntju8cc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(136003)(376002)(396003)(346002)(39860400002)(451199015)(66946007)(2906002)(6666004)(38100700002)(82960400001)(8676002)(66476007)(66556008)(4326008)(41300700001)(36756003)(6486002)(966005)(6512007)(478600001)(6506007)(53546011)(26005)(107886003)(316002)(54906003)(6916009)(186003)(2616005)(31696002)(86362001)(8936002)(31686004)(5660300002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SStRRnBUTXY0V2tISzRsdzlidVNEMmZiMEg3a3hnNTR6Vi83ZERtcUJIWGZs?=
 =?utf-8?B?SVVWNUxFUU9CUmUvQU1pRmRET2FoV0RqUFdPYVdMNi9IMC9SNDZMcmNCN3c0?=
 =?utf-8?B?ck16VHlpb2I0c3l3NDU2dlBaNitiWnlZSVdSRmpYdUVrZ0lKNHk2TVlOZHhZ?=
 =?utf-8?B?UU5rdWNmMmZsNC9pVkN6WjNtdnhtWVQzc2I5eGtHODBHUHBsWGlFTkphYnNO?=
 =?utf-8?B?azY2VEh3V01qODJmOFp1KzhnQnY2RW1pNmtuS0lGUlY1VzJ2TEUwQXovS2J2?=
 =?utf-8?B?Rjd3SDFmREw1emtzOUFueG1JdE1ublk4a1hpb1RQc1czRDY1S0hUbk5aUlNs?=
 =?utf-8?B?enFjRU5VUHJtdHBjV09Rc29yeE8wWndCSkdhUy9TT1hocXJLWkZZamFpbHcy?=
 =?utf-8?B?aFRlbDJNZDlqWmVqVnl2VGIrckJvYjg1dmhscVFsckZCRFRCNFVBa3Y4YmRz?=
 =?utf-8?B?cXNPeGVVbzFRMHVaRWh6L2ZlNExFdW1DZnpJSDZLUWN2Ym1CZXgrc3BtcXUr?=
 =?utf-8?B?WEdoYmw4V1JVbW5QUkFnSUR5Y1JuNGljSGdENVB0VEF6czBnQ0V5NlNSdTN6?=
 =?utf-8?B?N1RvYXgzUThqMmVSbjgzUFZ4OE9UZlJxL3hXeGIzbkpYVkp3UmZUeVI4bk03?=
 =?utf-8?B?bDg5dnhVR1YxU2pUNDVGL3JzcDVweTJYWnRrS3dYM21CNmhLdzNiT0VsNEky?=
 =?utf-8?B?blB5WExkOUZkcXZ1ak1NZ1dTcEdiL1hlNnljUUtHRUpxQUt5MjZqdmlTQ0t2?=
 =?utf-8?B?YWtLdXViTXNHMHR6ODdmek82dmk1RFd0a29SZVBRb1FuVEExSWkwT0doQjkx?=
 =?utf-8?B?UXB1MEpPUGpiVVd4UzlRZmVDc1hOaloyRjNjS3lncktuUXlONFJ4TWtWYW5E?=
 =?utf-8?B?cGxmbXZXYVZueUVQbWUySEpqZU56Z0tzcXBxOVl3MzJmc2xjcFNqTTNIdHIz?=
 =?utf-8?B?engzKzBOaFNnZ1dPeWVTTkI1Qi95b0Q3RGdidUhwNXozdTVDQ2VlQmhPNnVP?=
 =?utf-8?B?cndScGZPMy9WV2NXTXRrS3Z5T0xGOWxtTlFYSVNKMXo2TmUyRTNnWU9NdzQ0?=
 =?utf-8?B?VndtbW5IVlZNM1hGZGhNeDQ3Q1cwVmJGbysrcnF6NFZVNWdrOWsyanI3Nk84?=
 =?utf-8?B?bExYS0IwdEZNUGNNbEREL1V2U1g2ZWhOQ0RjeEFWaDdhS2tRS3I2VXJFczBa?=
 =?utf-8?B?RzNiMmErZ2hSOWU5b0lwRmdXdFNtNXgwaGtIQkg1SnhVNEpOOStMKzBiQUk3?=
 =?utf-8?B?dTZVOVhnRzdxeitiNGRPMW40QlF4cURrUGttY2VkK3BnV09zajNuaUZkcFNI?=
 =?utf-8?B?OXpMcGV3Qk1kekJqL01DT0oxdXRNV1BUSjFBeXBLcHpBektyUDdDYzRaUjFa?=
 =?utf-8?B?b1lSZFNMVmxGbXlUM3RGcnJPUE5kZFEvTVVqYUhZUXMxZkZLZG5DTFRkcDBX?=
 =?utf-8?B?N0kwT3pucWQvZnpKUDlndWdBRS9zU2lsV3hWanE1NVpvSHlPKzlmMkVwTDFG?=
 =?utf-8?B?YklRUDAvRzlsaUlpeHRyQVlwaTdIUXJmVUVjUVduOGZtaGtBN0xRbGZhOTZW?=
 =?utf-8?B?RUxDeUZYMmpCandMVXRtc3d6TjZTbUhoMHdKREFhMjVrbWwyaTg3Uk9IN09X?=
 =?utf-8?B?UGVXcEJoY1ZSYkN2RFFFZ1ByOHdKT0dWRjBiTDgzRitZZ28xbGQ5c0g3aTdu?=
 =?utf-8?B?RU5UYU1obWxZNHlsMWM1WDl3SFpWaWVTSzhrdTNkNy9QVEFObm8wY3ZudzJ6?=
 =?utf-8?B?MG1vVkFZMk1Tb2lxTGxFaVlHTm9lbUhiVExRZFR1T3FOZVhrWk9Od3M0VStM?=
 =?utf-8?B?U0ZHYUFCUVFJL3UzeFNVS0w1YUdSWTRnQytuZzZKL2d2QmJvUm9Fak9SaXFQ?=
 =?utf-8?B?VzU2Ky9QbjlRc0dOeGUxWVFleE53eFBWRnFidVU2c3Ftb2o5MFpDKzlGbHYz?=
 =?utf-8?B?dGFNc3ZGYnNFWk5zT2lJM0tEM3V6NzdBKzhJVEJNMnpQSzgxTHJkd0lnanhI?=
 =?utf-8?B?akdLZGExZUhDakFocEF4aGk4V0RIS0NlZWs5Vy9yeDJ1TkZYVDYvdDFFcUpp?=
 =?utf-8?B?RFFTZy9BNHExcGFiVzE3UndkeHQrUUlnODRPRmVIQUtDMG9sYUk0ZDh3T1Nt?=
 =?utf-8?B?RGdGcmhBaVljVHlpNHhUcjdxa3hXMkdRVWNsRTh1YjBoRmdKTjc1K002OWZi?=
 =?utf-8?B?L1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 80283665-215e-4b5f-d515-08daa2f58cae
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Sep 2022 15:07:53.9176 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7T0jZvrQk+PGMfeO5hHzVdMFHzsCvGO8yeMGYccAdFQGDA/UBkTRgfFhcJZA6yMS4wUULV1lr+cpaSovQkn0vwpcHJUk69zcbcLMXvXJLiU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4548
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664550477; x=1696086477;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gGo1evOA2YMPo/Q+eFxvmsdLk/pik2B30VYGJByLfsQ=;
 b=axzbJET5iJ7Td971UU3MKw0uXSnWF2LtPZk9yBAB5cvQneuxz0VbC+7K
 cJymNIYWD1dZ14o/ABjtdYdhm9TAXu5ETdaVWCp8Z47BxyCn9b3F50aaO
 FUqS5xBL2I1OzdDLxd09EOlOU53G4Hubpw9O53BsjCtUXw+ZoKzBLxOu7
 KUBwTitRcYsk/Xm9IJdcREnk/MF3ONc/u8A5P0WElWUTfFLfN8g0Q2EVd
 Ha/GxlN5tlW9HcJcBhPhjHqHYWFcXwNzmANnJjcYM28vEU5DlUh/efNzk
 KMsF6FrkV4we2UYYFBHDOYiFW6at1+gWrFkECjX9VwixdIlqSqNzbp3se
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=axzbJET5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Fix not setting xps_cpus
 after reset
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
Cc: Michal Jaron <michalx.jaron@intel.com>,
 Kamil Maziarz <kamil.maziarz@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/30/2022 4:21 AM, Ivan Vecera wrote:
> On Thu, 29 Sep 2022 08:54:39 -0700
> Tony Nguyen <anthony.l.nguyen@intel.com> wrote:
> 
>> On 9/29/2022 8:47 AM, Tony Nguyen wrote:
>>> I'm not sure exactly where you are referring to when you say upstream,
>>> but it is still currently on the IWL trees [1].
>>
>> ...
>>
>>> [1]
>>> https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git/commit/?h=dev-queue&id=e312239075d77f11b45c3997a4e89153393c259d
>>
>> Sorry, gave the wrong link/commit. Should be:
>> https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git/commit/?h=dev-queue&id=aea4f7bb6c656b852771747538ca264b72967055
> 
> Hmm, ok... it is now in next repo... I'm a little bit confused why the patch with Fixes: tag is present in next-queue repo.
> This is not a -next material or is it?

For net patches, they are applied to both trees to help minimize 
conflicts when they get rebased into next. Here's the net link of it 
[1], I just used the -next link as it's what I had handy.

Thanks,
Tony


[1] 
https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git/commit/?h=dev-queue&id=7670a1167933ca825bbe4d3614b6936e1a6f7c19
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
