Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C2004152F1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Sep 2021 23:38:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2B6DC614C7;
	Wed, 22 Sep 2021 21:38:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gstv4S3hDllT; Wed, 22 Sep 2021 21:38:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2BEAD60628;
	Wed, 22 Sep 2021 21:38:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 748DD1BF2F7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Sep 2021 21:38:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 610634061D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Sep 2021 21:38:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TmDbhDdB1TNs for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Sep 2021 21:38:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E4D5C40121
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Sep 2021 21:38:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10115"; a="284719665"
X-IronPort-AV: E=Sophos;i="5.85,315,1624345200"; d="scan'208";a="284719665"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 14:38:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,315,1624345200"; d="scan'208";a="533931021"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga004.fm.intel.com with ESMTP; 22 Sep 2021 14:38:49 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 22 Sep 2021 14:38:48 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 22 Sep 2021 14:38:48 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 22 Sep 2021 14:38:48 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 22 Sep 2021 14:38:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zdbtl9p99L+gc51fqnH1Q2Fbk6xfJdH0w9O3fU0mMjK/NFGTKAlaXaqHOaIyFo2QyZc9FYiWcGzUSNsP9Xk2AIBGuCUDicTG0J5zpPmhIfhrM2Wq4xfkG0Jo12ZysMiWo9wN748dRBGMgqLtS7ffpbCRmwZz/0uE8QU7Vmgy+VsCdt+RVqn971Nv3Qxw9CikdvG6letNQWFplwINzvY5OI1+yBks5x65AIvYuqVdL2kGtGm5JmBZTmLBEAIeSzZFCvmPQ6CsmEgoGAhV7NFVs+QRldNVvqU9mkRHPL8hEoY+JXGiQ7HQ/I2UBAn0BHx9adUre2pdis0P6uojxw2uXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=CfI5dAj2uhtR2ZH+lmaDlFCypxLbDtiaKgtd+mqlCDM=;
 b=gh8+hLJDeWtLrjf84G55gpS55BEhaR6QktHvnEJYI58fA73KjvDYVtK4Tu0Xb43xaHOXWsJAmPuYr7Eo2BMokZ/rcqk9u7Sdkoz7+kc+vmbn0iytA9CJxRpIvnikd+y9VS+ZsyVqzTjty6KNmLr/1HpOzntv1xYiRBlbj7kicZpEqfJaMC8GAJ70GXaB3s3bfiAfb5gGQEMR4GRlBBtRhzvohKQeNbPVdL9cBzTUm1J9nyX7v6AkC8UbFYsoxIgAlmgwJxIS8oqQPalBxsmAVT7VGT63x/qwURdJdejyGGsYBmnnw8f2qXbkl6xwj5usNQqmVWuHyPyCEV70ce43EA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CfI5dAj2uhtR2ZH+lmaDlFCypxLbDtiaKgtd+mqlCDM=;
 b=PNGLtjhlaGs7bgBTaGvpGAnGi9oUjDK1LpqKPV53TlVWLCQU1o6rQCPwo+t7+3VFwqi9c4hETbpEb5At/8k4N3b/qPmvfghClAqCcqYJFq5TySvO+xOoEC/hr9wmPV8O9jDjZDtvlFN7cXSZ+lDr3p8qnhP5dykSrJ7Xv0ybcF0=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB4873.namprd11.prod.outlook.com (2603:10b6:806:113::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.14; Wed, 22 Sep
 2021 21:38:46 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4%3]) with mapi id 15.20.4544.013; Wed, 22 Sep 2021
 21:38:46 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3] ice: Manage act flags for
 switchdev offloads
Thread-Index: AQHXr44ARmR8QCi3UUSGAy8iiye4/KuwlnoA
Date: Wed, 22 Sep 2021 21:38:46 +0000
Message-ID: <ca10f3feb675a8cbf59dee32bc3f1de3fe4e5a49.camel@intel.com>
References: <20210922084332.159306-1-wojciech.drewek@intel.com>
In-Reply-To: <20210922084332.159306-1-wojciech.drewek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6dacbbba-cfcb-40e5-0782-08d97e115ba8
x-ms-traffictypediagnostic: SA2PR11MB4873:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB4873FA574AEAC407BDA97205C6A29@SA2PR11MB4873.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sTA3IsnQJ5gJOGKAN3JNcq8Mn2OeCtYeIjLoceGKCr9EjRMWHOpYzGiKcBoXWdcU45WMlYvxRbdkEkALbbIUgezsouWF8njUIRNyOWqrs0t5N5AhfImlChEEyU8RVPuyGW94Ik8gpdL8lIQZyVMw9j+NAiHXjOH+NA4W+J+qdWPlSeyy0pRS3/wcuEUxCAmM1aKBgIJsl/t2P9y57ySBcP9LN95HzxKhXk0VkIp3rpGTW3pTdW6813eFuTn0QIMIULwMGCWkE1ljR6CyMEd7EFNX2wjKjopR8EZdPxPWWd8k45evRAJGeaU8Di2IVDysa6ocbKE+juTLMYKr+Dbbrse09ye8Nubc15f6Vc+rpds3Zmc+/WU8/g3Lg1nU7MA2CU3Vb1aPbArzx5706AP8HQso/SHqhW1X5pLSURMDzT/YLdoX+0D51mFM7J+g2cGkeMxX6ikI+9x4D+JlzenGMpPz6FI3uYigp7jpB4SJCW/wjfXoh/1nN7HhCyS+Ei1qH7ooFa5yNTTeAiTsp0tZyzrwSJOScaZGlzZ8ik1Z0tfteNv3xV1pjRR4c7WLYWBZ9ebLQBzSLTe6CX8bnUOQhQC/SpGRhOSizmbzyflejmXzTzFv6XfMj36QAf/y8b4AsLcJ836CPH2PeZFHa52PR1p2Rmolpro1PvCMGvLsN3Wt6HUH95qkHMr+m7Kp/yvLT3lCh9mau20DFtQXrljoHA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(122000001)(86362001)(83380400001)(66476007)(64756008)(66556008)(508600001)(91956017)(66946007)(8676002)(66446008)(76116006)(38100700002)(2616005)(186003)(38070700005)(6506007)(316002)(6486002)(2906002)(8936002)(5660300002)(110136005)(71200400001)(26005)(36756003)(6512007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ejdGYTM1d0NybXB1bGZZVkZvNDFVeTVvVHUwV29zL0RFTktvY0dMenRkSFg3?=
 =?utf-8?B?Mlc1cjF5VDZScTl1NHJqTlN3OTFRL3ZYcWZVMmI3MlU4a0FtWnpVNzN2YVRU?=
 =?utf-8?B?SlBtTUVUZDNyYVF3QjUyMG42WUNkektwMGh6Smo1c2drUlMzZEFUdlZVcjgr?=
 =?utf-8?B?L3VtdG5jWXpJb0lCaGJ0K0U3cmJkem9TN2NvRmVPZCtPdXk2M1MrUWdGTUJh?=
 =?utf-8?B?UVFBeVprNGwvMVlnUzF5Y2FLaS9GQjU5TFlnUEk3WXJTWjEydjhrelVPTzhW?=
 =?utf-8?B?THoxN1FPWUNyRU1YRlo4dVNFSFVkUlJ2emtUcVhHNHVDSFdiOStGMU9Ubm5a?=
 =?utf-8?B?ZEhMQUM5eEZxZTY0L0x3UVl1MlFDRkxYamt1c01nVWlpQmdhYlJTN0JPMXdp?=
 =?utf-8?B?Y3Fuc05YYkNRNCs2MkVTbG1JL3pOdmIxWUc1NjhFeHRHQ2dHVkd3QjlzSTZ0?=
 =?utf-8?B?YUt3U1lOc2N0Zm50R004cDl3Nkx3c3NJMFI5M1RKQ08wMzlSVkdreWh6bmMy?=
 =?utf-8?B?Ung2MDBsYmwyU0pXZTZqUEsyN0p6SVcrSnZGNzh4bTZCUFRDbjZucFJSZnU4?=
 =?utf-8?B?MzRHcWgzMW1lOEdMa0xqZVZmcDNMbEljVEhPaFVDMENMN0FXK3BJSWJGRjky?=
 =?utf-8?B?TXZqWU9oNlE4OTU2NUoyMGREUlJNYkZOa2pkQnV1ZmNSaDhJaktiWnJ1cmNI?=
 =?utf-8?B?OVFoeTJKYUFvVG8zWk01bk8vYWh0NHluTjdRZ2hzYkNoV0QxR1FOdXh1M05N?=
 =?utf-8?B?ZjFNU2hlYUExbExCMGlHeFJZVmlVVVJYT1cwZnRtQ3ZzMGo0Z05JOWxLZ2dF?=
 =?utf-8?B?aUk0QkY0Tmpwb2RVcU1VNGFRaDBVbFFXVUFCb2orVURQSXhRb2JrWjBmcWMx?=
 =?utf-8?B?VWVtdG9Mc080WGtJSzBQRGJOSXE4Wko2b3kzUzNpa3VsS01hOXdoVHlGSzF6?=
 =?utf-8?B?Y3dwdisvem1NWUJOUzc2TDRGVjJzeTVESm1pV2tQd21Ya3Zpc2NuOFRQZmpm?=
 =?utf-8?B?SU5nMWtvT21tM3BDT3JsVUNZNGl2RUd4SlFpZTNydThROHh0TDdPa2RjcWpz?=
 =?utf-8?B?aTc4Ymh4UzZrUlp0cGJiUjVEMDBuY1Ara3J1OXJSSklTaldvVTJjeE5rWXhV?=
 =?utf-8?B?THh6NFlneXVDemF5dHZHQ0pUd3crOWZTVU1mU2oxNUhqRUsrVmliR2VyZTVa?=
 =?utf-8?B?SW5zemlYTzZ2ZFI4SkFGOE02ZUh5d1ZxcHJuVWpVRmtCYzNaVnBzcytlYVli?=
 =?utf-8?B?dnNUYlpNbkNOaTdaNDNXNDlBR2g0dk52dVlXcWJhdnF4VlRxSm1SWTM0YlRq?=
 =?utf-8?B?WGcwWnFxZXpNVDF1RDJQV2h1R2I0S0ZDbTcvQzM2YzhrNnpYS2dhMFhKbk5Q?=
 =?utf-8?B?RHVIOTF3UktIL1l4NzJhT05MTmFUZmxSTUtZSHVselNRN1dCZXVnR0h6dWxB?=
 =?utf-8?B?WUNjNDh2MWZZNlJyRktNM1FsZ1ViRmIwSGtaa1ZXS05TYXJuZnBXOHRucFFm?=
 =?utf-8?B?bTJyWWxTY25YR1FRUjhNaWFqakt3V2RoN3g2alhsNlUyamRLOCs0S1cxdzlE?=
 =?utf-8?B?MnArbjFnclRUZ1N0R3FjeHZhMU9jYUxkdTZnZDI2WFRMRmJoYlhBY0ZwcTMr?=
 =?utf-8?B?QkxGRUJ3QXd4cDZxV3gvYmNlQ2JTbjUzaEpMU0tMd2FYTkIzd256eXBLSFdS?=
 =?utf-8?B?dlJ3L3BaVUZSeHg3eS9pSURyZkFmTjhrM3RaL09BWUxwWkNLSld5SEE4WFpX?=
 =?utf-8?Q?8MnUKBMnuxXFGGIsRbBSIRtL+Pi72fQMB3ayAYa?=
Content-ID: <07D28AB3A607C4468D0708FEE76BF9A2@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6dacbbba-cfcb-40e5-0782-08d97e115ba8
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Sep 2021 21:38:46.6228 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GSMkcAjVncPFNnKQN9umVFACXtxY4OipWz9CqQU0V9riCOMLc9JyAwuZB5wb1PWS8nKXxLN7EGo1CYn8n1ysGfju4V9E4zYCEzQfXfo7/Vg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4873
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3] ice: Manage act flags for
 switchdev offloads
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 2021-09-22 at 10:43 +0200, Wojciech Drewek wrote:
> Currently it is not possible to set/unset lb_en and lan_en flags
> for advanced rules during their creation. Both flags are enabled
> by default. In case of switchdev offloads for egress traffic we
> need lb_en to be disabled. Because of that, we work around it by
> updating the rule immediately after its creation.
> 
> This change allows us to set/unset those flags right away and it
> gets rid of old workaround as well. Using ice_adv_rule_flags_info
> structure we can pass info about flags we want to be set for
> a given advanced rule. Flags are stored in flags_info.act.
> Values from act would be used only if act_valid was set to true,
> otherwise default values would be used.
> 
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---

Can you include changelogs so that reviewing between versions is
easier?

Thanks,
Tony

>  drivers/net/ethernet/intel/ice/ice_fltr.c   | 127 ------------------
> --
>  drivers/net/ethernet/intel/ice/ice_fltr.h   |   4 -
>  drivers/net/ethernet/intel/ice/ice_switch.c |   9 +-
>  drivers/net/ethernet/intel/ice/ice_switch.h |  11 ++
>  drivers/net/ethernet/intel/ice/ice_tc_lib.c |   8 +-
>  5 files changed, 21 insertions(+), 138 deletions(-)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
