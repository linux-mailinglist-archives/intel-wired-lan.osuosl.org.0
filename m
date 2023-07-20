Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6588975AF7F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jul 2023 15:17:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B27538140B;
	Thu, 20 Jul 2023 13:17:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B27538140B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689859044;
	bh=tq68FvLvWS42sgOMa+HlqLpdfN16B/h4vby4fPtuSwo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zYICtwYTvElQtBL3YG3MAnnyKEdhnnjmjBdjUTwQ9rL9Ntlp9b+URkEGxuUL3JvZO
	 ikSzTMrjTup6GACYHLGnPg1hAORPjnSxG+QoWW4bi0TOwqR8Y0ub3LXSZfl8H4jXGv
	 HBUGhPLc3x67HErpd5dTjkjOOFB+B4wK173+IOxXVscSyyBhHYP3PSYTURy/YvOE/f
	 7IjemfJUb1IqCeT1eBqOJGVLl2QRub/v0hg7iyjGFg700f7VWGB5UjY2je2iws6OFO
	 k2wkGcni+5JBHFrYSFQfm0toF9ckl6gvrkttQwzcdicw8tZF16QHGc5ton2/83FdDn
	 7PLzhlbYrgQeg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TOkSRoMPnh7I; Thu, 20 Jul 2023 13:17:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 97C42813F7;
	Thu, 20 Jul 2023 13:17:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 97C42813F7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 88BBA1BF2FE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jul 2023 13:17:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 608A161162
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jul 2023 13:17:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 608A161162
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ou7kVvIa35z2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jul 2023 13:17:17 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 20 Jul 2023 13:17:17 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9B1F160740
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9B1F160740
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jul 2023 13:17:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="397604213"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="397604213"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 06:07:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="867830294"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 20 Jul 2023 06:07:23 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 20 Jul 2023 06:07:22 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 20 Jul 2023 06:07:22 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 20 Jul 2023 06:07:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HVAgxYsX5gJjZBYZJbMH6s+VmSqHvwQctJWK9UqQpHTaRibmC1tKDSDnvGgrta1+1/Ci9JTGkNwme/WILUzSV/JbIVNkcCTLehxtgbC86Ijd4OlqtnBvP/19AFwe8Y2HnOJijcxT5edMN2zSdcL4F3c7u8H/iHBtI3QkJMpNYXr4K6xb0qzb2XDlOkYzjeW96BnjQvtYM8OGM6mX2/jkAKUZjoUHw+6RkICqWvM09hcN2WN6wsjM3RmqJYDhNwp3luPDL8+ypft9h46OXp+sNkTbeHuGSpxbzxL8teyfBmZlOOqn1l5eSw0axhSl/3b72h0xdaqPni+9Aj406KFNRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NQzwOl90ftt/TtJ9+WLFE2tzGL3bze9AbKkSKoo3gRQ=;
 b=jjAqGPE98OOCIi6My2XHec/2dJdAd0wdHLkbhmszx6r8fU0ogm5qt3GmQl/SiO590GvHZl0igsrDlwYw1amjEwU6czBI/J5DjzN5HPp+MbUj17C0jBWDKAEQdveNvdDwwnf7jFzoeGeYQ89t+DLRmoV0KNXbyk0SfKT4w1dDSi1eb1RiKqoGJ2bthCRrxPzjBanXaimlaTr2qMWo5imCpBAiFwYDutlczrDzbHedSaO/q1LNpFeFiO0vuJelEWIsy/c0vbD7jqixl499eMey7MJRB62WAlx+wPx4rPMs+pHkTfX+2/4ZHaL7qtfe3dnI7nkjGAlfeDHvcK2/NdvOJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5800.namprd11.prod.outlook.com (2603:10b6:303:186::21)
 by PH8PR11MB6976.namprd11.prod.outlook.com (2603:10b6:510:223::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.31; Thu, 20 Jul
 2023 13:07:18 +0000
Received: from MW4PR11MB5800.namprd11.prod.outlook.com
 ([fe80::2908:928:b095:b2df]) by MW4PR11MB5800.namprd11.prod.outlook.com
 ([fe80::2908:928:b095:b2df%7]) with mapi id 15.20.6609.024; Thu, 20 Jul 2023
 13:07:18 +0000
From: "Kolacinski, Karol" <karol.kolacinski@intel.com>
To: "Michalik, Michal" <michal.michalik@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH net-next v1 3/3] ice: PTP: add clock domain number to
 auxiliary interface
Thread-Index: AQHZuwO+OqNXgMUsbkqCmQyt23zDb6/CnM6E
Date: Thu, 20 Jul 2023 13:07:18 +0000
Message-ID: <MW4PR11MB58001A57F548565754EB5044863EA@MW4PR11MB5800.namprd11.prod.outlook.com>
References: <20230720121357.26739-1-michal.michalik@intel.com>
 <20230720121357.26739-4-michal.michalik@intel.com>
In-Reply-To: <20230720121357.26739-4-michal.michalik@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: pl-PL
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5800:EE_|PH8PR11MB6976:EE_
x-ms-office365-filtering-correlation-id: fb2c9c1f-e847-4826-6c59-08db89223f12
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qlptuARSBYbVlDijseIwyX3Nc7mCl5QEhuIJYaJsUukssOcD0wARj5ioHVuDg/DjRgAYPO+SVIr6YAROT8whEKwKnvCsIPilBVJk2epSbP7+0NZQNi6iRJ1iik7nYI/C3qmMJ1DtoQlKtWpvlvS33lA7lTLi/fLYWuZ4bt5sxQ+ei+oxEp+r4pnm/YwaE2hQO+B8yzp4KoHKMYapw/umjVc1CsAqM1/yYJx4iPa2/Nmp3WX645sxMezyonqhAOiSvXgsEr++qxvw2Tve7Yiyffh4MK2vXykiNfjKasYahY+knVdd1V3ee1SgKPyyolmlrSC1i7ZLr+/hygGLAksoNhW7DrBCS714QrnLnMh0i9StlVZAu3F94uEOEc9HqJkYM27y+gVcIYFCvWu7OlW8xdRPojXivXeQqI9rdowwcwErRXz1o4Th/0wzOSGJKX1HjPkyICd69rZdKJx9Vvz6CFVR+zBERVviVIFVXwuPEzjV9ZDWUFZm4/C2ExpfM67OhgrgoAtrp8z4G4ueOAnqOxNYLshtfYQCXonVraXtPpvkseaGdY9q05A/c7FwO2jLY1Rl7HZvl4WTNM2H5LD/iGqw4J72pUlh9YgT+yxwtxdoIOJaiOITDJSvKsSF+1T5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5800.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(376002)(136003)(366004)(39860400002)(346002)(451199021)(122000001)(110136005)(54906003)(55016003)(91956017)(71200400001)(7696005)(66946007)(82960400001)(478600001)(86362001)(8676002)(52536014)(38070700005)(8936002)(4744005)(5660300002)(2906002)(33656002)(4326008)(66476007)(76116006)(66446008)(64756008)(66556008)(38100700002)(41300700001)(316002)(107886003)(6506007)(26005)(186003)(53546011)(83380400001)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?9iSvPktgBF4k1AwzV/z7WLjL6DldHzKcZ/UxTDDUANZwJvFG/TyUjD61ed?=
 =?iso-8859-2?Q?r/ltVD3Lw79dqBkV+77yEExtwqmBtRkNm37LzA8mc5fI07+/T9vI4mkixC?=
 =?iso-8859-2?Q?iScDKuppOEYvKVPOnf+nRbOvrPftQ6wM4+PZ1c9JULxOPUBsZREk/sNpuG?=
 =?iso-8859-2?Q?p1h3WmjSzgvX+/7pGv6ZWm7+zIOnxk2s9FqAGkcKYa2uSKTfmbvkdwgBY3?=
 =?iso-8859-2?Q?FMeJqgewtJVGx6mTlZXL3/f4u/+gE/zRmQdlMOuswz9Djw97jq9XIQ0OMb?=
 =?iso-8859-2?Q?WJ0Zi8Dpotpks8M3F4tOqA1lIK8afKYHG9lEzq2Pcbb4dZ5TYiPf03V57f?=
 =?iso-8859-2?Q?jHniY7lPsPcJPUKVyuo9F6LHmjM9oCVGgLLDpX2kqDxFmPuuhRGZ5G8uwD?=
 =?iso-8859-2?Q?HkgfVO1Abv/RbKAqazkXmeBso+cuVBVnvIi+bkblerT1mMWlDEbAZUUX6/?=
 =?iso-8859-2?Q?BzvmJLziIkoe43kzZo8LJxOfrEXH+ZZ9kkLb4ZKlKrN4hSqbivDclia5y9?=
 =?iso-8859-2?Q?ohcPmj9QACfcY75TDs73WbghvdUQLxdiqTcT7I1W4oh84CMHCfPcfZ3fqV?=
 =?iso-8859-2?Q?YGU2ALZNwPDkOmvL/ybKMF51PA4jNvWpvZ4L0DPbICcfiWXAg8YVN0bAgl?=
 =?iso-8859-2?Q?zgfT25LSMfJRF6soygE7TdUUzy/F5onY42wBX7yZaaCdPyDIvivZXPXz2d?=
 =?iso-8859-2?Q?n8y0WfVU6NTs5/japxVNBidPnTRB763DPwgxQbqUQIwruOvzihhfY2nUhf?=
 =?iso-8859-2?Q?IkbHA2l6vaiT2DaI2/xmH86Pjg5oCscMkKw6AASI0WbPLcR2P7epD+CVxk?=
 =?iso-8859-2?Q?538aesn8eJuW+TVvu5ZSiEL4yJkYL56n4UBFM5naKjVOUJTKUSG8AhsRet?=
 =?iso-8859-2?Q?a6wdtwnEzUtb/OCaBb4S2MHz6hC3JUEQZNa0j5qJHGJvDR/RB2BO2X92gE?=
 =?iso-8859-2?Q?Q3pCqey8Dg8pEB6jgs8JcfwtooMP4Vc8r9GvV4Sss3AO47DdGGo+Mn6iwW?=
 =?iso-8859-2?Q?vVHCt7IFDouvvaZ2NJOxQE5/cot8WpAiQc59rg59I58isuwKdWdwM1QNoi?=
 =?iso-8859-2?Q?re+9E946cr+dfjwpv76k5naOXp9/pxn2CgVpgGtYA9VFsGe4AcumF+88Qt?=
 =?iso-8859-2?Q?zKtFnORUy0o6jj/15SMe032os8H49vSu8ADeOwNwZ/4Id0/VUfQl+2ijvF?=
 =?iso-8859-2?Q?px7ZEruaeX+fuAtyQDqMU4csxWO40198oN/684eS++iEhI98Nmf3VItjYe?=
 =?iso-8859-2?Q?BDOdDk2BeIXuj3BG99MZ7G78PGl6O6VyY4deWDC2gdFpP6EVf2cKnNrJIu?=
 =?iso-8859-2?Q?MQBBrLHZXlDEuKPYisG3bj+1L3D72omdad59ZfVZMQqlVkbOM92D2TNNIo?=
 =?iso-8859-2?Q?R+Dtf4gPukiPN3nz9FUF49ZFiwNA5/NKTupNT/8c3JCWji7+L4d6HArumK?=
 =?iso-8859-2?Q?B0HbpPBGcANyVbfjOl0AvSxxPuPnuzsc5LbM8WlcmKAH/Se/S9amAPSAlw?=
 =?iso-8859-2?Q?0aqwwCpb0AI5T3i5fxMwNZhb76FNhWDK3lEK75RJtrsuBizBuq3SCmLlmC?=
 =?iso-8859-2?Q?BmnttLL1Lzd87Nhzn+59XbOusX1WMuTSSPRXpttj4Vma36VvPufigXhcJ5?=
 =?iso-8859-2?Q?AEEaVBUpu9fnsnYWWCWXzvcRyI37D2Aqpmdt6khYG9AzYNpP3xx0ZoJg?=
 =?iso-8859-2?Q?=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5800.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fb2c9c1f-e847-4826-6c59-08db89223f12
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jul 2023 13:07:18.2527 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KzplaKie77ciSQa/E3gYG2VABdGQhYX3MF50p7V9EQPucnMEJWHjhKvvitCwqQ17FT2POp33IQUyPRT/QqZyvl8LECvPfQohDNujwT2iI9Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6976
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689859037; x=1721395037;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NQzwOl90ftt/TtJ9+WLFE2tzGL3bze9AbKkSKoo3gRQ=;
 b=ZJ1dphnn7PRH/zI2OxEQISuP9SJukdejhe0hYYa5Ca5j6mAaWEulEmbz
 eDua/WhwTgCpKz9optXF2G+b1ReqqvZXv2/7rv/qLqjjYhFx+e7in29f1
 0Cn+ib6A24wT/XJ4J3fhUEMCfELx8FcBK7MTTfsdEhE1DnJjIPWCxxzrh
 xEiKgLu6KHOIQ5ranx2KNGyQvILZ14UgXvFIVIhBATvUUA77M0YxmQB8a
 cyp/HW1q1e8hxHSqgJvwuMDrYwMCt/B8Gmn13QFnoVpzwzGomRhfo8xSO
 WL1DamGBor0oRzdJt15qOnG4pmuyocjjJdOq/WDfa08AfxulgWZfOrR9U
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZJ1dphnn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: [Intel-wired-lan] [PATCH net-next v1 3/3] ice: PTP: add clock
 domain number to auxiliary interface
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
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Michalik, Michal <michal.michalik@intel.com>
Sent: Thursday, July 20 2023 2:13 PM
To: intel-wired-lan@lists.osuosl.org <intel-wired-lan@lists.osuosl.org>
Cc: Keller, Jacob E <jacob.e.keller@intel.com>; Kolacinski, Karol
<karol.kolacinski@intel.com>; Nguyen, Anthony L
<anthony.l.nguyen@intel.com>; Brandeburg, Jesse
<jesse.brandeburg@intel.com>; Michalik, Michal
<michal.michalik@intel.com>
Subject: [PATCH net-next v1 3/3] ice: PTP: add clock domain number to
auxiliary interface

> -=A0=A0=A0=A0=A0=A0 tmr_idx =3D hw->func_caps.ts_func_info.tmr_index_asso=
c;
> -=A0=A0=A0=A0=A0=A0 if (!tmr_idx)
> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 param_idx =3D ICE_AQC_DRIVER_=
PARAM_CLK_IDX_TMR0;
> -=A0=A0=A0=A0=A0=A0 else
> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 param_idx =3D ICE_AQC_DRIVER_=
PARAM_CLK_IDX_TMR1;
>

Are the parameters ICE_AQC_DRIVER_PARAM_CLK_IDX_TMR0 and _TMR1 used
anywhere else? If not, their definitions should be deleted too.

Thanks,
Karol
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
