Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DDAA86E441
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Mar 2024 16:25:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2F63A6173E;
	Fri,  1 Mar 2024 15:25:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JKfdzV9qkqhr; Fri,  1 Mar 2024 15:25:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5ED7C61070
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709306732;
	bh=sv9lMbOOlu6FKlrFMS4MVwJimyFlGnejgkVI5riPPzw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KS9zQJUQ9D1rRIXJJfnb2ZZDYn2V5INPxkZOAeYg/sqlPpmeuTbus5nAQ/qnSFi+x
	 XOzxYF3sjyqZ+YcKTO9mNWMQmQXBFqsflzZp6B/QMeoW1DR2n23se5zr1/Qtk9IU2P
	 Go0fbprP2+uAOS1GrOP2DrBtIexr+/nkmCHiq8+Yw9uyQSovfhT5H7FplYdwpYwiqN
	 vsjg5Y09lqa6y89IllWATHpKFJHzIBsB07aczp6jYB1nGeunQreUTEkyNnt+UpftNR
	 Is6BINGR8fFxpvds4crii986Hydij1nTVW1eVOITLguZDu3b5Yvt4RQrSm0bvkAWgy
	 /NxrBj8Q08UZA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5ED7C61070;
	Fri,  1 Mar 2024 15:25:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3FB4A1BF326
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 15:25:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3A498610F1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 15:25:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id khiq20Ufdd2s for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Mar 2024 15:25:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 597F361033
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 597F361033
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 597F361033
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 15:25:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11000"; a="3699563"
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; 
   d="scan'208";a="3699563"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 07:25:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; d="scan'208";a="12773296"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Mar 2024 07:25:28 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 1 Mar 2024 07:25:27 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 1 Mar 2024 07:25:27 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 1 Mar 2024 07:25:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KkGaU+ht7rqUG9l4Fs9u4L3hLIcN1pEE6UYJmjqbh9YMTcoKPdsbV9QWgZ0HZPpUUVCckeZAeXCrFBcSZjByjTs16UJidJ7He6K6H59b888sxs6Afo5FyzCpSs8+P0gbY8xqi/fJFUOp5LSrhRam+KFt6EW9EQ2AAS6fpgIRtmYsqMGCp+POLTj5jYqhI7dXgcbs9iXjPL+ZWpbTH/VeBAasqdenDQfLbulTcBz/R45jw7TUQEbaJeOm9luiJ7L6GWdDrSFtBdLE16LfV9KaSpTWkV5/YHM5kHIDdY+sx48so8YdwPu0ntQTXRBmWTwNL05SW0YIsMC0XDsZjcLeBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sv9lMbOOlu6FKlrFMS4MVwJimyFlGnejgkVI5riPPzw=;
 b=jgvpOqjAiq1DvUhuQgi+OR26skHs5PZi/vqH4+9McjVkeapji4T22jIxZT+/GehW5WRQWnwqVNXewD/N43Dz+KR+WWbuB3Ux9ZaYTkztlrUY2vV2UYXwZySRngkuZk05GXT8zmP+cRbKF6/mxDe0V5gjY2ltHiJw7uypkuk4oLFyoyVowToZF3oBK3RhAglRFo4xKdMWc2sXq9pT42Y0Z+xU45Meg/mU5tKcqmuQ4KeXApnSo4D9h350kInOrbmDqxfpKIFP1+zWf6WbTZC8dymqs+t3g3U2bz2jsv3FMHnpJPOibVangxa/MMwy4iEmfXjHb/tLLN93thHdTZPtWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by PH8PR11MB6830.namprd11.prod.outlook.com (2603:10b6:510:22e::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.16; Fri, 1 Mar
 2024 15:25:23 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::1859:eed7:cd98:cc08]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::1859:eed7:cd98:cc08%7]) with mapi id 15.20.7362.010; Fri, 1 Mar 2024
 15:25:22 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 0/4] ice: use relative VSI
 index for VFs VSIs
Thread-Index: AQHaYSSELGeKVavlUUaj3fsD+eVfRbEjFupw
Date: Fri, 1 Mar 2024 15:25:22 +0000
Message-ID: <SJ0PR11MB5865FE87CC665807FF632BE48F5E2@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20240216220638.2558451-1-jacob.e.keller@intel.com>
In-Reply-To: <20240216220638.2558451-1-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|PH8PR11MB6830:EE_
x-ms-office365-filtering-correlation-id: 02f9e953-cd1d-4121-171b-08dc3a03d006
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: z0tqSgh/Dhetpbfts6x1U+gf/3OjSSHrrZcP+UsnBw5mwO69+vE59BpTCfm9yoDrS2zo6sXQQ+zNFh0AXT0+470D/Y0nK0E+gda5XIACflm1A67O8JVislMo3AxBpZjtB+1U2hke+23AKZelBH1PmO9/QB9g3UTQFNqo8hgVC2yD8Ko/QEzG/CSzChQHTU4JIfeKferbC2wdrAzJ8vuuyHC4bFmMegD4GrZ43M1/XPAvIHW3CtIh6oXHO0GqG57Fd5210TTyEGnGw1AteIsRqJytKC7q9qA0JTUwIn/IU9bHD8KbfEc2y/N3at0G1FPGfhHpHpxiUh6OEXOjYaf2X34r6/MDOnoJXMJWtdGlHgIP3RFe1DUVIOdqfUH/tSh3VpSBHkcJ4gH5N0NlqxbYWGJZM0HVR0NdPsQf+xBXfUhPTUhFTe1+BrxPDNNtNHnyLKhPlABqJXdBUNNi6hPQrTSu0IxaQNT1qZNYDcCcYQSt70Oq5xlgp4KQTo2CetkcvlHExgnnJGd8ZpYmPSzR9jtrM3cqLA8Iw9QxHSj6qldu/3QLIXVd2bu4Nq/kzy7ngARP0DpY8WxUvimjuQpeIAYYhU62VxwPzc8TtT/+9tRDUp78d1mnbilcKRvvOp9tXcJAIaaPLtGfEeCurvzL1aQtOM2wOrgfLflD8UmYzoH3QfIbFcwZEJXdneMTZJhQQAK9AgJsaQRQtfDXuT4r1xOUse+m8YVymd+bMYBxQLU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CdHueJJAw4Om5I/27//UqQJgVfWBlkx4/HnM9dyr43haTLC4KD4c0zcI6eQ5?=
 =?us-ascii?Q?kswqbpdpdRfYvOSvh+6OamUqBL0gpqlI9oSB1bEBuNCWf+b16p9fR8qPOS1i?=
 =?us-ascii?Q?ze0cpHtXUzVbhAUPX4OqlT5ZjENaHNiO5yjas/vUs2bf7LenHGuaxXSJB3ql?=
 =?us-ascii?Q?iJewovuhtyoz5P/hPsG0KtW5of4tk+2xeFNOgZ0uf1jygESu/2oP4kUnRXGC?=
 =?us-ascii?Q?3MrgzLu8VbPFBrC9HPTZyBmjeZPI6MCGHl9zqy5goidI04NolFCIxngqREvr?=
 =?us-ascii?Q?7pBdzCWYjlwuobMDwpSFYMsw3eBGWEDnX5FpXK6WdAKtSSZgoyA8XIJW8uAv?=
 =?us-ascii?Q?oT6GBXT18OgNq9idj3Wgjf7CUDdBlRrVOSxRbSQwAT9Ml2V3lhyjY893DEdj?=
 =?us-ascii?Q?C1T9Ox7sjNkL+Qt4vcsUPUlXUvy0pkWbyIGW+wSieN2l4tNB7P3iimy9OXs8?=
 =?us-ascii?Q?kBJUwCWSwGUOOhgv7xotuzIgx+UeoAp8v1PASP9WM0W615cFGMXG9MDIMjyd?=
 =?us-ascii?Q?28+iI4kOtRBLp3n9Trg3GUZcT9RvTFjt0PaLT2tzOExywti0e8WUoBQvrd43?=
 =?us-ascii?Q?ZMNRYFt5ma2qpiE/1vjB+dX8ZupAepcBXa+MMNd0mn7Rqboixx/vd02bxIYA?=
 =?us-ascii?Q?rhv2yioKzYyMyBsjaFKuVRf0XqMjF/9+7eeKNByjQi/6tOhMv0X/0DsSCNdx?=
 =?us-ascii?Q?25MwVu+N6CgVGwQWlW+up2C3cLyB6ZY2fHWAB8b+coqG6EjSGdgusQJWzxkH?=
 =?us-ascii?Q?2Ni2HOrlSAOrMUPZ8ZXzZI4+BWywwvBS+Jv+/yukKzsGBdWYcIKWsM+0NzWo?=
 =?us-ascii?Q?yKwESRJud6Ln3zzI6uDps0RPzo8JDiGWPIvI0vo6og25NjrcncPMisGPrzzh?=
 =?us-ascii?Q?ytQu9WwEor4eEOXnophBPo13tBRQS3AER8bQbaY6MwaAJzi9sbbCIHVBY0Tv?=
 =?us-ascii?Q?3aYgHXdCdh0ULkZ4W+qbDreMyaBudPKiX8ej42pC4MkIQzHyQyDdPg2EhqJZ?=
 =?us-ascii?Q?7B876MfDJUHUW1gAaeJdOsaZxzzq4jiHACT5sNqr/VfUd/rSy4gF5Khql2W6?=
 =?us-ascii?Q?gt+WcQJBKzXsG/qJuqHYzAAZxOZ9OabY32FFmgo3NBi/s/mcdN4rnX19ZNsm?=
 =?us-ascii?Q?Xv2PmI7lZvT6OvfLoEr5IOnjpILisX7Sa39N72ugrhnF9G1rwFIXtLyiWIgU?=
 =?us-ascii?Q?ivd8l16nIhWrx712nbwwP1oMk27pWau20/aUJHNHYS9mcVAE1Hhhs3BQh/X9?=
 =?us-ascii?Q?4SUvRZClXVSpc5xLwk3J9ZiLhKtxqpHJ1fEHAKTeqqrWno/qzGDcJGU6PPR6?=
 =?us-ascii?Q?as/CV1UuRRB2af3Wjd2f0nSaywNIGlfYbCehSw5twg17csVz9XQWIAL+1v1b?=
 =?us-ascii?Q?9vQmtmC6os11DEAdxh0SeCJCpOuPWD3AXPBX6qfEBu46kXVf9wIsk9uFs2Sr?=
 =?us-ascii?Q?aqRDgVW6bNY5QyhDPN5qpCKTzhP9c6mchxIH1eQ5EdaqFlSv4TTaPw5n/5Md?=
 =?us-ascii?Q?hKJpD1LlvJOwol2YgOSEcqALn4RJ/GZ+et0MLDfyfHY+XyoqqyasuRmRgNof?=
 =?us-ascii?Q?NxA9AWVb56dEkeZzyRMnryH6UKvlcTnZXG3z+Nbe?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02f9e953-cd1d-4121-171b-08dc3a03d006
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Mar 2024 15:25:22.9095 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XjJthUv8PtwdCa4Lg9A7QnvouyZPRhXTqEs9y6g2NaiN4XU+MkSrjnYfQj8bPObnSUOc7K1UEPELCKAPsbTQ/DUHDPBcVsK814yjKtkndeg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6830
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709306730; x=1740842730;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=x8NvmfNm/hcrh+ro/kSkXxTr8Z3j5+Y5wdQMtOunorA=;
 b=RfYCBTFuTzYX4OIpX2dLklYOtah9+uafSUap8xe3L66v84BCdoN/2mem
 iZlrheOYRG4lzFHvF3Ab5ngaEVK4aMR9XSdxByGxRUWWONJxNpijon56B
 sKgXftCfSsZHyi1FCHzC8dBHUxjMUEBvJ0PsUGjxbep/YxPjWV3/f00FX
 XaK+abt+Xru2rK11pb36djEE1iLYq/XQOfslY8m6zdt2bOBuER4xcds9X
 AeNwpH2gZv5MlIT0kDmgECkNAE90ByP/pGtG5Mk6D208ZGpuuomGz1gIn
 JFdPsnSwLeoslSZyxEtvOLhu0lXw6X2O8nClk/uZQOdC/mwOaEsvdjZ+i
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RfYCBTFu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 0/4] ice: use relative VSI
 index for VFs VSIs
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: Friday, February 16, 2024 11:07 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Intel Wired LAN
> <intel-wired-lan@lists.osuosl.org>
> Cc: Keller, Jacob E <jacob.e.keller@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next 0/4] ice: use relative VSI ind=
ex for
> VFs VSIs
>=20
> The ice driver currently communicates firmware VSI numbers to its virtual
> functions over virtchnl. For E800 series hardware, the VF driver has no d=
irect
> use of the VSI number.
>=20
> Some older legacy hardware could use the actual VSI number when
> communicating directly to firmware via the AdminQ. The E800 hardware does
> not allow this, and all communication happens over mailbox to the PF. The=
 VFs
> do not have a direct access to the firmware. Additionally, none of the re=
gisters
> exposed to the VF depend on the VSI number.
>=20
> Further, the PF is able to lookup the VSI for the VF without using the nu=
mber
> provided by the VF over virtchnl. Thus, there is no reason that the numbe=
r
> provided to the VF must actually be a real VSI number, nor does it need t=
o be
> distinct across multiple VFs.
>=20
> This series modifies the ice driver to send a relative VSI number to the =
VF
> instead of sending the firmware values. This simplifies the interface wit=
h the
> VF, as the PF can simply validate this relative number. Currently, only a=
 single
> VSI is provided to each VF. Thus, a simple static value of 1 is used. We =
can
> easily extend this to use a proper relative index if we enable multiple V=
SIs for a
> VF in the future.
>=20
> First, a couple of patches cleanup a few places in the code which still u=
se the
> VF VSI IDs. Then, the VSI ID logic over virtchnl is changed to use the st=
atic
> values. Finally, the vf->lan_vsi_num field is no longer used and only set=
, so we
> can simplify the driver further by removing this entirely.
>=20
> This eliminates a path for leaking information about the PF state to the =
VF, and
> simplifies the PF driver logic. Several of the removed code flows require=
d an
> iterated scan over the VSI list to locate the VSI with the reported VSI n=
umber.
>=20
> Finally, this has significant value for a future series implementing VF l=
ive
> migration. Now that the PF always passes relative VSI indexes, migration =
will
> no longer need to worry about migrating the absolute VSI numbers sent
> previously, which will simplify both the migration process as well as con=
tinued
> handling of a migrated VF after a migration event completes.
>=20
> Jacob Keller (4):
>   ice: pass VSI pointer into ice_vc_isvalid_q_id
>   ice: remove unnecessary duplicate checks for VF VSI ID
>   ice: use relative VSI index for VFs instead of PF VSI number
>   ice: remove vf->lan_vsi_num field
>=20
>  drivers/net/ethernet/intel/ice/ice_sriov.c    |  1 -
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 10 +-----
>  drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  5 ---
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c | 31 +++++++------------
> drivers/net/ethernet/intel/ice/ice_virtchnl.h |  9 ++++++
>  .../ethernet/intel/ice/ice_virtchnl_fdir.c    |  3 --
>  6 files changed, 22 insertions(+), 37 deletions(-)
>=20
>=20
> base-commit: 6cffde791c4f1c276fdfcf068554c3c77de35f40
> --
> 2.41.0

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>



