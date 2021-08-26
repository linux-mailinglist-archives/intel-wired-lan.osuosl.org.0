Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A4A3F8260
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Aug 2021 08:21:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 424FA80C8F;
	Thu, 26 Aug 2021 06:21:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lmq-4dSHcEmQ; Thu, 26 Aug 2021 06:21:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EAEF181882;
	Thu, 26 Aug 2021 06:21:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D77351BF31E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Aug 2021 06:21:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D19D04256A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Aug 2021 06:21:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZSFOgl5JWqVZ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Aug 2021 06:21:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7859342568
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Aug 2021 06:21:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10087"; a="215830806"
X-IronPort-AV: E=Sophos;i="5.84,352,1620716400"; d="scan'208";a="215830806"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2021 23:21:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,352,1620716400"; d="scan'208";a="426677241"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 25 Aug 2021 23:21:00 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 25 Aug 2021 23:20:59 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Wed, 25 Aug 2021 23:20:59 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Wed, 25 Aug 2021 23:20:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=odkfWzt/Ta+00EiMTg8Ak7b8u8oM6G5oE3WPtPI8UBms1K1VlLhU79yysHKWunPj4YwA9idcMtqo875Guy4GVcn8dwfWFDimCFVZOCOJ9tEeCdNRPvh7fbnggVsr77Mh/WrCXhJk8Crp5rVXGrgezLljcV2i1Om/U2eqRBjXTpfTX2E5grTDFTCj5ftpZeyml1fZ11TzzODjbrj+NvguTdptN1wkj69VBe7YrAJ3jJ+//SjEDBu/owECgq5YYJykubtLmrsOWgn1Q0aIpDtIUpnUhRJP0g88OYRZYN9EZZj5WSLs+EG0JPAfZfs5nBcYPrvpMr3ennPmXGCxX+JCLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6l+nKW8h5mi5QPixAYwiHAet+MGB2Eoo7TZbJwL2M70=;
 b=Vw7r5ff2rPRyvvMSoV4kJXOW2x+8MVcmt5ToTVJV4/G/M6QKQWfPfjFjTx+McpEAggq2HEUFIp9qKSSJmp47QNB8aU3yxb987ylwIXBoYv+pkyIZXShjQtKfHG8RcvLkAKg2/rVw5mvx9rH735YMr6RYzEFp/ocouHRul/yiKNyHLWZm066fcvitIbsvKtPiuuv0IUCpi3yVq4qUSsUceZLkNQ/coOiuDy2x21CxdrT5XbgcJmkrFSn/W3hps5eNQyls3CR/yamPNYcQWaC8znNi9eL6KHsq7DfiYIAA7/iaVZ3PrD1ULgAo8F+vBxa5DTxMuqxCJxHrras0LLUGOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6l+nKW8h5mi5QPixAYwiHAet+MGB2Eoo7TZbJwL2M70=;
 b=Qt7hACg/AKdGkn6rIGMoNoBXzkByzkeSpdC3bPvGR0wkcCH+NdM2FhknMXLSX21OEd9Rd7Y/bf3FgFUpBRXQZ5gojCsz6s8+t48K/gXCdtRW6WYqZBM8NkocVeAvvS3a8qVQhVo/wOQJBmq8are3P7Yqg54pRUdgyyG0nGUy4HM=
Received: from CO1PR11MB5028.namprd11.prod.outlook.com (2603:10b6:303:9a::12)
 by MWHPR1101MB2094.namprd11.prod.outlook.com (2603:10b6:301:4e::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19; Thu, 26 Aug
 2021 06:20:57 +0000
Received: from CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::50f7:685a:e222:e003]) by CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::50f7:685a:e222:e003%3]) with mapi id 15.20.4436.024; Thu, 26 Aug 2021
 06:20:57 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 intel-next 4/4] ice: Implement
 support for SMA and U.FL on E810-T
Thread-Index: AQHXk1qitwXGRfvfCkO2hFPlTtYSxKuFXGSg
Date: Thu, 26 Aug 2021 06:20:56 +0000
Message-ID: <CO1PR11MB50285E79BD16A0E3AEB196EBA0C79@CO1PR11MB5028.namprd11.prod.outlook.com>
References: <20210817110918.1937113-1-maciej.machnikowski@intel.com>
 <20210817110918.1937113-5-maciej.machnikowski@intel.com>
In-Reply-To: <20210817110918.1937113-5-maciej.machnikowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.0.76
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a26fd691-2137-442f-19e9-08d96859aa6c
x-ms-traffictypediagnostic: MWHPR1101MB2094:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR1101MB2094B1241AD132950872E958A0C79@MWHPR1101MB2094.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1122;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +i1iHylwhH+xGu9XSRMvbX/3moy45AbKehRVPjPV9Iaf1+0QNTiDUykZrU8ADsS9YHQc1ww6BgE1yY3sgunOihiqarEeW3VMLRbHKNEigVt7qSkeODN4IRCQnFDLf1B8W+vsfYbUKXNrhkJnmTFrNocgP9CVZ/R7zjOUz41ExUpIg5SRlb3kZeAJMBb0iJZZhblCl6sl0kiZ66O/Ok8PKvSA0cyw1v98aX9D56oVgEwsDf03aGsQ2xDc8ZX3MTMZFqQRYdeezwKVDoOInFbYHDC3sK1ntH56zh0WdCSDcV4EEJBslUW37GlPrskjxnpuB7wjXipVNRnu2Caeo9esEhm7RRjcTotVYGGmGHJyK3dda/xjrUDXR1u+d+hvPXNqSU2EiwpBtYV4rHkxVrImdAcFGUfe4f+pC0bze9ouJo6oT3vU5EiXOFZkmEYVe9cMF0HxvzGF4oR6Q0HumCU6cTelYIS3jJg04cqFvtFbkLQX5eXIVvo3JVVQsitLOQ4o7V3jO+UUQBfEEciQ2YGAh5sdr6rdL5RCAVlXyJMofJx9O4EU0gAdKs6AecHkZAcskFvpwPInk3PhvLvM2ubahCAOIJHAVamznOwimNS/xAjOOX+P3+S2JmjslwzuhXlImazBkm2YF5C+y4ESQRRJvfrthnPuQunNR52zk1xM8FpTGgSV39JEdvpsEnuXwFi0dQJvARJ6+gX2lAmrYicpyQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5028.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(39860400002)(396003)(346002)(136003)(366004)(66446008)(33656002)(71200400001)(66476007)(66556008)(64756008)(6506007)(52536014)(186003)(66946007)(76116006)(53546011)(4326008)(110136005)(107886003)(8676002)(26005)(83380400001)(2906002)(7696005)(5660300002)(478600001)(316002)(38070700005)(8936002)(122000001)(86362001)(38100700002)(55016002)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0qkx4YW/HL1CG3rMLOys76Xv2qcucwymwRbNc62JSHsKwWYCie+LxOt5iPox?=
 =?us-ascii?Q?R1YJL9oyDCAQH7qBU945LI6Dsfn2lyQj2EEkREUT5Wg7MuS83rXrWBdLnRNY?=
 =?us-ascii?Q?cVAa7k0P8dH5mt76mzh4KKMuRRRXdZGVylr16tOk5Rgxgdf9NSCft+NoC7kZ?=
 =?us-ascii?Q?ZLTTkAYyXaz7kQgZUiBjaClcnSdsDAp9gAyydk6QzLjoaUjW4KaN/jqo+CKg?=
 =?us-ascii?Q?lVtKD/rt+e73DyBb5FaD3i2PZow9FAvmuqYxIfCO0p1Yy0PFjEg23mYDEpyb?=
 =?us-ascii?Q?uf9PwBzNLuPcK52upkDiyKck+4qhaRRr/GiDAJvRyYdFaUwWGBQMvwCYEPG6?=
 =?us-ascii?Q?EzP78a6Rjf1X31t2Z2+Oa44db4nFoDw840JrSHd3V6xfXfvRwtBHKVLbrwOP?=
 =?us-ascii?Q?rSBxOdS2ZzGmN8KQyRneESHHOF3CcoO1dG9lRBKwsZBKoJFGoV1cXiDoCr2k?=
 =?us-ascii?Q?ROlP1YaeMQRgN0vhyU5T8IlRPjuLoK49R217/BBwW6wD3skik/HJohSXhx7U?=
 =?us-ascii?Q?aYUtqNAMQheQLRzeqoupCZpN3vywFml5XRXx/RsXIWglWJhV0Tt6jAiMtyXB?=
 =?us-ascii?Q?drsZY4qAmwRQ50o/Ixdt1XoYu/syxQJqkRJRxm76Z5y1dvZaEj7bLTKbrirA?=
 =?us-ascii?Q?FBye2CsJOD+SopQH4C0iStstMy7mcQXPp+fZeIdQ85wxdO/V9wrTEMXpXpgq?=
 =?us-ascii?Q?a3Jnpn+5cOgPje07kFegSY5Kis9tCbBOy0VAuud8DREzOhFK6i52oPXaXF5d?=
 =?us-ascii?Q?z1p06AN4wPiuxeDT9QD0ik8YOXW5o59Wjk/Pt+YIonuzeNY9ts9odE2zUOwS?=
 =?us-ascii?Q?d7q4lxgUdtSCSOdRQSgJGPjTlkSEFXwbvqSlqL0IDes7KRxXgyKqYAZAPRUF?=
 =?us-ascii?Q?e5bIaf3/Mp7jvx6QA9R8xky2UbnSBmDAhT0LZ10bATbhqmzEos0KROfdEcB8?=
 =?us-ascii?Q?uxTVSZGF8UVXiw2x2t6XEuiRbwjqO3YcBLBis4YL/uDOMHvXhngo3cLyallc?=
 =?us-ascii?Q?ejkuCraLz2N8+Q2L17JXHMVnEuXfuzrkA2WsxNryTe27iIZ8XXMRgdDFKVhd?=
 =?us-ascii?Q?8kAsXBgbBi9hihwI65tJU4GPdToge1jpgjDtlRkMgn/EMa2cp+fOkRNSF4vf?=
 =?us-ascii?Q?io6cw5zT49mMLaHRjTCTZI0/blsX58vRu5jtllFW2vq7B1jHCY1FQuRkFpkC?=
 =?us-ascii?Q?x2TcW1v9crSxhXMEvnA42wyHydjItxKxfX+0unpYBh67AnSkxSECIKl50Qix?=
 =?us-ascii?Q?PRzuCofZuIk0eLJm+3m5J5MuGkApt9cG9Mjc3xIeZ9QcR2X84aQPVs02Jplb?=
 =?us-ascii?Q?CpEl/zaQKE0dTuDuDjFXohbb?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5028.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a26fd691-2137-442f-19e9-08d96859aa6c
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2021 06:20:56.9319 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kZ4tQMJY1EaDEEVeeHEFAGFUi2y3RUJAKlBYqdlzmlDc+lmhzOUyeRfcR6f/ilgamS29FeG0NdD9E5kyn5BTK9DW3wSIlaq1PJ3cDxcAEiM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2094
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 intel-next 4/4] ice: Implement
 support for SMA and U.FL on E810-T
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
Cc: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Maciej Machnikowski
> Sent: Tuesday, August 17, 2021 4:09 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Machnikowski, Maciej <maciej.machnikowski@intel.com>
> Subject: [Intel-wired-lan] [PATCH v2 intel-next 4/4] ice: Implement support for SMA and U.FL on E810-T
>
> Expose SMA and U.FL connectors as ptp_pins on E810-T based adapters and allow controlling them.
>
> E810-T adapters are equipped with:
> - 2 external bidirectional SMA connectors
> - 1 internal TX U.FL
> - 1 internal RX U.FL
>
> U.FL connectors share signal lines with the SMA connectors. The TX U.FL1 share the line with the SMA1 and the RX U.FL2 share line with the SMA2.
> This dependence is controlled by the ice_verify_pin_e810t.
>
> Additionally add support for the E810-T-based  devices which don't use the SMA/U.FL controller. If the IO expander is not detected don't expose pins and use 2 predefined 1PPS input and output pins.
>
>Signed-off-by: Maciej Machnikowski <maciej.machnikowski@intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice.h     |   1 +
> drivers/net/ethernet/intel/ice/ice_lib.c |  15 +
> drivers/net/ethernet/intel/ice/ice_lib.h |   1 +
> drivers/net/ethernet/intel/ice/ice_ptp.c | 374 ++++++++++++++++++++++-  drivers/net/ethernet/intel/ice/ice_ptp.h |  21 +-
> 5 files changed, 402 insertions(+), 10 deletions(-)
>
Tested-by: Mekala, Sunitha D <sunithax.d.mekala@intel.com > (A Contingent worker at Intel) 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
