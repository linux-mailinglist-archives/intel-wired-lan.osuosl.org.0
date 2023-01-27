Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A217067ECD4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Jan 2023 18:58:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 66424429F8;
	Fri, 27 Jan 2023 17:58:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 66424429F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674842285;
	bh=Chh1Wvtii4kmmEzv2WvMSQaIvXuYgmLSFlJuFDlLNgE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6wtKWEgtp5WAj4q2p2uGk/YgGgetb6muAzVB4B9laorRx38VUO36RRvkra3ma8E+7
	 bQrKfbcooLtQ6HjEhCULS5TPBxSA39OkOnIigYrtHVCrj2kS3WCOm3sW1GhHe3SpP6
	 24hpknXuyakhhQmPEXQuTowxkm30lZqgEsidnwmaRoAQpWImbLW1yIBj0Ks4GytTBW
	 yLl+PJISBFxPo2MUdy5rIE/f5K5lFoUaOHXXiO7MmTPWs4yYRz36cB+OArbugR1WHD
	 0S95rmM53827lAa4EAkIVNg7orE96Zb3geLxvHRj2FaHB6zLetJ4MvqjODz5Ccg40/
	 MJ/reae/MO/hA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oxdTc_rKAYZu; Fri, 27 Jan 2023 17:58:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0D52C41D9E;
	Fri, 27 Jan 2023 17:58:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D52C41D9E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 78FDF1BF239
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 17:57:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 50996612FC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 17:57:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 50996612FC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1Ln_6iUsu0CV for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Jan 2023 17:57:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 85D36612FB
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 85D36612FB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 17:57:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10603"; a="328433811"
X-IronPort-AV: E=Sophos;i="5.97,251,1669104000"; d="scan'208";a="328433811"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 09:57:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10603"; a="613267443"
X-IronPort-AV: E=Sophos;i="5.97,251,1669104000"; d="scan'208";a="613267443"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 27 Jan 2023 09:57:48 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 27 Jan 2023 09:57:48 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 27 Jan 2023 09:57:47 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 27 Jan 2023 09:57:47 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 27 Jan 2023 09:57:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PvPd7bxCwmHw2DIDb8K7cwBTuOa101GoufDIA08I62nvv8/qMehJbnkn5qcIy6m8ulnP+HoHI+uoqys63B2yTzTgSg5HdN142RSyzqB4gNVRlGmpJeNVA6ts+/WIm3SkDLHoSO6T4MU+6ZbXDRlykwvWaz9IeYMc5c4abYoRie/ufLVR6l49TK4EF9nXsWbR86LA2KdwKzZLWc3gIixqJig7go3hd80eQI5zpA2XSgqY9Oym90azP65cBV/UunhpmS2pE4MGqzukIowzNjcumpnU0RLt+U/316J4zxoT3FPZweuQaEKyb7C33bygdek267gbXH0oe7wLpTJPeSNlIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JzyMLiEFOQ2fJwtbi2AgPOxY8djwIskSiWywaZjjyK0=;
 b=AtjsLzLrSDh0lMKE6HW2b+kl/rXE6Prl/+q6qzk6QitRTQZ16T7gjs6dFtspqxsPqeOAEmDaYMeeHepSQK5iljwvIfRrHoaHr4EA9JC6zJd3AOYefHM1zxENybcc/25f37SzXvuyZe85vNTugZ5hcmv8obbSLiPTQiTZwtXRMR/GYRzzAKirD9/ulU2x4IGlJ/6526KpfXGJOsvLdvt7EZ30ykgy1toSeiltOz/Z0cU9PdGvcxVVBzcrtPgyTwrFfMDDLRfZ+apaEAz42uxqR/BqHTtLqPa9Ie6j/IAatANrNaY6rSpX00ONIiwubDx2RlvakMPULcHdultAOROXaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW5PR11MB5811.namprd11.prod.outlook.com (2603:10b6:303:198::18)
 by SA1PR11MB6965.namprd11.prod.outlook.com (2603:10b6:806:2bf::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.22; Fri, 27 Jan
 2023 17:57:44 +0000
Received: from MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::5d3d:f1f7:d54c:f117]) by MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::5d3d:f1f7:d54c:f117%6]) with mapi id 15.20.6043.023; Fri, 27 Jan 2023
 17:57:44 +0000
From: "Ertman, David M" <david.m.ertman@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Ostrowska, Karen"
 <karen.ostrowska@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "michal.swiatkowski@linux.intel.com"
 <michal.swiatkowski@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] ice: Fix DSCP PFC TLV creation
Thread-Index: AQHZMNY5hRFwWjnFKUmwvKpjiUOMua6vyeaAgALEC7A=
Date: Fri, 27 Jan 2023 17:57:44 +0000
Message-ID: <MW5PR11MB58116CCF9D56F7C8601A6647DDCC9@MW5PR11MB5811.namprd11.prod.outlook.com>
References: <20230125160149.1899331-1-karen.ostrowska@intel.com>
 <1c945051-ae39-8b1e-90f7-3a2c568f273f@intel.com>
In-Reply-To: <1c945051-ae39-8b1e-90f7-3a2c568f273f@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW5PR11MB5811:EE_|SA1PR11MB6965:EE_
x-ms-office365-filtering-correlation-id: 4d4f4522-f17a-46c8-61b7-08db008ffe21
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: q2AhFpvGIG5WU26dszfZ/2wIrIoCxRO+rDsAJkp5NqPZPyEyDBJEJfeTdupVIJJQfyh6pVE6QCtsCuInWZPjHXW8TDnAnfEvJkOLE/817keQ2JEtkUuNg65QYz8KFxUlI+yWupavpaSKedUUzROzrCkptlFTePKfGaWYf1j0o04MW+6n0GCkv3Vvxot6OtPAu6pynjy10ar/rnR/Ti3y4/oQg/+If9cGoK5DXpV9DEQFlzQPydVFwyzP8ABVdhuNJrZmLPT1OziGsoMA811MI5xOLCX5igKnkfE7E5RArL47jMbsuyf0ox3KSTsSp1H13iRGlQBTDKKOkxlCSopgeDYh0qJR3tTrc039CJAdE+9+qXnxvaNUuiHHzWNAvDlhNEZMTv/jHqKwaLmI4Hi2r/QRHECspr5GzTRUwtQdxq/YHMMF8D55vMkWglfH2r+EZyL2hm9tnZwz8QU09kcqJYyb9A9oJvARYTkQmNmYSM25B0y+5qs5acNHzMgqnyz/DSrontiotB21qExJiqbpWaMe4qsxBiU1v6Gl9YXRk3jecge6WQ1SJRGtN4mkICplc8NiSgWpAusYYKZJOaOtk6MKw1xNS3wRIMHfS8HFSse0w/+4I2lwlbP7pYKdMXHM3UeWwUXGTk3/taPuvRRrkxZGfcFvk2LAdoqeqN/d84PWoHP/ZScvt2WJuf0wPl7OqWRnO+tUfPLIsZnxYbJ1Ow==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR11MB5811.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(376002)(346002)(39860400002)(396003)(136003)(451199018)(122000001)(64756008)(316002)(38100700002)(41300700001)(8676002)(66476007)(76116006)(4744005)(52536014)(8936002)(5660300002)(66946007)(38070700005)(66556008)(86362001)(55016003)(2906002)(66446008)(82960400001)(6506007)(110136005)(33656002)(53546011)(26005)(9686003)(478600001)(186003)(7696005)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aVNDb2xQbEhRdDgrTWtER3NVYTJjUCtocTFpdFhBTDNRdko1TjJUU0RsbVZQ?=
 =?utf-8?B?eE03VlFQZ01obDBCcyt4YmVja2s1ZnlVZmxWV0JwTmZUcGFNTUtxVnQ3MFE4?=
 =?utf-8?B?RTNZVFpYR1ZsNnA5V1k4V0U1cmF3VWV6V3RGVUlBckpjalpmckIxak1TNHFZ?=
 =?utf-8?B?NU1ibDVJT3dmcU1sRUtiWDd6M3F2WHZaYXNMTEcwUXd6d0VrNWNSem5ZaU1a?=
 =?utf-8?B?SUpRaHBrM2RxNytjek9JN2oxWnJoeGNTZnlDSXFONGFXZ0N0MlJTNXZYQ0pP?=
 =?utf-8?B?RnhIRlRXTnNoTlR1ZEhnNktPem9qNllyNE0wWnpFdXNXbEFPdm9tSGFqckhI?=
 =?utf-8?B?T3d2K1lQc2ZWYjRNWWpZcUh1UUhUWnZjVWt2dFdHeTN3YVBFREtpZDRHUDVY?=
 =?utf-8?B?aFJFR3dhTDRZRVczVVNJRGZ3Z0tyQ3FSd255Rk53S2VjQ244RnJKbDVtQ0Vr?=
 =?utf-8?B?bjZlUW04NFJObzV6akZEUHlVdVdtei9oalJLd1VEVG5CQmtVbjBkNVpxQUd4?=
 =?utf-8?B?bmZJQzVqNmFDV0FMRUxRY3BKQnh3NGFkU1RUODRrV1RhbnJBbHE1KzJoTUFq?=
 =?utf-8?B?WTMrR2VZNkNEeWVGOEJXaE9wbDdVUkdwNmlrODYwV2dRMGN4V3lPNmI3SFBK?=
 =?utf-8?B?QWJEaHljeVlPdTl1WVJ0VVBTTDd2QzF2WDRyT3pTT0ZkeVIyUFRoTFE4VmxF?=
 =?utf-8?B?YVdYc2ZHQzlLazJqaUFPYkZFT3BUUFJOWndrRFFhYVpDUWNZancrZFBHYzht?=
 =?utf-8?B?dDJFUkJ2QjVwRmFrOFk3L21tVnZYRzRJR2tTSDlEWnN0NDNUR1NNelpuNkRx?=
 =?utf-8?B?Yk5JQzFKamFJZy9UTUZHVEY3eWRHWHdRdDZIcVNkdTlXZVBxVU41L2RpV2N3?=
 =?utf-8?B?bmFuV3JicHlmNTlxb2tyN2VJSk5hQzBxdnhEcWZtNlRRRGpqcVhrK3VpSyt1?=
 =?utf-8?B?WmhNM1M4RTJ4WXJuZ2hjUGdheEVZSk0xY2FTK3Rkb1FpZkp6UHl5R0ZKT1RG?=
 =?utf-8?B?YThlMVQ1M2VIUGRvUSs3cm45SXVyUk5qVE5maFhhTGh5SEpieWJzZ1VaQWVM?=
 =?utf-8?B?b0hIYzhUcDcwQ1hDWi96bFZGdFd3aG9NSDVjR3d6N25yaHZwcVdBOXBBRlpj?=
 =?utf-8?B?WnJaRDA0b1ZkMXkzQTcwMkJQaGVBNjdYckFjbDhWVFJDRHptQ2Qrdm80RmdM?=
 =?utf-8?B?Kzc4WElHbUo1MWhuN3JEMlNhbEc5NWx3ODdwbG1QcTB3SXJ1aXlYbnIyUXdH?=
 =?utf-8?B?QktWeGMvUkJVVEtiRzh0WTZER2dYMVhiRHU1VmFxUmJJaEtxczY4elQ1WHpq?=
 =?utf-8?B?TnBiYmZ3MFg3TEhOdjJHUG9HRG1uVlhWMEdHN3kveDNDdzk0ZEpOeE5lbEZW?=
 =?utf-8?B?TXFIa082Rjlxb2VVRS9GdE55RkNGV0kxQzZ1UXZ4MGhpaTdxWjJ2c1NnSWxD?=
 =?utf-8?B?VDdMbHFpandhMVhEeXZxTWEzbXBUT3pvUWtwV3h6OXZxZzFGS25aZnM0RnFI?=
 =?utf-8?B?YklySHlGZzJsU0p3OXkvdGFvZlEzWmF3TzNZWDNMU1NuT00rdllzd0E5bWRp?=
 =?utf-8?B?SSs4ODgxRHE3aUxzODgzS3MrTTVxZHNObkdWdE1iZkNhZHptdFVqNzFkdUlH?=
 =?utf-8?B?VllpSDY0dzNxVm1FSnEwdzAra2VzWmM3T0ZPTEhQV1JRMjQ5SDh6U2c0NUNk?=
 =?utf-8?B?cmY3Q3htQVhOWlQ5ci9NUmgwd0tlT2hGN252TWVXWk1wNC81NGdYbWZyZHBk?=
 =?utf-8?B?eW5Sd1FiVkFLOUt4aWZZY0s0bDVOTjNySWNtVytIbFdGMVY2N0UyNGlvcnhB?=
 =?utf-8?B?aVVDUkU1bFZnWGFLN2ZFL2NtdjNTazlYV09OL25KQ1l4M0QreU54OUhrbU5t?=
 =?utf-8?B?K3M1cU1Zd2FHazVkaG0wM3RKeXE3TlZOMjkzTWhYeDFmcXhkQWJvNS84b0Ft?=
 =?utf-8?B?WjJvOWdTU1hMZTRZaGQ2VzBxOU1xVjgxTFgvNGozckFiNWE0YmNZNnRhWDVl?=
 =?utf-8?B?WG5UNkd0SWpjZTB1aTFhUnRONDk5KzFiNytPTHBRMWlKY0tkQVFLUnNQU1RD?=
 =?utf-8?B?RDRLMzM1UmplbjR3Y3AxTFN2V25TczYwNmNyRU5vUVJxTllCMlFEbEh5QmIv?=
 =?utf-8?B?MnRnZ0E1TU9McHh0Rmp3US8vSHYxSlZoN3doYTZkLzd4OUFxWmN4d3R2bjBs?=
 =?utf-8?B?U2c9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW5PR11MB5811.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d4f4522-f17a-46c8-61b7-08db008ffe21
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2023 17:57:44.6824 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cclGG5+exW5LTKYG2vHo+fN2xPwBkvYpnddpu3SpGk8NB4U5YQ2PX5bMfiGU1R8IF0wWyVxGpa8Fw06p+HCa9i8AeHzu8bkubOe3M5FuQ3o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6965
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674842277; x=1706378277;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=JzyMLiEFOQ2fJwtbi2AgPOxY8djwIskSiWywaZjjyK0=;
 b=YtdKRibNew5BtcZJc55uupbEGZANaiTJYDXysYOVM2yARJu4VM1zAf+e
 VBOjTN6pcipf+AxKCrp5CAlkUHlTKHR5tNlYgi1fGyY4vsTPDGeaC0fkF
 m/UsNuHU/Bv6N5+owcmJ0gz9o2/DRTB4hjIGUyJ92i/2Bspjt6ksIbf2u
 eAm27J/k0msBpFzeN1C3S4Q67Jor2JY+29fUwxsChE/uWwn5ZoE6PkB45
 7gggMm4JJfBpNgyXshhAm4EnCkogEKI3hEsutqEWdzCuBA8FHdRurMEgz
 5iiuJCSsMP4UpygTlgE5XnaUhTgtfpobKXVOIl3am0SMvu0xGb+Qst3hq
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YtdKRibN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: Fix DSCP PFC TLV creation
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Tony Nguyen
> Sent: Wednesday, January 25, 2023 3:36 PM
> To: Ostrowska, Karen <karen.ostrowska@intel.com>; intel-wired-lan@lists.osuosl.org; michal.swiatkowski@linux.intel.com
> Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: Fix DSCP PFC TLV creation

...
> >	buf[0] = dcbcfg->pfc.pfccap & 0xF;
> > -	buf[1] = dcbcfg->pfc.pfcena & 0xF;
> > +	buf[1] = dcbcfg->pfc.pfcena;
> Also, I don't believe I saw a response to Michal's question:
> What about pfc.pfccap? Shouldn't we also remove the mask?

pfc.pfccap is not a bitmap like pfc.pfcena is.  pfc.pfccap is a count value 0-8, so any
value in the upper 4 bits is not desirable.

DaveE
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
