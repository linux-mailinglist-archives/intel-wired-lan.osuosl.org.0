Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A77E9A3EE2C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Feb 2025 09:16:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 606EF60ACA;
	Fri, 21 Feb 2025 08:16:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6WEV6CRLfAtg; Fri, 21 Feb 2025 08:16:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4EC3960ABE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740125813;
	bh=1CPLnuktAPGYR3iwefREWSGTXCVhwBVRqkg5wE2+qBA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6A8IAVyzp8JOFrJdG21junAwl+HlBi4WiTcEXvq2icCbYais/1tzWg/X40d55lSls
	 u5ntaJW3U4Jq7r7WG+/lv79LE7hnHxfqhFbZlzXUUpRFIOKDNyrCsK7eXgKLXgHoYO
	 TlSlQMWT8BovY8egdmMQOWfv8NFb8525VZczi/QqadSAK/S1FTeVoNwt4G30a/Rz2V
	 suJa9JI6cn6+2SGSfg6mwdOTndHRa5iGttlLRUA6QjUsheMhgHJa4A0UL8/5xpskS3
	 NOhc8WArsJ3sXDSIsYX+UTH1jdzAK2QSnUMAF/n8QC5+AGzyNjGFa0izc5sRapzCnO
	 G1I9bHjzgDqPg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4EC3960ABE;
	Fri, 21 Feb 2025 08:16:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6B221CF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 08:16:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5B47381F2A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 08:16:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AYug6Ozme1e6 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Feb 2025 08:16:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7C9F881F16
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7C9F881F16
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7C9F881F16
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 08:16:50 +0000 (UTC)
X-CSE-ConnectionGUID: 5vqBxx+hQqWESati0JR6kA==
X-CSE-MsgGUID: 7wNydYF7QpeOYHAUQQKT5A==
X-IronPort-AV: E=McAfee;i="6700,10204,11351"; a="40163684"
X-IronPort-AV: E=Sophos;i="6.13,304,1732608000"; d="scan'208";a="40163684"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2025 00:16:47 -0800
X-CSE-ConnectionGUID: S8gbJSzCRKKoEu8slQbDaw==
X-CSE-MsgGUID: gtSNKwgISGOcRJGemOco5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,304,1732608000"; d="scan'208";a="119925604"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Feb 2025 00:16:47 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 21 Feb 2025 00:16:46 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 21 Feb 2025 00:16:46 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 21 Feb 2025 00:16:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UIcWbCfrZzT5F5DZvYXpj2NM0lMliw/ALGqhPv5jwCD8CkJk4SAuiKrs8QHIb8Zv9X34JXcJypJnPwAeSeDDqqQIds3cL+NPbBv9l7CbR3yp6rITr27FvVYNMTgeRYkSRhTcigRIkr9qRAJxwnCRN6Tna6F4xaZKkUlGGKv7ft7p/gngTff3z65itzUA0lr3prpZRmh/0zKL+qk4jl9Ra+dLczsKOfhy6abYmK4FsoYcVRULkYcUWycs/hwyjUfvNO0sDhihOeZoYZCduGFp8gp85zna3WxdzwDD9EoNwTNXq7w+uxp79nd8iJzl5cvivrIF5+WGYTGdGuDoU7e6rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1CPLnuktAPGYR3iwefREWSGTXCVhwBVRqkg5wE2+qBA=;
 b=EsDcmnsPM8YGhFhuWVGudUcNt3VTx19/2QzifBPX7mK6E0yu3q5xsBLBbUmVU6x/vvFKUoh4TnZIeeTcwjSVjtlt15c6KEpNVGuLD9IVDR4Usdv8RmMbdotcHIIJm3XIrpxsxOwNVBfpP9asQwGlCClK/+9q4k4Sz0TP2tT0hyfP9luQs2BtX42Ol0g0rOA/tUYgYuwtD4nr6ZEGCYTQ/O79guCH7claSsXd62zAogAAalig6n8jAM0gkcfoAi90Q8EkjsSvd6PSE6pGK7zDASqIIRJILFUm4RJxcXMROUYzXpkMFhPg0kiRqqIP+KtuRWBFIHsEPAU7+vQegwyCgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by SA1PR11MB6760.namprd11.prod.outlook.com (2603:10b6:806:25f::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.15; Fri, 21 Feb
 2025 08:16:38 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b%7]) with mapi id 15.20.8466.016; Fri, 21 Feb 2025
 08:16:38 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "michal.swiatkowski@linux.intel.com" <michal.swiatkowski@linux.intel.com>,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Thread-Topic: [PATCH iwl-net 2/2] ice: Avoid setting default Rx VSI twice in
 switchdev setup
Thread-Index: AQHbfKxPscQ08kmNVESCJNLiRsuyUbNReGpg
Date: Fri, 21 Feb 2025 08:16:38 +0000
Message-ID: <PH0PR11MB50131D9F03C23FE49DF1711F96C72@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20250211174322.603652-1-marcin.szycik@linux.intel.com>
 <20250211174322.603652-2-marcin.szycik@linux.intel.com>
In-Reply-To: <20250211174322.603652-2-marcin.szycik@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|SA1PR11MB6760:EE_
x-ms-office365-filtering-correlation-id: 68bca3a9-d0fe-45c0-d482-08dd5250107f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?kxNsIv+XOhgisj/NDF0S3DHkDVuVPzddDXE/dtWYiCRFVZXxbuy9fu7WCNpu?=
 =?us-ascii?Q?17+Wu5+muFxzre0sDaZ6tXz2ZndEPwndcYZ8Jz8nKd+3aU9fIlMEXIOMlmHo?=
 =?us-ascii?Q?rLHS7kNfIMWXD5Wou67uBj0soQmA3SP52RhJNniqqKBU1qCArXhqfAh++ZoO?=
 =?us-ascii?Q?vyIxPThYNzSGQYqbb9ziUtmQdKBlqPX1LiyDdtgrDkGpQNv8QDj+qZ7zOQ1a?=
 =?us-ascii?Q?MHNDeFe1dnQX/j8UaPpAyAfHs32ljZsiwjjwLz2klFnu+Rk4GhJYix8VGx4I?=
 =?us-ascii?Q?6O8t0kOpaAx/xiHDVGxLP0ZnNtEAzXRXAr3nF9XSiZChiZnNbzKfRCP6XU8y?=
 =?us-ascii?Q?7niwhTXiwjSNYWfCwqS9RvRWTqcddmuY7RU7tXb08caASqtQkOC9iftX+TSd?=
 =?us-ascii?Q?8EWSDfwWF6coDhbIflwglo0IA8fys1y8Nc4xczgQ9bHAtune97RPRaYuTH/1?=
 =?us-ascii?Q?XxKC1+i5dKrsUx7nfoAp15sxkRPQddT2ZKUNYlo4PJnXNyI1+GGoqVjUQVwQ?=
 =?us-ascii?Q?M8ErQxK/GeKkNp1evNESR5BezEt9MNJwCnmAu+yxJaR4mZGw5g4pv5ZjgkHC?=
 =?us-ascii?Q?JRE4LfgqCeXao5a6RiZEP3+x/f6Zj3IsAhTHQaHEN9cfjjfHQ2jAt4cUEuc0?=
 =?us-ascii?Q?N39pCmIZ2j4NC7GBfJpjpwxUIBvx0bEO+E0Ej0ZDqkVaMV1KUVTxV6PsPviF?=
 =?us-ascii?Q?LsKg6PMraptS7rCK712BmMIvDMqJe1qG7Gt7JSDRFlJVRgtQbKMsl27mPAgE?=
 =?us-ascii?Q?eLlDvAI+Y3ETh4uxsdIoZh2FrFcjWo8yKv8RDulsfDWIt1eXF9lp7M3Zlmwy?=
 =?us-ascii?Q?LhCfTawCw6FXcPZ7kdKw3OKsTC83ajB0IC9wqSrh92vzV7TckkzscgRyJIJw?=
 =?us-ascii?Q?3fFm+s2mk+2oAjEGMH80pvYmNPXcwcoaW7jJ0hkZoEcx6nqIB1o3akJPyvpC?=
 =?us-ascii?Q?cag1Cp0IyB2rDjA+e8xXoAiLV4IDUlIx688CjQ2PuCCblG3QRT8P3Z2BRKT/?=
 =?us-ascii?Q?c/LeWdulb1QaoMHgNFRojmz3kvOUgE3+UXUmJQGYOn/+aUfQo0yX8I7Xo6VT?=
 =?us-ascii?Q?AQR/b+SiK9dCaJRDAbNiOKVv3gtvdVrIgwp1syfh8SiNOUp6z/60f0Vvtcfh?=
 =?us-ascii?Q?EjdbLYtQ5TndCGZD/EMS04TSIQZh1Yev/Y06+W1GEgJU6T3uNQGMuvHb0qHx?=
 =?us-ascii?Q?x2yf5RR65SB2bhCdjToyQ9D6/u+DQowItMYu//qkuRA3QcxWDg0ruRtRNYMJ?=
 =?us-ascii?Q?h7ppxwnXAexKlVMb2Rn7aIz+jn0tHN4Xu/DauVEyVrKjKtXzq8SuuCChR5A2?=
 =?us-ascii?Q?RKtBa9Xu5MoUxx7QsYTG8+lJxHTzu59PTPoNFNGCyCOqcpdy3Ii6vJc0JzYG?=
 =?us-ascii?Q?Q1rp0PudntO81DR1EJnLVV47P4oTFG8u9MQJdXhgTEPqd8dchIQc6JJOWVOY?=
 =?us-ascii?Q?Vq8PQEDicgL5Q2symb2fyY9MjpLfz2cO?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wt9N4KUYjgK6uIkvnMN7rIp+ojnbEsjhFGIvBBn+AhNC/s47Xhb6VcDXOinN?=
 =?us-ascii?Q?QqIyHrkeQ3U3p9UID19Lic7FE+a9WyPdqZqQll9MBVVDVMkVAsQ7646TPhph?=
 =?us-ascii?Q?FXLO1ywQnHwnvKfvKwsL7BGrU4rmS40mzEnCHmlpMapeGDcyLDG9h8UKjSnV?=
 =?us-ascii?Q?MnFaDdtP6/VYZMaHGg4hOO8v3qVoxkRMpD3aPCkCjgGihpJnVc+xHqQm1tGP?=
 =?us-ascii?Q?x5cwDyASrUT3CZjFcjKd+6iTO3ZlcMe8PyBBJ4134kE05H+FikMip3fVlKjx?=
 =?us-ascii?Q?yqkn2POrdZgQ1rW+xLRv0zMsG/tdUyQhASwxNOrVVf/EsNd5XKDYHh8xHvxj?=
 =?us-ascii?Q?Zeu6JdcvS3TGDZQit5Rfq2D8VNBlQax5Cn0eyJ0bNDwySM9BA9dDutI/7Vy2?=
 =?us-ascii?Q?fCI3UmH4Ua+Qg1LEKCeqfSTRM8jjBR2PiRSyfwX4GV0uxNLYFlHmDtwaEdFR?=
 =?us-ascii?Q?ggO4ulXqjUyMX5a+mMly3cOfcBeZFO1v+NhvIhO5qrGPWO0hF5ZTQefos0I7?=
 =?us-ascii?Q?TTt/rl3Xif4QtyYH1YoiI2vO8Q3LtQWVrZk5FDJjfbRzwGZR2nMfdKSF+UXh?=
 =?us-ascii?Q?vhZd08s7XJz0IHfNgKHs/VTZsEmt4kK/ve1dnFhAbHDoa3L6URDm+P+pqp9T?=
 =?us-ascii?Q?VBSScZN3UrW7mh02tYL1KMOI8K5qJLO5RAFwXQM0S7kkONexGV2kpw9kI0o2?=
 =?us-ascii?Q?PF8ob4WdIuJX3MLquaJ2E4SI6quC+yWaOFOoFGMPuJnSxE9P5U5hhuqcCFWi?=
 =?us-ascii?Q?g4P8V1PpWDuXvtPV32+VH+Bo4R8ZWicNxMYhYfjqUY/FyGkuBZzWn7Z8rFkE?=
 =?us-ascii?Q?BrkeieeTMwLa05z22ItAnqTWug5T+xAXzvMdwAt+gyv8rcXJrI5I1lewgeuq?=
 =?us-ascii?Q?t4BJH2oQNfIbnPmJfaySUDfJYasul0aB2OlOmt0e790UMdohgjmI16MwbQbZ?=
 =?us-ascii?Q?/6X1g1FwYVmOvOJVajVfpvmBGCcqHCD4VmJNFmKXe2UwxHfezPr4ISKwsOYm?=
 =?us-ascii?Q?TitihAqv1FsKYksYQP7rkENKsEeZmkNsdUjOQnQm3o8FZfm7DKXcIuF4ATAN?=
 =?us-ascii?Q?jfzJfCWSkJ72Zq7WQ4lp6Mma1dbbvyZFb9HU5deDWGlBegQw8qW0Ol6s7h5i?=
 =?us-ascii?Q?6RiAMWDRLmGLihKFj0KS3HSS6ofnzUoh5LEa4D5+1sU34kpu7KifwTz5hPIt?=
 =?us-ascii?Q?FvpfKpZshrXtsTWlMkyHpSlbAtdWsFuWr/Xj7nowwbC3nSGfic7yWBFbHume?=
 =?us-ascii?Q?9Pp6FZR9b5teCmx8kl/e0b456wuvSOJIxlQzWpyqs2z1r8bQXc8etmCPdUXX?=
 =?us-ascii?Q?3UbbQeNKQpNIiYokbsIJXMG4pzWZ+Y8nK4RnTcHXOewftRl/EHpYbDA/5JdF?=
 =?us-ascii?Q?p2k+G+rB5nPjavbBwg8DPvDKSf5nMtH1mQunEfYRt0RUuzRZL0G1tpdy/UUz?=
 =?us-ascii?Q?i0d9j8gIWBqD20JoqlpncfXTKmqyKPxUzMfgCWvDexIiguMXGzOjUH5sJbiu?=
 =?us-ascii?Q?B56pu9cuaKejl9+nz0V1XL4ec+gX/dXStRFIjyFKgS/522a+4cKAjcuefWFo?=
 =?us-ascii?Q?oqcBj7J79hPUOvT7O+VNeg28pAPv7SVhqo2H1cIS?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68bca3a9-d0fe-45c0-d482-08dd5250107f
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2025 08:16:38.3904 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CQw3g7tdI4ol3sRkEu24JWhl+Iyw5/omjBvTGkKlNUAHkKdUGDDgUYdlJi+7SHZLv8/iHvnAHxZBOBuI7LjiHBHdNnrJBQVWo7Tjy4T/mNA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6760
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740125811; x=1771661811;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=e8URmX4M7IMq1LyjODWgNmG4SQRn1olRhSv4RmKjc0U=;
 b=eF6VJPK3a703OZjvAGPVpKCpvUaXsP0/lwB5+5deCbtnW/E8gBxLTM45
 FDRNJeK9ZdCF+xlSws7lD1R0S4yU4L1yUB3Nb/DPN8m0dplyfPa7M3y5a
 XbECFYTwkh4blcOvo7A+dq0XIZtGhdAv7n5OzwWfCWRTVenseXt7KmAbq
 HicmNCDjr05Z47/kB5EvqlMF42BCOagYKig1n+0BxIfvOQN/hrpjDVBgv
 2n1pzYK7hAKyX6xvfyVlrAA1nVhnUkR4vHq0yXiIr19H42T53uT5pOsPp
 OMoVGFuY8E/Lx/qvDcc0DlQjgbTyCu0SSjF085r7m6iTnlVg6by0wJAPO
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eF6VJPK3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/2] ice: Avoid setting
 default Rx VSI twice in switchdev setup
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

> -----Original Message-----
> From: Marcin Szycik <marcin.szycik@linux.intel.com>
> Sent: Tuesday, February 11, 2025 11:13 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; michal.swiatkowski@linux.intel.com; Marcin
> Szycik <marcin.szycik@linux.intel.com>; Buvaneswaran, Sujai
> <sujai.buvaneswaran@intel.com>; Martyna Szapar-Mudlaw
> <martyna.szapar-mudlaw@linux.intel.com>
> Subject: [PATCH iwl-net 2/2] ice: Avoid setting default Rx VSI twice in
> switchdev setup
>=20
> As part of switchdev environment setup, uplink VSI is configured as defau=
lt
> for both Tx and Rx. Default Rx VSI is also used by promiscuous mode. If
> promisc mode is enabled and an attempt to enter switchdev mode is made,
> the setup will fail because Rx VSI is already configured as default (rule=
 exists).
>=20
> Reproducer:
>   devlink dev eswitch set $PF1_PCI mode switchdev
>   ip l s $PF1 up
>   ip l s $PF1 promisc on
>   echo 1 > /sys/class/net/$PF1/device/sriov_numvfs
>=20
> In switchdev setup, use ice_set_dflt_vsi() instead of plain ice_cfg_dflt_=
vsi(),
> which avoids repeating setting default VSI for Rx if it's already configu=
red.
>=20
> Fixes: 50d62022f455 ("ice: default Tx rule instead of to queue")
> Reported-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
> Closes: https://lore.kernel.org/intel-wired-
> lan/PH0PR11MB50138B635F2E5CEB7075325D961F2@PH0PR11MB5013.nam
> prd11.prod.outlook.com
> Reviewed-by: Martyna Szapar-Mudlaw <martyna.szapar-
> mudlaw@linux.intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_eswitch.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>=20
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
