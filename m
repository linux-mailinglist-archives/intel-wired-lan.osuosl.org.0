Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C9E3791745
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Sep 2023 14:38:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 85E8840245;
	Mon,  4 Sep 2023 12:38:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 85E8840245
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693831094;
	bh=/NMA3emk5si2A6vyWKiJ7knhaLVo5y15+9RBZTO+oQ0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6gCYIBVFcrXj5VRtcbWCK5XSIv+WkwyFJIAqxmS3rQ4pxdaPhmmDPWL6wVRArhrFp
	 9+/sVDp/kCmz2IIuJAbub5ldWu4tRlYurQ6VO6nHOvjov5KqqRj6u1L1CvnYnrnLah
	 eJoa7qkWnE7KnNa26daarxAux4fSUDBip1e8vWJ6Om0AeX12FWHF91ZgQXfddvGxug
	 77uNnmC1AVto3ZCyyJtbq05eUT/pvA8xjaMz2GLKt1PcNw3QPm2vDjRXmgdXuA8bhh
	 qlNt+IiiTBQChdm/THhLqy5vGx3UTPc6Vx2PpHv7CjBgCFWMqnWW+og1duEUKpBKgn
	 sKTa/9/SkW8OQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RV2vUNGHOcT0; Mon,  4 Sep 2023 12:38:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5C50540079;
	Mon,  4 Sep 2023 12:38:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5C50540079
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 724341BF2B4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Sep 2023 12:38:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4043F8188D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Sep 2023 12:38:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4043F8188D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wBYLTznh4V_d for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Sep 2023 12:38:07 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6EACD81882
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Sep 2023 12:38:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6EACD81882
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="356085756"
X-IronPort-AV: E=Sophos;i="6.02,226,1688454000"; d="scan'208";a="356085756"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2023 05:38:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="864339964"
X-IronPort-AV: E=Sophos;i="6.02,226,1688454000"; d="scan'208";a="864339964"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Sep 2023 05:38:06 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 4 Sep 2023 05:38:05 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 4 Sep 2023 05:38:05 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 4 Sep 2023 05:38:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gvOsrWHFyh7OCp+tBTyxcult5q/UQBdS99UTZhSp/ESOfcVUPHiQTwPBA2r3SZRtzDdiSkDyUjAezHLDc9CZE+0U874qeZAY5/AqHykrAY8fehYJx02ycrpRWhXcboSWc1nfbNoN/NZwHEKBtPwpM2+3lsTdaUA6eQPxcCjZkw4ACovL3rrwuWLJNaT1UvxgcPhGUlXwBomZoCKIF/9RtsnnrHLcJRe+2+8YHKjdlgTiFK96Hc26fvfo+sJEp6Kt5anQJzVhCR8HPHnUYLPa5/rnp8jdJuK6GwHw4uNhedE7MyJqgFfR5XoeywzBodEFFstvbHmuDP3ExyU0DPCQSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UZkGx5fVd2GNZYZbVmoHVfc7mBi5KTK9QZr8/97VRbw=;
 b=hiUtfVj8AApzhIxqmu58WLsnU5Inyg0yE7fINwRam6kuSZCr2HHyJTDikkAWuhACz0WCxc6pMtMapQBD68p/iVBZH1eYyQ0lg9wbnBDsRd3kDzomqOZ5JTKQTxCtnkcB8r++Ni/rEIer8F8zNo6nQf3XtiBz6N+sAkR/OzxL8EqVvZAVv73Q5AsickXou3DdnpkT0xSFSpkzdEZ9C6AObm2cBw5OHAeGRBffvjG+pITQPqou1p2FgDalTa3go9RFuWaAdfk1RCFZEPvqSQ1KVRyMEuF/krUUDr9uFp07EXd3rWO1AlVX2sRuWdO6l/BrtIG5Bzp/hzkP+zxE2xyQYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by PH7PR11MB6770.namprd11.prod.outlook.com (2603:10b6:510:1b4::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.28; Mon, 4 Sep
 2023 12:38:03 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7666:c666:e6b6:6e48]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7666:c666:e6b6:6e48%4]) with mapi id 15.20.6745.030; Mon, 4 Sep 2023
 12:38:03 +0000
Message-ID: <1cc1db76-3e3f-3cc6-1c76-9e01cccd0ae5@intel.com>
Date: Mon, 4 Sep 2023 14:37:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: <netdev@vger.kernel.org>, Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Kees Cook <keescook@chromium.org>
References: <20230904123107.116381-1-przemyslaw.kitszel@intel.com>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20230904123107.116381-1-przemyslaw.kitszel@intel.com>
X-ClientProxiedBy: DUZP191CA0036.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:4f8::28) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|PH7PR11MB6770:EE_
X-MS-Office365-Filtering-Correlation-Id: d3ec7d5f-ff5f-4abc-1495-08dbad43c7b2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kwYQtUigrsr0WQE3rLKQTRmPMfcGnwzgSgJFAozPu1X09RiILz1bVDA289XTs/UmI7LoZFRpTVc82OAmqRXtfyhK0HIbAlD8o3kd/dJZUqDFI+SaVlMp9YLJ+UAoqRftQHwXxaG2Ikx0h/st1k2oPFlrAJOFkcSxYHI8KGVsCZcuqsE+r0BM2PJpjJ6DyBJ3/bbYg0MSBJwBWl26SyWX1TOtZtkdM3O0y08xtl3jvu5Mvz/DTwNF60/0FW2miqQpsp4iqf4JASqUSpQdxtA0UrsDRL6LNK8KRqI1HeVgUDFBrt3qTTDzCMdBd3mn3vdv4Kpb9OajsENsdDatWWEGbWSgii+/gYQxF4j3X2CRL3dqwYbpwAaFDba4D75oBrTjvTqz8N5oMHf3Hl666Ga87viM+RzDx/g3vSrIoDHjQgTgHh/CN7bMP/o+reFGOp8e8qOhY2Rjj3HMhG9iDPUaKXF/qqAsgm1/APvuEewebo02cWFh1ro5kVVFqqRwPjHeHQXLE93GrajqE8P9LNuLt8zbapbjyqMm827uuQ4U0YLimxZeSK6m5FR+vzZlodgLTd08RthcdUdoD3/M8IgsBtuAN3/ithk0iX2wh4ferg8dVdaZXdimnrW4l34NlOQmcerKEQxjMqFfvpAy9p/Wsg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(396003)(39860400002)(136003)(346002)(186009)(1800799009)(451199024)(41300700001)(6512007)(6486002)(6506007)(6666004)(53546011)(478600001)(82960400001)(38100700002)(83380400001)(2616005)(26005)(36756003)(54906003)(66946007)(2906002)(316002)(66556008)(66476007)(31696002)(86362001)(110136005)(8936002)(31686004)(5660300002)(8676002)(4326008)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RmkzTmhYWXRXdGdkdDErWHJqTUZTMFpURzFYdTJPeHRRU2t5YUNzRHNkZVZV?=
 =?utf-8?B?MEJZR1pTeVBkWXRsN1ErbWJ6ME5YdENkd09VdTBzNmEzc1hNT0FrZWluY2Zt?=
 =?utf-8?B?dmN6L2g5NUpPR3B1Y1diZ3hnZmdtWENvVi9ROXI3TllENGZydlNqc25IbTNj?=
 =?utf-8?B?MlZXbkRBMEREMUhRTlh5aXV1MllOM0JUWFRvSy9MdlZqM3hvclgwZ0lIVU8y?=
 =?utf-8?B?RkZWbVltMk91WmFlQ00xcnFGbEQyaVNJVzd3MkVCb1RsVjhKaFZzZ3VJblRo?=
 =?utf-8?B?TnR1eGxaZDlRa1lteDNUanpOZEZGUzNKQTN1dk1tVFZZOGg3UWhsaUdQM2dL?=
 =?utf-8?B?SEdDNUtGRzVZZmZyb1VhQUJQYWVXUG0xMjZqejF0Ukp2c2N5TGZxRmhlWkhZ?=
 =?utf-8?B?QVErVlNDazhWblVURE51Tmd0Zkx5b25vc25rTXFBVlhnVDFVbHljaWpldDNz?=
 =?utf-8?B?Yk1LeW5YczNka0dRZWFaWmFPQ1dJN2tNSGlvVlJMOFg3RGZjaDl4ZlZjWHVh?=
 =?utf-8?B?UWtMdkNIclNDaTN0ZWdnZWhJTitOaGtlRFRLbEg2bHVWbDJpOUp4TEppZHF5?=
 =?utf-8?B?NnV3K08zREpFZXdzUVI0SFIzbWgzMmovdGVneU1IQnZvL3ppMlRNYjRBMDdM?=
 =?utf-8?B?Sk53dUNqQ2JsNm5hMCtSc0Z4Q0pBUkpxZHN2Y1owbzBUWnNEV0hmcG5XTG1E?=
 =?utf-8?B?ZWFMTGUzOUNZTGJVZDBtbFJBNndRZXdYcjNlLzh2akdaWkJzNE42TWtqeExv?=
 =?utf-8?B?Qm11UFNoUHpHVFdWdlNuYjVjSU5UVUY0R21EVmlIb3daWTFpanRiczZoWVAv?=
 =?utf-8?B?WHRIMTZFa1hHbThjeDV1SFlvUHFOc21YNTgyYlJRNWMvUjZGVXRUS01oeE9q?=
 =?utf-8?B?VjdpK0p1QzZ2MlRwQlR6d1FIYWlOblkveGI0ZVBPMXVCZi9iYW5GZDZWcEJX?=
 =?utf-8?B?UitlU0hZcHZBZ1RqMzBGWUpub3FRMC9wWEtKRmQ3cDcrUUtndW1wU3RxWExa?=
 =?utf-8?B?L3BFQ0RDVnlac0hQSnFkOG5NRGNUQmxHRFlRUStYN0lQNDZzREVBNFZiNXlP?=
 =?utf-8?B?cGJSK1IrTnhEVjkzeDJ6bWtMcHJIZlFEMHhnWnhiY3ZVS0tETFNxTjZvZi9w?=
 =?utf-8?B?MGFtM3h2Tm9mMEpPNGJmZGFSekJIZ0hkTHlrUHlvMEdsOUxsblExS0tacWlP?=
 =?utf-8?B?M0RMZkxIUjFwOVVUbzUrR2FUYk5YMDhhcDBFc0ZDVWNvNlVDT0xsVXVxWlpn?=
 =?utf-8?B?VVFtVlZmN2svaFZrcU1vaGg2RmpONHd4ZkVMWjdGSjZPdHltVmwySCtJdWJL?=
 =?utf-8?B?QXJ4TDByUk5nNXVGaTlIUnpNZDQ0bm13NjVua09WeThwQ25LK0VxYU4rN1F1?=
 =?utf-8?B?QWM0Ykt0M2pwcTNNT1FhT21DUnRBMkh3Zm1mS1FmajVHbEZYTU8zV2F6em83?=
 =?utf-8?B?a3oxYW53Vmp6Nys1NFFrdWVqdVVlLzhlUHNxdTBxdXBncFJIN2VWM0NYNHhK?=
 =?utf-8?B?eW8vckxFRzZXd0J3ZmkrVXNqTGYxd0RvT1BES3BKTk9BYjB6Rlcrek9KTlJZ?=
 =?utf-8?B?MFJ5RWZPNmhNcE5kaWcwcHJCRzFESDhsNnd6eDRldDRKZnJVb3dVcHpYb2RY?=
 =?utf-8?B?OWsvTTZuOFRkNHdxdE9oYlBqd0EyQTFXeFdtQUZJdkpRTG9NM05LdVpKWWsx?=
 =?utf-8?B?bmdOUTFNZFBmLzBDeHZ5L1FCemsvT3hVVnVxTmlBaEZqS3ZNOVJEbDg0NktY?=
 =?utf-8?B?QWZiUFhWV25WbkxvQnp2b2xQT1BrTmoxQkVwOWRmdXhMamZoYytlU2dPQS9V?=
 =?utf-8?B?Rko2U2RsNWllWEkyRlBGMHd4R2JvbUcvWDc4RUJ5QkEvUlNsTTlhRmloZ3E5?=
 =?utf-8?B?VG1VNldvbVlLc0xsenhvdGdhUHRWNUo3MTl3K0tzbUQxR05HRVVXY29JTzJl?=
 =?utf-8?B?SFBrSTdVbXhQNVJBRHdVQWRSTnBqaUU5cGVoSDNlVnpBYnFSUENZQnRlNWxh?=
 =?utf-8?B?MGI2eENGT2xvMHRkaWVYSThxWXQxcDRlSXB5SzRKYmtqcFZZN0pPL2FmNlJx?=
 =?utf-8?B?eUpvaDh5ZDZ5Qk9LUjBKeVJvTEVpbzN0RmJNOVY0Y09ZbXU3Y1pPcUJlVVRJ?=
 =?utf-8?B?c0M4NUQ3NkZIM0h6aENMWTZqVGlFSUlHMlVPZFo2RHZ0RThabEhCYzVnYTBN?=
 =?utf-8?B?REE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d3ec7d5f-ff5f-4abc-1495-08dbad43c7b2
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Sep 2023 12:38:03.0194 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9pWJ1ZnDWa0Vfr6HVB2WMesDkT/OWpzVEa9aUDrUiub/iqvyUgRK+ljmMnoIl7h98KbNR8MsWjTwyEEewgL3oiiGBbblomnGeEEkAyeCxkg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6770
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693831087; x=1725367087;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=z68R4DQfcdV3yzBCvg7M9nzlHbnUSTazJY4+fIXob4s=;
 b=iIXuBPd9UxAOfn4DCW0/IFn++Yv/ZQXVjbg+lXIyENbtob3/nlPm+dnO
 lWfXIjBSVzNZoqlh2MeliUXO785ebvchC44uKVf0mZ6HoVUESyBCpF4Qy
 aGK19vHJDNnWCiWzU8KKat/mLnuutW2dnGdjVQbeIjvUWPewYB0BDWH/+
 wAoSp4D7w1rfDNQqpSa0fJNfnzpGo3ZLPTreV1N6lXW7NpPOuqI55rFsn
 JzXeeTyX4IzE30qOQ8ALy2n37GiQbFjs5jcjrcw45uXD215qJLL48ukgT
 Z++aXj5Uwpe2g+s9c882mHOGCL9F5LL07o7MUvFbV20SHizWanFl113pH
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iIXuBPd9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC net-next v4 0/7] introduce DEFINE_FLEX()
 macro
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
Cc: Steven Zou <steven.zou@intel.com>, David Laight <David.Laight@ACULAB.COM>,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/4/23 14:31, Przemek Kitszel wrote:
> Add DEFINE_FLEX() macro, that helps on-stack allocation of structures
> with trailing flex array member.
> Expose __struct_size() macro which reads size of data allocated
> by DEFINE_FLEX().
> 
> Accompany new macros introduction with actual usage,
> in the ice driver - hence targeting for netdev tree
> - please me know if it is best approach here?

I have put this question in each revision up to now,
but perhaps no one noticed it, so making it stand out.

> 
> Obvious benefits include simpler resulting code, less heap usage,
> less error checking. Less obvious is the fact that compiler has
> more room to optimize, and as a whole, even with more stuff on the stack,
> we end up with overall better (smaller) report from bloat-o-meter:
> add/remove: 8/6 grow/shrink: 7/18 up/down: 2211/-2270 (-59)
> (individual results in each patch).
> 
> v4: _Static_assert() to ensure compiletime const count param
> v3: tidy up 1st patch
> v2: Kees: reusing __struct_size() instead of doubling it as a new macro
> 
> Przemek Kitszel (7):
>    overflow: add DEFINE_FLEX() for on-stack allocs
>    ice: ice_sched_remove_elems: replace 1 elem array param by u32
>    ice: drop two params of ice_aq_move_sched_elems()
>    ice: make use of DEFINE_FLEX() in ice_ddp.c
>    ice: make use of DEFINE_FLEX() for struct ice_aqc_add_tx_qgrp
>    ice: make use of DEFINE_FLEX() for struct ice_aqc_dis_txq_item
>    ice: make use of DEFINE_FLEX() in ice_switch.c
> 
>   drivers/net/ethernet/intel/ice/ice_common.c | 20 ++-----
>   drivers/net/ethernet/intel/ice/ice_ddp.c    | 39 ++++---------
>   drivers/net/ethernet/intel/ice/ice_lag.c    | 48 ++++------------
>   drivers/net/ethernet/intel/ice/ice_lib.c    | 23 ++------
>   drivers/net/ethernet/intel/ice/ice_sched.c  | 56 ++++++------------
>   drivers/net/ethernet/intel/ice/ice_sched.h  |  6 +-
>   drivers/net/ethernet/intel/ice/ice_switch.c | 63 +++++----------------
>   drivers/net/ethernet/intel/ice/ice_xsk.c    | 22 +++----
>   include/linux/compiler_types.h              | 32 +++++++----
>   include/linux/fortify-string.h              |  4 --
>   include/linux/overflow.h                    | 35 ++++++++++++
>   11 files changed, 130 insertions(+), 218 deletions(-)
> 
> 
> base-commit: bd6c11bc43c496cddfc6cf603b5d45365606dbd5

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
