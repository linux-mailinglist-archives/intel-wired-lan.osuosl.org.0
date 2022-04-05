Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF804F2B96
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Apr 2022 13:11:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5948B81B3E;
	Tue,  5 Apr 2022 11:11:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A3VO7wHqxHih; Tue,  5 Apr 2022 11:11:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 549FE81B0A;
	Tue,  5 Apr 2022 11:11:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 101721BF847
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Apr 2022 11:11:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EFDE7410A2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Apr 2022 11:11:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7nl0E_DCO4qx for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Apr 2022 11:11:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 02A404109E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Apr 2022 11:11:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649157083; x=1680693083;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mrMJEALNXXwuZLb5FofHs7izjWbLlCjBXy1pqQUKIE8=;
 b=oKlENzPmuP5e5IQk+uiAKeoKzv+td3Mdqjbn1OepYCdg3s73Pu3ZogP3
 els/uVUyG1jjttpJhmog7CynmlkoxyZnnHhap8CNhjAOPycFclw133fdi
 ItF4/MPR3H6klxYO6l3Ih1u1MOc0WdKtixQ3rNS86WPTxuku0+LfGlBV1
 LTbQDmPuhMwVPhwixrjO+ji9WNwM6MAC9vWlqzq1kMK0N4ulPUw9x6M51
 EjfuRN6iWDgZUiXtwgAihbW+1m3k+AABt+v0IEy3Z5g9IHEHbYiAITenn
 23XzVdyy0Blef4u1q/0OQMc8Z5NbB8Clkfe8sXHi23DZP8TMHRA1y+44w A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10307"; a="259554550"
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="259554550"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 04:11:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="569835856"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga008.jf.intel.com with ESMTP; 05 Apr 2022 04:11:21 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 5 Apr 2022 04:11:20 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 5 Apr 2022 04:11:20 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 5 Apr 2022 04:11:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k40KheKF0uR6iRHtH2WQiBaftfePI+QR/h+nFdEFhp1cR5ifFQBzQffN5xpZaCzz05CwGffSNcSofWU2bnTwZd+b4hrPB9FZsSwrGdUt7ge0HhxO+tI6BfQFV2RuK3SGBkOclTfW20vLwB4gp6xN6HJdWiYsPt1Pq4SGo4O4OYV8KZm673k+mQIhtiOdi1KTKBp1laC8QEflSY5Dr1Ffr29//t8b9lWoGLE/fV4ik5oaEfgzkrVWvSZyTXZ2Iba4H8SgEiBgqjeRzUuwJqFex/EqU0rEfWYXYVB/wcVuGc0zS2TdfrugUNj8JOwzm2KsIC2Fy5rs/3MYoh+Vl9GxHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dQPsMs3E9prjalHl9t2pW4MZ0dkSYlKdKxkZdD4loJU=;
 b=dP40OfHHxHJ6Y5kGu9qWA6GTtyfV5N1i5RqNz57zzA1ft3uLWslrNOp4hA3XQxlNqSg0Gz03/7bf8q9se3aG2jUWlr+22kmCt4ERuQgUYNs3dufpS5a8BA4N5y6TUcAiQlYH7vEFLH6mGxf+llxpakcygQUSLsDHSFj+dlw9zYuf30iQ/ZJkDLjmP9od91BDJ9ft0HwIOU32w7u/zGGteY3pRna9EF8GHUXamNBpXYjV5vtUV4rJ7yXbNe9+hP+V24i0MkIMhPOsoArtnDRKMdvPNT+FR7SbysKiQaLDrkdFR3pBbwAmtdN/RT/cJVpjAwI8PimJ1VQpH2sPe1SLRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BN7PR11MB2802.namprd11.prod.outlook.com (2603:10b6:406:b7::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5123.31; Tue, 5 Apr
 2022 11:11:18 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::b9ca:a49f:aea1:7d13]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::b9ca:a49f:aea1:7d13%7]) with mapi id 15.20.5123.030; Tue, 5 Apr 2022
 11:11:18 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Nabil S. Alramli" <dev@nalramli.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next-queue] Add vsi.tx_restart to i40e
 ethtool stats
Thread-Index: AQHYP73erG/jFzY9lk2VUJ5Swpy/a6zhPCYQ
Date: Tue, 5 Apr 2022 11:11:18 +0000
Message-ID: <BYAPR11MB3367D7184876E790CB12E205FCE49@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220324200338.121394-1-dev@nalramli.com>
In-Reply-To: <20220324200338.121394-1-dev@nalramli.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a766f133-f98d-45d7-2057-08da16f50225
x-ms-traffictypediagnostic: BN7PR11MB2802:EE_
x-microsoft-antispam-prvs: <BN7PR11MB28025EA16B6176F9E48186D4FCE49@BN7PR11MB2802.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2a7m072X3srsIiP8sJvOu+iOhzUoZQ9anjbdOdw12Nee398Z8f4+XEU48dNHqLf7JxbHjfOCkTmvriNthutkDG2Gxch6cBa9ctLN0nSbZk9wEA7NeLeq3UnOgzsc5qixg9DZmmKgQgMhfRj52sTqMj5+ixYFU6PaewB6WTJerRfZlJKNbAc/E/wytMViUcgm6lftVpW/gadw4npIAj9hUooMB/WS/VJQusdbtws6ExP09FR/a0k8Q6634735W42OJ9/Can98bwhyjK/QSnsPVAgp/DSz8QzepIeG6/kyucTBztjVWIz0U1aYtq1WTkS58HfSuc+YFe9HsrbZ4hmOXcWIjaOkE1m0BZEC3xmyfNX/adD1tDYbqHcSpDK85veTjyen+SqUrUCCqTxhbqhKKUdcifEGYk1jogjgP5OFC8kpWOmu+UwMDx4eF/nQP3o2UB9WkUN13uaylOsRzx47aXdZEm22pSQN1W8Gp3l6DMEMwkt2nH8eZ1lWLKuXiOL4hXhaFQyYUXoWNbue8cltuwZLPedj40Mt+tq9Ef4xPpm9aAnOzIpdHBf5OiDCjI2cyjoxXMIOFBbk8RRvnPeN0R9EH79vkbmTrZUaEP3YtPlP0LsFAMkObacDd8ZB/dz1r1/aeuUrparLihV+dlX29FfQyT9FV+KnsU75Tzzs7QEUyKHcCWAUcXPQbblMforq7i64zqu6limhMfme+0+RfA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(66946007)(76116006)(4326008)(66446008)(38100700002)(5660300002)(38070700005)(64756008)(86362001)(71200400001)(9686003)(52536014)(53546011)(2906002)(33656002)(8936002)(66476007)(66556008)(4744005)(8676002)(6506007)(508600001)(110136005)(83380400001)(54906003)(55016003)(316002)(82960400001)(26005)(186003)(122000001)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1mVPZVDhT7EfQPjvGNhzhiH3Bo1Qy9nEJp01QRJxqL4B0w4WGaV7uIO6ua8B?=
 =?us-ascii?Q?aNZYJZxum8rIHD+mLd/maAETF1kivBfCwZbCCcTD6oPOabiAkskK4avYsMaT?=
 =?us-ascii?Q?L3QgE7aUmW3ifeuuneBRuDQRLTk58iizikwQIUDMTqe4x29ojeucBnwrVJkZ?=
 =?us-ascii?Q?Jbj5t8w3mOXC2F2a8zBpZ77AfM8L9a7GRNbWmw96aTnLZ5vZ6bo4Wjj09et/?=
 =?us-ascii?Q?gfWshej90YaH1KRI3Zn1MAaNI1q2sAQyzedxNqyzMDy9dJIyDFDcaz4X+t5e?=
 =?us-ascii?Q?k3XuX/EoH5vS/eCg88eX+3EWH7yt4d6pfuR7aKrUWmNh3wAoET+eIg4vDpif?=
 =?us-ascii?Q?75QCFJ7AOwa3NNtoS1Tg4h6zFMIzpMwC3EGbdLBrhcZdZjoZJx1g/U1Gu2fK?=
 =?us-ascii?Q?0ASLNSREhl2+l2U4NCB10IjxHBZjA9EMf++aIR/9DBmR49CgCXbsr1BveTN1?=
 =?us-ascii?Q?XPlsjjSXggyqb0YwKrVwLdTyCfBXYCNexZBw1yZ54CLQWf1kdoyviz6dOyCS?=
 =?us-ascii?Q?gcBhaVQ2qxQAtByraW7FR/fh/wyiyjwQQyQsJGr5iSP/A5JJXv2VjyQIG6UJ?=
 =?us-ascii?Q?P1cjaVj3efkbit6weAg14Pd+1giXPkw/oAV3mHskrDb6vYjFSGnLVTfnXtea?=
 =?us-ascii?Q?q3M9N6YFiXaadK8SS7gZU/8G4KvA5F17Xey/8oyKotfCvGuODIpKQZWx7wiC?=
 =?us-ascii?Q?x11ryFEuEp2j/88Lym59TPbdR51jzFMt2XHvOP1y+deDUC1Js75oD4Ij4Lmr?=
 =?us-ascii?Q?kaA8nSspCq+iY1Yovwulk6RMKVC9/6K/k/tgUaifrQ0Wuyy4rkyaMDWxaOt7?=
 =?us-ascii?Q?cVNYatU6Q4j1bs2LhimONs6A74ZkeFsXmJS64hRyIIm6LP3Ck5vV1z1DeD7R?=
 =?us-ascii?Q?hBCpSaSaN5ubEFXnJ8gr0O7eznJEV16UoaUC6DV3OSIsbq0aISiT5d2x2DkV?=
 =?us-ascii?Q?Jhic2PIamuKErKO7tuwrSF6Cq0LgtcdGiuq5szZ2oKMHs1LVOo+T4lm3vlQh?=
 =?us-ascii?Q?Fnt6Q5V1wT9NJsaaSFgF0PEdUE2tq7WmB1h3BPnGVgWuhBFVFPl5lOy8FPo8?=
 =?us-ascii?Q?ZXVzXWh1fRopYHiKuZ7pfNbbmPSCijF5S1o8tNS2VbukamoZ7BbCgcr6dvwK?=
 =?us-ascii?Q?ucof1pa5BjFrPe/iPwJBxocISF5Q8Np0d7u+TvbCFpG2sbjArDvXHkHefHNd?=
 =?us-ascii?Q?pPQ5bOJV5ew5x+ejC7aXl3HDDB6HH5pdMGTXFw9JKjGiiZepqK918AnzH9nm?=
 =?us-ascii?Q?Is8cgj69Gnzfm/Y72IQ/liURlYDAqccKXU2TI7KFmRcMUx8HPG2a4AW2/QgD?=
 =?us-ascii?Q?iAhCOvFncvGytAUE7+hmXkWNOV85tFVlwyqnZ6GZYHNvQgCfbXj0vIHedTih?=
 =?us-ascii?Q?u3ZdRuEG8UPSUe8Q+y0NC0YOZDRpIIYvJ78SAcC+VGlFqybuUQGgp1+kP5q7?=
 =?us-ascii?Q?ZiphMdc0/8+Vz0+jEZRC+KzzzbD+eyPHMwj7Kfvm3Fr2nDs3oHALOH+8FsUb?=
 =?us-ascii?Q?7UoJxYk+Cv4VBVnvYMsOckZhqgALQ7wf/ziHfrNXvix2YPZOqjmkiQcARooy?=
 =?us-ascii?Q?f9xA78WtCCpTLYZo2XDa9+UjyKDdpw/XH+tJeCEVPQEPks7XVGdhYq9lWCWk?=
 =?us-ascii?Q?cuG/Q9aBtpCq1NvQsD8WjoQ2QNq2kMpCSvZu1SPTGqlIBtPC4acLCox7q7cL?=
 =?us-ascii?Q?wTtNDSJ+YjIahqyRkR214LG6hcky2HDq0Di6/t4HgvMmT6rr0Iy+CqnE1N4E?=
 =?us-ascii?Q?wGoiKRAaig=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a766f133-f98d-45d7-2057-08da16f50225
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2022 11:11:18.4038 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HCaPBQdiXjPa/4eJQMOc7x6Bu1qu4nyxUlCpaU708niBxcl9S6HMyes8k2eUokV2dCbxOZCr6b0kmz5SebJJOQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2802
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [next-queue] Add vsi.tx_restart to i40e
 ethtool stats
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
Cc: "jdamato@fastly.com" <jdamato@fastly.com>,
 "nalramli@fastly.com" <nalramli@fastly.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Nabil S. Alramli
> Sent: Friday, March 25, 2022 1:34 AM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; kuba@kernel.org; intel-wired-
> lan@lists.osuosl.org
> Cc: jdamato@fastly.com; nalramli@fastly.com; Nabil S. Alramli
> <dev@nalramli.com>
> Subject: [Intel-wired-lan] [next-queue] Add vsi.tx_restart to i40e ethtool
> stats
> 
> Add vsi.tx_restart to the i40e driver ethtool statistics
> 
> Signed-off-by: Nabil S. Alramli <dev@nalramli.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 1 +
>  1 file changed, 1 insertion(+)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
