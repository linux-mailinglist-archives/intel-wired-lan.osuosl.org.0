Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F78A70C00D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 May 2023 15:50:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ED4DB6142D;
	Mon, 22 May 2023 13:50:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ED4DB6142D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684763438;
	bh=p7uCbMW9fnz9VVmQuzzsrtU29IkCETmgmM5+4TBPmXg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=J7lInhBBgCe7ErLP5su3v37cZ12vASO34KoE/YfKDhtMUlv2ikznQhbCc/nXckFyK
	 KNAPLTc+OdtbWsRYr5cBsWsrW86UQg4949xCXFJprf0E0MFMVBX+piYds1jZ9vGFoM
	 EWpX1pMi+mKEa9aQAsEtDCP77RwIwhXG1IkM+SYL977K4jvzWbefP2djlHPpur8duI
	 KoZKt9IEMKnWj6cVscz8/8/kx1Qp8X4UBU+TnAb7mwHBEgOLOqy3UpJYo3QyMr24g3
	 78wXwo+3QzbN7q351ypPV0g1QPvoKzHtT92fEVj/vCyiRIZLrbTsHNsqtGt8FUODGM
	 mh0yK+u6Fy63w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TkpdyFrCzFk4; Mon, 22 May 2023 13:50:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9DEF160881;
	Mon, 22 May 2023 13:50:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9DEF160881
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 04E0B1BF397
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 13:50:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CA11A4119C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 13:50:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CA11A4119C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F-TD1DfmRBgo for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 May 2023 13:50:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 977AB400C8
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 977AB400C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 13:50:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="350434478"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="350434478"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 06:50:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="653961617"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="653961617"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 22 May 2023 06:50:28 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 22 May 2023 06:50:28 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 22 May 2023 06:50:27 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 22 May 2023 06:50:27 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 22 May 2023 06:50:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Om9vu2BgIYKH1Ga9mkvBACF2Jw4/vcaSmXCUQaZQB506cR0u+ZszUlF9mbQBmGBzayKwXaE6bL9QEJfp1WggjcdkyheU6t3TO57DFQmSqxpat/MFNOk2XDe7rfgGmV8ypn2bgykpCRRIJZsIRDpo9SndIBEzHH8gdNOD+q/g1wH8vRANORAfoAlwT5JYalf/Sn2Q2glLCcLHX2KtglHdN2MoXW1GKiqRg9XHKY3IraC3P94LUHVwnd6vy3XFyTSf0EajOxBugmBLYtXv4AF68505SpWYuABbqD597LYgGXZG2mFIicdO1vRfgA9AXCC0nWuNJmO3PnGpMqMSG/J3Rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6CnR8BmGWrxt7EpG0welhqunwrghdQHUyzc+qJSKOUQ=;
 b=nv5bAIe87TUIvPLHwOBXnwc30fnuqovLCspcXx4JmgMZRVQUywQqn7XsUHG5VAbLU9Vmaz0Zmw6Ar552cV/kYnsUotUkf7cRJ3ZNBPyES/b+0lyPMPcLAZhF2IMXo1wuj2NmLVVrFyOao8e7sNWUOWJ69NeTG807ZLC/h8iFWCfzvYdxyWQCFU0hklG8w50s6otuM2Z0id3Xk7QAKjIABD40tzLbecjVQb8+MuP9n5U6PMSsWal6DsLO29vaHOqTqKO2Un9Rfymmh19gm6N/+/SPNq5KvRaJau+4eFaJDKrjiRCMdWvLFZqWFnvZuWHDd4ljn7DkK5ZpP+LlNkjV1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by CY8PR11MB7081.namprd11.prod.outlook.com (2603:10b6:930:53::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.28; Mon, 22 May
 2023 13:50:26 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::64d9:76b5:5b43:1590]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::64d9:76b5:5b43:1590%2]) with mapi id 15.20.6411.028; Mon, 22 May 2023
 13:50:26 +0000
Message-ID: <5effd41a-81c3-4815-826d-ba5d8f6c69b4@intel.com>
Date: Mon, 22 May 2023 15:48:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>
References: <20230516161841.37138-1-aleksander.lobakin@intel.com>
 <20230516161841.37138-8-aleksander.lobakin@intel.com>
 <20230517211211.1d1bbd0b@kernel.org>
 <9feef136-7ff3-91a4-4198-237b07a91c0c@intel.com>
 <20230518075643.3a242837@kernel.org>
 <0dfa36f1-a847-739e-4557-fc43e2e8c6a7@intel.com>
 <20230518133627.72747418@kernel.org>
 <77d929b2-c124-d3db-1cd9-8301d1d269d3@intel.com>
 <20230519134545.5807e1d8@kernel.org>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20230519134545.5807e1d8@kernel.org>
X-ClientProxiedBy: FR0P281CA0097.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a9::10) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|CY8PR11MB7081:EE_
X-MS-Office365-Filtering-Correlation-Id: de4f5dba-c2ad-45f5-ed11-08db5acb7eb0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QXPx/e+J7j1gMflL+zU1fvz7h971ygztqbPMwFQC/6h91Y0BNn6D89rjd8/5xIJQCHgJPFFkaP9NuZdS4ERIYk/PzbQ4M/i+OwWB8rfuMBj0LH4yp2MorpmJ6GJEI5RbvCuyyz5LWgCAqg3GLsltOQco/eP0mCPSYzKlqD6RpxWI7G2Ra9zZ6iw/ooNHlZWDMPoYE20+B2oHsfzBInNTO11iXh6wNjuBMtZe/eRJM4bkFfUAcjGLf4L/Dxn+59zlPtJmM4HG8Jc0HOFYx9zBJFlKRveLv4mJ9rW6eZ77HAwSGERgOWpu9vm+jf5sUOJJDLCSEteiWuGKHSLBD8fVaWk9I6fuLCPjQDYjDevgP1MIAti6oRZEtMaj8cJHwQFn29I9Fwm/nxQAuv5HBb7j7EZh1CedC0A+ufzE2fQTGy05dp+ut+xIRBN9M2wQlwBfKLatveo/J5Fguy1TohhjjgeLZU6pM1xUM9CkIoCYaxr5mUoswy5aAjtNI+yIgSdu57qeBfhUaIXDgXZSkt9rJtR0JfYGMVfloFgSYI2vjtAJkcQTVVlMrTXKg9Y2bbdgXswwVFWi140JynpwlGc8JMu6eS0USX/UBzlUk+V9//lDDKRWFGIGuTwvc8kQSWmJMFTdgQnWd2eQ39t2IuacFg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(136003)(346002)(366004)(376002)(39860400002)(451199021)(2616005)(186003)(2906002)(6916009)(4326008)(66476007)(66556008)(66946007)(41300700001)(6486002)(6666004)(316002)(54906003)(478600001)(5660300002)(26005)(6506007)(6512007)(107886003)(7416002)(8676002)(8936002)(31696002)(38100700002)(82960400001)(86362001)(36756003)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RVE2Zk1oOEVuYUMzY24xWnU0bmM3ZmhSZlhUdGZaaHNYQUcvRFlVWDJPZFFl?=
 =?utf-8?B?cEI2UkxuNW1PaFpXMmpvVlprSy8xdE5ZZDZIMU9GZEdZLzNlTVZyMHdMQy9w?=
 =?utf-8?B?d1BEQVk3UkM0VDA3Tms2M1Y1SUpqWkZmSlNzbGJlenZHQ3k2T3l0ekhqMTlQ?=
 =?utf-8?B?T25vQlpQS3dWYVoyVzdaNHBjdEhML1BzR0haSG9FczUxanR1dnZTcnNwc0FR?=
 =?utf-8?B?R2N2amRuWmM3TnQvM3JINzRodUxqeEs3ck16ejU4K1NqRlpnVkhKNEVXMnJN?=
 =?utf-8?B?SGd3REo3eFkybXFyNUhVdFFWSGNjUzk2Ty8zQ0FNYmNtVnhiRzk3N1MzaHlt?=
 =?utf-8?B?NCtNTWM3RWFPZy9ZeGlZK09nR1FseXdPZmJjNlJEeGNaSndoRUkvci9oaU9X?=
 =?utf-8?B?ZllsbTJKQTJoVVc1VzVwWnA0d3ZPbENKcmxPbGliQ1JCY2syRmZLdkhBbFZX?=
 =?utf-8?B?T3BLa0N6SU8yT3Q1OUZNSUp0M1A2R3BtdUFyamJ3ZUZmYVEvakJ0dUtYVnlU?=
 =?utf-8?B?ZWIrdVJvZitrNGs3WkM0WVE0Zk55T3pkZWtzbUovdlNDZmJUbW5Ialp0dGZt?=
 =?utf-8?B?Sk16MW9Oa1dsQkt4d09BR1lkclVVc1hHbzVDeUIvQnVtY3lubzUvVEhHZ3NR?=
 =?utf-8?B?V1VCeWovREpRank2RkVXeFBtc0tvQnU3NnJ3TXdDeGQ4VTFBN01wditDNVdS?=
 =?utf-8?B?NWFEb0xQdGIvWkM2SWRHRnZOdXMvWHZrR1R2cDBMVCtrT08vUnBIOWtpSUxl?=
 =?utf-8?B?L1lPa3RBZi9tMmNYZDZPdENNYTJZWFEvcm52Qnp0T1NYMVNtc1ppQlBJUDQy?=
 =?utf-8?B?ZXZOMWtLVXk0Ly9EclVTMWhEMnFheXh2QzIxeUNlOG13ckFSZG1UZDZBcXdN?=
 =?utf-8?B?NVI2dzJuemUzTmoyVkVWMmxIODc4dENjYnpwdzdnMG12bzZKdGtkVjhkMVlq?=
 =?utf-8?B?cFV6Nm9ZbTZQSEp6QmZWNGo0bzJHb1MxaGtPbmhhSW5yWHg1K2hxQjErRG53?=
 =?utf-8?B?aVc0dFNvTkFBMlBrYWVwSGNXQ012UEhERXl4WE8zTGRCQWNwanRUK05jWE9Z?=
 =?utf-8?B?L1RNS0JndXo1T0lZeUtBc2ZaSmpiTTlDNnFFWTVTSVpUd0hhalFGRFc4S2VU?=
 =?utf-8?B?ZGV6KzFUWUlrc1lTMnFMaGsxNDFHSGhWQUdZV3ZPUVgzL3k2UUk1ckRLb2ds?=
 =?utf-8?B?OGw5bXlHbDI0WmxZcjF2c0c3MzBqZVIzZDV6NVFmcUlkMTc1MXYzOWtpUlI2?=
 =?utf-8?B?QUdhNWZqYno2ZHNPR1BJVXplQlpyNWltM2FoSE5taG5RZ1p3MFNXbUllbXF0?=
 =?utf-8?B?c0lMTWttVHkwMTFIRXV6NTNtWU96QTByUnhST1hRS3hURTN3aTRnUCtZNWs2?=
 =?utf-8?B?REl6ODBWYzJpYW5VZkpveXlpVng2MUJQMHRZa3dYaTlweVN1WTg0Z2I0ZHo0?=
 =?utf-8?B?aUw5aVZtQUFpT21YemRUU3E0OFVSbjJ0ZkVzYTlPVElMSFFiOUhUZU5FMzJl?=
 =?utf-8?B?VC9ad0M3cldFQlFwSXhVRlJoZG5xY2pGVW9aVUhxcDk3c2EyS1BuYlFkRm5J?=
 =?utf-8?B?V0hxc045RWYyb2MxaW93Y2oxZ0tndUNzZ0o5YTJkSDNoNm04V1lFOUNaMjNs?=
 =?utf-8?B?TGZKZmNyOTgvN2hUem5ITEZFMzMydnhubkJTY1dIUUlVbW1td2EyWGpsVUhi?=
 =?utf-8?B?Um53U2FHZm80U2N5N2tPZzlja2Z5aVl4M1pDenlGMFA1WVJDenNxRGJ6aEk2?=
 =?utf-8?B?ak05MmVoeUhiN1FOdHhIVDRPYmhJUXBxY2kyRUc1Q1lNQnJ6SzRNRk1Ham9u?=
 =?utf-8?B?alI0WTRIWHBBMzROUzUzeHJsRlpOb3VnWkFrTFc1c3VYdWgrREFsQngrNXF5?=
 =?utf-8?B?c2d2Um5LUDJtTXRSYVVCemI4UU1HUzZxUWxnZWZDQ3EvbUpvZGFvWUY5ODFR?=
 =?utf-8?B?b3ZhaWR1b2tuaVlNOWtNMHZtNkFzL2VhNXo1QTNQREt1VUJhVHNvRjVvNnZs?=
 =?utf-8?B?UUQwZStJK3I5dmIzeU1OSHdyTnAyWHJqTXFmcVE1Vjh3UlpPWVhiMXZLZlBx?=
 =?utf-8?B?M1B0SjJDZ0hIMkhzOHBGbGJQUUFQLzh4K3M4Z3cxa2pCejJZT0hLMTZXTkM5?=
 =?utf-8?B?dWF1YUJlbXZ2ZCtnWU14V0kvdjQ3cTlQb3lMR1VvUTBXVmt2MzlHckw3dzhr?=
 =?utf-8?B?RGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: de4f5dba-c2ad-45f5-ed11-08db5acb7eb0
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2023 13:50:25.6134 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: em01oYZ1euMAPWFAqWlKj2BrzqlrrzwAjBh2MRwaTo5m498Q+4xGzXhoBU/82fFEAfQtFS4hCUfbGfvsk97dzmwz12Vm7okGHPkc3xmvOFg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7081
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684763429; x=1716299429;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=R27FXpR96pLKcblX9hSUYW12+lHGI58M3cSB9j1AXUc=;
 b=VetGfyhbtA3q8FYwfWPZRdUywSQ909VCvhpqBzQq4HClyZ/uinyI8vMd
 YqlPMHkZQbcM++5OhGVX1ggEh9eOeBEwBsa9OP4lQM9b6bQHAXxd0dUM2
 3I106wtyqsCQQqUxOJZt/IMRuKTiPgC/Vdhvj5xlGmJ2m4y3lAaxZc0j3
 Jo3YPLhsXnnOixY9TQKMXoyROdxnqtKa20491LRvGyhXI6qi2jRspGbUY
 6Qo3gDi27AFOYlLEAjzfeJPz8BeDURENVeP23TQfpMeFKQb14/zlJHkw6
 ofesBVuBxedMmFA4P5GsuVDk9jq19IZAgqCOYLKlC11VhrbC4Ch/JKdkO
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VetGfyhb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 07/11] net: page_pool: add
 DMA-sync-for-CPU inline helpers
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, Eric Dumazet <edumazet@google.com>, Michal
 Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org, Paolo
 Abeni <pabeni@redhat.com>, "David S.
 Miller" <davem@davemloft.net>, Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jakub Kicinski <kuba@kernel.org>
Date: Fri, 19 May 2023 13:45:45 -0700

> On Fri, 19 May 2023 15:56:40 +0200 Alexander Lobakin wrote:
>> From: Jakub Kicinski <kuba@kernel.org>
>> Date: Thu, 18 May 2023 13:36:27 -0700

[...]

> Ack, not saying that we need to split now, it's just about the naming
> (everyone's favorite topic).
> 
> I think that it's a touch weird to name the header _drv.h and then
> include it in the core in multiple places (*cough* xdp_sock_drv.h). 

Hahaha, I also thought of it :>

> Also If someone needs to add another "heavy" static line for use by 
> the core they will try to put it in page_pool.h rather than _drv.h...
> 
> I'd rather split the includes by the basic language-level contents,
> first, then by the intended consumer, only if necessary. Language 
> level sorting require less thinking :)
> 
> But none of this is important, if you don't wanna to do it, just keep 
> the new helpers in page_pool.h (let's not do another _drv.h).

Ack, will just put there. It doesn't get included by the whole kernel
via skbuff.h anymore (in v2), so new inlines won't hurt.

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
