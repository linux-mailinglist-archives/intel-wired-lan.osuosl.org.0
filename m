Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 985B7477D56
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Dec 2021 21:20:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2999440B64;
	Thu, 16 Dec 2021 20:20:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WQtps63-ldG7; Thu, 16 Dec 2021 20:20:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D403E40B61;
	Thu, 16 Dec 2021 20:20:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D019B1BF325
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Dec 2021 20:20:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BBA6A40B61
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Dec 2021 20:20:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dIPjcX0_5q26 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Dec 2021 20:20:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9395940B60
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Dec 2021 20:20:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639686043; x=1671222043;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QHpNksdcilHu1ZvzM+6HwAJRCabEDQsG2YPz+/sZJrQ=;
 b=O+mpmA4RZ219kLhP1ZDfwt7KJDqMK8zGXMtlRf3JLqp2jvsj4o9fxqNr
 e1jUQcqnCz9lj/hV6q4qIANfJ/EWjoJsbqc86h7aKpDY/T309dmNXdi0h
 2/1MZZYYSBz38mZxsQNNhNGISVAdEeDbp4eahLSgbZ6ryeetCb5OY0Oa1
 Ybse6Ng5bQJBROxAccHBqwieVXkmUInZivxLLfAnmOczNLBon8VDNl6t2
 bklFobLtAmsh/bpX6LabzTU0IH5V7HbfkLHZMJ+4YNq0Qgly3VWo4tdc3
 p4ty+lhyYar2Ju49g9E+m0FuD1UOZjmldPE0Yli0D7YtkjRFNgXsrb44k Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10200"; a="226448643"
X-IronPort-AV: E=Sophos;i="5.88,212,1635231600"; d="scan'208";a="226448643"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2021 12:20:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,212,1635231600"; d="scan'208";a="615293097"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga004.jf.intel.com with ESMTP; 16 Dec 2021 12:20:42 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 16 Dec 2021 12:20:42 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 16 Dec 2021 12:20:41 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 16 Dec 2021 12:20:41 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 16 Dec 2021 12:20:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SjQnWjBZfigAH36RWCcIGvDnvadqLlt/SIqKueXLBgaFpwqSYnCh55AuYor85MKkcygIkioNfeaPWAtvPB3smmJJ2y6pbXP+IkrOOBugbBzrHnRjOZcFTwzC+hjtYzS/WjwjH1FvAWICDD/HxBFcSoswMz1pH4UKIIP+zPXEtpG7FcOtCKt8+akK02FgrU2bD6/rans3qfKIcdSDgY5QboRaCIH+FGEgYbgRTXUYjvfEFCrvJb2Y2+OlvPLmTMKYnPyyWJJAXEGgwq2w5K94BE2gTjMznQd4wBGt334pKS9Zm3nXu7If7ivrIp+V9llJf76XPcGeoHoYA6UzOnQ7Hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bxI3+UtKiyoaTPS0RdpGHrGv5eseCmNTnvkggkJKfug=;
 b=lMqk8g1J3WMDsTdCY9skMTRY737ENSqiRu48+rAt0DqXcSKIbowmnKlY+VnNp4RUx+JOzlTvWjMKxV/n2wxY3Y5lSo9B7TlENAqgmL1Iv7rEfI8Bucz0hlvQ2N5LzVys9ojSeW5hYmf7o06h2bTQvIzYil1StgTuzkdpqZtGU1feMlLyuf1vxVuwLQMpfprQYwzV6IrOwnGYfRL1Keuhi4dGKycaYZUDowLS1tvKoYvKD1MeIiEj2LS6ZFP3pbLk15j/VgLblLIOV2jt0bXkFdfq2bqRfH1sY7W9DXNzWsVWucxdld65Rf6HtLJnnRGD7PxJq87n4vKTykCTYYRTRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by MWHPR11MB1742.namprd11.prod.outlook.com (2603:10b6:300:113::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4778.18; Thu, 16 Dec
 2021 20:20:40 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::b0d7:d746:481b:103a]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::b0d7:d746:481b:103a%9]) with mapi id 15.20.4778.018; Thu, 16 Dec 2021
 20:20:40 +0000
Message-ID: <253c5cfe-5cac-2eb0-e952-32417efae975@intel.com>
Date: Thu, 16 Dec 2021 12:20:37 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
Content-Language: en-US
To: Mateusz Palczewski <mateusz.palczewski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20211216123113.2142-1-mateusz.palczewski@intel.com>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <20211216123113.2142-1-mateusz.palczewski@intel.com>
X-ClientProxiedBy: MWHPR19CA0055.namprd19.prod.outlook.com
 (2603:10b6:300:94::17) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bdf04a56-bec0-49a3-2985-08d9c0d18754
X-MS-TrafficTypeDiagnostic: MWHPR11MB1742:EE_
X-Microsoft-Antispam-PRVS: <MWHPR11MB17422C6C5CA3FBD7ED1C5A3397779@MWHPR11MB1742.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: I2tajiLv+C05lOcdzKsdR8mQTdQgKQD/2nBcMbUhG7cComooYg7MqGWHhePFzOtVaTFEJPK2jHkuqnVtNlEffcPtGrwXyM0ZRvLr1VZv97hFbGg3HgyD3D0AGo74AHx67nH939chLQIbnTFT8cF9haI1jrHDWw3iWTgeNAF6C18MpyBc3adenoikT1RwhUkxZdP5ftljhAcxHogE+ZLVdK+wsABf2DXQ+wMxBkmxWlNE0qTI5Y3Jrm4Tr0QAIG4tb0Dycra9yAx7KQNKzwFrrWmJ3dSxD3Zf1GJGoNXd+rmpCLOwrHVjVsExqEqV9Ohm3ZyMzcpspppfeGuB1eohrLzQJ0uTT7r9u9YWGo2MPe2dHR5EOKACPJxed5khm/FREduONUxAHVi/BsUwgDuU01Oos8N6dtlpOo/pRgjMkjJzNA2vJM0idafMgD9r16YoSVt7l/6l8nqiXUjMW85FXCkO7lb5E6fFSHFqv+64LRltgkAVMQ08liASg/Epq1205xc3vXNBxWI7/LD+7M6qr4e/Etx581mQEts7TNpS/QYy24Yc/UNSRNJJlAV8cmsu4ueKOZ+y8p9ji38UVaNUDRz7/c6C2iDC/mJHEfOvAL4kWeKx9vjWt1QJjk9gNWTQ6p6+De3WH08ynzX2g+aZ84WSFT8K5H9/IUiJwkH7Nxf/mfu5VjY1bmWxrmXovSwTkEFOKa4fQkgvZl+vXAXMBkWxllbrXeTuK3irLyXseXm6wY/K3dszgYV6C2CqGKLH
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(66946007)(86362001)(2906002)(6512007)(36756003)(31696002)(54906003)(316002)(26005)(8936002)(66556008)(83380400001)(8676002)(508600001)(2616005)(66476007)(44832011)(31686004)(6666004)(38100700002)(82960400001)(107886003)(4326008)(5660300002)(6486002)(186003)(6506007)(53546011)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZFZrOCtsWHYyeUFIQUFZV2VseUE2MjFZUTMvdjFQaVR1bll4elBVRG9pZFBG?=
 =?utf-8?B?RnZOZys2YmFnU3lkTDYwK0FiY2MrV1Zlc3RaS1k0QTdiem9OcGt2WHFET0gy?=
 =?utf-8?B?c3g2Yzk3eDRSTDMvcFZLckcyZVZJY1ZLL3BiWGR1dUlwcml2cFA2amt0R0l2?=
 =?utf-8?B?dkxnUUtqeG12enE0Z0FiR2xLd0R6ako5b3pQenpjSTNuWU9IZFhnRHZFTGVz?=
 =?utf-8?B?SUtYWEhLUXdFbjFXMjRrQUdKUUhFZmFMRmZnU21FSHBUUUFncUdoNXVBMG02?=
 =?utf-8?B?djlKeE5HeHI4endma0hMVWM4ZE1NZjAzR0xjUU5CdWVmSld5ZnJUcDQrNmIr?=
 =?utf-8?B?bW83czZ4Qm1Bek9WbzJyWExOczdIWXgwZy9DaXE0dGM4UER5cVJSOXRqNUFr?=
 =?utf-8?B?VnhnWSt3YnFRQkRHbm9NMG1US1g0di9XVzZDOTRLVXdUbUdHbmg5ZHZSS0FI?=
 =?utf-8?B?ejIyMlFhdGdjZkhWZ0NsY08yUnBXd2ZRenVCRS9zTHc0cXBORm1jYTBKWmlW?=
 =?utf-8?B?dURzUnovd0djWVA3NVdIaWlJdy9tLzRERXQwRnBLZ0Q0ZHVDNEVlZHlXcy93?=
 =?utf-8?B?ci9zQ09KYTNmZkRjMUNicWd1NnVWN3pYNDJjSjY5Z1BrTFp5STNuSUlJSEJv?=
 =?utf-8?B?Wm11Z3I2clZranZBOWNwNm9tZ0V5WVZTUkdrampienhMTmhKYXhZdGxUSnRJ?=
 =?utf-8?B?VzZxM1dJejM4RERWaDhlM0RNZ3B2bUdCcE16c1BhOFNDMUt0RTNGQVp1YXhY?=
 =?utf-8?B?V2dKOFVkZDRSbWd5bVZXNm1sdmtPV3Rrelh4V3RpTi9VaTV4MXJoMloyU3Qr?=
 =?utf-8?B?UnJKY1d2ZmZLdUo5M2pDWjlXbGRVcXBpRkY0WlhOVE1qTm9jSm44eEtjN0tx?=
 =?utf-8?B?Uk0xTHZCeUxLbU9hZ2dXbEh1Yk4yOUMxdi94T1V3RVcrd3o1N3FHUHA5Tytl?=
 =?utf-8?B?S1F2cktUbjdwbCtQWmxNUTUvYmIvSG9PdFVKNm5jY2pIbXZwWng3bzU2aXdl?=
 =?utf-8?B?dUkxZEpEa1NlbTY2VStEZ3JLMDFuZm9iRzRlaFlKOTV1K0ZOOG14Z3dkcE5Y?=
 =?utf-8?B?WGFqbHJxaXg0dHJEQkdVTjNGaFBJKzV1RklmaTNEYmFyc1liZFFGZ1czTHdD?=
 =?utf-8?B?ZGR1eTVxb1RsbFJpMytNN2xNVVpwVW1yYk9OUk4yMUdkcVZFaVN2QWY2ZE9q?=
 =?utf-8?B?ZE5GenVEY1NDZnE4dExYVVlQdE5yOUliUE9OdVdoWTVhQTZPaU1kTG5SZmM2?=
 =?utf-8?B?cXBoRUxJckl6WGFEYUp3SmlPR3E0OWZ1TmtvQndSWXEwV2dvWnJMY21XeHh5?=
 =?utf-8?B?eGZEV1Y2Yit2dmt2MldSUmE5Y2xpVTB3Q2RtdUFMMzdvOUh6SlNUUU9vblRI?=
 =?utf-8?B?NHppOFRiV3NkemNSUjdqSDZKYkhvZ0ZJSkU1d3l5OGJueEpyNGZ4cWVLMVEx?=
 =?utf-8?B?aGFpY2R5ZWZWRlFjbnFqdEdBaVZ4TklEKzArY2NHZUozM3dPakpON1VGR0Rx?=
 =?utf-8?B?S2gyOWZrbmVNSmk4VnJvb3lNUzVrL3Y0aGU2eUMwNU1yd01ULzhQditDRTVT?=
 =?utf-8?B?L2NqRStxbUJJRWErU0hHQVcrY3ZlYmpLUzJvSmtPdjliaTRhOGVyM1RxNzJ0?=
 =?utf-8?B?aExROTkvZStQbXJVdThWNWk3Zjl0a1JpcjhiaEpWNGJvYWFLM2xmUXBKRUFB?=
 =?utf-8?B?QlFaem4ydUZzTmVFeWQvZDVqTlc2dkFSR3R5NDNMbC83TXRLNFk0MjF1QVVw?=
 =?utf-8?B?NFExbjhvb0crNlJQWExnUWo1MzFIYlBOS0tUMHpYSXpXVS8yd053RjdITmVo?=
 =?utf-8?B?OW41clNQbytibTFlYUJ1WHpUNjlmUy9UUHkzb0I2ZDFrTGFiZnBhRVBTS2w2?=
 =?utf-8?B?RjJ2WGZGYm1obGRSQitiTHhhMEFZUU1RaWlhdVQ1V2lzdDVuY0VPazRUUlZJ?=
 =?utf-8?B?cWQ5WGNUQTVuT1RzOVF6a0kvSzNxYndoZkpOMG0zNnd5Q3hCVGtxOVhsMjVL?=
 =?utf-8?B?UTBYVE1DSEpQUzRwaHdFLzhITytSdGJZeWxIVkZIbUs2aVlJYktCYzdKbEFN?=
 =?utf-8?B?RERleVFXMWlVUnFXUE5PYlFkK3JkK0NYVnJjT095OEVKMk8xbGhPQTI4OFl4?=
 =?utf-8?B?UmdUaG9oOXR1bzdpYmxwRkFQS3c2blVGWE43dlFoSEhTNFdoTE9vSkNzb1dL?=
 =?utf-8?B?TzBJZUZOTmFzeTk0RDhxQ2tpYjZjTzY0cjhzamwzbjBMVW5mMHl2UXFkd0dL?=
 =?utf-8?B?QkFyaHQxRkNVSnVJc1J0cm14dzZRPT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bdf04a56-bec0-49a3-2985-08d9c0d18754
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2021 20:20:40.1998 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4hnQRLygiwTQdYY91Nq4mdnCoY6opEFIUbl5ZOQ4V+r68To6G5n3LJ6nmagPD8KzqcXBH8taCSTqevNurbSGUSLRQGNCopxle3hOx/oG4Tg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1742
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3] i40e: Disable
 hw-tc-offload feature on driver load.
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
Cc: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>,
 Norbert Zulinski <norbertx.zulinski@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/16/2021 4:31 AM, Mateusz Palczewski wrote:
> After loading driver hw-tc-offload is enabled by default.
> Change the behaviour of driver to disable hw-tc-offload by default as this
> is the expected state. Additionaly since this impacts ntuple feature state
> change the way of checking NETIF_F_HW_TC flag.

Again, why are you doing this? What's wrong with having it enabled by 
default? Does a user have to turn it on before programming rules after 
your change? In order for the maintainers to be interested to apply your 
patch, you have to explain why it benefits them/kernel/community.

> Signed-off-by: Norbert Zulinski <norbertx.zulinski@intel.com>
> Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>

Why are there three sign-offs? Did three people work on this patch? If 
so, did they co-develop it? Three sign-offs in a row would be what's 
done if you're just handling the patch from one user to another. And in 
that case, then usually the first person listed would be also credited 
with the patch upstream by being the From: and set as git author.


> ---
>   v3: Removed internal tags and fixed commit message
>   v2: Squashed two commits into one
> ---
>   drivers/net/ethernet/intel/i40e/i40e_main.c | 5 ++++-
>   1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 3fd3f10..fec4d51 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -12724,7 +12724,8 @@ static int i40e_set_features(struct net_device *netdev,
>   	else
>   		i40e_vlan_stripping_disable(vsi);
>   
> -	if (!(features & NETIF_F_HW_TC) && pf->num_cloud_filters) {
> +	if (!(features & NETIF_F_HW_TC) &&
> +	    (netdev->features & NETIF_F_HW_TC) && pf->num_cloud_filters) {
>   		dev_err(&pf->pdev->dev,
>   			"Offloaded tc filters active, can't turn hw_tc_offload off");
>   		return -EINVAL;
> @@ -13476,6 +13477,8 @@ static int i40e_config_netdev(struct i40e_vsi *vsi)
>   	netdev->features |= hw_features | NETIF_F_HW_VLAN_CTAG_FILTER;
>   	netdev->hw_enc_features |= NETIF_F_TSO_MANGLEID;
>   
> +	netdev->features &= ~NETIF_F_HW_TC;
> +
>   	if (vsi->type == I40E_VSI_MAIN) {
>   		SET_NETDEV_DEV(netdev, &pf->pdev->dev);
>   		ether_addr_copy(mac_addr, hw->mac.perm_addr);

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
