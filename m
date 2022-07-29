Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B017F58552D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Jul 2022 20:55:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DE26940C4F;
	Fri, 29 Jul 2022 18:55:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DE26940C4F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659120933;
	bh=CqOBDvqshLFuXaWE/m5gr5TgnE81krS+L/lladoLXUY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=da6auAfx5UK6V2d0XBP5/jOoefDHwXe4BzAg7+nHPEsPuLLyQBdYciBhpGC7jeRgj
	 RPjN3kLHIj2ua2MHmsPQ5dXmpQbYVifzKvVNmce4l9PnLbFJxG/nBUDJhk0i6pJkjy
	 k1WtFNlxpavfkOsREBjHyefs/SBRtdj1sdQzIa6je7qQmjcZ1Q/DCxTdVGrkkeJHAv
	 Ll3d0TQrXwKKei60TbMA3THsoJZJBbJHOO0DTxwrAW8DFB3TcREXKdLNSNaRsDjvqf
	 hhoRiyXhXerKxApk+bZh/ifAa2faNecKYHwpREq83VaZGgffqFjVHeMj7SIw9mLwPr
	 zYGElZlpwNk2A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b78_qocBP8n3; Fri, 29 Jul 2022 18:55:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BD1DD40C4A;
	Fri, 29 Jul 2022 18:55:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BD1DD40C4A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 765F71BF575
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 18:55:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4F79960B05
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 18:55:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4F79960B05
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZuVAB3C8-EYU for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Jul 2022 18:55:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6FEA260BD9
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6FEA260BD9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 18:55:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10423"; a="268596917"
X-IronPort-AV: E=Sophos;i="5.93,201,1654585200"; d="scan'208";a="268596917"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2022 11:55:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,201,1654585200"; d="scan'208";a="577049199"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga006.jf.intel.com with ESMTP; 29 Jul 2022 11:55:23 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Fri, 29 Jul 2022 11:55:22 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Fri, 29 Jul 2022 11:55:22 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Fri, 29 Jul 2022 11:55:22 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Fri, 29 Jul 2022 11:55:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oTy+mt418tAU3zOUuSPZMjmdX12JbBCh8dKunYQBCiolWsYnsbzJ+frb+875xzXxlmGb9WnruGnlkLjmEYZCF28NBtX/Ajiud81mrhK0rVFvtzo7gPiGqAave042ELoQnIgh84WmEJvCG8iGZPJL8+QtHXR1HnEBxMsPcszmXZAB4cmDclNv1P4miw5vk5wdbXXMjo8lJ0tqxfQi18rFg8KN4Jm4htAwW+TZZ4dawVrTXXJRMrJtXhs8VXDZU0ANQ6svaB2qMn/Uc2yFlgNTghpSfAVOCtUk/Ak/D1VSNaUJsyIlLKzuvpH7gRaBZ9HD7DzOnksLJiAEuRPlRt8PxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SqNo3rdYGyie0r3WChxiNY3c/ZnATi09+xCkpK28hEo=;
 b=l9Ws/XKrtZF3L0aS5aWE7VcjBloeR3nISOK3w53Mb9tgyldP26O1U6lpIi4WO8KEXBA6105tu7YIWZ6Sr3U9CqZCHKgQyb8/Wt6JH1TgdVGVB0JwDj/zd5kQT4zhpmHZqHG9PoYlfCQwaVzwiIzm9/cqFk/R1pYCxS3vh3Y4ZFNGDf3V7xZ2FpSvuQ+djNx6XKHXlLIMdsimmg9uTS15HxiK9mFp5rsik3UbdTF1Oc1/SZStpyhitWryJ3h4XOIlM0/V2qWrG1WJqDRzeOP/krPeanuGZtvMquLL86dqw7kGLGY2wv9tIe4fa5EiMW4HMczz0zNzBcvL9qM1ksWb2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by BL3PR11MB5713.namprd11.prod.outlook.com (2603:10b6:208:350::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.11; Fri, 29 Jul
 2022 18:55:20 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb%7]) with mapi id 15.20.5458.025; Fri, 29 Jul 2022
 18:55:20 +0000
Message-ID: <5847d865-6959-9ff7-a92a-dffdc503b780@intel.com>
Date: Fri, 29 Jul 2022 11:55:17 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220728140426.664140-1-anatolii.gerasymenko@intel.com>
 <20220728140426.664140-4-anatolii.gerasymenko@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220728140426.664140-4-anatolii.gerasymenko@intel.com>
X-ClientProxiedBy: BY3PR10CA0025.namprd10.prod.outlook.com
 (2603:10b6:a03:255::30) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2c96ba25-ad33-43b0-5bf9-08da7193e2b9
X-MS-TrafficTypeDiagnostic: BL3PR11MB5713:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mmQwzbuR2QyQUJmX1ouqYe++nU7dF09LDC8Q3fsgIL+vgCAjrRB6tGbbXSB2P24csJzKNC4LoBxLQ/gXPykWAuRK++swI9okD3S0t5YYnioYjyS2AuTjPoSE46a/jugH/iFxjAzLcqHgO7G+cV6GopgJ3mupkDp2oZr+aKvmxcAo9ofEySNrSmysuxQ2T2dnJ5unqWF3djXlD8tAA7o8vA23qG4pjCGIh6Mqw5plkSN8FkHizyMRnakVz5Jz0eppc7GTSNRxp56rLlaLz8qRjQYqKdC4YWyJWOktT9vsFXLKMy1rFQIvIvA4v3lkAiR8gDuDY1D1wGM/s3zo15zair5d86WWNPO7GtdCjU73z7SFNkuyITsvI3sNGieW2/QMb8ECNP9jIoMz2F/93zAJw6pJ3pumYOQaZYksP2bFGGeR0GaANvnNacIQsRIsdl6NGu0uvCnGiZU9bUYHJ99mVBkszCezYt2WXaTpYkSJ2J7dHN8pN4eNh9fla5xYGul2a1MtBapsKIIZAfHclE9wkze0V8S8WNseAJe7EpslBO80JcHIaI9PiXSFVbdUIUmINr4IcICqrFKgw9ycWvSRUruiIgUsUuIT6PQec3nmV5Qj+Pl9bbirm0xVoTerYp7XGI5pYF5sHWWJV9dNfbDFkc7EdqHKSHbaYiGPca2LIpNyhX7S+QrfRWmMZUFmUL8HUkp55U5Z9d1Fr6NjXgFru2eikrQBkHNCPYhj8ZRKKILplu+Qu/rPgJvbIqDsz7VIg1KWij+k3LzNpvekzMAe6RQ5saNAceU980Q9Zvn30XxpAT9vw9euyUIkk8gZsr1eRmFwooOzSuWJUE2NRAdyWw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(376002)(366004)(346002)(39860400002)(396003)(26005)(6512007)(2906002)(83380400001)(6666004)(41300700001)(53546011)(86362001)(6506007)(31686004)(36756003)(478600001)(6486002)(316002)(82960400001)(38100700002)(8676002)(5660300002)(186003)(66946007)(2616005)(66556008)(31696002)(8936002)(66476007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZGpQRWZFa2tFcEFTOGFWcXU3RnNpeUZtZDFvR2s0MXA2eGVGWThaaURWMTVQ?=
 =?utf-8?B?SVllUDF0MkQxc3JpL1FBbndvOEtDUk5ia1U1MFJvOEp6UDdTVkJyb0YwbWtB?=
 =?utf-8?B?OFRGbEIrcEVqVFpyOUFRbkRQMDU5Nzgrbnk0QmdKb2ZxY2hQdzNYbFl2TjN5?=
 =?utf-8?B?ZjNHRzBCSXJLaWdxM1cwaFZOQVduTWU2d1J1Tkx3RmlJQWtyVVNycU1FM1U4?=
 =?utf-8?B?MUd5YnlTMEhIRHhxTVhDSVRRek4zck94ajViQnFYMWYvaHR0YUhLbWFoYkdj?=
 =?utf-8?B?S1J0NnlUQkhua29CQ2NZbmtEbnpXL2xpaDEvY2o0VC9VKzJBR05mUWpJTmRG?=
 =?utf-8?B?d2thMlhiNGJqb1RLYTFKR010K2I4eTNDLzc1eCt5MTdaUkFKOVpsK0N0TkMw?=
 =?utf-8?B?V1JyS1JVRWVoSFE2MWZicWN3SUkyNlc3VHpjd0h4S2tXaE04VUtkMWlQVnpW?=
 =?utf-8?B?bzdTR1ZDYnpHTVpQcWZMdzlUZmkvNjhuSVo0M1FlcTBXVy92bHEvbmp3YUdZ?=
 =?utf-8?B?dlZaRXRZLzJjT2czbnhsck1EU21RdnY0RGNxSWZRRWxvZmh6a0FlSmJWYzFO?=
 =?utf-8?B?RXdNTmhJR0pTcDlKWmx4SjlNa1NHbXh5RVBQM2NVdXNQKzRQSGNWTnpENE1Z?=
 =?utf-8?B?YkdVMDFyVEtlYXRNZkNsdVpNMVBZL1Fock1QZDZqNUpSWlFKRUd6VU82NC9S?=
 =?utf-8?B?MjZmMEo0ZkluWGtvK1ZLbXF3KzhITy81YkRZSzFqWTQ3SXd6NXpCZFRzWjM4?=
 =?utf-8?B?cFJSSCt3WktTVXZDazNXeDJDSlFCZFR2QnpFalRPTmNqOUx4eEp2azdIT0o3?=
 =?utf-8?B?akNOZUhNTURjZm9zR0NoWXhZQnhkWmxjV0ZURFE5bkxsN2xqS0Z0eElyUlQ4?=
 =?utf-8?B?WlRTTzg5UUx5azRGY2JtNXdtc0JJelRtMUNjTkVneERrVGJtQWtVZmcvemdD?=
 =?utf-8?B?N0dEeWQrb1l1SU40V2tDN004SFRoak9adWN2MDdsYUFOWWNRdDJBK0xPMkpl?=
 =?utf-8?B?SjlacW8yV2h0Vjd0Yy9OcUl0VXc2SGFSc0JMZWNIbzJ5T0NpTkEyWmY0NjU5?=
 =?utf-8?B?QlZuTmF1SkNuOUIwL1Y5Nk1ZbmV0dEVNQmxxcFZ6Z09CUDM1djU2a3ZMMk5w?=
 =?utf-8?B?VmNKM0FSSlhmeEF1Y2VjMnNUc25Bbm5ZVCtVaEI1dllFRThsc3hrN2Q0aFlR?=
 =?utf-8?B?ZDVuaFNoUGdDeEM1bUJYQVNZaTVJMWhyT3pxYVZabkZzNVNvYjB6OFpVeEQx?=
 =?utf-8?B?emVrVDJOWEE0MmlYcC9KK2pXWWRrNHE2My9kd2ZGVGprYVYveDYyMTJVbzBy?=
 =?utf-8?B?UVB0ejdqWlRXekhWbExBR2ZQdVE2SElodmJ0WHhJYWptVXhXZ1djcDVOSThE?=
 =?utf-8?B?M2ZwM3dueVh6MDlCWXlLQzFGT2RBbjBNdFBwQjYyMXNQNGxQWVJ5YzRLbTFH?=
 =?utf-8?B?MU15SnY5ZXdyenhjb2cvNkNOeS9pM2NXRDNXaFRkaWE5TDZRZ3JkOW81cDc3?=
 =?utf-8?B?WGNLTmtITVF1UFRNQUpTenV2L0U2TDZsdlIrOHlMbURPM2l6WTJoek16MTRO?=
 =?utf-8?B?bnVzcFR0dDdpSk9ETCtnQVppcThFb0hEanVTVERkM3pKRHVsTDZGM1RoY1Vy?=
 =?utf-8?B?S2kxQjdhYWxnWkJOeGJMNVNQQnZmTjVyRnEwYzZZKzc5NXJ2N2xxY00wdS9R?=
 =?utf-8?B?Z0lRb2d2ZHREdWFmVTVPWkdYTmtSYXhGaFR4YnJrUEdiaDQzOFdSQm1MMWts?=
 =?utf-8?B?aHFHdC9pVnZoS1NlaGdHVGJMckpCNHpVaUlNMllEV1V2b0tCQ09uK3VnZ1hB?=
 =?utf-8?B?d0locVlNMEhNSnlic0VLa3VpREE2amU2UXJNUEFBV20zL29EVC9zdUZZb1ZD?=
 =?utf-8?B?Ly9pM0VPVFVobzFISHMzanZtb0tQaXp5Q2NQcTAxekpCb3dKU0NTbUQ2dWZ3?=
 =?utf-8?B?K3FoTmExT0dVTTVpUDQyRUltT1l1WmpCejJ3QzcyNzR2SzlVU2hKN3NFK2JG?=
 =?utf-8?B?enJEdHhsaEJtL3pXK3l0d3RSQUF0czZIeEVHQlkxc1IrOVNVU2Vrbm52eEF6?=
 =?utf-8?B?dzUrL3NaWHpBNGJYWmlhNllrV2VycjFJd3h1RlRDQi90RGowNFlyR1F0TVdh?=
 =?utf-8?B?VTJWamhTZCszZ2xrU1Q2VWtpaWoxMmdjMzRWQmo2S0w1UHE3Ky8xRGd1YVhj?=
 =?utf-8?B?dkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c96ba25-ad33-43b0-5bf9-08da7193e2b9
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2022 18:55:20.6307 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pqMjva0mrqycKBiPGC9EUvaBkD+umwknOpUiDfAU9kYD3N0iE36rNoqmf6dQFv7mww/+Oa4yzHRDxs3OSn4FtRfeVlsmuLXfw8+mWKpA1PI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB5713
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659120926; x=1690656926;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Q5zrFhAtlx0YYPpeqw/f5V/vJ3l2i+BL1csFJbHk6Vs=;
 b=GQ3p7iPMMYEGtNitRED1WrSk3DX+dtzNU4W7hTwcVw92o+SfRl+vas1R
 2rnfBVTdGqH3vwFdTuOy3Z6jOEyCWCmNSIl+B53lLyVDLi+YowFYexkHF
 WQlsPG2IrMTEzbVxPgIvMV1/8PwJ81yJmh+lw+LtCfwRcfjH0bbvIx3+T
 ddTxQ/qB3H7gw+Wvjf6cGOkY1KfOZGP0w3MMA4rYfV1cFpsy4CMCOtZFQ
 3ijWuJU29frQs+0Xz+QPSp/cWrceXcGYc22lqu6Tgo5ofdkA3i8fM8f/M
 JjeGA5D0pOh21OsRmR4bYavfo21bxF//Ta/hYFP3rSOskl/smVpjrxwM2
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GQ3p7iPM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/3] ice: Handle LLDP MIB
 Pending change
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



On 7/28/2022 7:04 AM, Anatolii Gerasymenko wrote:
> If the number of Traffic Classes (TC) is decreased, the FW will no
> longer remove TC nodes, but will send a pending change notification. This
> will allow RDMA to destroy corresponding Control QP markers. After RDMA
> finishes outstanding operations, the ice driver will send an execute MIB
> Pending change admin queue command to FW to finish DCB configuration
> change.
> 
> The FW will buffer all incoming Pending changes, so there can be only
> one active Pending change.
> 
> RDMA driver guarantees to remove Control QP markers within 5000 ms.
> Hence, LLDP response timeout txTTL (default 30 sec) will be met.
> 
> Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 25 ++++++++++++++++++--
>   1 file changed, 23 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> index 1c54eb643b6f..f16e4c54409f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> @@ -933,6 +933,16 @@ ice_tx_prepare_vlan_flags_dcb(struct ice_tx_ring *tx_ring,
>   	}
>   }
>   
> +/**
> + * ice_dcb_is_mib_change_pending - Check if MIB change is pending
> + * @state: MIB change state
> + */
> +static inline bool ice_dcb_is_mib_change_pending(u8 state)

No 'inline' in .c files

> +{
> +	return ICE_AQ_LLDP_MIB_CHANGE_PENDING ==
> +		FIELD_GET(ICE_AQ_LLDP_MIB_CHANGE_STATE_M, state);
> +}
> +


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
