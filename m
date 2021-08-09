Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F04B43E4038
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Aug 2021 08:38:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6F4F26070E;
	Mon,  9 Aug 2021 06:38:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iFPypI0GdpiA; Mon,  9 Aug 2021 06:38:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0C04C606A6;
	Mon,  9 Aug 2021 06:38:05 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4E5A21BF3B5
 for <intel-wired-lan@osuosl.org>; Mon,  9 Aug 2021 06:38:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3967C82C99
 for <intel-wired-lan@osuosl.org>; Mon,  9 Aug 2021 06:38:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vzjnDwoBXv-V for <intel-wired-lan@osuosl.org>;
 Mon,  9 Aug 2021 06:37:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0821D82C98
 for <intel-wired-lan@osuosl.org>; Mon,  9 Aug 2021 06:37:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10070"; a="212773471"
X-IronPort-AV: E=Sophos;i="5.84,305,1620716400"; d="scan'208";a="212773471"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2021 23:37:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,305,1620716400"; d="scan'208";a="525099884"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga002.fm.intel.com with ESMTP; 08 Aug 2021 23:37:58 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Sun, 8 Aug 2021 23:37:57 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Sun, 8 Aug 2021 23:37:57 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Sun, 8 Aug 2021 23:37:57 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.47) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Sun, 8 Aug 2021 23:37:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ln+Dx5WJCm2q0Gb0YQVTIQbxp3z5j1dfvxw4i/cz2FWM5lvqjiyzxYFkicufGou7L+cRyFzt+2xb3F6OKaFXScXqmG/JSI9xCOkzWx9D0cUtQq1Y1KQLJypLohMCv9hEx+JUQEOB+hNeOyI7NQOhJXtUVFTTSi4Rw1lcBaj50mLXMcbZPZUrsGz8wbtXlY7GgBCgWP4Hr2rzPlXf89arsyRhMOy2jpxuqR1rH/Rlcr2G1ZD4Oc04aLjyr1aPDawN8DFrlQ9o1pDbV/xHbMYI49ZhgPmri5aLM407aiRCI3WjtZmXASU47SiFIZg+61PP1IkFNp30DpiIDBAK7MPGmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RQezsuvjrno5oWSG2t3H8LnchpwQ3wABpwFIOAjqewA=;
 b=nUt/aaWJ5pl8a3vBXcaCteL2+9jfDQE3OQrQBA/R8J3gSq3HPfWvJzOPS/0y2cMWpWeqx1lejXj5wWQuxKeV3L4jIGJXX0bZpvdUIsUzhRghC31RgcgrYkx2RDRrqXoZnbOVOubawFZfGhzYxGTkhnB33mNhO9W0fjsoUx7bfr+5EUOYcr4VBMMa8dtmpec7ZKYzfn1Rn3/H+nZrYRAz2K3g+zwYB5jgsJTmbrOzxYRvaYhKLfcfm/lSeYd7e8fIYMrZv3G6cBH0AlJkEbGNbXOcN36TKzjrQ5X/a38TjbgpkHMmHPwxYS3m41DYkySY+hosmEDxsGfaSRzzsZpcNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RQezsuvjrno5oWSG2t3H8LnchpwQ3wABpwFIOAjqewA=;
 b=F46BNxPxfrwUTtf5QS8/ogrePjnql5CJXjqC+gk7FHA4o5B7JSWFcEJfGMs9VKVeV1iXpt/Nrwg2znAI2C+/vE+kKDhj+CXoJUnsnm+HBeA/FxfiL4X0Gq5PiF2fK91ODnCY5Jh1+b0p743ZyooPSG/yRlLNyRNzEMqNVYSi0vk=
Received: from BL1PR11MB5399.namprd11.prod.outlook.com (2603:10b6:208:318::12)
 by BL1PR11MB5285.namprd11.prod.outlook.com (2603:10b6:208:309::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.18; Mon, 9 Aug
 2021 06:37:56 +0000
Received: from BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::e525:2182:4820:4082]) by BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::e525:2182:4820:4082%7]) with mapi id 15.20.4394.022; Mon, 9 Aug 2021
 06:37:56 +0000
From: "Gunasekaran, Aravindhan" <aravindhan.gunasekaran@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH next-queue v2 3/3] igc: Add support for
 CBS offloading
Thread-Index: AQHXiTu8m/4GpN4a6U+II6scyeGucqtjauoAgAdUkBA=
Date: Mon, 9 Aug 2021 06:37:55 +0000
Message-ID: <BL1PR11MB5399CF91B8123270CF5FB7FD9DF69@BL1PR11MB5399.namprd11.prod.outlook.com>
References: <1628086752-20213-1-git-send-email-aravindhan.gunasekaran@intel.com>
 <1628086752-20213-4-git-send-email-aravindhan.gunasekaran@intel.com>
 <64f7fe7b-feca-dae2-adc3-96b8ac1fbc70@molgen.mpg.de>
In-Reply-To: <64f7fe7b-feca-dae2-adc3-96b8ac1fbc70@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: molgen.mpg.de; dkim=none (message not signed)
 header.d=none;molgen.mpg.de; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1d61a3db-91c9-4a16-3eca-08d95b0038c6
x-ms-traffictypediagnostic: BL1PR11MB5285:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BL1PR11MB52854E9AEC601BA11EE6E8AE9DF69@BL1PR11MB5285.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1091;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bO6x/QdPsu+t59dUeM8FMeLE04QsTQVlJY5tvqmc1blQyPK0qcg2tLEg1u5KacKdMq48kvC5jkC50mx5N7IQgSZgxlt8Ju44WVW0IKHOVgWQErn1c84ZELvaiXjcekHY+ceVACDEX4cXVtZ2lze0vUjM38AWm4rDX4DNuid1c4so5T2/5S+4JA6K1f+c/YkY6TeTErk6l4r69c27i5tT2cWuAVDb60Y2kHmqc7LN1OzDC9WgoFa1yjDPgEySGYUVLjvlVPU7p0NpJpQFxjydiyR6gst43uJkXFSjXYbpbzRhL44Rd7lavNz5mAN6qYaiL0c2IlOYSezUiZ2foxsl+VOb1aoeKzAkEnVAvG0fQJgL6baTe8iuArBcXfjMgMUe+KTX5ThWT8NYzp49L2Npt9xTsR5avn0nTkbbApY6Dv1NzEtkUUCiY6Z/o1DQSwPNyHiqp5oP5m0/pZjwKphDsM2atf5OCbwoa+lZyjZD1F/r93kxiPChe2YSGnCbtOCxd/JBWtAQBR3GgloWD0dxKHABS6rvkbpz8ubdPLWv/k1FwMLDpjRWLv+mICqjoeLKOiwQQHlaWCy2a8uh0rg/toExi5Q/MzNMUkjiXIjCfV7Z98Ht5iW5TXpeH8MoDYovOcQeorcsTeLDl7jsIOxNjRKrOtoLoK2DbrQ0jAr5SnK65nHOc0pDmJ5DZBGOIwo0uNyy31Qoua2/1MYHg8xutQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5399.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(4326008)(52536014)(8676002)(64756008)(5660300002)(66946007)(66476007)(66446008)(30864003)(55016002)(83380400001)(8936002)(76116006)(66556008)(186003)(38070700005)(53546011)(6506007)(508600001)(26005)(33656002)(9686003)(2906002)(7696005)(38100700002)(71200400001)(86362001)(316002)(122000001)(6916009)(54906003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VzJyU0ZzanJ4T0l4OUlFUHBHOFNyR0dwRm1QMVhBZnRSYUxuczBZWjd2dHpE?=
 =?utf-8?B?R0E5V2o2R29vdlVFODVtcHZmSlU1V0ZqWURoeW5ENlN6MmRCdXhtZlFRcUR5?=
 =?utf-8?B?aWxoUFZVQW1KTW1Kd3dFelhiRVEzb1FVMGo3M2cyRThYRG53MGhheitYSnNv?=
 =?utf-8?B?TlBrUW5YVGc2ZThTS0d2cjFiazlQZVRadXF2amhGeDNoMnl3Mm1SQVZqNWpB?=
 =?utf-8?B?eUJOMWRndmRrOE9HUm5YOFZLcjZHV1phblZndExXakV5Nk04Z0ZVRFA3R05P?=
 =?utf-8?B?Z2FrVFJTbkErdHBFT09SYm1GRlV3b1UrRi9CRm1JczhzMGJSSWZsQmFqcFEw?=
 =?utf-8?B?N1hsVStrREp6d1VsV2d4bGtvc2VwOFFSVkRCMDBveXM1R1J0UmVBWEhPSXE5?=
 =?utf-8?B?NDdlTE1GN1k0czhpai9rK1dIZlBGeHBLTFRrM1oyOVlpakZwMkE0WlZmVVhX?=
 =?utf-8?B?MXlsa1hRUVlsK0NaTFB4TStrZldUQkc5dXNZSDV0SHJFTXoxUkpuOW5DSjFM?=
 =?utf-8?B?ZU4yY2JqcitrbU9FV3VBS3l4ZTNUQ0JuZG9UakxIR09BK0hYWEQ4bHhnR1ZR?=
 =?utf-8?B?L2VGZVB4YVZpS3QrRlFkS0NvTmtlYUROZldtRUdnWmpIY2VhT1Z4UXRWYUdL?=
 =?utf-8?B?WnFQMWF0NnpzTkVrdTJ6cksvMitMUFBxeGJlYjJQeDMvUEl1VVhpNHVxeUZz?=
 =?utf-8?B?RGluSGNFTGRWUTNxZUsreXdPVm4xVmxKY0Q1RlBhakpLYVBiOVRuU0I1WDRJ?=
 =?utf-8?B?V3pYbENaTUlML3BhWUFjeWRLUG5MZktqM3FGT1p2TzltWUtXdklTVisyWmVO?=
 =?utf-8?B?NG9rb2FYak9Kcm5FeGovQkFMejNibERBYmxXayt5eVplTkJnNEd5WlM2dFh4?=
 =?utf-8?B?YXU3UFhsV3VTQTFWSElUTFNNbEpwQko4MTlwWmpTajFqcjFqYlNBT1ZiU055?=
 =?utf-8?B?eXE0ZHp5OVJCRXVxM0c0d0lOSzBSb1J1d2RLNUNYb041WU5XLzRiTy9iUkYv?=
 =?utf-8?B?U2txSFJiWndwN1gvOXBGSE1vWHU0R0VzSUphUGg5Z3lWZWcwRkU5SlB2ck1q?=
 =?utf-8?B?UmJNS1ZBQTZ3NWdwbjVEeHRlYWJKN0tqMTVYZk1FUHJoZkkxbXlqWDNtNnRX?=
 =?utf-8?B?OEJPbC91Uno5eG43b05XU2N1UGpNcXR0K0Y2cEx3QkJBdjY1V09qWkN0eXVM?=
 =?utf-8?B?MWVTaDdpdVorckhjUDBETFlKNlNiWmlDUDBUeDB2UmlDZGVWejJNclAxclMv?=
 =?utf-8?B?ZDdoUDBCcXNrTjhvTmlJM0RRQ1R4VUhyN3g0RkVkbDVvWFNBSUlnSCs1S3N6?=
 =?utf-8?B?bGhLaWJEajkzYTFLZlhsaktEWm41NFVtWW9YdjlCcVkzMWhlWUhxeXNXWFhZ?=
 =?utf-8?B?M2xYWUp0TEFMSHI0YnNncVY5N3lIZHBsU0pLYVBOaDA2NllZbWNHVDRwT08r?=
 =?utf-8?B?bHlLUVJyZ2k3V3p6cVZKLzB2MkNtT2NJTnJiN21rYTk0NmZzbUJSeGNZc1or?=
 =?utf-8?B?b3JmYzZUT0diTE1mbVRhamZOTU1GNTl1czhRNnZZUk1wTTZnMmNBMVh0UE5s?=
 =?utf-8?B?N050bjV4ZWhacVMwaFFQQ1BRSkYwNW5mQ0tKeEdUazBQNmkwSW9FSUtQMW9R?=
 =?utf-8?B?RXpJZjdySWZVcktSRzJ4R2hjeCtsWkE3QjdIU0hPSlhyZTFsV2hMVS8zZGhH?=
 =?utf-8?B?bzJkaStsa25Ed290SEtQVGZHcVVxRldSZDZwdVZuTlJ3WFNkZ1MrL1BwR1VD?=
 =?utf-8?Q?TmT4Yd0oER/FL5pJG376bwWuj6yiMLpWP9yjfKu?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5399.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d61a3db-91c9-4a16-3eca-08d95b0038c6
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2021 06:37:55.8885 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8fwOqKZobsMiqxWXJkUyIGHxzFAEtudDvKFPhUT0pYNkM4aQgzKpiSbJtpGvjgxIh+RpuLPo4LHqAA5gB0AXgV59h4Zg5gTc6FxR2a5e0QleGF8coukjaaKAyk/dckiZ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5285
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH next-queue v2 3/3] igc: Add support
 for CBS offloading
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
Cc: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>, "Chenniyappan,
 Velmurugan" <velmurugan.chenniyappan@intel.com>, "Chilakala,
 Mallikarjuna" <mallikarjuna.chilakala@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Paul Menzel <pmenzel@molgen.mpg.de>
> Sent: Wednesday, August 4, 2021 8:11 PM
> To: Gunasekaran, Aravindhan <aravindhan.gunasekaran@intel.com>
> Cc: Chenniyappan, Velmurugan <velmurugan.chenniyappan@intel.com>;
> Chilakala, Mallikarjuna <mallikarjuna.chilakala@intel.com>; intel-wired-
> lan@osuosl.org
> Subject: Re: [Intel-wired-lan] [PATCH next-queue v2 3/3] igc: Add support for
> CBS offloading
> 
> Dear Aravindhan,
> 
> 
> Am 04.08.21 um 16:19 schrieb aravindhan.gunasekaran@intel.com:
> > From: Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>
> >
> > Implemented support for CBS Qdisc hardware offload mode in the driver.
> > There are two sets of CBS HW logic in i225 controller and this patch
> > supports enabling them in the top two priority TX queues.
> >
> > In-order for CBS algorithm to work as intended and provide BW
> > reservation CBS should be enabled in highest priority queue first.
> > If we enable CBS on any of low priority queues, the traffic in high
> > priority queue does not allow low priority queue to be selected for
> > transmission and bandwidth reservation is not guaranteed.
> 
> Nit: Please re-flow for 75 characters per line.
> 
> Please mention IEEE802.1Qav (CBS) in the commit message, the datasheet
> name and revision you used for the implementation (I see it in one of the
> comments), and maybe how to configure it.
> 
> Should Linux log a message, if support is detected and used?
> 
> 
> Kind regards,
> 
> Paul

This is my response.

> 
> 
> > Signed-off-by: Aravindhan Gunasekaran
> > <aravindhan.gunasekaran@intel.com>
> > ---
> >   drivers/net/ethernet/intel/igc/igc.h         |  11 ++-
> >   drivers/net/ethernet/intel/igc/igc_defines.h |   8 +++
> >   drivers/net/ethernet/intel/igc/igc_main.c    |  71 ++++++++++++++++++
> >   drivers/net/ethernet/intel/igc/igc_regs.h    |   3 +
> >   drivers/net/ethernet/intel/igc/igc_tsn.c     | 103
> +++++++++++++++++++++++++++
> >   5 files changed, 195 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/ethernet/intel/igc/igc.h
> > b/drivers/net/ethernet/intel/igc/igc.h
> > index 58488ba..a125aaf 100644
> > --- a/drivers/net/ethernet/intel/igc/igc.h
> > +++ b/drivers/net/ethernet/intel/igc/igc.h
> > @@ -98,6 +98,13 @@ struct igc_ring {
> >   	u32 start_time;
> >   	u32 end_time;
> >
> > +	/* CBS parameters */
> > +	bool cbs_enable;                /* indicates if CBS is enabled */
> > +	s32 idleslope;                  /* idleSlope in kbps */
> > +	s32 sendslope;                  /* sendSlope in kbps */
> > +	s32 hicredit;                   /* hiCredit in bytes */
> > +	s32 locredit;                   /* loCredit in bytes */
> > +
> >   	/* everything past this point are written often */
> >   	u16 next_to_clean;
> >   	u16 next_to_use;
> > @@ -289,8 +296,10 @@ extern char igc_driver_name[];
> >   #define IGC_FLAG_VLAN_PROMISC		BIT(15)
> >   #define IGC_FLAG_RX_LEGACY		BIT(16)
> >   #define IGC_FLAG_TSN_QBV_ENABLED	BIT(17)
> > +#define IGC_FLAG_TSN_QAV_ENABLED	BIT(18)
> >
> > -#define IGC_FLAG_TSN_ANY_ENABLED
> 	IGC_FLAG_TSN_QBV_ENABLED
> > +#define IGC_FLAG_TSN_ANY_ENABLED \
> > +	(IGC_FLAG_TSN_QBV_ENABLED | IGC_FLAG_TSN_QAV_ENABLED)
> >
> >   #define IGC_FLAG_RSS_FIELD_IPV4_UDP	BIT(6)
> >   #define IGC_FLAG_RSS_FIELD_IPV6_UDP	BIT(7)
> > diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h
> > b/drivers/net/ethernet/intel/igc/igc_defines.h
> > index 1361086..244edbc 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_defines.h
> > +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
> > @@ -518,6 +518,14 @@
> >   #define IGC_TXQCTL_QUEUE_MODE_LAUNCHT	0x00000001
> >   #define IGC_TXQCTL_STRICT_CYCLE		0x00000002
> >   #define IGC_TXQCTL_STRICT_END		0x00000004
> > +#define IGC_TXQCTL_QAV_SEL_MASK		0x000000C0
> > +#define IGC_TXQCTL_QAV_SEL_CBS0		0x00000080
> > +#define IGC_TXQCTL_QAV_SEL_CBS1		0x000000C0
> > +
> > +#define IGC_TQAVCC_IDLESLOPE_MASK	0xFFFF
> > +#define IGC_TQAVCC_KEEP_CREDITS		BIT(30)
> > +
> > +#define IGC_MAX_SR_QUEUES		2
> >
> >   /* Receive Checksum Control */
> >   #define IGC_RXCSUM_CRCOFL	0x00000800   /* CRC32 offload enable
> */
> > diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
> > b/drivers/net/ethernet/intel/igc/igc_main.c
> > index 3eb4f9e..ea12633 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_main.c
> > +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> > @@ -5905,6 +5905,74 @@ static int igc_tsn_enable_qbv_scheduling(struct
> igc_adapter *adapter,
> >   	return igc_tsn_offload_apply(adapter);
> >   }
> >
> > +static int igc_save_cbs_params(struct igc_adapter *adapter, int queue,
> > +			       bool enable, int idleslope, int sendslope,
> > +			       int hicredit, int locredit) {
> > +	bool cbs_status[IGC_MAX_SR_QUEUES] = { false };
> > +	struct net_device *netdev = adapter->netdev;
> > +	struct igc_ring *ring;
> > +	int i;
> > +
> > +	/* i225 has two sets of credit-based shaper logic.
> > +	 * Supporting it only on the top two priority queues
> > +	 */
> > +	if (queue < 0 || queue > 1)
> > +		return -EINVAL;
> > +
> > +	ring = adapter->tx_ring[queue];
> > +
> > +	for (i = 0; i < IGC_MAX_SR_QUEUES; i++)
> > +		if (adapter->tx_ring[i])
> > +			cbs_status[i] = adapter->tx_ring[i]->cbs_enable;
> > +
> > +	/* CBS should be enabled on the highest priority queue first inorder
> > +	 * for the CBS algorithm to operate as intended.
> > +	 */
> > +	if (enable) {
> > +		if (queue == 1 && !cbs_status[0]) {
> > +			netdev_err(netdev,
> > +				   "Enabling CBS on queue1 before
> queue0\n");
> > +			return -EINVAL;
> > +		}
> > +	} else {
> > +		if (queue == 0 && cbs_status[1]) {
> > +			netdev_err(netdev,
> > +				   "Disabling CBS on queue0 before
> queue1\n");
> > +			return -EINVAL;
> > +		}
> > +	}
> > +
> > +	ring->cbs_enable = enable;
> > +	ring->idleslope = idleslope;
> > +	ring->sendslope = sendslope;
> > +	ring->hicredit = hicredit;
> > +	ring->locredit = locredit;
> > +
> > +	return 0;
> > +}
> > +
> > +static int igc_tsn_enable_cbs(struct igc_adapter *adapter,
> > +			      struct tc_cbs_qopt_offload *qopt) {
> > +	struct igc_hw *hw = &adapter->hw;
> > +	int err;
> > +
> > +	if (hw->mac.type != igc_i225)
> > +		return -EOPNOTSUPP;
> > +
> > +	if (qopt->queue < 0 || qopt->queue > 1)
> > +		return -EINVAL;
> > +
> > +	err = igc_save_cbs_params(adapter, qopt->queue, qopt->enable,
> > +				  qopt->idleslope, qopt->sendslope,
> > +				  qopt->hicredit, qopt->locredit);
> > +	if (err)
> > +		return err;
> > +
> > +	return igc_tsn_offload_apply(adapter); }
> > +
> >   static int igc_setup_tc(struct net_device *dev, enum tc_setup_type type,
> >   			void *type_data)
> >   {
> > @@ -5917,6 +5985,9 @@ static int igc_setup_tc(struct net_device *dev,
> enum tc_setup_type type,
> >   	case TC_SETUP_QDISC_ETF:
> >   		return igc_tsn_enable_launchtime(adapter, type_data);
> >
> > +	case TC_SETUP_QDISC_CBS:
> > +		return igc_tsn_enable_cbs(adapter, type_data);
> > +
> >   	default:
> >   		return -EOPNOTSUPP;
> >   	}
> > diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h
> > b/drivers/net/ethernet/intel/igc/igc_regs.h
> > index 828c350..f90a644 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_regs.h
> > +++ b/drivers/net/ethernet/intel/igc/igc_regs.h
> > @@ -236,6 +236,9 @@
> >   #define IGC_ENDQT(_n)		(0x3334 + 0x4 * (_n))
> >   #define IGC_DTXMXPKTSZ		0x355C
> >
> > +#define IGC_TQAVCC(_n)		(0x3004 + ((_n) * 0x40))
> > +#define IGC_TQAVHC(_n)		(0x300C + ((_n) * 0x40))
> > +
> >   /* System Time Registers */
> >   #define IGC_SYSTIML	0x0B600  /* System time register Low - RO */
> >   #define IGC_SYSTIMH	0x0B604  /* System time register High - RO */
> > diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c
> > b/drivers/net/ethernet/intel/igc/igc_tsn.c
> > index 2935d57..0fce22d 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_tsn.c
> > +++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
> > @@ -18,6 +18,20 @@ static bool is_any_launchtime(struct igc_adapter
> *adapter)
> >   	return false;
> >   }
> >
> > +static bool is_cbs_enabled(struct igc_adapter *adapter) {
> > +	int i;
> > +
> > +	for (i = 0; i < adapter->num_tx_queues; i++) {
> > +		struct igc_ring *ring = adapter->tx_ring[i];
> > +
> > +		if (ring->cbs_enable)
> > +			return true;
> > +	}
> > +
> > +	return false;
> > +}
> > +
> >   static unsigned int igc_tsn_new_flags(struct igc_adapter *adapter)
> >   {
> >   	unsigned int new_flags = adapter->flags &
> > ~IGC_FLAG_TSN_ANY_ENABLED; @@ -28,6 +42,9 @@ static unsigned int
> igc_tsn_new_flags(struct igc_adapter *adapter)
> >   	if (is_any_launchtime(adapter))
> >   		new_flags |= IGC_FLAG_TSN_QBV_ENABLED;
> >
> > +	if (is_cbs_enabled(adapter))
> > +		new_flags |= IGC_FLAG_TSN_QAV_ENABLED;
> > +
> >   	return new_flags;
> >   }
> >
> > @@ -87,6 +104,8 @@ static int igc_tsn_enable_offload(struct igc_adapter
> *adapter)
> >   	for (i = 0; i < adapter->num_tx_queues; i++) {
> >   		struct igc_ring *ring = adapter->tx_ring[i];
> >   		u32 txqctl = 0;
> > +		u16 cbs_value;
> > +		u32 tqavcc;
> >
> >   		wr32(IGC_STQT(i), ring->start_time);
> >   		wr32(IGC_ENDQT(i), ring->end_time); @@ -104,6 +123,90
> @@ static
> > int igc_tsn_enable_offload(struct igc_adapter *adapter)
> >   		if (ring->launchtime_enable)
> >   			txqctl |= IGC_TXQCTL_QUEUE_MODE_LAUNCHT;
> >
> > +		/* Skip configuring CBS for Q2 and Q3 */
> > +		if (i > 1)
> > +			goto skip_cbs;
> > +
> > +		if (ring->cbs_enable) {
> > +			if (i == 0)
> > +				txqctl |= IGC_TXQCTL_QAV_SEL_CBS0;
> > +			else
> > +				txqctl |= IGC_TXQCTL_QAV_SEL_CBS1;
> > +
> > +			/* According to i225 datasheet section 7.5.2.7, we
> > +			 * should set the 'idleSlope' field from TQAVCC
> > +			 * register following the equation:
> > +			 *
> > +			 * value = link-speed   0x7736 * BW * 0.2
> > +			 *         ---------- *  -----------------         (E1)
> > +			 *          100Mbps            2.5
> > +			 *
> > +			 * Note that 'link-speed' is in Mbps.
> > +			 *
> > +			 * 'BW' is the percentage bandwidth out of full
> > +			 * link speed which can be found with the
> > +			 * following equation. Note that idleSlope here
> > +			 * is the parameter from this function
> > +			 * which is in kbps.
> > +			 *
> > +			 *     BW =     idleSlope
> > +			 *          -----------------                      (E2)
> > +			 *          link-speed * 1000
> > +			 *
> > +			 * That said, we can come up with a generic
> > +			 * equation to calculate the value we should set
> > +			 * it TQAVCC register by replacing 'BW' in E1 by E2.
> > +			 * The resulting equation is:
> > +			 *
> > +			 * value = link-speed * 0x7736 * idleSlope * 0.2
> > +			 *         -------------------------------------   (E3)
> > +			 *             100 * 2.5 * link-speed * 1000
> > +			 *
> > +			 * 'link-speed' is present in both sides of the
> > +			 * fraction so it is canceled out. The final
> > +			 * equation is the following:
> > +			 *
> > +			 *     value = idleSlope * 61036
> > +			 *             -----------------                   (E4)
> > +			 *                  2500000
> > +			 *
> > +			 * NOTE: For i225, given the above, we can see
> > +			 *       that idleslope is represented in
> > +			 *       40.959433 kbps units by the value at
> > +			 *       the TQAVCC register (2.5Gbps / 61036),
> > +			 *       which reduces the granularity for
> > +			 *       idleslope increments.
> > +			 *
> > +			 * In i225 controller, the sendSlope and loCredit
> > +			 * parameters from CBS are not configurable
> > +			 * by software so we don't do any
> > +			 * 'controller configuration' in respect to
> > +			 * these parameters.
> > +			 */
> > +			cbs_value = DIV_ROUND_UP_ULL(ring->idleslope
> > +						     * 61036ULL, 2500000);
> > +
> > +			tqavcc = rd32(IGC_TQAVCC(i));
> > +			tqavcc &= ~IGC_TQAVCC_IDLESLOPE_MASK;
> > +			tqavcc |= cbs_value | IGC_TQAVCC_KEEP_CREDITS;
> > +			wr32(IGC_TQAVCC(i), tqavcc);
> > +
> > +			wr32(IGC_TQAVHC(i),
> > +			     0x80000000 + ring->hicredit * 0x7735);
> > +		} else {
> > +			/* Disable any CBS for the queue */
> > +			txqctl &= ~(IGC_TXQCTL_QAV_SEL_MASK);
> > +
> > +			/* Set idleSlope to zero. */
> > +			tqavcc = rd32(IGC_TQAVCC(i));
> > +			tqavcc &= ~(IGC_TQAVCC_IDLESLOPE_MASK |
> > +				    IGC_TQAVCC_KEEP_CREDITS);
> > +			wr32(IGC_TQAVCC(i), tqavcc);
> > +
> > +			/* Set hiCredit to zero. */
> > +			wr32(IGC_TQAVHC(i), 0);
> > +		}
> > +skip_cbs:
> >   		wr32(IGC_TXQCTL(i), txqctl);
> >   	}
> >
> >
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
