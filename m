Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F2F63B696
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Nov 2022 01:24:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3345A416D1;
	Tue, 29 Nov 2022 00:24:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3345A416D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669681491;
	bh=AwpvV1stNW5o9iqvdw+kyX1pRw0udgBVFgN9HEQ4z+s=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CBaiKxJBA2WDfZIBhLuHm3KYxW3DJks0eD843w6PwPZ9eSMaIU1MCD7QohZjSfT2/
	 0g/7jNMc+PjsRtGOon5CIhSHpW2VPSwewceLc7dqs00OqWKvD/9y4eg72XOGvzPevm
	 MvV0mnAwRX2X+463mO42IndFJ3JgsZD7a6A2gxIfUzXWbzsPK8JiHOil4QwrzZat2g
	 oA3iyuNUYqMS4+OxywsOnmDZFhPDqV4vgxHxQwRTkFcnsNENtduWHC/vjxbeF0Lq8G
	 TT7bMs8qY3nhsVSNzUtg8p2k87dxADr3GU4eOaotj/OqfQr5pDClKUnQWHFA0OkPF2
	 zuX4boG+P1hPQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m01IecxpvBNE; Tue, 29 Nov 2022 00:24:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C486E416CD;
	Tue, 29 Nov 2022 00:24:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C486E416CD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5A1D61BF34B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 00:24:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4183660C23
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 00:24:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4183660C23
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tXm3Gjrs1G54 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Nov 2022 00:24:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4C31360AFD
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4C31360AFD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 00:24:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="316817360"
X-IronPort-AV: E=Sophos;i="5.96,201,1665471600"; d="scan'208";a="316817360"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 16:24:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="637411798"
X-IronPort-AV: E=Sophos;i="5.96,201,1665471600"; d="scan'208";a="637411798"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 28 Nov 2022 16:24:21 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 28 Nov 2022 16:24:20 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 28 Nov 2022 16:24:20 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 28 Nov 2022 16:24:20 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 28 Nov 2022 16:24:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c3yDV0+zmwsNilsPSMVz93aZnhmCyBOTjLzWguqVNl6/4eTfrDV7jbWBwt9mLNqJyk4kQObZs9PNbntbfoS95V7ChBpc3cGo6hvRGzFetSW+S5xX2KJVfcZXMt+E3JdeWZtgied6ZzNo0Tm2xhjxfAadve0nWEzCgZn2GorTZuq7DRQybUdImdPk25QlWft0D4Bjf1X9/85/BrOOZcKQcn4Ef+Y6t/jbRngxDn0IvVbXuUQDnnH7140W7VmyTT0BRE0WSHHEyn6gpLNmW1xd5U/nqKSux50fsm1u6FMlTXruI8EJmc063jprK5HRJqDO/EaNv9fS8PaVS/QPwjE0iQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/ITOL+SpDeHNQtyvtlXwkRxlI5WXQo5wOlCdlrLlqLI=;
 b=UxHDUi/qs9TOQOnerG4HCcn/GPxacPG0pCn5JWXdra5pUvB5C5FpBvPl37wKV65QP4RSgdqOsrTFhbme75C2E8cAxumn9elwrzuqVw9kXwnCeSo8enG3K9pNwhW4bLL1+sKwkAiUH9YZ/X9ElwemJMZKVMfmfZTt2dMUbfPXj1LpWgowg2sNPT9ZDllS4Oz69J+CiniNrXjcNavLz1z/kjB/n1acY9hZE6LkVb9aEMlISTWu+y62MQjzqONblKXZ/tBytWIFnBky5qUduyXet3eFYpny06NrkECz2k6sW6mkaXWOpDOJUQSwgZ4TRJaDKpYsWHckjrsxg6OZ1kdvsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DM6PR11MB4610.namprd11.prod.outlook.com (2603:10b6:5:2ab::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Tue, 29 Nov
 2022 00:24:18 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::3862:3b51:be36:e6f3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::3862:3b51:be36:e6f3%6]) with mapi id 15.20.5857.023; Tue, 29 Nov 2022
 00:24:18 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Vincent Mailhol <mailhol.vincent@wanadoo.fr>, Jiri Pirko
 <jiri@nvidia.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Jakub
 Kicinski" <kuba@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v5 3/4] net: devlink: make the
 devlink_ops::info_get() callback optional
Thread-Index: AQHZA4aMUpovNpkURUqKWHrpaJfbO65VCqvQ
Date: Tue, 29 Nov 2022 00:24:18 +0000
Message-ID: <CO1PR11MB5089701265DA7B1FF7CAB26BD6129@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20221129000550.3833570-1-mailhol.vincent@wanadoo.fr>
 <20221129000550.3833570-4-mailhol.vincent@wanadoo.fr>
In-Reply-To: <20221129000550.3833570-4-mailhol.vincent@wanadoo.fr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|DM6PR11MB4610:EE_
x-ms-office365-filtering-correlation-id: 1eef9d81-c4af-423b-9db5-08dad1a00dc9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HOM1Y37Paa3mp0Epl2zD4KPdo6FdzqkxyJ45M+AahyB6LtRFyRviX1lHEjHi5jWOxik3GJpMXIBfF/DNO3FqwtXNADgFy4USDDFvLJnJjTvZ7WN/yjFMUfcsZyE8q2diHHKSRqFI3PmSJNQdIaaKCCi37123hCVS6QRbYUJ/jFv6gk7HJECiMj4EVR1rQz7TLLtvWJf6pLMlHdoSp+sSzBvgpLM1DJn3WB4BjKl1DNFrSUEKLunY5ZMx7ZFwZS5YqaBoDCIfnIgLZVdk3r+1JLNRU3C+IyPztpz/p0EBhg661JWG0/XaG86Mb022TwDOQ1Y44cyyoD35+hGmZarB2M+LFOHwBBVEJ6f0eDulKRc2RBYzTpSighvJjexaP++to+YIObWpxpTK+jPTynwDb9t6UKjCMRg+ZKqDm6bgfJb9FSV1X6FX5nL3aHhl36A0EvYDuu5yBHcRGwPhyL0WiKrvPHqmSFZwVSxxqQHcetLQtwwcSleh/AW3widmaQGQyPCPkHH00jyh6DtlhBnVO3dpNzc1wnBzGKYgzhS5Vp+xod0LzFbIIXxmLp5oBhnysFu8HwMyeBOepTwH/fFaxQ/8zqXwRhjmR8UWu5fSjuMBAfs9xDnj9Dq6JKwC5vg4CWs5SsTrm6DiF7ZgkRVsBHW4uz4VIcjBmUlnUXAEGiPvXmS0+Avg6nQNYtl/CfPq
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(136003)(39860400002)(376002)(346002)(451199015)(55016003)(38070700005)(86362001)(33656002)(26005)(71200400001)(7696005)(6506007)(110136005)(9686003)(54906003)(53546011)(478600001)(5660300002)(7366002)(7406005)(52536014)(8936002)(41300700001)(76116006)(4326008)(2906002)(66946007)(316002)(66476007)(8676002)(64756008)(66556008)(7416002)(66446008)(122000001)(82960400001)(186003)(83380400001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CXUYvMH7NUfgk7r8usRIhViUM/m+BfjC2aGbFBHh3T9xST23h/yrOocU2ZV6?=
 =?us-ascii?Q?+mPcCslKX9D0848nX/5OFmpsMwLAzqpow6Jda3JF06pnUhDM8S7+wTrstvNi?=
 =?us-ascii?Q?qwPe7RhnncjoEVUuYTR5Fb7IlvVvCprvXNfwLN5qs8lcgsxb/AZp9asjXbZX?=
 =?us-ascii?Q?3yxFnJB02iB6koWwNkx/qW/47YGwPdWEIFbFUtQB8RbcjHanRaN3T4T6JLF8?=
 =?us-ascii?Q?+WdEMhnUPsHXGj5s2S+yc53U90MuYq3swqo8UwnFMWp+loMLLoM1sFb//QED?=
 =?us-ascii?Q?pY58/qkcNsKPsEIXtguqWSseAkD47Vb1hyqbePH+dNdqIn3Fnwxvjc/Fs0Yh?=
 =?us-ascii?Q?jLt2jC57OqazcP+bxNVqRzrpEabouxCSoF2RhMni3DC+qFstUZytBnJO0Gnj?=
 =?us-ascii?Q?HFH9idVoTtCwHtYvGTGsncNXJd1crE7yzLFE3O/pAYDhidAhFHusCLvUW/Ct?=
 =?us-ascii?Q?rcxNPVz6SgNMRzLfu80/1zpIDnZxZjuMkOLOaijoNDWlVjwrpfBCnOTdBwfP?=
 =?us-ascii?Q?oy/hf1HJrw3cJ+bdjMF6q+WcX4ZJo3MDwonr5eTpgi5vudoAVsBtZpn5H5rI?=
 =?us-ascii?Q?q3qXevdkWAc5R2ahwFiIf0WZhrv4Pj/nfI50gHUObr77FQXsLmTl9xeOGr4c?=
 =?us-ascii?Q?iAZ68xOg3ddJxfDaXoK1Srm13Net0/tL6czachNydh7oRX/vibImfJn40ZC6?=
 =?us-ascii?Q?LC4ocOizsA/4PAGG8XWs6fZF9Ta14SVdc67qUtjXbP1ws77au6U/gLKZB+f2?=
 =?us-ascii?Q?kbVrC9+TicmIqlWL1erS8hek1b1wRpw1LeT5n7Le6eBt6TAcjyJv1oGEkdjm?=
 =?us-ascii?Q?nCy8Is/jqIHLut7yTAibjp6J6ekFyJdexRJIMZnVdIMssQBg579mo5KRwpps?=
 =?us-ascii?Q?g2vuuGKrJI5UeziLaJ2vrsKt/4jEv5IBDUt4p2aCfDRg80UvKGWUfPCfgQrJ?=
 =?us-ascii?Q?pgg96AeZlWA2X3TyFD5b8vUF+xu+EjUiysT9X/JMqBjXR85noNKMl95UNIxQ?=
 =?us-ascii?Q?kQgMTF1tLtB/5ebvYyy3SUf5Ez7l6AXV/1h19GEDi+HLdiQ7V48eNrZpK9wl?=
 =?us-ascii?Q?iea+qrD9x+IKpdG9IIRj5nssQh+XcUQbwFftec5xr8P/8tz+r/gelWBNlzGl?=
 =?us-ascii?Q?5W9yAjCkDJ9uP917rSC8tF13gSOnr3Bc+7c+GAsgPoFg6sBkqUyW3LkuLB1t?=
 =?us-ascii?Q?qwJqKwq2VFoQjmDTO3wi/V/Z2EPKTorGzva9WsXwd1ryGKbj6o+Vl8mt0ZzF?=
 =?us-ascii?Q?K8ygJRYYpO/nCGzzoYhz9aa/eJLwM7hS0qAaQ4vEnVVKBgWXbeXFJzPSTzYu?=
 =?us-ascii?Q?QdXxM8aW6edIcUST7Sv3rvTa7WQFVVzXhVkPxktQq66N57Vq/htAUT+uIoJz?=
 =?us-ascii?Q?kSydXSYJMpQxc5+7aKgJS4MdPbFwz1c2ZTHS6qKPnkiO7WM7kUYZNDGaOjhw?=
 =?us-ascii?Q?3pxrsAEVvGkLedlljrpMDpqDlVDzJ25q4MPVkOIwYqdunuMci/5QPJgq6vmN?=
 =?us-ascii?Q?MWVIMrMoTy3ZBg6A8d4Cag0/EfI+WgMvN+JfC93TJZ4fldXjNXDT0kKTh4eL?=
 =?us-ascii?Q?HSoXKcuwsbjRVNXb0MqBJs8O8aFU87FnHjX1wGRc?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1eef9d81-c4af-423b-9db5-08dad1a00dc9
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Nov 2022 00:24:18.2323 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9F/Xp2PLU1/BstF4x9p+T9yOusydmJwWWr2TNe4KQ+bXWPoXreCiUUOZOyfktxTsmzh9vte8H01enCG4J3P7BfmU2WHycN0FpqHHquyO/xU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4610
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669681483; x=1701217483;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/ITOL+SpDeHNQtyvtlXwkRxlI5WXQo5wOlCdlrLlqLI=;
 b=M/0TEFXc4I9Ycl2DnI/QB9MuTTg55jHbz6cOkQhyg2H4NXhaGOCBmo2z
 E3HyC4AyLB1MaLde1NRbJ6+XTVyftoCYZZCCBmLnvRkZWq1S2G58W1+Tc
 X5IcksLWzCme9wL0V+mKE6BBijFNAw23NVajcS4DHIziVY+Nj08p5LZI9
 m3dwheCWJ8/eSVZV78T6zVPPm52NqVw9nRKzFcf6GkP+wJuc5bQ+tyPhu
 FRES2tQzlPndLBwavOqjmCreSNbkx4+H7m68qvUq0XUtkeVnIXS3Gq3jp
 kOmUQjX7bPcrTHzZZUV25AMoVQ8jO+70oRPNNPqU7uu+u+gZ3RFb4qG9o
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=M/0TEFXc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 3/4] net: devlink: make
 the devlink_ops::info_get() callback optional
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
Cc: Andrew Lunn <andrew@lunn.ch>, Simon Horman <simon.horman@corigine.com>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, Vladimir Oltean <olteanv@gmail.com>,
 Jerin Jacob <jerinj@marvell.com>, Subbaraya Sundeep <sbhatta@marvell.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, Dimitris
 Michailidis <dmichail@fungible.com>, Guangbin Huang <huangguangbin2@huawei.com>,
 Linu
 Cherian <lcherian@marvell.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Leon Romanovsky <leon@kernel.org>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 Shalom Toledo <shalomt@mellanox.com>, Srujana Challa <schalla@marvell.com>,
 Minghao Chi <chi.minghao@zte.com.cn>, Hao Chen <chenhao288@hisilicon.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, Vadim
 Fedorenko <vadfed@fb.com>, Paolo Abeni <pabeni@redhat.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>, Sunil Goutham <sgoutham@marvell.com>,
 Ariel Elior <aelior@marvell.com>, Ido Schimmel <idosch@nvidia.com>,
 Richard Cochran <richardcochran@gmail.com>, Arnaud Ebalard <arno@natisbad.org>,
 Jiri Pirko <jiri@mellanox.com>, "drivers@pensando.io" <drivers@pensando.io>,
 Petr Machata <petrm@nvidia.com>, Salil Mehta <salil.mehta@huawei.com>,
 Shijith Thotton <sthotton@marvell.com>, Manish Chopra <manishc@marvell.com>,
 Boris Brezillon <bbrezillon@kernel.org>, Vadim Pasternak <vadimp@mellanox.com>,
 Michael Chan <michael.chan@broadcom.com>,
 "oss-drivers@corigine.com" <oss-drivers@corigine.com>,
 Geetha sowjanya <gakula@marvell.com>, Taras Chornyi <tchornyi@marvell.com>,
 hariprasad <hkelam@marvell.com>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Shannon Nelson <snelson@pensando.io>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Vincent Mailhol
> Sent: Monday, November 28, 2022 4:06 PM
> To: Jiri Pirko <jiri@nvidia.com>; netdev@vger.kernel.org; Jakub Kicinski
> <kuba@kernel.org>
> Cc: Andrew Lunn <andrew@lunn.ch>; Shijith Thotton <sthotton@marvell.com>;
> Simon Horman <simon.horman@corigine.com>; Kurt Kanzenbach
> <kurt@linutronix.de>; Eric Dumazet <edumazet@google.com>; Jerin Jacob
> <jerinj@marvell.com>; Subbaraya Sundeep <sbhatta@marvell.com>; Ioana
> Ciornei <ioana.ciornei@nxp.com>; drivers@pensando.io; Linu Cherian
> <lcherian@marvell.com>; Florian Fainelli <f.fainelli@gmail.com>; Herbert Xu
> <herbert@gondor.apana.org.au>; Leon Romanovsky <leon@kernel.org>; linux-
> rdma@vger.kernel.org; Shalom Toledo <shalomt@mellanox.com>; Srujana
> Challa <schalla@marvell.com>; Minghao Chi <chi.minghao@zte.com.cn>; Hao
> Chen <chenhao288@hisilicon.com>; Guangbin Huang
> <huangguangbin2@huawei.com>; Shannon Nelson <snelson@pensando.io>;
> intel-wired-lan@lists.osuosl.org; Vadim Fedorenko <vadfed@fb.com>; Paolo
> Abeni <pabeni@redhat.com>; Yisen Zhuang <yisen.zhuang@huawei.com>; Sunil
> Goutham <sgoutham@marvell.com>; Ariel Elior <aelior@marvell.com>; Ido
> Schimmel <idosch@nvidia.com>; Richard Cochran <richardcochran@gmail.com>;
> Arnaud Ebalard <arno@natisbad.org>; Jiri Pirko <jiri@mellanox.com>; Michael
> Chan <michael.chan@broadcom.com>; Vincent Mailhol
> <mailhol.vincent@wanadoo.fr>; Petr Machata <petrm@nvidia.com>; Salil Mehta
> <salil.mehta@huawei.com>; Dimitris Michailidis <dmichail@fungible.com>;
> Manish Chopra <manishc@marvell.com>; Boris Brezillon
> <bbrezillon@kernel.org>; oss-drivers@corigine.com; Vadim Pasternak
> <vadimp@mellanox.com>; linux-kernel@vger.kernel.org; David S . Miller
> <davem@davemloft.net>; Taras Chornyi <tchornyi@marvell.com>; hariprasad
> <hkelam@marvell.com>; linux-crypto@vger.kernel.org; Jonathan Lemon
> <jonathan.lemon@gmail.com>; Vladimir Oltean <olteanv@gmail.com>; Saeed
> Mahameed <saeedm@nvidia.com>; Geetha sowjanya <gakula@marvell.com>
> Subject: [Intel-wired-lan] [PATCH net-next v5 3/4] net: devlink: make the
> devlink_ops::info_get() callback optional
> 
> Some drivers only reported the driver name in their
> devlink_ops::info_get() callback. Now that the core provides this
> information, the callback became empty. For such drivers, just
> removing the callback would prevent the core from executing
> devlink_nl_info_fill() meaning that "devlink dev info" would not
> return anything.
> 
> Make the callback function optional by executing
> devlink_nl_info_fill() even if devlink_ops::info_get() is NULL.
> 
> N.B.: the drivers with devlink support which previously did not
> implement devlink_ops::info_get() will now also be able to report
> the driver name.
> 

Makes sense to me.

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
