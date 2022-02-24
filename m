Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A1D4C2E64
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Feb 2022 15:28:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B63334156F;
	Thu, 24 Feb 2022 14:28:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vp7Ovqg3RyG0; Thu, 24 Feb 2022 14:28:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A477B402E9;
	Thu, 24 Feb 2022 14:28:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C94DE1BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Feb 2022 14:28:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ADCE661187
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Feb 2022 14:28:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H9dV1PIl9XOX for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Feb 2022 14:28:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DC80F60FE7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Feb 2022 14:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645712893; x=1677248893;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=T+G5MPZG9WtYvzxHhbvrOsdquX5Nsx2Q7Ru7teHPaQk=;
 b=VCGnAXbp4j7/J6j2wuH0PXpg43E3kR/u08h6ECLvgNRRLN/Yd6AKAu+Z
 6U/Yj3UWfHnYkWmpMSj4GHSslAG52YATFyMo8mc5p/onNuGqLDvMc7s/G
 7bYITGojVvTx/beR89C4pRzaSwZAjs8LetJ1bmyL7tL/t3U5yKHzGEPne
 iB9mj7yqS6Y6/wVcSPJLevjIYA1SFQDbwWVJp2dTJpVYbveQE3WPZ6D4H
 rshnOLCsdEpDjZb2WMZvURn3uWLuo71jo5JK6DQ8AcOQOHjAAbsqAsSAV
 0aY1CJAEZJrsjIewfDyyVaR1XfsV3JmzhiirKT/TKMJOT5kLBx9ZuHBd7 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10267"; a="235751649"
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="235751649"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 06:28:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="506334811"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga002.jf.intel.com with ESMTP; 24 Feb 2022 06:28:13 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 24 Feb 2022 06:28:12 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 24 Feb 2022 06:28:12 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Thu, 24 Feb 2022 06:28:12 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 24 Feb 2022 06:28:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AQunOQnjEY7TGAWjWjYzc3/hzu7qN1INiZYx+M0bDD69QKf5+z7QU826EscXa0UhvkEvuGxRU3zZKTgwQnhwq6teWyl77AEqHH1UALTRNOTYseDFemSFOfRP9+9T5/gNF9hYyGBzjADMeCmim8WLGz1NZ0ifIYA6uyQEGwVLtM3Wt5loqRoFPiyOSUx2XKWcfzfo6b0X5eN9PeLpbPYYILexqURvm0YIN2xF7tyrMwnf3n3HFlcqwkqHhyOERCypt46WtPqgStnIWEGUJEwUQWTtMXdKII9rxJ4l7uobI1CEiPZqucrMHBRvLwEJnsBa9wqG9kp/C5jrOebvbgf/vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T+G5MPZG9WtYvzxHhbvrOsdquX5Nsx2Q7Ru7teHPaQk=;
 b=j0TT39CZEXLgvsNl8NkSf0itxfuctjGkNrPmRDv093P6XgPWYFatuoIdLRM+wk2bU9IktjCBUJQxJQG86gR9fRGG95qereVDxI8q2eNtgtB1dEGP8CLwG6venRsd5YJy2GSzEn8+0qXb+Y9qwVdI4jRu6JNKAiVmvTME7PoAavBq3PHnMAVrzRTzS3c/OoNvdvtoKEpe/CS03sBYFPDacQf7ySwIQFSyFQO8jFaoLSJC5lDFdwMfq1HOZwvjPn0RbOW2NeK/jHTLfLRVbAnQ5+aSWCogAz5IEBFvlkhMQBFOhL3GhszNLp1DbVLaBl7G1OzRCqo+/Q1cmv4nvF1KdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 DM5PR11MB1739.namprd11.prod.outlook.com (2603:10b6:3:111::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4995.24; Thu, 24 Feb 2022 14:28:10 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::1912:e2ed:a440:4910]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::1912:e2ed:a440:4910%3]) with mapi id 15.20.5017.024; Thu, 24 Feb 2022
 14:28:10 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Joe Damato <jdamato@fastly.com>
Thread-Topic: [Intel-wired-lan] i40e and TSO with MPLS ?
Thread-Index: AQHYKN6XWNP22JWnA06houkUcSxyOKyh91qAgADME0A=
Date: Thu, 24 Feb 2022 14:28:10 +0000
Message-ID: <DM6PR11MB4657CBB8B06ACCAB0CE201429B3D9@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <DM6PR11MB4657EB65F784C3E816FD27FB9B3C9@DM6PR11MB4657.namprd11.prod.outlook.com>
 <DM6PR11MB46572510E594BF3E789AC5CF9B3C9@DM6PR11MB4657.namprd11.prod.outlook.com>
 <CALALjgzQPDdNTjCBD+S2Adymk9XTH4qa4Sb6-kBuh96oKg+ajQ@mail.gmail.com>
In-Reply-To: <CALALjgzQPDdNTjCBD+S2Adymk9XTH4qa4Sb6-kBuh96oKg+ajQ@mail.gmail.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bb4b4f5c-034c-4171-3170-08d9f7a1e248
x-ms-traffictypediagnostic: DM5PR11MB1739:EE_
x-microsoft-antispam-prvs: <DM5PR11MB17399CA06EA70225C6C1109F9B3D9@DM5PR11MB1739.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8+gzFd+yqiah5+3wXu7kvEypSRGgE7AqPRUBXU8n1wrkcJpOU8+KauBoI5C3pJzCy8wprvOwslJNccy0AhxaOEXrKmsZGlSHZVu0c0ZhOiULnZo65t89PgnEEwBCXweIELWzP1xBgr2zr1GRvEBLGIcphavschIhlQ3MQ2yUlYfUtY6Yz1HNsCqVW+4i6I9uguUy0QHpZHPWcPNtkgvPrDoIKGL/dKOQd3M67mZbLGzdPpuV3eYmzXOc4yxoj5D59J9R+mt//56LRU+fu1ZJWwKcHFbGv+8Q13/YYGawQkmhvQ9JOJXAr/zT6AYpPJ3iESYU/UDAGp1kkYf80G+ER8LhnK//ANRK4D2d9Rn7mbEAOhkQjqU07IWlT7LKRqzFmZVfQxfZAF2sBScZlkdutJN7i//q2M8d/ybMxTDEpawJvpx6xt2tnGaXhmPt6a3XbS0vX8OwH4rVokad70kk4EhESryj2uoD/Jtw/8WAV3aTebIsw3pxr9isGytHJcLOG7F7ghbL7bRazZ13VbqymdXkP2VhXUV6Nk2M2NL5QUbzFzo8hbkpwYubYsykVkM+U+2erzkYwpr3/OIfZqp/iApE2oa4k6Dqqcanvp2SZPyP5Q2ejksFKV4NOlNtTo1tOTdz9fK6ggvzZxmuQ6Xn7t/MgVSHoWvu+JEQ5ZoOzjb+cXDRJheLJGVQ5Kqdg+QXv2yOyIPhiNT0aD236qt/EA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6916009)(71200400001)(2906002)(26005)(5660300002)(186003)(316002)(83380400001)(54906003)(7696005)(6506007)(33656002)(86362001)(55016003)(38100700002)(52536014)(64756008)(4326008)(8936002)(66556008)(122000001)(8676002)(38070700005)(82960400001)(66946007)(107886003)(76116006)(53546011)(508600001)(66446008)(66476007)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V2pwUjk3OFNQL25hK2pOZDkxcUtjdU5DNDJRWldtVll4NFkyUy8rMjA1c3lX?=
 =?utf-8?B?bFdGRTNGa2ROakxseE80RlJSbWV3ekdERDc2NlZhN1pXNlhrU2pPL1psUWlq?=
 =?utf-8?B?MFU5bDMxQkkwZEJHRkp6UXFmNkhxRm1iK29XNGpQSnpLdDVBQlJXc1c3cEs0?=
 =?utf-8?B?Tm54REQyS1JteE9xQVJpQzNxRFBteHhaWWcxeGNBdFFjMlUyazU2dFNZQzlC?=
 =?utf-8?B?cDUya05vWnkyemlqNHJRWkZud3dGQTg1YkllNWVwYUhBS2hJMGpJQ2lQb2Zw?=
 =?utf-8?B?SC9mR3lWVDNObWFJUVhuK3Y4alZIdlJ5U2RRN3Fxa0k4M0NRbVlGTG5pZW44?=
 =?utf-8?B?K1NwNlFlZ1dTdUM5blA0K3hMV21BOUxaU2gzNUdLV3pNbVNaWWhqU3Nod0to?=
 =?utf-8?B?WnFxT2IwWFdPZnBsbE9nMmFzMVBURTNkNlBWVHpPL0w5TzB5QmplTXBRTjNI?=
 =?utf-8?B?MlBKMzN5RkNTRXhGZTVESkxUTVVqak9MWmFPeFpNaUVuTFdoRTFQUDVqVTlv?=
 =?utf-8?B?VFVkLzNYcGtOb1JPbEhna2pxbmFKSm9wemVZMVdUZXhIQU5waUcwVk9oQmZz?=
 =?utf-8?B?czNpdEFJSno0ZGZ3dERPTlJTRHBnaUJacmlpWUo2NmgzVFlURUlWUjdYbmRq?=
 =?utf-8?B?bVJudkpkalZEVy9vSGdyVnVLSEJBeFRwYzIrUC9rN2l0Zk9HaEZtREc4Z1BO?=
 =?utf-8?B?RnROMFROL09JQnJHUWI5MnVkbHhNUnJDYmJhdmdVK0VWa3VZckl0NFdSQ2JY?=
 =?utf-8?B?c2lWc29vd2lGSXpiUi9XTDlVT3lzZWZ1QVdQNGd1WUIwWEpXVHVBWW1tMFh2?=
 =?utf-8?B?Vk4wd0V2OGJmWEpwWWtZUTdtL21Xc213c1ArRWlKcnp4d1M1Nmg3WWFTZGJL?=
 =?utf-8?B?cUxPSHdTNTVmZ09OQ0J1L0hGendCeGYzMElmSXNjS1k4UHFHalZENHprcGE1?=
 =?utf-8?B?S2NqWjJDMFV5Y0o4RkoyanZCMVg4eExOQ1R4bTl4Wnh6RW0vdWV0ZTMwbWRK?=
 =?utf-8?B?czR3MkhCYVNiMjRHU2JtZjhycnlVRDdCMlUzZENpTGk3VW1qN0lGNmFDTGJI?=
 =?utf-8?B?R05ZVFF3ajRnZElpaWtTYTlPTmNHeEJkaS9HU1VDdGRQanV3a1lZUUpKbitm?=
 =?utf-8?B?cVNieGgzTEx3YkV2T0EvaXBQVktFTXEyUEJmU3hTUUlKVkE4ZEVxZ1FuNU9n?=
 =?utf-8?B?d0t4L3gzMnk3VEg4WDROU0wzRGFuTXVtbUQ0N2l6WVBrQzhSOHNzYWxPSVd5?=
 =?utf-8?B?Y2JUdmVpeUtIaDFlV1VhS0xqNTNLWWpJcllYYnJpMnRJNUVLdlJmQWlzMlJC?=
 =?utf-8?B?Wm1QY0hMcnkrOU4vS2ZUYlNwWkcwdGM3MFZiQ1cvMFhPVVN1UzBXNm1LQXha?=
 =?utf-8?B?TUt2RWIwRnhrc3VrYk1yb3Z4a0tHQUcreHRQbys5azJmdWRMZWlrd0ZzSlpC?=
 =?utf-8?B?ZXNNb3JGMFhVVDkrMy90L0xRd2tqcmxESTFOTkhBdlVLc251SVZ5M0NtU2hq?=
 =?utf-8?B?dklCTE1WRVdnWVh0Q0RjdW91U003UDFVU2dJcGlkQW1ybHg0OE41cksyZFRU?=
 =?utf-8?B?ZzA3VmlDa2NVYnhYZXp4VElZOWU3TU16a3NadWFSeGFZREVKang3V1p3RlNR?=
 =?utf-8?B?NGVreG9BeHZBaDRFdTdNL3oyTUwxWHFMVE8xMFp3UUFjdzlFWDhJMkttamRv?=
 =?utf-8?B?akVVWGVDM3duYWNIcDZVb2xDQ294TGluWGxiSEFXcE83Y1B6MzBxUUNCZkFH?=
 =?utf-8?B?UDA1UnAwT3NFUjdUeDNYNW5PMmVMa0ErRHoyK1h4aUtrVEN5ay9wRjk3Sjkz?=
 =?utf-8?B?ZE9PZU9WeTM2ZUQzYU51ZGhseEllSFA3OHhGTFNjZ1dGOXd0ejNHdnZHU2Vs?=
 =?utf-8?B?MCtSNWxHOXY2MHA3YzM4QWlER05SWWxONTViTHo2NTNuNzZQNWZmdVFUdExG?=
 =?utf-8?B?MTBXU0VRck82VnR4cmk1YjhlUXNiK3Z1cnd6eVFUQlZuTms4MFNOQzFzeUxz?=
 =?utf-8?B?SXpDbnVkWk91c0ZmRFVJQTRFMDRZRHVoQWpPS2tvQjY3MS9LbGFRMUxZNEtr?=
 =?utf-8?B?QnRVdWl3ckN6M3FBd2p5VWVxcXkyVGJCMnF0S1AzRE16QmxER1lsaVNLTm9E?=
 =?utf-8?B?QzJySERraGl5TFE2VlI3Vk5qVjlMcGxuSi9NMlg2UVNJdHlxQmpjYjhGTUZx?=
 =?utf-8?B?OHVabmwrbEd5WGY3RmdFc1NrVVBwOStra1JkWk1OemkvS2tOcXhhbHJobm5r?=
 =?utf-8?B?b1BpMnU3ZVhLaU9MNEdxVWc0aWZ3PT0=?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb4b4f5c-034c-4171-3170-08d9f7a1e248
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2022 14:28:10.7032 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J45sy0JXEKtTggqZtVAXC3g919rM20rokyOOjDhPCIQXgGkb+lk6lsgI41mqYAD4X6QUKJ/jd3dLLy/TK0j7ABU1D/XGGE9JQyWMeblooXc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1739
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] i40e and TSO with MPLS ?
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> On Wed, Feb 23, 2022 at 9:56 AM Kubalewski, Arkadiusz
> <arkadiusz.kubalewski@intel.com> wrote:
> >
> > +Joe
> >
> > > Greetings:
> > >
> > > Does i40e (XL710) support TSO with MPLS?
> > >
> > > We are using firmware version: 7.10 0x80006469 1.2527.0
> > >
> > > We've attempted to add support for TSO+MPLS to i40e, but were unable to
> > > get it working. The patch is included below for reference, but it is almost
> > > certainly incorrect - and I am not clear if the hardware itself would
> > > support this even if the patch was correct.
> > >
> > > Applying the patch below and using tcpdump shows that:
> > >
> > >         - packet data, as seen by the pcap filter in the kernel, is large.
> > >           This suggests that the kernel is attempting to offload
> > >           segmentation to the device,
> > >
> > >         but
> > >
> > >         - those large packets are not ACK'd by the client
> > >
> > > This suggests that either:
> > >
> > >         - the device does not support TSO + MPLS, and/or
> > >         - the patch below is incorrect
> > >
> > > Does anyone working on i40e have any insight on this?
> >
> > Hi Joe,
> >
> > I have done some research for your case, good news is that we believe that 710
> > hardware supports it. Currently we do not have plans to implement such feature
> > ourselves, but we will do our best in reviewing if you decide to implement it.
> 
> OK, thanks. I appreciate the information and your willingness to
> review. I am pleased to hear that the hardware supports it.
> 
> > Such offloads should be supported on packets with up to 2 MPLS tags before the
> > IP header. For start, you might take a look for the features pre check function:
> > static netdev_features_t i40e_features_check(struct sk_buff *skb, ...
> > It probably requires an update after the changes you have posted.
> 
> I took a look at i40e_features_check, as you suggested, but I am
> probably missing something.
> 
> My understanding is that the call graph on the xmit path is roughly:
> 
> __dev_queue_xmit which calls (in order):
> 1. validate_xmit_skb -- this eventually calls i40e_features_check and
> harmonize_features which will use the mpls_features bitfield set in
> the patch to turn on the TSO bit
> 
Just saying, worth to check if the required flags are already set when
i40e_features_check was called.

> 2. dev_hard_start_xmit -- this delivers packets to taps, then to the driver
> 
> dev_hard_start_xmit internally hands packets to any taps installed
> (for example pcap), before handing them to the driver
> (i40e_lan_xmit_frame).
> 
> In our tests of the patch below, we see that tcpdump reports large
> packet sizes. Since we see them in tcpdump, I think this suggests that
> everything leading up to pcap delivery (including i40e_features_check)
> is correct... otherwise we'd see smaller packet sizes being delivered
> to pcap.
> 
> This leads me to believe the issue is somewhere in i40e_lan_xmit_frame
> or below -- most likely in i40e_tso, which my patch attempts to tweak.
> 
> Let me know if I'm off track and misunderstanding your analysis, but
> based on the above, I suspect the changes to i40e_tso are buggy.
> 

Seems like your understanding is correct.
Are those packets actually sent to the wire?
Any stats are incremented?
Anything at all shows up on the client?

> Thanks,
> Joe
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
