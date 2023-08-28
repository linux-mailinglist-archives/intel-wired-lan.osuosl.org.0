Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A35F778BB24
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Aug 2023 00:46:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 39D7760F48;
	Mon, 28 Aug 2023 22:46:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 39D7760F48
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693262785;
	bh=imQaf1EZWRi4xFWNYMCd/0J+lyYg8J3X+MSARoqyEjM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pQ+cyfR+HJHYqUNiGvIWmjJXA1faMT3pKrEOkCHvC1TUZqlQrT9J3I2Lijo/cYPlb
	 1U5lfA0R92qgXKrdltqt242EsVbS+m8qxmquzgR4sZgIILO6sMIhBX0msFfaefJ4fK
	 tB2jjyGQP9GfLmZWhYbqaDbuWeznqho5QUnda8bqAey3Clse6BJRUCAVQT4bVH+eMx
	 dN7cNyIFRZQOFUSUNJo2ABarQqVautZZzjfmUzHSIHa6iia5YMy9JnFDfw4q0Gt+qA
	 rP9b5UzynO8QS3/z/+4SmmwZj0robFj/W1ugvU8AS5jO1KYX2TyMuo8J2RieBDSuss
	 1b/BRAcd1Tv3g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YthoYO9lUbp6; Mon, 28 Aug 2023 22:46:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1253760030;
	Mon, 28 Aug 2023 22:46:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1253760030
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EE3441BF4E3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Aug 2023 22:46:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C52CC60595
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Aug 2023 22:46:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C52CC60595
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pBCx3_5BIoTw for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Aug 2023 22:46:14 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9A23560030
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Aug 2023 22:46:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A23560030
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="439171236"
X-IronPort-AV: E=Sophos;i="6.02,208,1688454000"; d="scan'208";a="439171236"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2023 15:46:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="738430446"
X-IronPort-AV: E=Sophos;i="6.02,208,1688454000"; d="scan'208";a="738430446"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 28 Aug 2023 15:46:13 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 28 Aug 2023 15:46:12 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 28 Aug 2023 15:46:12 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 28 Aug 2023 15:46:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Yg+gR6Ad+b+xKLmksNWgsJXBTmHG+Je6yVC4b4qUtaJra/wOD86AkcWGiu/FZR4U4Gnp2VLk0wYXxRcUFLyl6R+46zuIz/VB82INCEzhoDG9DQHgNqmxoNlieF7sMDqAHTuBXGEJfzXxKAMVZGC1VR7L+ecuwOZ9vM/wxzYz2DjBult/92q4XF7s9UUaSqAXn3l88B7CH1D0o/ZfP40fUcx6D7ilR1BcpZI2IeV5u5Q80fc+QXrVQi9rVrxWORa+9J8NS+aWxxQtfC14TJLazhE8C7nh0HhYi7rc9XjoZ+YFiEx8egKIMATzt1XE1yi4tOUDd4iw9dpWkN3UH3kKZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mHB09LEbMycreT2O012eGb/9zAUDwbXBK8PuUZ4YQKQ=;
 b=A7BpCwoXDIeadfB2/3gZFZJ20mxhN41fKlxvGc9UvPdvJyJd1OYWuqCRs/OIup5U6H71az2Ll50sQ6hixLbP1+oYXkrzai1gtrvjJUYmoXxoOVgImtfvyqLgy+e5oXR5MMJ3MU8vDzFt3w6Bnx+lq5LQyw2pUEg29F+Gx10OhgecHuqR903Loc4ZAmIK/9SG36N0+DMNVYYtYWooHHJw26PLEsQ5G3ipeaH+WEVCyV9eM6PNKfrlcz4QfPKFFl1MoMSZJeb8bWCLV9o3fgSlQOu86zSaq8lCVaTTahHQ0bVbP4BmsXtByccUY7qDffJcej+fo4NWtvHR+z5qksPfGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3175.namprd11.prod.outlook.com (2603:10b6:a03:7c::23)
 by CY8PR11MB7036.namprd11.prod.outlook.com (2603:10b6:930:50::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.35; Mon, 28 Aug
 2023 22:46:05 +0000
Received: from BYAPR11MB3175.namprd11.prod.outlook.com
 ([fe80::4536:8199:4bbf:131f]) by BYAPR11MB3175.namprd11.prod.outlook.com
 ([fe80::4536:8199:4bbf:131f%7]) with mapi id 15.20.6699.034; Mon, 28 Aug 2023
 22:46:05 +0000
Message-ID: <5aed9b87-28f8-f0b0-67c4-346e1d8f762c@intel.com>
Date: Mon, 28 Aug 2023 15:46:02 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.14.0
Content-Language: en-US
To: Jiri Pirko <jiri@resnulli.us>
References: <20230727021021.961119-1-wenjun1.wu@intel.com>
 <20230822034003.31628-1-wenjun1.wu@intel.com> <ZORRzEBcUDEjMniz@nanopsycho>
 <20230822081255.7a36fa4d@kernel.org> <ZOTVkXWCLY88YfjV@nanopsycho>
 <0893327b-1c84-7c25-d10c-1cc93595825a@intel.com>
 <ZOcBEt59zHW9qHhT@nanopsycho>
From: "Zhang, Xuejun" <xuejun.zhang@intel.com>
In-Reply-To: <ZOcBEt59zHW9qHhT@nanopsycho>
X-ClientProxiedBy: SJ0PR05CA0117.namprd05.prod.outlook.com
 (2603:10b6:a03:334::32) To BYAPR11MB3175.namprd11.prod.outlook.com
 (2603:10b6:a03:7c::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3175:EE_|CY8PR11MB7036:EE_
X-MS-Office365-Filtering-Correlation-Id: fac12262-5681-4cf6-bfeb-08dba818901d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xqMhqw0jNsNTRfUWpGhSbIRbD+QgPC/h1f5VufMD/pEztyIoticp//XDIYCYZVBwwW4fxvwds55EBxFdTGCYe/sq/z4t38RzibqXueHLpnsJWlOjsE1KkbjDA+kqGTbx9jKbRz9K/mMBteGGj0QtT404A8h66qaZ1grL66MpBQYVi9XNTsSyUJy9J13Ejaqthv076tUAm5+Ayy8I4ssxHtBTmTpL7+3ipasTSJgBacG0Ka90KJtEj4vsVFNZGpRPZCPgI4QuJHCeX5z2P/5ivtHGJlqDQ4IO3tdAmK0Yx1JaFpdW7HnUcLmm+fMx1cFVnqCrO5/Uu6HR7EAdZnRu1x5kDKHpeHJbcj4z/OOAaaeQA1phIZzNuzFpwFY/VpfXxLNesMQWJAPYoXnYD62Fn4dXIltEf/6LNho3v0pu37Pw3pWVi0hMxX5nfsMuxZfvyCNfJnmz18Ivgtiewv4ksDjESP0fPQJEAP1OfTpMqJNUmHa6baHwUHQWlpGcj2QDAkEnJioaLXEZT4dcX8vOe2W3AJNfBRbWI6E4wZdWojU9PyhPuqi4YflfaU8DS7icrd8Xx5Ep7RRjtgylcg9g7oSU6nx0m3t94Pa1gOjPUcwfFbPqLKed5fgfV3Pmg4vf7odP4KT1F9k1FKpDgy7NBw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3175.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(39860400002)(136003)(366004)(346002)(1800799009)(451199024)(186009)(8676002)(8936002)(4326008)(316002)(6916009)(2906002)(54906003)(36756003)(66476007)(66946007)(66556008)(5660300002)(31686004)(41300700001)(6486002)(6506007)(53546011)(26005)(6512007)(107886003)(2616005)(38100700002)(478600001)(82960400001)(83380400001)(86362001)(6666004)(31696002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cTZWanM3TERnbURKUTJSRGVoZjdtUGF4aU55RDZ6S3BkdHpoQXlrYWV6N3Bq?=
 =?utf-8?B?K1hBWUo4elMwWTFPKzdpK0cyTGxUKzl3endiZ29RRE1XTnJVVytwaTZLOUE4?=
 =?utf-8?B?d2pMTzJ5U3ZBQmZGcmtiSVdSRFVwTEg2ZTAvRW1FYVNLekdPZVNVWFk2OXJW?=
 =?utf-8?B?b0VIcHpDa0czcjBSNUNtZjFIV2w1aERMYXBrMDU0YjZ3ZVdRUmhObC9WdjZB?=
 =?utf-8?B?V29iY1dJZTF3amJSSXZWeEVWdWxibUpkM1hZV2NQZGpqeFM3SWhKU2g5WjBj?=
 =?utf-8?B?elR0THU4RERoZ2pHYnRuT1h1UXFEWkRwVHRRSWJ1RnFpaGhhcWp1dG9SOE14?=
 =?utf-8?B?ektZQk9nZVJSWEhxK29SV0RTNlBPOHFQVmlUMWo5L0E2QzhXNzBncjF5QlEr?=
 =?utf-8?B?d1orbjAyU3dyenROVXpzU2tPeDFzS3kxVGJGeTMvZEFOVXlpQ2hXeFEwVmE2?=
 =?utf-8?B?OHk3dXkydmt2MGJoaUdyS1dMWEpETjhGQm40V2E0OUh4QWRwektreVpncjZJ?=
 =?utf-8?B?YUo3SndBaGJPYjNIeFBZWWZrczUrRWh6S3NBU1RodmpFUHhaNTRLS0FQMmhK?=
 =?utf-8?B?RjZzSVFtZEsyblhxem5aeGtxbWdFTVRJRURYM3F3aGpBazBteG5DUnQzWkZJ?=
 =?utf-8?B?c2R1OFZVc051MXY3UWhwWXY2eCt0VmZic0NodC9oRUJlR3JKWVkzeGl0bVBT?=
 =?utf-8?B?V2YrQXIvZkFXNHpSTXJJblZ1ZkpJbmZ6SXE5NnlvalZGYzBnTHZKN0RrZ0RB?=
 =?utf-8?B?WXJhM0FaUmlYa25ZNVFUUzlZTWlHNUJVc2lsTHdXOFBJWkUwa1cwRVk4eWxz?=
 =?utf-8?B?S2hrK0wxWlF0VUlGYXlBMFpDeFh4alpndzdBbTQ3cUtBRzBIempGaUp3YXJG?=
 =?utf-8?B?TVBMZnQzeG1KUXR3ZFRRcUtvam1ETElUNG9ESVNUNS96N0xiZlliaDVHTDhx?=
 =?utf-8?B?NjZabXhXRVVIZG5KUjlGWk9TR2FjeE81MkRoSHloQXNuaDdEY3pwam5NeWVy?=
 =?utf-8?B?Z2tsRGZCNlZVcWV2UG0yc093ck44T21VN2F2eEVJZDY0aTVtMjVIMFdabzk3?=
 =?utf-8?B?T2srYUhEemVEeTRWNTBQamtTd2pjWTFkU0l3OVhyc2w5N1JyZVdYaWpIcjFB?=
 =?utf-8?B?TWhOakUvZ0U5cC9qQjdLSWt6VVE4MDc5VGg5NlgyT25wcjd2WGhMdzhlV1Av?=
 =?utf-8?B?QXlVMnR2RmN5VEVFdlpybUtMcWJQai9UZTExYzc1ODh6ZlBaQmlwZVBjZ2w2?=
 =?utf-8?B?TEwza3hPOUpXWjVJQjlZd2VkMHh2NXJnT0MwRGFUTFMxRHhlY0tuc3RKT3c0?=
 =?utf-8?B?andvRnhXZmhoMndVTUpwQkoyVVc3OUU4aWV3czlRVVptVzVvTmIvNkdnb3dP?=
 =?utf-8?B?cjkyTjY4NTR2alpRWExOdFptUDFXdjl5VTh6VVd0bFh6bXpsTHJtL3VhaVpa?=
 =?utf-8?B?WHZYejFPYVY4WWY2S0xpTVF0UFRzY3FaazgrSTQ1czdQZTJYY1Q1RUQ4VGJr?=
 =?utf-8?B?dzVpblQrTUREWXJyU0t5V0hOQlZmaDFZNE1FU1o5NkQrdmV1eVlvNGhjU09H?=
 =?utf-8?B?ZVluL1ppd2JIQVMzTmx4MEVuWHYyeVIrRDAzWVJhZ093ZHBYdEhxUktoYkhI?=
 =?utf-8?B?a21XNWIrTDkwMGwyVWwvbG9vVDFoMzVRN0lTL21GSi9GZ2lsQ3duZnl3ZjlP?=
 =?utf-8?B?cEs4MXNHc3JOMEFFblRuQkpGcG1jV2RIOHdDdTZHMDVjMEJYSFRPNXkwaTNJ?=
 =?utf-8?B?M282U2paL2NBN1hoMSt4L0RCSHEwQ0NUcVpCczZsV1BqeGZGSm9HMDZHdk1z?=
 =?utf-8?B?NDBheW9XdnZrc2c0dDdaT1RjSDZ2VmtkTmVkRDlxZjBGSkYyV2pnY2t0MDZz?=
 =?utf-8?B?K0xJeU42cCtFSEk4Ym8zMjZpd0FvVGY2TU9BQU9lMzN2OHlZUjRLbmF0OE5Z?=
 =?utf-8?B?M2tpNjRhZG9ldzNvMFZPaXRTdjJJWGpsRWk0OFlNWGZWbThSdjQzSEpBZVRW?=
 =?utf-8?B?YkdtK3g2dFl1ZWJxaWRVZ1NJS3ZMbXd0OFMvVlowWlV2cUdmR2cyUGF2Rzdr?=
 =?utf-8?B?Uk8vNU9wcFR2cEdndmh6dHN2M1p1YVM1ZDdWRTN6Y1d0QkxzSC9vbTRTU2I1?=
 =?utf-8?Q?MI7YVyGE1pCZUP10Nii9G7OsI?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fac12262-5681-4cf6-bfeb-08dba818901d
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3175.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2023 22:46:05.5596 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wurTYSgOKX/0ZXnC4sF+brtU6H8lZhZP+b0KCB/G9hyOsvC+SHhoQ+3h3uWcCKB377uj9n9iSyBis3d+VGpA7A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7036
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693262774; x=1724798774;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6Idcp55Rn483BxEVZiEpKv0wwc6ABwBxBfREFdS1qEo=;
 b=KlVjQ2DW4L4U69EAP4XZC0WJAbXwRgQZV3o9176i1pM509pCKwUb7/8G
 rOPbF50Z0mJxe79pxzkT6Pkzg4sW6BDOUgHmRvEYVeQwJSqrruy/V7W/Y
 y8nTGdb5wYm3hXB9dLCZY+UamInzP2jKOzFoNwr2hhthQ4z8qJTmRapjn
 vSR1J7X1JyhtTyd6FS7yyCcrWUPnmc6Zd/zvAQc3lEIt7DICEgXFxm79S
 t0qpepHW9flD75xLs3Ji0iLvU9HBA9mbCs5wqwtROz8euA0NFHn7TBGpc
 PxYOFQwrspCbeHthpAYGXefkjBj1H6+NtQ3GFt89qwsPQos9ItOJifcWP
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KlVjQ2DW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/5] iavf: Add devlink and
 devlink rate support'
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, qi.z.zhang@intel.com,
 Jakub Kicinski <kuba@kernel.org>, Wenjun Wu <wenjun1.wu@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 8/24/2023 12:04 AM, Jiri Pirko wrote:
> Wed, Aug 23, 2023 at 09:13:34PM CEST, xuejun.zhang@intel.com wrote:
>> On 8/22/2023 8:34 AM, Jiri Pirko wrote:
>>> Tue, Aug 22, 2023 at 05:12:55PM CEST,kuba@kernel.org  wrote:
>>>> On Tue, 22 Aug 2023 08:12:28 +0200 Jiri Pirko wrote:
>>>>> NACK! Port function is there to configure the VF/SF from the eswitch
>>>>> side. Yet you use it for the configureation of the actual VF, which is
>>>>> clear misuse. Please don't
>>>> Stating where they are supposed to configure the rate would be helpful.
>>> TC?
>> Our implementation is an extension to this commit 42c2eb6b1f43 ice: Implement
>> devlink-rate API).
>>
>> We are setting the Tx max & share rates of individual queues in a VF using
>> the devlink rate API.
>>
>> Here we are using DEVLINK_PORT_FLAVOUR_VIRTUAL as the attribute for the port
>> to distinguish it from being eswitch.
> I understand, that is a wrong object. So again, you should use
> "function" subobject of devlink port to configure "the other side of the
> wire", that means the function related to a eswitch port. Here, you are
> doing it for the VF directly, which is wrong. If you need some rate
> limiting to be configured on an actual VF, use what you use for any
> other nic. Offload TC.
Thanks for detailed explanation and suggestions. Sorry for late reply as 
it took a bit longer to understand options.

As sysfs has similar rate configuration on per queue basis with 
tx_maxrate, is it a viable option for our use case (i.e allow user to 
configure tx rate for each allocated queue in a VF).

Pls aslo see If adding tx_minrate to sysfs tx queue entry is feasible on 
the current framework.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
