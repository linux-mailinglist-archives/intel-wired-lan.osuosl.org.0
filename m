Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A9D8857FB8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Feb 2024 15:47:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AC5DD41C1F;
	Fri, 16 Feb 2024 14:47:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 75urz8O3zlDz; Fri, 16 Feb 2024 14:47:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BB2F141C17
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708094855;
	bh=+hBcPKlr6CV8sTiPOtyX0HFcbzTIUqUjdYZPVZKUS70=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yX+RpeVUtwJlpiZqd9RDZNEOABl+SW9d40SX5WuKJqSIx0ThGrdiv8E1cayLmrpFC
	 sWBGM2ZP168SbBvKXv4dywAQzBxSxuxNSFcOn2fZs3Jfpqm2PnR881bs3XldGuN2gG
	 eSLGoFrM9UgPqPsEEhKBVCrZNYqF/F7/yLiPDRGKdqV7tG3EtfckE0CLMfpPRMTltK
	 PAdrXbKMTinpwOsMR603SvToIf51eMTGY5M2SEajlGG5qoIFkGANvIiQR9nZVbFMKg
	 CYo6PmXLM/ShQ+tOrfzEdk4CDTjTNEp1LNYj4ac4j3IiW4oO3tOsBrshM36M5q+owq
	 eebPchZtrfsdg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BB2F141C17;
	Fri, 16 Feb 2024 14:47:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E12741BF29C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Feb 2024 14:47:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D9F52606A8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Feb 2024 14:47:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BYRKrsovHCbt for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Feb 2024 14:47:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 393EF606A3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 393EF606A3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 393EF606A3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Feb 2024 14:47:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="2098380"
X-IronPort-AV: E=Sophos;i="6.06,164,1705392000"; 
   d="scan'208";a="2098380"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2024 06:47:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,164,1705392000"; 
   d="scan'208";a="3820960"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Feb 2024 06:47:31 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 16 Feb 2024 06:47:29 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 16 Feb 2024 06:47:29 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 16 Feb 2024 06:47:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L4TXrnFIyVyVqCIP8Wi3RYMqlYkus1scycpjn5BaAuCnGSuMqEhxwSgv1lrc/9+G2OYD9HBPHFWTItWd7+bIG7t+EsTeY0/rHpqjx/xFSFMdlJv6wN3CL8R95llSwET4WN5I/W5p8ohtmOwv+IsrBbYSZiWtXLAwvYaKPoNPm129NjGOtTDxRe0PxQoFEakwZZboaaaEJHkYXSk3oA6oTIWkskiRLX4LAZm7UW4mSoCqqpiqd5jUyfdPjL0XbTuxw8OCUDsmNA0bW5CRH6vN9Er2FWslsG7qtgCygRugbxh1GgOF2FqXOjRZLrAFhMNYRuHOjONr4ODM+JDscCTOOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+hBcPKlr6CV8sTiPOtyX0HFcbzTIUqUjdYZPVZKUS70=;
 b=eSeK6JP8HwVmL6u0kJ9PZ6nlA5pbe88R6K20fUy9cWpUr937pQ46fcOew6yzkYNAgZc4PNKEq8GAG7FlXX0JEfUVjcl3JtKYeYphitpu4jnw2gdmAvzXWZxvgVYSlD9hG5G4r8dk61iXD+0VB9P70cdZtzNbcaeGlPvIIRNV/IvdBAUQbnl9HNkAw+fhm6xl9C9sS8w7kPRACowa6p9VVf6bFIzVNcfCtdlB7JZ8bAnVT3Hx5iH62ycZuEcshMEfJuVND9czNhzfGh1PrDi3APPCnJsDXn3/PIuDMTEtymm/FAFQGlukrtK4CDyaBbyjzuJANAn1vEuTAehhmtn7gA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by CH0PR11MB5220.namprd11.prod.outlook.com (2603:10b6:610:e3::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.31; Fri, 16 Feb
 2024 14:47:27 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda%3]) with mapi id 15.20.7292.026; Fri, 16 Feb 2024
 14:47:27 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: fix dpll input pin
 phase_adjust value updates
Thread-Index: AQHaWuKNtp3ipHdmPkGvj8ZyugsVLrENGABg
Date: Fri, 16 Feb 2024 14:47:27 +0000
Message-ID: <CYYPR11MB84299CE80935B597DBBC6935BD4C2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240208225631.725970-1-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20240208225631.725970-1-arkadiusz.kubalewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|CH0PR11MB5220:EE_
x-ms-office365-filtering-correlation-id: a2b1f6a4-b1cf-42b2-42d5-08dc2efe322d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xdZE66+ijWHT+Jim0/K3SSncjTze3d6OOyre92q9DzXk5ifVmYDZESJltZQ5TTNd57gUTK+PSdmwjY5kZ1Jb7C1vXtqNVFTvYBKR40oK4giusWq/ODG6VJoKgQQUo97obEKu0kemfGrnsFjhRV0Cq7cyg6bY8FGXJh3IKjJlsgUVGwxKm5+1p3pd+WTiLAUdSbDHDR6tnRTbl7xnRUhWOUtTdZgXz91OotvcXTQfCxRBiF+3t+Jxk9G7XWTJQKjeIQsby90lateZazknNgipKyZrNNvD9zY4kK6aqu96qm158tIYM2i+0pseKp/Al6dpdOqA+dn/qdBwXak9QebgP3iqhSujSdvVN9huQXtHyJlrmyMN3Bqg9eEzmQRlSba5ztZ2hNqwEOMOjBNxk8V3hvecW3JpTHKzBVfBClcd0SDxNVnjmALTFaVOmcG/+OP39fnyNNAbF2GGDuSYVfebECvSHZhH59cZAEr9eObX//O2rXdhF9HMzxaPQ1NwcKdTsHSOPJaOIbqJtDrLceiLgB6Hz6jbFTgLo/oEDamQi7YbZj9Ec0X6mvsW1pFsI++/v7spJcKbOC+lBXEjqQlhrmHouUI3rLmw2/S02S1wP9U=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(366004)(396003)(39860400002)(346002)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(55236004)(478600001)(107886003)(41300700001)(53546011)(55016003)(2906002)(66556008)(5660300002)(76116006)(8676002)(15650500001)(64756008)(66446008)(66476007)(66946007)(52536014)(8936002)(4326008)(71200400001)(6506007)(7696005)(38070700009)(110136005)(54906003)(9686003)(316002)(26005)(83380400001)(38100700002)(86362001)(82960400001)(33656002)(122000001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mKeWtRdOtnY7Kv3ma6Wue7qiEWJMB4qDwv42L4zyLSdcoia3da2srlWCgtJz?=
 =?us-ascii?Q?/WCzqmBGz7M/ii2v492DeHEaj/JkZs6UEg2PbGkgUL1H+VI5tU88JTWyF+gf?=
 =?us-ascii?Q?MBSq4/3Mdh42aBlJTuHG4wnf3qwPD1Q0Yg2vR94eVjuKMYUANVWN41y7Ka4B?=
 =?us-ascii?Q?gNXAeiWo3VVODSrfAfLNM8yu2APS12ExE5ewLo+1o9JstkmOlXAd94pz7ZeO?=
 =?us-ascii?Q?zFsCCp2FTT97w/hC00hqYrQS2n5a+b3r0LL8eNDiNWkli4TQ0nXMei2kVOsL?=
 =?us-ascii?Q?csO+JZiSSmGAb+hegZ2pe4BODBsE/2NViX3TM+awe2yf/BvyIGUzJBvCNlQ4?=
 =?us-ascii?Q?hupRrMDyEWvcUTpIgRYV4No58KB+QaP3EM6qjRIczQhtzHW3d/tnN2gzZJVS?=
 =?us-ascii?Q?ExigEkoqEKrhkKm/JbU+6Ksox2K8YM5Jj2dtasxOt4iiBsFPFQtjla7dxi4C?=
 =?us-ascii?Q?Keh5kLtxW83uVdXlB3CA9TuPubEuC0rKh/iGw9rk63NxbwHrnevd2f8EkGSs?=
 =?us-ascii?Q?KwB3ce90KGpWcbkqn9pmEGyBZIYXLOzEEVG6iM5BRWPPyCzKQSbbmpgWRrFS?=
 =?us-ascii?Q?YFgUJLC4XlfWIfI9m2olAch02vP/ipbPSD8wancvvGOMkyTToUslAr9Kl4XR?=
 =?us-ascii?Q?2maxoZowEAPwc65oSe4Wu/59imEySx1WiYNRDbDKmPJs779Q0EKRks6h7lLk?=
 =?us-ascii?Q?Ky3j921Ym0y3gr/0+qCkM7wBHSn7s+7Q3DwuwPcaRLc6jWyS+4o0XN/La9T9?=
 =?us-ascii?Q?BOP1/51HQMHMcflxrL7FMmNkygMfYXSy/vGt6FK/yhjv0DGjRFzOZr4Hbp82?=
 =?us-ascii?Q?YoQPjrZsK19cVZk+Mc7TB3ev2FAI84fw8VkV4eOMcfkcuP4Q/UUOX1zPBSnc?=
 =?us-ascii?Q?aHpwSS0zJFDJ2PJJyQp8UjqHoF3lk24OA7qMooPDETuTZR86lbohezjxlh2X?=
 =?us-ascii?Q?EcKsovHhNa/j8HCW9nLTFYUC295M45ttG5Ua6ceXXHOAXCnZpZDShR81DZyk?=
 =?us-ascii?Q?+6hhhk2o5NIJVosgiQPmG34IyZ3yJdtTNbwxevCH36+53j/Xt/2QsmEtE8iX?=
 =?us-ascii?Q?dGO2YJlVc1NExBSyKQFrrAnCayC7KvNF59g7CtY70tFKAoakBoHpE/6+ljtX?=
 =?us-ascii?Q?TR81Qpc7NZaT4c4e03panjV6bt0qtg90dZAIoQXRnIn0Kg7bW830RHLm1DdJ?=
 =?us-ascii?Q?it/X98X0ssF37AYNhDQfY7/f6YjgGbf/8nxnekauIWkDpU7iMzZjW+F0k6tx?=
 =?us-ascii?Q?VPS3FixZ7LI+xgxYYgcxB5yJ8bzNRYX1GuMxh13WW1+MSw0guJq2XamhCU8v?=
 =?us-ascii?Q?dTmbwP/LUE8fgbk3gjWu9x3iyyoeQmx2jokOs1YlET5o8RVD4rbFZi0ly1sq?=
 =?us-ascii?Q?av5LbsPOQ5BS15vmAPGwOWb+OXQqH++0ETgc9f4wGSGIMcpuio4Le+RkJbym?=
 =?us-ascii?Q?9V+Cux5fZOU89OxGZY8mbXB8fUMaYmkW8ZJ3GK4tR6lQ+T7qoSMxuJe7Ra5s?=
 =?us-ascii?Q?SWkKYnAOyB+vIgeHs7u+yYjpyIpLD2IqICl9AdyNKmuRW43yvajjFHHBCVGi?=
 =?us-ascii?Q?Gf8nP+yzg9KIHouqhEr4RPuztiQlZQdGQy6AfJDyFD51hie4xdJQuD7pFKVi?=
 =?us-ascii?Q?hg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a2b1f6a4-b1cf-42b2-42d5-08dc2efe322d
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Feb 2024 14:47:27.7975 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EOYa861lMiSPHqjLynUGdsz/0IjJwou+KeK7DLZ9jtn9Cq2+A2+RxTZmT6RCV63cuO1MEAhKMGg4frgxEC8R1r6SDKQSu8Xx+xriaWWNBgpTuEe1ispj/YqE5mGgw1aZ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5220
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708094852; x=1739630852;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=r4pz2W7hWCvCvX9G889prr8G5IxknAbvxbPnfb2viX4=;
 b=IqSYgpCpKCH5FwS8/sf/srLVu6ymTYdK3mLMrmhYdFbZByFAT0zHpXwk
 6KbiI+he2XDpulKsQrtEgX96FAUzYokaN1mhMbKkX9t8uL2L1swHweiAq
 rafrnklw4JbXHW0MdPq5yfeCNrBPEMDKmWwTaa4xWcMZZHPzvXw9rRz9L
 C4i+k4mzHbXGfIBKX0N/Wm66Wwsd7wZiPBepoJt44OsQ17hfh3k8ZC8ft
 /0Mbs0/VKB/xi/t9vwDleIe0HWiyvUbR4UIbuQ4Xvj8uPxxc6XLIXIcwq
 /a9hmlBpBw2PYOtwkKP1IOgrkCch2B9R2DSNVT484yiX9MwvinUFH6J3H
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IqSYgpCp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix dpll input pin
 phase_adjust value updates
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
Cc: "Brady, Alan" <alan.brady@intel.com>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
rkadiusz Kubalewski
> Sent: Friday, February 9, 2024 4:27 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Brady, Alan <alan.brady@intel.com>; Kubalewski, Arkadiusz <arkadiusz.=
kubalewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix dpll input pin phase_=
adjust value updates
>
> The value of phase_adjust for input pin shall be updated in
> ice_dpll_pin_state_update(..). Fix by adding proper argument to the
> firmware query function call - a pin's struct field pointer where the
> phase_adjust value during driver runtime is stored.
>
> Previously the phase_adjust used to misinform user about actual
> phase_adjust value. I.e., if phase_adjust was set to a non zero value and
> if driver was reloaded, the user would see the value equal 0, which is
> not correct - the actual value is equal to value set before driver reload=
.
>
> Fixes: 90e1c90750d7 ("ice: dpll: implement phase related callbacks")
> Reviewed-by: Alan Brady <alan.brady@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dpll.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

