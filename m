Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D2285EE954
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Sep 2022 00:24:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 64F4560B77;
	Wed, 28 Sep 2022 22:24:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 64F4560B77
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664403870;
	bh=uh4cwb6ukAC/a/RhKhfPas/qSF+qyFWJxHNC7r4WVRQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xEGIXQ6r6Nytur8k62oxCnp02cZPy2mjv6oPxn/OwnyRGLJV7DcXtMOW4bUBev0sg
	 0CT3r2Wobo4kZ6Dlthw6dTi6oR2tifIQxXP8o/Zi82pTMBMoGGDxFchMRWGTr7lSmN
	 GrhXBXjQGWF6zgsK0TEdOVC3Cm2Hj/7eARLf0f1B8jQHWRCIAfdsHuBq8G86bAXTqD
	 TYKH9d37Ia1Uk7cXwyL+T1KnmrYmWKLEt7gWnkD+4vzNnFUdzc05nYTcqbWUuIXl+0
	 XHgVEmMhB8HpWkhpeAsh1hg/C3NXK/N1iKjp2/3rp6osm6mtwbZ+bUGW7QRPocQX8S
	 9ZiznPiwLGQbQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 23uLLgQO_2cU; Wed, 28 Sep 2022 22:24:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4401C60E9D;
	Wed, 28 Sep 2022 22:24:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4401C60E9D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 794861BF2B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Sep 2022 22:24:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4A29760E9D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Sep 2022 22:24:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4A29760E9D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pJQSU52pJUFh for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Sep 2022 22:24:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D469560B77
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D469560B77
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Sep 2022 22:24:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="365777249"
X-IronPort-AV: E=Sophos;i="5.93,353,1654585200"; d="scan'208";a="365777249"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2022 15:22:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="655303356"
X-IronPort-AV: E=Sophos;i="5.93,353,1654585200"; d="scan'208";a="655303356"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 28 Sep 2022 15:22:59 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 28 Sep 2022 15:22:59 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 28 Sep 2022 15:22:58 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 28 Sep 2022 15:22:58 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 28 Sep 2022 15:22:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mxs8IGhTyaLmK2x3tu0GOBSd1lFZ/nEgqJd15r0oaZlhQ/UBqIPA2Y5XrqWBV/uF/pL8XT4kUYxK+Qgep7QmFcrxf6nGbS5LRyK0wIp/BQaajVLS8OHJVUtgK8GIHpuiVcrl3r2YTqT0WQdo4hGq59iTim4HUukKUJ7zZODx/mF5uhCmswEE+7MDNbJqyl3P0OZIF+yHTzhYJXUfShcXuRe+Bu5FeajAl/X2l0GsmWrK2A89Sg90iXdxpQPts7HR15hDEJ3DunJfUVVLmkBP8dnF9RV0VfY2ZPDruDiMSNBG3u2LTWIYh389UhxDrPExwnc9m6LcgqafUdqLhOtp9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bQzpAbkCi+T0lgTwvoD/o2k1YdO2++vCP5An7/JMYZI=;
 b=U1V7GUpz0tD+u24GBX1BatMlc+6wkhlpQw7xGp+ajO2dwu5NQeyFGKfQtzgTBgKjkoQhjXgFXq0Vidhmg8BT/aoCx9uReD0aKlTDBnBISIwhOdAYRGzlHNm4NO1i5XuBeFq0W5ODX8RIyvNt7DOvL7HHDx3ZFPJDmXQTT8zp+5eSh1G7MNegymygy0veIqubL8sJEQai/N8o0xVM426Klwv6cDwIzSktmK8zvhqdWQArY+kFhnPXEm6TDv9jTSv/xARApCXMRNxgCK7vx6VZyFS3z6ZsyoenbV/vs+bGZG3zHUFFXwO4j+Yth+r4HdmTbzhYN5YvWqY4K/gh7GV++w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4764.namprd11.prod.outlook.com (2603:10b6:303:5a::16)
 by SJ1PR11MB6178.namprd11.prod.outlook.com (2603:10b6:a03:45b::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.26; Wed, 28 Sep
 2022 22:22:56 +0000
Received: from MW3PR11MB4764.namprd11.prod.outlook.com
 ([fe80::e82e:c89f:d355:5101]) by MW3PR11MB4764.namprd11.prod.outlook.com
 ([fe80::e82e:c89f:d355:5101%7]) with mapi id 15.20.5676.018; Wed, 28 Sep 2022
 22:22:56 +0000
Message-ID: <2c389697-0c85-26b5-d006-935aa5c1e0ea@intel.com>
Date: Wed, 28 Sep 2022 15:22:54 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Content-Language: en-US
To: Alexander Duyck <alexander.duyck@gmail.com>
References: <20220928192730.809441-1-anirudh.venkataramanan@intel.com>
 <CAKgT0UdptMUmZhTg04BgiMaAPnfHCuKJYRPSG9Zr6oAykFZwMw@mail.gmail.com>
From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
In-Reply-To: <CAKgT0UdptMUmZhTg04BgiMaAPnfHCuKJYRPSG9Zr6oAykFZwMw@mail.gmail.com>
X-ClientProxiedBy: BYAPR05CA0006.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::19) To MW3PR11MB4764.namprd11.prod.outlook.com
 (2603:10b6:303:5a::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW3PR11MB4764:EE_|SJ1PR11MB6178:EE_
X-MS-Office365-Filtering-Correlation-Id: a5a0dd18-75c1-482e-275f-08daa19ffe56
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JnSt8OMwqpNVYXHbg5Dwxpx55smBm+8a9pKuyKK+FWeyNpX/PrLIcxbJVYRdaEqOQq+r/KXkitHWWG9zKSauCgCIKvYIJBPg0a9Oog2b6O8Y3U2LlQq9jvlCIBHfyN3TgEVhuqxBNfGgXtJ9lfxRXs0BCmg1tIhgg7X6O8f65sguzLzpvtnB15QALqJUoNfI1ONE+16AFcKKAaL1+fFh/6a8f9BFzmJjD0dIqj2uPsKuyYeM8IxFEJYaqMSTBaqS4qbv9V4dSUAz0DRh3g8S9aVlThHm0ii9QbU9aGHmHzy6Oxg9Qx/O1qPsLU+TGkGMj4fM88fmOtEADaXMt1aH+KKAkf1WS+7H8BnVBkMLZxvGOAGBQHaBU/8BA44BFwPp6KBdetqa07gUANyPVpoL6Xx4frdmEyXJxZTdqKY5/UiuMAU5Jr/Dut2tbnNHjEfxbfrS/4xBjPbbm4FuFyx888o0+QOxMtqQ/gIcIvSOhsGEu+TDkBPD4oK3J9CEC0E6/e00D1xkvyT9HLkkMBCDvYYqudhJ+9mFm9JOQ1/EfsvPVXT84GjfAThHaz5vyAeizyeie/nfUGOTSXVNeFOltjucwmZZi+WQnued9azgRl/IVc2VhuHJppp/ZSESS5v0VMZK3dIX3SOPtdCu2Vs00sA0oqN+LtK+FW7FLLlelD8Fh9J9ix8INMljNO5P8PluOuyj2zcuTFd7vBHU6NICkW2PR1NImoFqJ91bugcBvgQ8H3yQ3PndzdyoftWB/iCZdYH8Oup/RUMtHA95yAMJS/XilvLtzeaGP0EBBoMZVvk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4764.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(366004)(396003)(376002)(136003)(39860400002)(451199015)(4326008)(26005)(2616005)(53546011)(107886003)(83380400001)(6512007)(186003)(44832011)(2906002)(6506007)(5660300002)(8936002)(6486002)(478600001)(41300700001)(66946007)(66476007)(54906003)(8676002)(316002)(6916009)(66556008)(31686004)(86362001)(36756003)(82960400001)(38100700002)(31696002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RTVKdXQ2QVVmc1EyMDM5N2xJZ3RwRjFGc1BqNlZlQzF4S01ZZmtickN4MFVu?=
 =?utf-8?B?Qit0ajZxL21jYmVUbnpEWGIrS1RLZlA5Q3RSRmJvd29HK05SN1Vna3lOYXlH?=
 =?utf-8?B?WlZDdHpxL1c4bTdueVRYSWQya0hCVDE3eHMrRHIvZTl6NGJ3SlQybDVsNlRF?=
 =?utf-8?B?UmlpNEQyclRDZlNndWMrVC9BWlgxOWZydjZXcG5YYkFkZnNGM3ExTDdpOXVj?=
 =?utf-8?B?ajFvTjQ4WkFPc1g2eU84RzE3RUs1RENLLzVWLzdWcUhTSTZFaDYvNDNmYzNz?=
 =?utf-8?B?cWJLdmhHV3hENTFKdW1MVXA0cU5SRmFJcHl1bit1RXUrRWtIQ25UR1BLRlRG?=
 =?utf-8?B?SmlWeUpWdWpBSER6S3pJT0xqcVFiUWQxM3RNeElXWmxzMXpkRTd0Tk9xQ1R0?=
 =?utf-8?B?bDlvdjJ1cjZvdGtSMHdwOE5mWUtiaGFMU1Q1WlhFb2pqQkR2ZlVESGJiTDBR?=
 =?utf-8?B?SlFIbTRIYWIxeEJCSWY1WmlxN0dtZ25NRFNqS0M5OUlPbXBnRGt1R3VwYW8y?=
 =?utf-8?B?T1hwMEFTdnlTUm5GM3dFV1QzUUJVbldWa0xyT1JPeFBkYURPelJldXQ2UzJK?=
 =?utf-8?B?VFptbWJuSTBFTytYY1cxOE50TUo4ODZURk1zR1EzYm8rOXZ3cDAwTEtDOWE3?=
 =?utf-8?B?T1ZZOFdZRUNHUFhWamxrcHlqbW5XN2lUVnBGVXZ1SC9FRmdPZ0ZNTU9ha3NB?=
 =?utf-8?B?MVpMUDd3K2o0SCt1Rkd6dk5yNHFWTHVPSEl6OCtpdWluVXdaelNQTWgxemNz?=
 =?utf-8?B?RU1FRDQ0dUY2SHFRNW9hckJtT2RZelI3QjE0NVFuV281MUhNZy9DVE0vaUZM?=
 =?utf-8?B?TGZnNHZEajhubmpucXBJclNkajBOTE1hM3cxMEt5SWx3akd1cDhKUm8rdk5Q?=
 =?utf-8?B?OVlNd3JXR29wdHNxTmlmR3crQXJLUEg0WGxnQm9hWG5UWTljek5CNUg2Y3NR?=
 =?utf-8?B?czZWWEFTa2JkL1dnSVJHNnIrR1hORm5KVlpmVnc1ZlRJdGxnQjhsbDEwSGFR?=
 =?utf-8?B?Tyt4djlpR0dZRDB3RXRVZVFBWWRseEpiaGkrVzd3Yi9mNkdQQ25Fbm8xWVdT?=
 =?utf-8?B?RWxEb2hpVi9mT0ljbXRtOER0ZkkwczcrRnpTQ2ZlWHhzQUR4U3dPTy9TK0dY?=
 =?utf-8?B?eW9vaFNBYXdRTzRzUkFlQURSSlZIWmdid0VaVm5ycmp4eS9wUE1NSjJxS05z?=
 =?utf-8?B?QU0xUTgrUktHWnF6RjJqQXYwcVhHVDF3amxjdlR1amJGVWRHNjU3V3NVdXF5?=
 =?utf-8?B?TWJraUh1OU0rd1NRSnBld044c2FyT2Z0bTQ0OWxabUt5RUhqMkkrNU1TTnNs?=
 =?utf-8?B?Z2pZRzg2VXMraFMwd0phR2VWWVNZeThDUHBITlQ1ekNxOE16OStNR1cxbkx2?=
 =?utf-8?B?QSttajNyQzZ0Q3VoeHlqUGxXVFplMnY5c1FQTCtjbkhWWERqZmlYQXBjaVBR?=
 =?utf-8?B?MVMzaXlPczQ3NlNjNE9ldWsxQ1A4SkJxWE9RSEViVjduQ1dqWmJIUlBXbFJL?=
 =?utf-8?B?aXRZU3M1bnhVNkhYOVNrekx5U3g1ZGc1SHBsU20vMHBEV29BQ05nSy83K1ZJ?=
 =?utf-8?B?Qm1lSWZZMkc2RmUxUDB2aHBKM0hUam4wN3pCSmEzVmRQazBWZzNXLzdkRWR5?=
 =?utf-8?B?SU9JblNHRTZVRGtjVVFGZ2NMMVp1K3Z5YnZhMmxWVWd5TVc2ai9wVU5hVGhr?=
 =?utf-8?B?a1Rscjd4bjN5SmFteGs3WlNEUmtzeVdXT25sTFFxRVEzbDZtMEZxSVovYm1D?=
 =?utf-8?B?RkZEWm92c21ENDNPY0J0QW1BS25uYnBvM3BPQW5VNEFZTmlTVERjYUlEaXFR?=
 =?utf-8?B?MTVPQ0FFUE9oM1ZDenlxMW81WHAzVmE4WlpOUzFkclFoK0w1SGRvcUdFNElq?=
 =?utf-8?B?UW9BeGNhTG1HSDB4Z3k2dXZZOEF6Q1RwNlE3RnhNNlE2Rkd3YlJJWmFubTUv?=
 =?utf-8?B?dWRKQk5lMkRLd1JKZlorMGNiUVFzYlg0aXpVTDRWUlFiVS82L2thbGZhemhZ?=
 =?utf-8?B?dkhiekVMbjFxSHM5YUNXdFdOZmUra01yR2VlM1RsSnVvT2hBbjI1TnJlY3Vl?=
 =?utf-8?B?RnEvTU91NGQ2S1ljcEI0YzZNM1RCek9WMnVJT3dRT2lFdURXQ3dTZ1RwMUhC?=
 =?utf-8?B?SXdUYXR2YU9YZ0U2Mkd1aEJDS1JGdGFpUjkvaVFZY2VnSVlzWDhmVFNybGtQ?=
 =?utf-8?Q?hsAIgdBNuN5g2EeoAJ/8u0I=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a5a0dd18-75c1-482e-275f-08daa19ffe56
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4764.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Sep 2022 22:22:56.6683 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xe7n5qGbYucsWBMLTGPqh2UPN6znP4aR1VN2ejfQzwDDJEOkohKTizGtSm0xNjW9mYI9v75YZrewXZFZleS9xBbVDIR+v7SpxGGRTTWuQ3ls3A2uUnklwlT5l+RjMbQp
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6178
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664403861; x=1695939861;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dYSP8bCBC3Dh6Vc08fcrKzi73onm3KiQJQf+6VsU+Wo=;
 b=L5mQYCUJP23S+cFq/+Gy/FG5lcALG3viPSJsUru1m5VWs8933wcqjRpr
 krICxEXdGEykLx/cqL0rZtQbWPGsTe2yHVom9QsSrKD7Ng5HXKxU20+oh
 cSxdHMyOODTQyKHGSfEirGQpdh6dDMbNNbeO9dGZe8aoXzXK1tVzR5AeA
 RwQsMWSg1+TPJpmhK7n2HBvHVVo4UrWlGERHNqfz/bFqRNUjPEvP2h5Gz
 wuAHdYcFfRY3R+pHWKnmQZuqEksl9PUA/bVXKfDCEUHvddWtvd4jvbPHW
 CGUhUZBEuQKcBZgUbw4OWOBtMaabe64NFBlOxIbSjr5FfqQJ9gcaL9er4
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L5mQYCUJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ixgbe: Remove unnecessary
 use of kmap()
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
Cc: Ira Weiny <ira.weiny@intel.com>, "Fabio M . De
 Francesco" <fmdefrancesco@gmail.com>, intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/28/2022 1:40 PM, Alexander Duyck wrote:
> On Wed, Sep 28, 2022 at 12:26 PM Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com> wrote:
>>
>> Pages for Rx are allocated in ixgbe_alloc_mapped_page() using
>> dev_alloc_pages(), which does the allocation using flags GFP_ATOMIC |
>> __GFP_NOWARN. Pages allocated thus can't come from highmem, so remove
>> calls to kmap() and kunmap().
>>
>> While here, also remove the local variable "match", and just return
>> true/false.
>>
>> I wasn't able to get a hold of a system with an ixgbe NIC to test this
>> change. This is a pretty trivial change and I don't expect anything to
>> break, but a "Tested-by" from someone who has the hardware would be nice.
>>
>> Cc: Alexander Duyck <alexander.duyck@gmail.com>
>> Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
>> Cc: Ira Weiny <ira.weiny@intel.com>
>> Cc: Fabio M. De Francesco <fmdefrancesco@gmail.com>
>> Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
>> Suggested-by: Ira Weiny <ira.weiny@intel.com>
>> Suggested-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
>> Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
>> ---
>>   drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c | 9 +++------
>>   1 file changed, 3 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
>> index 04f453e..90c0e0b 100644
>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
>> @@ -1960,20 +1960,17 @@ static bool ixgbe_check_lbtest_frame(struct ixgbe_rx_buffer *rx_buffer,
>>                                       unsigned int frame_size)
>>   {
>>          unsigned char *data;
>> -       bool match = true;
>>
>>          frame_size >>= 1;
>>
>> -       data = kmap(rx_buffer->page) + rx_buffer->page_offset;
>> +       data = page_address(rx_buffer->page) + rx_buffer->page_offset;

Okay, Fabio has already made this exact change and it's currently in 
Tony's kernel tree (next-queue:dev-queue). I missed it because I was 
barking up the wrong (kernel) tree. My apologies for the thrash.

>>
>>          if (data[3] != 0xFF ||
>>              data[frame_size + 10] != 0xBE ||
>>              data[frame_size + 12] != 0xAF)
>> -               match = false;
>> -
>> -       kunmap(rx_buffer->page);
>> +               return false;
>>
>> -       return match;
>> +       return true;
>>   }
>>
>>   static u16 ixgbe_clean_test_rings(struct ixgbe_ring *rx_ring,
> 
> Rather than bothering with the return true/false why not just return
> the compare value? So it would be:
>          return data[3] == 0xFF && data[frame_size + 10] == 0xBE &&
> data[frame_size + 12] == 0xAF;

Sure, I can do a standalone patch for this.

Ani


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
