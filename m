Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC68731CD1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jun 2023 17:37:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 50A7783ECF;
	Thu, 15 Jun 2023 15:37:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 50A7783ECF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686843431;
	bh=j743+g7B5VQ63J+b37XrJAnW3n0jtRzw3HtDDOcW1BU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BrZgtC+9SoW237Qa2iusSsx4xDJPE5gXa4Q0QoBGDK5b7GGDNu394n8jWayDVEOI6
	 3ZDZLaNkOtXWYyihcPCVRGirq4JcgWhtl0CuvH1osHYxmujEewlvWVIiN/n82ozsvd
	 hUUzZ/hbg8Ey8Oo8NrGsMg47yYvsK4icVc3knHX2dK2goKeC7Oz+lfag0h4EEJDpPl
	 oWGmxktM95FOYloHyffNAYRp3NKJCWJNCY57TjSxcsLI1S7yTr09VAik9ftv/wiA2T
	 tz3++rXADwV7YaIGJGUe2NXW6ahxucASHp9lDglRgemrFYuORO7bm5B3uwWsxrmQEz
	 v2VQzwz7itxCw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iHs7rnoexPbw; Thu, 15 Jun 2023 15:37:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F1BD83EB8;
	Thu, 15 Jun 2023 15:37:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8F1BD83EB8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 24E321BF296
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 15:37:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ED2C883EC9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 15:37:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ED2C883EC9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vse2huC09wdt for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Jun 2023 15:37:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8D7F183EB8
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8D7F183EB8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 15:37:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="424862318"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="424862318"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 08:19:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="802425203"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="802425203"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Jun 2023 08:17:47 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 15 Jun 2023 08:17:47 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 15 Jun 2023 08:17:47 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 15 Jun 2023 08:17:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nBDIsbWz4uuREaZpBAmgZvcJNWXkpsDQlMvJFh89rf5beBu13c94M+MopCpEnsDHYEUVJMaTb/mIicvhFo9/WeRGjfolBFxOQYgvsxXeqVtygg2pku8LiY83MKjKifMeP74TdpLMmw69QFoLIaMyOzBLQ5Gg2KuzRRjwFXRS5ELNsPsk3B/t3M7Tvv+I2Tzl9VxouNKpFpwpiUFGdO4Asv8TPURnALWOd1qFfLKHRXtrGYDXQvrf1QLfnm06HeEeRkc3g63cVXqxe7Lu+Ba467RPIVYjv4KLC1h6HUd1QB6IJ+mBaR0lCuCVBSSFoy0Dgg+4gzzcuNOd8ajAJd5g1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QFhx1ulUNDNH0sGsk+nsPkNI+YL+FRfY9p8EWt7gs9k=;
 b=EmwCXrV/9D6QWTP8Fxrq7Ri4TyYiLzGPt9duzvjWGFval6G7/SzGpfB/m+aACgG0YQDjlPdPUKmQvXxvmqnrW58gZGB8lKZdUsUHTQvTdbOqQN5kxcdWVK4LFUJBNMZ8Ua/ZOevU1NVW+ccdpOdJjp1qz5wcYyKNzmGFoFDn6XabnDCXmVGK2WZnPbFld/2AAqqr9cxqAMrYT1EeU2qbVwnu5qwT52/8CC4dxSSLYCz8qHFmXqr1xu6WngMnQJUoN93XD/eRzZLBCfDG0gGogj8Ksmp2piJIbftLRRgMMfdVkjQPiWYSwTVxvSzcwnMZuqiIu8ndAJEgjPeFxBtuWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by SA1PR11MB6823.namprd11.prod.outlook.com (2603:10b6:806:2b0::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.37; Thu, 15 Jun
 2023 15:17:44 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::2134:60a2:3968:7298]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::2134:60a2:3968:7298%2]) with mapi id 15.20.6477.028; Thu, 15 Jun 2023
 15:17:44 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v10 1/5] iavf: Wait for reset
 in callbacks which trigger it
Thread-Index: AQHZl74ul5JPrPkGJkqcCG2fCaLWgK+MCX/A
Date: Thu, 15 Jun 2023 15:17:44 +0000
Message-ID: <BL0PR11MB35219A2DFA0AA8283A1C6BEC8F5BA@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20230605145226.1222225-1-mateusz.palczewski@intel.com>
 <20230605145226.1222225-2-mateusz.palczewski@intel.com>
In-Reply-To: <20230605145226.1222225-2-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|SA1PR11MB6823:EE_
x-ms-office365-filtering-correlation-id: d4eb6563-32aa-40f0-1fd9-08db6db3ab7d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uwe0hCAxWNpg+19jLyL7WTbp3ve9BuVJaBz9MY00FW+AxBc5Hs01ewWY85fRifCljocUofKYLZkuUCh+kMjtWQQAAybbwHJbpV7ddeISVdJvFz2s75kQ5g+5ofwEBcaA8b4Up3snlv/vHiFrxikoy+1jIaK+rly4UKMJrGlXrnb5HGPHvVP6Xia5hoBVplP+qzLi0QfjGZ7hMZ5Y+tccStaSCnV7ZkD2wVn11WMX1kUxLWcO4QVuyliqkNuVsTYi8Luj0GfLu7d01+GME9IIKG0eSglPB5ZY0uE+5EwiMXt5HfHStfjXD6HJMyJ7nhijRb2uBvEJ6k1/VecWCaSfDgwEgiDxLGxwaqRuXrpx6Qk67KEcfQSlWtsIY4BoMdAhkP75GhEfZkku4P99blhAU+Dz6AB42MAxk7wB535xJhKu9yk2h6eq2vxQLtX1k/DdXPTF+NLSLLS2ZYU/ji8Dog9cu2YtIP8DG75V7Lqqpldokgz5r8+aFuj39iBrFQ5kIXytu+2RcpUWZA150Ven4H6+aGPwGbVjXpPzMwkToSl953CE0Lsd5dmFQFFvrW5LlT+rGjdBfEX1iMKqVAzIBbP/Vk5Iweeos8k+0xruFJw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(366004)(136003)(376002)(396003)(39860400002)(451199021)(5660300002)(83380400001)(52536014)(186003)(55016003)(6506007)(66574015)(2906002)(966005)(107886003)(41300700001)(8936002)(9686003)(7696005)(26005)(8676002)(122000001)(110136005)(54906003)(38070700005)(33656002)(316002)(53546011)(478600001)(82960400001)(76116006)(66556008)(4326008)(86362001)(66946007)(66476007)(38100700002)(66446008)(64756008)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?ul1+VnH6Uw0XHim1Can95VpMdlIYJexZgtBAdELRW4moHLpbg9SuNtsgqT?=
 =?iso-8859-2?Q?dp/sYKXeyNfJ0fGIxge6viqGFMGXFkPPNSX1046dUPJsCQdpPbHsphOw3L?=
 =?iso-8859-2?Q?tgoZkExWYzUAAOUide4dTQWs0e3kzlVkXse4XlohU+2Qr5G2WfM4QNU33B?=
 =?iso-8859-2?Q?FFi729149juifPiQoWxARMLGkOkrn7ZDzCnvwc9wvIRFJLU+mX8QvA1yOb?=
 =?iso-8859-2?Q?Ld7hj7ko/TKom4ndQr8Pn1D+Cbni3sEXaPNtnEzq6HartBXeQkk6j6fkcN?=
 =?iso-8859-2?Q?PpXpSnSlEZsPGibXinM4k/WS2fwXroc9yAscjJ6NWVD1mCx7hrqg/zCNMQ?=
 =?iso-8859-2?Q?1FfXrkaAMlPhrrEZN19Aawmow+kqW5Q8tP9YxMhDcLbF25ybo0E0jYZfq3?=
 =?iso-8859-2?Q?jq1v/hHqpk7qBY4+m3BUeot2gHYNHWpJp18uA50uSZP8jFItNLsYquLPTO?=
 =?iso-8859-2?Q?soUj0MsDsuVF+iFLQ/xFUoHWhURtK66uLJ/ciXA0IH3Tn9IBs3Tn6cShZL?=
 =?iso-8859-2?Q?q2d2ZwzfHodx6WjGiG0w5kwWvEzQblqoAFt4fWJ7vWXT8szwH2kZFUFA3V?=
 =?iso-8859-2?Q?yQ858Hc4EtQ8Qlm/aAMB6jyFIUY9ktWr0Y9Ua2BYGXaaRrQ79uYwHQGFqx?=
 =?iso-8859-2?Q?JTe+RSbOm+qNGBNiVoSgVy9lc03bA+gCEHXlKFyl1gWlV/KyZSWh7WnOGA?=
 =?iso-8859-2?Q?OH18E+BlHltkxo8Hmo5ys4gaLHi2Kezd+WDO8jnSZ5rOgYDmntukBErQam?=
 =?iso-8859-2?Q?YemV+5V6vUayx+KH+/N50n3VIjS+3RrYhHm9iKTBtpWnyhJmJsx7e/Vtn+?=
 =?iso-8859-2?Q?0yac5mJ5txsOVE3Z8wTnNavbG4GU6SsECjNygvW4sjo46MVthbJKac5anL?=
 =?iso-8859-2?Q?xC66/3KWf7fW1sUINNoubTNfPlWrqrugEjSP1967z+SF5FmEjQ4UmkAqd+?=
 =?iso-8859-2?Q?yBp/ukmjKkXrv48gN2j4LdorRFfd9dwudMs9XuY09LpTPY2YureFoL5Ew9?=
 =?iso-8859-2?Q?+ZkCncH/2BcVS7Wor+Lg9Zycunn3UW4+6NUvurzO4dtGW7FXC/N54b4B64?=
 =?iso-8859-2?Q?UurJfpC/KOZj51LrnbOM605gy0aQGI7OLuiPRgBdd/s+w+GO4Pkxx0k1Qe?=
 =?iso-8859-2?Q?wJSwq2PLtlBe64M0aNg7Yyqn2yXob+CYIphJBxMAEssE5RBYeeEBCO0wLR?=
 =?iso-8859-2?Q?0yNf6znyKKu4T9tYsckMl1RXQ7M1S6NRKOl0RSUXWZ6crwh/537HRVddvI?=
 =?iso-8859-2?Q?7zEr7bXS+28vzQpDTGLMaEljlIDeKR4yFNLbq0V5tm/4wUaEbN36vyjiOo?=
 =?iso-8859-2?Q?MxPbXsUcpvYPY751JR/4MX7R818vs3xy4Po0/ttBTmV1G3cX2ET25BXAQQ?=
 =?iso-8859-2?Q?v0toN6dgTwy7DuYSYjxyMPbmsjj21g4X4sqKo8a+7bOLHzuCoKMepQqC1O?=
 =?iso-8859-2?Q?TRkl86sKR26ESeqMXC8hT8nSusAp9d+d14xSNN5OnPhLgbNZr18TJq9cb8?=
 =?iso-8859-2?Q?VAVVtqIDUMUUbTS4dxegZTA55dvJo4iyHXftutaDbmWvWpiOuHZGDx2JwK?=
 =?iso-8859-2?Q?rrV0dSUhkEpy4vHgunhT6mAFKQfB73YH0IsjbGngx22xfk8BOeaG1ibLNH?=
 =?iso-8859-2?Q?6R/DWYiuHaKH9pejy1vx0wBu3Ym71I12BbUBuEeQ5/AuNeuW/QZP3g7w?=
 =?iso-8859-2?Q?=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d4eb6563-32aa-40f0-1fd9-08db6db3ab7d
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2023 15:17:44.6438 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YiCVpSmSZ6ycgmEEcbFb67IyO0YKhizbVs83sOY4rpFEo+FMAzM7RstDRu+st1Ok/P0Q+RaHUMN/kR+sT2zp9Q99ZoCL5Z6biDeSukt6wzM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6823
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686843422; x=1718379422;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qusCRsRDub0alm4l/NHlPWQHg8srtcuHEffIBYX4gXE=;
 b=U1dC0V/MGZti7BlBIqh7rNeXxNdxAlMZBBIJFNAliZUCbwjgokMo2o47
 y7h13fxKk7kKVDmQVAMRalQjigwP0OV3Xdhq/6Ib/LWaDPO8txk0ZPxlz
 HW3hV9Wx5r99SqbfZ9xjv6zAeulis6Ue3W4De0Oa85CfbLNbhkL/wKhHD
 SlFSZGy4jci0X6IeYdNGsJvk13SsEenuAi4fAbiSq+y03FGYA3oQCRzaf
 5cHteY4//mTvRtQsH+t7UGs5+Z2v2BukZAzgX3qpp4dEBjDDaBQoOtU3f
 w7RBpFUmm7DLDw8qR05rfIdR9JSMDZuVC9WBjFKDyrQQWGeZLHv0HoqFX
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=U1dC0V/M
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v10 1/5] iavf: Wait for reset
 in callbacks which trigger it
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
Cc: ivecera <ivecera@redhat.com>,
 Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>, "Maziarz,
 Kamil" <kamil.maziarz@intel.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: poniedzia=B3ek, 5 czerwca 2023 16:52
> To: intel-wired-lan@lists.osuosl.org
> Cc: ivecera <ivecera@redhat.com>; Maziarz, Kamil
> <kamil.maziarz@intel.com>; Sylwester Dziedziuch
> <sylwesterx.dziedziuch@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v10 1/5] iavf: Wait for reset in
> callbacks which trigger it
> =

> From: Marcin Szycik <marcin.szycik@linux.intel.com>
> =

> There was a fail when trying to add the interface to bonding right after
> changing the MTU on the interface. It was caused by bonding interface
> unable to open the interface due to interface being in __RESETTING state
> because of MTU change.
> =

> Add new reset_waitqueue to indicate that reset has finished.
> =

> Add waiting for reset to finish in callbacks which trigger hw reset:
> iavf_set_priv_flags(), iavf_change_mtu() and iavf_set_ringparam().
> We use a 5000ms timeout period because on Hyper-V based systems, this
> operation takes around 3000-4000ms. In normal circumstances, it doesn't
> take more than 500ms to complete.
> =

> Add a function iavf_wait_for_reset() to reuse waiting for reset code and =
use
> it also in iavf_set_channels(), which already waits for reset.
> We don't use error handling in iavf_set_channels() as this could cause the
> device to be in incorrect state if the reset was scheduled but hit timeou=
t or
> the waitng function was interrupted by a signal.
> =

> Fixes: 4e5e6b5d9d13 ("iavf: Fix return of set the new channel count")
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Co-developed-by: Dawid Wesierski <dawidx.wesierski@intel.com>
> Signed-off-by: Dawid Wesierski <dawidx.wesierski@intel.com>
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
> v1->v3: changes were done internally
> v4: fixed SOB's
> v5: changed the way we wake up the reset_waitqueue to make sure that
> reset is woken up
> v6->v9: no changes
> v10: Added fixes tag and fixed commit message
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h        |  2 +
>  .../net/ethernet/intel/iavf/iavf_ethtool.c    | 31 ++++++-----
>  drivers/net/ethernet/intel/iavf/iavf_main.c   | 51 ++++++++++++++++++-
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  1 +
>  4 files changed, 68 insertions(+), 17 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index 9abaff1f2aff..c51b9ed4dc29 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -257,6 +257,7 @@ struct iavf_adapter {
>  	struct work_struct adminq_task;
>  	struct delayed_work client_task;
>  	wait_queue_head_t down_waitqueue;
> +	wait_queue_head_t reset_waitqueue;
>  	wait_queue_head_t vc_waitqueue;
>  	struct iavf_q_vector *q_vectors;
>  	struct list_head vlan_filter_list;
> @@ -591,5 +592,6 @@ void iavf_add_adv_rss_cfg(struct iavf_adapter
> *adapter);  void iavf_del_adv_rss_cfg(struct iavf_adapter *adapter);  str=
uct
> iavf_mac_filter *iavf_add_filter(struct iavf_adapter *adapter,
>  					const u8 *macaddr);
> +int iavf_wait_for_reset(struct iavf_adapter *adapter);
>  int iavf_lock_timeout(struct mutex *lock, unsigned int msecs);  #endif /*
> _IAVF_H_ */ diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> index 92443f8e9fbd..b7141c2a941d 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> @@ -484,6 +484,7 @@ static int iavf_set_priv_flags(struct net_device
> *netdev, u32 flags)  {
>  	struct iavf_adapter *adapter =3D netdev_priv(netdev);
>  	u32 orig_flags, new_flags, changed_flags;
> +	int ret =3D 0;
>  	u32 i;
> =

>  	orig_flags =3D READ_ONCE(adapter->flags); @@ -533,10 +534,13 @@
> static int iavf_set_priv_flags(struct net_device *netdev, u32 flags)
>  		if (netif_running(netdev)) {
>  			adapter->flags |=3D IAVF_FLAG_RESET_NEEDED;
>  			queue_work(adapter->wq, &adapter->reset_task);
> +			ret =3D iavf_wait_for_reset(adapter);
> +			if (ret)
> +				netdev_warn(netdev, "Changing private flags
> timeout or interrupted
> +waiting for reset");
>  		}
>  	}
> =

> -	return 0;
> +	return ret;
>  }
> =

>  /**
> @@ -627,6 +631,7 @@ static int iavf_set_ringparam(struct net_device
> *netdev,  {
>  	struct iavf_adapter *adapter =3D netdev_priv(netdev);
>  	u32 new_rx_count, new_tx_count;
> +	int ret =3D 0;
> =

>  	if ((ring->rx_mini_pending) || (ring->rx_jumbo_pending))
>  		return -EINVAL;
> @@ -673,9 +678,12 @@ static int iavf_set_ringparam(struct net_device
> *netdev,
>  	if (netif_running(netdev)) {
>  		adapter->flags |=3D IAVF_FLAG_RESET_NEEDED;
>  		queue_work(adapter->wq, &adapter->reset_task);
> +		ret =3D iavf_wait_for_reset(adapter);
> +		if (ret)
> +			netdev_warn(netdev, "Changing ring parameters
> timeout or interrupted
> +waiting for reset");
>  	}
> =

> -	return 0;
> +	return ret;
>  }
> =

>  /**
> @@ -1830,7 +1838,7 @@ static int iavf_set_channels(struct net_device
> *netdev,  {
>  	struct iavf_adapter *adapter =3D netdev_priv(netdev);
>  	u32 num_req =3D ch->combined_count;
> -	int i;
> +	int ret =3D 0;
> =

>  	if ((adapter->vf_res->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_ADQ)
> &&
>  	    adapter->num_tc) {
> @@ -1854,20 +1862,11 @@ static int iavf_set_channels(struct net_device
> *netdev,
>  	adapter->flags |=3D IAVF_FLAG_REINIT_ITR_NEEDED;
>  	iavf_schedule_reset(adapter);
> =

> -	/* wait for the reset is done */
> -	for (i =3D 0; i < IAVF_RESET_WAIT_COMPLETE_COUNT; i++) {
> -		msleep(IAVF_RESET_WAIT_MS);
> -		if (adapter->flags & IAVF_FLAG_RESET_PENDING)
> -			continue;
> -		break;
> -	}
> -	if (i =3D=3D IAVF_RESET_WAIT_COMPLETE_COUNT) {
> -		adapter->flags &=3D ~IAVF_FLAG_REINIT_ITR_NEEDED;
> -		adapter->num_req_queues =3D 0;
> -		return -EOPNOTSUPP;
> -	}
> +	ret =3D iavf_wait_for_reset(adapter);
> +	if (ret)
> +		netdev_warn(netdev, "Changing channel count timeout or
> interrupted
> +waiting for reset");
> =

> -	return 0;
> +	return ret;
>  }
> =

>  /**
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 89892a0fd5b7..c815ef87e27d 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -166,6 +166,45 @@ static struct iavf_adapter
> *iavf_pdev_to_adapter(struct pci_dev *pdev)
>  	return netdev_priv(pci_get_drvdata(pdev));
>  }
> =

> +/**
> + * iavf_is_reset_in_progress - Check if a reset is in progress
> + * @adapter: board private structure
> + */
> +static bool iavf_is_reset_in_progress(struct iavf_adapter *adapter) {
> +	if (adapter->state =3D=3D __IAVF_RESETTING ||
> +	    adapter->flags & (IAVF_FLAG_RESET_PENDING |
> +			      IAVF_FLAG_RESET_NEEDED))
> +		return true;
> +
> +	return false;
> +}
> +
> +/**
> + * iavf_wait_for_reset - Wait for reset to finish.
> + * @adapter: board private structure
> + *
> + * Returns 0 if reset finished successfully, negative on timeout or inte=
rrupt.
> + */
> +int iavf_wait_for_reset(struct iavf_adapter *adapter) {
> +	int ret =3D wait_event_interruptible_timeout(adapter-
> >reset_waitqueue,
> +					!iavf_is_reset_in_progress(adapter),
> +					msecs_to_jiffies(5000));
> +
> +	/* If ret < 0 then it means wait was interrupted.
> +	 * If ret =3D=3D 0 then it means we got a timeout while waiting
> +	 * for reset to finish.
> +	 * If ret > 0 it means reset has finished.
> +	 */
> +	if (ret > 0)
> +		return 0;
> +	else if (ret < 0)
> +		return -EINTR;
> +	else
> +		return -EBUSY;
> +}
> +
>  /**
>   * iavf_allocate_dma_mem_d - OS specific memory alloc for shared code
>   * @hw:   pointer to the HW structure
> @@ -3163,6 +3202,7 @@ static void iavf_reset_task(struct work_struct
> *work)
> =

>  	adapter->flags &=3D ~IAVF_FLAG_REINIT_ITR_NEEDED;
> =

> +	wake_up(&adapter->reset_waitqueue);
>  	mutex_unlock(&adapter->client_lock);
>  	mutex_unlock(&adapter->crit_lock);
> =

> @@ -4327,6 +4367,7 @@ static int iavf_close(struct net_device *netdev)
> static int iavf_change_mtu(struct net_device *netdev, int new_mtu)  {
>  	struct iavf_adapter *adapter =3D netdev_priv(netdev);
> +	int ret =3D 0;
> =

>  	netdev_dbg(netdev, "changing MTU from %d to %d\n",
>  		   netdev->mtu, new_mtu);
> @@ -4339,9 +4380,14 @@ static int iavf_change_mtu(struct net_device
> *netdev, int new_mtu)
>  	if (netif_running(netdev)) {
>  		adapter->flags |=3D IAVF_FLAG_RESET_NEEDED;
>  		queue_work(adapter->wq, &adapter->reset_task);
> +		ret =3D iavf_wait_for_reset(adapter);
> +		if (ret < 0)
> +			netdev_warn(netdev, "MTU change interrupted
> waiting for reset");
> +		else if (ret)
> +			netdev_warn(netdev, "MTU change timed out
> waiting for reset");
>  	}
> =

> -	return 0;
> +	return ret;
>  }
> =

>  #define NETIF_VLAN_OFFLOAD_FEATURES
> 	(NETIF_F_HW_VLAN_CTAG_RX | \
> @@ -4942,6 +4988,9 @@ static int iavf_probe(struct pci_dev *pdev, const
> struct pci_device_id *ent)
>  	/* Setup the wait queue for indicating transition to down status */
>  	init_waitqueue_head(&adapter->down_waitqueue);
> =

> +	/* Setup the wait queue for indicating transition to running state */
> +	init_waitqueue_head(&adapter->reset_waitqueue);
> +
>  	/* Setup the wait queue for indicating virtchannel events */
>  	init_waitqueue_head(&adapter->vc_waitqueue);
> =

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> index 7c0578b5457b..1bab896aaf40 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> @@ -2285,6 +2285,7 @@ void iavf_virtchnl_completion(struct iavf_adapter
> *adapter,
>  	case VIRTCHNL_OP_ENABLE_QUEUES:
>  		/* enable transmits */
>  		iavf_irq_enable(adapter, true);
> +		wake_up(&adapter->reset_waitqueue);
>  		adapter->flags &=3D ~IAVF_FLAG_QUEUES_DISABLED;
>  		break;
>  	case VIRTCHNL_OP_DISABLE_QUEUES:
> --
> 2.31.1
> =

> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
