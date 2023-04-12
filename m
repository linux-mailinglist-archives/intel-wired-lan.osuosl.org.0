Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 968746E010A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Apr 2023 23:37:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A0C6E415C8;
	Wed, 12 Apr 2023 21:37:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A0C6E415C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681335429;
	bh=viR8iu8ArgThhgnM2UvkEB2WC6qy38SsX7HDUzUyLzU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yPwNYrrC4ZMeyP1whjLPA3NsjxUxBjRNurtopR5vZ2v8dvU6wWVTfefZshCgF3xxl
	 HGHueAMlLrm0h5sCRqpfezjFmZLS59mVZyV2Jz4jt79q4fqNsU2v29nUo/7C3XGpXy
	 oSSvT3lkbhG+XD6F0F7GYqAkF1/zVQIyOIVCmScUaqbwAeKtpq9atifI1v8K433Pac
	 XlEYp0ix4dfAw4VXop+uUTKG23ROi2SCcQt30G3frRVa3plcKpwhS76OvOdNXcjpjp
	 cV/aB5J8QBXtFPiwN4DcgtoXVFGWbwWT6+RlkyxH/MRvs/sEqIMpKt8WEMhXjF+eJD
	 Y56HQSqV5yM6Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hlWzcTsKEebg; Wed, 12 Apr 2023 21:37:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5A72440C39;
	Wed, 12 Apr 2023 21:37:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5A72440C39
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5C9761C3D53
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 21:37:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EE70783C91
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 21:37:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EE70783C91
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4Q7xCuHQt0Ju for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Apr 2023 21:36:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 004BF822E9
Received: from NAM02-DM3-obe.outbound.protection.outlook.com
 (mail-dm3nam02on2077.outbound.protection.outlook.com [40.107.95.77])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 004BF822E9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 21:36:58 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=To7k3G6+qqgMuyIZu1i8L1KLparAQLrCFpF51EpQHFhPLFznpnCrsxDuhSSwLATo4PNRhdI2TRRJnNqaQztcbfK2nzfanm7nKWIkMYDU7eiDpm1FL/9tFdF5QIVEpq25qyp0sjgpta+XZ4JxBz7wdB+XcWgR/xQAZmWvvgcez3MDy+TE2rvpxM2qC0ptvIIj5+Vyo8Si5kJY3GCx97cSItcYpqDowD7PAm33ZQ7r0Km08pIxUZFA/aYtu7XUdZhD6dp49svnvxAukWe+ycOENKEmeKc3mmnCMlB6sCZOAnHH+kswzFS/+t3JUFgfe3goKjqP2cSsiHYtXm1ZCtUdEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H4K2CEj1gl2DpGPIXFsEVSFHY9S5vaDo9MxzTgAGqYM=;
 b=EaDgc8+uHyiF6AEYJFZIZjk0ynNTjx929Pnam0D2uDsuATMPPViysVIX20akSUAruKMQeLY3ud+LZRQYdQLaIkcp3r75pyeBBxwDjVxrHfn0ojs7hBIGVRtf5ZP25bpQSNR0DEVDYUmjGNqtwqyxugDdz8zBDzoJWVupRQn3g+P6FFAL3UDCH5anrxfvmA4YeJl41oCBxLrnmckTWhhBpJ/eT9jE5ssSMebZqjP5mX6V11tNiDa4ECy3jscyKyec74IJEg/n5mpy1lfiZexu42XZgIX0WtJOK9EqJVB88BmKQbN1CsRRaNf7n8ZOhOgTeHW+CYc9ztcMWs160CF4Tw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from DS0PR12MB6583.namprd12.prod.outlook.com (2603:10b6:8:d1::12) by
 PH0PR12MB8798.namprd12.prod.outlook.com (2603:10b6:510:28d::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.28; Wed, 12 Apr
 2023 21:36:54 +0000
Received: from DS0PR12MB6583.namprd12.prod.outlook.com
 ([fe80::e786:9262:56b5:ca86]) by DS0PR12MB6583.namprd12.prod.outlook.com
 ([fe80::e786:9262:56b5:ca86%6]) with mapi id 15.20.6277.034; Wed, 12 Apr 2023
 21:36:54 +0000
Message-ID: <ffe43a28-641c-c263-2ea2-67882b476cde@amd.com>
Date: Wed, 12 Apr 2023 14:36:50 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.9.0
Content-Language: en-US
To: "Tantilov, Emil S" <emil.s.tantilov@intel.com>,
 "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20230329140404.1647925-1-pavan.kumar.linga@intel.com>
 <20230329140404.1647925-2-pavan.kumar.linga@intel.com>
 <49947b6b-a59d-1db1-f405-0ab4e6e3356e@amd.com>
 <a5b7f1e4-8f14-d5fb-8f88-458d7070825d@intel.com>
 <f7c7c691-d173-73ab-c24a-79c22e6ef3b0@amd.com>
 <ffd66203-4349-0986-2130-f8b156f1923a@intel.com>
From: Shannon Nelson <shannon.nelson@amd.com>
In-Reply-To: <ffd66203-4349-0986-2130-f8b156f1923a@intel.com>
X-ClientProxiedBy: BYAPR21CA0018.namprd21.prod.outlook.com
 (2603:10b6:a03:114::28) To DS0PR12MB6583.namprd12.prod.outlook.com
 (2603:10b6:8:d1::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6583:EE_|PH0PR12MB8798:EE_
X-MS-Office365-Filtering-Correlation-Id: 36829439-d097-4058-e7b4-08db3b9e08e3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3Cna8PP9TRt3gUA1xqQHKmsnzfaL4vhj5sqttAR/yIgw8QUA6iAw8Z+PzCcVssBdabjTBBdlL06wxgDwaOLAptcfK5uyKHpLTIvReUI16E5Evmjn4GqLyoFsDILNvFimJ8WW5onOoW/XPVqOwhQiqVgGEaGgqQ2SxcOLOuLYfNQMOsdH8/yEgpCYWp+RE2Ebx/kcnI1uZX5AaMGWWgczJZsD9JK+ENOujD6SE+aQtXvaz8Xo7jPR2tFtglvhN8Qr847lE0j5VAQeXesns0CNc/jldxfsTlOcyyjfeUZxFBw3VrG8J0P6WPyszuZI+AHlC1oPMANKnh5Bs1Cgt1teYpmzRCIMnQDT/MWq3eXH9BHcBgcU2JaH6Zk+Uvr2/dyLyvwugflRnf0Y+WumGu3nNwBBmhGG0Jz6lZeqcjupjXCbfu0WjB1IVxvDllVEV0fvrjCVNleOMiVeNGsK9Aok43JqkabTGz7Tz9B6nGVM5TrLRbdH0B4lsiFl+6M8fsQxJQ05YnL7heAOQwbRh21WOj9QGw/GDP2SupDc6ccfiZxKETbmxn8w4nU6eLU5J1TC7RXTQvGVyDT1WrCYN/JqGhetKXALG4fmKK1psT/RQb9RiwEHORPe9O2wv23iFWXelLS1n20YRRL61hd4G9Rgnw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6583.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(396003)(346002)(39860400002)(376002)(136003)(366004)(451199021)(83380400001)(6666004)(6486002)(186003)(26005)(110136005)(54906003)(6506007)(478600001)(53546011)(6512007)(44832011)(2906002)(7416002)(38100700002)(5660300002)(36756003)(66556008)(4326008)(66476007)(41300700001)(66946007)(2616005)(31696002)(316002)(8676002)(8936002)(86362001)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dkhPajFwREhnWmZwa1ZjTHFjOENMKzBCUCtLeS82L0huN0twSzNzRkJlakI0?=
 =?utf-8?B?R291Y0gzdFNpZ3RXMWVWdFRoTDN6RVA5SzM0MTFWb1pIMlRob1lJUU52Y2t5?=
 =?utf-8?B?bG16YkJxN0NiZEFibnBoTG8rMDllTVo3VTVCMzZqa2Z2anc4cVEwbWdKTmJB?=
 =?utf-8?B?TEVGMW0vbWlVUTVSV0xPMmUzcjdpOXhVSU9JdjMxVEJ6d0JOSGpYT2J0UTla?=
 =?utf-8?B?TDFiN0UvVVZlU3dpT0pTelRQRnFSVTBqQlkwVTliRGFkbktHVTJEQVFDVURD?=
 =?utf-8?B?ekpRd28yem1YeHZQR3phbE9iNnZHNDVXb1lNeEwyTlI0ZWVxWk1WVnZ2eE96?=
 =?utf-8?B?c3NVNi9zZ2k1dkM0L3RsbW11QVJwWlBqNzRzRlFNSXZNam93dThUYTFMbWky?=
 =?utf-8?B?NUVJdE4xUnJwcTROTDdEWXdNYnhDTmlMaktFWk5sWVlwMndqdzhMMWpNNThP?=
 =?utf-8?B?OExLa0VZODFJYjhtOE1xSlRCYWdiUkxJMllNME1yWjZodE9yc3NRWHplQVhW?=
 =?utf-8?B?VDl0ZnlhWFI4R2RJbG53cnJOM0VBSlFoczlmUU13aElnS1dDTnAwc29WeEFS?=
 =?utf-8?B?SzNuMHQ2L3ljSkhXdU5ITTlmWU0xMkZieFJLWFAwSkJJRm9kWmJSaDJpRHlW?=
 =?utf-8?B?WGwwVG12ckNJdkZvMTBMSFNrNTE5K2JXY3hsL0pVcmFuWkxNWm54MDB2S0Za?=
 =?utf-8?B?VExaMVBhVmVXbGVjQTRaK1g2YWtoN0tyM3hnazcwNVVDMDNTa0VnTXhyUWFX?=
 =?utf-8?B?SjAvYm5MTlRFZGJHYldUckcxRzkvTmVJN25LeVNEQ0t0NG9HWXozMkE5ZHFW?=
 =?utf-8?B?MGM1VEdFOW5NblpjQm9lZStSaVFhUkNrOVg4SDJ0QTdzZWdNVmhzSU9kWWxY?=
 =?utf-8?B?TzRKQVNhVC9MdVpBVGMwU0ErWExhWlVPdHdaMTZFcXFUMXNvS1NrcEdOOTND?=
 =?utf-8?B?TXZpUjllYXhxMm1UdHVydEMzZ3FmcG1zYm9vUXN1aWhrcDJ1RitmV0FMSTJO?=
 =?utf-8?B?V0dDLy9QRkQ4eDhjUkwxSE5IdVFZZWpxcmc1eWllU3hKQkFQdzNuNXBuMjFm?=
 =?utf-8?B?Y015elF2dDc0UmNWWDlFc3JFYnlQMXM3VzdKM0RTN3RrQ2xHaHlaZUM0UVd3?=
 =?utf-8?B?UkFqTk1oQjlaU21hRUtZMGhCeHRhcGxVV2ZxNTJmcG1xN2kvZllFbUVlMCtJ?=
 =?utf-8?B?WEVTYm1aK0FqMk5SS1YvaldFejQxZWxtYndUcGtHYktOZUYwazlDZjJVakNP?=
 =?utf-8?B?U1JIQVNyNEJkdW92OUJRUmdNakZpSjBGWU1McGNuUEVWR2JidVJpb2NkeHpV?=
 =?utf-8?B?bkRtejZMZGttbHdOQmUxVW1VR05TTmJJYzdweEd3Q285QStoR1dUSXlsMHhQ?=
 =?utf-8?B?enkyTkE2cThuZGx4aW5oR3JObUx3eE5OL3lXUHc5ejk2RVpVVWRQMDE5VW1O?=
 =?utf-8?B?KysrcisyRkZWbWtDTlhhWUR6TStFVStHMlBvMExqMVkvRUNuSzdpMndQUnlz?=
 =?utf-8?B?Q0M3MEpnRWRJMkQvRisyTUNGL2pQbGlUWm90emMyZERWdHZiYWhIamJ0dWd3?=
 =?utf-8?B?LzdWTC9FUEdWVHQ2OExFdTlVTXNNK0hCVktKeGMwSzVnZFp3T3BJd3ZwYmZY?=
 =?utf-8?B?dnlnNWFMeUJMN0NKK3ppNTdJOHJ2S2xvVm5WeEFteEhJcVRScWVJVjd0T05H?=
 =?utf-8?B?L2h5TnNCUnZFSWFSeW9CVEY0ZnN4Y29SeURPellidFZoSzZSMnl3RXBsaXNr?=
 =?utf-8?B?a0h1Y1NEdmtjSHl6REhxVW50R3NSTFRhbmxZMkd5U1dQMnFOZThZemdtVTNy?=
 =?utf-8?B?RXg5aEltUWgvWm5NVm0vQmN6UkpYVEZ5bjlnbU8zSDdUSmRDR1VjRlRPdFB4?=
 =?utf-8?B?MmVNVUxvc0pwcWdLaVNNQldxTVNWeFREOWdWd3QxbW1TWVNKOHN6RzNvaWJq?=
 =?utf-8?B?RlMvR1NoamhhM2ljd2ptT1hJVVJ4WTVLL2svVWNDbE1YUTBjNDBEeXQ2Qzhq?=
 =?utf-8?B?ZzVIRmo1ekE3b0FkcnRZcjY4dEU4dnF0eFp5VjFQK1ZDN3ovQVI0M0UxL0po?=
 =?utf-8?B?bHFleUtLZ1ZMdytXeVJKOEdnWFkxQ0xtMTdqV1VSYmVuZHlkemFUWE1oRUNX?=
 =?utf-8?Q?5ztU1Hu8Nq8USr1rdDA+qjQjO?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 36829439-d097-4058-e7b4-08db3b9e08e3
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6583.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Apr 2023 21:36:54.5243 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yTEMMAYNp9EDscLMpywuKkqhHbAK9ucrZn7ee+Bz3QF/YUiMektBmA1AZnC8Le3VfiFB/Ko9BZum8KAQpeJD/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR12MB8798
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H4K2CEj1gl2DpGPIXFsEVSFHY9S5vaDo9MxzTgAGqYM=;
 b=D4JOyKC0JfjKjex5CgWKYbactBrnK1kOOhAFGDK7Dpc5lyq6B73hySak2/ZGjNZta65pREmxjB+jUM7+sQXqiFDkCtsN+ycpLKrMvYw7+C3J6PIeGPZL1h7G+xzgeusL+ILUjQQja3wJw+sn68ft/0cUg5/hrNVxt7Q2lXS+BeE=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=D4JOyKC0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 01/15] virtchnl: add virtchnl
 version 2 ops
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
Cc: willemb@google.com, netdev@vger.kernel.org,
 Phani Burra <phani.r.burra@intel.com>, decot@google.com,
 shiraz.saleem@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNC8xMi8yMyA5OjU4IEFNLCBUYW50aWxvdiwgRW1pbCBTIHdyb3RlOgo+IAo+IE9uIDQvMTAv
MjAyMyAzOjEyIFBNLCBTaGFubm9uIE5lbHNvbiB3cm90ZToKPj4gT24gNC8xMC8yMyAxOjI3IFBN
LCBMaW5nYSwgUGF2YW4gS3VtYXIgd3JvdGU6Cj4+Pgo+Pj4gT24gNC80LzIwMjMgMzozMSBBTSwg
U2hhbm5vbiBOZWxzb24gd3JvdGU6Cj4+Pj4gT24gMy8yOS8yMyA3OjAzIEFNLCBQYXZhbiBLdW1h
ciBMaW5nYSB3cm90ZToKPj4+Pj4KPj4+Pj4gVmlydGNobmwgdmVyc2lvbiAxIGlzIGFuIGludGVy
ZmFjZSB1c2VkIGJ5IHRoZSBjdXJyZW50IGdlbmVyYXRpb24gb2YKPj4+Pj4gZm91bmRhdGlvbmFs
IE5JQ3MgdG8gbmVnb3RpYXRlIHRoZSBjYXBhYmlsaXRpZXMgYW5kIGNvbmZpZ3VyZSB0aGUKPj4+
Pj4gSFcgcmVzb3VyY2VzIHN1Y2ggYXMgcXVldWVzLCB2ZWN0b3JzLCBSU1MgTFVULCBldGMgYmV0
d2VlbiB0aGUgUEYKPj4+Pj4gYW5kIFZGIGRyaXZlcnMuIEl0IGlzIG5vdCBleHRlbnNpYmxlIHRv
IGVuYWJsZSBuZXcgZmVhdHVyZXMgc3VwcG9ydGVkCj4+Pj4+IGluIHRoZSBuZXh0IGdlbmVyYXRp
b24gb2YgTklDcy9JUFVzIGFuZCB0byBuZWdvdGlhdGUgZGVzY3JpcHRvciB0eXBlcywKPj4+Pj4g
cGFja2V0IHR5cGVzIGFuZCByZWdpc3RlciBvZmZzZXRzLgo+Pj4+Pgo+Pgo+PiBbLi4uXQo+Pgo+
Pj4+PiArCj4+Pj4+ICsjaW5jbHVkZSAidmlydGNobmwyX2xhbl9kZXNjLmgiCj4+Pj4+ICsKPj4+
Pj4gKy8qIFZJUlRDSE5MMl9FUlJPUl9DT0RFUyAqLwo+Pj4+PiArLyogU3VjY2VzcyAqLwo+Pj4+
PiArI2RlZmluZSBWSVJUQ0hOTDJfU1RBVFVTX1NVQ0NFU1PCoMKgwqDCoMKgwqAgMAo+Pj4+Cj4+
Pj4gU2hvdWxkbid0IHRoZXNlIGJlIGVudW0gYW5kIG5vdCAjZGVmaW5lPwo+Pj4+Cj4+Pgo+Pj4g
VGhpcyBoZWFkZXIgZmlsZSBpcyBkZXNjcmliaW5nIGNvbW11bmljYXRpb24gcHJvdG9jb2wgd2l0
aCBvcGNvZGVzLAo+Pj4gZXJyb3IgY29kZXMsIGNhcGFiaWxpdGllcyBldGMuIHRoYXQgYXJlIGV4
Y2hhbmdlZCBiZXR3ZWVuIElEUEYgYW5kCj4+PiBkZXZpY2UgQ29udHJvbCBQbGFuZS4gQ29tcGls
ZXIgY2hvb3NlcyB0aGUgc2l6ZSBvZiB0aGUgZW51bSBiYXNlZCBvbiB0aGUKPj4+IGVudW1lcmF0
aW9uIGNvbnN0YW50cyB0aGF0IGFyZSBwcmVzZW50IHdoaWNoIGlzIG5vdCBhIGNvbnN0YW50IHNp
emUuIEJ1dAo+Pj4gZm9yIHZpcnRjaG5sIHByb3RvY29sLCB3ZSB3YW50IHRvIGhhdmUgZml4ZWQg
c2l6ZSBubyBtYXR0ZXIgd2hhdC4gVG8KPj4+IGF2b2lkIHN1Y2ggY2FzZXMsIHdlIGFyZSB1c2lu
ZyBkZWZpbmVzIHdoZXJlZXZlciBuZWNlc3NhcnkuCj4+Cj4+IFRoZSBmaWVsZCBzaXplIGxpbWl0
YXRpb25zIGluIGFuIEFQSSBhcmUgb25lIHRoaW5nLCBhbmQgdGhhdCBjYW4gYmUKPj4gbWFuYWdl
ZCBieSB1c2luZyBhIHU4L3UxNi91MzIgb3Igd2hhdGV2ZXIgYXMgbmVjZXNzYXJ5LsKgIEJ1dCB0
aGF0Cj4+IGRvZXNuJ3QgbWVhbiB0aGF0IHlvdSBjYW4ndCBkZWZpbmUgdmFsdWVzIHRvIGJlIGFz
c2lnbmVkIGluIHRob3NlIGZpZWxkcwo+PiBhcyBlbnVtcywgd2hpY2ggYXJlIHByZWZlcnJlZCB3
aGVuIGRlZmluaW5nIHNldmVyYWwgcmVsYXRlZCBjb25zdGFudHMuCj4+Cj4gV2UgY2FuIGNlcnRh
aW5seSBsb29rIGludG8gaXQsIGJ1dCBmb3IgdGhlIHB1cnBvc2Ugb2YgdGhpcyBzZXJpZXMgaXQK
PiBkb2Vzbid0IHNlZW0gbGlrZSBhIG1lYW5pbmdmdWwgY2hhbmdlIGlmIGl0IG9ubHkgaGVscHMg
d2l0aCB0aGUgZ3JvdXBpbmcKPiBzaW5jZSB0aGUgZGVmaW5lIG5hbWVzIGFscmVhZHkgZm9sbG93
IGEgY2VydGFpbiBwYXR0ZXJuIHRvIGluZGljYXRlIHRoYXQKPiB0aGV5IGFyZSByZWxhdGVkLgoK
SSB3YXMgdHJ5aW5nIG5vdCB0byBiZSBvdmVybHkgcGVkYW50aWMsIGJ1dCB0aGUgbGFzdCB3b3Jk
cyBvZiB0aGF0IApwYXJhZ3JhcGggYXJlIGNvcGllZCBkaXJlY3RseSBmcm9tIHNlY3Rpb24gMTIg
b2YgdGhlIGNvZGluZy1zdHlsZS5yc3QuIApXZSBzaG91bGQgZm9sbG93IHRoZSB3aXNkb20gdGhl
cmVpbi4KCkxvb2ssIHdoZXRoZXIgd2UgbGlrZSB0aGlzIHBhdGNoc2V0IG9yIG5vdCwgaXQgaXMg
Z29pbmcgdG8gZ2V0IHVzZWQgYXMgCmFuIGV4YW1wbGUgYW5kIGEgc3RhcnRpbmcgcG9pbnQgZm9y
IHJlbGF0ZWQgd29yaywgc28gd2UgbmVlZCB0byBiZSBzdXJlIAppdCBzZXJ2ZXMgYXMgYSBnb29k
IGV4YW1wbGUuICBMZXQncyBzdGFydCBmcm9tIHRoZSBiZWdpbm5pbmcgd2l0aCBjbGVhbiAKY29k
ZS4KCgo+IAo+Pgo+PiBbLi4uXQo+Pgo+Pj4KPj4+Pj4gKwo+Pj4+PiArLyogVklSVENITkwyX09Q
X0dFVF9FRFRfQ0FQUwo+Pj4+PiArICogR2V0IEVEVCBncmFudWxhcml0eSBhbmQgdGltZSBob3Jp
em9uCj4+Pj4+ICsgKi8KPj4+Pj4gK3N0cnVjdCB2aXJ0Y2hubDJfZWR0X2NhcHMgewo+Pj4+PiAr
wqDCoMKgwqDCoMKgIC8qIFRpbWVzdGFtcCBncmFudWxhcml0eSBpbiBuYW5vc2Vjb25kcyAqLwo+
Pj4+PiArwqDCoMKgwqDCoMKgIF9fbGU2NCB0c3RhbXBfZ3JhbnVsYXJpdHlfbnM7Cj4+Pj4+ICvC
oMKgwqDCoMKgwqAgLyogVG90YWwgdGltZSB3aW5kb3cgaW4gbmFub3NlY29uZHMgKi8KPj4+Pj4g
K8KgwqDCoMKgwqDCoCBfX2xlNjQgdGltZV9ob3Jpem9uX25zOwo+Pj4+PiArfTsKPj4+Pj4gKwo+
Pj4+PiArVklSVENITkwyX0NIRUNLX1NUUlVDVF9MRU4oMTYsIHZpcnRjaG5sMl9lZHRfY2Fwcyk7
Cj4+Pj4KPj4+PiBEb24ndCBwdXQgYSBzcGFjZSBiZXR3ZWVuIHRoZSBzdHJ1Y3QgYW5kIHRoZSBj
aGVjay4KPj4+Pgo+Pj4KPj4+IENoZWNrcGF0Y2ggcmVwb3J0cyBhIHdhcm5pbmcgKGFjdHVhbGx5
IGEgJ0NoZWNrJykgd2hlbiB0aGUgbmV3bGluZSBpcwo+Pj4gcmVtb3ZlZC4gRm9sbG93aW5nIGlz
IHRoZSBjaGVja3BhdGNoIG91dHB1dCB3aGVuIHRoZSBuZXdsaW5lIGlzIHJlbW92ZWQ6Cj4+Pgo+
Pj4gIkNIRUNLOiBQbGVhc2UgdXNlIGEgYmxhbmsgbGluZSBhZnRlciBmdW5jdGlvbi9zdHJ1Y3Qv
dW5pb24vZW51bQo+Pj4gZGVjbGFyYXRpb25zIgo+Pgo+PiBTaW5jZSBpdCBoYXMgdG8gZG8gZGly
ZWN0bHkgd2l0aCB0aGUgZmluaXNoZWQgZGVmaW5pdGlvbiwgb25lIHdvdWxkCj4+IHRoaW5rIGl0
IGNvdWxkIGZvbGxvdyB0aGUgc2FtZSBydWxlIGFzIEVYUE9SVC4uLiBkb2VzLsKgIEl0IG1pZ2h0
IG5vdCBiZQo+PiBhIGJhZCBpZGVhIGF0IHNvbWUgcG9pbnQgZm9yIHN0YXRpY19hc3NlcnQoKSB0
byBiZSBhZGRlZCB0byB0aGF0IGFsbG93ZWQKPj4gbGlzdC7CoCBGb3Igbm93LCB0aG91Z2gsIHNp
bmNlIGl0IGlzIG9ubHkgYSBDSEVDSyBhbmQgbm90IFdBUk4gb3IgRVJST1IsCj4+IHlvdSBtaWdo
dCBiZSBhYmxlIHRvIGlnbm9yZSBpdC7CoCBJdCBtaWdodCBiZSBlYXNpZXIgdG8gaWdub3JlIGlm
IHlvdQo+PiBqdXN0IHVzZWQgdGhlIGV4aXN0aW5nIHN0YXRpY19hc3NlcnQoKSByYXRoZXIgdGhh
biBkZWZpbmlnaW4geW91ciBvd24KPj4gc3lub255bS4KPiAKPiBPSywgd2UnbGwgcmVtb3ZlIGl0
LgoKSSdtIG5vdCBzdXJlICdpdCcgbWVhbnMgeW91ciBzeW5vbnltIG9yIHRoZSBhY3R1YWwgY2hl
Y2suICBUaGUgY2hlY2sgaXMgCmEgdXNlZnVsIHRoaW5nIHRvIGhlbHAgbWFrZSBzdXJlIG5vIG9u
ZSBzY3Jld3MgdXAgdGhlIEFQSSBtZXNzYWdlIApsYXlvdXQsIHNvIGRvbid0IHJlbW92ZSB0aGUg
Y2hlY2sgaXRzZWxmLiAgSWYgeW91IGNhbid0IGdldCBhd2F5IHdpdGggCmlnbm9yaW5nIHRoZSBj
aGVja3BhdGNoLnBsIENIRUNLIGNvbXBsYWludCBhYm91dCB0aGUgbGluZSBzcGFjaW5nLCBJJ20g
CmZpbmUgd2l0aCBsZWF2aW5nIGl0IGFsb25lLiAgU29tZSBvdGhlciBkYXkgd2UgY2FuIGxvb2sg
YXQgdGVhY2hpbmcgCmNoZWNrcGF0Y2gucGwgdG8gYWxsb3cgc3RhdGljX2Fzc2VydCgpIGFmdGVy
IGEgc3RydWN0LgoKPiAKPj4KPj4KPj4gWy4uLl0KPj4KPj4+Pj4gKy8qIFF1ZXVlIHRvIHZlY3Rv
ciBtYXBwaW5nICovCj4+Pj4+ICtzdHJ1Y3QgdmlydGNobmwyX3F1ZXVlX3ZlY3RvciB7Cj4+Pj4+
ICvCoMKgwqDCoMKgwqAgX19sZTMyIHF1ZXVlX2lkOwo+Pj4+PiArwqDCoMKgwqDCoMKgIF9fbGUx
NiB2ZWN0b3JfaWQ7Cj4+Pj4+ICvCoMKgwqDCoMKgwqAgdTggcGFkWzJdOwo+Pj4+PiArCj4+Pj4+
ICvCoMKgwqDCoMKgwqAgLyogU2VlIFZJUlRDSE5MMl9JVFJfSURYIGRlZmluaXRpb25zICovCj4+
Pj4+ICvCoMKgwqDCoMKgwqAgX19sZTMyIGl0cl9pZHg7Cj4+Pj4+ICsKPj4+Pj4gK8KgwqDCoMKg
wqDCoCAvKiBTZWUgVklSVENITkwyX1FVRVVFX1RZUEUgZGVmaW5pdGlvbnMgKi8KPj4+Pj4gK8Kg
wqDCoMKgwqDCoCBfX2xlMzIgcXVldWVfdHlwZTsKPj4+Pj4gK8KgwqDCoMKgwqDCoCB1OCBwYWQx
WzhdOwo+Pj4+PiArfTsKPj4+Pgo+Pj4+IFdoeSB0aGUgZW5kIHBhZGRpbmc/wqAgV2hhdCdzIHdy
b25nIHdpdGggdGhlIDE2LWJ5dGUgc2l6ZT8KPj4+Pgo+Pj4KPj4+IFRoZSBlbmQgcGFkZGluZyBp
cyBhZGRlZCBmb3IgYW55IHBvc3NpYmxlIGZ1dHVyZSBhZGRpdGlvbnMgb2YgdGhlIGZpZWxkcwo+
Pj4gdG8gdGhpcyBzdHJ1Y3R1cmUuIERpZG4ndCBnZXQgdGhlIGFzayBmb3IgMTYtYnl0ZSBzaXpl
LCBjYW4geW91IHBsZWFzZQo+Pj4gZWxhYm9yYXRlPwo+Pgo+PiBXaXRob3V0IHRoZSBwYWQxWzhd
LCB0aGlzIHN0cnVjdCBpcyBhbiBldmVuIDE2IGJ5dGVzLCBzZWVtcyBsaWtlIGEKPj4gbG9naWNh
bCBwbGFjZSB0byBzdG9wLsKgIDI0IGJ5dGVzIHNlZW1zIG9kZCwgaWYgeW91J3JlIGdvaW5nIHRv
IHBhZCBmb3IKPj4gdGhlIGZ1dHVyZSBpdCBtYWtlcyBzb21lIHNlbnNlIHRvIGRvIGl0IHRvIGFu
IGV2ZW4gMzIgYnl0ZXMKPj4gKHBvd2VyLW9mLTIpLsKgIEFuZCBwbGVhc2UgYWRkIGEgY29tbWVu
dCBmb3IgdGhpcyBmdXR1cmUgdGhpbmtpbmcuCj4gCj4gV2UgY2FuIGNoYW5nZSB0aGUgbmFtZSB0
byByZXNlcnZlZCB0byBtYWtlIGl0IGNsZWFyZXIsIGJ1dCB0aGUgc2l6ZQo+IGNhbm5vdCBiZSBj
aGFuZ2VkIGJlY2F1c2UgaXQncyBhbiBBQkkgYWxyZWFkeS4KClRoYXQncyBmaW5lIC0ganVzdCBt
YWtlIHN1cmUgaXQgaXMgY2xlYXIgdGhpcyB3YXMgaW50ZW5kZWQuCgpzbG4KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxp
bmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
