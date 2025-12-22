Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 36AC1CD4DEE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Dec 2025 08:31:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 59606607E0;
	Mon, 22 Dec 2025 07:31:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LeP40KGkPZAT; Mon, 22 Dec 2025 07:31:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 64783607E6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766388685;
	bh=vbZ4VN+f0UeGvkqRxlr8Fs0u1Lf4ZUMjrnNRMT8oPOw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=E3K6egU5petkCL/sgk4fI30MS2n33LrXbNFOtm75YjMQxFoNgwe0ZOYRM4sr5U0fi
	 Z1fM/0cMQ7TR+MvouzSXZ87l1MN+NYOkVPj6JX72rdgCrLKLrBmk/XiYP74P2UNPH9
	 +XAYoFraPNCMywqiz4Yd2r3OIMTH0gGN91hCboLA8mSCJBYtiB74c4x4Q46Ph7Y/c+
	 7Tu6JU8e6eKFDCz75iXUrwCBLyIr3O1jl84SXirrmp+5r7gzNTa5EI7saSlfUOn+EX
	 +MAbaIwNn7x0Ot2yUCC4Y9q6ZgsIqlE2Da/vAaIyR9BnHelNGvib5jNtaD2aF3o4sz
	 0JRvazBZPh5rw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 64783607E6;
	Mon, 22 Dec 2025 07:31:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 96F16195
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Dec 2025 07:31:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 88D2740485
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Dec 2025 07:31:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T0HoyLWttw_q for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Dec 2025 07:31:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6B1B54043E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6B1B54043E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6B1B54043E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Dec 2025 07:31:21 +0000 (UTC)
X-CSE-ConnectionGUID: w24DsoycQYmiKEBZTHO84g==
X-CSE-MsgGUID: hnW5ymrNTimGTjIVVCOM7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11649"; a="71872517"
X-IronPort-AV: E=Sophos;i="6.21,167,1763452800"; d="scan'208";a="71872517"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2025 23:31:21 -0800
X-CSE-ConnectionGUID: zgrab1jWQDKbxyEA6lpRkQ==
X-CSE-MsgGUID: ynMdeGJDSbKxv49CBdQLTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,167,1763452800"; d="scan'208";a="204399534"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2025 23:31:20 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 21 Dec 2025 23:31:19 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Sun, 21 Dec 2025 23:31:19 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.66)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 21 Dec 2025 23:31:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TYHXbfr62utTq/yeY89I5WSQmCob/YnGKEHUd2EItwnu+2p+0UKSLD2bUJPyadZHq10RnB5sTYt+gdtHm1U/8u2MfDoBf5qYcjN+xhI6dJgB3RTzLytyGLm0VFlX+Djztw8ZoYDbtB2v53sIxC7D6Vp/g3e/zdRIefp2kD9+9j54ma6oLIPjAZU86UY3bJtHb36LycXUQHVUjvY54j0WtpD9EyCpOq14g0UDB5lm4In7Fkb6LMut3rxGL4nAreNRO2KjLgcH3Z7e/+WQ6uu/T4Mybzukz0INxS3pii8y3tA1r9XNynWiR9grlC1rKGFy6OCVhZl2u4fa6geYspN8mA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vbZ4VN+f0UeGvkqRxlr8Fs0u1Lf4ZUMjrnNRMT8oPOw=;
 b=C6qFRTXqMs7vZmGFN1GsKqRUcPBD9bWN5vzu1N5T3D6nJsZ6dDymXaRSAR0TbEwCql93t1wnC5kZ3ACWYTR2v8g7g3is2pgJxfhGl4jIau+DceSKnXah5yPm9f8xbHWFQle+N5HdxLNujIfQfFed3BcHn/uQjU3bTutzBdHjKZVfGYoKmuetw0FjoEcSMF9nFlkriOSLpd+bajsGR7qvTU1zQVkp/3yRL5Qx0byZmMW8QU4eU3yk4U1QqagY2CzVZ+XXdeRiOSauUm7WsyHapcyeryA6gMICYgs167MYj1svMikBtqqFgtRNhEMpAPOkHmGmK6ScbvPhyZryTu+WAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA0PR11MB4608.namprd11.prod.outlook.com (2603:10b6:806:94::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.11; Mon, 22 Dec
 2025 07:31:10 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9434.009; Mon, 22 Dec 2025
 07:31:10 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Behera, Vivek" <vivek.behera@siemens.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "sriram.yagnaraman@ericsson.com"
 <sriram.yagnaraman@ericsson.com>, "kurt@linutronix.de" <kurt@linutronix.de>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Behera, Vivek" <vivek.behera@siemens.com>
Thread-Topic: [PATCH iwl-net v3] igb: Fix trigger of incorrect irq in
 igb_xsk_wakeup
Thread-Index: AQHccabXYSYHWdB3g0WFKTGsNOU9QbUtRcXw
Date: Mon, 22 Dec 2025 07:31:10 +0000
Message-ID: <IA3PR11MB898607BDEF754C95744048ACE5B4A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251220114936.140473-1-vivek.behera@siemens.com>
In-Reply-To: <20251220114936.140473-1-vivek.behera@siemens.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA0PR11MB4608:EE_
x-ms-office365-filtering-correlation-id: 680d1d54-8c18-42f5-4cf3-08de412c141e
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|921020|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?XKImkQjW/QRaIc2fa+8UvYw3FhYNBXoebyyHfMhMSDRfx1+vizhI1mvTwXlC?=
 =?us-ascii?Q?lLQFDWsyAXV+sdZtItY4kb14HocvGyOLO09RI/XyYGlkHvlaiZW0bwXXcXz7?=
 =?us-ascii?Q?K4dvt2+Yl6cBb9axN1gjVjN5gAoQ3dpjtNGe+Bf4aIb2B5EtZ8rOIX1Wa39V?=
 =?us-ascii?Q?wjthcVdRlu+iDkM5Ku8ysBPNpy9O+1fXx+s0nMaruKh2AjZ3tExcbVxS/rXm?=
 =?us-ascii?Q?TRUpxH9r2IkH6m3KrTU+f585Emwe7Um5XpaTz1GnhKBh3chf3TVQZSmDMgXR?=
 =?us-ascii?Q?MnxP5YY/j7E5yoPv58IZ7oqM+7ZDNAmQI/mjW28QvYdt6IHK2ojFXXJtKzb3?=
 =?us-ascii?Q?XQ6pZufmoZR/t3dGW8MMJkpM3GA3G4h3O0fd2XiAyWoT2s13R2DJEidhe4rk?=
 =?us-ascii?Q?fm/3vFo8JMJVQis5qXJRr8feS2+3u/7M8zRuB/CjU/qTxQmuyYS7poLbEJr4?=
 =?us-ascii?Q?SDhI1jCc6vYZMp/FMCS+9guq+BhqMWiQi3lBBm3FK6t7WDXZiDmLzvc8qcy4?=
 =?us-ascii?Q?OkUF1uYZFLWivdkJT2j1QK0APJxc9Kw4jAMlz5+TcObvnb+hX1+WdF0+gojA?=
 =?us-ascii?Q?IY7CfVZJ39O9g064vicYwznVME5geN1j2eh/wbEXGCNuxKJ6X25FIsEgx1LO?=
 =?us-ascii?Q?9/scD0/q8TEGSRozAkGGfM9CC/SrYmjFiSQNY5s2xhOHDLMcZE4FWWoA/msj?=
 =?us-ascii?Q?148fQILp09xG+PuONxU4qQWIYOW7qaOU0wOvUMiXakrhYRrO98HN5/9cENcT?=
 =?us-ascii?Q?jE9eEGevJR2CG7SFN1gc3EWDxaV5qSDr1iRzo2dUdponaePSZkcyPTsvUrvr?=
 =?us-ascii?Q?bdCov8xfSA7O/ntFOOhyoNQjwiCkZZn/3MbVesXCC/LGRrj3/j/oCBHllDN1?=
 =?us-ascii?Q?AT2EKATrMII6n5seYOXX2tSJqr6K3lCtucwdM3JQrxHKCFf3S5s+xaG87f0R?=
 =?us-ascii?Q?MoJQ+Z+ZSeuhZJe7F59ld5G0TtUEtpHhrvYJH/z/HGWI3liHMHtSV1GbfRts?=
 =?us-ascii?Q?d1xwegf3LHOt8sAE8kOM4GFh4YnhZ9LK649sFJUXZNwNr6P7HHMxJjoGwTyT?=
 =?us-ascii?Q?5LwyV2UBSz/AoXBOhPq9SRhvdyESaYxafsaufECVckYYpOROuM+Acy7VlFkv?=
 =?us-ascii?Q?zaG7ne8plpWuC8+uZTcmAIHzZdbkh9umkxNRW+x8uBMvYlg3YtJhDOxcM4g7?=
 =?us-ascii?Q?95PkBXdYaKPO3QkzY3yDGIlQHA2anr7FKSzlFGPYOR1tgkk8dxLvG3NfE1+9?=
 =?us-ascii?Q?blPrvBgzv7aVZNmTX09hZ3IcP931JfszSU4EvLI9yUGOu+W7HRqkr5ekCG19?=
 =?us-ascii?Q?k5uT+xdQ/evIShjTKhXsNvUQkJrQ7dPfRy8vmtAwU6ewvMk5s1o4kdmbcUfI?=
 =?us-ascii?Q?A0sex55bp239qKZejn73yRESZ08SWf8jC0rKkyJj8t+V7HmMkVdSi46LRhTF?=
 =?us-ascii?Q?FWbS2F978+AlWtq2SD7qAXHzJ5AvXUJuiJJZf6e0DnR62p9si6T7bB3ptNzX?=
 =?us-ascii?Q?xFKu0C51v53ucTNMLfznN/3vuz8cY0j0QGhHaK6hYPky4dUFXAkAww1dFUjq?=
 =?us-ascii?Q?mn/VaIomDVNvWylUsHk=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(921020)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3DNrKuIK3PUekYuqNboQRNIiMytx5Lf9O+CcAyY8NNHtsU3xhP3NNzDI8rW4?=
 =?us-ascii?Q?sVc0ZTFD530WliHTwjwXdg7p1PTuCNt03m3rnBUb+nlD/eh/xEjqmDxqDGNm?=
 =?us-ascii?Q?dmECNGsdw3L56ze5e4xM39tYaHw61eT+bXCSOJODd/VakhW11/xVtMGbrJHY?=
 =?us-ascii?Q?KQ1UaB3rs0eVtrMD+V454IVUdOfitAoK4XuB59ug1/UzNpYeNPZ65Vts+w9w?=
 =?us-ascii?Q?zlr2q31s+EMffXmmTJJYSFXIIahj90x121whf7pLmytN+GUjFj9uWMpgsUsl?=
 =?us-ascii?Q?TAvaciSGeVXnkzDFYM2nJV/G0DH6HHxyioE0Rl0jvwi89IWKvL3vbiwZqDaw?=
 =?us-ascii?Q?dHW+EUIDfSJsZ5wEjlQ6PX3g8zwKyXsZ3YZPx05ST+Hjed3VZVgUjDDIVeAm?=
 =?us-ascii?Q?0q+zFEMtdmtHEWRHyuFDyKD5YrAhfVzGRZBfXgFO6whVsi+qWU2Ib/J3onzF?=
 =?us-ascii?Q?zF+P0cNUWqH8lj+h8bw2BAgW3dhUMD7kvNjsNgFj91ZuReNhQpKHQLUWMCrR?=
 =?us-ascii?Q?72KTWoY36IozsAPPQYHmHTcg6nwQE3v90B6g6ivMiXw+EmB0d0L/jv9U3UTH?=
 =?us-ascii?Q?Ce1J7W1qpUDGnSuqFCJhErqzZopv51qjhQNnWXrn70dbC0/pm4dSZB4G8xTZ?=
 =?us-ascii?Q?OFWmF92fC8B04+bpOmswKPiRW2JPjxYrR9tFdHemEZqcOuKK9rTC0pZ2dTYr?=
 =?us-ascii?Q?VRrggYcOmfPVWp0WF7K8Fz5kovnDFFcT3t7xvseYHV9UMUjWjZT/uOvmeDrF?=
 =?us-ascii?Q?b0lNzXzH7Fjtt1UrZeIunoQEZdhtwHPUcJbhR4V+Gr3C/TYzL7f2mby6k6AS?=
 =?us-ascii?Q?viiuYwdR+Z+0JYPHAEnwH/inGTbSp8o5BSd1WcTEmje5vX8s2JfA5CfouZV6?=
 =?us-ascii?Q?Abvo2svFmwsgqfCLAT5cZKuR0k4eirLjyTj2hpPQMaveT7ntv/IL5hGU3Klt?=
 =?us-ascii?Q?/6+uyVBMUcXCTVTzAwVglAKl7AbMJLiT9BsQfi867SatrpHQH8i3aGl8lBfQ?=
 =?us-ascii?Q?p+ru5nPVBHSRlsznAMjLmcwEWjv+rPdvETWq9u81RJKebcEaL/rNCU+RijZQ?=
 =?us-ascii?Q?Ks1ipJxsr/Nw/AzCMBlUSFKBEQ8PJ8VJhFN2+X+ILuOQ5w9IJeJzC30NN461?=
 =?us-ascii?Q?fSZ+ihXtRTr5q/ZWSx2JSBYfopEtydKf2RTNq3lgt/AtRIcB1cpvWZU2eQwY?=
 =?us-ascii?Q?v7eVt7N9V8uYFWklJHrWET2DSnzHEzvj4a3bRnIhJafMuzBczJ6ymSxqLGcz?=
 =?us-ascii?Q?yBSwHr5Bqa8zxoyPI9WfFP9ICFQDIZ2N37XSHcoloTbXmVbimcyLqnqDtnyc?=
 =?us-ascii?Q?PkbdRraI21rMfTZumnTVUDkG1E2YxXXlIsCAplXLSqPezR1CxLHQ6fkp08Ii?=
 =?us-ascii?Q?1I9g0FORyEDxQBfeZPvDdQced0RvNAf2OfXJ1PpoLIjcQij4NSoT2v8GxVQA?=
 =?us-ascii?Q?OxZPm/S8EPX+mxgrqfd+KPuiAjDgoJAtP75zsPJs+73rreBJOVXzXcAoQqLs?=
 =?us-ascii?Q?dPUyyJY4tmmxew7xqCVCXePv/kUG9mxiIyduo7+FyuqySUamqTV8VwtvWXhW?=
 =?us-ascii?Q?Xr/8zn+vOgNIIWy6E9Jo4YFQc8wmSXXQ0Z1r6GNtIujROi87BuGnjbC2i1TT?=
 =?us-ascii?Q?z0duC0A9zTW7yc30+eaJFZd3tdBPFt6Tx70irgTIQPcbhTETWcwh47AQ2YV/?=
 =?us-ascii?Q?+hoIPnnzwmwhlkuVKYZV4/PTFde+eqo3Vo9OYgLIlxofN2E9D55WmSiNm+xX?=
 =?us-ascii?Q?oALE/54bH1nT+9rrQL6iOngEVplA03o=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 680d1d54-8c18-42f5-4cf3-08de412c141e
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Dec 2025 07:31:10.4476 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 307jmx8PJIXYyQPtEBJBrZ6B9vMr3+jmbEiZ8Ede2aKjo6z1nSbEooaZqge488g6yiV51EX1i7O5m5KZtDemkB+AGQBmnBEfkldKh99vVGQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4608
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766388683; x=1797924683;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QOrxm8f8U4YUiFSrLDXC72PVr5EUYsdaYBD2lSqzxJQ=;
 b=fYshdeVud96Jo6GYOLtvIJ+qvkrcoAo1mfGj/nGQDtAHW54XvnRukVjS
 Fr28KS1/hb99HLajRBPMwJx6P3WVlUKOFhWDcI/nvC5JVV/K8hqcnn5KI
 klBWahICRGB5zM8n8k8pAaRgIHcZA/9pc/xJbxuJBaojqySIlAnSo/2Mg
 IqJ9K3sBNpwJkx/caLgwOKDcnePUUUpz9O4ACp91RBQJJneC0l1B0ddJI
 uUQEUNrEsFV4lnSi7B8Wkm46E56m/aTA6+PPz3ZTp4fTycj8Q+ac7Znek
 4/y+XYapSGIlk1h1Y3QxE2P29qPFh6WnG+nfvnaTFdWyuUTN4cP7muSZz
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fYshdeVu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] igb: Fix trigger of
 incorrect irq in igb_xsk_wakeup
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
> From: Vivek Behera <vivek.behera@siemens.com>
> Sent: Saturday, December 20, 2025 12:50 PM
> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Keller,
> Jacob E <jacob.e.keller@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; sriram.yagnaraman@ericsson.com;
> kurt@linutronix.de
> Cc: intel-wired-lan@lists.osuosl.org; Behera, Vivek
> <vivek.behera@siemens.com>
> Subject: [PATCH iwl-net v3] igb: Fix trigger of incorrect irq in
> igb_xsk_wakeup
>=20
> The current implementation in the igb_xsk_wakeup expects the Rx and Tx
> queues to share the same irq. This would lead to triggering of
> incorrect irq in split irq configuration.
> This patch addresses this issue which could impact environments with 2
> active cpu cores or when the number of queues is reduced to 2 or less
>=20
> cat /proc/interrupts | grep eno2
>  167:          0          0          0          0 IR-PCI-MSIX-
> 0000:08:00.0
>  0-edge      eno2
>  168:          0          0          0          0 IR-PCI-MSIX-
> 0000:08:00.0
>  1-edge      eno2-rx-0
>  169:          0          0          0          0 IR-PCI-MSIX-
> 0000:08:00.0
>  2-edge      eno2-rx-1
>  170:          0          0          0          0 IR-PCI-MSIX-
> 0000:08:00.0
>  3-edge      eno2-tx-0
>  171:          0          0          0          0 IR-PCI-MSIX-
> 0000:08:00.0
>  4-edge      eno2-tx-1
>=20
> Furthermore it uses the flags input argument to trigger either rx, tx
> or both rx and tx irqs as specified in the ndo_xsk_wakeup api
> documentation
>=20
> Fixes: 80f6ccf9f116 ("igb: Introduce XSK data structures and helpers")
> Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
>=20
> ---
> v1: https://lore.kernel.org/intel-wired-lan/20251212131454.124116-1-
> vivek.behera@siemens.com/
> v2: https://lore.kernel.org/intel-wired-lan/20251215115416.410619-1-
> vivek.behera@siemens.com/
>=20
> changelog:
> v1
> - Inital description of the Bug and fixes made in the patch
>=20
> v1 -> v2
> - Handling of RX and TX Wakeup in igc_xsk_wakeup for a split IRQ
> configuration
> - Review by Aleksander: Modified sequence to complete all error checks
> for rx and tx
>   before updating napi states and triggering irqs
> - Corrected trigger of TX and RX interrupts over E1000_ICS (non msix
> use case)
> - Added define for Tx interrupt trigger bit mask for E1000_ICS
>=20
> v2 -> v3
> - Included applicable feedback and suggestions from igc patch
> - Fixed logic in updating eics value when  both TX and RX need wakeup
> ---
>  .../net/ethernet/intel/igb/e1000_defines.h    |  1 +
>  drivers/net/ethernet/intel/igb/igb_xsk.c      | 88 +++++++++++++++++-
> -
>  2 files changed, 81 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/igb/e1000_defines.h
> b/drivers/net/ethernet/intel/igb/e1000_defines.h
> index fa028928482f..9357564a2d58 100644
> --- a/drivers/net/ethernet/intel/igb/e1000_defines.h
> +++ b/drivers/net/ethernet/intel/igb/e1000_defines.h
> @@ -443,6 +443,7 @@
>  #define E1000_ICS_LSC       E1000_ICR_LSC       /* Link Status Change
> */
>  #define E1000_ICS_RXDMT0    E1000_ICR_RXDMT0    /* rx desc min.
> threshold */
>  #define E1000_ICS_DRSTA     E1000_ICR_DRSTA     /* Device Reset
> Aserted */
> +#define E1000_ICS_TXDW      E1000_ICR_TXDW	/* Transmit desc
> written back */
>=20
>  /* Extended Interrupt Cause Set */
>  /* E1000_EITR_CNT_IGNR is only for 82576 and newer */ diff --git
> a/drivers/net/ethernet/intel/igb/igb_xsk.c
> b/drivers/net/ethernet/intel/igb/igb_xsk.c
> index 30ce5fbb5b77..3dbc2573b47a 100644
> --- a/drivers/net/ethernet/intel/igb/igb_xsk.c
> +++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
> @@ -529,6 +529,7 @@ int igb_xsk_wakeup(struct net_device *dev, u32
> qid, u32 flags)
>  	struct igb_adapter *adapter =3D netdev_priv(dev);
>  	struct e1000_hw *hw =3D &adapter->hw;
>  	struct igb_ring *ring;
> +	struct igb_q_vector *q_vector;
>  	u32 eics =3D 0;
>=20
>  	if (test_bit(__IGB_DOWN, &adapter->state)) @@ -536,14 +537,80
> @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
>=20
>  	if (!igb_xdp_is_enabled(adapter))
>  		return -EINVAL;
> -
> -	if (qid >=3D adapter->num_tx_queues)
> +	/* Check if queue_id is valid. Tx and Rx queue numbers are
> always same */
> +	if (qid >=3D adapter->num_rx_queues)
>  		return -EINVAL;
>=20
> -	ring =3D adapter->tx_ring[qid];
> -
> -	if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> -		return -ENETDOWN;
> +	if ((flags & XDP_WAKEUP_RX) && (flags & XDP_WAKEUP_TX)) {
> +		/* If both TX and RX need to be woken up check if queue
> pairs are active */
> +		if (adapter->flags & IGB_FLAG_QUEUE_PAIRS) {
> +			/* Extract ring params from Rx */
> +			ring =3D adapter->rx_ring[qid];
> +		} else {
> +			/* Two irqs for Rx AND Tx need to be triggered */
> +			struct napi_struct *rx_napi;
> +			struct napi_struct *tx_napi;
> +			bool trigger_irq_tx =3D false;
> +			bool trigger_irq_rx =3D false;
> +			u32 eics_tx =3D 0;
> +			u32 eics_rx =3D 0;
> +			/* IRQ trigger preparation for Rx */
> +			ring =3D adapter->rx_ring[qid];
> +			if (!ring->xsk_pool)
> +				return -ENXIO;
When IGB_FLAG_QUEUE_PAIRS is set, the code sets ring =3D adapter->rx_ring[q=
id] and then falls through to the common path (if (!READ_ONCE(ring->xsk_poo=
l))).
However, the common path only handles a single NAPI and single IRQ trigger.
In queue-pair mode, RX and TX share the same q_vector/IRQ, so triggering on=
ly one direction might not fully satisfy the XDP_WAKEUP_RX | XDP_WAKEUP_TX =
contract.
The logic appears incomplete for the queue-pair case when both flags are se=
t.

> +			q_vector =3D ring->q_vector;
> +			rx_napi  =3D &q_vector->napi;
> +			/* Extend the BIT mask for eics */
> +			eics_rx =3D ring->q_vector->eims_value;
> +
> +			/* IRQ trigger preparation for Tx */
> +			ring =3D adapter->tx_ring[qid];
> +			if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring-
> >flags))
> +				return -ENETDOWN;
> +
> +			if (!ring->xsk_pool)
Shouldn't it be: !READ_ONCE(ring->xsk_pool))  ?

> +				return -ENXIO;
> +			q_vector =3D ring->q_vector;

...

> --
> 2.34.1

