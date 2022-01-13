Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A9548DD1E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jan 2022 18:48:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BF89B40A65;
	Thu, 13 Jan 2022 17:48:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3nqu1SL8QscF; Thu, 13 Jan 2022 17:48:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6A3BA40105;
	Thu, 13 Jan 2022 17:48:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DB0611BF4DA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jan 2022 17:48:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C543541581
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jan 2022 17:48:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7p8tQYruiCzu for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jan 2022 17:48:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C2AAA41552
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jan 2022 17:48:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642096128; x=1673632128;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rY91N/jWyNo3MtGfQVmaiOq92DblL4yAi3WZEM9CePM=;
 b=GbEEro2CrzKzPL1l8fXhVmEGhJbRvlIBjjzYnMplIsreAQEpFfMt7oMt
 Yjp64GznTMikr1xgffU7829YOONqkNwrMKPSXwWxitm9zqD/JhXTo37VL
 7FM8fWakxEkAPuGDR3mILyD1V3rtRUpeH2tpq+qYkEy8b40DzymOTl+QG
 y45p6qh6ahy75YiuOR8nXi+5oSR2NVRVpayRkdyJlWU7KjOP8Pt3KVhdv
 q3n8NSJ82BxP1HpZXcAelT15VCKY7iVSIj3km1Z1lVyTWkRTOlzuogOSk
 d1+ad0oCmLWRBhg15c+E9qb+FHAOylT56LHAheTFGaN3gd1I2d2UeCO/c w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="244277636"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="244277636"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 09:48:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="614037910"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 13 Jan 2022 09:48:47 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 13 Jan 2022 09:48:47 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 13 Jan 2022 09:48:46 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 13 Jan 2022 09:48:46 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 13 Jan 2022 09:48:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j6d2BA0OYlbvcc9fVOIaak5nS3epmudQFjEQoxjeGPUgpM5RJE2RnnpfLTZR5fzXzbb78Mdkuo0D63CGWrVhbXd6J/UBqxrcDOIPm185G7Gwg2l/jLH21ZoPRubOu1IxcpLz5JWTHN8thHSmVCTvpIjwTb0JcBLxHznD/qESs96IhhNmBMw/wnU04QLI4PjCL0Aap8lMiTu0R7DVDB4l5xZp35qLkQedUIJTzttNNbupX8MUs80AgxP24YQNgIxEcZUPmxw1527axBfBEjrbM9FrGjI1iKmuItB2i8xbAvy4QlA0DFjokN65u8TWeh4RViulq8LQQuShnvLS2RTywg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GsAOByB26t3Ugwf6EpOYhCKa0sJa46j6ZN0TqIzHVhM=;
 b=RNG+4Oq9oq8/j6OcZzMw3MYNYzqo/9cwdPq5atlLeip4C20DE9mW2U99xHnxeze3XMg0Ap6XMUV+3kwL9HnFHUw4GWXBRwp0SyJzTpn2Rok8mfxdxvyf4EdYizTR+wkBR4dawUkzfe7PSnDS7r8slUSE5yM+d3KFmTqxzUZGyvIPcO7N70LLvQWgmZ2Xp3yzcO6GiFSbCix5H3vovdVQqe2fTZCo/NA3vSNCjS0B0z5vLj/rMUZQ/8lX2iopJhT+dKDlMAtqRyOO9okUqmDfhqWoK5aiVbiM03ogFsALplMZoSV0VzlpHA2yelQuvWSpchixwXAKlF0iuMDxqAuziQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SJ0PR11MB5088.namprd11.prod.outlook.com (2603:10b6:a03:2df::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4888.10; Thu, 13 Jan
 2022 17:48:45 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::3162:31b:8e9c:173b]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::3162:31b:8e9c:173b%4]) with mapi id 15.20.4888.011; Thu, 13 Jan 2022
 17:48:45 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, "Jakub
 Kicinski" <kuba@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH] ixgbevf: Remove useless DMA-32
 fallback configuration
Thread-Index: AQHYBX2Li9fMEhM+uUaPxCmLdS5NEaxhQEhQ
Date: Thu, 13 Jan 2022 17:48:45 +0000
Message-ID: <BYAPR11MB33672B966278721139293D47FC539@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <e9f8c8b59fe4a3b4dd34d37ccfaf9862b7ee14ba.1641748940.git.christophe.jaillet@wanadoo.fr>
In-Reply-To: <e9f8c8b59fe4a3b4dd34d37ccfaf9862b7ee14ba.1641748940.git.christophe.jaillet@wanadoo.fr>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f01821a6-7437-48b8-c6c0-08d9d6bcf219
x-ms-traffictypediagnostic: SJ0PR11MB5088:EE_
x-microsoft-antispam-prvs: <SJ0PR11MB5088BB58628A1D3D3D83D896FC539@SJ0PR11MB5088.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7GB60s4Xr/hay2B4ZRu7h9IIX+L2UJKjf6De9aSCdPd6H1EWu1oszhYGOZbHicPH6DxIgH0pzqlbXs2QFcnHGnOWA+CzBzwRfekjt7aKTh0oPJ3NTfr2HUZhBxpXkENkWgu26vWUAvWZqgbenOvp/g/PYmBQyJASdCmNYgiOqugoSDQcic2lnioFg+Iw+8iEEK7X5PLiqN6bMZwVVL7Lz9zIuRM1RoCd64pA9NtbpyEAXMa9fsauGlgNgfQ2x5GZy+rkcIwwtTvDUnXNSBe44zI4132reJljhG/IJui/dAoi2Yv7+gvd2akMwOfDUmW0pSLhGqV6r3Z9IZqQdNwlNypih08dI9UzHbgPAnJycqWnaBNQEv+TQlG5Lj9Oqj83w5ZtTaXiDCBOj2UtlUnuWsy6SPmpnSd0pPfaYbwc5M3PxfGS5BnfxrrasGbyZEqljBwcRQsiGWwORn1hbgllSv5f30+j1oy1jVHn6l2ZGIsZrJXdnWmeqoGUC47qYOhFdchAXk0kDC7LWY3XmWml3LNdArx5Rt+10moAT9NkwZQf/z/K+Vf2F/BeksaNfUbTke5aEYBLkWPSTiOpwcLgSKgeT0PwtBVsjNGdSxs2blzTrOZIAWNq08Y750wbWUYPwHwcUxvghotec/zLYHhq9Hb/H4gZi+ZmkoqPrrBzBwRw6ss2AYIYdZpnItumB7xEf6LeKgLeTjtcnvMqXKR4QJ2h7M/qvEZ+URbpw/J/2YuBnQVpml7H5NewskZcC6xABHLtK8DYy+1nSdG2NlgSIvHMQD7A5dYOHZ5vJ71tacg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(316002)(55016003)(8676002)(7696005)(33656002)(86362001)(54906003)(110136005)(83380400001)(71200400001)(38100700002)(2906002)(186003)(508600001)(26005)(38070700005)(966005)(82960400001)(8936002)(66446008)(64756008)(5660300002)(122000001)(9686003)(66556008)(76116006)(6506007)(53546011)(4326008)(66946007)(66476007)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?y4PmOmTltnvHnuQEnpOWKEeTYTYFhF8QMeIYSUemIYAAf8IJWJOlcnt8myVO?=
 =?us-ascii?Q?GdZ/nvBPpUp0u00qM+8iOHurhA2uCYgAv4GjjTKa6VZdFktT4qzFu60gHn0h?=
 =?us-ascii?Q?oEAnRYLVQki1LByCTBMPpaXCKvh7GpHmJJXN56CXq3D92S6/7qYmkZ1O2F5g?=
 =?us-ascii?Q?ktdbk16++rLaHYxGAJrSGueDaVwawV7Wa8R4yaVn/BcKvpyaWh+ahxi8SaQ7?=
 =?us-ascii?Q?bQRnMAxoyCcdigbBIGVQmYwProQR7Vq0uKO45xEfY6BL3dD7R561UrncIdZB?=
 =?us-ascii?Q?DXJYF6w8x9i6pGNwbFo0u0RkYNoXAP4cR/T1UGRlPwE4s33LY06E4WOBBKdb?=
 =?us-ascii?Q?bDijoSMfKEs5eGIMwPYJzDbjY9ZIWne2sEHOhwJw/aW/p+0qOW/tPF/4RlVj?=
 =?us-ascii?Q?xUxghWv0qUl6lLfPwLphSDzdnXSh7Aqfnm+XlfS7lBMZivB5lk92a/ieiUwP?=
 =?us-ascii?Q?qEmcX539UopfAc9SI9W9mc0VlEj/Z5LIgYyg6N5uWjFhuMpdqlaD5amWvPfd?=
 =?us-ascii?Q?PBZK//1mzLfs004X72NrCnpHI1vDLbv6VELaKvoM+15Ud5rHlXAufyr3LCF3?=
 =?us-ascii?Q?RmqMvAZT9qRBKAR3my26/0wt/gOH8KO1IxbSOrIE6N51+kN7M6F5cYDsI3HS?=
 =?us-ascii?Q?PZefMTf+bG/jjh2LlIDIyUHx+PeulIitv39pLLVNn3Mf48NRIxL2LKSNlB4Y?=
 =?us-ascii?Q?RfXQ8y6pAmc7Rv6SgtE+V4nj8F6RVSINK05DJiponPomEkd49e50EtVbJCtS?=
 =?us-ascii?Q?CnrYpPGong7TUnVFGRnS+oZqxCfuyz5fx8UDk7STHc5Cqky80ogmCVTajDG5?=
 =?us-ascii?Q?OLxU5QQi2qDjBqSpkYOPWh2HByeZUeRo0FZ7Z1ZG5vrG6GfdC+JsMVjQgSsf?=
 =?us-ascii?Q?dhWBhqMS1N+9B6H2BYQGYKVqvH97cL03lMzjaEt/Py1ut3eWq8ned8pcYi6l?=
 =?us-ascii?Q?52BcvOzWgV1ux+koZP+fF6lmy2mzW2WxWM/uRE0S3zwFKI5ESso0fCzUiojU?=
 =?us-ascii?Q?JVl34houPlVL88Knf4xyW82A1Gj7nKfpdunB8XjVT5DkrFqbIwPbvT6+9Oo0?=
 =?us-ascii?Q?ngg8QCAnjuCqTXi94N352XXy353MIjZUkn5b9gdxZbJ740KT7eZiwxmoUWhs?=
 =?us-ascii?Q?9aC2QHFdzjf19lR1zlK73lR2nMB32cadaB27MFbUIs80KHSjUHa9jL8qEY35?=
 =?us-ascii?Q?Iy5aCXq5YQRdEyNlf87IsUfGrSdTSWkn3RCkBOb++EvbnfwFmZvoT3/D9Dpr?=
 =?us-ascii?Q?nr2J/Cl7YgSuCOO0Jt6X5diquykXKAD1OFYs9GRVIHaCc2LbRqx4BnUYXgzq?=
 =?us-ascii?Q?j9sJBSVyCUUNeKwgt+s+IY+xD0dFiZGXF/mavol68vmhgiA6E86iT0jAp/s0?=
 =?us-ascii?Q?d6IaVCjsESyzXVsA4k2lej8+gIjELW0oc1X45DpH5YcWZFn2Hh8CahH0pajm?=
 =?us-ascii?Q?VcGP34RaE6L//nzy5vav5XrjF6TCEvcwjgT125EJDbSbfpQ/kJ5N6pIJf4zk?=
 =?us-ascii?Q?PwC5Y2MXOhft6A2NQTWM00yPshnXoVvi6YIzntFcRpc1F0aQ/Qpt2I1OAr+U?=
 =?us-ascii?Q?3eWfndmCBWChOIWrvpp1Vsf5vDnaP1xtqUPsyEHi0w1GWYs1WqXPSaDR302G?=
 =?us-ascii?Q?+Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f01821a6-7437-48b8-c6c0-08d9d6bcf219
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2022 17:48:45.2825 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O3ru/CX/BOm80Ecx7MlKz5SFee5ZaiLJO5z8PmuRMrhNtAIPlFkWDtnLyNGYgqZhzTqmhmmtil+SJSGrvOQ0+w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5088
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] ixgbevf: Remove useless DMA-32
 fallback configuration
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Christophe JAILLET
> Sent: Sunday, January 9, 2022 10:52 PM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; David S. Miller <davem@davemloft.net>;
> Jakub Kicinski <kuba@kernel.org>
> Cc: netdev@vger.kernel.org; kernel-janitors@vger.kernel.org; linux-
> kernel@vger.kernel.org; Christophe JAILLET
> <christophe.jaillet@wanadoo.fr>; intel-wired-lan@lists.osuosl.org; Christoph
> Hellwig <hch@lst.de>
> Subject: [Intel-wired-lan] [PATCH] ixgbevf: Remove useless DMA-32 fallback
> configuration
> 
> As stated in [1], dma_set_mask() with a 64-bit mask never fails if
> dev->dma_mask is non-NULL.
> So, if it fails, the 32 bits case will also fail for the same reason.
> 
> So, if dma_set_mask_and_coherent() succeeds, 'pci_using_dac' is known to
> be 1.
> 
> Simplify code and remove some dead code accordingly.
> 
> [1]: https://lkml.org/lkml/2021/6/7/398
> 
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> Reviewed-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Alexander Lobakin <alexandr.lobakin@intel.com>
> ---
>  .../net/ethernet/intel/ixgbevf/ixgbevf_main.c | 20 ++++++-------------
>  1 file changed, 6 insertions(+), 14 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
