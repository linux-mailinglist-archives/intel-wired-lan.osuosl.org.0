Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C157BEE88
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Oct 2023 00:53:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 86F3960EE4;
	Mon,  9 Oct 2023 22:53:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 86F3960EE4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696892024;
	bh=qs3gKhUCq5/CCZV+g1kP2EgtMR7rqDQ7Rx9tXZVwZWY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ziwuPezJDerq5fay/9+9wutHAArBmJYbhP3RmFz5VAKRfuNQWbLntxud041azbaIc
	 IZURBVBqc4oE/mVE2TewFAZ78LjDGh9WA4brFf+lUF9GHadFRbJy6J/gJRTPYDGt8u
	 h2evXhK1DmPdoA4z+p5E46+eIDGnb/nGoLz3r2FgCpkqhXRChS+MOxu4OtdASTE6jV
	 z9hC6fOY5u6nU4yNkLVlUf0yUMJyAVW+MUvYU/9iUR4yeOJmdCRoMUwoczdDGNQpXh
	 6lSirbcs0oHoZVa9yX7ZIB4kltOOSfrPTYwHa0kj0T+yn1IF6WDMA2F4cgbvrAHpO9
	 HsmMtd0HkLnLg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NlzITLSNdHja; Mon,  9 Oct 2023 22:53:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2A9F260E91;
	Mon,  9 Oct 2023 22:53:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2A9F260E91
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3A1E51BF375
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Oct 2023 22:53:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0B0F1416B1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Oct 2023 22:53:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0B0F1416B1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S5fHzjDNqWl6 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Oct 2023 22:53:36 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AC02F416AF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Oct 2023 22:53:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AC02F416AF
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="374604674"
X-IronPort-AV: E=Sophos;i="6.03,211,1694761200"; d="scan'208";a="374604674"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 15:53:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="818994525"
X-IronPort-AV: E=Sophos;i="6.03,211,1694761200"; d="scan'208";a="818994525"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2023 15:53:09 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 9 Oct 2023 15:53:08 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 9 Oct 2023 15:53:08 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 9 Oct 2023 15:53:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jdsa2LDWQGeuQ6Rwx4UOuZPXAyYrLPn3XR8zgpPfeIKE9YTLSd612ogj0+nhof9v5rPCZ/uhFQB/HRefxe2WE9fjix47QjvMwrbLAVSxQ4bj2QecOeUczpdlQ2Mm6RgFDrNp1NH8pL8SYepWoyd82e1DXpFcUF2scPoziE+/dKv0UB/GgHvaTAVjB4j1T7nugb4cEGWHP9QVVx+/omXCeA3TRIoFE4Rq/kFQA3/bg1+Lnb5CrPORXFgEzzPxkTLJGgJi0KP9cQjORlsDf2Ri+zDdmZ8Nmz+P+6CgmrvxnGwLhSq6Sy/IGaGCOcNoJAF0KSI11tDi+gYiWIslpkwh0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NgmWGuOwhnKZi+92ks7XeD0klHKN6DXcIaNt0GGWTXg=;
 b=VkM5gLaYiLL6xmFwc/P4aCfH0f0wM0WcPNHhJ6+RZbFIhOjotxYc59n7el8DFo6WmPs23XLShPOXyH22R5A/VdXCpH35VAHe7pTW4l9xJcZRlcxYN323dMufHpT1oM522wC90BeseN3OLriu7TsgGlt7+BpJF2uO4bFmAYUH+EEI1Q99JW1BEOqMifibPEtoVKjyjMV46fRNVK5+UXpnM5c3ea9DPDBHrinadHyt6DS6MRr454qPFezSB6lLLHIAtZ0ErZ7RYmIoHbDUNZjcbXTVF/HnLGXba/U42KyNB5Y0C68V8b5W5fFNgqFuv7kdko/G9SpAMIBTL/cYH9D9kQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 CY8PR11MB7897.namprd11.prod.outlook.com (2603:10b6:930:7d::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6863.37; Mon, 9 Oct 2023 22:53:07 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::4c69:ab61:fea5:5a7f]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::4c69:ab61:fea5:5a7f%3]) with mapi id 15.20.6863.032; Mon, 9 Oct 2023
 22:53:07 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Thread-Topic: [PATCH net-next 1/4] dpll: docs: add support for pin signal
 phase offset/adjust
Thread-Index: AQHZ8STU2ygIVYMgLU+05Co2RgMq6bA2oCmAgAuDuJA=
Date: Mon, 9 Oct 2023 22:53:07 +0000
Message-ID: <DM6PR11MB4657852FCB658D651B7053729BCEA@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20230927092435.1565336-1-arkadiusz.kubalewski@intel.com>
 <20230927092435.1565336-2-arkadiusz.kubalewski@intel.com>
 <ZRrbH4gdfOg9TmV3@nanopsycho>
In-Reply-To: <ZRrbH4gdfOg9TmV3@nanopsycho>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|CY8PR11MB7897:EE_
x-ms-office365-filtering-correlation-id: 55af41da-4234-47e4-2ec7-08dbc91a80cf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /teCPXbYYYPGlhSAQJzNLN6jju9ZcSJ6KZqTVedur8HQpUhQYPRBSzx2IExh4706gPNm0nry0SMzTwv/2zxU9jaa5T+W6T9zzSxPLsRlpu4t+J+jmDIeXxqLw8JRuP9q4FQMTLXrkjO8JbXGCISPHbvT6uld5J9ezL1rtL12Ml2uYvxtzO9CbLY6riDB/YkBTcnzsrE5EfeSeqlZqgA7eWKNwLPrOf5Sx8+gW1MFMFmIMfrCKbdHweKU7iTGNgTcGXI9qBjiyfwAhclS4tqycq/e17viECyfd13nhFP5EpJqssI+DlfxJ1caVEM5xmaPGAVHXPP2mmAt+pzV0I1zpDvCREec0AzQN9pROj7/A03xE4yf1FQ5UWS7JJ8HCkT2xpAY/xorXL7dxagrLS/v9mDUByxVjTKmBV8MSzeZjdfRCJw89fnLWF7I9xYE757oNihDv2iv2Z6o2GPpwhfJj3N8e5Zav1G7BlqvD/GmTP2auttH/uHmgT3IjsYo+Q08j6mFQBR/3p9OjjWmmLQ/TuSCti4TTaIMMsXCPuHbqYMlL/+pbtg56kDVwIcNzr9/ossqcGzOvvx6MUOmSoj8qDeydFFx59xSMLsrefPOkCgmwlmlV2vdUVlGBxXrY01v
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(346002)(376002)(39860400002)(366004)(230922051799003)(451199024)(64100799003)(186009)(1800799009)(55016003)(83380400001)(76116006)(26005)(54906003)(66556008)(66476007)(6916009)(66946007)(64756008)(316002)(66446008)(4326008)(5660300002)(8676002)(7696005)(41300700001)(6506007)(71200400001)(52536014)(2906002)(9686003)(478600001)(8936002)(33656002)(122000001)(82960400001)(86362001)(38070700005)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lC/pwavJ6Bycmlh0ivlsXgqO4ZYd5rlIaIIu+dE33DhdYPMvPig6c+B3MK3R?=
 =?us-ascii?Q?crP4l5J3LXmVKxuUSuLoF1+Pvn2ODxV/13qRdyMucaeBaAkfe0xlk9j57GNL?=
 =?us-ascii?Q?7/TTzLcv5OPSNaj6ROZLQFDP+DKiC38B2u6mrBWSMvEX1v7UJQt+DoPyKx9Y?=
 =?us-ascii?Q?rjZq5c45qlarpEPoDZYZdk3ugdFCv3MXzLjD/0Rv9mYIYeCjHZ4s3ENe25qG?=
 =?us-ascii?Q?lLdBdiHkuPKZrnHkkw2Dg81ZlznvM1A0/2dEITVYUudixe6WO2+f0nBTyuyt?=
 =?us-ascii?Q?PJoAx6QCK7IfU7Jx5pVu71rX14xkv2U43syzu2JNetYczGdMb8xCNkCF1heP?=
 =?us-ascii?Q?pbXQmqiAXYmiXcuZD1S8zUuZJ7a7WY5Va6qIt+BrhBHoiVblAQ1NYRB47Ss2?=
 =?us-ascii?Q?cbvA1Kn3dE3z5c5Xl4A8F6GZZXsXt0kwtEfT60ysczWuMGc3n5UG6M9160tB?=
 =?us-ascii?Q?gYL9N3gkdCHTvn+P9LCqnfovJ8g4SOD5MCfKTzdT6atU/j4ZxilRXL2Al382?=
 =?us-ascii?Q?XHXmkBzzbuXwlby+0eJxlHlHeAhnHduVWG1618ZnRa4TDuP1Fe6jV4vdP5LZ?=
 =?us-ascii?Q?SqFb2m6q0jcHKSEwiFaNY6RcWVyJ01dNzxExYVZwXPxzbmVFFqLCav/t7DQX?=
 =?us-ascii?Q?6GTAwyQIRnVpdkL/cIzCDBSvQwGoF3pjiFl62c+oXPT8NmD0LpMOI7dypoFU?=
 =?us-ascii?Q?NY2IF2Tszul9E/b8xkiBtWwuFUgCisNffcfKSloBt4UkgjNqgtYISoBFlYGj?=
 =?us-ascii?Q?PCmohxLJrMbviA+3hRbIW6AY/HARxEJqJWq1c/4fCy8a1ooHK0+AINUZUhZL?=
 =?us-ascii?Q?HEtEfQfmCqVKA4/YEYkCpFhWozM0puJN55skMVCtRtorCVGEKllmiWz+M7zJ?=
 =?us-ascii?Q?Of/owpzK/MmHknkdU3ODAZCAfsW3GXQAWtUSK7LxEAXHPFpzES5nnuXFblXI?=
 =?us-ascii?Q?mWhJ2UDHa/D0hg2km8v2UbD9ezYod0wVOn+AXUSxW4UFFESz0YoZvXAPFtyM?=
 =?us-ascii?Q?TJraHAS9XL6uWJkgWv9WP+wXKgd5xx7dEc++VPnrcKRLTFrZuzJ6j+PKlxzk?=
 =?us-ascii?Q?aF41Dl3WlW3nV2tgZLtSyW9CSdemAfWfZgbuZMcHukf4fgrAExc+GLyVSnrB?=
 =?us-ascii?Q?KcXaIwQXhX14YTI0BP+30cTfH1qrBnyPe+PAxb6Q1KwUc8JBM9IVRmAe1oSp?=
 =?us-ascii?Q?Bd0Drh3+0Uj/fHigAOCuKJwKoph7gQjPEEUftD3mPPKq26zpq/Jwexttudfl?=
 =?us-ascii?Q?k+5vns9VYhQCS3u7mCSZ1hTG6HlFg5JX0ZBwhrFmcxKFDEj7YFnE0GAC6iq4?=
 =?us-ascii?Q?IU1lsEzaNxkgSIzTy7dJRDwi4Pbx/irV5K36wxz9Z5DVdf7IZYVuZmg52h5W?=
 =?us-ascii?Q?ykPm67v+GTtS5bwCxH4cgYMg5LaByQby2Cp+lA3ydpfMVkkRDRRQyacR+WXp?=
 =?us-ascii?Q?OderIR5AQuLxm06VIFI6vWcZw41kAVgrR0XjWrtGxujofSk8hQ/iNqDnTdpV?=
 =?us-ascii?Q?S1hy2CmTAN9cZ+nG/x8MxxeLc1Y+11nfZTGvUHT0j9+IURoWrZ7NHN96wlMN?=
 =?us-ascii?Q?WT6oc+O6txDTU+icH8/gDywVGiPa/xQb5kuhpRgEOSrvybLn6LfnbTp6QRhE?=
 =?us-ascii?Q?Vw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 55af41da-4234-47e4-2ec7-08dbc91a80cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2023 22:53:07.0352 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kCffJ7vqdg0Y9R55jvC4eKIpRbp3EP7S2o1fQic96x2QXlkYAgJ6hpsGWWkP18CJ9ikxipR4SJn+9DT/LZVF9AiV+PnlzklC4KbQC8LpvPU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7897
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696892016; x=1728428016;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=y16fOwzHfi5jfCaSysIb2DMoOUB7x2jB+5+GQJsAB9k=;
 b=HN3bxccgg2KiCx5TyT05GbWH6Mlz/NsRICSr1twEDQwpdoW0l65jbBvP
 symZc58l6RH5J8HQTT96M25VHxllxsi4y6rrvv4er5tuNIobR/cERMLE1
 A0WT/3uB1kLgkq+yVdcVDQGStSeNOeDqVw2vPidULlwPHSA7danEU17iP
 eW1EbACQMu1LfKH+kXtyyWfGtSWlOt8/+m9/K/ML+xy7WR8oNTQ824c0Q
 8zXdNghGhv8SgQAuy2e+HaOKMCLcgSRNb9PR2GBUwrQKfwpYJWAqWXM4t
 SaSGQE8y73/taJdHpycOvjwRIIkvkUj607FEEUbc/QaCqq65nOPK+MmzA
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HN3bxccg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/4] dpll: docs: add support
 for pin signal phase offset/adjust
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
Cc: "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>From: Jiri Pirko <jiri@resnulli.us>
>Sent: Monday, October 2, 2023 5:01 PM
>
>Wed, Sep 27, 2023 at 11:24:32AM CEST, arkadiusz.kubalewski@intel.com wrote:
>>Add dpll documentation on new pin's attributes:
>>- phase-offset - measured difference between phase of signals on pin
>>  and dpll
>>- phase-adjust - adjustable value of pin's signal phase
>>- phase-adjust-min / phase-adjust-max - values for determining limits
>>  for phase-adjust
>>
>>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>>---
>> Documentation/driver-api/dpll.rst | 53 ++++++++++++++++++++++++++++++-
>> 1 file changed, 52 insertions(+), 1 deletion(-)
>>
>>diff --git a/Documentation/driver-api/dpll.rst b/Documentation/driver-
>>api/dpll.rst
>>index bb52f1b8c0be..59634a3513bd 100644
>>--- a/Documentation/driver-api/dpll.rst
>>+++ b/Documentation/driver-api/dpll.rst
>>@@ -173,6 +173,47 @@ in order to configure active input of a MUX-type pin,
>the user needs to
>> request desired pin state of the child pin on the parent pin,
>> as described in the ``MUX-type pins`` chapter.
>>
>>+Phase offset measurement and adjustment
>>+========================================
>>+
>>+Device may provide ability to measure a phase difference between signals
>>+on a pin and its parent dpll device. If pin-dpll phase offset measurement
>>+is supported, it shall be provided with ``DPLL_A_PIN_PHASE_OFFSET``
>>+attribute for each parent dpll device.
>>+
>>+Device may also provide ability to adjust a signal phase on a pin.
>>+If pin phase adjustment is supported, minimal and maximal values that pin
>>+handle shall be provide to the user on ``DPLL_CMD_PIN_GET`` respond
>>+with ``DPLL_A_PIN_PHASE_ADJUST_MIN`` and ``DPLL_A_PIN_PHASE_ADJUST_MAX``
>>+attributes. Configured phase adjust value is provided with
>>+``DPLL_A_PIN_PHASE_ADJUST`` attribute of a pin, and value change can be
>>+requested with the same attribute with ``DPLL_CMD_PIN_SET`` command.
>>+
>>+  =============================== ======================================
>>+  ``DPLL_A_PIN_ID``               configured pin id
>>+  ``DPLL_A_PIN_PHASE_ADJUST_MIN`` attr minimum value of phase adjustment
>>+  ``DPLL_A_PIN_PHASE_ADJUST_MAX`` attr maximum value of phase adjustment
>>+  ``DPLL_A_PIN_PHASE_ADJUST``     attr configured value of phase
>>+                                  adjustment on parent dpll device
>>+  ``DPLL_A_PIN_PARENT_DEVICE``    nested attribute for requesting
>>+                                  configuration on given parent dpll
>>+                                  device
>>+    ``DPLL_A_PIN_PARENT_ID``      parent dpll device id
>>+    ``DPLL_A_PIN_PHASE_OFFSET``   attr measured phase difference
>>+                                  between a pin and parent dpll device
>>+  =============================== ======================================
>>+
>>+All phase related values are provided in pico seconds, which represents
>>+time differnece between signals phase. The negative value means that
>>+phase of signal on pin is earlier in time than dpll's signal. Positive
>>+value means that phase of signal on pin is later in time than signal of
>>+a dpll.
>>+
>>+Phase adjust (also min and max) values are integers, but measured phase
>>+offset values are fractional with 3-digit decimal places and shell be
>>+divided with ``DPLL_PIN_PHASE_OFFSET_DIVIDER`` to get integer part and
>>+modulo divided to get fractional part.
>>+
>> Configuration commands group
>> ============================
>>
>>@@ -263,6 +304,12 @@ according to attribute purpose.
>>                                        frequencies
>>       ``DPLL_A_PIN_ANY_FREQUENCY_MIN`` attr minimum value of frequency
>>       ``DPLL_A_PIN_ANY_FREQUENCY_MAX`` attr maximum value of frequency
>>+    ``DPLL_A_PIN_PHASE_ADJUST_MIN``    attr minimum value of phase
>>+                                       adjustment
>>+    ``DPLL_A_PIN_PHASE_ADJUST_MAX``    attr maximum value of phase
>>+                                       adjustment
>>+    ``DPLL_A_PIN_PHASE_ADJUST``        attr configured value of phase
>>+                                       adjustment on parent device
>>     ``DPLL_A_PIN_PARENT_DEVICE``       nested attr for each parent device
>>                                        the pin is connected with
>>       ``DPLL_A_PIN_PARENT_ID``         attr parent dpll device id
>>@@ -270,8 +317,10 @@ according to attribute purpose.
>>                                        dpll device
>>       ``DPLL_A_PIN_STATE``             attr state of pin on the parent
>>                                        dpll device
>>-     ``DPLL_A_PIN_DIRECTION``          attr direction of a pin on the
>>+      ``DPLL_A_PIN_DIRECTION``         attr direction of a pin on the
>
>Could be in a separate patch, it's not related to this one.
>

Well, just sent v4 without fixing this and now realized you wrote this comment.
If you insist I will prepare fix.

Thank you!
Arkadiusz

>
>>                                        parent dpll device
>>+      ``DPLL_A_PIN_PHASE_OFFSET``      attr measured phase difference
>>+                                       between a pin and parent dpll
>>     ``DPLL_A_PIN_PARENT_PIN``          nested attr for each parent pin
>>                                        the pin is connected with
>>       ``DPLL_A_PIN_PARENT_ID``         attr parent pin id
>>@@ -284,6 +333,8 @@ according to attribute purpose.
>>   ``DPLL_CMD_PIN_SET``                 command to set pins configuration
>>     ``DPLL_A_PIN_ID``                  attr unique a pin ID
>>     ``DPLL_A_PIN_FREQUENCY``           attr requested frequency of a pin
>>+    ``DPLL_A_PIN_PHASE_ADJUST``        attr requested value of phase
>>+                                       adjustment on parent device
>>     ``DPLL_A_PIN_PARENT_DEVICE``       nested attr for each parent dpll
>>                                        device configuration request
>>       ``DPLL_A_PIN_PARENT_ID``         attr parent dpll device id
>>--
>>2.38.1
>>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
