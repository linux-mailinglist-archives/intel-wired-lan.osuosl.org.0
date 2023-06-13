Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9211372E6BE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jun 2023 17:11:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F186D40997;
	Tue, 13 Jun 2023 15:11:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F186D40997
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686669083;
	bh=abnGQfUJQFfNbCcdxVe3+u026ZxA3j0MSyzosMlOAYo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xuvRfsNch6AzxdbZZDuQR3K05grrTtG9gWQkOhJIN/LAQSIJoKmJ4+h6MCImbz1XB
	 Kej1kB4gJuksm9+xIyS3d0oaKivFrBxisLFdhH9q61oxv7u6Da778ZruGut1pqZZmC
	 SF3/mCPbexinF6izfj3hajTcDob0M6lwgHnNJWk3S+eEuZ+J5GZvj1/yunpNq2Lemt
	 V+xOiKVXbm4tOPapnH3L2hZpEwWXIEdz87OTiJcHEO7N0PW7U2PMdy6UTF76ChvNfj
	 V4LY1idolUEQHeEevplkHgVYpW5fy5AXyztuL4wmu6gmqDr0Q9HK76QbGMF1cZA3id
	 8AGA0sFQQV/UQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZoMlIXHU655T; Tue, 13 Jun 2023 15:11:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0FACB40915;
	Tue, 13 Jun 2023 15:11:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0FACB40915
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0BE0D1BF34B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 15:11:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CE5424092F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 15:11:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CE5424092F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jV_YI03yrK-r for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jun 2023 15:11:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A55E440915
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A55E440915
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 15:11:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="355858774"
X-IronPort-AV: E=Sophos;i="6.00,240,1681196400"; d="scan'208";a="355858774"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 08:11:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="714845062"
X-IronPort-AV: E=Sophos;i="6.00,240,1681196400"; d="scan'208";a="714845062"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 13 Jun 2023 08:11:01 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 13 Jun 2023 08:11:01 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 13 Jun 2023 08:11:01 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 13 Jun 2023 08:11:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F/eUi5+3RXdCAwtxDf24WA+s1jqB1fd7I48EA6kXz/uvUP6/GP4T8kT08aw8ccOKdcFSlus9aVMIzVcec0XucEfkx9i/9hmpyTQSowRSWlkgKrqquVFqp2j6WSnm2aRSU38z6N8MlaMrEfT2VOISTGt1annTmFdUqr+MTiW+odyYApGEPRbmb4CCcUOJb9tot718mXtf5FwvsJMWEzojbUDoouT23vsKQ6vJf+RijCNZv/R0bixdPryAK1lnTwlmqQCPnq8u0yGH+j2Hti7+HikT8Uoib/Xs/FKzMTpwpdd2sGROD491mX2VaQXfE7M02XmhKmv8EfL8hnr9t3gY9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2qq0E3u+X0wLVqOc80IItaUhopBktSVSN5Cq6VQnTzg=;
 b=BJLHnrCU64A2K4TBqD9lupfqYGLLYGyEaRCVe5zeJWSP2jSrjFboNEg9+Z4NZ+C6pB8yjVQC6k5VcDcOQjwjJvKCtZScNPyZaHTkmty0rrnk6xm8j/4Vi4bu57RDx4Jt/epCyZPZjS2KTl5MYxwzoBnRcthGmUgdzetGNNqDJf5ewaXKv2kj0UEGyeN0FYCLNeOMZG1OBnKZIOgFRcmbFJZuEflasGkJ0Gq9rtKpOTyQUCE/F77W2fdPYVyYnSRRrQnCw8GgspMdsqreaZ370ogAUpASE+uMxKY6ko1j8s5ZHgLvJu/4Wse/TP5/Qy0odyQtJKXoaidkDtSPJQ2Dxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by SN7PR11MB7467.namprd11.prod.outlook.com (2603:10b6:806:34f::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.44; Tue, 13 Jun
 2023 15:10:58 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::87ad:6b1:f9f4:9299]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::87ad:6b1:f9f4:9299%4]) with mapi id 15.20.6455.030; Tue, 13 Jun 2023
 15:10:58 +0000
Message-ID: <c9f819da-61a6-ea8f-5e16-d9aad6634127@intel.com>
Date: Tue, 13 Jun 2023 17:10:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: Piotr Gardocki <piotrx.gardocki@intel.com>, <netdev@vger.kernel.org>
References: <20230613122420.855486-1-piotrx.gardocki@intel.com>
 <20230613122420.855486-4-piotrx.gardocki@intel.com>
 <4db2d627-782c-90c2-4826-76b9779149ce@intel.com>
In-Reply-To: <4db2d627-782c-90c2-4826-76b9779149ce@intel.com>
X-ClientProxiedBy: FR3P281CA0097.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a1::15) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|SN7PR11MB7467:EE_
X-MS-Office365-Filtering-Correlation-Id: 5dc5c2bc-94b8-4b50-6cd8-08db6c20648a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1LRgGixCTlWLKLxvn++tWLQeztjPpVRPOfXIAks8l3P/JKWSwfm8OO+Yaz+Lsx7CCgCxDha/YfyEwdjpaW6NIGcYY4jpiji7rroNxd/yCLWotEHxznKrQrf3wdd10ZASbItFKB919u+R8GJ3HZfV5O4dNljx/cewWigkN6CVSguP4tfGHGSL1btk5px/xwT2qDFNYlMRvKAZpciUJlsf7Ut/lPn4tNLo8csJtjemposc7+uTm5hSfppWMhDMso0cYTnn1CMT9OPCEQBIe0QUcYjDEa7ojKvhU/nyvG9Et/GFJ6980tusOvgqKRKRE8EUepKhFXgL567Qc46MVIGL4CwUKtLqySuK2b0jdGBRYa5B/RTYnM/C+RSTlN9xwSbp8ZoZBHQcczvp0C55VgXgn+JFwXdtvKU133pc5gX+sC9Eg0qOPTkqCM4kmxkJaTMAuM8sn8gGE/9UAf/SRk4nhh362h40TUVBPoPo3oKyq/RiEj1N0c8CdS9+CWE+AVkijIz223m37e8zDj/kSC2Vfaq2+7u97+GlAsrBVJFoBChxXcQmt1N+fLohVpH3M5Gefv4y/IcIybXChceZ5cG7uHes6YiIwzorNqkM97sxghnXWamCA/k5uh3JShMrZsw8JVODtreas4/InO5K7hck/w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(376002)(346002)(39860400002)(136003)(451199021)(31686004)(66556008)(66476007)(66946007)(6666004)(316002)(4326008)(478600001)(31696002)(36756003)(86362001)(26005)(53546011)(6512007)(6506007)(186003)(83380400001)(2906002)(41300700001)(5660300002)(8936002)(8676002)(6486002)(82960400001)(2616005)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QkFHcWJQNzVtc1RLRzUrem1wNWZHZDBDU2Y1OUVZcHhPc1IydWlOajVCNlY0?=
 =?utf-8?B?aEhEcGNGVDlTQWpMcHpORUJia3hLVGQ3eVFFcHVzQTJEdXhQaG1zMGRKR0Vz?=
 =?utf-8?B?OGw4L2YwV2hOdVNUVENRRHFqODhIdHFhdWp4TDdVZXBGTU85aU5ZaitYN0JL?=
 =?utf-8?B?S09vRGZZczFQRjRpK05kUm50cGxvZ2hhNUV0SHpuUXhMa3NtRmQ3ZFBsNEV5?=
 =?utf-8?B?Wm05K0VQWGxZVjUwZG5KQlZpbnBoVkhUbGNTczRhVS9nSVZTelNZS01BQ2tv?=
 =?utf-8?B?S0xMNGlPSUZrZ1YrRXkxdjdFMER5NnVFK2hQZHdVNHdCMkRGQm00bHNZcWNM?=
 =?utf-8?B?Q01TM0FyaEdyaXl3OUtUMjBxNkR6M3JESWlCK0NBbW9NK0FhWGFhM2hub2t1?=
 =?utf-8?B?TmNHcXFGWDdqb3c5QzZZMUo5OUNHczlrcEd0SmNaRWNQNUxudTVZY0UzYmpI?=
 =?utf-8?B?YTl5RzNhMU1SdTdhbFMvMDVHTHRlcTFkRnpjR0ljWG54Zmh6K2NyVG5qQVAx?=
 =?utf-8?B?NEw3bzMvbVBQejJlK1ovaE1DWGkxV0RXemcxZUJUZXBUYmRRNWxwdXhkVVBh?=
 =?utf-8?B?Ym50bC9IVzdzNHRwS1NYWGluQlFPTEtEblc4OGlSUk1GSzBoUXMyY1F5UFhO?=
 =?utf-8?B?RGcvbXJXMmZ2RkFXbHd6NFdQaEs2TlNlYmQ4V0lEU2p6NU5OWUsrSTNwVDVs?=
 =?utf-8?B?bWVDVkpEZlFyOEFwbDhZUktBK2FvUlZheGVKNVJzMm83SThnbm5kemNZbCtM?=
 =?utf-8?B?bTZmTC9GODZUK1U4MFFmUkhFRnMyMnBoSXQ3T2l5VFBvdUFJWEh1NWhjVXZ4?=
 =?utf-8?B?eEFMWVc2MEk5VlVzTGc4OE5DZnFnUnMwSlBkSnoyb2xmRDAyZUdOVEZBRWdO?=
 =?utf-8?B?MzduU3Vob0EzOUZ0MzM1dUh0cUl2alAzOGcxcDlEejhmVjVYUEtZc1plWEZN?=
 =?utf-8?B?Skl4b3IyS1RFU2t5WjFOVWJpUnpQR3BFeGlabTE0dVcybHBKRzg2YVlobEdQ?=
 =?utf-8?B?YkgxVThFdGRIdW53d0RScUtnb1BMVmZQS1J6MGh2M08vRVVuSXlmbDlnR1dV?=
 =?utf-8?B?a0VGNTNtZXZRb0x1THozeHFGelNMemIyWk9wdUczaHZHUkxlc1ZHU0N1SmMz?=
 =?utf-8?B?UTA0MVgyc0lZckxZeGY5OWdPT2QvdStzeW05YnUrMWVjRUc5aUJ3cFAvbzQ5?=
 =?utf-8?B?aFd3NTVpczRweTl0VjEwQzRwQzQvU1dwVGZjbVlWYnBTb0hVbjNLU3NyMlQx?=
 =?utf-8?B?Nkl1V1VVdDd2azNYaEJTUklwMDR4YUJWVXpRZGF1cFZONHlEeEdSdjFVak5h?=
 =?utf-8?B?WTdWVFRBQndWaFl5M0loWEllQUkrZG9pOElKU3NZclJMNG8zSStHK3BPMkIx?=
 =?utf-8?B?aWsxV3o0SGJsTzU2VGZ2ZDVpVEFPZVVibGRFTXl5Rk4wVlR5a1MxMytBbzMz?=
 =?utf-8?B?blBCTWhvRHg1YXVxWlA3RFpHejRYZzRuc2NXTVl5ZE1Da0hxK21JQTdDKzhs?=
 =?utf-8?B?dnN0Mkg2emxnN0FXUHh3ejRCTjFpa1dBVWwxKzNCejAwaG96VXArVS9zZUFj?=
 =?utf-8?B?UTZvV2hNd2J1NFJuV0M5TmNYN1FBbnFtOUdEYm9YZ0RmM2Y3elFicHh1Um40?=
 =?utf-8?B?NUlRVmVuaUVlb3NNTWdNZW5EVm5JQWJoU2pibGI0K1FxUC9ubUxxSlhEbEFT?=
 =?utf-8?B?ZWIrR0RYUERPaG04d0gvSmdEMFBmNjFVRmNGSWFXS3ZqYTlrRmtYK1R6ek1n?=
 =?utf-8?B?ZXhmQkZOZ0lwV1ppVEZmSkF5TTlBVmdCTnFxK00vSWZyeGVuakNrS2owK2Yz?=
 =?utf-8?B?MGpZcGJpZzhxOXREQXdPSmRSOW9kaXZKb0VXTGpxSFE5Nmt2L2lyWHZjektW?=
 =?utf-8?B?T2VJa0lkZ0ZXc0hKaVBqaUxhUVd4RlJ5b0p2UC9YSU9XdXV0R2R6RUljM2h6?=
 =?utf-8?B?ajl3aGlJZk9wbTk4SEJiVEFqcVpCWmNNVUdLMkFEcllBOGx1NmthQzZDSlVW?=
 =?utf-8?B?TkdmYTNLY01pSVI1bjhDRXF2VFlJK29LcEhVZm9ScHc0djNsd2FiVVJ0blg0?=
 =?utf-8?B?aGFDU0NReVRiTFZIai9vMnpHeU1pdllYb3ZqbEZZcWtzU0hXanZGb0dDZUFz?=
 =?utf-8?B?SVJxaWFVUURMWTg5UzRWaU9TMUtHM3B3Rm51REJCUnVrakJFem8wS0R4TDRI?=
 =?utf-8?B?R2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5dc5c2bc-94b8-4b50-6cd8-08db6c20648a
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2023 15:10:58.7494 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tL4QWQyTlWcQSx17JQPTfxXg2f5M1vSam6UXqikAe5f36/+BXNd4XVYe9mpFa4FSMOjuNLacbvBcuhZK3GESlVx8P6d4u6soOB8PhQzjlOU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7467
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686669073; x=1718205073;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Xb3WrClx+LvV1C9+GlPQuX/hFErIpBka/krxrnGq1gc=;
 b=kufbiN3X+FLu/BHiUC7p3x2Iz2b0c/b32kZwd0PSH5oUloEdS9mQzwmh
 2ixlTGaZg6lBXWk/uCN0yZRHJgd8Y3VvSqaIVNJV/BwxPDYE8g2IcQRuH
 hsxxzSV/NxfY6bJbau92oNHKVleSOBl1+muK0u5dfraBDNYAv4j+RN83M
 DHNpOT+HkofjdWeImMxyn10dVMPExi+ubK61t+7feWdrK1J6W2uuQHy7K
 AoLycygTaOOqw3Ogd5o91kZWrQpu9G30dYH/yBZ7FbjHUv41ehRX4t8cy
 qrpR5k3akOrXuVBklGRtqlEpskTuIiSRBP/rGahJqwt6/XScOanZlwp2f
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kufbiN3X
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 3/3] ice: remove
 unnecessary check for old MAC == new MAC
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
Cc: pmenzel@molgen.mpg.de, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, kuba@kernel.org, simon.horman@corigine.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNi8xMy8yMyAxNjowMiwgUHJ6ZW1layBLaXRzemVsIHdyb3RlOgo+IE9uIDYvMTMvMjMgMTQ6
MjQsIFBpb3RyIEdhcmRvY2tpIHdyb3RlOgo+PiBUaGUgY2hlY2sgaGFzIGJlZW4gbW92ZWQgdG8g
Y29yZS4gVGhlIG5kb19zZXRfbWFjX2FkZHJlc3MgY2FsbGJhY2sKPj4gaXMgbm90IGJlaW5nIGNh
bGxlZCB3aXRoIG5ldyBNQUMgYWRkcmVzcyBlcXVhbCB0byB0aGUgb2xkIG9uZSBhbnltb3JlLgo+
Pgo+PiBTaWduZWQtb2ZmLWJ5OiBQaW90ciBHYXJkb2NraSA8cGlvdHJ4LmdhcmRvY2tpQGludGVs
LmNvbT4KPj4gLS0tCj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFp
bi5jIHwgNSAtLS0tLQoKWy4uLl0KPiAKPiBJIHdvdWxkIGV4cGVjdCBvbmUgcGF0Y2ggdGhhdCBh
ZGRzIGNoZWNrIGluIHRoZSBjb3JlLCB0aGVuIG9uZSBwYXRjaCAKPiB0aGF0IHJlbW92ZXMgaXQg
aW4gYWxsLCBpbmNsIG5vbi1pbnRlbCwgZHJpdmVyczsgd2l0aCBDQyB0byB0aGVpciAKPiByZXNw
ZWN0aXZlIG1haW50YWluZXJzIChsaWtlIFRvbnkgZm9yIGludGVsLCAuL3NjcmlwdHMvZ2V0X21h
aW50YWluZXIucGwgCj4gd2lsbCBoZWxwKQoKSSBoYXZlIGNoZWNrZWQsIGl0J3MgYWxtb3N0IDIw
MCBoYW5kbGVycywgd2hpY2ggYW1vdW50cyB0byBvdmVyIDM1MDAgCmxpbmVzIG9mIGNvZGUgKHNo
b3J0LWN1dHRpbmcgYW5hbHlzaXMgb24gZXRoX2h3X2FkZHJfc2V0KCkpLCB3aGF0IApwcm9iYWJs
eSBjb3VsZCB3YXJyYW50IG1vcmUgdGhhbiBvbmUgcGF0Y2gvcGVyc29uIHRvIHNwcmVhZCB0aGUg
d29yawoKYW55Ym9keSB3aWxsaW5nIHRvIHNlZSB0aGUgYWJvdmUgY29kZS10by1sb29rLWF0LCBv
ciB3YW50cyB0byByZS1ydW4gaXQgCmZvciB0aGVpciBkaXJlY3Rvcnkgb2YgaW50ZXJlc3RzLCBo
ZXJlIGlzIGRpcnR5IGJhc2ggc2NyaXB0ICh3aGljaCBqdXN0IAphcHByb3hpbWF0ZXMgd2hhdCdz
IHRvIGJlIGRvbmUsIGJ1dCByYXRoZXIgY2xvc2VseSB0byByZWFsaXR5KToKCiAgZ3JlcCAtSW5y
RSAnXC4nbmRvX3NldF9tYWNfYWRkcmVzcydccys9JyB8CiAgYXdrICchL05VTEwvIHtnc3ViKC8s
JC8sICIiKTsgcHJpbnQgJE5GfScgfAogIHNvcnQgLXUgfAogIHhhcmdzIC1JJSBiYXNoIC1jICdn
cmVwIC1FUndJbCAlJyInIidcKHN0cnVjdCBuZXRfZGV2aWNlLitcKSQnIiciJyB8CiAgICB4YXJn
cyAtSSBAICBhd2sgJyInIicvJVwoc3RydWN0IG5ldF9kZXZpY2UuK1wpJC8sIAovXn18ZXRoX2h3
X2FkZHJfc2V0XCgvIHsgcHJpbnQgICJAOiIgTlIgJDAgfSciJyInIEAnIHwKY2F0IC1uCgpAUGlv
dHIsIHBlcmhhcHMgcmVzb2x2ZSBhbGwgaW50ZWwgZHJpdmVycyBpbiB5b3VyIHNlcmllcz8KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQt
bGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3Rz
Lm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
