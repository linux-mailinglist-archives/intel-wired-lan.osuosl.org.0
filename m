Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0473064BFAC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Dec 2022 23:56:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 883DF60B38;
	Tue, 13 Dec 2022 22:56:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 883DF60B38
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670972213;
	bh=3wnYZzxE3XMvVfLspPKSoiTC/PCMOyunzpDbVhIRXvg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=srorWpFYsC56ir3vlKMDlINvko43heltFVDPWErdedMwH2vE/7K7Q0Ycl95qu84eT
	 9LZAjSZAyaEWPuOqPbVPbftjGN9wi03I/vTrnlGAZvG6iW7tz9Hv6iTy6rQMq8fYqg
	 yhgJQ7sxLyRfSe5XLEcl4ftUqghZBk3mEwHfADdtU7VGLVBahJUrq1NobwF/0giHSV
	 0JNwvPpwje/eQYRQZqM9AAKN0n91/1iu0IJNTM5Xirc++dZ7Hp+Dz3ssIRxeOE3XMx
	 HRTZuH6wKhqrDdvwoHQa+DrOxs5Twn5uoy/ndE51L71Xq8PA/LCkGOdxOLw5+a9SNV
	 VYfYJTU1oNPYQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i5f9TFyYLUVG; Tue, 13 Dec 2022 22:56:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6267460B32;
	Tue, 13 Dec 2022 22:56:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6267460B32
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5BEC81BF405
 for <intel-wired-lan@osuosl.org>; Tue, 13 Dec 2022 22:56:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2B71E40157
 for <intel-wired-lan@osuosl.org>; Tue, 13 Dec 2022 22:56:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2B71E40157
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1vsJCBHdKJ5X for <intel-wired-lan@osuosl.org>;
 Tue, 13 Dec 2022 22:56:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E110C40141
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E110C40141
 for <intel-wired-lan@osuosl.org>; Tue, 13 Dec 2022 22:56:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="305895950"
X-IronPort-AV: E=Sophos;i="5.96,242,1665471600"; d="scan'208";a="305895950"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 14:56:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="773116592"
X-IronPort-AV: E=Sophos;i="5.96,242,1665471600"; d="scan'208";a="773116592"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 13 Dec 2022 14:56:45 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 13 Dec 2022 14:56:44 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 13 Dec 2022 14:56:44 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 13 Dec 2022 14:56:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k/BGtzKixFG0JP65vcsJ9YXJlTaleDkrjD9PmSvEu1UIr7+wxxxbR54FgtltUCwu1Fq4QX3tgUJr7hsw/SAAlagsa0My9zsjiv4mLzK/A61o9TZWgEhe4WhB7rh5CSOgEDMcKfNsVDGGAqMUt7FeyjGrnFpL+GSk9LTZt/OJUBUY/vpX0EN3N+bftdq7S5QGxKUQ35mZWz7RvrzjLPpQIXn/yg/hqK9Dutcjvb3S1N0AZ8/FSlcbZq8hmMhuOzzO/Ff2jIYi+TLZKRpmFgyneL2OKVzD9YmAoizhbLyiC0wn/WxLgco4q/F+PhQxSidLQYRsL+qgJo5DEwTs8hsN2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x8zVzlES+ER3JzKe2339l/sIbOY3AqKBVnOmDzwjQWE=;
 b=K/mQt6d960S2LzqvHbNS/CMz7bH7lxWv1meMa/W+orzPgjLme3PEFwKp2GQUqtJsheV42Z0bosCeoZaF9Y5OaxLAcrfg0Gn6ThmRmq6d0RZgWVUcuc0U4pFMCNfx9lmpDS60DOrasTAX/cL/VhE7M8sc+dkxoFuLcljGEN94acGjZGwdKJCxk1t1ZZwQPvP2qLuP8iroA+WDM1D6EKEGAyQbQuMoJPbrLWcXamgeYEpAe29/KLlLQNos8BRsXgp+xBPOBGNL2zayrmoNjwnt08drIDdztNt/4QHyrnfyIgxjTFiLx0IjFUJwuDCr7ekEhDzOQQl8ab2pOehbRLjztQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by DS7PR11MB6245.namprd11.prod.outlook.com (2603:10b6:8:9a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Tue, 13 Dec
 2022 22:56:42 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::8923:42c6:513e:a331]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::8923:42c6:513e:a331%5]) with mapi id 15.20.5880.019; Tue, 13 Dec 2022
 22:56:42 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>, "Gomes, Vinicius"
 <vinicius.gomes@intel.com>
Thread-Topic: [PATCH net-next v1 3/3] igc: Remove reset adapter task for i226
 during disable tsn config
Thread-Index: AQHZDdMI/FJX8aWgikKlDUtBCsVQ0a5sa0oAgAAD7KA=
Date: Tue, 13 Dec 2022 22:56:41 +0000
Message-ID: <SJ1PR11MB61803B108EB031BAE73E1823B8E39@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20221212023706.13384-1-muhammad.husaini.zulkifli@intel.com>
 <20221212023706.13384-4-muhammad.husaini.zulkifli@intel.com>
 <6e464647-1f4b-8f5b-9955-fd9ebf8f6ca5@intel.com>
In-Reply-To: <6e464647-1f4b-8f5b-9955-fd9ebf8f6ca5@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|DS7PR11MB6245:EE_
x-ms-office365-filtering-correlation-id: 3e809d68-3ed3-4120-82ee-08dadd5d4d12
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1TGo4OSU1/6haS3hnVTqHEIef9YN7XI3Y6ywT1I2Uq6nhTfa+AoWkW56B+aG++wJJZf+dPWAue3b5rmj5OsQSqCJfy+lzDeAHs/Ggb1IFFssUkpx1J7r0IJa0OecvRqrrPclKp8kaZKTzouRmGrBb1AplnGmZKJBU3jPV+asuuSIMgsUnf64QEJKTy4ubyv21WvE8KcokJlap2uyNIyToEHN1WMUjVPX3eLtFsWGxzL1pffyRUuvvXeWEe1O4a7OXkag3TtIfAJ8nqfPvjjJgXEadPBsfJNDQwTyH/vyUKDw0757RjRDfkFmIZPZyrof6GBPrlVINh/6VOro77VtZLMRs37ZADi+dAYsNhtWC51GAkMhDkV80TojTZ8a6yIGARKjpyXLwQfYOVmum6txg/X9yVvT/umn1ceUC7E8UPfbsgmTOyjqNBI1RoxAjmUetZeZS6OClc6ZwK88cARPe14W0aFFo0fWxn3h5eTgcUFhViHFCRQ4c8JBu6gzD3YgwfpOcZ223/R93fcTqa1vkBNrkWZSGXnWG5dv6vUVQAwuWJDP14O5qdkfQOdv16allHNnF6cfczUOgsgFEhTCH/tw9Vo6yK5txTGdPzQq7obihefbYta9Hh6MvSpoy0iLtfC+BsnY8BFWvm6HtidGr2DVXGWEFyVIe4Zu2+uATKFg1k+S1DsHzvSzB5h97p+1YhQ+2yxV0EM90ttCZETKGQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(346002)(376002)(136003)(39860400002)(396003)(451199015)(2906002)(82960400001)(38100700002)(55016003)(122000001)(53546011)(66476007)(5660300002)(86362001)(71200400001)(7696005)(6506007)(83380400001)(41300700001)(64756008)(4326008)(76116006)(66946007)(66556008)(8936002)(52536014)(38070700005)(186003)(8676002)(66446008)(316002)(26005)(54906003)(6636002)(110136005)(9686003)(478600001)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bFd4UjZ2a21wMldXQjcwUGQxK0cwbG00U0kxS0hxN0lmN3hISE9GbGJMVHhs?=
 =?utf-8?B?anZHQnQ4RVhReVZpcUVMVHQ4bm05c2dDRFliS0dPYjd6akx1RVlTS2ZuSGln?=
 =?utf-8?B?c2EwT0wvTEVCUlVVZVE0Q25WallRQ2JNdW9GUjVnTjdNOGZzNkdPVUhqSDYr?=
 =?utf-8?B?dkg1eEdKZWlrTXBtdXZRdzhYT0pMNVRsVmpyNzRZakdXeDd4Zkt6RWxrcy82?=
 =?utf-8?B?T0tsVm16clpUcVEwZ3FlbUpFY0lzRWlNbS9jY2U4UzVueDNrNkNwblNkbkFI?=
 =?utf-8?B?WFBQM21TTUdDMXMvS2tqMnJIZW9MQWlJUHFuQXByYUxaVG9FQWxoRzJSUGNs?=
 =?utf-8?B?emQ2OHg1RXFWdTArRU02czcwVXJoNG1wRHZPbkJNMUJFK29rSzJpWkoxMFRL?=
 =?utf-8?B?ZEJkekFiQ0xISHp5UXVjVkl0UUNyakFrOGNoN0R5UTJoejFMeGVMRkZCOG9u?=
 =?utf-8?B?UFFqTEVzVWtsWXVnbFlSSThWMzduU25ZdDhkWTEweDJyd1lWa0FiRXpiUkNy?=
 =?utf-8?B?b3IxRUpVNm92TnEvK1JKQ29NbWJLdit0REJPU3lnVEpnMUJqN0JVM0lDaXh5?=
 =?utf-8?B?Nm9RUGZPQ3hTUTJBTml5d29YYjh5aFQyMzd3b0ozZ1o5MmtrOFJ0NVpnbmdX?=
 =?utf-8?B?WUdCSG1xclVLNmF5M2sxb1ZGTStjb2kyWnkvWHJkQXVYcis2a3haeXJ6TjdZ?=
 =?utf-8?B?bVZkZEwyb2J3amoyclVWNjhMM0k2NXJDTmJKZ1pxWE1IcUtrTkVPN21FS3lI?=
 =?utf-8?B?K24yditjbFRrb1BMUHIrMExDQVZXZVBPOGZVWFRya1diZ0RHUjFRYytvUHJx?=
 =?utf-8?B?cVZXcUt3VG1hamExNjNxczlsU2JyME56dDRPVnBsMGJoMy80bHZhNHEyUjYw?=
 =?utf-8?B?ZkZ1SzhhcU1lSjQwVE5Ld3VVSytzR1FCWS9ISXo0L01EVC9meUdQYTFzUHg4?=
 =?utf-8?B?aE5hbGRzRlF1M3RVTnRmc0FHcGdIRzlqd2hUdXl6WExZVTNXdFFkTGU5Vkx3?=
 =?utf-8?B?bFpGd1dyQ1JvU0FwQjl1bFlHZ0c4Nmw1UnZoMFE3ajk4blN3RWR3RVlwWVBO?=
 =?utf-8?B?QVdWRVpoUTVUK3AvV2g0M1RHNDdKbXlaeGFLR0NVZE8rZXhHbHZEc3ErMytV?=
 =?utf-8?B?RW04cFJtb3d3NitjV2x0aW52enEwdWpyM3ZUeTh1bDRhcEJ3R3hWREpsM3Ur?=
 =?utf-8?B?ZFhlUmk1Ty80ZVRjejZXcUNiMDBQZ0NPOFNlL0dkQjE4emlKVjltdmticXBx?=
 =?utf-8?B?KzlpQ0NaNkltRDhxQ3BHK2tEd2NnQUhCUGlpWDhsUlIyS2lUS3FUdE9paTZR?=
 =?utf-8?B?Rkdjalg2emRyYXBJSFZraEwyMFhYcG9OTTgrUmR1bzZic21CTFUwUHc5aE56?=
 =?utf-8?B?cDJRdmxvajgzek0vWW1zTEtHVGhWc0pVMTN2R0xOS2J2WUVJWVBIdUk5dVlQ?=
 =?utf-8?B?RmlrbWZJZ00zTTlKSGFaNUl0aENKcUxtOTQrcWVmNUFXMnVxdy9STlhyLzRJ?=
 =?utf-8?B?anB6NTFXU0lkQWZxWEJNaFljemRqS0VITzU2bldNZ2xYbjFrSDNyQVVBV29H?=
 =?utf-8?B?Vi9SM2wwQjh1VW0rVnFmRWtFYkRSRWRoS1hTMVVRZXZWTHpzaFpNeTJPaUdX?=
 =?utf-8?B?UUZoZUFXaHdOTCtWQ05NQ3F6MlVqanJNRkxYNEhvWVlGUUliWnNYUkhuNlBN?=
 =?utf-8?B?Z1ZzMU5nZHVLZ3NVZzZ4NGZwcmxic1VzY1MxVlhRVUd5QkQwSnhieSttWnVa?=
 =?utf-8?B?TjhRY2UwekZLRnJ3OVZ0Vk9OYmY1S1BCRitIT2tTdWtNSmkzV29XcTlxZ01I?=
 =?utf-8?B?ME5FSGZBN1VPanZGOGtiU2lWNFJPZGYvS0J1RlRGWUk5TnpLS0pQSms1Vnhw?=
 =?utf-8?B?K0hHL1Vwc2M0QVZzcGt2NXdpNFEzRFhQMjlXYzZ2TkxJODFyTEM2aFFER3k2?=
 =?utf-8?B?QU0zS2VSYXRodVp3N25zTDd1bndRUE43cjFVYncvM0loWGVDaDhsY3h1OUtF?=
 =?utf-8?B?NTM1R2pOTWptbmtId1IvcnRTZ0gyeGk2OTdFdTd0VlVZWkpXZ29OK0ptNXV6?=
 =?utf-8?B?SE1ENDdRMVF0cGkxeVdFNXd0dnZyVFlnZDJnN1B3Qno5bWRMbjVWWUt6dUhm?=
 =?utf-8?B?VkZBK3ZMdkV3RUhRTlA2MWIydkIxc0YybVFxMmtTdEhPVjd3MHFkSGRyeDRR?=
 =?utf-8?Q?st4U8Z2u9yPhiIG5UCxK1lo=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e809d68-3ed3-4120-82ee-08dadd5d4d12
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2022 22:56:42.0477 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3/U4POXE+/iGwETrYjTZecOzaycuR04YDBJqCqMKBjhtLRf9Q+xHRYmnlfEll1ghhoHfmsrS+cEN3pufeQMCaXyFR2zYk4Gk+jHkvrZrq65++SeQoOc9by48aoO1lQ5j
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6245
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670972205; x=1702508205;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=x8zVzlES+ER3JzKe2339l/sIbOY3AqKBVnOmDzwjQWE=;
 b=VxOitHTHAodAIofO/6i5PfSMimVgp9MvCrhMmiEF7hEh6tZMAuSaHQAD
 Xn3GnhJIgkbU2IVizwoXLCEXDQUxJCdFEGIegLZrCHjPP3L8HIgD1a1fy
 YBaDBeqVKoBgDkOAqUZ8FsT/qlX8jeorpy78kmBmfOThn0M5MDrMUFesh
 H5KE7udLMxnZemqcPIcfVVXhLpest1c0pDdbc4HETlhvl8Qa1CR7mSaYb
 Aegu+aZaDxLmKQshPcQNof7X7XzmzTEqTZlGlQf6oeEfad9z5b1Ek9FJh
 1nEadgduTamj9YTwFxINq7MorZuizb4xIZnH+n4IISZZtftT8JJR1+3C5
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VxOitHTH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 3/3] igc: Remove reset
 adapter task for i226 during disable tsn config
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
Cc: "tee.min.tan@linux.intel.com" <tee.min.tan@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Sent: Wednesday, 14 December, 2022 6:37 AM
> To: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>;
> intel-wired-lan@osuosl.org; Gomes, Vinicius <vinicius.gomes@intel.com>
> Cc: tee.min.tan@linux.intel.com; naamax.meir@linux.intel.com
> Subject: Re: [PATCH net-next v1 3/3] igc: Remove reset adapter task for i226
> during disable tsn config
> 
> 
> 
> On 12/11/2022 6:37 PM, Muhammad Husaini Zulkifli wrote:
> > I225 have limitation when programming the BaseTime register which
> > required a power cycle of the controller. This limitation already lifted in
> I226.
> > This patch removes the restriction so that when user configure/remove
> > any TSN mode, it would not go into power cycle reset adapter.
> 
> This patch is mostly undoing changes made in patch 2. Is there a reason you
> don't squash the two and mention the net change in the previous patch?

Tee Min and I have discussed this topic, and we've thought about separating this 
fix if we ever encounter a situation where removing the tsn configuration requires
 a power cycle. In that case, we can just remove this patch.

> 
> > How to test:
> >
> > Schedule any gate control list configuration or delete it.
> >
> > Example:
> >
> > 1)
> >
> > BASE_TIME=$(date +%s%N)
> > tc qdisc replace dev $interface_name parent root handle 100 taprio \
> >      num_tc 4 \
> >      map 3 1 0 2 3 3 3 3 3 3 3 3 3 3 3 3 \
> >      queues 1@0 1@1 1@2 1@3 \
> >      base-time $BASE_TIME \
> >      sched-entry S 0F 1000000 \
> >      flags 0x2
> >
> > 2) tc qdisc del dev $intername_name root
> >
> > Signed-off-by: Muhammad Husaini Zulkifli
> > <muhammad.husaini.zulkifli@intel.com>
> > ---
> >   drivers/net/ethernet/intel/igc/igc_main.c |  6 +++---
> >   drivers/net/ethernet/intel/igc/igc_tsn.c  | 11 +++--------
> >   drivers/net/ethernet/intel/igc/igc_tsn.h  |  2 +-
> >   3 files changed, 7 insertions(+), 12 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
> > b/drivers/net/ethernet/intel/igc/igc_main.c
> > index bf66395a59bb..fdb7f0b26ed0 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_main.c
> > +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> > @@ -6003,7 +6003,7 @@ static int igc_tsn_enable_launchtime(struct
> igc_adapter *adapter,
> >   	if (err)
> >   		return err;
> >
> > -	return igc_tsn_offload_apply(adapter, qopt->enable);
> > +	return igc_tsn_offload_apply(adapter);
> >   }
> >
> >   static int igc_tsn_clear_schedule(struct igc_adapter *adapter) @@
> > -6117,7 +6117,7 @@ static int igc_tsn_enable_qbv_scheduling(struct
> igc_adapter *adapter,
> >   	if (err)
> >   		return err;
> >
> > -	return igc_tsn_offload_apply(adapter, qopt->enable);
> > +	return igc_tsn_offload_apply(adapter);
> >   }
> >
> >   static int igc_save_cbs_params(struct igc_adapter *adapter, int
> > queue, @@ -6185,7 +6185,7 @@ static int igc_tsn_enable_cbs(struct
> igc_adapter *adapter,
> >   	if (err)
> >   		return err;
> >
> > -	return igc_tsn_offload_apply(adapter, qopt->enable);
> > +	return igc_tsn_offload_apply(adapter);
> >   }
> >
> >   static int igc_setup_tc(struct net_device *dev, enum tc_setup_type
> > type, diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c
> > b/drivers/net/ethernet/intel/igc/igc_tsn.c
> > index c2cc5d406213..b03c6168bd23 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_tsn.c
> > +++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
> > @@ -289,21 +289,16 @@ int igc_tsn_reset(struct igc_adapter *adapter)
> >   	return err;
> >   }
> >
> > -int igc_tsn_offload_apply(struct igc_adapter *adapter, bool enable)
> > +int igc_tsn_offload_apply(struct igc_adapter *adapter)
> >   {
> >   	struct igc_hw *hw = &adapter->hw;
> > -	int err;
> >
> > -	if (netif_running(adapter->netdev) &&
> > -	    (igc_is_device_id_i225(hw) || !enable)) {
> > +	if (netif_running(adapter->netdev) && igc_is_device_id_i225(hw)) {
> >   		schedule_work(&adapter->reset_task);
> >   		return 0;
> >   	}
> >
> > -	err = igc_tsn_enable_offload(adapter);
> > -	if (err < 0)
> > -		return err;
> > +	igc_tsn_reset(adapter);
> >
> > -	adapter->flags = igc_tsn_new_flags(adapter);
> >   	return 0;
> >   }
> > diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.h
> > b/drivers/net/ethernet/intel/igc/igc_tsn.h
> > index 631222bb6eb5..b53e6af560b7 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_tsn.h
> > +++ b/drivers/net/ethernet/intel/igc/igc_tsn.h
> > @@ -4,7 +4,7 @@
> >   #ifndef _IGC_TSN_H_
> >   #define _IGC_TSN_H_
> >
> > -int igc_tsn_offload_apply(struct igc_adapter *adapter, bool enable);
> > +int igc_tsn_offload_apply(struct igc_adapter *adapter);
> >   int igc_tsn_reset(struct igc_adapter *adapter);
> >   void igc_tsn_adjust_txtime_offset(struct igc_adapter *adapter);
> >
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
