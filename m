Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D6D982679E
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Jan 2024 05:47:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6AF33401A2;
	Mon,  8 Jan 2024 04:47:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6AF33401A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704689272;
	bh=y6XOSPrGh95hxo4BFbHgcpqPTCBGqDMLRsKFuxtJp5o=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=X8VEbAR2bocyGiXCIk16VM0q1lMr2mC/3+LVK+pyK0oc2s4Y3y5EMMwAEvtOottQR
	 nVN0WXOCUL45BHepNBMpsZQHxDA5iTXajj+KMh8Xwmv1k3PuDrBEQcln7Y+dtuCq78
	 AboRdbNB7IPbtMCFiCsIDEQDsWuqk86KqH1t+AUlS7ZSdJQ1Fd1t7yhTNq+CDBdMMY
	 Ejnhr2Q4aZdCm2MHqWMcfmw7ZK4h3814CFff+JMaNSuO0KJ6UmiG6R/5i0bCJx6qNQ
	 uonosCYG/tiaEohB9A2ilndaKsbrrpml9dspF58WukpCYPAum8y4vFJl8mQIFZppeG
	 fiI1Q5YGSyS4w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sJS1YiPyG9_P; Mon,  8 Jan 2024 04:47:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 72DB9400F2;
	Mon,  8 Jan 2024 04:47:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 72DB9400F2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E7B7E1BF387
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jan 2024 04:47:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B5FED416B1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jan 2024 04:47:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B5FED416B1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zcoRZw1yu7g1 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jan 2024 04:47:45 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 08C0E4146F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jan 2024 04:47:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 08C0E4146F
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="5164247"
X-IronPort-AV: E=Sophos;i="6.04,340,1695711600"; 
   d="scan'208";a="5164247"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2024 20:47:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="781305118"
X-IronPort-AV: E=Sophos;i="6.04,340,1695711600"; d="scan'208";a="781305118"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Jan 2024 20:47:44 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 7 Jan 2024 20:47:43 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 7 Jan 2024 20:47:43 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 7 Jan 2024 20:47:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TxvhQgL3Yzan7LyVrfh7X9BTyHPRpmf9zZrw0yD8AoSBsx/ogVeqjanV08t5DcXFtRuUeumwuERRsf9bhfySmUcd7eVuu0jBIHqvm5InI/JXXgpsloxo8BN5dbB1UtUIIdGnY2UBNWgpKzS0oPm+bxnsoS5nmaQENNLSgJ4SRjYlE9wsY759ItaW0sgx0/2T0EQhG1GqJXs4VANkTD0q1wke8xKtjJ36Xn6kCS6FHXmQqUJsJlK3jnTj+3kXyluxWdgz0IMDSNQcEVKl5pJYCazh/4FEhgseRQT1kOhd5kaVeojt1YmKHjLCLu38z+h+pJIAyuJa6cK0PIG0Z3m1Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y6XOSPrGh95hxo4BFbHgcpqPTCBGqDMLRsKFuxtJp5o=;
 b=IqWXrfXhNvQhECfSELtZtxMQJa6gmmjXj0AJnDxroUnYqDpMDB2A79PpCO9dtucicEwWMDt2A4O9Z+8uGjZK77/Z+u8KGAA7mRiiYkqtxbcRIWJRgsb35ihEpfFZCdP/gs2Qg1jdc3WXh4O1ld6Q/PYX7ZCJZDVXQjW1D7pL33DYOZVWU27VmXbVZ02RDSBvi8H3vG6ypVP53r8QqAZgYJi0feIshA02VjwNdins26LUBka3jLOz8B3pXNTqoBTmcJfggMkBOmRKL4JBqb9U6Sg2/FCtE6lTID/1u2n5yajg2munctBCz5PTaxTujRTbI9Run24zahMbQ8R2fzGaFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by IA0PR11MB8354.namprd11.prod.outlook.com (2603:10b6:208:48c::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.21; Mon, 8 Jan
 2024 04:47:40 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::159c:7c99:e99e:a3b0]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::159c:7c99:e99e:a3b0%7]) with mapi id 15.20.7159.020; Mon, 8 Jan 2024
 04:47:40 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [linux-firmware] ice: update ice DDP package
 to 1.3.36.0
Thread-Index: AQHaPvegTlB6YCM5YUOrZEIEvqDRNbDPXQaQ
Date: Mon, 8 Jan 2024 04:47:40 +0000
Message-ID: <CYYPR11MB84292D3D19B750D67354E02BBD6B2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240104101904.18267-1-przemyslaw.kitszel@intel.com>
In-Reply-To: <20240104101904.18267-1-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|IA0PR11MB8354:EE_
x-ms-office365-filtering-correlation-id: 6f815442-9e07-4b4e-a903-08dc1004f1c7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XcfJi5fG4UzboiGQriD1c1crLQ9ZlMcxg+gNndaGzQfn36QB0KEWiexLxpUJptdaWHYrdnCszJ5TFPcdvQcPrExK4rOtVLS4FGVSoHb5MU6fUiLhqFPrhaeNwZk7oOLV6H78II2AeJ71pkmUzLCn7dy69HGXpb9CMCh8+X2Qws4U55qkSLQ6+OKrSh9Nbhk5i0l74kvn9fmK06F92b3cU1FuW3xrjD/RJerNoGdegG9ecdbQJ/jXk7/GnAyfpTFUqCklABcYw3D6YlQcOpH70nEh/EMGSyiLG9yhfQDMx/9PtKQijonAQoZj3gwwkVXIDC/QBfi4saEjls/k7thK48b1yozqkNv8RGPzHMzbhg1uZmX+8P8M3gB6w4atLTRcdRMhHxwgr9kuEA4XKItzfe2ZeH6IQEDMx9FdZATJ95y4WDTCm5tlIOQoDzIqvZrK1zjzcthETNSVgks5xwds2VB3VgzuiovVECjERZ/MNM8zxKPIcRbcstgKt0YO0/Jkl7TIQi3FRB8dnolN1zr07jq3vY3QHDDNS566AoAKDxpjEri4W8fV1p+t++tHhVUNCTDw1kQgPl1JWUeNaFtj2PXQREONd1RsU8VuhTs2BSqYYluDjRNP/DfFaETL/u6g
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(396003)(136003)(366004)(346002)(230922051799003)(1800799012)(64100799003)(186009)(451199024)(41300700001)(55016003)(53546011)(6506007)(33656002)(7696005)(83380400001)(71200400001)(38070700009)(76116006)(66946007)(2906002)(64756008)(66446008)(66476007)(66556008)(110136005)(54906003)(316002)(38100700002)(122000001)(26005)(478600001)(9686003)(55236004)(107886003)(82960400001)(86362001)(5660300002)(8936002)(4326008)(8676002)(52536014)(15650500001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KMi8OJK4EkYcigy0csfbcVesItzkYw67uBGYGhD+9ZTJmCOjhB95jL1MOzd0?=
 =?us-ascii?Q?+ZuFarY5t6PH6ZAinQN0jYeLXB+Zl9H7e++ATKyi86zjWmXMeV6qisY01LUH?=
 =?us-ascii?Q?aQbqbou0r/QxiCrT6hHwWAhB9TYu+zlGtfvqrzX1n3fsPrsrsubEcCcoA6f5?=
 =?us-ascii?Q?C+YNohXiGxW3Ia69oUjYyH33m1Cdy8Wo1j/c8aM99XQaP76ko6FpTeub4+0+?=
 =?us-ascii?Q?D/pP2Kn5fYs+VXN7QDiY8ZJrvcK9+9U7TeeO9fluHhvBMpTmy9G2CNWGAESo?=
 =?us-ascii?Q?HTNcEqnwFrO5sye/MQnCNp1FvwFdzrp6UC7+VgRQxoOcsv1vWHOtnFlCdmzf?=
 =?us-ascii?Q?OasJ4XrdCI6eh4808tm6MEkGg7BVooFFspF/tQmslpPHOp0+Q5TYLszusj6H?=
 =?us-ascii?Q?RI9l7nuH4izKYC2MoFSwcxVGGTrgSpVV4cee5wLb/5n/ZUgZX9eAq3moIO1t?=
 =?us-ascii?Q?Rosk9XTN+JWoZqyOM6wUP3peaGoudDzlbkQOWVvWYEHlsm2sO7nVesymyxe+?=
 =?us-ascii?Q?l9m9kNSWGeV06M93+jJIwrFc7Z6seECL93qLW1PH78DdO3i9LODqaGRsWHWU?=
 =?us-ascii?Q?ibZlHyORgkTQNfsWwxVpSTV8BmCtfXzYFd43S88lIEJhIIVFFEkojTxS/zVL?=
 =?us-ascii?Q?IJ/uAd1al5q9stHGSFgYlk4VSE1TaugXt9/AzAZUY/sQ9uNcB7JyCn67nS/q?=
 =?us-ascii?Q?Z6WwSZTWvtqQMPK0bfGAm1E+nfnvdFmcv5Q26DZz2KlIyBEFBtcK6oeSCC9T?=
 =?us-ascii?Q?fhPi93ePeTjguH6DoEFEROjxgGv1xJ3/JC5DYQknzzplw2XBG2kSwW5qm8v4?=
 =?us-ascii?Q?w3HmrgDa3mRiHF5rQXzm4FUtDZah0445R4smAzfGlnJr/2+t3qurUM7TBFqr?=
 =?us-ascii?Q?STUi7E+aWSPstLNkPoeamLqxvdX4lVgNnFciJHewVdH32jWdKTAhSy4lGNMG?=
 =?us-ascii?Q?p9Omse9RJ40Z7P9oHjZroMbwP76eqjNbOkR4U3Hg1bFaR72f3rv9EESk2s4l?=
 =?us-ascii?Q?rt8YsvR/f08jCZElfr4parPCD/ZokLFzf5nexEUC6u84TTW0yB/N8e5PjPrx?=
 =?us-ascii?Q?PAW0gTgcTyC/QrU5nyhYlQLvC8XPWbR5qYq0UpkJXFW3Ye8JG9TB0WTa/Xyz?=
 =?us-ascii?Q?Afcfm2XRTPo/IeFoZHso4eXDSvCl4VivJTZgpvb8FvQZ9C8oXb4yqmMljMIK?=
 =?us-ascii?Q?cOwfnGyaqMjKoG7um1CcR/WIc9bOGZdwn2DDz67opBpjgCCE7mh3LGwKyLi1?=
 =?us-ascii?Q?b7r3vQGaD9TvZaLrHI+4jBkxdMmTKMyQttJ0OTyr6U5plX4YyQ0XfchqJlxt?=
 =?us-ascii?Q?s3x4FSs7szrNvxHW/pdHJcQoKsMdomPHSAEywBPMoM/zoeUJmDFDsmYeqVQC?=
 =?us-ascii?Q?j/8+BzrXmES2LrYf1MMil8FnnUoXteSrmsjhotKRX9fptqlFCpkzFliXkXjG?=
 =?us-ascii?Q?MYJdyzmMVR4HiYZWQ4uUINAl8gy3tOb58mhVfTOosNkBLBNf2+yVZzWdvO/K?=
 =?us-ascii?Q?zGIFykEww0vwl0uYkDJ+PC8WwHKPj4Pchkt1y64LUESGpu6nVRNI9YYSJkAO?=
 =?us-ascii?Q?3ioAPztmMFQaB+qXhnPur+EXsxSuuRD1ichyLrEggEQrnW2yYvv/22Bv0n0E?=
 =?us-ascii?Q?UA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f815442-9e07-4b4e-a903-08dc1004f1c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2024 04:47:40.1643 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KX4TchJOad24UYO6cjLxJiLPrJo+3Yup7aEscNG86R1kxZV4mmWYYNovX3t+t/6RSgoONjJ/cKYKK0Xb9SWqCRQqLo1bIblmvTXJW74RxzGm6J6H+lp1Iww6t/6bvHrv
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8354
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704689265; x=1736225265;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WeY4dR7s5Q69Jxdm6a5MkgxKxQW8HGqKXYc7tmYu8HY=;
 b=UpOSJcmaNJ/SM1hvgujMYYMrYLjZnlfoyOfv4ZLQqUM2jVZ4gfwsK3Kz
 +VsyJALpXiY06P8QrHBAJJEhRtO3YDayuqBK+KzU6VGryC5B0VN3Ypjdw
 u5mAod/j7MGM/cHZTf1HFKsaamQdRIFUMlWn6ZdMGz0JLKlWOOpjf1AS9
 UCV0Q+ghMBSM6Ep+1IyyavahTtKJBYyLvicgTQkkN+3KsJcQrEzDr/A9x
 Yu9OJAj16FQ7dR2jg25s3p27w8zrAJnXLEIHyLvvcX3MklMmpQIlzVFxQ
 Krbv9i668GT0RPhUuSfsDRNY3CfS29uTIiFEKgG9f+leNA9u/FktDYsXM
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UpOSJcma
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [linux-firmware] ice: update ice DDP package
 to 1.3.36.0
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
Cc: "Deb, Shekhar" <shekhar.deb@intel.com>, "Limaye,
 Priya" <priya.limaye@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
rzemek Kitszel
> Sent: Thursday, January 4, 2024 3:49 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Deb, Shekhar <shekhar.deb@intel.com>; Nguyen, Anthony L <anthony.l.ng=
uyen@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Limaye=
, Priya <priya.limaye@intel.com>
> Subject: [Intel-wired-lan] [linux-firmware] ice: update ice DDP package t=
o 1.3.36.0
>
> Change log since 1.3.35.0:
> - add support for E825C device family support
>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>  WHENCE                                        |   4 ++--
>  .../{ice-1.3.35.0.pkg =3D> ice-1.3.36.0.pkg}    | Bin 692776 -> 692776 b=
ytes
>  2 files changed, 2 insertions(+), 2 deletions(-)
>  rename intel/ice/ddp/{ice-1.3.35.0.pkg =3D> ice-1.3.36.0.pkg} (98%)
>
> diff --git a/WHENCE b/WHENCE
> index 06fb7a45aa33..43f3916638b9 100644
> --- a/WHENCE
> +++ b/WHENCE
> @@ -6138,8 +6138,8 @@ Licence: Redistributable. See LICENSE.amlogic_vdec =
for details.
>=20
>  Driver: ice - Intel(R) Ethernet Connection E800 Series
>=20
> -File: intel/ice/ddp/ice-1.3.35.0.pkg
> -Link: intel/ice/ddp/ice.pkg -> ice-1.3.35.0.pkg
> +File: intel/ice/ddp/ice-1.3.36.0.pkg
> +Link: intel/ice/ddp/ice.pkg -> ice-1.3.36.0.pkg
>  File: intel/ice/ddp-lag/ice_lag-1.3.1.0.pkg
>=20
>  License: Redistributable. See LICENSE.ice for details

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

