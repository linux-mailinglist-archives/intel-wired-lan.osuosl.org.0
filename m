Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C785CA2AB90
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Feb 2025 15:38:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4359A846D6;
	Thu,  6 Feb 2025 14:38:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8wEG2kUqSglt; Thu,  6 Feb 2025 14:38:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 469D1846D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738852692;
	bh=LC8caHR+UaOqnVfxOe2/zaix7foyGuSEJMvGJbc8lks=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1MMmsnsdZTlIDUQ54EHzLP7M7TzG6Bfve0qgE5oWiiCSMkQEHtZpij8fSG5v0RoBg
	 BE3Z8XP87WXZTP/4cqAvWBjWh5lGy2CIZvirniu3Fz5snyIJb/1jIdYw/x/eMzPU/0
	 k/e6rrsqPNAfE/7Rdok39xQN6Ymue3DI2S27mBONgEs3Mm5+DYaW/AEL470uvMiIAX
	 v7xoG0WnWPxEtXQ4TNPIAdYmQHwZ0NRV1Y5wKQKr1aF9NgEKp+Zu8FGHHiHjgH0jrs
	 3+hkDVzBec5wZDzld8gvuoZMSvZbWFpilvlna63CYSVllVweTCjqFCIKxe69JDorhD
	 EsKLwuT6QgOOg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 469D1846D7;
	Thu,  6 Feb 2025 14:38:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id C70B8CF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 14:38:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B681D846D0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 14:38:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dfj_axjTKmLc for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Feb 2025 14:38:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A1F7E81350
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A1F7E81350
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A1F7E81350
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 14:38:08 +0000 (UTC)
X-CSE-ConnectionGUID: o1wIZffbS56WG6SqYL89SA==
X-CSE-MsgGUID: ef+W1OadQV6oi55skEgUTQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="39570930"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="39570930"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2025 06:38:07 -0800
X-CSE-ConnectionGUID: DQ2aEeY5R72LGvIzdXYLow==
X-CSE-MsgGUID: V219oZRhRj6Xii+epBsy4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,264,1732608000"; d="scan'208";a="116256404"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Feb 2025 06:38:07 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 6 Feb 2025 06:38:06 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 6 Feb 2025 06:38:05 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 6 Feb 2025 06:38:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R1s0Bt7MijilT7QCdEBjhyxCCNeyv6gosXe1V9B8aYrcPgqVb1wqLwKCxWnkXtdbquT7YoAQYG745VGM/8TZjhdVmTGRvmoHFjCXmBLmrTHNnY/p0ETgk7HkApJfvnjN/cp3tty76HpWgqaV7CufUSvRED0WcQnyXWzAHXhBLnljQwwkNdBalerfNVy+jt+9ArYQSQSAjGFWvKrrKyswu2ZaiB63M+ic2eJiHXazv88HoUUslt3Z9MNGy5QRCBu8o4H96aqeO6q1rULOuyksUOXJ6muLXX629o9zVPYHqphT7Xlh/60QGvKFUzqFWmhOuK5A+J+UCbe+8OFR4B5T8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LC8caHR+UaOqnVfxOe2/zaix7foyGuSEJMvGJbc8lks=;
 b=lKylD78WNKYlZRi6Moo+z0YhZAvvivDKUx9EvWDdGsPfRexfWVHXqtqrSHncfxM7Fzhm3Np6yEZahUnpKsZ/qvC79mueaMQisuZyKiddWr8RXV1vpIdJ98k/p0JRZF7USxF233Vpoqlw1RlTBOZF6TqUDju7nwuGkITo5zT9qsKWSPzWNlf9p2dFzg5tDwvVduAlvtYFkmEYkwNIajbExYYZg0cZnVMhaDZbzzM7mpsSzL1MgrYoBtZ88e3SHhvY3TAcKgjbjjo0eiPKk/yyQlhBHzUnJ3HBVt9RDIiWegCRMEQJhAGuTnnJFN6Ky2CE2kJbiFVngoNz9ALMNhCRmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7785.namprd11.prod.outlook.com (2603:10b6:8:f1::8) by
 SA2PR11MB4890.namprd11.prod.outlook.com (2603:10b6:806:117::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.10; Thu, 6 Feb
 2025 14:38:03 +0000
Received: from DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::7a4d:ceff:b32a:ed18]) by DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::7a4d:ceff:b32a:ed18%5]) with mapi id 15.20.8398.025; Thu, 6 Feb 2025
 14:38:03 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: Andrew Lunn <andrew@lunn.ch>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [PATCH iwl-next v2] ixgbe: add support for thermal sensor event
 reception
Thread-Index: AQHbdta7xAZOXWLD/EuwSFeTRBNAMrM3HkcAgAMhq9CAABD1AIAABhpQ
Date: Thu, 6 Feb 2025 14:38:03 +0000
Message-ID: <DS0PR11MB7785A56D5CC627637A4B5E3CF0F62@DS0PR11MB7785.namprd11.prod.outlook.com>
References: <20250204071700.8028-1-jedrzej.jagielski@intel.com>
 <0a921f6c-a63d-4255-ba0e-ea7f83b8b497@lunn.ch>
 <DS0PR11MB7785AA7575BBA0E6FD576B31F0F62@DS0PR11MB7785.namprd11.prod.outlook.com>
 <0b81ee70-efe3-4a06-b115-1a56e007b9a7@lunn.ch>
In-Reply-To: <0b81ee70-efe3-4a06-b115-1a56e007b9a7@lunn.ch>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7785:EE_|SA2PR11MB4890:EE_
x-ms-office365-filtering-correlation-id: fbbc14c4-ea6d-48af-2f33-08dd46bbdd03
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?peYJXyfak8Kfwr14IYNk/hMTyS08MsuY/d5aeYvwqkPJ/Eg+KWqkGEoPzM1j?=
 =?us-ascii?Q?R9Vk1yJzxTLzJRE+nrePOeK73nANY46zA6UEGDmZkwkX97MnkGqcbh1U9bLU?=
 =?us-ascii?Q?9uilajJ5YsRiHrv5ZjqYJJS712Vx93wWL8Ht0pxLie0Vu+MQIHjCjtrC5Qk1?=
 =?us-ascii?Q?DqWjiQoswrBKi+ix1OjghzGrRej5Pr+qRZm+lz6xCkLqrXYker4diSe57g4H?=
 =?us-ascii?Q?w6JPL/bjzoWpbYoyGpPPkrvOqXLR3emQso2Ts5BWZdlbXWWbT8TZ/ZPNampA?=
 =?us-ascii?Q?NGncP3gq24+qs0DpMsm3QlOy+KMt31A3qIn9HVY/M2bRZCoyfRiiieQwrjMf?=
 =?us-ascii?Q?eGjPoqR+4N8aof23b8MbfRpsSEBEAK041GAVfV4AOHXmpEg6HbDJNb/gh71n?=
 =?us-ascii?Q?7El0h3DDwAXA/Aoh40/BDljJeqzPxH1r3tt7q1Uzru7CNboUZ8YfA7vIvcw7?=
 =?us-ascii?Q?GQvGNYf4gVNZNu0u5kvA26QO9qOqjPKGrcEakmShbMt7xIX4ZtsiggAWfLOe?=
 =?us-ascii?Q?GHdlvK530ksFwSCu2IHy8F/4L2Ar4xa3+Vtr2G+PrMrDAXNv9bGEeuKfi7YB?=
 =?us-ascii?Q?om+tQk93As7b0fN84G+gF2RrHjFswTYLA2EOWSsrePBwe/lrYQDPm534kZrW?=
 =?us-ascii?Q?xukdhsyT038EpUKHgz0bNcPDvn6iUu7jYr0V0vsk3XHjhCEYRf0Ot9gHsXfS?=
 =?us-ascii?Q?JdFFvALoLCbWoJdXYBmkNsUwAPYidMEyANtyeTmuw/xsIctaO3joH2OxZjS2?=
 =?us-ascii?Q?zhpwP29lgHz/C/L7pFIWC28rskWCKq6kkCl6d7sUVEHj4zOZRGBGE9CdiV8w?=
 =?us-ascii?Q?basNCl+qtkqUKpf4+vI4crJQjq5GtvWCYPK9RleYULDBjEDpbM4ssbVDgATn?=
 =?us-ascii?Q?AV7CzOurQtnKDxl/q5z9eR1TUTg/prF6078MPVGtR2I2+oYtE3afEbv+eIeN?=
 =?us-ascii?Q?lUfEtJG/rGVFy4vOybEy35So0Ue9XD+PzLnU0YN29w3E4/1OQsx7uyqmNqCZ?=
 =?us-ascii?Q?+QQG8/pBnjV7HBZbabfKwGdb9Hja+GD8IheYIV9M14pfdQRbcA9EcguSHTsp?=
 =?us-ascii?Q?0bgKNIk2+wkYe/Cl97FEzEtWauyoGcWrQ0wurqqdatfuQxa/sfOYLDiUxId0?=
 =?us-ascii?Q?2mGtXqtMZhucSIH8anxcTd4V4hS1AttKMpU4frTti72j/lckzd03NzGkhjg2?=
 =?us-ascii?Q?BCTqArmuXCIKw/OhloPrKaDGH4Bspl7ID11PAzrr8LubH6aCiZOtuZiBRJs5?=
 =?us-ascii?Q?+rlTOn5+8PUDRPsq7hFTSkg2ah/5FBhIbQhhyCersFTYmfFl/qsefKrY2339?=
 =?us-ascii?Q?WDkGItLjyH+evZFw8Nt+/PEzmQgHwKRAnPuC2MQ9MifG5w4DSyl2uwpZPiaK?=
 =?us-ascii?Q?4ynBtOX0YZQgEAmCA3YtU40ZWJ2lZZV/0Idw1FYDbRU+vl5oTA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7785.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?A2wqHrBa8cfs1H75J1J4T7Tc6ABnw05BK5Enhq20G6S69E28h9loqu3Wdshx?=
 =?us-ascii?Q?Uc2kHhNZdEhs7PhTRro7l9vgsPPiKkoJ2vdQ+hBS07uretHNOls3+QNqojdH?=
 =?us-ascii?Q?zS8m9qgHt/cHK92FrrAPIp/KKLnat4tDHhLAa3P3rL7PQUQP6cX08GQ/rlKr?=
 =?us-ascii?Q?D2KkM7PEPZzfAaHjX1N3o2Qaq/SVNsVIPmcT7bCNhNpQIaq7+hUC8cDJVXKe?=
 =?us-ascii?Q?+m7KIjpbRVPl1dwZWPxe7IEhN+j/AeXTYqYIj731ZcHbFEcvmDMGGCDv0DEU?=
 =?us-ascii?Q?eHF8bcyJVKsIrLdr7Lf1pwlOGFKAR0+8lSYhc8lYWOv9dA/gdQ8AaQ3Z0DN/?=
 =?us-ascii?Q?ve3YlhlveTxw/CLi6QEy9kORZ+c0geO5GBBLpUz0kJA8SBYGGekeq4K1vxNH?=
 =?us-ascii?Q?Qeft8+xQLNMNBSZjfqSO3dFvDOXRSeTPQb1qJdkF19LUq6bHedrQYWZFLUYN?=
 =?us-ascii?Q?dGfLdipx1TErc4GeL9J2m3ikkqMlGD2/lkZzlxHyvirtw1F1glsskRMCA8kP?=
 =?us-ascii?Q?KiiMQqcXhlLD9mYb6ALcevyQUTHqlYD5G7572pXbmjr/KYScb46Ww58vOUYp?=
 =?us-ascii?Q?upN2JYL/XW9jl04mrgoMzsZcEBRo58ns8r52Kj5I/BtjUiDyWK/hntKViVys?=
 =?us-ascii?Q?TufUhBUP13BCAZk38nJrlRYHalDso1drB+hdLYHCql6v5JoF+GJeW0KRwsyf?=
 =?us-ascii?Q?lZiOtREDVI3BRwixIQrBRCFlg4BUZIunNdSc7j8+nXc23zFOUlZ5/Tfr+AmC?=
 =?us-ascii?Q?FRQJVQUiRfm+ngOMGKfgZcx0/lUmRFIslojGO6MDA3nCB0+mT1IHNbDAC84t?=
 =?us-ascii?Q?wgcu8+SyEGEhh0yXpASj82EhaFqW0Z79/cqy8FUl0QQhoTgGRheEluAyt0Ju?=
 =?us-ascii?Q?GsGtYClTJG/0mwvlhwWC64W8NmYY+bQdNcVrCrlmYt70qBh762cqB050uB5p?=
 =?us-ascii?Q?f13mc1fjwL7p2Aa+DM/OOnxHZNDtEqztIF36egHOi6Mvv75uifYLnWdIWSRd?=
 =?us-ascii?Q?ixZFanVoayWqAH3q0f0WnYMk/CInQGjf/Y3+Y2xGcto3gbefrEiWmDmA0twb?=
 =?us-ascii?Q?ihVm0BFo3KYncj/ZYc9PH41uDloXJg81fXifzEVDo2dSnW9HCnmKGzhiInXA?=
 =?us-ascii?Q?/P4l3UqulzLHPL/UQREHlEj17Ex1vMwOroIfJvbwxSJb9h/XhZ4sqsFcYw6v?=
 =?us-ascii?Q?FweavAJtzJCXzvxhVRVi3RaBVOpUMAgBgvJ6+T0zhYjq6JofLjBbC2K1GU1x?=
 =?us-ascii?Q?2jVycO0fUU6cNcDlewP8kuqdCAbzahHaOY8s9+uFcjvXxVgZP0bm6zSH8um/?=
 =?us-ascii?Q?qAycybtMgO/jFaESrSLv6vK0YwaFlPqb0cslse43HkrFC8R/ZYEY9Nc/9gRz?=
 =?us-ascii?Q?4DaTPqMcD+pa9H6OmwZ/6WVuct35gLZXV8jSzzdeUxYFuKRDAFrp8drCvRKB?=
 =?us-ascii?Q?XCdkAko4AXnJD/eyMQeyswl4z2Ec2MilcbPtVKFLCeaMMoDGZoSE/Thj2dDv?=
 =?us-ascii?Q?I0P1jNXb2tzl02rF4hbu4WUGVcJdr8+3JU0r++8xiPCX3RdxccBXBZJuWTsE?=
 =?us-ascii?Q?+FsTpNnzgaN8JGM8qnVP+NHlRD/Sq0A+M1j5f2qb?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7785.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fbbc14c4-ea6d-48af-2f33-08dd46bbdd03
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2025 14:38:03.6684 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jRfGCUFGka5KsLxRUlmo6wVUls9mZedbYF4p5ncdx8OAjdR3xD1A+K5BVQel1RKvQl+AajNIpJwtclJWS1XSosaguQvyTXksWZlubnC4/YU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4890
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738852689; x=1770388689;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2wrXjwQL+QOoAa4nsOSEvvkIe3F3JxCwhZpYCWoNHrA=;
 b=CD7nUDC+9iJmPAZzjqodnXpvTthUcdRu2tscPOFhUcg+pU71So/+45q4
 QiE9syjguSwCnSrKgIREZXqZK7WDaYzvM/Gch+MjWfB4O+3NXY7Kxhxa6
 1yIF8qFutUkWNef5/uUK29ijw2uwJEwEbEqO/ejyEBUuA6yWG5XT6QWD/
 hxqPmnLg9c2PnxvsZi79B25qfhCqJTkRQC6VHXByCT6SfXfAYPXhyBbaU
 GqUSk21ByAzWmLaOvAJ2w5ywZweHPRVJtq/O7hTpMZaJdQzt7yN6Aut+O
 62LAIoC+IDtYi9I1RoqUqCzLRhiY6ZgDU9pWgF1j1vGp/C27piLAZ0FAC
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CD7nUDC+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ixgbe: add support for
 thermal sensor event reception
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Andrew Lunn <andrew@lunn.ch>=20
Sent: Thursday, February 6, 2025 2:59 PM
>On Thu, Feb 06, 2025 at 01:05:27PM +0000, Jagielski, Jedrzej wrote:
>> From: Andrew Lunn <andrew@lunn.ch>=20
>> Sent: Tuesday, February 4, 2025 2:09 PM
>> >On Tue, Feb 04, 2025 at 08:17:00AM +0100, Jedrzej Jagielski wrote:
>> >> E610 NICs unlike the previous devices utilising ixgbe driver
>> >> are notified in the case of overheatning by the FW ACI event.
>> >>=20
>> >> In event of overheat when treshold is exceeded, FW suspends all
>> >> traffic and sends overtemp event to the driver. Then driver
>> >> logs appropriate message and closes the adapter instance.
>> >> The card remains in that state until the platform is rebooted.
>> >
>> >There is also an HWMON temp[1-*]_emergency_alarm you can set. I
>> >_think_ that should also cause a udev event, so user space knows the
>> >print^h^h^h^h^hnetwork is on fire.
>> >
>> >	Andrew
>>=20
>> I am not sure whether HWMON is applicable in that case.
>> Driver receives an async notification from the FW that an overheating
>> occurred, so has to handle it. In that case - by printing msg
>> and making the interface disabled for the user.
>> FW is responsible for monitoring temperature itself.
>> There's even no possibility to read temperature by the driver
>
>https://elixir.bootlin.com/linux/v6.13.1/source/drivers/net/ethernet/intel=
/ixgbe/ixgbe_sysfs.c#L27
>
>ixgbe_hwmon_show_temp() is some other temperature sensor? Which you do
>have HWMON support for?

This feature is not supported for E610 which has no support for reading
temperature

hw->mac.ops.get_thermal_sensor_data() callback used in
ixgbe_hwmon_show_temp has no implementation for E610, as there is no
such support from the FW side

>
>Or is the E610 not really an ixgbe, it has a different architecture,

ixgbe is used by several adapters, each is slightly different
in this case monitoring stuff is pushed into FW

>more stuff pushed into firmware, less visibility from the kernel, no
>temperature monitoring, just a NIC on fire indication?

yeah, right

Jedrek
