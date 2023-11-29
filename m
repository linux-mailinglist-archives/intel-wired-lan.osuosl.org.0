Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7028B7FD54D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Nov 2023 12:16:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EF954401F3;
	Wed, 29 Nov 2023 11:16:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EF954401F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701256595;
	bh=5IHYS1jpn8vta9TQAAYW9qaPx7oNm5TkjwCA8ubailo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7gqrPHTGaRClszfZ2Gg2tWYM6qmnLqWO5QnDgBntQT5UwURSmf2Hga4TMdF3kYvE4
	 FUbaRCXBo8lPVWVpeQ4QeKDiap5eSIMoQvUbdlUZyP1h/EK4eJhwbOFBCVhzLW2YOP
	 +Sg+orpxfH1kuilcfQ+tPCGjPLJ485kpdU2GEQELWtl8J6BhD0pY52RFUndjnVTfLj
	 HGEoP/+xg5CkhpF8GuGfSVkPq5cio8//aEjqabs7Ax6YUIOnLHSZJtpSPdGImQgoZk
	 Oe3UOe6kAesjipzRgjURwBpz8ASyLOQPJPK9uAQZGk8zsnXU23NlGnzU5XCJCaKwq2
	 kgaO0NYqzM5wA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9Uh8rdF-axNa; Wed, 29 Nov 2023 11:16:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4E1D6401AE;
	Wed, 29 Nov 2023 11:16:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4E1D6401AE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C224D1BF4E7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 11:16:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A5F0881E99
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 11:16:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A5F0881E99
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w919oiXzc4MC for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Nov 2023 11:16:26 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6C53181E83
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 11:16:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6C53181E83
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="14706662"
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; d="scan'208";a="14706662"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 03:16:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="859786594"
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; d="scan'208";a="859786594"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Nov 2023 03:15:53 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 29 Nov 2023 03:15:52 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 29 Nov 2023 03:15:52 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 29 Nov 2023 03:15:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i03IbcF02k2PJCJZjqHNcn/O58UocWCp9CBOw8wDYTLBJIw8pIKiG2ajEenOo48ip6tEVXz3Oo59rq7Xrmdobry2hPvRJIs4F69W9V7/6ohK8UQaHi769nEuVbj+F7DKgzMQe8MtczeZ4Zms/LtKicHT4nrmygB2j/a9HFXBjw0/brhDf5OInVbeFdehgVHBR+/ZMZ7+0iLBHRmI4Exd3CTsx9Lz95pGs2Kp2A8/NqwJVcaYO5wrGeDslHpHyQzjKK9KvG7D4LWy3xfJQpesUj++GxdAdPptCB7LSEZZOryQx0Xb4pKvjjCWrg60W8Ayvuq57G0MXiYBa1YstX6sMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sznrUTlwOfnKlJVcSFBFxEloFEoaU1CuMy214OPVGKk=;
 b=DFxGcZK95R3RZAzjQGhLZxpOC2VEyoXUH8Vt33tCd/RSOwyc3vkMDxcgy7rrutZExgYOrNb8X6efBH2XsbsdynM3qkgmGxh75ja0XR6OI383IRqiSRdEOtE17XoFIhkeHLuLEhBcJdybRdXLRkSl9gMsaSct9bYRrLqT4zPkPedWKDupxdz7323eUALqnM/HwZ2lZfxPqMYGxUUHLQ9/cGI6PfekhlsQmaKLrGb5j1UzoFeEkRLHqeTdYeoJdbYt/zzfq3n9nYiNsYPqNOct2rtCD3LYO1AvU+0O3NUCaf/NXPLZ8VcfLUSKkIce/LDjLbSQyJR9oDquTWY7GylcqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by CY5PR11MB6487.namprd11.prod.outlook.com (2603:10b6:930:31::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.29; Wed, 29 Nov
 2023 11:15:49 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5112:5e76:3f72:38f7]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5112:5e76:3f72:38f7%5]) with mapi id 15.20.7025.022; Wed, 29 Nov 2023
 11:15:49 +0000
Message-ID: <45d5412b-d186-eda3-8bbc-6e80d1dfe450@intel.com>
Date: Wed, 29 Nov 2023 12:15:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Jacob Keller <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
References: <20231128194215.3318925-1-jacob.e.keller@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20231128194215.3318925-1-jacob.e.keller@intel.com>
X-ClientProxiedBy: FR2P281CA0109.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9c::8) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|CY5PR11MB6487:EE_
X-MS-Office365-Filtering-Correlation-Id: d3ddddf8-8463-496c-cdab-08dbf0cc8a88
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 51Y6aC8yLHcTbJyD5cQAtS7FBcp1o/6lgJvF51qrmZO2so+leWcuIDRXS4e6zEObKsg09DJXu2yH2AfKIa3j1dzhoPP3nh2YYVr3JA/oTSnbE/pOMPHxr7OIhx+eY+dms0cBeZeKNLDflbg2CG+Q7qk9cWNRD6KTNNV5x48RPqqMPKsJ3iRoYEv37V6R0C2zrsOmn4msfIYY6txWij9YdrC9ptboV3kiM/iqLTAJveEUR/dv7XPfw18+RO0d5rd2EqnBQ8kmfkoYME70Tz1tOvTEpgoLVdDcsfOi7QZ2fYytaaZYDbEmUKFdSIuzTuPRxVWJR4iwmL3h5RCe+wCGO8ckXHElKHU6lXgsAL2N9051H5HlxV2n+VshDo9NRAKm/AwkkvaCLtez+AfPiyvugQdzi4KR1N+L3ZQrXEyuI/Az2qkfvp586p1Sw8AzD118YradY54usQCrNL62Ubw3bfA5TgPtfA7hZbdAozxwoVW33WZkILSHf40IDNFwd4ZxLzikQTXZWjQR0wkgZlGfWqrx+Ky5rKx4GDZ9TdZjYn0diJq9AZjrDKnK3WJcBU/RWlhjJNl/x9kEPVcjmMIvgUB1a9uLzgdWjdcoO05JWeZVei0LG+IFXBG+UuLBtxFko2HeJfElPZhW2FqBdxouWLymAasX5/jAicRo/ouSdv4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(376002)(346002)(136003)(366004)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(8676002)(5660300002)(31686004)(4326008)(2906002)(8936002)(110136005)(316002)(54906003)(66476007)(66946007)(66556008)(53546011)(6512007)(6666004)(478600001)(6486002)(41300700001)(966005)(6506007)(2616005)(26005)(83380400001)(38100700002)(86362001)(31696002)(82960400001)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VnRCREtUWi96bmpGU3hEcy9UYkJOcVh0UkR1SWcxR1MySHpVSE5tSzBDQzFO?=
 =?utf-8?B?cmUzL2pLSDhzQ2VzT0VlWjRZV1dxVzdpTVBBMGFIdndpSlBsdW5kazlQUzBQ?=
 =?utf-8?B?WjljVVZTTmtOZ2xKaXBlTTBtMU9oRDc3QTU0Zkt0K01vVGNaVUZYajFXekpl?=
 =?utf-8?B?Q1l4TGJYRTJOeG1jZ2hwcUp2L3ZQNFlERUF2SUsxZHZqdXFMZzlsdm1DK3BY?=
 =?utf-8?B?N2dOeVAzYW03djNhMWp2LzJaTk5XOVJMYS9mb3RwKzZvUy83Y0F4Q0lBeGpJ?=
 =?utf-8?B?bFNkYjVQOGFiYTlwREgwMkt4VWE1dit0azhKRlk3Q1FtZkxpdEh4MUFuOFEw?=
 =?utf-8?B?M0tXSXMxYkpXK0xZTHkraEs3YUs0dm1DK1RYNCtUUUVSbm1FQ0RCN0psK25p?=
 =?utf-8?B?NmF5R09XaklrTU9aYXVBVEQ4VkJ4VSsrZ1ZCRzB1S2V4V2ZLSGl0Z3orTkoz?=
 =?utf-8?B?MkNLcmNpN2o2bkhQajkrRlJxenhrN1ZEd3h5Q29XTDZlbzcyWGFCVGlsQ0Mw?=
 =?utf-8?B?YUxHSlBCa016TG1QTXNJMTQvUE1IVWFGSXBzT2VqRWpoY08zMkpJMFNjaHcx?=
 =?utf-8?B?aEhDNmtybzFvTTIrYjNzSDBHWit4eXYvbU93WWdpS1dha1U1RnlYc0RsZjdC?=
 =?utf-8?B?THVYNmM3K25nWEV6NTY0M1g5K1l1MU9EbENhYmF4SFRYcm5ncjkrbWpydXlQ?=
 =?utf-8?B?RkE5OWlFblpFUFJlYURhblhhM1l6ZHRlS3pDQWQ0a0lyOGtNMjIxbkFmUlBy?=
 =?utf-8?B?QXVIbG1EQjBMOWdkVnZBNy9OMUd2M1hSb1EwVDE3b01vN3YyU1lqZkNlMUVX?=
 =?utf-8?B?NWlGZ0lvUTB0ZU5vNkZ2b2RHaFE3RGJtRklRL3ZLNVVBNWc5SlBkZDA1NFlT?=
 =?utf-8?B?NHMwdndVa0c2eFNRVDdYWEVqektSNWdTNWRaYU1ScGdkenpRT3Zrcmg5L0ww?=
 =?utf-8?B?VlBFSkFVVzR0ak42Tk1FU1k1NjB6NmhMdWM1dDNkc1dLZklYVDFqeVNWYkNn?=
 =?utf-8?B?VGg5RTQ2Wkt0R296dWxORFdpWHg2M3RFdU1HN1RXelN3TjZBQXZLRjh4NzM5?=
 =?utf-8?B?WW9mVm5leUxFYWFKdG4xeC9XZkJYYW15a0tDM1czK2FDOUp4TENVQldXRzdY?=
 =?utf-8?B?K25Nd3J4QUVXRHFGVUNacGZERUJ2VFczVnJ0NTFEUmxNemZNSW9Tb0RNVUhk?=
 =?utf-8?B?MWZNRG8yaFppb0FZc09SQ2V2b0F2TjFEQUZnWDV5a1poUnpTNVpvMk5LMW11?=
 =?utf-8?B?WVVqZVlqMldIa1p1VlhTVnlOTUtqaHRlTUtVc1kyLzN2L1V1SjF0YnppQk1Z?=
 =?utf-8?B?R3BTSDlhN08rQS9nV0EzOHcvdHR4RC96NEhhSVg3TzZwZ1o0NkZLWDk3bzVr?=
 =?utf-8?B?V0dXQ0YrNzR0VXdOZVlySzZtY1V4SUpTcDYwbmI0TzlRbk1ZTXRHQUdDK3o1?=
 =?utf-8?B?emVCTVZOenVXRXVpZUlzYStuN1BCckRCcmtNOFIyODArUklhQW9QZUJJckU4?=
 =?utf-8?B?TkR6dUk3SWpxK2FhTTdWRnRhQUlyY1A5MmZGRzFTTjFxMEFES2dFWjNBVDM2?=
 =?utf-8?B?STRjOFBjU0MzTERoNWdwN0pUWUcxMGJZbFFPbm9sMjJQWC9oWFZHSVFCVy9l?=
 =?utf-8?B?QlM4eUk3UXpBcEpIKzlNRkdkY3llN09yUFJLSmRLZVo3L2lqZDIrRlF2YWhQ?=
 =?utf-8?B?aW8yM1RFamwvVVNZNnlqRWZhaU1QR1RMcVVpWktUNmZmWi81djEzeXpjUXg4?=
 =?utf-8?B?V1lsM2t2cXQ5enJLME5jejZweEVzQUNZSmU2ZnZuM0pYejZOR2g5alR3Nm9w?=
 =?utf-8?B?aUxRR3ZIcnhFN2dNTWhmNmFBVjYzVk1QTTQ5Q1B2dnpGTjFLbDZkZU9GK3Fs?=
 =?utf-8?B?aE5UOTZvNXp5cWJBTUFjOExhVVJFQzB5K0xZVCtiN25lNUJpcjRLQ1lmS1pW?=
 =?utf-8?B?MXVCM0d2dDd6RHRTTUVCL1l6RVVEZHJhMGtSVWtqY1ZiakVYb1gvTjBmMVlt?=
 =?utf-8?B?YVl0Rnd1aUhOMU5CTWhiRk4zNUI4ci96MkwvV3prZGQxTDR2MzVDUVFIOGhK?=
 =?utf-8?B?eXF0L1FrM2c4UFF1VmJId3lHa2RoK1c3L29Fenh4eGZoclB3YzhCeitLdDA4?=
 =?utf-8?B?WGtyV0crdXpxM1RwNGZCTEVHVmxXYnJydW56MytHWFdnQ3QxdlBHUDE1dU9o?=
 =?utf-8?Q?LGaVwZ6iElODNSdkWJpQorQ=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d3ddddf8-8463-496c-cdab-08dbf0cc8a88
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2023 11:15:49.3614 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gCx72s57xaPFbtvpBZ+zgiKq/zwrtxwGVO6X6v2ZtElBYM+yPg7DHrser26Ld8FpjCPdkGyKjqFlf3VRnl5Q2zUpFr8SAr1W6NbeaYF8IxI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6487
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701256586; x=1732792586;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HFEe/IKbZNu4IYPnIj7g1oalGkEi1i2m4Kq3FgUpH3Q=;
 b=giKvZV/uwQxGVDde/xpIJiUI8E6lPCx2IIhW80JaS79K8r1iRfNy2L70
 AQUUMxpKmbgPQFjKZZuOmQiS8P6yUBIq4Wlt5WjO1UVbqe7EQ4dLMs2Ve
 Mk5nRQnoN7nCAb4Ax8MzwOGuHW0MG5jx9QhQSMYdcRet/iLtg2zYeDNf0
 1nWK3EssJyKVkiU4FaaiIFGjFZN7R4+Nv9/pEb9zFtFr6W2TM67hQV+ZK
 OOVUFm7zwHIBy2sLnaNeS0o1ljiOkZoPU4e7/gNstp8XBX3EVNlCEfKYz
 k7ScgnuUJQARApkvTIwZ7EWktNlwwanx+Et3iL0puJSQsaSxENlrU5V1s
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=giKvZV/u
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4] ice: replace
 ice_vf_recreate_vsi() with ice_vf_reconfig_vsi()
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
Cc: Jakub Buchocki <jakubx.buchocki@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Rafal Romanowski <rafal.romanowski@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/28/23 20:42, Jacob Keller wrote:
> The ice_vf_create_vsi() function and its VF ops helper introduced by commit
> a4c785e8162e ("ice: convert vf_ops .vsi_rebuild to .create_vsi") are used
> during an individual VF reset to re-create the VSI. This was done in order
> to ensure that the VSI gets properly reconfigured within the hardware.
> 
> This is somewhat heavy handed as we completely release the VSI memory and
> structure, and then create a new VSI. This can also potentially force a
> change of the VSI index as we will re-use the first open slot in the VSI
> array which may not be the same.
> 
> As part of implementing devlink reload, commit 6624e780a577 ("ice: split
> ice_vsi_setup into smaller functions") split VSI setup into smaller
> functions, introducing both ice_vsi_cfg() and ice_vsi_decfg() which can be
> used to configure or deconfigure an existing software VSI structure.
> 
> Rather than completely removing the VSI and adding a new one using the
> .create_vsi() VF operation, simply use ice_vsi_decfg() to remove the
> current configuration. Save the VSI type and then call ice_vsi_cfg() to
> reconfigure the VSI as the same type that it was before.
> 
> The existing reset logic assumes that all hardware filters will be removed,
> so also call ice_fltr_remove_all() before re-configuring the VSI.

[here]

> 
> This new operation does not re-create the VSI, so rename it to
> ice_vf_reconfig_vsi().
> 
> The new approach can safely share the exact same flow for both SR-IOV VFs
> as well as the Scalable IOV VFs being worked on. This uses less code and is
> a better abstraction over fully deleting the VSI and adding a new one.
> 
> Fixes: a4c785e8162e ("ice: convert vf_ops .vsi_rebuild to .create_vsi")

I see no such SHA in my tree.
Anyway, perhaps this patch could be targeted to -net?

> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> Changes since v3:
> * Removal of filters was a side effect of VSI being fully deleted by
>    firmware. Since we don't do that now, it was not happening. Fix this by
>    adding a call to ice_fltr_remove_all(). Thanks to Jakub Buchocki for

I could imagine giving credits also in the commit msg [here] :)

>    figuring out this solution.
> * Rebase on to current dev-queue.
> 
> v3 was posted at https://lore.kernel.org/intel-wired-lan/20230712222936.1048751-1-jacob.e.keller@intel.com/
> v2 was posted at https://lore.kernel.org/intel-wired-lan/20230712204730.326331-1-jacob.e.keller@intel.com/
> v1 was posted at https://lore.kernel.org/intel-wired-lan/20230504211829.3869868-1-jacob.e.keller@intel.com/
> 
> 
>   drivers/net/ethernet/intel/ice/ice_sriov.c    | 24 ++-----------
>   drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 35 +++++++++++++------
>   drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  1 -
>   .../ethernet/intel/ice/ice_vf_lib_private.h   |  1 +
>   4 files changed, 28 insertions(+), 33 deletions(-)
> 

code is fine, so:
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>


> base-commit: 0392e4d0c1cd583c079a18685cd308f8ce903793

that's good reason to ask for a re-test after long time, I agree!

My tree also does not have this SHA, you could likely base it on current 
"netdev/main"
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
