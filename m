Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EB21D4910FB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Jan 2022 21:31:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B347C605AB;
	Mon, 17 Jan 2022 20:31:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NgtpSXV0gUko; Mon, 17 Jan 2022 20:31:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BE7E7600BA;
	Mon, 17 Jan 2022 20:31:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 383CB1BF2A6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jan 2022 20:31:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 254AB80C31
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jan 2022 20:31:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i75P8ZrSNapa for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Jan 2022 20:31:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F41AE80B6E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jan 2022 20:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642451487; x=1673987487;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=UreYZYbYcA8KoFciingaw7zCS8dXt5/L1mGTHJHhArk=;
 b=bRC+YqI9KBPiOGUALAbqIo635lZsoWYiOokbS0nTPZZVNwBzCu0Zjp7h
 C0irQxSdbFmk+Gs7Umj51o03zACbj8MIW2eDQsV/a8IwcOQY7J3G8XXTK
 ZtoYslow2p1Sr6Ahjyu6p0NWEh56WooOMByheviTZQPkXp1eDt9kjEvdb
 EtDRndbFmX5+STci2FxMTPn4t+DRSoWEuFS1x4V/QozRRrHollsKXrvWI
 XQuMjJ0HlcdVakVMZoHBZYsYw7lT26uvkRtm88AMA0VWIFfIhYfm4xw1X
 dRD90rmAyRb//uvcTWLdiUM6Ll8/ueiaY2cYL3eDoa/zELZ1jq2N9Ch7z Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10230"; a="243514494"
X-IronPort-AV: E=Sophos;i="5.88,296,1635231600"; d="scan'208";a="243514494"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2022 12:31:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,296,1635231600"; d="scan'208";a="531462473"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 17 Jan 2022 12:31:25 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 17 Jan 2022 12:31:25 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 17 Jan 2022 12:31:25 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 17 Jan 2022 12:31:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EfIiC7ETSUIfBO7yatPJOMo6lA9sDxgkkJIV9QrVaHHeAmRWC3jSrEG/IF8zd7TJiiPF3oUUK69iYuVJkndhvLiyexG+4KzpnYej/+8RDDOHm/pDGtdeXPMZCovQfgHlyVJwWmgGSY+5GLgY1lUxpmQTKHGW7RBfMZgQvTzDngNgAZNc7ak0etHdfPGVxjX+y96GU1C26cVHNmE4Cb+GIk2gPbK21luAKAsdgeed3S7o9itT+2RdDxKmtgBvtpML5M4xhGf4jkklR3lm1qAlzB7srkvoCaAdr22CqpKJR7s2tCQT7eabjzCqBRpM5kWQPWMlYUGImH+ONdbrr9DoBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xvJkptEGwq5TBi+ddncQqGiBjBOUx7T+aSKlmnvsX78=;
 b=MOxp0HQA1sV4NdQe7fC76PUGHpuEuzG+44ONj/FX2wahLkwmsawIGmE52PEaBSnF5oVCdvY5toyZbfgtYoF1DJRoeB+eNC8V8j407625jt6rxlgmwXQXwmMjRh+rSyjJdJaR/rSbYERVMsh9ycJ2Ab9AWUiRG+ye/GLW5D6GIV8tg7C2n44J0aFCQmDRTKa0e8vIAtCNJLaz83XSyGxAcFvqQcSmgZi3IFYRhc9MqbYLheeRGrMHNhjhrEX5O1ORwHLN9VG9/1sZNFbQQa5Rv3qy68CUMNt30Nsd01ztqJIC2J2bNEE/ZcKZldxoiB8idqxB349YQQg/LrRVKe5CFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM5PR11MB1771.namprd11.prod.outlook.com (2603:10b6:3:113::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4888.11; Mon, 17 Jan 2022 20:31:23 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::fcc9:90bb:b249:e2e9]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::fcc9:90bb:b249:e2e9%5]) with mapi id 15.20.4888.014; Mon, 17 Jan 2022
 20:31:23 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 13/14] ice: Add support for
 802.1ad port VLANs VF
Thread-Index: AQHX55t7oqSRHOKm00uxnxl0N2HfK6xn8wbg
Date: Mon, 17 Jan 2022 20:31:23 +0000
Message-ID: <DM8PR11MB5621B2AD262C1A5EB6960790AB579@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20211202163852.36436-1-anthony.l.nguyen@intel.com>
 <20211202163852.36436-13-anthony.l.nguyen@intel.com>
In-Reply-To: <20211202163852.36436-13-anthony.l.nguyen@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ca2de385-0aca-453e-0990-08d9d9f8540d
x-ms-traffictypediagnostic: DM5PR11MB1771:EE_
x-microsoft-antispam-prvs: <DM5PR11MB177128A799D69D0CF1A21B4FAB579@DM5PR11MB1771.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2276;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uvuBId2qooBpPEzS9bO3YPaKkC/umEMcsLphR0G+T7APzV8n2vwisUbnwhWDlwvvGIeX7nk4pIeSeUk9LywO1POO9IsM392lnLqAQhSwyAhZ8BhoQzyAymLp6Out6RQon+RH1cy2lQoXmCA36rL2e3FXl3vkvr1JinMShjdJMFZcqWlrcCDbpJeCLdFrD2Hs3YQ5BIAptTuaIjN92bUDpbH2vAo5nfeJv/VIpXTFhAvAH4JFJYu68fHDFbSZbdnVxUdJrJHdhz7SeREvm3EWkE1qqIVTPIM4mVOkmjr3koE0FhiW3TyoobI/4+g8BG8gF2NgpLv4QyWSdrYNWvSwZSKRQoEIW3i0V67DAp3WqYZB4YLbt106Cnzh+rnp8ftK2owVKOeT0kFIPG8zKXumunZOPvW7+Rfd0GnLI9vIJ6cGFkV4F9xRu0KM5qHmnPAdTN+VvOjV6nZIiK9LtxU4svkWnZ7pO7SgY6h58D1HwZ21EnATRq29DUjuP/U+G6d8xnb9DSwGOkhTeBX09Xm4GJo1cDx4GjrLmRAWcoqqZr017FvjvkEYUvVbpY7q4/1YxcI/ddXVlAiE4uj1SGyWkGWutZDTVDR8TQgFqQFW5F1G1FEyLE3VKBjG8L5dd8dd9pl3eyVKRAUfabenCtBKa08E8ssnIL1qAOskIerWCDuL7zB74Jj1mXQwNOMtFyOG1aX4waifp+p+5rHtFQrvAg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(71200400001)(9686003)(66946007)(66476007)(66556008)(66446008)(64756008)(5660300002)(33656002)(2906002)(508600001)(6506007)(53546011)(82960400001)(7696005)(186003)(26005)(8676002)(83380400001)(55016003)(122000001)(8936002)(86362001)(38070700005)(76116006)(316002)(38100700002)(52536014)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?h7OABmLOIrLZAdlM8Bv/8TZICSnGr5slmbGD/+CKS7XSWjOw1nyonokvdUkm?=
 =?us-ascii?Q?7HBddbE2ImDZrEK0IBO89geqmaXVlcy/ToVK3SDSs/gJtSlU8zlw78kZVGEm?=
 =?us-ascii?Q?RtzIa3oj3VN8BWzWGoTFnQwL9xkmrEp3sG+6dum2CpfBfGUeK3dhPSntbmHG?=
 =?us-ascii?Q?sNW6qEPQv97iX3eToQhu2ml82pln897TVmT5CUo73M3Pf73kXF3BD9Q0lo/I?=
 =?us-ascii?Q?IVifNFMaA4kDTBUWR7OJafQMnJD6VxZ+iAlkSxSlkryHICAxEjKimf2HdiZE?=
 =?us-ascii?Q?MabAypkSwHPnipsMm383G8Xvq80aPcY4W2ZuVZTehFbPisuNewTP6MVxINPm?=
 =?us-ascii?Q?k+cpKLINRcUG8GX0chmawxBrRybegkq4AC1nFaTk0HcsZNLYZmvegRmviDBf?=
 =?us-ascii?Q?4+OjLoSbFWX3NDmH0Hcod7DB3RTLKwIsmxdyrI2CVhY80jjzUiwT20OtWZJY?=
 =?us-ascii?Q?KQBz4HATm4XYpApyvo6ZV0X1oavevZb2mlMieLTXdmFd20vGV9K4eBl+z7C7?=
 =?us-ascii?Q?qXVNgD9J0RZivaZ9sq/Hp7J9v5jSfrbFMQ0xWL8cNffyFG1sFWD4uB8eXKx6?=
 =?us-ascii?Q?Zj4KXxRecoMWrds0zAV5vXuTgqfn39bJU7XdcmlFlQ8+lGqEUPM5u7r2Omgt?=
 =?us-ascii?Q?jNYnJRcInFNpA4jcbG2CURvJ336iBv08/8xbIgWsV5Q+FMtv0yopZXg+50tA?=
 =?us-ascii?Q?L55emujMMB3fpeRIRSp8kahE/vM3n4MUf0y964k9RUuoonIAjnp2MgVmuztR?=
 =?us-ascii?Q?DKyXTrJjHy1qY5AiSCOGdXTISej64Z3FSSXvkYmQnppeQAc4BVkhQcPDaAB2?=
 =?us-ascii?Q?C/rD4LjGzV09UAs91JVVIDVBMDfZ8KHCjqvHL2sSogFzX+mATpM3zoNYyYJC?=
 =?us-ascii?Q?Kz4frBnkJ+nWi9ERHwSBUGPB/GltPQNEmUDNnGlPulNqitOfZT/4FirHTy6Z?=
 =?us-ascii?Q?+oGdNKU6PWKb4YD0gYoxVcUjPtIk24XCa6dzvNONEwQ0QRFTStBQCtJdQd1+?=
 =?us-ascii?Q?Rs2da13jx/qThW3XkoXfAS9n5vtxhgZBITMR+j9oBuHcQPL9jfftNj6k+zX4?=
 =?us-ascii?Q?KSr4sEFZtCESswz3yNbs/VRn1KMjDrRAqngMpgeCqXpj0MeuyQnui8H8WOz/?=
 =?us-ascii?Q?5jKRuVGYleS31f68XZA6waWg/5+4h1BmcauQPDU7txs3TWnrbibO1hbhIThh?=
 =?us-ascii?Q?01EnWpmok4+0702qAvUUG3NXnVQeJH2Yb2DEE9USkLR8XyfoXszMxXfurD2j?=
 =?us-ascii?Q?cFF7mYyDaocrxzHAVtYtimF9w7L2U3TdCqDno0jLZF2eV/f4qWT6FMgmZ2QI?=
 =?us-ascii?Q?6dQ91e9iHau9X1WOSchzCIugdwH4ira7jW1LLUPUPiuuyr8T8cxVidJMIjao?=
 =?us-ascii?Q?bQJLDcuY/+qprlgTtwIzwVRYi4RwnJjKmzAwcZjii2HQJkFNyQPettqxxnWd?=
 =?us-ascii?Q?JQfxfGA52o4eSKVE8jvAoJLKveKAIxjCBMiF0SJyLtY/UL7ttZgK7BTDDN/P?=
 =?us-ascii?Q?Ikx8h2hbRqZyJAXEhx6TaeBy5wFSC2FJVmjL0FzCjjOBYE6JUEKy9BLxZWOt?=
 =?us-ascii?Q?SE6J8UvFaT60VEZ3SvSdUJ7U9cd8tzqW3vIKNkXp/rXSANTorjJnrYKpQPh8?=
 =?us-ascii?Q?w16gwO8161Zjqg2ZBHI5yruhGOBHxCs4iqgnSJoLQ7TZ2ua7Y3pEsXOYt/AT?=
 =?us-ascii?Q?vmi3ig=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ca2de385-0aca-453e-0990-08d9d9f8540d
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jan 2022 20:31:23.3955 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: C8UjBufr3XuQUc/MQ7DS/DB3w251TU5XlEdtD9Atl+qKbfUpUgnJDRRMg5mSDkaQJaST1nzneglk6aUiyyVcgpypstYzGv2Pm8GxIQ4sNM8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1771
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 13/14] ice: Add support
 for 802.1ad port VLANs VF
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
> Sent: czwartek, 2 grudnia 2021 17:39
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v3 13/14] ice: Add support for
> 802.1ad port VLANs VF
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently there is only support for 802.1Q port VLANs on SR-IOV VFs. Add
> support to also allow 802.1ad port VLANs when double VLAN mode is
> enabled.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 51 ++++++++++++++++---
>  1 file changed, 44 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> index de74a2b4f846..f1802de98b82 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> @@ -768,6 +768,11 @@ bool ice_vf_is_port_vlan_ena(struct ice_vf *vf)

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
