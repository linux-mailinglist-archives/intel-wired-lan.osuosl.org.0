Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A667D86DC2F
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Mar 2024 08:38:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 05DA341BAB;
	Fri,  1 Mar 2024 07:38:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FqKodRYB7urn; Fri,  1 Mar 2024 07:38:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0CB1F41BAF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709278735;
	bh=lkz3qUBQz4KbS9PkdQNLU12C7IujK218YUK+L+1KmqE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Po9kcPaIrKbWq5+mZrCwrDrwrdPzgXD06O0oEdBOkWCnxUBr6OD/p37r7X5ciCH4X
	 wM7R3iZUF0ZvPphtHpObhf4tBk9aWr5YD4HZKv1LYszyDu+DfmPB75+Ih5iAgZkfMB
	 V0TvhrtCa4AixjX7FsYY7fskQpV/os4qs/MlWnfjHj2QvuDkXKDkbVqDkGnsW/fj98
	 lO+vE8d153KNM4McehxcmNjsVcfkcbUNnqh1E1155vTo86slRx/fBDNZVh1TLCDiGI
	 IsholKooKqJXZL+aOJtSGvy043cWvqKqfbrUVYMtsEQ310VCjrN+CgbLCAuc85Qwkj
	 mnLZ9LSeLCeSA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0CB1F41BAF;
	Fri,  1 Mar 2024 07:38:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 16AB91BF363
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 07:38:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 021EC41B13
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 07:38:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rs9YPvq112os for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Mar 2024 07:38:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0D9FE41A46
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D9FE41A46
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0D9FE41A46
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 07:38:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="21259482"
X-IronPort-AV: E=Sophos;i="6.06,195,1705392000"; d="scan'208";a="21259482"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 23:38:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,195,1705392000"; d="scan'208";a="45650133"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Feb 2024 23:38:52 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 29 Feb 2024 23:38:50 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 29 Feb 2024 23:38:50 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 29 Feb 2024 23:38:50 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 29 Feb 2024 23:38:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J1lLu/5in3nXm6zf1aiBF2O3ss9OBv2bSJcJl0gRe/2StNS+7I4W37CAqZu7ys0YPmhU5fDTnSDQ3zy6rJ2QQ4O8rrzjcGdynvyAPTP4ofAxAADNC4oE/umvnG+eDqDG2Uuz2pIsosLt+1qzyMknMxL/RFPF68QxNL607b3VSNRv0QcRvsjTjDBT2WK/d7dkeLEWJNWDgLFMGHKxrqp1akqTd7Y22XcvjpaItZZiMHE8VSBz16ALeS/8Lxc4l5qDdbtxMPz1cXy2bA9Z43EvwPubArPVthQhmsWWBw+oQZVATqID33s043OftRHg4OEtpbtPpy5fR6boY/QZUyr0kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lkz3qUBQz4KbS9PkdQNLU12C7IujK218YUK+L+1KmqE=;
 b=F03s5er2Mwj8q1cBsMV/X5jlyTyjvCoz4H4msxcUNy5JAqsKrKElcmGib+Z5OatfOGjTe1FPMssZY/BEPknDh8j3E5ZfNTfD0sPI6EsoUJ82vVsexJIkrOr6CIWJSF1EtvPfQkS4X8wKT/L6cxCZxxKvC0BV3BoHFjkpcI0iCA0M1/dn+cE+xUjIJuF71vG6vSqPHVKQE8RGCQe2XhOQ+3iOKnsieyICCywdlBXA6hceV0xVWKV6IUxZYcjxCWr2B0MABpUv0osFKT1nE9dE1Koy672+wmv0/AzhojSQ9qbxAny9hN9gQ28XTaIkV+rAdYJlmqAtzofD4OYh/4BJPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by SJ0PR11MB5215.namprd11.prod.outlook.com (2603:10b6:a03:2d9::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.12; Fri, 1 Mar
 2024 07:38:36 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9%2]) with mapi id 15.20.7362.015; Fri, 1 Mar 2024
 07:38:36 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 iwl-next 2/3] ice: avoid unnecessary
 devm_ usage
Thread-Index: AQHaZnJeqf+8AUnRmUGyIxSvok5IE7Eiibog
Date: Fri, 1 Mar 2024 07:38:36 +0000
Message-ID: <CYYPR11MB8429270B2E174945B80BF7CEBD5E2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240223160629.729433-1-maciej.fijalkowski@intel.com>
 <20240223160629.729433-3-maciej.fijalkowski@intel.com>
In-Reply-To: <20240223160629.729433-3-maciej.fijalkowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|SJ0PR11MB5215:EE_
x-ms-office365-filtering-correlation-id: 10ce8a6d-4383-4fa3-05d0-08dc39c29adb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: elFd1GQNmjtFoExmdzXTh92gt+K+Qr3yoiKE+OXX4vO5LUlgb7p2qVu/oX5PhzNMvvYxzKD2esg7ftiz5vaA9JAls4VOViyMPNHns091dxa/21/d8Ppig5sroOwg3qGZfRy7n7oxL2jiMDbO9EmFXiYlkh7UeMW30zAJR9sakUJnHa5NNWa5UU3TahhAoQH60eO2O7K77uGvTxJ+WlD9L50hkx6qZ1In8kua1h2J/Q0Dzutv0JMzoXx/E17OtSH3RvTqQOzDB/eQlomf1dspd1mKuXHb4KyJ7VTEOmoLgWs0+1ZicACaLKkX9AHw3+OCopd8cHROVf+icjS8KRiYRrupn95zjx2mUCJHdUsZIGdwYEFCSmNcAiZWvejijvVPGunD7HNgYbx/I3HI9B25q+GaeuCY5dTpAKuSLFoycn/v8OF1v8OUWaxBgYD81gAhMvvUR4zuuOz2lK/eEQ6FnRF8ONU0zIPC54JNZDgRB0fW7+pvHCxW4SRf1Rec1hr7ko0DaGqmwZ7HoXAT6mPWA1ymGynsVJKGtBXnyzVeciqofSwGd5Ns3S5TmAjAvwwYvR+A42dH9FxkXtRBs8mgbjfsZZWI2L65SbLMGeqMYdf18Jwtk4AwdyVILeREn1FmxKpvgwGDsPuBOvuSvdGmoapqDEzuWcBJAFPgB87ixeAmjR3R83Db8AIKLrLwIZguMd9jxP82QXcMElw1JvDJSuyA2eQr0jTak+WGROQnVFs=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fANkj9owfJjUGNvizoX29+wyJsfmpml6EBzgY1p4FaM/AtIZPEwv3VEFRg+5?=
 =?us-ascii?Q?mCMr5bqXcnpKfqJNHcZjZWlEGKG6KIwkqhLYerlzGDHXAWP4umcGgJ8g980m?=
 =?us-ascii?Q?u0BdP+URJVau4ukx9xF/p5tmk6ZQwAoF0DAXHtUb+gV3Vm56xPfuIr1rm2FY?=
 =?us-ascii?Q?3xsnEMOl2i9NAU6YriSJdDEBZ+wKW2vbHmDA2lT5UbfE81K62iW1zGw98c76?=
 =?us-ascii?Q?7F8FxRqNEgFCzUmyib1vz+fFA6QTYljS2T3ocF7pcpFJI7z27LysmCR6d0ks?=
 =?us-ascii?Q?MhTPia+epFWAczmcjAl4NvBDjkHNe5b0wDk52YV8jOOOfCvWRKH1K31RkRQv?=
 =?us-ascii?Q?iqMz2BDhqsAWgyZ/KyPiCnDi0RyRiHfbHHaBWm0s0tb7yDHhycAKtBXjkTjI?=
 =?us-ascii?Q?LynDsz+LYAkM1NdOVi0MJWDnn1v2ehjzPvUSskFPHqjWIu1Z7rxQVp7CoaE9?=
 =?us-ascii?Q?auZzGD2293QrtLrWwPcYKqk4NUbN6tkVKw+VNhT+NM7HVXCB+yoQYxWlIGl3?=
 =?us-ascii?Q?zQ0DdYQyXnK8gs9G/6grwsUh5RdKBMBqDP9qS6gDHNo8gp8SeysXcB6DZZYh?=
 =?us-ascii?Q?EqnXSsC4q0p/0RJ7AjohwYLD5LKgfAUDlk/w94Ve6aHDUENNkMewCcxQbcr2?=
 =?us-ascii?Q?kguvmhBAkem77cBZZ5yJDxDzfh+hYZeta272aylPc2Yb2xhnaiewUKBH/MLH?=
 =?us-ascii?Q?rFNQcQX50JmwTn027By3YnOsH7KqF494Xew3VCEng4woi6l8hYs5fk8GKrK9?=
 =?us-ascii?Q?naBQdQjpwIL6dRiRol4Na+oFTbCJjhMhe0qGp4vjIBMnJiyjr2FrExkw/2BH?=
 =?us-ascii?Q?GR3bf6TO0V3fdSf1jZosH2IJD77/nwNFvHUO62eWU9qhDUN+aTVo97fEKf9k?=
 =?us-ascii?Q?iQ5mNC2hl52FxtuIHn1ilgF4TRDA+jho270/bFC1e0AOyZVYoSp7yarZNqIt?=
 =?us-ascii?Q?ur7ufFE6F174Adl8f8u/Kpj+MshfvS7ryugjt5Qf4q+xIwFQJRtzXCVMEQhK?=
 =?us-ascii?Q?5RsE1vDBOSJeyXZcrSNtOW9UWn3GtyPShoPOjNo0/eHOo1Z4+AV5FgCslLSz?=
 =?us-ascii?Q?6a89AgsAcscn1D3PsQoqwtW46rXJs1M6KU47dSqXzTIUBz4ri+prT1yn4hzK?=
 =?us-ascii?Q?cre1b5rFIjXwfIfT9fj5tcfIL9B8/YObbXOo/Aje97fkn7crwlxxjpG54pFf?=
 =?us-ascii?Q?JFoSY3lEo05AwwT+DmCiNGtCDgjBbRsBbscuj77zH466Ey4NaWePlIELcNOY?=
 =?us-ascii?Q?Tn182gNfs0vgjj0/CmDSxvja4blorxDg92VyNmXYcGO7Ew0KCml1sjHJ/7VW?=
 =?us-ascii?Q?T/bcGK1K0ggiYlsmUirWSDTDac3ZHn0qkWQcK8oOCYokAcesQ3wEY8Ne8NLh?=
 =?us-ascii?Q?q0Y0XfV1T/PNl0NaTZZVadqTn5/FB2ASc/FuQ76u4AI3sCV2hv/7GjRAsH2F?=
 =?us-ascii?Q?VTPTJO5uOjbozuZmuBF1jqBNDkav55U5jwmPyEpluTdlpsslAUr+Yy1w/yBW?=
 =?us-ascii?Q?18+iET5tVdwDuCfy0txRS/Wj6GdSX2uL7qgfy50JXHrHRV8/Kx2yb5pNLLf2?=
 =?us-ascii?Q?SSfjPMikqew6FbZ4Pmr9HXyJbC+vlrT0ImG9S9dPKMu3OOziip5tuA9Q/xDE?=
 =?us-ascii?Q?Og=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10ce8a6d-4383-4fa3-05d0-08dc39c29adb
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Mar 2024 07:38:36.3688 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L7SlkAd9/lUwNGZAIkUja93EcFwNZuQ3tFgYymeqisPcq8aWqLr+j/f4SkOtzGaOk1QWFb6Iwa9GC5LPC6yVvKtWKIXg9cxNPRJlcOt5MDo2q/AbNkjCOfUfgRp3/q/n
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5215
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709278732; x=1740814732;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5cq0sfjKiwYa4u6plEBeUkN2mUNomeyfe1Bm8TjS690=;
 b=nyoq2bbjCoGhCutaDHiqKzz+T2dOk5VvPwOCU9YVUnd4UooKel/UH4rJ
 2N9hOtPLLQzjJKfcI6a3lR61wvSMrj32nHG/anuvN4AhYr9X1Hzl+4yqc
 Yj6E+OJkoKBZQ/gi0bMlmxUviwznQoBe+SBXxbX2296TntKn5yAqgxSGQ
 LZELIHoFoy9hzU+r2K/KqgZRI4uaeEDDFf7zu4xTlWO1KOZt2HpLamDtX
 lYVEuPl6fgnv6TZMZ5ouJWGyBadr9n8PECaiKb8231mAUnYIsCgMGyKqa
 519P3hsA5ENt1PgjoFPcnIaPFfPnDdJI2mlr4gGBE82Brus3d9VilePHK
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nyoq2bbj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 2/3] ice: avoid
 unnecessary devm_ usage
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Fijalkowski,
 Maciej" <maciej.fijalkowski@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
aciej Fijalkowski
> Sent: Friday, February 23, 2024 9:36 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Fijalkowski, Maciej <maciej.fijalkowski@intel=
.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Karlsson, Magnus <ma=
gnus.karlsson@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com=
>
> Subject: [Intel-wired-lan] [PATCH v2 iwl-next 2/3] ice: avoid unnecessary=
 devm_ usage
>
> 1. pcaps are free'd right after AQ routines are done, no need for
>    devm_'s
> 2. a test frame for loopback test in ethtool -t is destroyed at the end
>    of the test so we don't need devm_ here either.
>
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c  | 34 +++++++-------------
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 10 ++----
>  2 files changed, 14 insertions(+), 30 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

