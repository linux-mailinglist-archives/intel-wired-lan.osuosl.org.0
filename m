Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 412C9570E8F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Jul 2022 02:04:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 302A9421FF;
	Tue, 12 Jul 2022 00:04:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 302A9421FF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657584287;
	bh=2LqUyuMH1PHnBhMbWyf9cUB3raWtQUbos2/KQfT73Hk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=O0S0HxMw2SFSbRPhRTWVCJCojKvLIRfpD0WHa9meQm4KLyyJeJ2BJqc6t3WR9pgu0
	 atzprGCcoEsLcZsJLvLnRORqLr73IO+zjtZDTpxqGLskJz4gUCgLdvQ+gd3adeKGMU
	 jBFbk1fO5Aj79xlpZSZKK3WTt+XSmNMr8opOHBcKSbwVIciz6GZnL2/oxs+lByG2R1
	 4QZLsh4GoIPxRBDVs28/T1UQX/TKJ/ncDOMCAAuPOPN0/66LYDTanPbYthHff6iolu
	 WFpUnoy1PJohG0pal/ZCdYENnjQisAg58kiaZv+1/LChA3hmOFswBB578UbVFe7HjO
	 5+YB+pn+WWZUQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XSvV2Pc8l4lw; Tue, 12 Jul 2022 00:04:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7703A421C9;
	Tue, 12 Jul 2022 00:04:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7703A421C9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6F3B61BF9AC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jul 2022 00:03:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3F3D760A46
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jul 2022 00:03:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3F3D760A46
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pNeZTwfSSI9C for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Jul 2022 00:03:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BC9A26080B
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BC9A26080B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jul 2022 00:03:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10405"; a="264587902"
X-IronPort-AV: E=Sophos;i="5.92,264,1650956400"; d="scan'208";a="264587902"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2022 17:03:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,264,1650956400"; d="scan'208";a="627692573"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 11 Jul 2022 17:03:29 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 11 Jul 2022 17:03:29 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 11 Jul 2022 17:03:28 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 11 Jul 2022 17:03:28 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 11 Jul 2022 17:03:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j4/9CiTsYJLR1OVlZS5a2Im7r+GXpsBdpjLg00RUe5E693Fy91r6LyQI8Q/Q4P9VxIWFbaM2TBooZU+AkpB4CuB+6+QA40KUkjzXpwdyXwEmkIMDkQJK8mCW0OBRPQRMhXNSWj9Ks7z85Nno6dHYlGb37zJUGWXyo47LWrYpfnXP7WhCta8iSOwFXCT/EqIlqiM0Y5BWpMwxgZKvZQVIbpQiw2kNccsJGwP/GOPO/uQlWvpMmRm6Ssez+9xJnuL1c6+nYb9WpV152c7xm0lPxlnl6Ex2mHezmiBvMmufKwIYtTXjVGCY3PWeJumMjvBCKeG8i9Fx2tkmmr2KgDvKyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hgZVPymZyN6cbTtT4X9RAr7txnNhsA7GSaI9ZX3upFc=;
 b=cmUGW9oBB68peljhHeSUeRYuATRmGsm9yKLngDXCawRLbZyPC0XYZ8tP0zi1HflWTGUBBp7hm6pPV9TNU25DGlrkhQfgBch0aTSsK6XvT8XBdbJWYj+hyNFiF0iCYz/jHoYKqPimOt95GER7SAcaAjfqB4iOmx9giskjxV/6nhw+euNPNnjaC8uewv6zQN+n1ghZLSRK4ze9zAzC4HYCbqGJs0bYkpWqs5NSzEoqZ205GmAFB2iS74v4oc5KrVX1wTpkq5rhZTaN1KwPomPunl3SCkzlelpIA0R3P7GR0iddl1IEwIfAhcm1o84meQbeXDtLgN2TMpPEo8QM7ItaMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3113.namprd11.prod.outlook.com (2603:10b6:5:69::19) by
 PH0PR11MB4821.namprd11.prod.outlook.com (2603:10b6:510:34::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5417.20; Tue, 12 Jul 2022 00:03:27 +0000
Received: from DM6PR11MB3113.namprd11.prod.outlook.com
 ([fe80::25a6:c618:db2e:67f6]) by DM6PR11MB3113.namprd11.prod.outlook.com
 ([fe80::25a6:c618:db2e:67f6%7]) with mapi id 15.20.5417.026; Tue, 12 Jul 2022
 00:03:27 +0000
From: "Laba, SlawomirX" <slawomirx.laba@intel.com>
To: Zhengchao Shao <shaozhengchao@huawei.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>, "davem@davemloft.net"
 <davem@davemloft.net>, "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, 
 "Brandeburg, Jesse" <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "ast@kernel.org" <ast@kernel.org>,
 "daniel@iogearbox.net" <daniel@iogearbox.net>, "hawk@kernel.org"
 <hawk@kernel.org>, "john.fastabend@gmail.com" <john.fastabend@gmail.com>
Thread-Topic: [PATCH net-next] i40e: i40e_reset_vf should return false if
 reset vf timeout
Thread-Index: AQHYkAvOBFJBstQ/rU2/2iuMxzBiiq154qHw
Date: Tue, 12 Jul 2022 00:03:27 +0000
Message-ID: <DM6PR11MB311352D9E711CD02F740600087869@DM6PR11MB3113.namprd11.prod.outlook.com>
References: <20220705011304.230622-1-shaozhengchao@huawei.com>
In-Reply-To: <20220705011304.230622-1-shaozhengchao@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d939f623-89b0-422e-1b10-08da6399f26e
x-ms-traffictypediagnostic: PH0PR11MB4821:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: chh2GrkLctgJMqQtolr1FIMZh62Ab31I2bgESuXIcraKwolr922hE7GcUVwF6T1/qjy75NnD9mPYVA3S1N7tVSsfJze2bGgID5MJBuFwK2fgQVugGpodkuwHXpKakGkgd4Rructo4ADUscA+LAh9413B+ycoh68td1hu93TaEeNXHB5qJvNkgieVS7YJR/aGuUWtoOaYjM2VM0ADCiyjkCKS/dRVItWpWU5ZDkc0aSCtJk/1+oFCtggoqgk0JkFSYAmGU0quTTLX94bMdKCr9QiW30ePIhVC5q9FEX0fuO9GLOPFgEilBPWIb9nA1QmVFJyNQTBY/p3sUnWKpVB/KglfAe9WOfkvRJhbGa4m1Gkj4c0tjW1Rq3WaUJUO6fYCrFDKjAeg3tBfnY/Kkh9EqcKH6VkQJ6ALIdaQgenwdY1OfBQJ3NA3uIiDg3R7YRUtskblFiawz1PpjNLzzdgV1PXO07N5fh5sS56szziTBGtD/RCe59xfpoBtf9sh1YQMPpFMBgiUewL8op8SaEQ6TpHnww+lP4lQ2yXlWvBnOhQ4ZLyc1zW4lqlVQhaKYaNpssbOWlkYdtQ6ThZfLxC9Px6I7BnkLaZ2M1BIRbtPeN0+sDVeLarQQkh8rzJIXpLTgXLKFebVKznh17/iNCv+D2VKsMX0FuKAs5Go9Dk0RhfYpn4j/rPwpUApmRUAo9zbBDn53jiyy9TmN2zhlGV3Rw6e4Goe1AvdNk2ArQKTA8IkloSG5sK4+tUeyL2uMWpHluLCGUETEAIlg1jMEW5cjyxW+aKX9up8CADqBq6pzWCLGwGg3G0881/BypQxOj70bTkB0d+EVRVZruCGG2WfxQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3113.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(39860400002)(136003)(346002)(366004)(396003)(7416002)(122000001)(921005)(82960400001)(110136005)(55016003)(54906003)(33656002)(52536014)(38100700002)(8936002)(478600001)(5660300002)(71200400001)(316002)(83380400001)(186003)(26005)(9686003)(2906002)(8676002)(4326008)(53546011)(7696005)(41300700001)(66446008)(66556008)(86362001)(76116006)(66476007)(66946007)(64756008)(38070700005)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/pRhIP9sW4WWtkx3xPMgMuEGnwqlfG/MJKtCmC6uucklFq6STa/1dcXtqBcw?=
 =?us-ascii?Q?K1txaZbSI28WgqXrxa5LiIN91RTZ2J6nL0F+YOIAlKVAxXtygB3/4has4Ag4?=
 =?us-ascii?Q?cPNTO9sSpQo+8sXz7tZm19umNWG8k7Ker3xavl2/OF3VQ2QJsvWw9Fk9Ouig?=
 =?us-ascii?Q?/YZBgz7FQPNXapjqVLCUSgviRd01kZHc/SEgfNkGn1n8N7Dnuk19oCLhSOBy?=
 =?us-ascii?Q?tbRoULRxIzh1kE9P6ClLW1w7hR28E+rQayeOQ4VrHVOpuWT3jEfUbVNZ5sSZ?=
 =?us-ascii?Q?clrgzAdNJDaU1e06rWOsxpcs7olVsZagEM7U36k41vP/zsuCQ/b5VQXjorPQ?=
 =?us-ascii?Q?Zi7bgniSZw8uwNureNpbHN2LTW5H9x6K/wPCO4Q97Zev6aG31zX25SEAttql?=
 =?us-ascii?Q?dytlr1vBd4cYfPqjQS9R9x/1NUig3gcbeYJzaEHrCfFDn7REm6zdKDTFVHfK?=
 =?us-ascii?Q?iD3ytKbWMHZU7C6AaKKF9e6mqlNMzOHAv6gGVSzPdQ4xofWi55Cozg2kpurQ?=
 =?us-ascii?Q?qu0ORwHK6mYP2lHEhRNiN8NxvAyJ8undkJQ5brnFisO4z2N8nGzwLaqzqEi1?=
 =?us-ascii?Q?Ik3zSq/c+ptt+tX+Q9GDr67FaEGZqMVo002xa4ZcTFJljNmO7EXQaMZ7IFj9?=
 =?us-ascii?Q?rBmdz4eEZhtz2x/JxxdNYyyO1Ec5mLORLW4N+rxD/ba0mg/bds59fh2TTO6s?=
 =?us-ascii?Q?q3HirDeG5kUJ3B0iVsEizu7o1bEX3H+lFrfr882k+LFWQyIO72Io901Skzrx?=
 =?us-ascii?Q?By93kSEyunAFd9E6IfTctzansA2nW0lW5CZKQWDgOmeNKjA+oAviot9GP8b4?=
 =?us-ascii?Q?nRZmR8C1K2qfmrCed+yIyb9IA8SHiZ6qXwHHs1NUALTuuDiINNpnA+0W62yl?=
 =?us-ascii?Q?kEn0QIsfPB19CrrtLWjUnFe87MzdGmTPr3BAbkkuwbnRwsNpN+lq70BhBPJM?=
 =?us-ascii?Q?hsgPm/XKbmmmeUAE1FMyeMW9KQjwBgAA97XFd/zuHdvrTqcsQ9stJmGotp/C?=
 =?us-ascii?Q?90vFqLE0kXbzBLGTgYh6g+lXuLheb7GnOVFqMfuXpBfeEYqCVXrhtVS77J1v?=
 =?us-ascii?Q?3U//xiEuieEDAIyYSXi5E1rGYOfU9mBMc6+NTlnidBWcMARUU+UhDbbaQvI9?=
 =?us-ascii?Q?8Qnd33WGfBXBKWR9IUHFacLWl8HbtgzI5Ec54Vns+vLxH0c9idSpCrIR4aHY?=
 =?us-ascii?Q?MxvOgTrqPmdOYtd4Cl68QRGZbvFfC/codDWxUi4t2Y2E1HMN2WxHd49yN7Ti?=
 =?us-ascii?Q?10IkOB6z9Ypu64ETOvxEzNqi4NneLaRUhd8CWzZA9nuY+M5EPKkFK7AAya6Q?=
 =?us-ascii?Q?9jtezwnvTGRs31Xxkt/DX5NUlsfzwt6chtC6TOnuhFLQhrs5By2W2RJJhWkl?=
 =?us-ascii?Q?weWY5vHPfLNm0aJqRkHMY+VEDXOIELQ0JwbhImt0X1UO4sJdletMnvgm1+Ub?=
 =?us-ascii?Q?6+BjjG8akBEumH0v2iy9F4Ma0ppEQt8md5a27pag7LdQLIdmGO6UAQZY7sZu?=
 =?us-ascii?Q?hOl7Uf4zG93Q8h5IAnX0dYKxgJiSA9AZn5bywNcsmLUnbvMnfd/cjdNx5cjA?=
 =?us-ascii?Q?qczRVnN2/F46UFJSMB1y4pk8+tBPg8V0tCXxHeM9?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3113.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d939f623-89b0-422e-1b10-08da6399f26e
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jul 2022 00:03:27.4482 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qp8/KuMJueg9Na/q+G7rRwbwY4OkbbiCGRMq6M9dy6rw1/H6N764j6C669pp7v9QuqSmNfKhdzRRLPA6Nceru5RUO42CZS6LNSaAWhyG02s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4821
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Tue, 12 Jul 2022 00:04:40 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657584213; x=1689120213;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Q2Qe9062YOmIwcyONdexZgdV8uoMfhobDrYp3rzzHgE=;
 b=HWPb4pnl89nmWCgbSlSRvvpasHZvDWgXpc1AjXtrJirq1nMu1Dnjc6p+
 d87+arkXaES4zwT1bXrb2zPukIbH640KWHDri2EQEjCjw24F5DoPZG3WL
 VRnqyrQXh5Z7GJOvvE0EhyCGwApGKz0SJn/m/f0HcHGo6CjAGdREUof3b
 Cy9MmC9niMGXPYfP2svfHkp+QngOGBEUrKTToBUNMEAVT7EoMHsdpC6AK
 oSCzK/NMOnD5Xtu+SiCcIFkLVlA4ToOs17gGuYSC85JhauFRvkauoFbA6
 rL7pVDMXM97Mvd6fM1t7BQQ2VTEjkapMlsm4wBkvKFGDz/qOYfQdYnI8I
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HWPb4pnl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] i40e: i40e_reset_vf should
 return false if reset vf timeout
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
Cc: "yuehaibing@huawei.com" <yuehaibing@huawei.com>,
 "weiyongjun1@huawei.com" <weiyongjun1@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Zhengchao Shao <shaozhengchao@huawei.com>
> Sent: Tuesday, July 5, 2022 3:13 AM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org; bpf@vger.kernel.org; davem@davemloft.net;
> edumazet@google.com; kuba@kernel.org; pabeni@redhat.com; Brandeburg,
> Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; ast@kernel.org; daniel@iogearbox.net;
> hawk@kernel.org; john.fastabend@gmail.com
> Cc: weiyongjun1@huawei.com; yuehaibing@huawei.com;
> shaozhengchao@huawei.com
> Subject: [PATCH net-next] i40e: i40e_reset_vf should return false if reset vf
> timeout
> 
> when trigger vf reset, but vf status is not ready, i40e_reset_vf should not do
> other cleanup action. The current logic is always return true. But it can't cover

Are you sure the queues are stopped/disabled when the VF timeouts?
This could lead to DMA corruption.
It is hard for me to elaborate on the code path because you haven't provided a test case.
Could you please provide reproduction steps along with the description of the issue?

> timeout scenary, and the looping in function i40e_vc_reset_vf is useless.
> Waiting for 120ms will cover most normal scenary. And the caller function
> should try again when timeout or accept that resetting vf failed.
> 
> Signed-off-by: Zhengchao Shao <shaozhengchao@huawei.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index d01fb592778c..42262009a00c 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -1564,11 +1564,17 @@ bool i40e_reset_vf(struct i40e_vf *vf, bool flr)
>  	if (flr)
>  		usleep_range(10000, 20000);
> 
> -	if (!rsd)
> -		dev_err(&pf->pdev->dev, "VF reset check timeout on VF %d\n",
> -			vf->vf_id);
>  	usleep_range(10000, 20000);
> 
> +	if (!rsd) {
> +		reg = rd32(hw, I40E_VPGEN_VFRSTAT(vf->vf_id));
> +		if (!(reg & I40E_VPGEN_VFRSTAT_VFRD_MASK)) {
> +			dev_err(&pf->pdev->dev, "VF reset check timeout on VF
> %d\n",
> +				vf->vf_id);
> +			return false;

I think this could introduce the bug since you are never calling:
clear_bit(__I40E_VF_DISABLE, pf->state);

So the next time you enter this function the bit is still set and you'll return.

This solution could work if you move the cleanups to the i40e_vc_reset_vf when the timeout happens.
Still I'd like to see a test case and what is not working.

> +		}
> +	}
> +
>  	/* On initial reset, we don't have any queues to disable */
>  	if (vf->lan_vsi_idx != 0)
>  		i40e_vsi_stop_rings(pf->vsi[vf->lan_vsi_idx]);
> --
> 2.17.1
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
