Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B506412693
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Sep 2021 21:02:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 216DE60AD5;
	Mon, 20 Sep 2021 19:02:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oJoK9iKEXZp5; Mon, 20 Sep 2021 19:02:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E94F360AC6;
	Mon, 20 Sep 2021 19:02:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2D6991BF2A7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Sep 2021 19:02:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 256F6403CB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Sep 2021 19:02:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pbkDBHUYgsaw for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Sep 2021 19:02:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 307EA403C0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Sep 2021 19:02:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10113"; a="220013115"
X-IronPort-AV: E=Sophos;i="5.85,309,1624345200"; d="scan'208";a="220013115"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 12:02:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,309,1624345200"; d="scan'208";a="511480493"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 20 Sep 2021 12:02:41 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 20 Sep 2021 12:02:41 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 20 Sep 2021 12:02:41 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.43) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 20 Sep 2021 12:02:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RBa3Cfm2ymCYi0BHpKV9oJlum/vQ6Ov+XaC9Lx2s4FKwjcoyYmQcNigHKN9Ak6aM3hvhUGHIniClxYaZ3B6fyH9ivBvqAAVZoJDP5Kuox081ysvLjr8iXLsbl4q1Q1TFJIoYqPyNAosjobvDR2G2DKa8WVlTH0Fj78nam4jTQPAWKp6kyrqrZeNfXul0q3uvJ3C53D2JtKi/MR7aLXHUgTcNd2UpaqfBfpKxZdVH6dYcmzmd7NHShA1MjlD6cZe16sFwkA0+lHqi3kxAn0Afd06v3pbuLa4/AfLL9QLJzuKaqCwL/1/18QB+6jfFnuw0yVIOBltKhwhBu+TvfhnuBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=oAH85nNNojTumr+aJNxAEKOd93ciplh3Fwp80Dfaxds=;
 b=mA9wqiNqyh5YO+i7rSOS4wLCeUeYUld41Xscy4HDrnEeSyfldqNPmmimiIHTGi/9BPi1oj0ooi7lvr+OykFvfD/W/kFInYmOX8IbBuZ+YvL/i70CNnpMXOO9SR15DNnOgaJcEJjEywzRv8U35EbUnFPZDV+bGRYeUTnbtKc7b7CIH7aGsHARw463whQj1GgBddpTlabd9nY9sYLyd8mvvu66Hv9R9M94cEFXxUjTidq6N7a8xfsorIY4FqsmRkMZ3yTq/DFRVE27C+WbHbZNVkf7zjzxUZDwsaTRtpHqCaBtwN7VkoxUY/Oh+M0VFc36xnhihgnV6rqstjgDwZAFqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oAH85nNNojTumr+aJNxAEKOd93ciplh3Fwp80Dfaxds=;
 b=qYPe/e7iJI/ux6f2a/tL7DSjGB8uV2AKTx4z8qiNHoSh3nQc9+mZqI0Uv5klQsnsf/GTZTP5QN0wWJJet7/k+/hi2MwpwWG/ARvSBhwZCapMr2LGZYzmTgwTKVm/WujJb/Jhux4N+vVtTafeSmDu4yC1go2JqeJLiy5/fpkYMng=
Authentication-Results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by MWHPR1101MB2317.namprd11.prod.outlook.com (2603:10b6:301:5b::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14; Mon, 20 Sep
 2021 19:02:39 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::cd0a:aadf:cf9b:f2c3]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::cd0a:aadf:cf9b:f2c3%3]) with mapi id 15.20.4523.018; Mon, 20 Sep 2021
 19:02:39 +0000
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20210824011259.738307-1-jesse.brandeburg@intel.com>
 <20210824011259.738307-2-jesse.brandeburg@intel.com>
 <d87087e8-51d7-4fd2-d594-a79b126fa14c@molgen.mpg.de>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <7ebc8fa6-79d0-13a3-e07a-247bfe8d8bcd@intel.com>
Date: Mon, 20 Sep 2021 12:02:37 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <d87087e8-51d7-4fd2-d594-a79b126fa14c@molgen.mpg.de>
Content-Language: en-US
X-ClientProxiedBy: MW4PR04CA0168.namprd04.prod.outlook.com
 (2603:10b6:303:85::23) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
Received: from [192.168.1.214] (50.39.107.76) by
 MW4PR04CA0168.namprd04.prod.outlook.com (2603:10b6:303:85::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4523.14 via Frontend Transport; Mon, 20 Sep 2021 19:02:38 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9aacc703-b2f7-4114-7f8f-08d97c693734
X-MS-TrafficTypeDiagnostic: MWHPR1101MB2317:
X-Microsoft-Antispam-PRVS: <MWHPR1101MB23173D44F86402207F560CF997A09@MWHPR1101MB2317.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: E6mfHn8Dd0IIUGYva7Sk9B5whgJ2SrDFIz2kbiMITPt6fjiXlC0VjHpJxv2EUKlMC5JERwRcWDGmhf6aOlU05r4W9LmlR44Y3DQtQZeLXeCEeVuzpjHVVcG9wBf8n8l3V4vyZV5P0mmTnJkg95nHBfcUs5F/n1LPwb79QRtXcyGXr7w7nF5ZB6vPZnRYCOJOGWNvJwVg6y5EGyZRW83xpNk14+YGILtdzVWx8TYG4PwOBgNdkWXL27+fbJm/bLsHxn4MufZzXFeoWExlelEALzO8Fe0uE/OBhMs14XTVzxMujpexc7YzMSAn2z/WqTzQjkTzxzBCUNu3arfYmYQpUtLJxkWz0Ia8hhwbbeuReIx45wau14tRyfxNrsx5W4G0n9HlO7ymlfW/t8AdehASLfnF8ca6ZT6d4zR6KkZE05CSf9hMZvqI6np3A3J2YCmR4w7pirvgcg42d43IrT36ot3PMfmGlAE463ypiPhLteL9HANps6HFn6AW2KoWhqnV8qqzjuxl4gc3LdOqPcU4wEFunhYNWdz17hzwxUZEQbVmMVSi1qe1dsftMXfux1WY406VyK+hC/WEMaBU9v/9JS9nrxnZcFg5yIesuyJFEg8+jyuLz3qG2qOAUK7SsqQWCeQFbfqh+XqE4FQTyRL1ty2KfEv8pbQto0DKRraZoDvHw3FcIL2slMbjBOBxdcz4jRs+JMr5ckHg9kDMwTcXj72eNb1SyoTh6P/58DAePsmyQ5TeXwFYRAiZdofo7ZLV
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(396003)(136003)(366004)(376002)(346002)(86362001)(8676002)(478600001)(316002)(31696002)(6486002)(26005)(8936002)(16576012)(186003)(31686004)(956004)(66946007)(2616005)(83380400001)(66556008)(6916009)(4326008)(66476007)(15650500001)(53546011)(2906002)(36756003)(38100700002)(44832011)(5660300002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cWdodkxNMHNCcmVybHBBOFRYL1VSemZES0hKeUp1c1JLc1N4Um5PL1NybjE1?=
 =?utf-8?B?SFp4TE84bzhEOTNmR00wMEJxSWZxY0U1UkRRWENmY2pQa3doRzc2ZWlnUFNv?=
 =?utf-8?B?UEdTcm14QkhMb1JQRVpIQWNTdURCUENzbXczcXZvSEJpU2NoNXhYamNyTHB5?=
 =?utf-8?B?WlNlZjBJVzluYmNjMDEvVHY5ZjN5Z2NQRHRQSG5KYmIvWG0vcUtlYnR4NWRn?=
 =?utf-8?B?WUp1S0tlMmZqQTNndFlUMUdCTnYxQU1PNjNLUElMZHJheGR4WEphYmZzUldH?=
 =?utf-8?B?b0FuUUx5WHRWR3F3VnB5MlBlVXB5dTdhWkN2MzhXbXc3SmF3NHlkRVB5R2dC?=
 =?utf-8?B?SGp4MFV1RFl6TVB0V3pzS0xVNzJlWTRyZCtNZW85UXRLbUZlaXZ5cHBWNm5l?=
 =?utf-8?B?cE5SNlJSK01vUXlzanBLZmRnR0JkWXlSOEQra2ZBM0ZhWVhJRy93U3pkeWFv?=
 =?utf-8?B?OTAxMUk4WG5udnRab1JiTG9Rc0hGYTU0cXBnK1RBSFZldDhER3JmKytaSHRV?=
 =?utf-8?B?aWlsMXZJKzRhd1YxRmlNdGdTNk44TTRpTFlmamY4Sjk0L0NTZEVhUktucW1m?=
 =?utf-8?B?Tyt5Z1J0YUFwWjNsdTh3aGs0dkVCMVRzay83eVBtM05RVWg1NUdrRmM3SWVG?=
 =?utf-8?B?UXEwK285L0F3eUM0QWJJYnNPNHdWYS9lL2tld2wyand5N2tOZzhjQWNqRm91?=
 =?utf-8?B?TC9NdkMyOVRqRVlpdjFkeUdHcVAvL1lUSGMrU2hMd1J5NnFMdDNJbU9FUjBr?=
 =?utf-8?B?UnRoaEJwUkhzRjN3N29OVm5uWGJPVE16VUJhZ0NGZHZZTEg5L08xYVZjODdj?=
 =?utf-8?B?Ujh3dEpWU3IvdnVzSVhmWm5STmhQQnJyWFJyeHBkMzhFRmhrdTI3aStvM1A1?=
 =?utf-8?B?NEYvUnBaZlRUTE1lVy9jWGFTYzNFSjF6MG9Mc2hoRUovRkVNT3ZvTCt5R1NU?=
 =?utf-8?B?OTRGOVRzdUJMUWJCanlrQlpTOXQ1YVQxRm9vTzBMMjFNUUdlOFZoNWhmQUIv?=
 =?utf-8?B?anFjaHV3blF1UVkwdUd6MkY0UlVzY3dxVkJybGJJWUlnTVZuU1ZjenJMRmYz?=
 =?utf-8?B?SE5SN3BwalltL0sxQmNqQ0k2Vk95SjRnV2wxMk54RTFFM0JhR2ZDekdUeEZY?=
 =?utf-8?B?Z2JhTXJLMVMzdXoyWjN2aFUweWwwTWVxWHh2ZU1nTnRJYXlyOTIyeC85Vnho?=
 =?utf-8?B?Qzc3aFJpSDVIZzcxaE9CN3A2L2JndzdCc1p1eGIraGlBcnhOclhWc0JFenFZ?=
 =?utf-8?B?aFpGNUhValJldVpGZ1U3YVBNOXdvYW90cS9Sb2R0UUFJOE91dC84VStDdk1s?=
 =?utf-8?B?M2hUVlk3REo4VDcxbkpUdVJzZVUyWjUzaUhFdXZKU3NHVGcxWXdLTjVHMU4x?=
 =?utf-8?B?SHlmUGVUNFdZc2h0LzBIZU4reFJZVW5YV1hDUmM3dUtLeG0xVUhXa01Zc1pr?=
 =?utf-8?B?VThmVFY0YzlHQUw5a0JITS9WS0Rwd2F3dksvWEgwaWhRdHBOa1J0eU5RVzJZ?=
 =?utf-8?B?ditacHZkNElhMXg2K0VaaHZZRVhnYUJLSURoTzUvS0RTV1VJRElyRXk2aXNH?=
 =?utf-8?B?Wm02S09zOXRWSE5MR1BkVGwyaXZkNmI2anJsREJkM1RQQ2ZsTVBxR3R2bzZO?=
 =?utf-8?B?b3FkUkZXNFgxeVVLU3FaSVhaaW5sNzY3QjM4SnJCVTlGNjlSdjhWU05EUW1m?=
 =?utf-8?B?UUpIRDljcWg5U3JJQld4b20vd2tibng4bDBiU3h5ZWdjVXdHL3ljQ1hjSFpB?=
 =?utf-8?Q?Xmv2EsUOuwqWXZ1fAxUY6haIqd8QwiWvOlrfKIp?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9aacc703-b2f7-4114-7f8f-08d97c693734
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Sep 2021 19:02:39.0796 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lFFMVRV5cefSdvZIMIndrj8wSXixP0Imt27DPhFzACN3Cl1mnvLTz3Q8VrdxSpe1Fa4G0njNrtc9noiMmdhwaU6eBg5xqSgbX1v3rA7GCLU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2317
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/3] ice: update dim usage
 and moderation
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gOS8xOS8yMDIxIDExOjQ2IFBNLCBQYXVsIE1lbnplbCB3cm90ZToKPiBEZWFyIEplc3NlLAoK
VGhhbmtzIGZvciByZXZpZXdpbmcsIEkgYXBwbGllZCB5b3VyIHRleHQgY2hhbmdlcyB0byB2NC4K
Cj4gQW0gMjQuMDguMjEgdW0gMDM6MTIgc2NocmllYiBKZXNzZSBCcmFuZGVidXJnOgo+PiBBZGQg
YSBuZXcgaGVscGVyIGZvciBzZXR0aW5nIHJhdGUgbGltaXQsIHdoaWNoIHdpbGwgYmUgdXNlZCBt
b3JlCj4+IGluIGEgZm9sbG93dXAgcGF0Y2guCj4gCj4gTmljZSB3b3JrLiBDb3VsZCB5b3UgcGxl
YXNlIGFkZCwgaG93IHRvIHJ1biB0aGUgcGluZy1wb25nIHRlc3QsIHNvCj4gb3RoZXJzIGNhbiB2
ZXJpZnkgdGhlIGJlaGF2aW9yPwoKVGhlIHRlc3QgcmFuIDMyIHJvdW5kcyBvZiBuZXRwZXJmIC10
IFRDUF9SUiB3aXRoIGEgc2luZ2xlIHRocmVhZCwgd2l0aApzaXplcyBvZiBieXRlcyB0cmFuc2Zl
cnJlZCB2YXJ5aW5nIGluIHBvd2VycyBvZiB0d28gZnJvbSAxLTY0Sy4KZWFjaCBjb21tYW5kIHdh
cyBzb21ldGhpbmcgbGlrZSAoZm9yIGV4YW1wbGUgZm9yIHRoZSA4SyBwaW5nIHBvbmcpCm5ldHBl
cmYgLXQgVENQX1JSIC1IIGhvc3QgLWwgMzAgLS0gLXIgOEsKCgo+PiBAQCAtMTMyOCwxNSArMTM0
NSwxNCBAQCBzdGF0aWMgdTMyIGljZV9idWlsZHJlZ19pdHIodTE2IGl0cl9pZHgsIHUxNiBpdHIp
Cj4+IMKgIH0KPj4gwqAgwqAgLyoqCj4+IC0gKiBpY2VfdXBkYXRlX2VuYV9pdHIgLSBVcGRhdGUg
SVRSIG1vZGVyYXRpb24gYW5kIHJlLWVuYWJsZSBNU0ktWAo+PiBpbnRlcnJ1cHQKPj4gKyAqIGlj
ZV9lbmFibGVfaW50ZXJydXB0IC0gcmUtZW5hYmxlIE1TSS1YIGludGVycnVwdAo+PiDCoMKgICog
QHFfdmVjdG9yOiB0aGUgdmVjdG9yIGFzc29jaWF0ZWQgd2l0aCB0aGUgaW50ZXJydXB0IHRvIGVu
YWJsZQo+PiDCoMKgICoKPj4gLSAqIFVwZGF0ZSB0aGUgbmV0X2RpbSgpIGFsZ29yaXRobSBhbmQg
cmUtZW5hYmxlIHRoZSBpbnRlcnJ1cHQKPj4gYXNzb2NpYXRlZCB3aXRoCj4+IC0gKiB0aGlzIHZl
Y3Rvci4KPj4gLSAqCj4+IC0gKiBJZiB0aGUgVlNJIGlzIGRvd24sIHRoZSBpbnRlcnJ1cHQgd2ls
bCBub3QgYmUgcmUtZW5hYmxlZC4KPj4gKyAqIElmIHRoZSBWU0kgaXMgZG93biwgdGhlIGludGVy
cnVwdCB3aWxsIG5vdCBiZSByZS1lbmFibGVkLiBBbHNvLAo+PiArICogd2hlbiBlbmFibGluZyB0
aGUgaW50ZXJydXB0IGFsd2F5cyByZXNldCB0aGUgd2Jfb25faXRyIHRvIGZhbHNlCj4+ICsgKiBh
bmQgdHJpZ2dlciBhIHNvZnR3YXJlIGludGVycnVwdCB0byBjbGVhbiBvdXQgaW50ZXJuYWwgc3Rh
dGUuCj4gCj4gSXMgdGhlIGludGVybmFsIHN0YXRlIGNsZWFuaW5nIHJlcXVpcmVkIGluIHRoZSBz
cGVjPwoKSXQgaXMgbWVudGlvbmVkIGluIHRoZSBpbnRlcnJ1cHQgbWFuYWdlbWVudCBzZWN0aW9u
IHRoYXQgdHJpZ2dlcmluZyBhCnNvZnR3YXJlIGludGVycnVwdCB3aWxsICJmbHVzaCIgaW50ZXJu
YWwgc3RhdGUuIFRoZSBzcGVjIGp1c3QgZG9lc24ndAptZW50aW9uIHdoZW4geW91IHNob3VsZCB1
c2UgdGhhdCB0cmljay4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9z
bC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2ly
ZWQtbGFuCg==
