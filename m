Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E60483F2E
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jan 2022 10:30:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 770E740910;
	Tue,  4 Jan 2022 09:30:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4qpq3Lre7MaG; Tue,  4 Jan 2022 09:30:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6D84D408FD;
	Tue,  4 Jan 2022 09:30:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F20681BF31D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jan 2022 09:30:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DB4EE60B71
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jan 2022 09:30:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vYr8iCgJ8iN9 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jan 2022 09:30:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2A59E605A4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jan 2022 09:30:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641288630; x=1672824630;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=A6rcVieTK6YOdHTE2+B/Ify1YECRVY6DxIpg+kKIhJ0=;
 b=fI85Rz8G/ci1Uj4J9pwC7hfcX/LWoX2c9fePNywbZaNCTRceyGk1bk7l
 ZqKgsypob7e729GkckBcLejjqqb3zVCJqfmSuQ0sFEzYT/RjKzg6mgByn
 l37ueroF/baXbc+xmuluzKMmSeYlI48GR81L9+9u/DD4AZbqwIkxgiUTr
 gh4AfgHLUdcY8Fk23P1m3nBCZqu7YTnyTt1pB6gOK5xir5xD12BQaVY4P
 BB+dmCfUO5mB0VE4OKifjeA+tcY4nxhQUHQt/afDq12ykdmWcLW8QbDOM
 OlNLbOTLb6KnuGlOGulb6wyUEoSwM4TZVFz/+60d094EwDBB3r9P2TwlZ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10216"; a="305543737"
X-IronPort-AV: E=Sophos;i="5.88,260,1635231600"; d="scan'208";a="305543737"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2022 01:30:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,260,1635231600"; d="scan'208";a="688508721"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 04 Jan 2022 01:30:28 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 4 Jan 2022 01:30:28 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 4 Jan 2022 01:30:27 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 4 Jan 2022 01:30:27 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 4 Jan 2022 01:30:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UkNXEOqAsnxpz8gO4yYDSRi6kKdxFDpW3PdJM4H2HdeXUgU8z93Y63hvGiZdwdpkT7NtXwKCcVlbnJA2TbAOVV6tQisGxdKb9u7WgMmiKGjz2JhgWbSte13Z20zx9zEsyq2TFvhZ1w68/zBDCoOovDIq3Q3hCOxzjx2FI7xsvwGMQrKw4kVTtI+OlVnWsuIhPjPy74E6va2dKT74xtHvsqouF7+9C0TljcZ+pQ+QHOU4Iu1SF6OAMONyabYZkJXgdO4Dzrax9AUn2kNSxshaxUqIqj/pdHROM1klpw4DgjRciUwl+iuiGzHX27Q8QENkVgfWrn/Ehc6aLXS3OVFQMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WPx7QEzqmsUmb2pde13u41K0Mlgph/QLlOdvrUPVtCE=;
 b=D6SgEy7JYGMJPOUaaPivkyituZjNvINJ0c2Dqf+lCivzhwiob+oTrxkPObRYJrn8zou+8wnKib6RZNrQ6eaRQggHpgr2H1lvwWIl39JGhacOFDrAb+zv2y29K761dhVVuajQB2sE+opLWN/gJNvhUYT7cYT+a4JXh1jJjFJ7Ck44544QIARujiu0Sq/H3HYo4lVCxuQfY2Wcj3TYiWrNHo40XtdJ3B2gXLFLnBewEPMSzzS+jd8q0Upas1maJphDI2lD7KV3ohIOjfkJhYfXwRBB+5/kI7h56XLiY7Kp4SoUUdRpbJ9QVlVYH7eJbwVs2ArrRFMTNfavHTEdYHqBWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by CO1PR11MB4995.namprd11.prod.outlook.com (2603:10b6:303:9f::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4844.14; Tue, 4 Jan
 2022 09:30:25 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::42f:73e3:ecb1:3b75]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::42f:73e3:ecb1:3b75%8]) with mapi id 15.20.4844.016; Tue, 4 Jan 2022
 09:30:25 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 2/2] ice: improve switchdev's
 slow-path
Thread-Index: AQHXylXi38mZhRrsoEKZkcgMFqHOTKxTBlyg
Date: Tue, 4 Jan 2022 09:30:25 +0000
Message-ID: <MW3PR11MB45540805065D347E09E38E709C4A9@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20211026103840.11455-1-wojciech.drewek@intel.com>
 <20211026103840.11455-3-wojciech.drewek@intel.com>
In-Reply-To: <20211026103840.11455-3-wojciech.drewek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9e93c4b0-32ee-49c3-b133-08d9cf64d69b
x-ms-traffictypediagnostic: CO1PR11MB4995:EE_
x-microsoft-antispam-prvs: <CO1PR11MB49959AD28AE7875B9CE29B049C4A9@CO1PR11MB4995.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Sm/3zvFfib2SsK8WLfUvXjSRbNfm9/lou1e9sexjK5CnqQCj9uKL3KC2dyYfWGtq4w2p9Dzhl9w3m/LaUGJF1ARlJ91fEO/F2SCXXrAvYEbW6bVbR+9oKGkUJijYFZy3qESU786YOhsTboNPYuHDvNAaDW5I+YNkINPeK0kUXkv9X3vLbLEKVU3YMrOZL4HcdmY6ZlMPR8WcBq4eaOH+Yts9UqIBxtPoRSDhWLllAcs8ZNsI6zF7wHs6BbKUvmtEZMn/HNfgMtXGrHJzeoT++/glpLUvXf0tvBrewyogBtdtdYd4oAOK6RuY5vZPAHdxF3KTV0Tol66hRTDQG7zuKerpiODp8Y8cWSOQMNQAm2v8nJpQQS0zraOc8cIAVSuUywmCBZSolfuKdhbnJcZoh26jrKc0HXi95Pfwa3addprqlIp+7FE9w38dguwG+KgkKT0+hCwgVmYLf3LFmtpCDQQCE5GQSwIxSjWvQSmNbtMxOBCBkNtlxmiEkcIPAOSvm8snxij99Dutb11q06K2aYAlYjjPn01jcLsBejYnD6z04TjM+la7XJC+We/wRUr54Mmse0WePEJsEooc6Qr+qA9YFoNaYCpj/Vn0loTphbZ6dBc6NrSC5vWLMaopMNy4tA1WZz3e1ywVkMNQzAThx0r+/a1EaWTcRbfQULDe9CinPw6dG30nlbXHwMvjT6kPTgbuEQshfMYhf12Ld4BdFg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(316002)(8676002)(8936002)(9686003)(66446008)(2906002)(71200400001)(64756008)(82960400001)(66946007)(122000001)(66556008)(26005)(33656002)(66476007)(86362001)(76116006)(55016003)(38070700005)(508600001)(110136005)(83380400001)(5660300002)(52536014)(186003)(7696005)(6506007)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?uCkAgnlZixjKGY0Wffew8vZryy8BoISUgUd9TtvNpUHync87whHkxfiZPdf1?=
 =?us-ascii?Q?Xhz1vXNQUIH+hNnToQW8dvmoFV0PvAHYaRsNmkZhr5xb/GfLg13p6fCsWTmT?=
 =?us-ascii?Q?OACm75Ma88PEGtM4fWWd1KYJfMy70mGGIfyNsZSQOmbsHsArBmap+IKDvJw+?=
 =?us-ascii?Q?mpbkFGvDaMos6bPtzZRuIW8QFIBDkIgmkY+8pHmNvXYzQflAQNuz7S1SSXQP?=
 =?us-ascii?Q?Rsc+U0ut+QggLAdnkYLHBlMLPsCVJBMAq77pISkbYkY9cs582jDPqDD3j0t0?=
 =?us-ascii?Q?Wk8OxECftV/v2Vj1uexPBa7C9fq3Cay7nX/Q/UJOZliONT7otnHjQoruJmiS?=
 =?us-ascii?Q?UgDux/yNe4t45TSDUjKHpcol0lppI/58jR4+tz2ZNYJzgkbp9XQPbCMJsAHm?=
 =?us-ascii?Q?Sw70HTDrEGIgD9itoz5lMX71Wyb1Q9GufbPhugJ/gelROHVV/X6wbp07ISKu?=
 =?us-ascii?Q?Pm7b6tGCCgLj7tavIlgTzA4/prNmbYz7Xa7+5uzpxk6lEUkMlUQbz8jjQRDm?=
 =?us-ascii?Q?+2bNOa3NhY6gWSTU3voZCEQKu4Y5qBRnTBLy5dxogWpj/+eIiwBwSDZ1O+cF?=
 =?us-ascii?Q?dd4ZRcYE3WtbBgLqPkDW46Lk/WsfKq9+81uRpkfcYfqqFBFvgAeLBh+45Tcm?=
 =?us-ascii?Q?uNXb3HGrkgsKTAKg6nnRUIQot79EMLLUtGWffxWa5T4IA7d1c3MCX2cHWEQ7?=
 =?us-ascii?Q?py0MmT2m6UAJp9YukO061hs2NorNp0R0JrucHROEZnCORABr6pQ3Ad1i/Alc?=
 =?us-ascii?Q?610ygZo8qI/WHpm+Jzlky79ZMkmyimlha0AOdXIi9JtIKdp6dhV01MYliURM?=
 =?us-ascii?Q?dWcx9x9Jrj6fjOIjJTiCGPckjDz3AO7aPuwZH8Lwk7Xp6h3kQgiDHWxrNK6H?=
 =?us-ascii?Q?5e/V0+ncE6tw+C5X1KS7wg+c3dNRiF0BI7hxd/w12rzQpvu45Us0Up2J825X?=
 =?us-ascii?Q?OPau9zxUmCIu5A2c+uS1k42SNkQ10ecQEU7Ja/JUc0mLKNwD7Cvg2CYLMN6o?=
 =?us-ascii?Q?bMkVZWuaz5arwJIfhaldFWQDNLIJYu6NwCv02PS6TRsN6uwhSBIo6X0ykPNo?=
 =?us-ascii?Q?C5DOupMi/3siuddJ5hiHPzvXB8WWsetgwNCUWbZmY14neVBqyRf9yAmdFaGY?=
 =?us-ascii?Q?PjpCP+qO9nf+oinTBeMbcxLyPPv6DJvZOwQN/hEhz5hCNvrdnbZkb5nGsDZq?=
 =?us-ascii?Q?STkK+LqnSxgzk4/+/vTLRVOdMCZlTlOjvWnyJ1+nxz6P5SZ+2zcILf/1l63S?=
 =?us-ascii?Q?Clg1yvyKN1bkYbLqK/UoS8DGnl12jGyh/VUoDXIkO/8DYqcu9EqW4FckDi21?=
 =?us-ascii?Q?NiWhd3oRz0HT43HcPVgxWTGUcN6WFiJEZ/mvSmvf49eAG/1Ryuh+VqTgphXz?=
 =?us-ascii?Q?bZEdams369yYd6OR/PKWyqJwXOr8eoIklXqDQJ2WmF0+wl8r2wviyLfZyEKM?=
 =?us-ascii?Q?Nxn0QY6emRSgoJdUExYyGJtaGcdHLSDBAetNQPcYc5aPhM1E4yfcYXx/FFYT?=
 =?us-ascii?Q?8nrfeOPUNkjwGTjPS9Wrk3UkoyJZ//pVoAdF5qGLEQrSXOBUZSFeSzRGFWJb?=
 =?us-ascii?Q?BhKH17y0/1eYVss3QBhN5wATFITeFgOJ4wzYzhZ1d/fTP5oRtSVUKM1lL+ZV?=
 =?us-ascii?Q?He/JHgqBlr7wU+jYNZxEBW7oNUcydh/B180/40LCTDd8vZbdM+xwJ8sT5evl?=
 =?us-ascii?Q?3XvvJg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e93c4b0-32ee-49c3-b133-08d9cf64d69b
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jan 2022 09:30:25.3217 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xLYP/QZFpRwvXz3dclGf55ne8HGDufBRd2z+igk09vJGoQuARIbfsgOtuQvoFcesmFa8hV7TSq3X32ac+MSd0C2pe/hI5Urjbemy72UcjNM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4995
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/2] ice: improve switchdev's
 slow-path
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

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Wojciech Drewek
>Sent: Tuesday, October 26, 2021 4:09 PM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net-next 2/2] ice: improve switchdev's slow-
>path
>
>In current switchdev implementation, every VF PR is assigned to individual ring
>on switchdev ctrl VSI. For slow-path traffic, there is a mapping VF->ring done
>in software based on src_vsi value (by calling ice_eswitch_get_target_netdev
>function).
>
>With this change, HW solution is introduced which is more efficient. For each
>VF, src MAC (VF's MAC) filter will be created, which forwards packets to the
>coresponding switchdev ctrl VSI queue based on src MAC address.
>
>This filter has to be removed and then replayed in case of resetting one VF.
>Keep information about this rule in repr->mac_rule, thanks to that we know
>which rule has to be removed and replayed for a given VF.
>
>In case of CORE/GLOBAL all rules are removed automatically. We have to take
>care of readding them. This is done by ice_replay_vsi_adv_rule.
>
>When driver leaves switchdev mode, remove all advanced rules from
>switchdev ctrl VSI. This is done by ice_rem_adv_rule_for_vsi.
>
>Flag repr->rule_added is needed because in some cases reset might be
>triggered before VF sends request to add MAC.
>
>Co-developed-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
>Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
>Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_eswitch.c  | 170 ++++++++++--------
>drivers/net/ethernet/intel/ice/ice_eswitch.h  |  24 +--
> drivers/net/ethernet/intel/ice/ice_fltr.c     |  80 ---------
> drivers/net/ethernet/intel/ice/ice_fltr.h     |   3 -
> drivers/net/ethernet/intel/ice/ice_main.c     |  24 +++
> drivers/net/ethernet/intel/ice/ice_repr.c     |  17 ++
> drivers/net/ethernet/intel/ice/ice_repr.h     |   5 +
> drivers/net/ethernet/intel/ice/ice_switch.c   |  54 ++++++
> drivers/net/ethernet/intel/ice/ice_txrx_lib.c |   3 +-
> .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |  11 ++
> 10 files changed, 221 insertions(+), 170 deletions(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
