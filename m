Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B1BA4C4017
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Feb 2022 09:28:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1E7F84046B;
	Fri, 25 Feb 2022 08:28:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZGHQ_QGDmFfL; Fri, 25 Feb 2022 08:28:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E91464012D;
	Fri, 25 Feb 2022 08:28:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 971431BF384
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 08:28:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8414E80BE8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 08:28:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ko_kqYsrjUAM for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Feb 2022 08:28:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 581A680AB8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 08:28:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645777709; x=1677313709;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=elGLtJ5UtsKaXhTCogU8qPDvaetocG1dsUORtHmYLzo=;
 b=dTtTsBWVgGm80TffiMDAfQxEekF+z9BlogeFBY1YZVG9Nhi+IFDFCjm+
 sJqjDiiBAfh0BBjTeQSjkGgMw/CKTUN/VnaG/VfKo/Lrl1lfMpaULWEIl
 qUCMf/M0BQ70a/GyESE2D3WzM++PV83dA4Yxj0Z3ulJQ1uIa5gdiiIBAk
 qg0VKNSKVO06cSBGVXITRN3VHO4hpFhhViiWI6E91/TlmsZKIgc7bbu1B
 Vx/dPsHM2DaP/laSmMnU0xEsY68L1Eyg2UpiZP/fPvMkSd696aRhSvoBP
 Ar7t30P0zzJyUN328oJ6Ejx6ZjIcpNCV7cf/u429cCqxZavCuZuPRMaDJ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="235959395"
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="235959395"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 00:28:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="607702971"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga004.fm.intel.com with ESMTP; 25 Feb 2022 00:28:25 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 25 Feb 2022 00:28:25 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Fri, 25 Feb 2022 00:28:25 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 25 Feb 2022 00:28:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZZNy+xetb3+G/aRWXdOxcuoWBvSqh+1GKCP+uY4e7MQFNx2ieKojThab6avzOyZZrdREGETaeUI1FRYP/EGww5hoJCN56OAMSEXkoQbHxUNVU13Y0S2SFMyrbzhUo2NCsfZZMdLBLUs3kW6G4AtMh7zXeC0Pl7EI1LubtbxJpp0150MmGOlUMN65e5HXOYZlKDn/4zivOfoqCXwETn2kCvc4wIXSgHL94OHUmaBImzYZhVF9JfCH7cnMDqYMnnSmDrVgazSyTjO8X5owDxz9HmML4j79pXHdeTFA88eeJpxWuor24x+9DK2+KUA5zQL34bhZ2CALCXt6m73k06Lmwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=elGLtJ5UtsKaXhTCogU8qPDvaetocG1dsUORtHmYLzo=;
 b=HAdd+Qg4KM5dWxmFAIt0fbpavjB5eRJyclJEEtnVYBygH4gGa0BfeNZK/AzkrQ3I+6Ft0sxmhBXpMWnR5wWKOS5bx+8QV4f5ShJjP6bLvGiGKncxHcP+wMyARMhzBuAuArpVUQmj6Cy3oaHxj8o1SoZ+WRiBHlBt2QaLBqcRztpKCICufZ0IBQ4LD7BUIFFXaJzaBHT+ysXZjj2W+jKjWfOXVh4SkHSLUnpaDz1nfpdqLJM720mReHFQ4DA9YiLZgydHprLAnangjoDwRMoexShiljAz3uHAtjx8R/Xccx+A7GeDwZvYYejqm9cfhFHb8jS9rLSlSS7VzntoRalEuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB2731.namprd11.prod.outlook.com (2603:10b6:5:c3::25) by
 DM4PR11MB5391.namprd11.prod.outlook.com (2603:10b6:5:396::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5017.22; Fri, 25 Feb 2022 08:28:23 +0000
Received: from DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::b4f9:69c4:33a4:aca2]) by DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::b4f9:69c4:33a4:aca2%6]) with mapi id 15.20.4995.027; Fri, 25 Feb 2022
 08:28:23 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] ice: Fix re-enablement of FW
 logging after reset
Thread-Index: AQHYKYOce2mxgMaiFUCJokhfT6YNNqyi9NAAgAD55aA=
Date: Fri, 25 Feb 2022 08:28:23 +0000
Message-ID: <DM6PR11MB273170230FFD896DE2998E22F03E9@DM6PR11MB2731.namprd11.prod.outlook.com>
References: <20220224133614.179091-1-jedrzej.jagielski@intel.com>
 <c46a15bfa098e8bcc8c1e7d88ebfaa69610ba7dd.camel@intel.com>
In-Reply-To: <c46a15bfa098e8bcc8c1e7d88ebfaa69610ba7dd.camel@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.401.20
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8db5524e-5a49-4c9d-b28c-08d9f838c9d8
x-ms-traffictypediagnostic: DM4PR11MB5391:EE_
x-microsoft-antispam-prvs: <DM4PR11MB539164E4B0B4E4E2DF483A7CF03E9@DM4PR11MB5391.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eIEl1tsEwp4a1LnOsF9o8oFMPCaq2hzsdnXWEcnMo3/+3xHbayib5cp1eBThwdZ52xcFqPy6VLncpfeS/x71r+5N8w7/dSH2lHJwVNwbESjRLI+NyOfZYc+EwJmG6Z/vGkYaFLxZPMnWoBg6bfw4H0QFP/638k78AeRbWtV+f3z4HL3zzpwfCuRJXprjZKC7LfI87kY9dyRJ8AkbuBhoiFT7SP3KA6CyUX2ClEFkZ7zhZxDLzg5kYYTEsK6T/lUoA00B9w6b6ZGmx+SNJunmpNOHyWeRaklkJrMO29z56AM/u5sJLEQ/1qXZFPBPKdDAcFQxlCA4rlh7HKMr1SP0wbV+Ff/o6rztwZXWPudFkBo6xFth0XLLPNqi4AFVS8HrE6FlDnNV8R10z64c0MHc38BkybmyKKvx357tD9CGDshs55ux+KKCtbIz1qocijo3VS83LPpp2R/OnfGJTfuFUvWsUTY+KmyynkeZbNXKuhhE/7l1yBAAG+iSbqO4WxwkAXagMRbGcNuXrtDVCYwtAN3NPdhVtZZpcc2d2lat+ebwawEwTwsUJ5A976VULDLqwEj0pwd0eiy2ybw4N8lyOTqbQT63NISjZmgG1XbHZOCuYSdzvT/gCoEZ6hGChkEcpkJBUDPAi7EA0wds2Ss0iipgndU85JmV10cK20QyY3F9JKIUi0XH8Aet6Ut91FuPeuvVVh3giqLwvbEvFD+E4Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2731.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(26005)(86362001)(8936002)(52536014)(186003)(83380400001)(5660300002)(122000001)(82960400001)(38100700002)(2906002)(4744005)(38070700005)(64756008)(7696005)(71200400001)(508600001)(6506007)(33656002)(66446008)(8676002)(66476007)(110136005)(55016003)(4326008)(66556008)(316002)(76116006)(107886003)(66946007)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y1ZKeG90Z3YzdDNSem5remxjTVloNGgyZnVxOUhTUG9lZ0xXY0RqeWtlRFFN?=
 =?utf-8?B?Y1Q1VlB4ZUlXRHlJdHZMVzlyNjZLN05GR0pJQnpXRHYvMFltNVZiQS9YV3Z2?=
 =?utf-8?B?WmdRMVMycVJxWi9pWkZSc0lGSDJja2FZMnVDZXBLbFdYRnBRdDE1Rm13UU92?=
 =?utf-8?B?dVhjTitFdGx3UXpnaDlkeGdGVW9RMGdQMEl2NW5HMStIa3lheHFqMG5mdTZ4?=
 =?utf-8?B?djhsVzloZkd4dlFsVkZvZ0M0QkU2MVlJMERLb1JWcDUyZWlZd1FKKytXYTZs?=
 =?utf-8?B?YkRVdW5xTVdwVmN4cmZFY3I3bHgvRjA0VkF3TUtia3E5a0U5Q2RwL0xhZ0Vh?=
 =?utf-8?B?OXh2bG5LbTVEdmFUdEhnMU4zbURXV1ZXNE9GWDh4bmFqNmhzakU2a0lWekVq?=
 =?utf-8?B?ZGhXbGZHZ1pQMklNVktwL3VLa2RKWkt0VGl2SzF6blp5a1BoREhZbTVXOXo3?=
 =?utf-8?B?a2NvSGlaRW55amU0VTRZQWRFMFdiYjFqeU1ZTjhrM0RPRlA0MnV4WUxvaW4r?=
 =?utf-8?B?Yk5YTGthOHNUS1RQaCsyMmdFdCtmeTBxQnRMbG9XbDVxanNyYkFuclgrSkJl?=
 =?utf-8?B?WnJjaU5mTTlUcEM3TmV6N25ScW5JMXJhZmYvY1ZXVkExSi9Hb005dHhhaGdW?=
 =?utf-8?B?VXZ1alhxQlB5OHNiTHlMK0twK21SeFdZRDB4NmxaYW5sRkNkeCtkY1JSTm9J?=
 =?utf-8?B?VXVwTEV5NWdnOFZrN1VFcWM3M2JTU2FlbWV2R0cvV21OS2s4ZkIyLzV4RmtE?=
 =?utf-8?B?TVFKdzRGdGdSRGRONTRLYUdvYTVRYU9icm9XUlNxTWJ1UW44czVnaU05Qm9F?=
 =?utf-8?B?MnMrMEdOR2JhSmpBM1g1UEJoM2JqWG1qRjVzVFMwUzNiZ1JSL0RPcitSNFVX?=
 =?utf-8?B?Ykc1WEFLVkZmdHFqUEJrZUtycmJRV1ZJZ2J1S01iS3ZmQ2EySVZjUUhqc3pz?=
 =?utf-8?B?MG5SV0tGUk9PSkx5c3pHT2RPaUhDMTMvQXpoU1I2MWVLSXNSaHBiaU54Ymlq?=
 =?utf-8?B?T3VMVW5yM051MXQvZCtwVHhxaUo0aEhNdjEwNytlbFFZY25QMjdqTUgyRG51?=
 =?utf-8?B?NDVqMEIwckl6emRDcUlDN2R3MEpRQkFWcEJwS2cwa3BVeHliLzkyZjBRUW9h?=
 =?utf-8?B?by9xT3l3SUNKZUtxUWJldFZvNTJ3SmM3Y3Z5ZzhSM0I3Y1NlQlgwQUpZaXBG?=
 =?utf-8?B?U1hRVkk3V0hKclF4RGJHdnFPUC9oNVNpS3hzS05UVTZyMWdCc3U5d3JCdTk4?=
 =?utf-8?B?NXMzK2xaUWhxbHZpRlBzbkdZNC90SHpWem1JSG9aT1NVb1k0VDlSYmxqZEVt?=
 =?utf-8?B?VWIxcWxZOElrZEZBMktiTzZKRkVhaE5iVmpaWCt1OHB0a2pzTmkyZXVyM254?=
 =?utf-8?B?Mm1yWXozR01CalN6eG14dksyeE1PT1ZEQ2Y5VnhIaFh3YllLVzZiSTNwbGps?=
 =?utf-8?B?KzFZTWZ1eFVXRUNVTnNiVFN2ZVo0SnQzSm1vM1ZlRXlqVXlyZ1p2TG03QWhm?=
 =?utf-8?B?TGRDS3h5QzFyMi9YRUtFeVFHeVI1ZjUzcHgwSzJvN0wxMWJ0UmozSi9YbDlz?=
 =?utf-8?B?b0M0OGZPU3pMQXkrU1ZtNlNpa1FBR0lIRDh6MFhNMllWYVNnV3dTRVgrMnhN?=
 =?utf-8?B?V0k0aGhOaW5taE14TDNBZUFPalRPUzRvK1ZCSXU4aVRCUG5xbzFQNTlrSkxV?=
 =?utf-8?B?QXZkSk9lbTFscWwwSDRYVVVLODVtMkxQTnl3Q0lnVjUwN2pia2R2STBmZWt6?=
 =?utf-8?B?Vi9lNWNWTHVxOXdRamd3V010UytLZ0tLa1A4RThKSFI4RDMxeHE1Y0RjQlEv?=
 =?utf-8?B?aHdwc2xUaXY1bmkva3lkdWNLdmh0K3VzcnU0TW1aNWJZYXU2ZnhhWTk0bTA5?=
 =?utf-8?B?akZLYXExV01nYTJZODNvMFhrb2pLL1NrWWRGM2N2bTJsRzNrSGkxbUtWeW5q?=
 =?utf-8?B?am9reG94bmJOOEgrTmNkaERmWU9ZbHhZMk5lTEJWdXpFSVB4VmdPb0prb0cz?=
 =?utf-8?B?VE83TURLMGxVU0Q5QnNOVnFtNmJ6bE9DSnBiSUZzWW51SUxVU3lZOUZYbElz?=
 =?utf-8?B?cFVSandzYjN1OGdHVE9rTm1IWjdQWDNBamFHblVoUW5nRnpvd3g4a29qTmkr?=
 =?utf-8?B?VmV6UWFYU0hxUEtyUVpjNE9hdTh4M3lwMzdBVjJ5eUhTQ0tvcWNUdU5mUko5?=
 =?utf-8?B?TGpJRmR5ZkVkRFQxeFhnekdJOFQzV0czMzlmZjRFc1lCSmJRZlVXRDk3MEE2?=
 =?utf-8?B?bDZkWnM0UXd0b25mOU8zZEtNWEZRPT0=?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2731.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8db5524e-5a49-4c9d-b28c-08d9f838c9d8
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2022 08:28:23.6664 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rOUXXy/Z3sk+5DibaJO4BZGehUBq7gllDcxlXbAeiAH9riColQvWbzFR6d2qpWGgMUdEWOvqNDIndKc5aXAwCgpBJiQFtMXPfLagTwjNxb4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5391
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: Fix re-enablement of FW
 logging after reset
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
Cc: "Shelton, Benjamin H" <benjamin.h.shelton@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello,

>On Thu, 2022-02-24 at 13:36 +0000, Jagielski, Jedrzej wrote:
>> Device resets such as a CORER disable FW logging, and currently, it is 
>> not re-enabled by the driver after the reset. This means that FW log 
>> messages are not captured even though FW logging was enabled at driver 
>> load time.
>> 
>> To fix the issue, call ice_cfg_fw_log() from ice_rebuild() to re- 
>> enable the FW logging after a reset.
>> 
>> Fixes: 8b97ceb1dc0f ("ice: Enable firmware logging during device
>> initialization.")
>> Signed-off-by: Ben Shelton <benjamin.h.shelton@intel.com>
>> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>
>Can you check the settings for your email. They don't match:
>
>WARNING: From:/Signed-off-by: email name mismatch: 'From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>' != 'Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>'
 
 Actually my .gitconfig file has to be automatically overwritten and 
 I have not noticed that.
 Shall I send this patch one again in that case?
 
 Thanks,
 Jedrzej
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
