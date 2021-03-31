Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 479933509DA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Mar 2021 23:58:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E0630849D5;
	Wed, 31 Mar 2021 21:58:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Dl04OU_w5dKs; Wed, 31 Mar 2021 21:58:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E409D849CA;
	Wed, 31 Mar 2021 21:58:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9D2181BF41E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:58:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8C70C849CA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:58:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nLAHyx89HSSB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Mar 2021 21:58:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E2B0184983
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:58:47 +0000 (UTC)
IronPort-SDR: RBagyNoqwvU6Y7J3tfbBPGLR+o4TDzgwC2HIs6nFwlKHHKbvcceYA+RrxH4Edcqk4I1z4qkegn
 mpnKNkzCJw+Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9940"; a="172130321"
X-IronPort-AV: E=Sophos;i="5.81,295,1610438400"; d="scan'208";a="172130321"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2021 14:58:47 -0700
IronPort-SDR: U8Th1cwPs83w/8D1HjU2b7/0GujNWP6OjnxU4mQcFq/BfCGJGLnSZ9YcKiiiucz8cgJkDkp+QF
 JMrf8toQjeIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,295,1610438400"; d="scan'208";a="527941423"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 31 Mar 2021 14:58:47 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 31 Mar 2021 14:58:46 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 31 Mar 2021 14:58:46 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 31 Mar 2021 14:58:46 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 31 Mar 2021 14:58:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G+E7DvjBa9k35HOBDKYJwiC4Wkgq/BRpT3pX59e5ESpRr4fl2OHfZqQ8T52V2EyA7nkesYgjysP9NSCq8rhq6AePwkPGTR+C2HeLYTl72lI1VVCsh0iUJA083jIrPRWvMgVvYfOGjOBKV1/l0Wu+X7lTI6jnlQjqYyr/3xYQBPBYHn8JEWclXzkxtgfvn1TZtwMArrI77FNXZDtsYw9VXWbiTFGKIrmJQGAM5p59vtQwf3ZrPPohvqxLyAOXXbuvKWTdEtXsJxMYGWPPeb/WuOQaAdv793/MJcyhafobM8vU4ieX4EIFrflSokh/7yN3VN+qduyCVTRwoPcmq8D/yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qAaVUYusQWX1QZEzTzjpc+f/CsjcV42fuQYKEwGAyaI=;
 b=GWFwk8YLE+tTNCjt955oxTbdPfI5t5+IrbEcm8BGfeQnR4ID4qVifeqIeK/Zs6jYmI8Ej/q9at0rzghdoM/9BD1NNY1eSBeiACXx10qUiHOy1L6rgHr6oqBQ8kqFgWF3dSCuqU2NOjST78hRfocvfG+b9YJ7UD+66VBL84IjuTr8NfytIEgXu0Zx4doylcmDFwY+kS9nmy3vD+PJA5SCwGi0jyqLaulFjkdrs6l7HRxbsYkZKbo1bjghM1v7O8dufQTcZRpi+w+D46S84sLgAhdoRl2JTcwkrJnllAowDMR3hukI9L1indtGISpOpKtz6yNOyo88tiwGRfZXqyy2Iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qAaVUYusQWX1QZEzTzjpc+f/CsjcV42fuQYKEwGAyaI=;
 b=wyIBJdQJoAa0NhGMkIY72k8u003M3Nfs5GWmjDYylQVUfG+boVWAlSwud0+IBQuoKTDGQfly+s3vTICAYZ1knBA3fT2+0jU1d5UNM18kv3PwcJtzmilsTmp6cd4reN9O8FOlSSJdLwA9pR3RUhYuXni0KBZ0phlth0zrf8SHrSA=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR1101MB2335.namprd11.prod.outlook.com (2603:10b6:300:73::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.26; Wed, 31 Mar
 2021 21:58:45 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.3977.033; Wed, 31 Mar 2021
 21:58:45 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S57 14/14] ice: Remove unnecessary
 checks in add/kill_vid ndo ops
Thread-Index: AQHXIciUqG9mJ39l9UKNXAVA64Ki86qermIg
Date: Wed, 31 Mar 2021 21:58:45 +0000
Message-ID: <CO1PR11MB5105169B0A49056943BE3A99FA7C9@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210325223517.17722-1-anthony.l.nguyen@intel.com>
 <20210325223517.17722-14-anthony.l.nguyen@intel.com>
In-Reply-To: <20210325223517.17722-14-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [71.236.132.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9dae98af-26ca-49d1-46fa-08d8f49027af
x-ms-traffictypediagnostic: MWHPR1101MB2335:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR1101MB2335552BD6C33C7B68F04FC0FA7C9@MWHPR1101MB2335.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: f9g4dQVxo3CzLWQ1BW4sKM7dBabMwROPwmg4fJ6J7XYlfmF+xp0w3R9NVvYcwnVTBDgDs3MvWPG1QguogGVvFF96v8sAA4CucQRUHtp3EyBy2EbOS7EUu7he8Yy3xthhYroTDScTen7ZWil7wFxjZPgSmKOt70JtklSHvO2cLAzvfRd+0cYpsVGDpXHjkWG0wJucia7K5eDXBAqbkW1bydVUmIgEb1rKkqRW+dYHtHOrdl8Ycu2tbswk7SE1ISSimqUTfSxCA62/zyjLstxUtSOLtmogafkouy1lbzgGCMBib7Rkj1bavJ6lOORpKmAy8fRAe4bIM/1c+qSFJmvY4QDPmi9Ip/B6/oZ9bRCFPieYsF/e4Vu6uELWSBtqCJti4oK5D1Z8NREs4BShXojgOZDDeODIZ75IerHUZJjeOBdL6+3uDXx6mbwXVyxER2dUsCiYmj/hWJrDKMQ0BAuhzRWPuUJBmWHIC8Ud141QCz6uLWZCNDg9T6Nrc64DncEgv6koEzkfzHa4DxEbgn/nx2ctkNB0BatHfy++XwqytjpZTSjKoiydQxW3SKT/KVKTJbSR3vZ+oVYlwy0y4V39iiOHhmlWJcScQQKa22+l+pX/OJNOBNtemUhOhxxC27G6ucioCmJZBfXmi/J9HIFsvg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(376002)(39860400002)(366004)(346002)(136003)(316002)(33656002)(186003)(86362001)(26005)(7696005)(71200400001)(76116006)(53546011)(4744005)(5660300002)(55016002)(6506007)(9686003)(8936002)(83380400001)(2906002)(38100700001)(110136005)(52536014)(478600001)(66946007)(66446008)(66556008)(66476007)(64756008)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?nMCHViGGxoq3geQNJvt+3FB7UyEVygnYuqAQpaZ5hnQGtG4te9GsBhJ1a+bx?=
 =?us-ascii?Q?HJ8+CcxxWGATz5F6E6HGgk6oWQSRtd0k1F34JTAOIp18a4DZE1XiTTYaayho?=
 =?us-ascii?Q?ZXFLqN99JDvQFUTlcvvGIt6kXZrqeKQ73zv0HtV7apBMzEgGFq3T0pf7URvE?=
 =?us-ascii?Q?8N/YXBIn8lcRE/XNA8bzA1lirTVpcXRdQNptfXWu68WHoMD2N5tuRm0h29HM?=
 =?us-ascii?Q?VXEVVsu9V0xsJ1jGgI6jPIzFueHPFblI7Vtwj2LJbMtUQGl0bDsjVZVxB2HU?=
 =?us-ascii?Q?d/HWhURj14mBHBihtRIaMolLDP8jo8EqewLQJPuWcnzZUQVjw1BN5ZX229xw?=
 =?us-ascii?Q?Gw9Va12bg+0EL+OhG45kcwhHATkJTnAiLBQeiRF1jk8WQekXGBH93lE6c5cq?=
 =?us-ascii?Q?xz47Qd/cjIfPEbgeci4aSKOipjVTWtfHh8dKuuW1emejkp+BEkE9FOmief5g?=
 =?us-ascii?Q?dw42/8FLFkT85CvpY+ml6txghfEQPHUEghrdJbj60bomsPgcikYr2NHCS9To?=
 =?us-ascii?Q?oxaCoPjAgCzvjiVJ1V4v4XlV+t+LIodVQqUDF5WjPdcisruiASR1vLHuxa7B?=
 =?us-ascii?Q?RAFKPvh1uBKa3F9KPEQAhFHEwDFJ3Jkz0EQ2auESvMGzyKYeVQsfIcRRPhj0?=
 =?us-ascii?Q?FN0uI52osXL04es7foMFLIN+geO6xvdFXFa5dVPRPZmCLhf3KAVavvEj0jxv?=
 =?us-ascii?Q?jJReW88W/ZuPgwJBd3AcMTqiQlZnphXTb9dmZF3kIgqlaBXzTk+UObfPPMjS?=
 =?us-ascii?Q?7sYLDS212JXha8+kEh1nVBjIzfn28gu3djeXNpsIOGNYsrLpcpVVuNx3jJxT?=
 =?us-ascii?Q?l+qjZC+KpR0oXMiFUsEKBgtGFVWhRu5rsgTleT/mheYMCRHS2z8/UQbS3DLu?=
 =?us-ascii?Q?hmR+otTa5pKmwfny1ZK/m4XggjLRzhWphtOTmKbkjB4bOfYBtVxrN7DLpGBP?=
 =?us-ascii?Q?77YRer8W++9K/9xR1nZgTu+jVdWXB+yX8nWej3dVOgoVuFOJefQ0JpgaqTwC?=
 =?us-ascii?Q?f0l6HneH5Bey3XnWp1j3niXmHvrmmtnekRlcgMBL8Sp3YK8EF80JxOcPSZz4?=
 =?us-ascii?Q?tzpwZ4HJYraaap4DXX2EIswOOyvt3qMy1bTEKdc1ngLOGPuJ9l0YFfpphDqa?=
 =?us-ascii?Q?ps1GNYeeCo/iVXcLC8i+mp3qdbXMgOG1SG5d2U6p0P/4OLSsKWpUlNG8iPUJ?=
 =?us-ascii?Q?lMwHbzUI9vFhQ2e9rM/CWUpnWg5A7TPOtBBSbSuY11ASxp6r3aqwO5l+sLbI?=
 =?us-ascii?Q?Pv4ukHx4icaHdLnbVac/M+E478BcMuRRRYw/nrZKnUrxdl+G/FdhqC6+MfND?=
 =?us-ascii?Q?ycJVVZMbCkMiuPI5M/w4xFZ/?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9dae98af-26ca-49d1-46fa-08d8f49027af
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2021 21:58:45.0245 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0ypk84oQLAJcndA4Cn5OmM/iwjCfcKqojVSp5++Tfqk06hPSGnTxnCUidK2OTijzZM0sGXVMp3v0OS3m0WoYrBOv11MvUBqZ9ZwHty5yfGM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2335
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S57 14/14] ice: Remove unnecessary
 checks in add/kill_vid ndo ops
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

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Thursday, March 25, 2021 3:35 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S57 14/14] ice: Remove unnecessary
> checks in add/kill_vid ndo ops
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently the driver is doing two unnecessary checks. First both ops are
> checking if the VLAN ID passed in is less than VLAN_N_VID and second both
> ops are checking to see if a port VLAN is configured on the VSI.
> 
> The first check is already handled by the 8021q driver so this is an
> unnecessary check. The second check is unnecessary because the PF VSI is
> never put into a port VLAN.
> 
> Remove these checks.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 12 ------------
>  1 file changed, 12 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
