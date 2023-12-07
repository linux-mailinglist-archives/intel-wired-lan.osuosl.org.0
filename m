Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8930C808216
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Dec 2023 08:42:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E3E2040225;
	Thu,  7 Dec 2023 07:42:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E3E2040225
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701934976;
	bh=n57kYvA1gMuoQRZqSeamdd9cjrh56ZuusZj9g9XjyCg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UKq4zS1Mt1MuHBlxm2YNY6yJ4FVQQP8XYKGQYfkaTSYr1u4AcvUaDAHBdbgPglAZz
	 igBJNsGwg8IWbSMCF3U82BBiM0pbrXVhczehb2XBHy/ZeYsSIbdhjXga8Fib/yTXym
	 WUMJa9ZroztLIhvn1DBcrtmsnXt9S5C+H3IMkBNA7GCdBV9ITqfrfihcyQuXXIoxEy
	 uD2/KkSEEcZE0JFRSxOn9XRJbjLjdezh5WwXiNtOU+zNe+Y1dk3Ch4ZZOflCTEMmLk
	 7Kj7k7dGHrc4KJg3QdzrCVLUl6H17mXYBkscbKAYgPRpG5VJ5sedCo5XzD8A2lDcN8
	 l/0DfNQwgcokQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M7H4IZig43HC; Thu,  7 Dec 2023 07:42:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AA37C401B8;
	Thu,  7 Dec 2023 07:42:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AA37C401B8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9F5181BF29C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 07:42:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7C4EB41FA2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 07:42:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7C4EB41FA2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hovS_UVgrNpx for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Dec 2023 07:42:49 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A9F2E41DF5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 07:42:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A9F2E41DF5
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="396981339"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="396981339"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2023 23:42:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="1103116854"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="1103116854"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Dec 2023 23:42:31 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Dec 2023 23:42:31 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 6 Dec 2023 23:42:31 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 6 Dec 2023 23:42:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nairz/5necYHhZXbXqlYQYkEt7pF3nqiqYWeU3z15eenrwgkSOqPXonayVg4/D3HvldGN70wholGsya7HeaMLPTO4R52fPUZdTIAj5b+H6ttwuAfyf5ArR/LIR2tHdX2GuuhCtlAxlOsOzHtk+z8lI11vdNA15aJxSolVCHPlK4Bq3gGn17hxEgoFjVOqtUO7ucp8Sak1TkgS21Fa04P7PrKuG/gKRS9ncf9P6aYkujBjKqx1LATBpmBFSbYoLBOQ9pNNfAkg0EZyZjHC82M7GKcHdpuK//8Djk30+ef6uLLaTo+WAgeWs3XXfgp7LbYWcNjP25hJopDaslXwJbxNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GG+frBSaBcWIwZCFYFIknBUnolI/USkz6F1eduTlYi0=;
 b=exk5vneuS7saIpTpPaA5/Q/jn4dqDs33ZGO+JvL2naCFayFAbyb3j+Q+ZAL5WCg1XxAN7s7RgNkBe03c74yXBn4WOJMOckzXzsZJJt8/re83F1qApZlJMi0TkREUnDug5d78HSzjQQ4edNLTmoIr6pjczlJkZsVW9pC1pRhZCPmn5oAP8LNfJN3ZihXVfGnWYfXSTQtUkdIiRNtrPRv0sGnG0dis9L1WidejAPuDDYKHCqRbPBx60h+foJS+8kiLxgwciKJUcVncgfrmr9RgpfM4xw4v5m7guzo9zKqpm28HuQhgTfMNu5JSVaLV4K2Pa9ehX5gl53H39t9luGCZ9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5276.namprd11.prod.outlook.com (2603:10b6:408:135::18)
 by SN7PR11MB8261.namprd11.prod.outlook.com (2603:10b6:806:26f::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.34; Thu, 7 Dec
 2023 07:42:29 +0000
Received: from BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::e7a4:a757:2f2e:f96a]) by BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::e7a4:a757:2f2e:f96a%3]) with mapi id 15.20.7068.025; Thu, 7 Dec 2023
 07:42:29 +0000
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "Cao, Yahui" <yahui.cao@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-next v4 07/12] ice: Fix VSI id in virtual channel
 message for migration
Thread-Index: AQHaHCV6Cks/Ywuac0CVQm/ldkdBQLCdiQCw
Date: Thu, 7 Dec 2023 07:42:29 +0000
Message-ID: <BN9PR11MB527690BEA042226F61259FEE8C8BA@BN9PR11MB5276.namprd11.prod.outlook.com>
References: <20231121025111.257597-1-yahui.cao@intel.com>
 <20231121025111.257597-8-yahui.cao@intel.com>
In-Reply-To: <20231121025111.257597-8-yahui.cao@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5276:EE_|SN7PR11MB8261:EE_
x-ms-office365-filtering-correlation-id: e0d2eecc-a645-4fc1-fbc7-08dbf6f81080
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bPOBeKIwJYzLE6itQh971EfTs//1x5jfnF4o4zcSI7DWlokHIL1exPEF/ng68pU7N3XYEzwtoRbK/bI1TBqTEmFNvjUbxOausmdI2spX0vPPcVSXzOg7msp2iL/8ZxtsQPlAElrJPMEwWL638OTBNIP3qrgUYevA9aQynjCEw/dYgX+CsevpwJkUc9jSBa5wOb6qyJkQartSDu0G4eoTCIEuGSpRXmw0bq3SPLOHz+kcirhfswr2psJgGH+8Mwm/2DzEn7i4zyC27fZmyisu+Z9jkmhp3y0fGXoP0Zd8PODKs7np+IIuTQyUuXw7Le+gh2VY+Mnzm4YO6Q9g3MN0pIiVMsdhFigko04/H8LZKnybmdCVw7t5s8hH5cNSotQabsujH6r9vsJ96cUH8635UtM+MPa+BCmIdrcGG1Yvo/Kn6OW83REqX2Z8mBE8IpmmTLaaxSlTxLtFZnRdlraRe7CjoRNFhnkpzCTczhqbyDYWloXmvvk6lfwCNMkJ1M6KPuKu3NXCL8ybqUxRY1s5pBVxqoBlU2pSJUXrOs42hUoxbgc9cft0Ej3SD0Gd9D3FxQypZzgZbTqa7+Yt8jVb2zG0uejI8tWfNg7Puhy3m3cDjJYdWKQ9oDPm0kAn7mc/
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5276.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(346002)(396003)(136003)(366004)(230922051799003)(186009)(64100799003)(1800799012)(451199024)(15650500001)(7416002)(33656002)(2906002)(64756008)(316002)(110136005)(66556008)(54906003)(66476007)(66446008)(76116006)(66946007)(38070700009)(4326008)(8676002)(86362001)(55016003)(52536014)(8936002)(41300700001)(5660300002)(122000001)(38100700002)(82960400001)(83380400001)(478600001)(26005)(71200400001)(7696005)(9686003)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6vVobZvkedmQdwiQxNtSTqo5+c2meb4mC7MSK3kp678kOfzEHjvwttBmCzNq?=
 =?us-ascii?Q?rj+hNB2YqNvQWTbzufq6hvbkjVMQk04dHfkS+Yc++MYLyeZcIRihKKVFYNGE?=
 =?us-ascii?Q?xBdGIRooYqRNM2P/iK4R6is4TCullPmXKlleUymPs7uVvqSmRFERUW/IIxir?=
 =?us-ascii?Q?pq/5R++jQ9bQwjE991JJ/FqJlvUYlXZIzxYglQMjspHlQFWtPTGYIrAYXGSz?=
 =?us-ascii?Q?t/tjiTu28M0e66mvVBxqj9ArtckPIklpjGv/Pm5nK+lkpGdG2OqeH1xuzYXF?=
 =?us-ascii?Q?OmjbfYKQsjcR+pwg+sOWJIfVMPHTBMZ0v6exQhEuj3EibjnQihn4NU5VeDBg?=
 =?us-ascii?Q?rrPsqqf8nAS+ymvVdxhZq/sXzKu5qYH3VOZUMw0ol+QDVd+05R8CNBBfelOM?=
 =?us-ascii?Q?JTpgxbYevQhJ87/ZobVnFqx+/sH7y/K3EoXFbUL/BuS03k6LFMNyHwhtgK8i?=
 =?us-ascii?Q?A1x7qwgtUPoau7mTeNpIwr3xkveA2uxVa/9BZ2ajHDhbUlWv81UYXXZ8fHfe?=
 =?us-ascii?Q?8oo2DcnQgaL9G8lSpexPm7vuZYlmD1si1whAVM0IKLCSFtIWlT5vPicFIdp/?=
 =?us-ascii?Q?HqfLr0rUUygZYz9r7ZD9xhIajmEoeME2jY9Ll7AKYJseAUkUxd3Dh8J4YizW?=
 =?us-ascii?Q?t19Zd00eHm2SBKdNN2fP4e1FID/gdc9JX23lTA2gs15W1od0RrR+qpR0gP7p?=
 =?us-ascii?Q?xL44mpSyfX/q/y/lQw7yKEJ/bY7myxPrPEMSMLxly2iVbPZnWuOz6/C8cc9h?=
 =?us-ascii?Q?D4KjzCFy/Y5WtWwu3AJ6zxIFfRFs+Ht/moM5tX9t9U1j6lYhAbLblBOG91kL?=
 =?us-ascii?Q?86de4n6S5eNE0NPkxRc3WFl3swmvGmZ+zoRJw6nsGuby08cIYkXeTahmK/f0?=
 =?us-ascii?Q?bNbY7IQpfSjTETvLdMAhgahJhowqwD/sh/3cS5R8XdR71bYViZAqkjUaTs3Q?=
 =?us-ascii?Q?et9cxOM9jmj5ThW+5hnr8ZC9geg51sIDcmQ1vZbBevO4xQ8TmctYMBKh32Az?=
 =?us-ascii?Q?42XYdiZpz338Yy/FFqIF2SyEckEGmOQFl4tWxqWaDiAXv4V6xpP/4QAMbzJ6?=
 =?us-ascii?Q?hx3kma++1s7LgdiRHZ30wOLcAfEgJJO7A163KIGbugvWyyMtgbXDKD0/eY/A?=
 =?us-ascii?Q?CcGzr08KF1Mlkip4DLvs090/rLHSzHXSGB/L8li8gn02Z7OIN9JHzUn7Elv+?=
 =?us-ascii?Q?xyhsVImMThZmRTF61HpfKmpIgMDjMVZBI1ZvQuh7M0rFpCJjS4qYsT4E7BYR?=
 =?us-ascii?Q?umTpeZAUH4vDm4NdnW/stbdLrykK4sX/prNIOLzD5RI4HaZs4WkJcu11YX9F?=
 =?us-ascii?Q?JlEShiEduV0znxnxsAUJ7URGUQmS4Scii1M2bMeEJid5OHIccAovfJwb1PKC?=
 =?us-ascii?Q?UH+Y5EPNX3qZawqWfGiWBVeLmz11KT3i71fI8/BxcNhOZweMevur3sp13mxR?=
 =?us-ascii?Q?y1L4PPzxGl28RPaBEHbnVxoi91Ku63/gaE+1MKsL/iZF2lGDlpa6gFGuKVyq?=
 =?us-ascii?Q?S5dSHc6m8dZpct1P8VMOSEgzZ2npV4kc/9hcCQ5l1hWIpV5FLk0Zp2qkzp1t?=
 =?us-ascii?Q?3aSqeOJgmjwX/EORtx5l5vgk0UEeZGaVDykzZjSf?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5276.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e0d2eecc-a645-4fc1-fbc7-08dbf6f81080
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Dec 2023 07:42:29.1764 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JsUFgbKKe1lh9xrnb1USY4cCuMYG61WZrdN+f/W4DkTghxKxRrbVaUoQXgN9onhswFJUUoqcUtYCFIPCjkuq2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8261
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701934969; x=1733470969;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=e28p+qTelnA8MxRY4W5MF+BWq3+QG6tQEvndgrFwFwI=;
 b=nl1MXeoQcPI0xNkXcDPj7qupOBZp4k7S+liWmzm70IABhrSGdFtv/qTB
 pwOm8t7xdeh1R3WZwQzz2sXXIbiXw4OuplMHfpbQP/QM09G/icUQ/Ko1B
 IzfTdk70XQVWX340pj7GcKF0hyi7OHoItxE6mCGaNGZ1IieujvLlc4phG
 UB89Vedqc/WSGsy9OSaR+maAHl4AHIDqJxHhYClXZ04U8iWeMHwYx/tI+
 DK/PuNFcfqPP580KfWYDqHAT8QmF0zFGFePvv/JvolAYP7oZKYqHLZGxP
 j0lkoppOOcMKnGR24hxD19vy1kQoFPHeyMtKgHLrxd2wWnATxHjw8eV1s
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nl1MXeoQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 07/12] ice: Fix VSI id in
 virtual channel message for migration
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
Cc: "yishaih@nvidia.com" <yishaih@nvidia.com>,
 "brett.creeley@amd.com" <brett.creeley@amd.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, "Samudrala,
 Sridhar" <sridhar.samudrala@intel.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "shameerali.kolothum.thodi@huawei.com" <shameerali.kolothum.thodi@huawei.com>,
 "alex.williamson@redhat.com" <alex.williamson@redhat.com>, "Chittim, 
 Madhu" <madhu.chittim@intel.com>, "jgg@nvidia.com" <jgg@nvidia.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Cao, Yahui <yahui.cao@intel.com>
> Sent: Tuesday, November 21, 2023 10:51 AM
>
> +		/* Read the beginning two bytes of message for VSI id */
> +		u16 *vsi_id = (u16 *)msg;
> +
> +		/* For VM runtime stage, vsi_id in the virtual channel
> message
> +		 * should be equal to the PF logged vsi_id and vsi_id is
> +		 * replaced by VF's VSI id to guarantee that messages are
> +		 * processed successfully. If vsi_id is not equal to the PF
> +		 * logged vsi_id, then this message must be sent by malicious
> +		 * VF and no replacement is needed. Just let virtual channel
> +		 * handler to fail this message.
> +		 *
> +		 * For virtual channel replaying stage, all of the PF logged
> +		 * virtual channel messages are trusted and vsi_id is replaced
> +		 * anyway to guarantee the messages are processed
> successfully.
> +		 */
> +		if (*vsi_id == vf->vm_vsi_num ||
> +		    test_bit(ICE_VF_STATE_REPLAYING_VC, vf->vf_states))
> +			*vsi_id = vf->lan_vsi_num;

The second check is redundant. As long as vf->vm_vsi_num is restored
before replaying vc messages, there shouldn't be mismatch in the replay
phase.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
