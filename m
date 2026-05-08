Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iAYQFj0U/mnZmgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 18:50:05 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA5F4F9946
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 18:50:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 501E641C56;
	Fri,  8 May 2026 16:50:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NsKcoQw4c0fc; Fri,  8 May 2026 16:49:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3620641C54
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778258999;
	bh=Uo8UjDQm0w0+cbBTCBbACExefU6EYmqhAcA4ZzXt7Ys=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DZA7Nxb83pcN1KXhGJ0VdJY57RZOzrvpXqukFioobBqAav+DeEhwzNNb/ixG7OxAK
	 jxezPj7mqaInRvdjmGHkzNxuBh5GQgEjhQ1I1H84dTq+OywstrKm3yemrfX3sLZ5l7
	 DTyUdf3EBoFUZZZssVi+kDxGHx9ZtPSooe3JvatciPVR4//Nw+u3zhtA0cnmGvERAI
	 1Y+80boO9rVdE1zMKRR9vRqAHrKnSYKITHshPok2QfaoJNmp7QoVmghene0q33TLQt
	 X9x2Q24nX1Ge9uj7v5/Vuqz0wge0X2qZFArXwxChVZ5O9GduRpJsBX1tmBmq1bcEYY
	 MVQMUW/rqtu1A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3620641C54;
	Fri,  8 May 2026 16:49:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id C5F2C23F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 16:49:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B39C561705
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 16:49:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BJlkNf-OSRF0 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 16:49:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 80EE761707
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 80EE761707
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 80EE761707
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 16:49:55 +0000 (UTC)
X-CSE-ConnectionGUID: 7kaKdoaoSZ6gqXyqwnKy3w==
X-CSE-MsgGUID: rBfZtTDyT729NfxB/P+ilw==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="83103120"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="83103120"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 09:49:55 -0700
X-CSE-ConnectionGUID: sMX5UhFiSrqFVw9DNHMMdA==
X-CSE-MsgGUID: wbHb8DvfTP62QD7zS4dgPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="274926220"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 09:49:54 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 09:49:54 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 8 May 2026 09:49:54 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.33) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 09:49:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GI1BkqHSRRGumoerOhYaDfrLKpSO3tw2MIkuHZL1yx7QyuU0IOi0QYgJItVrcGwuUkbDlPZTyjmqaDVIE+UYP5+FRV78EP0pF+QWbOV+tz8Disk0cbfXf9qJFM9gl0Bf//EdEvTbDVsLwBQTuuheqWhJWE/sne2+HWIhiL2h6vQfbnKrh8ogU8isnZ3V7XaHIuVAX4Bpo1ufqlucTVR9osZr9X7/NPMICTxpUppxQ/mZVyRJMtpWjRgirXg7B3hbx590MQ1Gtu1Yvfi7T/iNPl8nhNwlcLKc9PeZbL6kxB1hav1qQ+tb/MOnyPc6fnFYf/6rS52+j1AZtqis8c4LgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Uo8UjDQm0w0+cbBTCBbACExefU6EYmqhAcA4ZzXt7Ys=;
 b=fTEDH1QF0QkWPeJ2+9mfkWhs7hXJ/rVS6VZhZXC2414djuI4WEAMt4jV1oHh1s3D8F8E78herhVjyH2eQUenRMDpQfWCRy0WG+xaE5ZS7zIXiLzAI4gzKAq/i2zu+YcSLTBgpC3q51OwD4qrnIHh9eF4ZzysQSdTXYhGjAgXiZEciKzZVEqcAy93MVyVnyoB65P+Z94hzti2HjCAVPAZb0BPUP3xBMSwA+6x4Kcin164AirYi7rFSwUxYy8vTZGfg05ZLTejNnsgqI8FGGrzI8SHEW7xfFOZPxGw4ZDMQuIItq5lLYPWT55lmaH9Wi4DyHsYog9GUSB2FsjFUvoBgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CY8PR11MB7106.namprd11.prod.outlook.com (2603:10b6:930:52::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.17; Fri, 8 May
 2026 16:49:44 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9891.019; Fri, 8 May 2026
 16:49:43 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Schmidt, Michal" <mschmidt@redhat.com>, Jakub Kicinski <kuba@kernel.org>,
 Jiri Pirko <jiri@resnulli.us>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Simon Horman
 <horms@kernel.org>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Michal
 Swiatkowski" <michal.swiatkowski@linux.intel.com>, "Richardson, Bruce"
 <bruce.richardson@intel.com>, "Medvedkin, Vladimir"
 <vladimir.medvedkin@intel.com>, "Connolly, Padraig J"
 <padraig.j.connolly@intel.com>, "S, Ananth" <ananth.s@intel.com>, "Miskell,
 Timothy" <timothy.miskell@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Czapnik, Lukasz" <lukasz.czapnik@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, "Saeed
 Mahameed" <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>, "Tariq
 Toukan" <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>
Thread-Topic: [PATCH iwl-next v1 10/15] iavf: increase max number of queues to
 256
Thread-Index: AQHc3uqcsx/1M/7F90SHTWbTg2p/Z7YEVloA
Date: Fri, 8 May 2026 16:49:43 +0000
Message-ID: <IA3PR11MB8986A92C9A9F7763410E8607E53D2@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260508124208.11622-1-przemyslaw.kitszel@intel.com>
 <20260508124208.11622-11-przemyslaw.kitszel@intel.com>
In-Reply-To: <20260508124208.11622-11-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CY8PR11MB7106:EE_
x-ms-office365-filtering-correlation-id: 123b709d-a954-47e9-ccd6-08dead21ce28
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|38070700021|18002099003|56012099003|22082099003;
x-microsoft-antispam-message-info: Nrl8wIU3Cpi6gefpKsUcGJRgJ/7IUtUuUiWV1nfcQqMzhruB/F48fodBipgM0O1yKreQP1v32hIAM9Kav7JgZC0NEKoFOt9ADzSecXBtaRJndod2iPdNYZEhD76N+YwNVQYzD5UNPquXSQU6+MHpbpFdp7GDTRFetgr/ywcm9QG6xWKMaHjIogutNw5OmagpY4f4rRA+FlxRSQlyiXJ2WjA6BtX6i9dJHaesCBEH4bEFxIW7tAjFn/fnNY7oguhwz2jKAYqWY9kfvmbbvb6utNWEDbBAKpilKDQ8Jk65wNZtrwGthTWBQkJFvFyH6GtOZ4Z59Y9QxPMWMQO/nHB7OH5GD/opjAdPQSIoczAkJDf+hY6DzyBNJng6TcWBfdT9Qy13lYQ4P1PSY8KrhMg2yqH/sBdeU8TqRjrNUt/dm6Zu9rstK2xUoJxb9CYhk5Lorp/Wc9rIhpZS1gKNmj+sqwYZyR1kztQBLk8Jpw8iwy5GZYfh582vwc4Q01HUU4JoYS2nhJDTxRwHB/UwyS+HNFTKI2hnoqV6Af91R1CfO+FHb0W+tDQTya3KDgpAzQj/G7CqTzoLm2D0DFDOVw5UgRpsiMB1Bq4isNYVxgTuTFyZJEudvpQHp2lmp/SUVGZSqFiGaCY+cHUBrkpOHiOb8HWjaBQRzj72P81FOSzi4+N3J0E7DnSbqo+H4cRbWmRei+6dRmWkdOHDRUOn4lBtXfsQgSOHhObZM15beJWdYn3pzS+4LiipWyYtn6eYxQtV
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(38070700021)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?E7BwQZ+so8r2J+u1QzYSw0dnV4002N+ZAl64b9UEt3kJdTzu/PfYsup0Qghi?=
 =?us-ascii?Q?vBP9LoiX6pZbzRunJZ0g75gwloCMeB16an7xuLwLyumjEa2kQHIeyWh5uYph?=
 =?us-ascii?Q?7ENtgFVEkytmiHKkhh/y8j3SySwPTbnSrBMO46iDADY84F0hnWcd6unQjQSD?=
 =?us-ascii?Q?5YemrM7LCeRatEtvqfEM9vScHxvjs3XCl84KEi2HCeVPvb5Ic94hryGKqiNp?=
 =?us-ascii?Q?zVKgMXybe5XfA/szSglCJZZQoCWR+IX5L/tdg47DRoDLF6K+Xdx17YkyGC9d?=
 =?us-ascii?Q?Ov/MRZZslo66//JevCkJHAsCid7yKp99O7cavIxgF5MnJz1XbgKQhLJPeADJ?=
 =?us-ascii?Q?rOWqRauH9RrLe2m0oLJc3KvJUJTKvekye1LP9IS3G6q+VtAYtDY32Mxb976N?=
 =?us-ascii?Q?JK2llxULR69jl+y09iLxkM+mT/7MRfzjsjP/bMdJJkbIWs83Vd+oMJ69Hoa/?=
 =?us-ascii?Q?YatyI7AA/2CZZ8hxe72fqzihqIlMZ21LasYBzB6lsSZ5CrazKs0oBubxM3/r?=
 =?us-ascii?Q?/hyskImqhEswJafW1k7J6rCaa/7d7OFnhgSytrkj5jT8oUmVJ/Q1FLOrLtfu?=
 =?us-ascii?Q?k2Ey2/fGP/5IBIp2ec5KFsiF6IJUMl+cdGe0GqRNPuo3FLmHzfz5vDClqZem?=
 =?us-ascii?Q?B2nqZGyVFO8AZwf8UJJzDR7/Bpo23TrU2vAGW4aMQjNTgvwZ3N5E5LS5+6aV?=
 =?us-ascii?Q?l0zFNmLW9lXW+SAD1MvD1CBo1Jyi1tD0iNXbHL/oGDgO/ZqjbRKztoXlXhfn?=
 =?us-ascii?Q?VkKGGsGfdSnH/YcVZ44C34TmiANFG2Sd07HzB7lf5WjCAY9ZAXABSIB2XqYe?=
 =?us-ascii?Q?2PRUpWQgZfh05NsatdUXZ5ctr8YR1K2VOd9gPr3s1rzBeygSbmt5l1XU1z1z?=
 =?us-ascii?Q?9WZAArl/BZR5x1mJRqa4ZiwT9HFm9jZIU0lSIdmnAKGiMyHowDf4lCWSbKt/?=
 =?us-ascii?Q?WIwq/sUhrH+dn9dqMxx9htTRVY86L1SIF2hU1YqQKO3kH2vSoFkvgiMIc3IB?=
 =?us-ascii?Q?qplekiP8nlCrrBco43Q54e4ntoOmWSCK/ZW2Xr9VSc4a0homC0XiJLHclhNS?=
 =?us-ascii?Q?6rllpJ5PbtTEmxWzqEIo1L3K1BJQ4Tbl/pRPcUNoqOHwdgstBKD+rvVRBJ86?=
 =?us-ascii?Q?aftUO7PNEJVGYkLkYoEnXy+CVI07OTM6VeiAKYBZIPCwo/ZhQ8qh5uGDz4Z3?=
 =?us-ascii?Q?bzwzJMak6hdkNSklUk3FwnUpoE1xGTk1oWb/3XUZxKmskhW1VuTijkcPh0Y8?=
 =?us-ascii?Q?FzSDNamjjQBA/RZpYWrF7slx929eyRP+slG7oMxyhJ2GMHZBSqJGQqN7UKpT?=
 =?us-ascii?Q?mL4wYVcKAsGPwbjIDrd+dAtpcp7bUCU2ocltD1vQds37fuig1K2ue7odymNq?=
 =?us-ascii?Q?kgE5KJA7Dj03nyzN6QSzp8ySiszhU9OEiquY5L1gIRnIue5dKq3S+67cXNHw?=
 =?us-ascii?Q?XtmP9nsAx96MItLEJTuZZq3jZNf2cDpljL7qBFXDhUqSz/98vv5CEPt9AiOw?=
 =?us-ascii?Q?v8b0eQ8unJrAkpmnfzsnl0WegBQNIAvM5IVkNR+FmirUVkeG/0ebGoIPGdlo?=
 =?us-ascii?Q?2FuFCbMfgqxQ2gUae5bN4hYpw6XsIX83YSJRyEtMMC2z74Lv4G/DznNzQ5C7?=
 =?us-ascii?Q?oTh6uppo7R/kBMB8CULiYo/MhyHxUFZZuGiSuKtO1sp2fSCxFvkxjsCwkpAr?=
 =?us-ascii?Q?GbkLoQx6qrqeiHfGBlLMcG2lauHtwBswZ1xKUtSNfDSNgIP4/jbhevRr2YI1?=
 =?us-ascii?Q?kd/qwOmqiZdT3ej5OzrpYcq6CA+WDrw=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: OYogrrytiu1tTXdcjPl3XgAE7u+T1Y0/kVlKrj6rVh3lj3YCf4RYV+MBwcPPzLNDo+q+gJ7rXLSvPrlil1GAgPzyI/0dEhos0WJ98zu383TXyPo8uQXyhSkR7VahZVyrj8W8VWr32HzRd1vbgSQWofyB8vX/FR8TWR+6H30Cz9abCjFXXMnZrKmZID7EjFbCtOwvcjZYtWG21vO38SpsBkrXE+tSXbSJ0JvkOKYY4tOcrMlshX9CchOXjmZgxpdS0hArcarct6KzUiIvCbe/DUEgJJBb0MMGZ5+uL0fohfFrAu8YjFzJfqwipjeL5UpTMeOEEhqfq8EkE0zK5ApmSQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 123b709d-a954-47e9-ccd6-08dead21ce28
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2026 16:49:43.7468 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Krl1bWOfp2GtctJ+icrer+ObjsCuOUDFasVDGLu+yLgdWWAmyDLS3q4Xphc48jl7Qed576YF6NJYKNZaxg/z46laU9vqtzdYzQFe68hVqaU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7106
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778258996; x=1809794996;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=n3pvojd0jcachmkKR/X29r5E536sv6CknxaIDOvCzF4=;
 b=lpJx6ktaqwN7lZqFqnMnHDVnpQ5rPQ86pctm0bJguzlxiX3HY/ZblSiQ
 n990ZwTwySRT2vi7mrE1tGxQI+RErMs/9IL0RRT9B8IPB9FwxZfSnPVt1
 1zuhynkrrPqM3fKfKRZ+5ZuTiC9xGDcf2n7PW/qXWX1curVqJLjSa0gFs
 lhzQDmCKKphBIcZ+ztJelO5sCeaaF9CSkBMsgMvr7a3D8xkrbGQUhrJG2
 pmWJEvZ1LP9aV2ZGMUOHH57mRseAQkhwTAYHY14dH8Sw7mEb9Uq0qpWns
 ELF+9CbsSBU6Ye4dx27qiI3jjl+FGmNW8kabyhZyLzMQIuSvW2vSpME0S
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lpJx6kta
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 10/15] iavf: increase max
 number of queues to 256
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
X-Rspamd-Queue-Id: 3DA5F4F9946
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:mschmidt@redhat.com,m:kuba@kernel.org,m:jiri@resnulli.us,m:netdev@vger.kernel.org,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:michal.swiatkowski@linux.intel.com,m:bruce.richardson@intel.com,m:vladimir.medvedkin@intel.com,m:padraig.j.connolly@intel.com,m:ananth.s@intel.com,m:timothy.miskell@intel.com,m:jacob.e.keller@intel.com,m:lukasz.czapnik@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:saeedm@nvidia.com,m:leon@kernel.org,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:jedrzej.jagielski@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action



> -----Original Message-----
> From: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Sent: Friday, May 8, 2026 2:42 PM
> To: intel-wired-lan@lists.osuosl.org; Schmidt, Michal
> <mschmidt@redhat.com>; Jakub Kicinski <kuba@kernel.org>; Jiri Pirko
> <jiri@resnulli.us>
> Cc: netdev@vger.kernel.org; Simon Horman <horms@kernel.org>; Nguyen,
> Anthony L <anthony.l.nguyen@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Richardson, Bruce
> <bruce.richardson@intel.com>; Medvedkin, Vladimir
> <vladimir.medvedkin@intel.com>; Connolly, Padraig J
> <padraig.j.connolly@intel.com>; S, Ananth <ananth.s@intel.com>;
> Miskell, Timothy <timothy.miskell@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; Czapnik, Lukasz
> <lukasz.czapnik@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Paolo Abeni <pabeni@redhat.com>; Saeed Mahameed
> <saeedm@nvidia.com>; Leon Romanovsky <leon@kernel.org>; Tariq Toukan
> <tariqt@nvidia.com>; Mark Bloch <mbloch@nvidia.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Jagielski, Jedrzej
> <jedrzej.jagielski@intel.com>
> Subject: [PATCH iwl-next v1 10/15] iavf: increase max number of queues
> to 256
>=20
> Increase the max number of queues that driver will handle to 256.
> Use old legacy limit in the virtchnl handling of iavf_map_queues().
>=20
> Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h          |  4 +++-
>  drivers/net/ethernet/intel/iavf/iavf_main.c     |  4 ++--
>  drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 15 ++++++++-------
>  3 files changed, 13 insertions(+), 10 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index a0c42f2357fb..569686d34ff4 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -87,8 +87,10 @@ struct iavf_vsi {
>  #define IAVF_TX_DESC(R, i) (&(((struct iavf_tx_desc *)((R)-
> >desc))[i]))  #define IAVF_TX_CTXTDESC(R, i) \
>  	(&(((struct iavf_tx_context_desc *)((R)->desc))[i]))
> +
>  /* for "old" virtchnl opcodes that accept up to 16 queues */
>  #define IAVF_MAX_REQ_QUEUES_VCV1	16
> +#define IAVF_MAX_REQ_QUEUES		256
>=20
>  #define IAVF_HKEY_ARRAY_SIZE ((IAVF_VFQF_HKEY_MAX_INDEX + 1) * 4)
> #define IAVF_HLUT_ARRAY_SIZE ((IAVF_VFQF_HLUT_MAX_INDEX + 1) * 4) @@ -
> 108,7 +110,7 @@ struct iavf_q_vector {
>  	struct napi_struct napi;
>  	struct iavf_ring_container rx;
>  	struct iavf_ring_container tx;
> -	u32 ring_mask;
> +	DECLARE_BITMAP(ring_mask, IAVF_MAX_REQ_QUEUES);
>  	u8 itr_countdown;	/* when 0 should adjust adaptive ITR */
>  	u8 num_ringpairs;	/* total number of ring pairs in vector */
>  	u16 v_idx;		/* index in the vsi->q_vector array. */
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 8149b01ae24a..abc0fe070ee7 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -439,7 +439,7 @@ iavf_map_vector_to_rxq(struct iavf_adapter
> *adapter, int v_idx, int r_idx)
>  	q_vector->rx.count++;
>  	q_vector->rx.next_update =3D jiffies + 1;
>  	q_vector->rx.target_itr =3D ITR_TO_REG(rx_ring->itr_setting);
> -	q_vector->ring_mask |=3D BIT(r_idx);
> +	set_bit(r_idx, q_vector->ring_mask);
>  	wr32(hw, IAVF_VFINT_ITRN1(IAVF_RX_ITR, q_vector->reg_idx),
>  	     q_vector->rx.current_itr >> 1);
>  	q_vector->rx.current_itr =3D q_vector->rx.target_itr; @@ -5362,7
> +5362,7 @@ static int iavf_probe(struct pci_dev *pdev, const struct
> pci_device_id *ent)
>  	pci_set_master(pdev);
>=20
>  	netdev =3D alloc_etherdev_mq(sizeof(struct iavf_adapter),
> -				   IAVF_MAX_REQ_QUEUES_VCV1);
> +				   IAVF_MAX_REQ_QUEUES);
>  	if (!netdev) {
>  		err =3D -ENOMEM;
>  		goto err_alloc_etherdev;
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> index d3b5398b6130..9102bc4bddb0 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> @@ -260,19 +260,19 @@ int iavf_send_vf_ptp_caps_msg(struct
> iavf_adapter *adapter)
>   **/
>  static void iavf_validate_num_queues(struct iavf_adapter *adapter)  {
> -	if (adapter->vf_res->num_queue_pairs >
> IAVF_MAX_REQ_QUEUES_VCV1) {
> +	if (adapter->vf_res->num_queue_pairs > IAVF_MAX_REQ_QUEUES) {
>  		struct virtchnl_vsi_resource *vsi_res;
>  		int i;
>=20
>  		dev_info(&adapter->pdev->dev, "Received %d queues, but
> can only have a max of %d\n",
>  			 adapter->vf_res->num_queue_pairs,
> -			 IAVF_MAX_REQ_QUEUES_VCV1);
> +			 IAVF_MAX_REQ_QUEUES);
>  		dev_info(&adapter->pdev->dev, "Fixing by reducing queues
> to %d\n",
> -			 IAVF_MAX_REQ_QUEUES_VCV1);
> -		adapter->vf_res->num_queue_pairs =3D
> IAVF_MAX_REQ_QUEUES_VCV1;
> +			 IAVF_MAX_REQ_QUEUES);
> +		adapter->vf_res->num_queue_pairs =3D IAVF_MAX_REQ_QUEUES;
>  		for (i =3D 0; i < adapter->vf_res->num_vsis; i++) {
>  			vsi_res =3D &adapter->vf_res->vsi_res[i];
> -			vsi_res->num_queue_pairs =3D
> IAVF_MAX_REQ_QUEUES_VCV1;
> +			vsi_res->num_queue_pairs =3D IAVF_MAX_REQ_QUEUES;
>  		}
>  	}
>  }
> @@ -554,8 +554,9 @@ void iavf_map_queues(struct iavf_adapter *adapter)
>=20
>  		vecmap->vsi_id =3D adapter->vsi_res->vsi_id;
>  		vecmap->vector_id =3D v_idx + NONQ_VECS;
> -		vecmap->txq_map =3D q_vector->ring_mask;
> -		vecmap->rxq_map =3D q_vector->ring_mask;
> +		vecmap->txq_map =3D bitmap_read(q_vector->ring_mask, 0,
> +					      IAVF_MAX_REQ_QUEUES_VCV1);
It looks like a silent data loss on the legacy/V1 opcode path.
You read only 16 bits here.

> +		vecmap->rxq_map =3D vecmap->txq_map;
>  		vecmap->rxitr_idx =3D IAVF_RX_ITR;
>  		vecmap->txitr_idx =3D IAVF_TX_ITR;
>  	}
> --
> 2.39.3

