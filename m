Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DE74345382
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Mar 2021 00:58:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 015CF83D40;
	Mon, 22 Mar 2021 23:58:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hVF-UP7R-ysR; Mon, 22 Mar 2021 23:58:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0414983D44;
	Mon, 22 Mar 2021 23:58:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 785811BF372
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Mar 2021 23:58:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5C8B040466
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Mar 2021 23:58:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1kc97oYS8Ugq for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Mar 2021 23:58:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6392B40463
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Mar 2021 23:58:45 +0000 (UTC)
IronPort-SDR: UmotD05H03330mc6Fnzpq0IadFjT3+Ew16sqwf5bwABoyrRA4S4y8DdZtGT896TB2Zx6nwi8af
 NP3A6RRNVNfQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9931"; a="190464213"
X-IronPort-AV: E=Sophos;i="5.81,269,1610438400"; d="scan'208";a="190464213"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2021 16:58:44 -0700
IronPort-SDR: bOf4Qewe6GcuK+WBQU8lhhK/eD24HajtFT3TvgelEEjUm1S7IqtCuW52NMiMwH1S8IMmHmmQ4S
 1KkQoO3Ze4XQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,269,1610438400"; d="scan'208";a="414709118"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga008.jf.intel.com with ESMTP; 22 Mar 2021 16:58:36 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 22 Mar 2021 16:58:35 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 22 Mar 2021 16:58:35 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 22 Mar 2021 16:58:35 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 22 Mar 2021 16:58:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Kfw/6QDzMt5Ko9SBBDP0U1ut1WYU7XPaiiHhDgFYpNQa7b0xs0yYhSbOtZXcWp6JGjelS2yslm35wCkKlCOXWmlqcVbBK93LJYIOc7oYc86qjtIDVYCRcpg9bd2xmZdwHzdcs/mT2PbthVS5ZOMVJTlWypp/M5NA0UPBI/4lvYq0C+VrlY548vuF+bxW/Wc2m4TW0JdO2Crt32ElMcBG0alWaTJDwhVT36g9SQmlhRQnlJvTZAeqmtwQ3PhqiWrJEMg7UaexDfK6rIYFxDzge3BYdvEBq5n2zUsMV2fwj7dJXGTacxlTzC1S0BMX2PSpgzXygWFnxU28/+GYVtLBcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6QhckFFY+JgodZeZ+vDFhFBNv1pyjwJTY2DoXMSfOOw=;
 b=nV4gWOFOuu+wm7iS/voEyKcrsLHamuPTK/aMDTPl3OY9RgiYqjh4VLAwTDHebQYkMgwLXv5AKmO7aeHVEvjc+xUSqPnhO3eG+aRv1bBd7sxw+TKgyQhI/uVkxmS13tbiLt5+YGheSFpuCqIwATUfoW1Z8Tx7yy+rI2BkR723QDp+xaVL/6qzPhRAn2YLt1LLdBH3yhN52m4XLbvxT0SFOr2Or03xrSAn8tpHYx5e0JjQbyzZQg2luFDLqbOTEY1w3YFqYE49MYCYcXGVP2TbIY4roCFyM4D5IuIpl7n+fJcln70OAP+eRxqu9snqOmsWbutaCJWTTJ+HzWHzCjUvoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6QhckFFY+JgodZeZ+vDFhFBNv1pyjwJTY2DoXMSfOOw=;
 b=RJ8M/i8c7I6wYSgMZIuAp2hccajYtuog6/VBhVxcOTq9voqdYX+4uJ7gmjLvIOfgctdnM/Gg3xjC8ZIavrOeuVDlfq/eu88bs2XjTu6kosYKeYSdRP6Ly6ZpmKvfqMX33OfhJrCbIHDItlsmudelfzULdKWXtSsj4Rrr4vS+4ds=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR1101MB2096.namprd11.prod.outlook.com (2603:10b6:301:58::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3955.23; Mon, 22 Mar
 2021 23:58:34 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.3955.027; Mon, 22 Mar 2021
 23:58:34 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net 09/13] ice: remove DCBNL_DEVRESET
 bit from PF state
Thread-Index: AQHXDIaQNxNHIijo8kCCAQpUbvSfIqqQ1Ubg
Date: Mon, 22 Mar 2021 23:58:34 +0000
Message-ID: <CO1PR11MB5105C9324DE7B831ED1DE1D4FA659@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210226211932.46683-1-anthony.l.nguyen@intel.com>
 <20210226211932.46683-9-anthony.l.nguyen@intel.com>
In-Reply-To: <20210226211932.46683-9-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 4441210b-6017-48ea-b053-08d8ed8e6711
x-ms-traffictypediagnostic: MWHPR1101MB2096:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR1101MB2096DBD36FC89BE53996A3C1FA659@MWHPR1101MB2096.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: s1NoN9P+9iOsCx9cdfuoPpQ22YJ/3otsCSMpW4ACYNvrx3v1aVbtfLaJaA6N/L20u/jaO8EscZeMO2vOKFp2q/9FqNKXgX79JOgkTdPCyqNqqzaSD+gbaxvxsgLBX0kayT+pSWo+W5fI/Dxp/XCEEDHKa/JFqI3aUo7ctZinbnwtcOtGoVaEAhOl+ebxztO2O8rwOAYD/CM2Z3ctersOgct/Xvja1NGHOetSupoYciah5x930tM8WULiCoMBHxOIG+sPkmXQFSqPuFYMKPe9liFsiaNC5NDVK0D2LT3VUoOIPHXx0ecToeRDN9UmW/1dVKObDCv1NLZewtxoLvSf8G0NYOG3iOfa9+lC6CA87z2cPMtgCQ8/bcx28SP0usKOWioggtLpaL+6tSMy8qeqj+sBnos412TXvMk/H8yeT7XtoeR24I/79B/krqV7LQxmACOkzmmcLFo14CXBYALNL9WmPwECbHoexIXm+RgRNglqSyKZYYIh/KUywCq+x4IA/z+EN0K7GmuUWMqr/BLiiAAJvWXTfCcTuXtgFlK2m3SBz1sPt5V4ZSx7PGcuudUgehi/SI53yAO6ttyobd2hNNN26akwsWg1MspbjlvjaF2JmHNozTNpMRvMC3Bj70CMTClgPkPr58iof4Hkgi9g3hRigGPKFes7AvUcZjEj8jo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(366004)(376002)(136003)(39860400002)(346002)(5660300002)(9686003)(7696005)(55016002)(52536014)(38100700001)(83380400001)(33656002)(66946007)(53546011)(66446008)(86362001)(64756008)(66476007)(2906002)(478600001)(110136005)(76116006)(26005)(66556008)(316002)(6506007)(186003)(8936002)(71200400001)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?qumNWEOlqfwCZ1aJAjhAnCss0JOmd3WPoRNYIzuIbY8iENxQJ+/TyLsPb6A2?=
 =?us-ascii?Q?UhJYx6dVK25VPnMtNgynKFF/Kdy4RFn1BdMNQSBL8fyD/mEnyQ3pxotj233j?=
 =?us-ascii?Q?lMlqa9CHVKJJxmX1o3dHQeD5EPMKzogCTvia+DnITlh+cF9pI5IAZVqAwgLe?=
 =?us-ascii?Q?Dnvy0Vf//P/N5yO2i45qkwjyVstwKds4tq+iFmSLr/hnpptY0HpavbOk4Mc4?=
 =?us-ascii?Q?Eh2En6rvH5nFxaCsjBJaC48yUQRabXQyp5Da+Xue6cQGGgyQ5BF7eTQs7FOY?=
 =?us-ascii?Q?22S4NeCB8E7efH+nOsQcdU44ogLeva1ldwPs96acM102AyJeXMh1B6+D7xie?=
 =?us-ascii?Q?HciBLyHxZ7NqFXyQLRgYMvK/a/T8mg0DSZ3TZk9At9ujmznUq/Gcdu1J6ReM?=
 =?us-ascii?Q?KCATHk+x64lI892hPfgkYgvQPbACOJ/+RJ54Il03sNbKRjEQctvF6ZlV/qDY?=
 =?us-ascii?Q?42fhMPvGFWLZAzAIsidXkhF6os2aHS+gIcfsjOm45vY446lTDdZbHxqnudHS?=
 =?us-ascii?Q?D/DaSOO+3B1QtPFjAcCHQl2EjJG+/VKx2RyFm7mmR0g4ZaYyoT38HQJR2/Wj?=
 =?us-ascii?Q?c1Pux6MpIVpzx4KugeaLlX4u4mxr82jgKLP53HQSfWviv4fdlaDXp4MWzGYJ?=
 =?us-ascii?Q?rJXrw3Dg44NQ4XWRc7I48EUzMBd+1d7z+W03aYnSybuUQMtbKFw91+AZ1fzU?=
 =?us-ascii?Q?KtBI5BxgoZusUlp2916QmRChqCDL1/vvppMVL1gtkuoh/zuvkwoQuqdhxsym?=
 =?us-ascii?Q?dvVo8jag8ZP91DvE/ScdGn32rJc7eBzfhHInlMAfPqFSEp+A4d3OQiQ/sGkv?=
 =?us-ascii?Q?+R7bxCUFTtZifWy7FYhXcBx2EOiZbIrK5i9cDjFaG+zCsAQZ2LEKBLSXVvBH?=
 =?us-ascii?Q?kYhKMWu5W4m6kWmRckFeDbBOMY/Cu8nCe44ltglj352Y63LKQguU8eN6bFMT?=
 =?us-ascii?Q?azPUWI91UMGXz8FUplXLyhlu+8gRK7sOENADMiQ/zQOvBQVakaXtHi2XQxLY?=
 =?us-ascii?Q?gKrchuSb5yuz2gJs07cY7I5NoxJBZrSF2V5PX/3aIGDNp4Oj87ie4DPvX09M?=
 =?us-ascii?Q?cQxTNILWBYOimekjUYWXoVxnKXZU4t3w0ErfX2Rll7LeQFx1PvUne6Jd5BZT?=
 =?us-ascii?Q?G/SXgLrl3VzjJ2NnfWpPp35OOqElbVuPXprbuwvtGHbkrVtLOI/RORXvbBJp?=
 =?us-ascii?Q?gUlL5foSK6/g+Unqr3+GtXUY1nrkH+E05dDLZ9iaVpPr88ZtKzYysE36mDgH?=
 =?us-ascii?Q?q/uiq9zVkZkr6UzSoH1sAKV8sdnq6hIZczq8WdYZxl9gP9GvtHoRao8wiOi7?=
 =?us-ascii?Q?rxuUBdj3E7s5kljgD/5gLUJg?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4441210b-6017-48ea-b053-08d8ed8e6711
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Mar 2021 23:58:34.2022 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wM2fXT7wvRjO4eynNm32sxAx//K+mkTwpdGGKEWVSGpgwQa05DCfRKCQ179BnHMtzLcb8agyli1GfxNdTmehWUYINrjn+FfzEbAg/nS7dBY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2096
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net 09/13] ice: remove DCBNL_DEVRESET
 bit from PF state
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
> Sent: Friday, February 26, 2021 1:19 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net 09/13] ice: remove DCBNL_DEVRESET
> bit from PF state
> 
> From: Dave Ertman <david.m.ertman@intel.com>
> 
> The original purpose of the ICE_DCBNL_DEVRESET was to protect the driver
> during DCBNL device resets.  But, the flow for DCBNL device resets now
> consists of only calls up the stack such as dev_close() and dev_open() that
> will result in NDO calls to the driver.  These will be handled with state changes
> from the stack.  Also, there is a problem of the dev_close and dev_open
> being blocked by checks for reset in progress also using the
> ICE_DCBNL_DEVRESET bit.
> 
> Since the ICE_DCBNL_DEVRESET bit is not necessary for protecting the driver
> from DCBNL device resets and it is actually blocking changes coming form the
> DCBNL interface, remove the bit from the PF state and don't block driver
> function based on DCBNL reset in progress.
> 
> Fixes: b94b013eb626 ("ice: Implement DCBNL support")
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h        | 1 -
>  drivers/net/ethernet/intel/ice/ice_dcb_nl.c | 2 --
>  drivers/net/ethernet/intel/ice/ice_lib.c    | 1 -
>  3 files changed, 4 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
