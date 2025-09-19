Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB43B885E7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Sep 2025 10:16:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0D7B8816F1;
	Fri, 19 Sep 2025 08:16:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o4HsI4Ehfn1q; Fri, 19 Sep 2025 08:16:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 42908816D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758269773;
	bh=pL5M+2Lw4BuqNyMcyhQEuh7ZsxNbA7WEWN5iWI9RPrc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=De+7i1qjvn3zMCMWGmnfT0oVeoNuTUn0Dk7mx0BqoJvhQFYzPrpFY2eMCrx9es7OK
	 3y2zSEeZqoJ84ym3cLPvF2948NdmQWYVlYU9RfVK01tHuIfGYw6DZbI4sVsvXey6o6
	 brLyzMAQiA9nn2x/ZZ6gVat8P30qc0NQFBDEwyCWN6o8Wz6oet6uhDcyUd74HqXo/H
	 gfOQS7TXNGtwT+Z3N8+2zwOMdda23iKEP0L9046pqfAdnEJcmwnrUaK4KrRrngwipC
	 dPDe0RqOu82eVd5DKHuKJ0dq/GAAbEeHoO4qNauV8LLA0uuHrvMBdpLa9thTWVjqD9
	 w13/1KAIO22gg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 42908816D7;
	Fri, 19 Sep 2025 08:16:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id B448F273
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Sep 2025 08:16:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9B30F4009F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Sep 2025 08:16:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Mn7UesZx6eNL for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Sep 2025 08:16:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E93804072E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E93804072E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E93804072E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Sep 2025 08:16:10 +0000 (UTC)
X-CSE-ConnectionGUID: gBiRaJGzT+mQhuYg6Fra2g==
X-CSE-MsgGUID: wj6gUUX3Rrexj8iJn6r5ww==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="60676794"
X-IronPort-AV: E=Sophos;i="6.18,277,1751266800"; d="scan'208";a="60676794"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 01:16:10 -0700
X-CSE-ConnectionGUID: UZKxHAP0ST2VQ73RUTLtWQ==
X-CSE-MsgGUID: 9/mJfzLXRf+QOQZZTeyjmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,277,1751266800"; d="scan'208";a="176218194"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 01:16:10 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 19 Sep 2025 01:16:08 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 19 Sep 2025 01:16:08 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.18) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 19 Sep 2025 01:16:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HUEDvn4xdbPq8BzAGH4B0ollEXOEyjpytlW8lSsTuQwpDPt+C841/B33VNHfU6xBRYXifnroPZPPyZAJ/3acV8JLsvbCgYqXuOGYvC+/oYwtwcXmCoKno11HvriAnG9kuqqA7AaUyZHO3kamYUfj6qJrR2iNMuO1ElrZL5lw6cRUxIzG4VqsyBgdJUeYD3lGph/TmFQkhSc+CqadZe/sekCNZzrzw3TfOXUxBJit91G10Cg/T4MJEWnD3U9/2Z3VIcfH7zc1RCfNiDHxNMX4GzTa1OeBRH0xk00Lx1arX+IJylz8rpLSP5nPKsP/vrMMgvEFqtWi5mWeG3cmtinR+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pL5M+2Lw4BuqNyMcyhQEuh7ZsxNbA7WEWN5iWI9RPrc=;
 b=qNHDWGSf7v2B2AjayQVO6+/GnWf57NOrOXYqC8hAwULzXf7MuECMTdaRqoencFiD1ChTedISBLBiSDlruwcDNMyjUzZg1ro0G0vgX2spXfRVquIR2Bk+hEmgnXxvijdiFI0JSSLAE4T9ZgsJutWkjY8SkQDUXK2VUbzYQOYR806Iv3wRukeIfS1aVAdwK8qdngpyYWvFOA4rF9lOacSVjClZ+QaOiMIknKfZ5it1mmvcjTdnULRlZl8sO9+9pDJk9MZq9tbUvin50pzEhQdxGHvh3IRQj1riraCtDm1twp/PZ/gCq81I0ftmtFvC1sNsabmArYoc5LQ/I5MmLHvvLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by SA0PR11MB4638.namprd11.prod.outlook.com (2603:10b6:806:73::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.14; Fri, 19 Sep
 2025 08:16:05 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6%3]) with mapi id 15.20.9115.022; Fri, 19 Sep 2025
 08:16:05 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1 3/4] ixgbevf: fix mailbox
 API compatibility by negotiating supported features
Thread-Index: AQHcGATfbvXX01nBfEme1xvOEHRjTLSaSy2Q
Date: Fri, 19 Sep 2025 08:16:05 +0000
Message-ID: <IA3PR11MB898599F0588E1D1E9CAE7DBB8F11A@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20250828095227.1857066-1-jedrzej.jagielski@intel.com>
 <20250828095227.1857066-4-jedrzej.jagielski@intel.com>
In-Reply-To: <20250828095227.1857066-4-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|SA0PR11MB4638:EE_
x-ms-office365-filtering-correlation-id: 783e82aa-e13a-46c0-0fc5-08ddf754c77e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?WRLvkxEDHAKC8BP92roVLFMVEF0s/fyxQwEyl1d9hf1MkHCKPuzRFOwZIHbl?=
 =?us-ascii?Q?8aKifuUStLW0L+AtzIcMLa+d68dOwjirGc8HUe4iSv1CzKG93u5KGbZejpED?=
 =?us-ascii?Q?rgf+XAaoGBh7gftlZ161pBeu2MBmedpqu8W0ODeNHf0YrRkj1ex9NPIz2/Oc?=
 =?us-ascii?Q?JgLXCk2ruemZc6vZGmkKZUcIMuhZDM/J3+ELrap3rByZwxx8RLdaNBDjlg1m?=
 =?us-ascii?Q?vGIc0nddEyBOo7Nchrz9wBwXVQRny4no00Fa4GWDY6fgPCrkkN1/+kg9QYpG?=
 =?us-ascii?Q?HIDBzff1y7n0QzNZG2TNM+AuEAmLSajAAnQMTF44P15rlWWRrqgbtO2Aj/NQ?=
 =?us-ascii?Q?XyIGSA9s4cHjlcjh7gckUCqQ0l4dQrF2UuFM8QnVglQrDLQIj5AuHcm1v/ej?=
 =?us-ascii?Q?ki/Jdp1TEcHOVXSf6e7g+0D+VEecwiDFR3EdHjK93Sti/o62SwflGrkW19fq?=
 =?us-ascii?Q?Z16rThSYavRkohlyS1hXY1JAaqCPYgUl4pL1v6N3sd4y1UQS5mCb1GNBlRGC?=
 =?us-ascii?Q?z1UJVmpybSBOWCCtMXjh4I4Jj1Fftet1SbCFP0JBHY56SkyCdtL6B+HakOqh?=
 =?us-ascii?Q?fmYmFRTwY65PScijJjecSZm3HB4RxaWUnKlVgb+9N2BYYoDKtrx5ideOsS2s?=
 =?us-ascii?Q?vOQ8X65TqJFCoF1Bv70aslvan5n8od56paP6VZmByy3HGKWbuJqyOVZNRJmi?=
 =?us-ascii?Q?/G4UYt6hwuXs51lxjZqNSKC08yVrBpK5ekosJ28XrCoG1wbi5Uffc6oVu2Go?=
 =?us-ascii?Q?eMThECxety1nwfJBll+1NN5VpCWbCIUaQKGYi9b2ZqSVNQTlRAcqdweMRAAf?=
 =?us-ascii?Q?LhsMmG7HAZ3S/MI3uwRI0JbD26n/e4blzW/v0RqsQi6rZFYZsU4AKtOi6v65?=
 =?us-ascii?Q?3QANQHmpyeUA7jHBPhPfrZbLSfrjJr1jn8BLYuVE5khCkfHOLeTEVZcAB9Eb?=
 =?us-ascii?Q?PkdfKmvDyHq+5W+tR/q0AN0xmtywBkixipiSk4DVZ1WjiBtVsPiM++eIFfsh?=
 =?us-ascii?Q?XBlQdK31vtDb519tSl1U9AgjmuE75QKlTzupbgDiTYfpQ1d1r8/vaA6eLWLC?=
 =?us-ascii?Q?VQsVIutcit3Xrfv0wvYJYr2j6GDCT0tKrN88FnlNjBOXF7n3rJYOP+8A2gwd?=
 =?us-ascii?Q?V0ZIRkmLRCcoqj7PiYjXw5hP67ZVCKx3ALPQvnLkuxM2a4pxmUlE63E/XeKD?=
 =?us-ascii?Q?CNHQ2iFu2orKBDt24KczTYYNC03cOdL0cp36xw4BvEHJQtZOWxS6FWIcpSnq?=
 =?us-ascii?Q?BqFwUesbhxg0uR0u/2IexQRrjyLQQZNWjPTuxCwjkAEZtgKM5xTCIkUfaTBx?=
 =?us-ascii?Q?Ko1NsUcLRg782JjPjrsVp+kY65UezjMHs278YejPoT6M59OzAeXP4rNQwSR8?=
 =?us-ascii?Q?Km/GW5zoK6L5R1n48Qxlf/VbTeQAo1IuoWPL+nUpWrFglzdTAjWq1HWy3OBH?=
 =?us-ascii?Q?Zn7yfT9rMw+tapkkg1jPPBO3aOiZiWamflbe6UvJ5on1Ca9MS8xD0kfU0OFg?=
 =?us-ascii?Q?FybARJY9CmKWIgY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dOivq224MUin9o8ReCtqVkcRxOSXEqlTaSiOF/5Z7swaE3A5o3uOfGzQ4vut?=
 =?us-ascii?Q?RUOSld1sc86n2EvJVDkhYwspKjAXlxvwFdrR+FPeNOgVV+khBSlpowivSP+B?=
 =?us-ascii?Q?lUQNOaS4DP0//wFVH594kxi89c91dA65xDd/cyjZlxvvG3gweLsdd5UgnGrp?=
 =?us-ascii?Q?mVC9PoalUGXtBom5BleiNl8BO2bQDjk6GKfiE58rn2AyVxguh2GdJzFHYbu+?=
 =?us-ascii?Q?9UayhXxzukgxe0znQBAsC5nv7GSeHAccKtRLmNnTgdvko2FLXRd6b8KBw3Wu?=
 =?us-ascii?Q?kKNftyA0dxhufCmmcIun4zbVjSyqW8GkIboiin17whFChQfmxU6dakzM/Kxt?=
 =?us-ascii?Q?2DCs1A+fQag4FV6rtp52GF06wN/+EOCro7qqRB3l0E9SyrHfrzBmt6ahLM4j?=
 =?us-ascii?Q?Cx1kkSAG1tGSJ/j/4xd3Gi3iNJHfMJ7gPDx0seG7StQQNunrQbBkWhiKIax8?=
 =?us-ascii?Q?PotWylUOC/xwtmm3zo3p2zCfdOV+4ZWzdfIPZoUWnExDN6xkVTdK3x/UUiym?=
 =?us-ascii?Q?n6691zgAqFNh1Oatf0mSjHriflJHDJ19RxbQjuXrnsFhiVbDP/g9lGQJcYZ4?=
 =?us-ascii?Q?gzGLL1/SF2lE69HFae0k2l9vGq9epN4SBqrQFelTl8MMpizbbwoB8bKoYQku?=
 =?us-ascii?Q?R8kQ+SVsSb8EP4UQx2Y8/XYP+FoOlby+IEmt1oeqzg3+9ENC840yclu2kQqo?=
 =?us-ascii?Q?pg5Dvpvw5L1IrddCGZ+LYpGLprsIQCF65ITHUgzQlpGG7wotPJGeEZD3NxLW?=
 =?us-ascii?Q?+WC1Hjpq/DFpF6snbSL9cl4sXWGkrRFJWw+uSSjEdL197VuALn9J66v4ro8j?=
 =?us-ascii?Q?rT+22oBelp/jR6OXMCYWBq7nNL5XKtnQPyx76UCGHxj9SEs6IRJ6HqQXJV6E?=
 =?us-ascii?Q?o3cuqgSTzHKIWge9JdjlKnF3wtunbi/kL+wTRIuFIblBPdXeUA0ITMS+8qxe?=
 =?us-ascii?Q?cy2SoDGR7mnaZ1/8Spzl7VG521851VQYuNzp3/xMybQm6Tt9n0SHjDxsX9B9?=
 =?us-ascii?Q?LTgia0WeKRikVwJuwrljqOKK+HOG811Z92kGM7TtHbli2V4p36BinOx7ZtIq?=
 =?us-ascii?Q?f014Q3EO4zFGKrWncSzuW+q5HdtADCzsHmAr2KV/H6hSsWpRq7azDlvrBHiu?=
 =?us-ascii?Q?WoWkUyoM5ZiT8mRmp+nrxl6ua3HyzAzfh34zSi+ZU0wgAf7GoszEr3Y7K1M+?=
 =?us-ascii?Q?5JwQa6qLDQ/csXZU01WrfKUPf4f4u0BtGkZQwmSjgwdzbeuouw/FaELL/2ho?=
 =?us-ascii?Q?j+SHSKFtmo/ChmIieaBWmAFvUgeXuOWWCDfeFNzrfZ6qclEGVQ5C5zwLP8ig?=
 =?us-ascii?Q?gVAb/nt/Jes1zezM58CtZ+A6mMI51pD46G8wKBKe0NMXVgvRyAwS9tZfawf/?=
 =?us-ascii?Q?aV03tPcqRZaxi87PFHjFnd1Cy2aR6oQNAXfKL2gX0KYuAWPDZoyty1MAJmnS?=
 =?us-ascii?Q?Tj0Eve4Irsv6kATlzn5pfj/F/kmzK+TwbReWz4sUI7BX3rjjCEG7q++YjBVr?=
 =?us-ascii?Q?KeKSRSOE5zEGr+YlemYbtnQ8CC+8OdIdZwbyngiwfQ55+k2soIdIc5u0gT2O?=
 =?us-ascii?Q?bSWdMsst0zhDPPISYLtUBd2vwP7T2dA+R2LS0mGIKMHwnZNDDGybQYyWhafj?=
 =?us-ascii?Q?MA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 783e82aa-e13a-46c0-0fc5-08ddf754c77e
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2025 08:16:05.2590 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QjDW1iCB3b+0IxekWHGlw/BPUkiAqAUh/z73VoHxzcx5SXUhqpQxv6TU14sbn/DAG8RXrVfBWKXsR5ngC/ngIUfVkHq5YjsVUgS2hL6Egu0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4638
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758269771; x=1789805771;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sBcvDrChG4zh1n5WgkXEA2/dGH2UshqHkBsPu864wxA=;
 b=YtCGr0DxlxupQ+M0P2LkUwAzZRmTaJmkQHeTf4uCaLc7WLegZ5hTyHFz
 Bu63eQnJQYYTv1JaiGuzTtsZj4QBhtGa7F4Ni+Z17HdlL/nxpkaMiIQtO
 bkiOIrBOZun/iDtOEm/jdWKm9GaUb2prF7w24L/94K38HlcdfGmzq9MZd
 XIki1VXA90P7LflnunC4/j81hbFt2+U70RKSPLrlxWe9sqDz29YbC3GQ3
 qd4ei4uxG++rJ1CG0AqGnLWPvCrCBFPpczoVYG0nQAksNF2Vxq1PWVlq1
 8xb6X/yhW/XJXTNZLaqUSO5NCfJAbQ0rOgEy81Bfte2Olw9BqSzQwD8vx
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YtCGr0Dx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 3/4] ixgbevf: fix mailbox
 API compatibility by negotiating supported features
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jedrzej Jagielski
> Sent: Thursday, August 28, 2025 11:52 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> netdev@vger.kernel.org; stable@vger.kernel.org; Jagielski, Jedrzej
> <jedrzej.jagielski@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>=
;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1 3/4] ixgbevf: fix mailbox AP=
I
> compatibility by negotiating supported features
>=20
> There was backward compatibility in the terms of mailbox API. Various dri=
vers
> from various OSes supporting 10G adapters from Intel portfolio could easi=
ly
> negotiate mailbox API.
>=20
> This convention has been broken since introducing API 1.4.
> Commit 0062e7cc955e ("ixgbevf: add VF IPsec offload code") added support
> for IPSec which is specific only for the kernel ixgbe driver. None of the=
 rest of
> the Intel 10G PF/VF drivers supports it. And actually lack of support was=
 not
> included in the IPSec implementation - there were no such code paths. No
> possibility to negotiate support for the feature was introduced along wit=
h
> introduction of the feature itself.
>=20
> Commit 339f28964147 ("ixgbevf: Add support for new mailbox
> communication between PF and VF") increasing API version to 1.5 did the
> same - it introduced code supported specifically by the PF ESX driver. It=
 altered
> API version for the VF driver in the same time not touching the version d=
efined
> for the PF ixgbe driver. It led to additional discrepancies, as the code =
provided
> within API 1.6 cannot be supported for Linux ixgbe driver as it causes cr=
ashes.
>=20
> The issue was noticed some time ago and mitigated by Jake within the comm=
it
> d0725312adf5 ("ixgbevf: stop attempting IPSEC offload on Mailbox API 1.5"=
).
> As a result we have regression for IPsec support and after increasing API=
 to
> version 1.6 ixgbevf driver stopped to support ESX MBX.
>=20
> To fix this mess add new mailbox op asking PF driver about supported
> features. Basing on a response determine whether to set support for IPSec=
 and
> ESX-specific enhanced mailbox.
>=20
> New mailbox op, for compatibility purposes, must be added within new API
> revision, as API version of OOT PF & VF drivers is already increased to
> 1.6 and doesn't incorporate features negotiate op.
>=20
> Features negotiation mechanism gives possibility to be extended with new
> features when needed in the future.
>=20
> Reported-by: Jacob Keller <jacob.e.keller@intel.com>
> Fixes: 0062e7cc955e ("ixgbevf: add VF IPsec offload code")
> Fixes: 339f28964147 ("ixgbevf: Add support for new mailbox communication
> between PF and VF")
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Cc: stable@vger.kernel.org
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbevf/ipsec.c    | 10 +++++
>  drivers/net/ethernet/intel/ixgbevf/ixgbevf.h  |  7 +++
> .../net/ethernet/intel/ixgbevf/ixgbevf_main.c | 32 ++++++++++++-
>  drivers/net/ethernet/intel/ixgbevf/mbx.h      |  4 ++
>  drivers/net/ethernet/intel/ixgbevf/vf.c       | 45 ++++++++++++++++++-
>  drivers/net/ethernet/intel/ixgbevf/vf.h       |  1 +
>  6 files changed, 96 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ixgbevf/ipsec.c
> b/drivers/net/ethernet/intel/ixgbevf/ipsec.c
> index 65580b9cb06f..fce35924ff8b 100644
> --- a/drivers/net/ethernet/intel/ixgbevf/ipsec.c
> +++ b/drivers/net/ethernet/intel/ixgbevf/ipsec.c
> @@ -273,6 +273,9 @@ static int ixgbevf_ipsec_add_sa(struct net_device

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


