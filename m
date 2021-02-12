Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 59CAE31A70D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Feb 2021 22:45:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DDE3686A75;
	Fri, 12 Feb 2021 21:45:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QbmI5sQ-85Jj; Fri, 12 Feb 2021 21:45:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4C74D86AFB;
	Fri, 12 Feb 2021 21:45:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4A0FE1BF370
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Feb 2021 21:45:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4507887669
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Feb 2021 21:45:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8nC5s6vAaylw for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Feb 2021 21:45:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2BC7F8701A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Feb 2021 21:45:35 +0000 (UTC)
IronPort-SDR: a0CcteV+GrqcI3LJS/cS1exD0RRGNuQQcLPv68VwCiG3HGKd0oinzS3Lgm7eSBWvWOa2kbxvA3
 0jbh72jLJq5g==
X-IronPort-AV: E=McAfee;i="6000,8403,9893"; a="243967941"
X-IronPort-AV: E=Sophos;i="5.81,174,1610438400"; d="scan'208";a="243967941"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2021 13:45:33 -0800
IronPort-SDR: 3dt/YN8c+9GjvUH8K+GIb0bJUoxKEDFoGeyYz0w3Jrgeurs4l1g0qOGIBYBuNps2sgai++pHf0
 2YOOIsQ41IJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,174,1610438400"; d="scan'208";a="416117075"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga004.fm.intel.com with ESMTP; 12 Feb 2021 13:45:33 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 12 Feb 2021 13:45:33 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 12 Feb 2021 13:45:32 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Fri, 12 Feb 2021 13:45:32 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.48) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Fri, 12 Feb 2021 13:45:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HYuE0zIJp2UMkkYmuftWoefxaYO/DFKwgVYppIKloTloAfrxJuxrrAcgszt4m8FclNRxUXNM8qjhRbFtb2Nml+yYP3sza5OTBYB1NHm+LJ5kHIQL+56xj6iQtAKmGcUAiYLJQ/fwyvHdwNe89GKxrjTjJF0VsG/VYumpFsWKP0EjsYHLhpWsAz87vdTLpFA41HYQiKPXF46ijvt9C2NMtSZIK5r7+5sxb3fKX0XD7HalUSOj00K7YOrdgTK0rmveWpkAp8qrk8hDbV+Vbttj80QTR/LfqhKu60XwFCalTmXjIVLp0L3lv3Ykn7X7qjwCtXRTO5yn704isKxKUn/NfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2wIu84ZLmmd/lVvHDH5qElT87qDB83BPa5BvayLo/5g=;
 b=Ks+tjnIfEytTNo8PfV+2VhqrjZ5hcQhj8h6N+NHpc0/aiwQgHpU8s7wdMx3C68eSuEYrznOIEXbZH8jB1sjnacDWlOhPmgFw730aUa5++p2TjAjswKJGpihkOcVfCPeHt/83nROQfnXeYVpBrKrUqlMLG0lBHt+tqX+7j/ETSIKV2F1U3JMwCFysKLw5Ycgt8A+j9xDM6KS74AI8ssL82Ih4KrTfCb0wX2az+s22LM4Ze9oFNkY3++vQuNFjSQRjoWMewehohudfXtz6RvWRq6jRx+rjx2cH1jl53TduWLyk1FHSCLJRRfPPDCwR2PtjLv4i/wInPl4WdEi7GyalnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2wIu84ZLmmd/lVvHDH5qElT87qDB83BPa5BvayLo/5g=;
 b=B2QxAL1s8wN5o6CMJhbl2gmYbovMAie1rkg02o2Eg0bwm1uQ08co2ntqpOgTe6vnDJnnhm+yKIDvJMbzEJd1bn/6vpra1qKYgFg1Z2GE8b5HITVtk1LbDI27xipjaBcoRkvStB08tRdBZO1zvvShi5UEgtj+eiOHf+FAi1ZrgOg=
Received: from BYAPR11MB3606.namprd11.prod.outlook.com (2603:10b6:a03:b5::25)
 by SJ0PR11MB5071.namprd11.prod.outlook.com (2603:10b6:a03:2d7::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.29; Fri, 12 Feb
 2021 21:45:31 +0000
Received: from BYAPR11MB3606.namprd11.prod.outlook.com
 ([fe80::9db8:680e:ac77:1208]) by BYAPR11MB3606.namprd11.prod.outlook.com
 ([fe80::9db8:680e:ac77:1208%5]) with mapi id 15.20.3846.030; Fri, 12 Feb 2021
 21:45:31 +0000
From: "Fujinaka, Todd" <todd.fujinaka@intel.com>
To: JD <jdtxs00@gmail.com>
Thread-Topic: [Intel-wired-lan] iavf null packets and arbitrary memory reads
Thread-Index: AQHW/+9MiEdQczt5Kka7rT2SBEkPSqpSO+SAgAF1NyCAAP/eIIAAK+6AgAAzRrA=
Date: Fri, 12 Feb 2021 21:45:31 +0000
Message-ID: <BYAPR11MB360644089232F26D5F0E1BB7EF8B9@BYAPR11MB3606.namprd11.prod.outlook.com>
References: <CAMnf+PgVx-bg87KCV0NbtSi_FRMokVVXLEwuA_XCH6UxR57rKQ@mail.gmail.com>
 <e73bcf37b214af6c8267622a49a7c9166522f3d0.camel@intel.com>
 <BYAPR11MB36062A9FC2CF8231B79DE0D1EF8B9@BYAPR11MB3606.namprd11.prod.outlook.com>
 <BYAPR11MB3606E2AD589A7E343F32F7B6EF8B9@BYAPR11MB3606.namprd11.prod.outlook.com>
 <CAMnf+PjeJ9rZMbnpxUS7eMzVFDO7syxsV-0NQ=Rups5V9DJfgA@mail.gmail.com>
In-Reply-To: <CAMnf+PjeJ9rZMbnpxUS7eMzVFDO7syxsV-0NQ=Rups5V9DJfgA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.115.69.8]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d0231fe6-6561-4548-e75d-08d8cf9f8514
x-ms-traffictypediagnostic: SJ0PR11MB5071:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SJ0PR11MB50715CFD6D6ACA202210FF60EF8B9@SJ0PR11MB5071.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HIRSpNehRC3QlRhoBK/1BanAkzssQFLshxguV3eb3KfTRRx6dmxSCT4IKQRID0r4Kf8KuObExyUp4WW0vgZU9nOU12FhcvWWBFuIUbrj6HBeoDFyJdPoYTWTDzHujtLstPqyv+PjzG6CjKLKXnye6pJkAKSFr4BH15bF7Xe+Lj+Xnl6x9xIyKAciCId5s/y74PfcSitK3bcLPj4OKVs+SVcitTo3Jf/he3P4HhMCwVdbpli/IK/yw4x6tl23DwKxfo/jI3mK1x6TpCMt6rIdS9iR7yZIpx/hZQwCSuXzJy/dehiSFpbvbdygfZ9DmTduK7R/GXW/J/RzYG+M30EGQdhoksl2oinlzbfUA7a1xEdKHEpX2b9rYbP9wG5QsfxiOCUdMH8uv1TqizFVpqUqUSnCZgnrEWpZQgoOZ/SZsHjrnR0KoxkH9KbnoUunrvxNa0rF5HuRjxmtWxdGfJxSF1meFbVqZRAbF4b440peI/3+dPARc8iBVRPeHw5uuHBgnNaug/4DRg8EqpjIzM/wOT58uXE7hWbMc8+CeAANUT34OWX9UJp/Tcdm3y9S4TNbH8RCrnWzFNiVZfnJjK2qUoBXwXfFeMl3Tz4J6EHgp2E=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3606.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(376002)(346002)(366004)(136003)(396003)(33656002)(71200400001)(55016002)(8676002)(4326008)(9686003)(6916009)(53546011)(316002)(6506007)(26005)(8936002)(186003)(2906002)(76116006)(5660300002)(54906003)(966005)(66446008)(30864003)(7696005)(66476007)(64756008)(66556008)(83380400001)(52536014)(86362001)(66946007)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?citJSDYwVFVuRVhjTzNVYjYxOE5rL25oQmJndWhybXNYQklqc3B4M3NveHpG?=
 =?utf-8?B?Wk9lcjJOTmZ2MWZQZTF3T0Z1MlZmeUpQdmRhYTVzTUc2WHhXWWJ5a2NmRmx3?=
 =?utf-8?B?VDRtbkdvTEFEdklZVmNCTWdncWx5YWpYeWoraXQzRjcxUmhZL29jWU5xU0h4?=
 =?utf-8?B?TzdseForTWJ3T3JQVUxyQjVVU0EyZHF0ZkJRZkFoMlFxKytXQVJqYS9WcElP?=
 =?utf-8?B?c1AxTDRBQUtSMzRRbkY5TndyVHZTWUtSWERmRlE1UFhEQkRUSDJjK3lQdVJF?=
 =?utf-8?B?a3JSSUFEVmsxcFFBVVhnWWtmQTBpamQ5c29nd0RYZkN5NkxDVzJZQUFEb0VL?=
 =?utf-8?B?TWYzM09GYnI2d0tYQXNQbWQ1TjFjaEorZXViK2gyWFk3MzR5blZjVWI3Q0Fo?=
 =?utf-8?B?V1phV0IzQ0FPSDN6dXJvT085NEs4VVhtSmVZNEZwcnladlZURlBhT0owZFdN?=
 =?utf-8?B?dDVobjk1c0hTajFCZ0lpZXYyaU9KVXQwSVk2alJBZVErc0NrTEhUelN6cGxD?=
 =?utf-8?B?Z1FoR3hoRkRnbjhLbnZiL0dPaE5uaVZpY0NIdXh2ZnhWZjByNmM1bVVpZjNz?=
 =?utf-8?B?cmlHd0tFdFhROFpDSnVVOVhFcEh0T1FYQW5lWWROT0NmK1NYMmZraWordmFW?=
 =?utf-8?B?bWZCbUptSHVaSk0yQzVrQmZZd3ZwcC9TeTkybzJpRVA5MjdXNk9ib0l4aDFX?=
 =?utf-8?B?VlhKaDRzeTFaODNTUGRRQzVwZ3FTNG55RUI3VEd0YUNwR25oWHZ1amttdEh5?=
 =?utf-8?B?TTRUTW1hQ01GZkd3RUtXaVBxd3R6Y05Sd1hvZFVDcWZzSmZnOTlWMG5GdENl?=
 =?utf-8?B?QVJ4aGE3SjNiUytYNVNTdVJ2Q2lod2RHSFRmYlNnMXk5MzlvelE2REVVZGUz?=
 =?utf-8?B?SXBwTHVFSkxuYUtjYTRMVk5NQThpaGoyNksvWjRGWGFxWnNmNG91T2JFY05B?=
 =?utf-8?B?M0JXTXZCTWNweGpmeDAyZmdsZGhkVDV4TTFnLzBySjdmdHRhbFBuT0cyY1lM?=
 =?utf-8?B?dEI4cEIxT1lkc1JETTQ5NXR1cGd0ZUh5RytSVUxhL1Z3YUxWYW9xRThBdVpt?=
 =?utf-8?B?eklCYmxGYzVKT1dBZzl3OEwwV0xubFMycWIvVEo1ZWYremtlS1lDOGZtcWZx?=
 =?utf-8?B?S2RjM3UzaTR1UUJ2WGcwdmxjKzlya0F5c0o2WVI0WXA3NW9KeW4zZHFTcTd2?=
 =?utf-8?B?MklkZENSZDJmZXRHM3RNNXY2Z29wSW83M3g0MEVCVlVRd0c2UFhaZVVDempt?=
 =?utf-8?B?L0thYzBQRFlwWW9lOXMySWhkTG9jaGNsU1BtTlVIRzBpeUFOZ1E5VW1Ia3Uy?=
 =?utf-8?B?UmFsYWV3Ni9sd3NZRVlWZU5ERFQ0bDBWSDE3N0tnRkt5eG8rYUM0YWpXK3FQ?=
 =?utf-8?B?SmpYcityd0pRczgyQVpiQjB3SGpNZkhOSndtQkZJaW4zcTE0SmRJTmgya1Qv?=
 =?utf-8?B?WDVuaytNWi9QZWJJOGxadWN0Ujgwb2dESm5NRVprTWQ3TFBtNlVtMWlWUXcy?=
 =?utf-8?B?VURPZ3NPMDJDNTZYb0Q5MzJ1c1RLaFN0VDRncjNhVnVGZlp4bjNvNStROStN?=
 =?utf-8?B?R2NnSmhsSHdqazVkZDZEOERwUnA0dXNBYnJUc1RFQzZzYkcwdG9rbTRUU3cv?=
 =?utf-8?B?MjJPUmZBU0s5bkZVSUQ2WnEzWUdaSUdiWmRpWHBqOUEzVDBqdGpQaW8vU0Ft?=
 =?utf-8?B?MmRLZzdTbVBKbjdlQ0tpY3EvbWNaUXU5blF6b21Nd01vY3pReDQzUldwNk9F?=
 =?utf-8?Q?kVH6dQdvqtQ5XdGgqg=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3606.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d0231fe6-6561-4548-e75d-08d8cf9f8514
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Feb 2021 21:45:31.1065 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VFPRAs4e+ppqre1okOFEq5pcuWW0AkVBUcflv5H5jaceQ4Lp4aYJMZfiAjR7wglZTMP+6UpYLUHGu9HRctszKw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5071
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] iavf null packets and arbitrary memory reads
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

There is no common code between iavf and ixgbevf. The speculation is that this is all from the bonding driver, but the repro hasn't started yet.

Todd Fujinaka
Software Application Engineer
Data Center Group
Intel Corporation
todd.fujinaka@intel.com

-----Original Message-----
From: JD <jdtxs00@gmail.com> 
Sent: Friday, February 12, 2021 10:39 AM
To: Fujinaka, Todd <todd.fujinaka@intel.com>
Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; intel-wired-lan@lists.osuosl.org
Subject: Re: [Intel-wired-lan] iavf null packets and arbitrary memory reads

I have some important details to add to this. It appears that ixgbe/ixgbevf are also affected. I have reviewed some older Intel based servers and some are showing the behavior as well.

This is a non-AMD server showing the behavior on a different NIC:
OS: CentOS 7.8
Kernel: 4.19.107
NIC: Intel Corporation Ethernet Controller 10G X550T
Driver: ixgbe 5.1.0-k
Vendor P/N: AOC-MTG-i2TM
Firmware-version: 0x80000aee, 1.1876.0
CPU: Intel(R) Xeon(R) Silver 4214 CPU
MOBO: Supermicro X11DPT-PS

The VM on the Intel box above is using kernel 4.19.163 with ixgbevf 4.1.0-k

This is a server with only 1 NIC (though bonding is still setup with only a single interface for simplification between builds), so I would assume that bonding isn't relevant to the bug. I will include the bonding configuration for the AMD servers below anyway in case you need it.

For repro: I don't know how the issue begins or how to reproduce it on demand, it happens during normal VM use. I will describe our environment and go over various settings.

Virtualization type: qemu-kvm
Libvirt version: libvirt-daemon-kvm-4.5.0-36.el7_9.3.x86_6
QEMU version: qemu-kvm-ev-2.12.0-44.1.el7_8.1.x86_64

OS on both guest/host: CentOS 7.8+ (happens on 7.8 and 7.9) NIC bonding: Bonded and unbonded are affected. However, on bonded hosts, these options are used:
GUEST: BONDING_OPTS="mode=2 miimon=100 xmit_hash_policy=1"
HOST: BONDING_OPTS="mode=4 miimon=100 xmit_hash_policy=layer3+4"

Bonding is setup in both the guest and host using the configuration above. 2 VF's are attached to the KVM guest for this.

Here is the QEMU process on the AMD based server:
qemu     35644  232  3.1 9678028 8432068 ?     SLl  Jan21 75000:17
/usr/libexec/qemu-kvm -name guest=VMNAME-REDACTED,debug-threads=on -S -object secret,id=masterKey0,format=raw,file=/var/lib/libvirt/qemu/domain-27-VMNAME-REDACTED/master-key.aes
-machine pc-i440fx-rhel7.6.0,accel=kvm,usb=off,dump-guest-core=off
-cpu EPYC-IBPB,x2apic=on,tsc-deadline=on,hypervisor=on,tsc_adjust=on,clwb=on,umip=on,spec-ctrl=on,stibp=on,ssbd=on,cmp_legacy=on,perfctr_core=on,monitor=off
-m 8192 -realtime mlock=off -smp 4,sockets=4,cores=1,threads=1 -uuid
6e201ba4-68fe-45be-a86d-fbc46cef5d46 -display none -no-user-config -nodefaults -chardev socket,id=charmonitor,fd=55,server,nowait -mon chardev=charmonitor,id=monitor,mode=control -rtc base=utc,driftfix=slew -global kvm-pit.lost_tick_policy=delay -no-hpet -no-shutdown -global PIIX4_PM.disable_s3=1 -global
PIIX4_PM.disable_s4=1 -boot strict=on -device
ich9-usb-ehci1,id=usb,bus=pci.0,addr=0x2.0x7 -device
ich9-usb-uhci1,masterbus=usb.0,firstport=0,bus=pci.0,multifunction=on,addr=0x2
-device ich9-usb-uhci2,masterbus=usb.0,firstport=2,bus=pci.0,addr=0x2.0x1
-device ich9-usb-uhci3,masterbus=usb.0,firstport=4,bus=pci.0,addr=0x2.0x2
-device ahci,id=sata0,bus=pci.0,addr=0x3 -drive file=/imgs/VMNAME-REDACTED/diskname-redacted,format=qcow2,if=none,id=drive-sata0-0-0,cache=none,discard=unmap
-device ide-hd,bus=sata0.0,drive=drive-sata0-0-0,id=sata0-0-0,bootindex=1,write-cache=on
-chardev pty,id=charserial0 -device
isa-serial,chardev=charserial0,id=serial0 -device
vfio-pci,host=81:03.5,id=hostdev0,bus=pci.0,addr=0x5 -device
vfio-pci,host=81:0b.5,id=hostdev1,bus=pci.0,addr=0x6 -device
virtio-balloon-pci,id=balloon0,bus=pci.0,addr=0x4 -sandbox on,obsolete=deny,elevateprivileges=deny,spawn=deny,resourcecontrol=deny
-msg timestamp=on


Here is the QEMU process on the Intel based server:
qemu     10058  157  8.1 9622376 8017812 ?     SLl  Jan25 40027:35
/usr/libexec/qemu-kvm -name guest=VMNAME-REDACTED,debug-threads=on -S -object secret,id=masterKey0,format=raw,file=/var/lib/libvirt/qemu/domain-21-VMNAME-REDACTED/master-key.aes
-machine pc-i440fx-rhel7.6.0,accel=kvm,usb=off,dump-guest-core=off
-cpu Skylake-Server-IBRS,ss=on,hypervisor=on,tsc_adjust=on,clflushopt=on,umip=on,pku=on,avx512vnni=on,md-clear=on,stibp=on,ssbd=on,xsaves=on,hle=off,rtm=off
-m 8192 -realtime mlock=off -smp 4,sockets=4,cores=1,threads=1 -uuid
6fc40d77-2872-4717-827b-de634b2a5609 -display none -no-user-config -nodefaults -chardev socket,id=charmonitor,fd=31,server,nowait -mon chardev=charmonitor,id=monitor,mode=control -rtc base=utc,driftfix=slew -global kvm-pit.lost_tick_policy=delay -no-hpet -no-shutdown -global PIIX4_PM.disable_s3=1 -global
PIIX4_PM.disable_s4=1 -boot strict=on -device
ich9-usb-ehci1,id=usb,bus=pci.0,addr=0x2.0x7 -device
ich9-usb-uhci1,masterbus=usb.0,firstport=0,bus=pci.0,multifunction=on,addr=0x2
-device ich9-usb-uhci2,masterbus=usb.0,firstport=2,bus=pci.0,addr=0x2.0x1
-device ich9-usb-uhci3,masterbus=usb.0,firstport=4,bus=pci.0,addr=0x2.0x2
-device ahci,id=sata0,bus=pci.0,addr=0x3 -drive file=/imgs/VMNAME-REDACTED/diskname-redacted,format=qcow2,if=none,id=drive-sata0-0-0,cache=none,discard=unmap
-device ide-hd,bus=sata0.0,drive=drive-sata0-0-0,id=sata0-0-0,bootindex=1,write-cache=on
-chardev pty,id=charserial0 -device
isa-serial,chardev=charserial0,id=serial0 -device
vfio-pci,host=18:11.0,id=hostdev0,bus=pci.0,addr=0x5 -device
virtio-balloon-pci,id=balloon0,bus=pci.0,addr=0x4 -sandbox on,obsolete=deny,elevateprivileges=deny,spawn=deny,resourcecontrol=deny
-msg timestamp=on


Lastly, I have attached some files:
- The dmesg log from the VM with ixgbevf
- The dmesg log from the VM with iavf
- A time series graph for the AMD based server with iavf illustrating when the issue began. On the AMD-based server, spikes with dropped packets are normal, but a constant flow isn't. As you can see, a constant flow of dropped packets begins shortly after 2/06 @ 20:20 UTC.
- A time series graph for the Intel based server with ixgbevf illustrating when the issue began. On the Intel based server, there's no drops whatsoever, and as soon as the null packet bug gets triggered, they spike and remain constant after 2/10 @ 9:00 UTC.

I have analytics for almost everything network related (courtesy of Prometheus/node_exporter), so if you want insight on any other keys/values from the kernel or networking stack, please let me know and I'm happy to provide it.

My thoughts currently: If this issue affects both iavf/ixgbevf, how much common code/logic is used between those drivers? I think it should help narrow things down a little more since it doesn't seem to be specific to a NIC or to iavf in particular.

Thank you.

On Fri, Feb 12, 2021 at 10:05 AM Fujinaka, Todd <todd.fujinaka@intel.com> wrote:
>
> The SW development team has taken a look at this and while they have some comments the next step is to get an internal repro.
>
> Please send the exact repro steps (including commands) including the configuration of bonding.
>
> They're also asking for the full dmesg from the time of boot.
>
> Thanks.
>
> Todd Fujinaka
> Software Application Engineer
> Data Center Group
> Intel Corporation
> todd.fujinaka@intel.com
>
> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf 
> Of Fujinaka, Todd
> Sent: Thursday, February 11, 2021 4:47 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; 
> intel-wired-lan@lists.osuosl.org; jdtxs00@gmail.com
> Subject: Re: [Intel-wired-lan] iavf null packets and arbitrary memory 
> reads
>
> Sorry, top-posting guy.
>
> I'm going to put this in our internal bug tracker to make sure it doesn't get lost.
>
> Todd Fujinaka
> Software Application Engineer
> Data Center Group
> Intel Corporation
> todd.fujinaka@intel.com
>
> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf 
> Of Nguyen, Anthony L
> Sent: Wednesday, February 10, 2021 6:31 PM
> To: intel-wired-lan@lists.osuosl.org; jdtxs00@gmail.com
> Subject: Re: [Intel-wired-lan] iavf null packets and arbitrary memory 
> reads
>
> On Wed, 2021-02-10 at 14:56 -0600, JD wrote:
> > Hello,
> >
> > I've encountered a NIC driver bug that leads to null packets being 
> > transmitted and arbitrary/OOB memory reads by the iavf driver.
> >
> > I'm unfortunately not sure how the issue starts, but it has been 
> > happening across many different AMD servers and virtual machines.
> >
> > Running a tcpdump (tcpdump -i bond0 -nne ether host
> > 00:00:00:00:00:00)
> > on bond0 results in these packets being produced at a high rate:
> >
> > 13:04:14.826298 00:00:00:00:00:00 > 00:00:00:00:00:00, 802.3, length
> > 0: LLC, dsap Null (0x00) Individual, ssap Null (0x00) Command, ctrl
> > 0x0000: Information, send seq 0, rcv seq 0, Flags [Command], length
> > 144
> >         0x0000:  0000 0000 0000 0000 0000 0000 0000
> > 0000  ................
> >         0x0010:  0000 0000 0000 0000 0000 0000 0000
> > 0000  ................
> >         0x0020:  0000 0000 0000 0000 0000 0000 0000
> > 0000  ................
> >         0x0030:  0000 0000 0000 0000 0000 0000 0000
> > 0000  ................
> >         0x0040:  0000 0000 0000 0000 0000 0000 0000
> > 0000  ................
> >         0x0050:  0000 0000 0000 0000 0000 0000 0000
> > 0000  ................
> >         0x0060:  0000 0000 0000 0000 0000 0000 0000
> > 0000  ................
> >         0x0070:  0000 0000 0000 0000 0000 0000 0000
> > 0000  ................
> >         0x0080:  0000 0000 0000 0000 0000 0000 0000
> > 0000  ................
> >
> >
> > As you can see, they have a dest/src ether of 00:00:00:00:00:00 and 
> > are completely null.  This doesn't happen on every virtual machine, 
> > some return absolutely nothing.
> >
> > If I filter the tcpdump command to ignore empty packets (all dots), 
> > some other interesting items begin to appear:
> >
> >         0x0500:  0000 0000 0000 0029 0100 071b 0473 656c 
> > .......).....sel
> >         0x0510:  696e 7578 7379 7374 656d 5f75 3a6f 626a 
> > inuxsystem_u:obj
> >         0x0520:  6563 745f 723a 6269 6e5f 743a 7330
> > 0000  ect_r:bin_t:s0..
> > [...]
> >         0x0080:  0000 2f75 7372 2f6c 6962 3634 2f70
> > 6572  ../usr/lib64/per
> >         0x0090:  6c35 2f76 656e 646f 725f 7065 726c
> > 2f46  l5/vendor_perl/F
> >         0x00a0:  696c 652f 5370 6563 2f55 6e69 782e 706d 
> > ile/Spec/Unix.pm
> >
> > To me, that looks like it's reading data from memory and attempting 
> > to send from 00:00:00:00:00:00 to 00:00:00:00:00:00.
> >
> > If I run that same tcpdump on a different servers exhibiting the 
> > null packets, completely different items show up which also appear 
> > to be from memory.
> >
> > Keeping a tcpdump results in the same items from memory being 
> > repeated infinitely with no observable variation.
> >
> > So, it seems like the iavf driver is encountering some bug with 
> > memory management and ends up transmitting null packets or arbitrary 
> > data from memory over bond0.
> >
> > How/why did I notice this behavior? The VM's seem to perform worse 
> > over the network when this occurs. They usually exhibit small 
> > amounts of packet loss, or poor SSH responsiveness. Oddly, I have 
> > seen this bug in the past, and it resulted in dmesg on the parent 
> > printing Spoofed packet warnings for the i40e driver. Now it does 
> > not, yet the null packets still occur.
> >
> > I would like to help in any way I can to resolve this in the 
> > iavf/i40e driver. I'm happy to provide information from the servers 
> > if it's needed.
> >
> > For reference, here is the setup on every single AMD server:
> > VM:
> > CentOS 7.9
> > NIC driver: iavf 4.0.1
> > Kernel 4.19.163
> >
> > KVM parent:
> > CentOS 7.9
> > NIC driver: i40e 2.12.6
> > Kernel: 4.19.163
> > 2x Intel XXV710 for 25GbE SFP28 @ 25Gbps BONDED (Mode 4, LACP)
> > Vendor: Supermicro Network Adapter AOC-S25G-i2S Firmware version: 
> > 7.20
> > 0x800082b3 1.2585.0
> > MOBO: Supermicro H11DSU-iN
> > CPU: AMD EPYC 7352
> >
> > And here is the dmesg log (grepped for iavf) from a server that has 
> > the issue:
> > iavf: loading out-of-tree module taints kernel.
> > iavf: Intel(R) Ethernet Adaptive Virtual Function Network Driver - 
> > version 4.0.1 iavf 0000:00:06.0: Multiqueue Enabled: Queue pair 
> > count = 4 iavf 0000:00:06.0: MAC address: 52:54:00:7f:bc:39 iavf
> > 0000:00:06.0: GRO is enabled iavf 0000:00:05.0: Multiqueue Enabled:
> > Queue pair count = 4 iavf 0000:00:05.0: MAC address: 
> > 52:54:00:a6:3e:62 iavf 0000:00:05.0: GRO is enabled iavf 
> > 0000:00:06.0 eth0: NIC Link is Up Speed is 25 Gbps Full Duplex iavf 
> > 0000:00:05.0 eth1: NIC Link is Up Speed is 25 Gbps Full Duplex
> >
>
> Hi JD,
>
> I will check and see we're aware of this issue or have any information about it. If not, I'll see if we can work on a reproduction.
>
> Thanks,
> Tony
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
