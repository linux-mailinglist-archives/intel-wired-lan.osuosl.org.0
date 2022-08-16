Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A03C595CD7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Aug 2022 15:08:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3E1FE402EF;
	Tue, 16 Aug 2022 13:08:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E1FE402EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660655294;
	bh=VWNsE6Ile6Mf9x4yh56tsgLIsCSDkJ0MJxe8p36m8NI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=T/h0cMps1Kz3qjG7s/auQyjSP4LFj6k2V3OJW1BEdUO+6OfcVPQ5npQ7N29O/iwUo
	 sTp1cK9W2jfM2iqEQVYgQrEv0zy3K2wjkmKLBrhmyBgjJqzKEE3TfOLRyB09J9Ot95
	 MYiEPzHLEpMMqB72DQ3+3Au54S48N8YPbu+ghXJMGS0krBF75aafq6fSsi49SqGwhB
	 heTH7eQFBBXauOXdt3X21TLWNGMSAOJ42xw9sgvWW0/6esbtJcPMe4yMUr5ek2F0Vk
	 tJ2XECqe69tOxvMjCEOlBHT9ujBiqVomu1aw1LbWRHGmV4sDNGoMSNmzsSGWNUSnHJ
	 FFybgw/RwFK2A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 57kWrvAbK6es; Tue, 16 Aug 2022 13:08:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C2E5B4027B;
	Tue, 16 Aug 2022 13:08:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C2E5B4027B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3B4E71BF4DD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Aug 2022 13:08:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 14AE761003
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Aug 2022 13:08:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 14AE761003
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id exLNa1Jtkl9H for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Aug 2022 13:08:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1E66B60E83
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1E66B60E83
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Aug 2022 13:08:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10440"; a="318207141"
X-IronPort-AV: E=Sophos;i="5.93,241,1654585200"; d="scan'208";a="318207141"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 06:08:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,241,1654585200"; d="scan'208";a="675207101"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 16 Aug 2022 06:08:05 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 06:08:05 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 16 Aug 2022 06:08:05 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 16 Aug 2022 06:08:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nBPAdwH8x3ZSRLJMYGtB1/oBfXtmYySWpxdtfr/nXO2SpfmbgdrO+7c57pzW7YHggmfoqjP66zyUjg0cALhgX5HHvDM2VT1H3GFjgbK+MuPB6bnsOARnk+iDsS7AaWp5KpGuiVPO95yzcCb62UGOXeGC/ZzwSpmyFGVcw3tdBVBIsdEv5x4VTx+74CvMkq/Q1nFzh1n5Usyko/hkxdCp1gzEHiReBHjOgVfXY5DaKiRcnxm/HqyGfqSixOcD+oN1JUbStfos6RwCz7mt+rV09nd7Q8wSRPBk7qWpYJH2GVcSsA8XMGCJGmvemBRh/ky6NU4KyB7j2Xtd31tEfyEKmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PNp+8sZawaE7qxAERBNECjH96+qmzFlO7l/uBvOitFI=;
 b=aqLFKojcSIizrV/nXwVb2iwgYFNcboCbXaAwXn/NsyPGqk0YDRLjJpPgDP3lJClg8/pnavRT49ZfuCE3zIPa9SrsdGF5xsc5qM8vPOMjx0IFS+wbfUOqv3ky/9pMl/WCiiDRBVsfryRrujTrRSFX4tOsqDteFunQO3t8C6Q7ArUd7lkO6+ZkmAK8KNJIV7LGhPPmlpqq7MEQeArmGMU1Tf8UwuUB5RPIEOzNlPAr5r9uYhrd5ay79vZW3BtM6BQBa5RyGsVSc3Ue+OMjyeg+1bbBOpp4vjrZGXqSJGBBXipbdzWj2kQcPw9bhxwdZGMxioTTmj91eQjCBLY8grISYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SN7PR11MB6774.namprd11.prod.outlook.com (2603:10b6:806:265::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.16; Tue, 16 Aug
 2022 13:08:03 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5525.011; Tue, 16 Aug 2022
 13:08:03 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Siwik, Grzegorz" <grzegorz.siwik@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v5 4/4] ice: Ignore error message
 when setting same promiscuous mode
Thread-Index: AQHYrk8mqFV9r5brC0SGWLFJ60moA62xha/A
Date: Tue, 16 Aug 2022 13:08:03 +0000
Message-ID: <BYAPR11MB3367ED0E1FA67BBC70F475BAFC6B9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <1660310750-290943-1-git-send-email-grzegorz.siwik@intel.com>
 <1660310750-290943-5-git-send-email-grzegorz.siwik@intel.com>
In-Reply-To: <1660310750-290943-5-git-send-email-grzegorz.siwik@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e7ede00d-0e4b-42f8-8d54-08da7f885a25
x-ms-traffictypediagnostic: SN7PR11MB6774:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: V6Mkm+BD38xPnWaJUU8qnD2RmEzhVYY3rf/h4huKRiMRJC7B3sIbCaKcPzrbj8bT0gyDjH0FuNl0PCnYElHgIe0dhHV+swCdRV10OGyOC0ch05I3hNQGKhNSp3xi7M1PwDVfSzxhRwrACZm2K23JWAE4M2y/4lSkPzBxGyI4a7t6mQ0SGryto8K1o3TbAxq+vzIHvRMwXFjBg7gn69bI2sgMca3+KGb4vOBoDNMVNXMjcg7B7qVwE+VwOp5bctJstESDF6fNln2wp6SxXnNiltgfFlVm0nilO/iXSxc62TTbNkKsXBqvev4yAs7/NmmQtpo23DnHZIiQA3pWaLASefk67VjYbTd3kBvV2jVxpFw2q8vFImWCMH9ks5XH0EdIFuAjK+p6e0b0tYYCDfF2isqh3JUCGIOAHQxFjA9kSf1vjEh9T+09Cz2QoCLx2oNJaVmuHMoec0owHbDLf/l5clUoqqdPb2mOBb2Awo4FEH7dVPdx2ALMgFJE9muNtEBt7OtrA+hNuGpkUsWfxjg3JT5R632b6RVT15ymOv2eRIN1Z17GLFJH8Wl6eB24TBz3m2remOVruN0HYSo1su5Mtr30Cbfn1FTwdITSAv6AxA8JO5BCQuNU7IfzbzJu0jXcAHerVZRIn14/4X9uTkqt3n/0ufDmlx7N24sPOiq5j4GFM4wYy9qBSVRRdPSOM8aYcpGNAryHP7WDG27pkFt33cMQ8Z3iKu2bBR5qu26fFf5RIjL0spR9mXiGTslIMnX/m2xjAJm/1pMTXLGiNNii8r9gtG/TXhw4yYnvpcF9e/2wXadE3CZqBfMwNzG2yRRuHx+Ejb+hUVlYNju43STAhA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(376002)(39860400002)(346002)(396003)(366004)(71200400001)(2906002)(7696005)(55016003)(478600001)(9686003)(52536014)(6506007)(8936002)(41300700001)(110136005)(122000001)(966005)(55236004)(33656002)(53546011)(26005)(316002)(38100700002)(54906003)(66476007)(38070700005)(66446008)(4326008)(76116006)(8676002)(64756008)(82960400001)(66946007)(66556008)(107886003)(86362001)(83380400001)(5660300002)(186003)(15650500001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?uAH8ACw8edzY//kHy6+7HY7iK4ga5DSSHnt80wHGmQq+ilQ6grh824QBcw7C?=
 =?us-ascii?Q?GW7TM60VaFEPa/qLTwX5uMwr/I37k+Eu+HwR3Rm6HP9+sXAS8qzmHAuImOYm?=
 =?us-ascii?Q?BDQDMl57eaAz9uSM0wIlGiaXuKKJsDmLbsyzfGH2xLycmxiCCHlc5bw4sFDX?=
 =?us-ascii?Q?noYfN/Efkrj0qtRjyyr6aqjU4G0NQaKgCwfO9cmLXlPEoj0mBNCvRxzEmQLF?=
 =?us-ascii?Q?eQS04W+2AxTfNs+gckxf3r/bviXTznCGRPXNdQ0zsEWfu0V9tvxzKGK8Ses4?=
 =?us-ascii?Q?im/6wkOOT2qfB6ZejiUSGqleCcVtndnNQEf81ELu5/Is0/ZQTuXHRJEH0+Ij?=
 =?us-ascii?Q?2DA0gfgVewlkMUT7wsJ2BeLjAvXlORll8+8MQfNM/AQq9dZ2VmBpgEHXnEkS?=
 =?us-ascii?Q?DB+YUFIXeZ1V5ERsUzE1+c1biU3vntHIVEphJ70+Cg0SbMkSbzA2fKNGxMGO?=
 =?us-ascii?Q?ryFHiUFSkj0E9TSIyloZ9z0oeRTWHDSp5Nc/+YnFmjvl3ATKhHFCW/hGsZf8?=
 =?us-ascii?Q?HarPxRY5sKjbfEy5t32CxK75QVv7lCAB3xZGWT+d0nRC9+PLX8St+qdsUsrq?=
 =?us-ascii?Q?wdHG9re3Rx0dJvktLk0VVZA6dwO2ZYHlY5XxWZnUU3sJKlnqDYzZQBOC01/k?=
 =?us-ascii?Q?zfEo0f8sM5QKxpvPiaRMNoR8fFjFWoDbisGgSaX5WlESdiQO14I3lMI5jQr3?=
 =?us-ascii?Q?6AdBZlkDNBlk/EWfskjcV8VeKrknkQwbGonJpCw2tIQqTgQ58joEY8g8iBbB?=
 =?us-ascii?Q?YNq4MV0QZuoOkgYtMmLVLNeSdP//xtluAucPaO7V4JXKarizfX6uN3hkeASr?=
 =?us-ascii?Q?HQin8jvaCOEDUfCsT/WiOE67+N2lyjLRDyT9fJg4FjUBdQAkeFC4O+aGBdvc?=
 =?us-ascii?Q?jIy3QXB/rGWQ311adouInNQewrvUjAqnDEdetk3mhjHf53FVIhQf/aL8mRUM?=
 =?us-ascii?Q?54yJTB7lSO1lOIT3aoGqRKvDmCHEx4lsTOmzRoF/6ekoNwHrNkFohPRq9Zve?=
 =?us-ascii?Q?O0vpPOH8iasHMEZH0E2DMU2h03YJdAZb3Nbm5WDEUjzSHZ/cM84dlPEPuE9N?=
 =?us-ascii?Q?+rzBp3N86a6vvMlPsSJvaNXfuuUq3iEC9ILH9SEeVG+poWv/dg0lYP2dOtm3?=
 =?us-ascii?Q?OXdQWo+V30ktUO3WKplxC9oAlZUJIIqHza1ZdkdUxGGUbL63cp7WOGFCP8q9?=
 =?us-ascii?Q?T+V4wlBGS9T2WH8h7QPK70ns6qGxSar2/aOo56GS7tl56XPu9yd2sLVz4yby?=
 =?us-ascii?Q?GxcuEZnYtiMUMRm/Icgevuboo9j53D/yq0rxl0bn/nAECd7D3bWOjRbycqfp?=
 =?us-ascii?Q?J5egM2vT+66yk56ZzrYAXTfII0j7Y3IzFTYPXEXmkwHEjKnSUY7KCoV8lIfo?=
 =?us-ascii?Q?tD+uJqCxCMK5+yjyuF4a4VRHkIRrtTUM/Yna7exykTJDb65U+9KjPOPNII7R?=
 =?us-ascii?Q?79YKPV0lRVeKH1YFbG61UtZHpt/dKY7llrKCwGH/rfFVKvmuepFfLkzJ4BGc?=
 =?us-ascii?Q?dbUNn5lAogChqK3y1GwBzXcgu9dhGDKyO7OQsaQBPXdJLksoUuU7bPdvRzQh?=
 =?us-ascii?Q?+uWoJKCx3H4ROWgdUtQrr+KCn8KmI0nwk/HTE76e?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e7ede00d-0e4b-42f8-8d54-08da7f885a25
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2022 13:08:03.0724 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pgGrWsTEcFDv/KOLRmIV0/+81W3XuN4QpaxgYqRUMRZ4uTMD62rjoyF2kZxoua3XPFDMH7g+IpqUDC1Gvfb9ZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6774
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660655286; x=1692191286;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iak4Dld1Sph+n5HfUvxyiuIzmmngTajBNLNvRnnwhtY=;
 b=Ol4BO6DzBFH0BrfeSTI7PHnp5wRqnScfjORZZ4AGtQiW9UeIamdjxDy1
 YjlGXQIxMSQHDTBQx/LPswTnhnX5mTS07Dv47U1i7YCr8AkcOi1QwVmJy
 7Yc8XKUzseB9xdIwVZ+vUdqVK+cLM3B/Kmj4Fxd446Gztj/nFVEpRzoAQ
 Zx2mpn3AbiVxoj0oTf9gXNmMJnQuzdHFrAZqL8nyHkTJybVDqj4PZAfhg
 JZHnUacK/BSpEM9aXGwbOA7oCGU8wntLbb970UL7jRhCCSOArFzHwdmi4
 Dl2DcMsCIu43LntW4dkj6LO/D8ayE5gS0OTK7yk6Xe4TLwG0AW2s51UGj
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ol4BO6Dz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v5 4/4] ice: Ignore error message
 when setting same promiscuous mode
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
Cc: "Mikailenko, Benjamin" <benjamin.mikailenko@intel.com>, "Siwik,
 Grzegorz" <grzegorz.siwik@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Grzegorz Siwik
> Sent: Friday, August 12, 2022 6:56 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Mikailenko, Benjamin <benjamin.mikailenko@intel.com>; Siwik, Grzegorz
> <grzegorz.siwik@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v5 4/4] ice: Ignore error message when
> setting same promiscuous mode
> 
> From: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
> 
> Commit 1273f89578f2 ("ice: Fix broken IFF_ALLMULTI handling") introduced
> new checks when setting/clearing promiscuous mode. But if the requested
> promiscuous mode setting already exists, an -EEXIST error message would be
> printed. This is incorrect because promiscuous mode is either on/off and
> shouldn't print an error when the requested configuration is already set.
> 
> This can happen when removing a bridge with two bonded interfaces and
> promiscuous most isn't fully cleared from VLAN VSI in hardware.
> 
> Fix this by ignoring cases where requested promiscuous mode exists.
> 
> Fixes: 1273f89578f2 ("ice: Fix broken IFF_ALLMULTI handling")
> Signed-off-by: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
> Signed-off-by: Grzegorz Siwik <grzegorz.siwik@intel.com>
> Link: https://lore.kernel.org/all/CAK8fFZ7m-
> KR57M_rYX6xZN39K89O=LGooYkKsu6HKt0Bs+x6xQ@mail.gmail.com/
> ---
>  v2: Fixed error message when setting same promiscuous mode
> ---
>  v3: Fixed style issues, changed to return directly.
> ---
>  v4: Fixed problem with patch applying
> ---
>  v5: Fixed incorrect title patch issue
> ---
>  drivers/net/ethernet/intel/ice/ice_fltr.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
