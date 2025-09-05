Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E3898B45BAF
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Sep 2025 17:08:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D7D2060B1F;
	Fri,  5 Sep 2025 15:08:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CjJvImSDN9R2; Fri,  5 Sep 2025 15:08:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E1ECB60B3C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757084887;
	bh=LJI2Zg7xlTTE68qKBb+twM7suL8wqvWg84HJRyrtwc4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ig2AVMB7PyBPfvjD16Nw2Li2quQ4jCKS62sVqsONW9Wn5bWj4z1usSLNH+grN/xrQ
	 WHOcMdU2CHRJiqpJTkEvn6GBbV3H1AUwifY04J8Mbhnf0EO8m/0/l+KjmWt8zAQ8Ly
	 kHNiFz9iPt12iCk8uiNu7ESWQ2Md6WUR8pHSCzmiRfniCAtY1LTR9EyK9ABxB7EUmE
	 STFTS9Hms6e6lTkr/H5l5BpKwwJ6tx1OHdGgji+DGQMwthTeVEyG2/HQXcd6yjDQ0Z
	 RI7cInNRZAzhQS2W4je+WmLKQkTwONRnpYkeHJ5YEBBBBkMKCwK326GskiDVNURDbC
	 81mAlGQe8uL5Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E1ECB60B3C;
	Fri,  5 Sep 2025 15:08:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id A1BBC28B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 15:08:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9EFCB822B1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 15:08:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wWbmRS2VP3GC for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Sep 2025 15:08:05 +0000 (UTC)
X-Greylist: delayed 425 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 05 Sep 2025 15:08:04 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DBFA782244
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DBFA782244
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DBFA782244
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 15:08:04 +0000 (UTC)
X-CSE-ConnectionGUID: GTBUkOLFS96ZpOxkcpE2NQ==
X-CSE-MsgGUID: T3NYOZR9TkSUHdvyNWReHQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11544"; a="63077556"
X-IronPort-AV: E=Sophos;i="6.18,241,1751266800"; d="scan'208";a="63077556"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 08:00:59 -0700
X-CSE-ConnectionGUID: fjnVNtbmTVyjvI0wySqJBw==
X-CSE-MsgGUID: M8fMf8cOSMqPVnGthBNbbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,241,1751266800"; d="scan'208";a="202995924"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 08:00:59 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 5 Sep 2025 08:00:58 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 5 Sep 2025 08:00:58 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.62) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 5 Sep 2025 08:00:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CnvOrTlv8kzFjdz68N2kcOgQC5c8EOgQc31oJ+z3sUfXBBOBDe3TW2OnteWjP3tryJ+2OrYXrl/279X2T+W3Rb0WCHaV8As7JsMEuJ7tIuokkv0u6zbLxEgLrUyyX1Cx2xLSrseo2HLdiNE1s87sRI0hsaxn8dOIi6Drwi+A1qO6kaQbkjZ7fWijW8miInF2AsiX2w2licNwQOf394PqgFvFJTz/IS9ZvMyjXlQQwUjYu7FTfad1e5jL7mHcIgVB/KQORYYcc7BCrMTN/ekTtXtAB4nygbzaIlfG9WNvUlRzAG548zCIdAFso+VKGJDjF9rabJ3G3v+ODpoKyFT3ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LJI2Zg7xlTTE68qKBb+twM7suL8wqvWg84HJRyrtwc4=;
 b=BSjusWt+WSm9mNb3PkBtUHqAUXgpb5f6Xel8cNcLfvBhpmjaYoQ/LGUGCHQSY898qaW2T3JU9JdUnHWysOjugA6Rh5JcL0NXYe7raF15SYge5q3TIXFOeNkJivqbrM13WOigypceGZzooAbDr+/W4x0Yx/hmMPH7TMdmUj7QnjpTa9oMSc/NeXNi4yMZjvvSvemaOUx0AKkkzU5LUKmKVbxFgriTu4lZahE02ot/QlL/nf82djUmUgTW3HTsSMEh6z+PAQNcaBolg7rD7CSeC5PpQhfNEOFJzoKUcOkXTnqYXuUG+wFhQPV7fc0RCXLpc6yQRRDbOb/0ZV/OsE2vxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 by DM3PR11MB8672.namprd11.prod.outlook.com (2603:10b6:0:44::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.31; Fri, 5 Sep
 2025 15:00:49 +0000
Received: from IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31]) by IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31%3]) with mapi id 15.20.9094.018; Fri, 5 Sep 2025
 15:00:48 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>, "pmenzel@molgen.mpg.de"
 <pmenzel@molgen.mpg.de>, "Korba, Przemyslaw" <przemyslaw.korba@intel.com>,
 "Olech, Milena" <milena.olech@intel.com>
Thread-Topic: [PATCH v9 iwl-next] ice: add recovery clock and clock 1588
 control for E825c
Thread-Index: AQHcC8bBzY2NxtyEhUisdaCjbiHDLrSE0qUA
Date: Fri, 5 Sep 2025 15:00:48 +0000
Message-ID: <IA1PR11MB62196E5F77908DC155D3040E9203A@IA1PR11MB6219.namprd11.prod.outlook.com>
References: <20250812202025.3610612-1-grzegorz.nitka@intel.com>
In-Reply-To: <20250812202025.3610612-1-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6219:EE_|DM3PR11MB8672:EE_
x-ms-office365-filtering-correlation-id: abe32377-c0e6-455b-7195-08ddec8cff99
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?ZGhYtdUSENUMITqDPtYF3pyW+t+GgwUATiQ3Uu8nOqarrjomP8JUpDVdLcA8?=
 =?us-ascii?Q?s+fekicUzziyyvupUztHrC8APcahh+VnZ4oKSWjo/gup43NMU04XaeLiOJRF?=
 =?us-ascii?Q?jaP8jq5H2s4x29LSiUQN+1+JYPVIDfrHOy1xJpeV4E8Vy1VYYuYEs683t0Y6?=
 =?us-ascii?Q?HoQ3y+H6aa6b/lMCyH/T6dL118NReZubM8ys7ucq9MMX9yh18S6zYwI12Mnc?=
 =?us-ascii?Q?KYIF4/yvWjcALTHZlrw3+9l2XUhis9oh7igz9tAPO3L1DtnmACS0aXe9p1oQ?=
 =?us-ascii?Q?k/szO8fIbxTpwgbFIRMrlBWjObM40YQS6scdNIkXNHIzDdvUqjZYOWhKvUC0?=
 =?us-ascii?Q?m9uOb1ckRn4O4aslzhRVgr49vQp4d9vMyoSfEA7GUSaQ3AmEpi39vhCei3MT?=
 =?us-ascii?Q?BGA3dDs257iJ1nV1MYQv+vnNGN3Eq+JRCveHYcsURQci6uFMg+33BJKMiddk?=
 =?us-ascii?Q?zXBhL3htfM7f8w3R3ZJoeLKk2mQRmHox1Latg7iLtjSrF+71yG6q+Zh9eOOF?=
 =?us-ascii?Q?Zm8ix/dP4WwwzMZA7TfTqm4mdMNoY0if22rx+Dapyx/ieJNUOOlTe/HzfRBj?=
 =?us-ascii?Q?ILzZVuDnQJQeM03Z8j5ylklji8ccBeO7wI+mzySivPmdWS69E+RtEtFWRWb9?=
 =?us-ascii?Q?L2fwRUflNS6nVQUenSpXEEKqjIilrY6C6Es9TEZiuhQoRE2dO39pnpjlbc/m?=
 =?us-ascii?Q?8DSoq1P5boYr+bUmwHShMteG/vPNxzX1oDgcS/KdzhTFYrCb0e8MQGguSwRn?=
 =?us-ascii?Q?ZiEpiuiJQhiS5Ad4bnO0oDHxBymWcLeEV+DHbAc3JrdNeZsxxlswyBVOC+hz?=
 =?us-ascii?Q?WdO6ZaMHEHjp/eHZnNAn3OLQspKBVqsip6Rp0pQ6X0dCsvxdNhEZ31nq9kWb?=
 =?us-ascii?Q?aA+ji9fx83BsHHQwB3UvFqHGCmZVs/sVzSffCiy/PvCj0swrD977xTANCylW?=
 =?us-ascii?Q?7GQbLkAHRxg0gDQpP8jLQMXzZ0AoVmzBSaXs2S76xO2Jgd1n5FmykbOfezvV?=
 =?us-ascii?Q?1FwSrLqSOpWELLdDRlCznSbalWpq9/d5WsrZNcbORS1vZ170asfSK6cc4i5s?=
 =?us-ascii?Q?BLW1pgTBxtjpVVp07XQBI8V+yX6Y3GjNil+QsI/Shi1mWN0bjghsA9ZOOHWF?=
 =?us-ascii?Q?B7r/DGogKi8LBj0qDY1+tFuAE8HjKqhnt9wClUekpiOmSU7ViJkFxJvsDtjE?=
 =?us-ascii?Q?UhApbAByUHzqUe/6QobQjUG+8bRQK6YP8oOATNhHnDwCCN80yY+1IDn9M4jY?=
 =?us-ascii?Q?AzdgPj71Ld4TL8yR7Qo09MJmRoErAV/vR8zApEqcdA5GYUJzWcELEnOWkodR?=
 =?us-ascii?Q?4m915d0HKqR2jfQsbzKUs7NvsDOXhUzvdOQsHlO7EMuici6H/+14ycER9Fmt?=
 =?us-ascii?Q?POJtMKGHoIgwwcgPJaJ/fIYSYPp50nlV7kryAKMumJaU8XqrTuzSsMmdrfpN?=
 =?us-ascii?Q?4/F0UNPtAHfcOZnU5FGe0yZ7TmtVYeoqezQrtXFX7uCT0D1ZcoqEjg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6219.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1kG5eQQaKDk15Inagy2VPIx3Q1owrcW3s1qISqZZ/UagpJO1Fggjt3yhBH+e?=
 =?us-ascii?Q?3JrhXkawcjR+jiy0pFZdS5tco8F5o3tMWplkU8mtqL3oX93hTeMbWMaC3nzv?=
 =?us-ascii?Q?QXmqtG2ucNHfLVX5SGUVUERZ+JbSYmpBhVQ0x9Gn+C6SXWDrDDhR5h7HSeYK?=
 =?us-ascii?Q?5t1Ylw3O6+dsPCnINZSqPOjp6RIpjPHPWuomszEcpMkERKePPbjNXQAPRv0s?=
 =?us-ascii?Q?nU+hCcK1QELYVzfB94bo7Xdk3vIjuTMFYlbZqisIc8EsAUMk5Pf40aVJ+/rS?=
 =?us-ascii?Q?kDNhCtErIRu4+BspsrbpPWSYUp0jnxy+TKJy+/+2Q5zik7X/2UF1wrPSlDgs?=
 =?us-ascii?Q?3A3TTkSx3eKqeyHfvlXTEf7QNxi7vLLpBh//vvyDz+6VNCOKdJXBZt99rkja?=
 =?us-ascii?Q?+qRJDN/C4H0C7Fc9mf7QJ9shFBZxXcauZW0LhoM18mtxPn2pu5fIFOgd8DBR?=
 =?us-ascii?Q?SsPb4/N+gWf8Fi1OSakYitU+wTe1wfUv1+t4AiKkNIk9SQfYjO/vXaV3mqP9?=
 =?us-ascii?Q?mtXpBoq0nryX04ESZXLEQMxf14Re1q36r9NeZM0lN3ON2/m5yYPjId8fM56F?=
 =?us-ascii?Q?5ANvM99c04YvZi7+fiFpgDgxAeOewD0mx35RSa4luiwFDzh9TmXWuLY9JoO3?=
 =?us-ascii?Q?vajMBVRUypY0XXrr1Ll35XldC18enF3uWG1H3ZiUuqmSgEetkB1jLM3TcpiS?=
 =?us-ascii?Q?x6WK0Rqcm+CtcEwJJ87JeFxNJ8X7o348O+Yt22Uqwyy8ioaIWUPqgUpFuBAc?=
 =?us-ascii?Q?GAW199kkXnE/Lh25pBy1N7T9/97cudZXa/L4kCkg6hEvoo0m/o26S5/VJOvO?=
 =?us-ascii?Q?eeLCXWrYCTrBmjf7h7VOnjYynaO7F1ku5XWUW4ekp0V1PXcxusqM/pSRfT8M?=
 =?us-ascii?Q?bdqYQ0FxAV6lL43j8II7LrO2U1QF1HHgvErsQBuaJlz33xIZYC0LNdu0Oz6X?=
 =?us-ascii?Q?hgsAGUZQzjlgkyTp0h+lfw5qecnPD+BzgXHda4J7dzOXLZp4Y++o/m+gLB1d?=
 =?us-ascii?Q?q05UmYz3cHsaThayBjTOIUskUyuKW3eLSpPuwSXV6VWbgiBPXZCEcKh16+tG?=
 =?us-ascii?Q?oHTFNo71obsDGPflydk/x/J+JDB0HbfHEL6GP9C0KsaeDtRYZK4Up7Bp+olU?=
 =?us-ascii?Q?5sn4Ogwb6r5axYiKxiy5lx/0cLiyHVBmAk7GUWhXFhLHxpjqA08KHbzK+4in?=
 =?us-ascii?Q?Xp8ZUa1mRp1daQd4YmnD1odAS3XNuQrqmJ+uLsErGCsefQL5GJ3rwnr1ve+J?=
 =?us-ascii?Q?VHw5gr8ctx5Dw47UrG+qpk0NbqOU5F00DQ/6Z2aFtiyLzEUqMjXwutebW3AK?=
 =?us-ascii?Q?GOLIpeiKAUoVPFtjNQePH0cY+vGznLDE5qYCngk1cy/XtTq36Jc6zUhT37gM?=
 =?us-ascii?Q?wpQXLpd4A5rIOs72TmC30XDVb2GfmH1gyaQi2kkCx/KYAO1jz4J5bUZ5D+/+?=
 =?us-ascii?Q?+VPrGCWrGY1A+a0eXAHa/k3acD7VC/gGHqdJHHU9RyPnA6sFwYaTFrxngUuh?=
 =?us-ascii?Q?95a1f5Wg3AvWtL5uhjgr3PwcPd9cLCUvdLrIb6lSgMxCpLrT1FfRWr34kBYK?=
 =?us-ascii?Q?4YyqA7TcTjNNXppKzAkZTpMeFj9ZsbTJwH5/p6FF?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6219.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: abe32377-c0e6-455b-7195-08ddec8cff99
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2025 15:00:48.4036 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rcNbbwUcNhWX2r/PGj5qcMlRH6wq/2rba5I6IR03fU4h2i5FTtHjHKhBYPoxZ8r71rjTypJdom6T0d6X1AyLlozB3FQWFEe9A4QxAqNycbg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8672
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757084885; x=1788620885;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VeMv6Gt7MgE6vqpb1F83yhnXWeMORC6o3WyfaUPZuiM=;
 b=JVChpa/uAsHCeAap6h2Y1VDTvXlatEnKnZlnmfpmJ6bwx9BpJgigRnbD
 a2vuFylcnu3ZDVRi8Z29bMyywayKqLf8oKVhRGsM7ndfnJrwENJ3m7s9e
 ZdnNajHparP6jkcX70zEO9m8O9WJpo3P/OcUKAnjRxiLkTtnpvT2rwP54
 nEqCBiKF4Z5iw8KA1mHMiqPtZ7V0YKx26InH/oaS/PTugpSXsOGc7/vNR
 jnY6rCsPbV1QROIUwzKHSxr+GInYHc+YPrqbdQK67jNO6ACqAD6HWUeLH
 BcYt17wuL0ZUQOyT3rYw80sAgLtDMaEZY36ryoQvNRmUotTC+pxZCH8b2
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JVChpa/u
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v9 iwl-next] ice: add recovery clock
 and clock 1588 control for E825c
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
> From: Nitka, Grzegorz <grzegorz.nitka@intel.com>
> Sent: Tuesday, August 12, 2025 10:20 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kubalewski, Arkadiusz
> <arkadiusz.kubalewski@intel.com>; pmenzel@molgen.mpg.de; Korba,
> Przemyslaw <przemyslaw.korba@intel.com>; Olech, Milena
> <milena.olech@intel.com>; Nitka, Grzegorz <grzegorz.nitka@intel.com>
> Subject: [PATCH v9 iwl-next] ice: add recovery clock and clock 1588 contr=
ol
> for E825c
>=20
> From: Przemyslaw Korba <przemyslaw.korba@intel.com>
>=20
> Add control for E825 input pins: phy clock recovery and clock 1588.
> E825 does not provide control over platform level DPLL but it
> provides control over PHY clock recovery, and PTP/timestamp driven
> inputs for platform level DPLL [1].
>=20
> Introduce a software controlled layer of abstraction to:
> - create a DPLL of type EEC for E825c,
> - create recovered clock pin for each PF, and control them through
> writing to registers,
> - create pin to control clock 1588 for PF0, and control it through
> writing to registers.
>=20
...
> @@ -3239,14 +3638,15 @@ static int ice_dpll_init_pins(struct ice_pf *pf, =
bool
> cgu)
>   * @d: pointer to ice_dpll
>   * @cgu: if cgu is present and controlled by this NIC
>   *
> - * If cgu is owned unregister the dpll from dpll subsystem.
> - * Release resources of dpll device from dpll subsystem.
> + * If cgu is owned or device is e825c, unregister the DPL from DPLL
> subsystem.
> + * Release resources of DPLL device from DPLL subsystem.
>   */
>  static void
>  ice_dpll_deinit_dpll(struct ice_pf *pf, struct ice_dpll *d, bool cgu)
>  {
> -	if (cgu)
> -		dpll_device_unregister(d->dpll, d->ops, d);
> +	if (cgu || (pf->hw.mac_type =3D=3D ICE_MAC_GENERIC_3K_E825 &&
> +		    ice_pf_src_tmr_owned(pf)))
> +		dpll_device_unregister(d->dpll, &ice_dpll_ops, d);

d->ops should be passed as parameter to dpll_device_unregister() call.
This was mistakenly changed to ice_dpll_ops  while resolving conflicts
with "ice: add phase offset monitor for all PPS dpll inputs" commit.
To be fixed in v10.

>  	dpll_device_put(d->dpll);
>  }
>=20
