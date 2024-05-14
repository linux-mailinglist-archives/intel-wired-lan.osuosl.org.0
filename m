Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E13A8C4D03
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 May 2024 09:29:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 456BC60AD4;
	Tue, 14 May 2024 07:29:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iFB2fe-UpNIu; Tue, 14 May 2024 07:29:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3BAA660AD3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715671779;
	bh=MFE7RJC/bKtTvPZPPUg9gUiec7D5woulHV0qzgqQ6VI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yjz16qTzNOvw7gL5sGQ0HMWCy/xusxNFnE6tgptxMNzqiDNhpEfV+/KO/ARxIKKV2
	 1omh/cZe8vaE0U9pYaS1hB3dKk0WeO6/3Br64flgoPh/SztIFFKaZyTPEKhKpWuRMP
	 AP6eLeWZhDZAHP0wTJZIOqwwm6xkOmcTd2RrSFV6nYkB482aX7lnwr/GJry1+tHL1e
	 aqyK6IRG+I7jjf+aiBOhkLWrpW+0lh20dJUvqMwVGy/bWFRDPJ02LEHBx1eE/mecc4
	 eQIihpA0LbCL1ALDL9ClehpATTxvE7akyx2RqxFoNGFWZu3bKoWEQFr13cGHMlqqSn
	 i7AWnTJZz863A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3BAA660AD3;
	Tue, 14 May 2024 07:29:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 383681BF309
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2024 07:29:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 23BEB60ACA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2024 07:29:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UvXhirpr_SzE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 May 2024 07:29:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1BB4D60609
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1BB4D60609
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1BB4D60609
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2024 07:29:35 +0000 (UTC)
X-CSE-ConnectionGUID: 0d1OFXJESmuNDZ0otafNww==
X-CSE-MsgGUID: jnW68LUlQXOpzWRjyxehNA==
X-IronPort-AV: E=McAfee;i="6600,9927,11072"; a="22309488"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="22309488"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 00:29:35 -0700
X-CSE-ConnectionGUID: AMzs2t21TAOTzieW12hS0A==
X-CSE-MsgGUID: trz0XnnbQ+Cm2ub2tvQttQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="30672943"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 May 2024 00:29:33 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 14 May 2024 00:28:46 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 14 May 2024 00:28:46 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 14 May 2024 00:28:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BbGa5nVgTWIRmHvjLFzCXy9r3vnCywqTJAMn8Ea3WsZHPbQ9vQpVnPjvRzFEwNurOQ1jYGd4DNYk8b9b+CRLPAjaRqIQp9UfcFb5WVbkbJYHJdoWcvY1CCY291U7WkB3u5QtEAM2NoD5TPwcexM83NmGSsOLhEOUw7kYOVsLU7+MezouyZmIVIg1CErd82FsO9ul2GhkgT0RAWykXn3u1256JI9k3QL2Fe2SAC77y21IhNpXCvaR15F+YIUSwXbc1DsTYQhU/xmLxNWCtqCDueoZ7SaXXoLwo+pr0odNGiRq1/4dpHUq0tLd1ba98nIBgO0j6at2Rvj+jYnqtTAqQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MFE7RJC/bKtTvPZPPUg9gUiec7D5woulHV0qzgqQ6VI=;
 b=V4dIiv0PaFJqDn3z8aer+9tDA4JVAlPd8aQbxPjPOSUzcPm9eVDdhu1MwSKqc+UeVj7LK2yGHAax+99fkk8KgZhR3V/JlkXeEfXIAJIy3F8tI5+OyW/6/LVgwUIEyXsE5rMsTPIBQdUPeYoFxD1OKKqG/KfYcuLHqYU7jjRMnhDXFZEWdzqBq/Zq8oaus+RzCgLaez0WkCfKRp0O/Uo8Hd6oqgB1giu6eya17S9143lGF8aLVmr/C5NQ1OYWIFy2BL69KT4Oj1UH631KjIFck4T8geL9hk6s4WGU5nPAh0V5pOOCzJfBR2gkILL8DyZcx/TRRFXDn3qFgtFy8f5O9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by MW5PR11MB5931.namprd11.prod.outlook.com (2603:10b6:303:198::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.55; Tue, 14 May
 2024 07:28:44 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b%5]) with mapi id 15.20.7544.052; Tue, 14 May 2024
 07:28:44 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [iwl-next v2 1/4] ice: store representor ID in
 bridge port
Thread-Index: AQHan5FUQFCR9TPYVkOPT3YdbU7TebGWYX9g
Date: Tue, 14 May 2024 07:28:44 +0000
Message-ID: <PH0PR11MB501388175237E5C497F90B8096E32@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20240506084653.532111-1-michal.swiatkowski@linux.intel.com>
 <20240506084653.532111-2-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20240506084653.532111-2-michal.swiatkowski@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|MW5PR11MB5931:EE_
x-ms-office365-filtering-correlation-id: 14601a9c-d436-4adb-6bfa-08dc73e77c5e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?Qq+KDic6hy9SjCKzj5lm0XOek2KfzRuSqnzBwmLOhZq9y+02JvQZV2mz2GQQ?=
 =?us-ascii?Q?Lh1XB2eHRr2fojuTI/L2EHzPujVfQxxCW56PiVdQh7VqNEQ/NV6TIW7BCY5J?=
 =?us-ascii?Q?+tzraJ6eOB6SLl5n7Zs7B7sE7Fd01TS8wQCeehGJIvKKMCYh4+ZDBAzvqW1i?=
 =?us-ascii?Q?ST3TOREJMmIP+z/snBjy73Mesrx66aUz58DC/K11RZYOH3tahGXXNQxQ2/I8?=
 =?us-ascii?Q?k1ImLeumUVirIGcBZWERczpnrGTA+vKYd65MywvjB16zxfevMktE61U9kNlv?=
 =?us-ascii?Q?FTbG1gk4JEL3PqbhjuO9lObaFO5BOvTqjZVt/I5ioaLF31psoqvLIgCu0YVZ?=
 =?us-ascii?Q?Jf4Y82M9WKpruIzkKOT8jY0yrC+bfonSwrX0N2J/9SPSHejLunhoEbw2Ii6M?=
 =?us-ascii?Q?pzKKwqc4Mdu+klEjYRf+zGU17AJb+mxZbrjpuzMQE2recXgNFGL6XZaeaY3b?=
 =?us-ascii?Q?Y2hXAScWUQs4FDVIZCQSKUXidZoAHWKsnkPmHHeSsMjvvfoSw5j5adQhsAGg?=
 =?us-ascii?Q?ppH67AdAD07q6Bg6453dMNhG2zMhdE19dTXQI64O6XHv3ZaiBymsRXrVeqPM?=
 =?us-ascii?Q?6cOg6MedY6OHSGaBzwoRIeOrcTziK4aysbPOkU7YRvLof0sg0qCsQY0Kaif3?=
 =?us-ascii?Q?+mdH5AT4+gJNQGpgn8hi3JPYX4JiSmBlFm67nMs1uK2GkaDBvRrDOR3HOgof?=
 =?us-ascii?Q?24P0sn0lbJKrQmzF0V+faDFcUf1A+VHWceADJFVyNXjZVNz8qVdlJVCf7Rlc?=
 =?us-ascii?Q?nTo4PjdqTWDvNAcnjm6qPkj+CooZKk3/oe3g5HfZhUuAyqJc+uCUsU1gaITz?=
 =?us-ascii?Q?RUbU2T3U1MEAZPu5Eiz1EjYo+nZYNhV+jjv4CZumRBKDBuXdeXXb69xeO1e8?=
 =?us-ascii?Q?//loRvReNEnlb3PRwbWEPvFBRu92pJQcoAJ4BCvKnU15SGzelJ2XPyGOrV7v?=
 =?us-ascii?Q?1UEf8jjjvUii5zZfpZaxhYm6AHe04SuBEdq3FDcHTqahG2AhFtnnC324qA3t?=
 =?us-ascii?Q?VA0Ce4WVmAOR7OJvfP3inC1nXpxb3fu/G0VK3ZG/NzeV4hJE5Zv5h5Tso0Dh?=
 =?us-ascii?Q?EmvbdmsiipCiL1c4NL1SrWDkCPcsbeJ0W1cMyMrFqGViKdikXTEDPIZad4F0?=
 =?us-ascii?Q?E1S+b5OaJWKTJa/rLjtlbindTigeFpZGEF9MQMPelWws1nWhLzeCJBUjEOxx?=
 =?us-ascii?Q?Qgp8i8PBa05KS4GgBP8vT7L5ea+j6MA0yPjspAVP3bb7jqiNp3Gq9Lp1kXv/?=
 =?us-ascii?Q?OXTfcTMKuAXXSIXYz11qzCpnjRFsGGfzP7LXOGOjfn8hGsk8YFFlAFDQfO7t?=
 =?us-ascii?Q?WIeNlgT74z0j5Pfp6lLThOdRbz0nt7Sh0QqPXhQAeZufdA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bKA6rTKGZBiMmpy1PaeDcrKdwtheTqKjSKelFqrgSPZ6geyx2UpjWYcHzj43?=
 =?us-ascii?Q?cBl01KP8M0TL3jDkWl8Jm3p7tSu24d7VLM4yd3zi8XazI950PE7qvJgy2s6Y?=
 =?us-ascii?Q?cdCeDt+b6WKzFCiSYHf/lMJh8GITOAm7aZWGDu4ZzsH3Kr0m01W1o4CkJir2?=
 =?us-ascii?Q?jP2ZigMEMxWFLfK0aTXAeuHBGuUYR3BRub33Qjs0Nm0Fle0QkKe7qZqswO2M?=
 =?us-ascii?Q?4GM5B/oGhywmXPhKGew4YhUylB5u7XaKyBl8Pe17Mh72jncTApz/+QSsg3kF?=
 =?us-ascii?Q?HFLdDjmh3NwXCBuiduvjoYG8aaY48IgSdV6xIIYjZ7a4If3wMmCh1pBb8LnX?=
 =?us-ascii?Q?GPYs9/v8VVgtVvHhhoWh4FbYqwABf770ZfsH0dSzRZQDitgzFjdsXvSJ6A2W?=
 =?us-ascii?Q?AGAg0LHHutjxG//+SfT6N1okGD5POG/nPthdXK0TWbd5CUpLBpT4mdbsrI/A?=
 =?us-ascii?Q?yzFsD51y/oj6h8maATdwi0WGU2hejbH48xgjcEyWnRYhwTI3K7QSKwU7HLkD?=
 =?us-ascii?Q?Xm2D263548tVZ0il28V3QrcIxWj3M29GKAAgeQCwaRfNjPCLpJDSxa5soHvK?=
 =?us-ascii?Q?VyIZc3BySZjkv5ovKdDTeRa/BXZVJWhu5HzBFSmvUPfbl8nxYGckDUuKDu8j?=
 =?us-ascii?Q?nb57o9EEI9cKvoYDMDJEBBJ5XQu4nsgLk/El4GHnTCKffzr8ZOhEZBvQornD?=
 =?us-ascii?Q?neEdHEqM5i53/4Fj+i4SyGipYlbmWI7TIpVCG6H91e2YTwqJy9m94472shpE?=
 =?us-ascii?Q?SJuscHLF1Fsh/U90SWyjSOrJCGlFJw4JrnMyEveDsQ1RoxFKtaF21PnJD9Np?=
 =?us-ascii?Q?tlW6e8qIZ+3cdbWgEici7pVGZZwF3e5fseNrfaWk52gMdJoAbV7/P6Bj4AOf?=
 =?us-ascii?Q?uri9zLVnl74ORr48/UKW/HhrOhn4IIY5+9ZVunU0cgaXTehYmXz8xtfSG1vq?=
 =?us-ascii?Q?vIiU70RlMbdGlNyfOqRKLBvtjkAWwpg4oq3RDgVlHeQppAUlIOa8q8mM5Afm?=
 =?us-ascii?Q?P+K+LFEZyjaRM2lTN7XjXAwIKivXdAqq16o0voZs18VFzIsU8gi7ROzzWXKa?=
 =?us-ascii?Q?Fd9anxDGlXuOTABBZZze0k95/ZOtzVkqBjd6bsQya2X5oHb6xRP2Z2vuijjb?=
 =?us-ascii?Q?opLZ29PgHBhdRAahIoHWEvVv2I5jNQbLY0L/rlYXbXVzsd4FtTifMXL+9GFF?=
 =?us-ascii?Q?AbBMWPmk+V04ta8Gz2/+0F7sZHMspgUu8xalShKQcrEHfdgsccx0EtAxg0g6?=
 =?us-ascii?Q?KHfywihdFbzL0CP3DgGC8CuuUQM/v6iWj9qQFW2MRlgo0a0No/F1mhKqsHcP?=
 =?us-ascii?Q?83BDrEn2MnxwVtr+KRyKfdKpiluHfX3H60XSSHMEjtDo/TJ6aegseN2NZpbh?=
 =?us-ascii?Q?IlvlkaK6D6TYr37R3cAf9neeEuIlNOVsJ88m82uqHcnUkLAfDnmgwipCxUnv?=
 =?us-ascii?Q?UCcmaH5UwuR3LU/uIkWsh6RS2emMVB4v/vZwfz4PQpQZ8TN5xO2g6HF+uuYt?=
 =?us-ascii?Q?iiNZ7ZasgMVs7F9FM/RL2y5wzNHk6M7wlPPNIBdHv+HOP/S9xKb0ZrdKx+v8?=
 =?us-ascii?Q?XRujiMkMyJKlsMgE/d5dK3ze8iHtJ6HFRWE8QdcjVWLihy9lRsNOTuf0YXJy?=
 =?us-ascii?Q?LA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14601a9c-d436-4adb-6bfa-08dc73e77c5e
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2024 07:28:44.0416 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lUGQN1cq2CDdQiQQuQ3o8i84l2OMGF9HeXXOd9OUVMBEYwx+8saK4lA/fEhmQp9bBL/zGGBAhMLeXUgWYboDNSq/m1AzHw/3C6/uyZg5pG8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5931
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715671776; x=1747207776;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NCyMDvGPDp2TDUwuvHGe3N3A/YF28Wjo4wQdRnpNQ6g=;
 b=jqbziBmDNq/aJF4TV2Sk1/BLP8DGhiyUw1MUUpIoWGuFT1ToYRyVkJU4
 C2zXnGnuSweSfvYM57p3E9HEmQsCPrHc/ycQZimaqFl3dINr5vMuP8c/A
 MshjiZopbpyOd23t00QtdPbHBGUi+nqv97tg1MSV3FCdYq7kNgUMRca3g
 Tlslgg1MYbfTEozIb84HDVgQ7i7zpX4QKu7ds/FPpuicfAEKSuTdQeV9d
 0hvASpAvT29P2RdYDV332wB8MYTS4E/WeTDSxwr8qo8SJpsLH629xzyVR
 /40gErP115OIjYKmTsWk8bFP/AXceOA8DlRInHimbrMl/YxdU0AFJBe1H
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jqbziBmD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v2 1/4] ice: store representor ID
 in bridge port
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
Cc: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, "Polchlopek,
 Mateusz" <mateusz.polchlopek@intel.com>, "Samudrala,
 Sridhar" <sridhar.samudrala@intel.com>, "jiri@nvidia.com" <jiri@nvidia.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "shayd@nvidia.com" <shayd@nvidia.com>,
 "pio.raczynski@gmail.com" <pio.raczynski@gmail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, "Drewek,
 Wojciech" <wojciech.drewek@intel.com>, "Kubiak, 
 Michal" <michal.kubiak@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Swiatkowski
> Sent: Monday, May 6, 2024 2:17 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: shayd@nvidia.com; Fijalkowski, Maciej <maciej.fijalkowski@intel.com>;
> Samudrala, Sridhar <sridhar.samudrala@intel.com>; Polchlopek, Mateusz
> <mateusz.polchlopek@intel.com>; netdev@vger.kernel.org; jiri@nvidia.com;
> Kubiak, Michal <michal.kubiak@intel.com>; pio.raczynski@gmail.com;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; Drewek, Wojciech
> <wojciech.drewek@intel.com>
> Subject: [Intel-wired-lan] [iwl-next v2 1/4] ice: store representor ID in=
 bridge
> port
>=20
> It is used to get representor structure during cleaning.
>=20
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_eswitch_br.c | 4 +++-
> drivers/net/ethernet/intel/ice/ice_eswitch_br.h | 1 +
>  drivers/net/ethernet/intel/ice/ice_repr.c       | 7 ++-----
>  drivers/net/ethernet/intel/ice/ice_repr.h       | 1 +
>  4 files changed, 7 insertions(+), 6 deletions(-)
>=20
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
