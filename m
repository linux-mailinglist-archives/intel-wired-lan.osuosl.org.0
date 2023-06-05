Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 58575722DD3
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 19:45:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E23A961164;
	Mon,  5 Jun 2023 17:45:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E23A961164
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685987131;
	bh=HNO2iMcOEJgFAIRiA1TPNDjws0q2zy29pF/E5hbeIio=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PrH5XwB2yWs5TQXISKIDwA4Ca1vUwuXHBuQo+/bgcUC3RX/g2206urfwTkDIrLmGb
	 xJIa9GccaEMsdi8qERQpsJWMa575yZyY7gWlHVe843Jce2BfVgxpVchG0M3rqvIzj9
	 uCOgTFUht/HJodAg2wO4XS3EHKsBpAqxG7xZjmeL3p/wkj0Hh7dF62c4WJmPRsKAgb
	 zP7jdEMBREEmn7/F/lypbQDHLg7N173QhjdaInqpZTPxTyHzU09VTzmN6cEVzWI4HZ
	 22x/8SAIi92Sm7Dj+GVYEAok+dZMALITV6xjHssdIITDbbNz/efD5jXrnkrxuUoY0v
	 sasI+VH7L9dww==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ja_2USVA8rJF; Mon,  5 Jun 2023 17:45:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9E70160B00;
	Mon,  5 Jun 2023 17:45:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9E70160B00
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9D0111BF40B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 17:45:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 73BB4820C1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 17:45:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 73BB4820C1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SfeO6mb9bMSU for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 17:45:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6B313820A2
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6B313820A2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 17:45:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="359745799"
X-IronPort-AV: E=Sophos;i="6.00,218,1681196400"; d="scan'208";a="359745799"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 10:45:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="659169207"
X-IronPort-AV: E=Sophos;i="6.00,218,1681196400"; d="scan'208";a="659169207"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 05 Jun 2023 10:45:23 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 5 Jun 2023 10:45:22 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 5 Jun 2023 10:45:22 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 5 Jun 2023 10:45:22 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 5 Jun 2023 10:45:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bIB10/T3v7nj0ciCovaORJwc/hYBVb/DPOHejahsq+HcKpcsJSC0nzQW1qBKGHsJg3xkrAv06xG+ZaI1y2e084eTErY+iHXFTFXQV8PCpKSlEwmuHY4Epmt/E+SWlOwQTwoN5SYtmGw9ydezEfJZvXBxfvW6vcqs3YVrvjc08fsKkxOkQTDbzk9qnhnmMpclOxK7WY+7f+E6m+K6XKg1ftXRdLJtkDEgaQWzC6xUSGu6rMzobXCo1ttlyQOMbRVYNwjW6lv3lCkRohuzSxsrFAn/U+usWKMlOzc6fCBBQYlKlUk/tGgDNk00DaWP4tP7pNK1hcbX+9la0vG+V55odw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LwTlSTNgeBsiclZsT0h6m5pXKwPaq3zR4f86qXrbjP0=;
 b=NNzbsfGQZ1VAXr4UlwK00yCoyM3IZjICCwnHL0F4+asuGGqb9o+h8D8X0Afs0aC+MyzNWb2Ueblcf+DKNpeNCYgMxLOarUx+5ScJhvIGK1IfMJE39aC3PvOd4g2Z45GqtUHHZgXzudP4q2dVjX1zAoFFdwV8u6y4mI7CjTVxOxLiaGGUzFc445QuxzDsD/BoGudHpg7uEp1ZE5BdPVGCCVPNouc5yaD7USBPTcgOjLWKyKWLJU8WcvhmZCQKOmbfPmWdMH2r0DQ9XmYvr278SvAbI9RgkwuqJH8nsxaMqbALBjI7iCmKuvP7Dt/KiePnJZ7jqrnZ7dPUBZsgQ8cRCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by SJ0PR11MB8295.namprd11.prod.outlook.com (2603:10b6:a03:479::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32; Mon, 5 Jun
 2023 17:45:20 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::7b23:e512:60c9:ce08]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::7b23:e512:60c9:ce08%6]) with mapi id 15.20.6455.030; Mon, 5 Jun 2023
 17:45:20 +0000
From: "Drewek, Wojciech" <wojciech.drewek@intel.com>
To: Simon Horman <simon.horman@corigine.com>
Thread-Topic: [PATCH iwl-next v4 10/13] ice: Add VLAN FDB support in switchdev
 mode
Thread-Index: AQHZlwLj9rbjIO8bpUqYShdQjdwfXq98dC0A
Date: Mon, 5 Jun 2023 17:45:20 +0000
Message-ID: <MW4PR11MB57767FE6FE30932889478763FD4DA@MW4PR11MB5776.namprd11.prod.outlook.com>
References: <20230524122121.15012-1-wojciech.drewek@intel.com>
 <20230524122121.15012-11-wojciech.drewek@intel.com>
 <ZHy9yNtc5GMr6UbR@corigine.com>
In-Reply-To: <ZHy9yNtc5GMr6UbR@corigine.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5776:EE_|SJ0PR11MB8295:EE_
x-ms-office365-filtering-correlation-id: 3fd9db6d-9d44-42dd-9757-08db65eca1e0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oZZCHGM4Lp3PQTW820BzvU4LizEiqorQskigKpZIc2Wml2rIncJjjB6s3DgR4ah9ExGQK6xE4izPy07JjMGQym2stuW2u26CL/QmeFkaBBTtE1211qmjphbyiCM9eOhUP/iF/yUYYX6/eLmrcgpNM06qCGBm3PCTXh/uWZY6XfZy+GK6wnL99TZKNue42KTIDsmyxHGAYJlBHrNKS+QsIE6k5bBjZnuXqIPHsxkGXDLpSIzBLHyjnJtErcyq5C54hqsePbGKQqOaAY2czFfrGSZ8fsBPm6JkJE8mZ6E1uLuNwDhvOlGzg4xaDK5ZwaGXLJ2HDiXi/twdDSelEu1+9vsnYTMKWfgvCrLUq3Lk8VgiVw0UjR6+zaRk3dVMivScH3yfqWvzqDD+BSDzE55fYHxlL4zzEX1JXDczr0Tb1638YD1tp/XS31lwWWlPn63aVZQrYYjF+3PXQcNgRO3GKNcniVc7KdnHbtcqpEeUXS9tGASbsp9m2Kd5hthUcfn6KWKozWp0l86DULZkDBzdZ1xZoddRusO9p8fG/+DHdgxIXMWePJn+AQOPlLhzslAC0C7gPuBVW3dYD1uTKhZfvRO8hoySK6GLGTyYU3QNAfnmQsHaosGotZiLuUresFXQ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(136003)(346002)(376002)(366004)(451199021)(7696005)(38070700005)(71200400001)(53546011)(9686003)(55016003)(26005)(6506007)(83380400001)(33656002)(186003)(86362001)(38100700002)(122000001)(82960400001)(54906003)(5660300002)(52536014)(316002)(41300700001)(8936002)(8676002)(6916009)(4326008)(64756008)(66446008)(66946007)(66556008)(66476007)(76116006)(478600001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OCuChGB0SXtKOfkZSpljmNnyrEDsRjHV0x6bmH3q06oW7lI/QQ+VUP/O1rMC?=
 =?us-ascii?Q?BoGRyFF2rzrhSniLjuVvPkbsu+THwmOUWntP/3vEzqoBSPv7GXaDUr5qN7xm?=
 =?us-ascii?Q?2TIPBHBBJPd54Np4rVq0OrZo8Gt/NVAq1AKW4/1RMBTYjy7UXSeQS3hfF0DJ?=
 =?us-ascii?Q?Wu/udNtpawSpJ5T8NxtaDKAvLBUkItNjEK8FDLwpARDR4eAHoET22+Wb9n+x?=
 =?us-ascii?Q?Tyxty7/J2w7m11qfNCz1leeSEtyZlUghvLIwMBWJyQUbqehugvbB4SIKT6n/?=
 =?us-ascii?Q?rt+8b6qewTVTf3Qr5hbUhVZUaT2HTK/DjSp6hw8jNicyt0T5877gmOOs1rJz?=
 =?us-ascii?Q?IsezwOrcdaQPR9JeOJF6HKnQEtA/ECl2sbAOs3G7UnCPs8EatjtwQYzf2dNo?=
 =?us-ascii?Q?p1Iyt/01KY8ZGozGbcAnt2K3fZCEsa/KOV4aJTRwmxTRWHl+Rzx0y4ZdZYmT?=
 =?us-ascii?Q?8jS5SjYqZ89n0eTPI14T94VgvqG6RGn9ogWmPbtu2iCwVaxu6Gbc/AquNf+L?=
 =?us-ascii?Q?o2OFQN+JvE8d319EFo3IZOqR3E3bB/aKSbTh79oN9MFEmXlcgm4l1YcqKalU?=
 =?us-ascii?Q?wHK/l7/EFK356InEMVjTuKYZlxEXm++C3JRHBJJk3ROaiK9ITcF6NjxPS4DS?=
 =?us-ascii?Q?UXAcENgiLRcZYHbXPRnUnmFZrrsDXJ/q5shgMisdLhAsGZ9s8Tbfb5xs16Kn?=
 =?us-ascii?Q?d9TiM1fSPf49qa7//DA1Y/MhnLR/gxJ5MhBxGH1avJC8YHLB3YlsPznhEmLy?=
 =?us-ascii?Q?j8ZBT6csgaugJYphaW1kKr/pdR+qdVXi+Quvmp69PYGb97ejy2g9y3/xq4ua?=
 =?us-ascii?Q?fpZIX8LOuElwReMmZARpiV5TzXLxHiIuAnCRvJnm/ZZZpAkFXpyZ+tRHE1eN?=
 =?us-ascii?Q?1L/naMmN2e4e8whVPV0Fg93ER2boWnU7v2rqhXZ06BlZ5rEjIfbWJEfQfcAU?=
 =?us-ascii?Q?TVVuIbKw6SWCdTBfhCRx1VrZGKCqFRmqwPAzXq5oes7y92y6D1PQxKHLmt5c?=
 =?us-ascii?Q?v7geiukvPu9/YuJ0WArL6ck4Do1Cg9TD29WUmi55gHpLzfuDlHM3CWO8FvZ4?=
 =?us-ascii?Q?fPaaSmQXGhh4YJ7OkZCNUOUtwZdtcMQYuI4QL+kkJBI2kNYo5XFyCaKVXH2J?=
 =?us-ascii?Q?zPHLH5IcGJeJ3Ts5+x81CzX4aRgmq0x5pHt93CyroFImNRBuOjU5gfLBd2wk?=
 =?us-ascii?Q?fy0lYqPx5H3j8KxR+UE3hhjDu95GfO2mc9/YTvjfvx21kHsRuMouK97ucn0K?=
 =?us-ascii?Q?TYYIK8J05T7xYZYreuh7hhMlkbv+ukPcBbaW6Kpom2tWbfSU+Ng9I2R20ebB?=
 =?us-ascii?Q?O7ZNTyQfcz4xl3vu/B9xrrm6SgBn3GPBmclaanUY5IfBOzHIWoqG8G8hCXZY?=
 =?us-ascii?Q?4/OTjsKgA8ixT87RVcA3/41okXxeYW8zqauu78QIZkdBiBagRnHFUIKwKMXR?=
 =?us-ascii?Q?S8QSSuLwGsHHvgU/SHlIYd+vQVycHOiXK2qbTZE/kH0PXWbHwyvYRHNN371a?=
 =?us-ascii?Q?5vVNwxm5ti/0FfLYiqnAsvdIT4IxDGzyUO+9F+WLUQw5Saq/zZ8HJ6O6k13n?=
 =?us-ascii?Q?ubNggKlk9xYRfgKfySSXOiIoNIKYFnT+8tJIfW+u?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3fd9db6d-9d44-42dd-9757-08db65eca1e0
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2023 17:45:20.4973 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ilj2H4RGck9YLkyp1FBUc+dqDDMTdLGc3FhaMWCgf6Ce8fMvKaLAARi7Iv6oFSCvGPG9zeLWpeZDI7PyNf+VlXTC4tcGOiY670gEpFnaRQg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB8295
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685987124; x=1717523124;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ODhyet2bYnLweECzsv3msF91TCzEsvpienRgP8nbI80=;
 b=VYG2MIdKVF3tDzSAhnio8L1NFgmL/rwT0+0RCean9zck9avfxwZcZOiT
 EEIqTNjP6NBb9KM/FhXE553mYGAE4GICpF5vFfVqN5WZRpRNWsRGeKIMV
 Jrc0Ps8AdC1HfAZUE6K7EJBeQ4Rzw+WM0FQPEY088y/wVp5UkfxRMMaQ8
 gE8nMOFu6/QXOzidlOb+np/s40FSbcSO5TPrw+3OFoRv2g5Za1GDU94Wm
 AlExISe+eV7h4v5/nyIPeFlNvDQjdSZ/pjEFB6Y5+k4buSh8zj13y61Mf
 LjUOLi3h6T7SqB9pQcPByWAvllFEk19T/6njYR6Pu15EtStXibrAuEqHx
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VYG2MIdK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 10/13] ice: Add VLAN FDB
 support in switchdev mode
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
Cc: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "dan.carpenter@linaro.org" <dan.carpenter@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Simon Horman <simon.horman@corigine.com>
> Sent: niedziela, 4 czerwca 2023 18:37
> To: Drewek, Wojciech <wojciech.drewek@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Lobakin, Aleksander <aleksander.lobakin@intel.com>; Ertman, David M
> <david.m.ertman@intel.com>; michal.swiatkowski@linux.intel.com; marcin.szycik@linux.intel.com; Chmielewski, Pawel
> <pawel.chmielewski@intel.com>; Samudrala, Sridhar <sridhar.samudrala@intel.com>; pmenzel@molgen.mpg.de;
> dan.carpenter@linaro.org
> Subject: Re: [PATCH iwl-next v4 10/13] ice: Add VLAN FDB support in switchdev mode
> 
> On Wed, May 24, 2023 at 02:21:18PM +0200, Wojciech Drewek wrote:
> > From: Marcin Szycik <marcin.szycik@intel.com>
> >
> > Add support for matching on VLAN tag in bridge offloads.
> > Currently only trunk mode is supported.
> >
> > To enable VLAN filtering (existing FDB entries will be deleted):
> > ip link set $BR type bridge vlan_filtering 1
> >
> > To add VLANs to bridge in trunk mode:
> > bridge vlan add dev $PF1 vid 110-111
> > bridge vlan add dev $VF1_PR vid 110-111
> >
> > Signed-off-by: Marcin Szycik <marcin.szycik@intel.com>
> > Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> 
> Hi Wojciech,
> 
> some minor feedback on this one from my side.

All the comments make sense to me, I'll include them in the 5th version.

> 
> ...
> 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
> > index 19481decffe4..820b3296da60 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
> > @@ -64,13 +64,19 @@ ice_eswitch_br_netdev_to_port(struct net_device *dev)
> >  static void
> >  ice_eswitch_br_ingress_rule_setup(struct ice_adv_lkup_elem *list,
> >  				  struct ice_adv_rule_info *rule_info,
> > -				  const unsigned char *mac,
> > +				  const unsigned char *mac, u16 vid,
> >  				  u8 pf_id, u16 vf_vsi_idx)
> >  {
> >  	list[0].type = ICE_MAC_OFOS;
> >  	ether_addr_copy(list[0].h_u.eth_hdr.dst_addr, mac);
> >  	eth_broadcast_addr(list[0].m_u.eth_hdr.dst_addr);
> >
> > +	if (ice_eswitch_is_vid_valid(vid)) {
> > +		list[1].type = ICE_VLAN_OFOS;
> > +		list[1].h_u.vlan_hdr.vlan = cpu_to_be16(vid & VLAN_VID_MASK);
> > +		list[1].m_u.vlan_hdr.vlan = cpu_to_be16(0xFFFF);
> > +	}
> 
> nit: the above code seems to be (largely) duplicated in (at least)
>      ice_eswitch_br_egress_rule_setup(). Perhaps a helper function
>      would be appropriate.

Hmmm, I think I'll just move above code to the ice_eswitch_br_fwd_rule_create.
Thank you, good finding.

> 
> > +
> >  	rule_info->sw_act.vsi_handle = vf_vsi_idx;
> >  	rule_info->sw_act.flag |= ICE_FLTR_RX;
> >  	rule_info->sw_act.src = pf_id;
> > @@ -80,13 +86,19 @@ ice_eswitch_br_ingress_rule_setup(struct ice_adv_lkup_elem *list,
> >  static void
> >  ice_eswitch_br_egress_rule_setup(struct ice_adv_lkup_elem *list,
> >  				 struct ice_adv_rule_info *rule_info,
> > -				 const unsigned char *mac,
> > +				 const unsigned char *mac, u16 vid,
> >  				 u16 pf_vsi_idx)
> >  {
> >  	list[0].type = ICE_MAC_OFOS;
> >  	ether_addr_copy(list[0].h_u.eth_hdr.dst_addr, mac);
> >  	eth_broadcast_addr(list[0].m_u.eth_hdr.dst_addr);
> >
> > +	if (ice_eswitch_is_vid_valid(vid)) {
> > +		list[1].type = ICE_VLAN_OFOS;
> > +		list[1].h_u.vlan_hdr.vlan = cpu_to_be16(vid & VLAN_VID_MASK);
> > +		list[1].m_u.vlan_hdr.vlan = cpu_to_be16(0xFFFF);
> > +	}
> > +
> >  	rule_info->sw_act.vsi_handle = pf_vsi_idx;
> >  	rule_info->sw_act.flag |= ICE_FLTR_TX;
> >  	rule_info->flags_info.act = ICE_SINGLE_ACT_LAN_ENABLE;
> > @@ -110,14 +122,19 @@ ice_eswitch_br_rule_delete(struct ice_hw *hw, struct ice_rule_query_data *rule)
> >
> >  static struct ice_rule_query_data *
> >  ice_eswitch_br_fwd_rule_create(struct ice_hw *hw, int vsi_idx, int port_type,
> > -			       const unsigned char *mac)
> > +			       const unsigned char *mac, u16 vid)
> >  {
> >  	struct ice_adv_rule_info rule_info = { 0 };
> >  	struct ice_rule_query_data *rule;
> >  	struct ice_adv_lkup_elem *list;
> > -	u16 lkups_cnt = 1;
> > +	u16 lkups_cnt;
> >  	int err;
> >
> > +	if (ice_eswitch_is_vid_valid(vid))
> > +		lkups_cnt = 2;
> > +	else
> > +		lkups_cnt = 1;
> 
> nit: The above condition could be more succinctly expressed as
>      (completely untested):
> 
> 	lkups_cnt = ice_eswitch_is_vid_valid(vid) ? 2 : 1;
> 
>      Also, the above condition appears elsewhere in this patch.
>      Perhaps a helper is appropriate.
> 
> > +
> >  	rule = kzalloc(sizeof(*rule), GFP_KERNEL);
> >  	if (!rule)
> >  		return ERR_PTR(-ENOMEM);
> > @@ -131,11 +148,11 @@ ice_eswitch_br_fwd_rule_create(struct ice_hw *hw, int vsi_idx, int port_type,
> >  	switch (port_type) {
> >  	case ICE_ESWITCH_BR_UPLINK_PORT:
> >  		ice_eswitch_br_egress_rule_setup(list, &rule_info, mac,
> > -						 vsi_idx);
> > +						 vid, vsi_idx);
> >  		break;
> >  	case ICE_ESWITCH_BR_VF_REPR_PORT:
> >  		ice_eswitch_br_ingress_rule_setup(list, &rule_info, mac,
> > -						  hw->pf_id, vsi_idx);
> > +						  vid, hw->pf_id, vsi_idx);
> >  		break;
> >  	default:
> >  		err = -EINVAL;
> > @@ -164,13 +181,18 @@ ice_eswitch_br_fwd_rule_create(struct ice_hw *hw, int vsi_idx, int port_type,
> >
> >  static struct ice_rule_query_data *
> >  ice_eswitch_br_guard_rule_create(struct ice_hw *hw, u16 vsi_idx,
> > -				 const unsigned char *mac)
> > +				 const unsigned char *mac, u16 vid)
> >  {
> >  	struct ice_adv_rule_info rule_info = { 0 };
> >  	struct ice_rule_query_data *rule;
> >  	struct ice_adv_lkup_elem *list;
> > -	const u16 lkups_cnt = 1;
> >  	int err = -ENOMEM;
> > +	u16 lkups_cnt;
> > +
> > +	if (ice_eswitch_is_vid_valid(vid))
> > +		lkups_cnt = 2;
> > +	else
> > +		lkups_cnt = 1;
> >
> >  	rule = kzalloc(sizeof(*rule), GFP_KERNEL);
> >  	if (!rule)
> > @@ -184,6 +206,12 @@ ice_eswitch_br_guard_rule_create(struct ice_hw *hw, u16 vsi_idx,
> >  	ether_addr_copy(list[0].h_u.eth_hdr.src_addr, mac);
> >  	eth_broadcast_addr(list[0].m_u.eth_hdr.src_addr);
> >
> > +	if (ice_eswitch_is_vid_valid(vid)) {
> > +		list[1].type = ICE_VLAN_OFOS;
> > +		list[1].h_u.vlan_hdr.vlan = cpu_to_be16(vid & VLAN_VID_MASK);
> > +		list[1].m_u.vlan_hdr.vlan = cpu_to_be16(0xFFFF);
> > +	}
> > +
> >  	rule_info.allow_pass_l2 = true;
> >  	rule_info.sw_act.vsi_handle = vsi_idx;
> >  	rule_info.sw_act.fltr_act = ICE_NOP;
> 
> ...
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
