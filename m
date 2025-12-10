Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F78DCB43B1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Dec 2025 00:22:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 327DF613B7;
	Wed, 10 Dec 2025 23:22:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LZ78sqv5sMe6; Wed, 10 Dec 2025 23:22:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B01C361722
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765408927;
	bh=tU5GpGY7S8/sVhu+0iqs4VlUBlzbtrRxcMkmLB08dTg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9tcQkmfaLRIQLk+3GJ8TwK1jYeKrSF4cp9JSd6gpJVxbNJCDTI9kLn8KyOTkdSqSc
	 0kS3kA++BUtm8XKCjIcFNSWfli0vsDUc50OOBuTX8VsgY7/YgI/1VlcRkr7Q8wHWbT
	 CgtfckzgaGmYLHb4QEnUAOOZOOG+x6mjICWzON/bPbeFHKjhsjTuMzw+xd/iTaaFYK
	 M3FWE4rGT618+j/4hMn0ZMiCQnNuoABI8pX2zVn6j1x65IuvQ+qnGbP3O4LstQMHH4
	 jfY2mhbUrVayXVhZb1RlX+iBUlE8e/+1JKU89sHRa+G8QhC58cH4S9Q8lPY0In0rMI
	 eABEACVBf62oA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B01C361722;
	Wed, 10 Dec 2025 23:22:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id CCFA2E7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 23:22:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B33046070E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 23:22:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TP2z22j1Enxu for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Dec 2025 23:22:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BFD62611A0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BFD62611A0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BFD62611A0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 23:22:04 +0000 (UTC)
X-CSE-ConnectionGUID: Xg/LJ5aGSKOMe7L6wmTmuw==
X-CSE-MsgGUID: Fe0Gcn5xRUmJPy9HDeEhfw==
X-IronPort-AV: E=McAfee;i="6800,10657,11638"; a="71236373"
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="71236373"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 15:22:04 -0800
X-CSE-ConnectionGUID: 0a+RRT3nSHiEOmMceSG4FA==
X-CSE-MsgGUID: g7mEqo7yTZmoDwQoRlR35A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="201566901"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 15:22:04 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 15:22:04 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 10 Dec 2025 15:22:04 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.18) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 15:22:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cSe7s1OSreUzTHAdySS4DYXq4+FMg+A3i58s5QLRktS6NjiZOsVj3nRh8Fjm9/It6zMkXemPp9LyRk3jchGC8UYvxzqn034uziEHXOPJ7xTCmssckOBEcnBV3IaqvcDe4mePcNrzjCf8GAyyN2cb4/fZQe1THVGTc319mds0lmdcyIayaFkFgJnQHOVYqY4pfOTYyq+fbWM8mLxnhOB0/pDYZkmzZRFV07AD0Sn22Qwu9Fdn5XBMGCci/woM7JGoUmYV1oCDwRs9uYSCgwabAm5wigDcRYTfMx6GZOiI+RKc0Ccn1KdigJP//mZnucBMHVTpoEMcLVpF4st+b6gUfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tU5GpGY7S8/sVhu+0iqs4VlUBlzbtrRxcMkmLB08dTg=;
 b=dbc/ckFWt2NM195QM5faMjq4MR291YY82xrKynnn0LX2ZaWrTBN/N6D3cuUuPSChbIb0QnqOIGQv5oa0UevzxeOCv9Y0FT5FhNMZqLVfFlLqkt36w78QuiQeISmCji45MZwnB3H9MFz5viFTVaAuHBZuJ4/851I5nTWWtdrVSFvbycMwh9OALAzv3ARyLPKeD8XPH2Y0kSjvjzWCNK1MmyIra/2vNxSvO/Qwe9aDIwJ4DEPk3+DrdYYyAJzyHQFwd5Gw80dVj+PpDfVXyMAMlAeictjfJQoLHIYzQCpGUDjT63Ph55j7ArhZErde60JI9fcPVNwrNOwYZ6tKglGVPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by SJ2PR11MB8451.namprd11.prod.outlook.com (2603:10b6:a03:56e::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.6; Wed, 10 Dec
 2025 23:22:02 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.9412.005; Wed, 10 Dec 2025
 23:22:02 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v10 06/10] idpf: add rss_data
 field to RSS function parameters
Thread-Index: AQHcVDTlKeJZnxrREkaGpjoMKuVbprUbreJg
Date: Wed, 10 Dec 2025 23:22:01 +0000
Message-ID: <SJ1PR11MB6297CC19010F1B9601EEDAA29BA0A@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20251113004143.2924761-1-joshua.a.hay@intel.com>
 <20251113004143.2924761-7-joshua.a.hay@intel.com>
In-Reply-To: <20251113004143.2924761-7-joshua.a.hay@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|SJ2PR11MB8451:EE_
x-ms-office365-filtering-correlation-id: c16df2be-b1c9-4625-1f0b-08de3842ec82
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?o/n7NnNQexkNNWfCGYG6zNEiDf5lFQ8Oy0fXrcG9pJRKxuVL+WZDbeDSkM0h?=
 =?us-ascii?Q?BzyRS2YI///g+dT+q9iqiQKl/8Xi7kwnxCLyruDrFAv5Yj74WjBmhi1k1ORV?=
 =?us-ascii?Q?ir04LRlpiUb0Mt/9YzfXVX9/fPEM3NB/XNii3BMaglY+YQxncdwk1Eyzsq+S?=
 =?us-ascii?Q?OJS9QRTH9is3REvQLNW7v3/A0yCV76SyZXKAywPflRQDFdCnxWSfPXtg8VAz?=
 =?us-ascii?Q?FFqD77NH+SNpootcTebGhpP1Y8INZFdEcBxCDAx4sOCM3bAehJ8/Z2z8owQG?=
 =?us-ascii?Q?WyhwuUJLw5oEEfIKYzoswMZnRuiEuURzp87BbS1kkkmXJHiLrfnGh2z1DwJ9?=
 =?us-ascii?Q?dxyuYPxc35wWwA824YzC+Lo498qzBTA9CYd+S+MPHYYgm9GmE0jvrlPBeDJw?=
 =?us-ascii?Q?ZvTDJk0xOZKJMj8nOME7oVpaMfIXxmfTvtqFFLU2GDTkfn649qI/9Ol2RzJC?=
 =?us-ascii?Q?+zDRNbBNrSD/GP6LB0Q8C79evobAZUMQl9BbkgdPgW4GBbz4W4CmTgl3wjVq?=
 =?us-ascii?Q?XHvCXXprpnn7cZBFhtliKDArDVICM0CGIMyz2hh8t4Jl01Xv8+qw0pXkq6T8?=
 =?us-ascii?Q?aD5anoEHeJrkMUJXY3KsJufa1U+eQCBmPCeWcI6qdg+fiGGECBTHkTFzyHm+?=
 =?us-ascii?Q?WC9W72Ev9dC9zDxnXivOjKbg7FQWujetyBz6f/+mDK9giY/VIfgmpTz+eR9T?=
 =?us-ascii?Q?yjU2qYBFUT3dWEJI4Aqnz/WZdRwRVAQWh5/QgKrjVT+boySprG4jEclNmD+T?=
 =?us-ascii?Q?Si2vCbYqk/CfpLEaS+MkTShdFkT8zBl/pZ4EjLdFjYHsFNUC2cEESIRwJYLR?=
 =?us-ascii?Q?Bto/t3Gl5kP0YDmVwOBxaZ4cxS+mJbaJQk5N/8fUMZzUud5HU0VlV33ROo89?=
 =?us-ascii?Q?JCXHIt4pGl3bDlfOaSxL0BHXw+w5fzRdL/YhWWd03JxNHtTBgSQlNKXjYIL1?=
 =?us-ascii?Q?ZPxr1CkDGuzYKCrHYF38Bxk13FnTreC0QB22yOJG10L2wYZJSKxBRqk7PTdO?=
 =?us-ascii?Q?xDc3SeVPk+TLhB0+knwG+m8u9xF39aGdGrpDfjMpmfOzbLyFnGHRKTCt4xqO?=
 =?us-ascii?Q?03h57/V7CSZkgrZ99rsCe4P+XmzIf6A76qAvJifrdASd2mpwtg1JDG33Ct7g?=
 =?us-ascii?Q?gml7wIFzgTELfLI1fWJ8dj3q36uygRwfr9Y0Sza/MSBxFuJ0ArEGS0oZyE7X?=
 =?us-ascii?Q?xctHgcjp9NiVMEXygBuNCNIneq5pZ4/nT9o8iIGOFUj23fz4KJPk6Ce/WgTY?=
 =?us-ascii?Q?xu1/Obu3w0eUza2Fm46xKk/JJuo9dt3kwIvXv7YlYuAzEyQVszz4Li4ntBNt?=
 =?us-ascii?Q?LM5Qh0ECju+p4Mp6mnyqU3ygZLTbnSaiCsLED7vYyixhIYDNqwHvGR/anS9e?=
 =?us-ascii?Q?z0bHpv7L4QVv52nMzOIo7YzO+HiWS+4p6jsSk6KMU1/mdclTfgnvtRCWMLvT?=
 =?us-ascii?Q?zagEyTIFMAtc9f9eBpW8hsnbTP3dSLIGdA5tYMkr13IVmh7rm3HOvlY5Wj8F?=
 =?us-ascii?Q?vVVOFPdZIMokFf4u822Ri1kZwqOe/7/zihJD?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?BIhugSfHejMiH821ED158fVG5DVLjA9F6sz0Tbntc6I9JBQSq7tdGHnPMcsM?=
 =?us-ascii?Q?uNPWJlw6G1zSRtAEuStsgfA0gIRuHhUC25wQ1z6VzZ6tri+Dlo2RxUa3/dz8?=
 =?us-ascii?Q?yalWTpx1GuN2dZkzMTDfwhhED4vmJMGg9k2U4E6PkFWIE9rgt8E3+huUJ+Ds?=
 =?us-ascii?Q?uwnH+JzfY+eSM2ISlC5dKWVXjSTgYFIjZozQU/0QBqVX0WBTXuk6UgK6NYj4?=
 =?us-ascii?Q?WmQpyHW3pjBtTO35vLKAABGQDAeI2x7aItcglrkUUKZkfQo6RRmekE86okDn?=
 =?us-ascii?Q?HipiSdSbepJcEFQxkc1uSaXSqXNsXpNWSlTmGJEmNB89qnHuT+g5XWt6rLeM?=
 =?us-ascii?Q?mkYdAGO2RVDmBd6m69YhcsSTlkpcq8ak/Ad2TXtMW2tIhUFOljTGIG26BVYt?=
 =?us-ascii?Q?a4HqNcW5Y5AIKaOYtOdpgN3M/ZNu0zh2gYFBVh6yFSZzhwyijVUeyvihSnLY?=
 =?us-ascii?Q?IUfx1gYLakJ7AznlGB5alK7uaq/gha3e2fwKn2V/3JlOVQoOY3uhS5SqbVzT?=
 =?us-ascii?Q?9o8MLW/Q/+VyeZFiSD5rxCH+yp94PiEv9LUN2zN6EZKY8u9k8IC5d38jocsS?=
 =?us-ascii?Q?bazx+W59mckMSap6gvrWyrz4oIV09N7DxGwYtyrVGRW/eu8Js6cOs8EUu40c?=
 =?us-ascii?Q?L+yL+pcV/1OfeP5G+6i12Ud71a/n1PlGzRQjPBAxXPxjkorxWK92GEpDyc/q?=
 =?us-ascii?Q?cSqxFELwfWKU0R6jmH3JHGH+dZw+8wo1qnsrlqI/C/K62R40s9rpZSUoAOB/?=
 =?us-ascii?Q?XXLzRJ4EvYDkT7kJpakQ5SH4vwoyfPQoHy/6eVE5vcD5jZKCMYDTT/fdMt3E?=
 =?us-ascii?Q?qmhffBeVcVU1MTlrd5WhLJfuLnsPrCL/l2Pzu0nQ1EeU1YVR0dN7xHAMXw+U?=
 =?us-ascii?Q?fRsXOaMDLDqz+42cANcgFokmWDt2OWR2joYe59nQZdqzwRqJ0BW9T4v1xik/?=
 =?us-ascii?Q?eiyt+c89O98BW/1ruujgxEOyGBzySynhzQs2yFrozUu4bi6UN+eGqgRMH/vW?=
 =?us-ascii?Q?oRY1Q56xj8VB6MaMR9+Vc+wtN01f/pfnxKkSxJk5xRhTLuyjgqorKow4okJ7?=
 =?us-ascii?Q?HOpG3SVcHLzWxomSEIXFEr/G/NOcU0ROBVbnoLN8gjG5/R3pC3r/k7Bw0Ma/?=
 =?us-ascii?Q?u4kWzCZwZSozwkqk3nN17bBwnQo/S2J+J2m8omDcxweXEmd+OVT3P9t5FQI9?=
 =?us-ascii?Q?rwi4ZLQJv1ujXSG+Iypfaim+2tzzVPsviVuEdfhqEvYFUjhgHDAUMFvaXoGy?=
 =?us-ascii?Q?NHEKC+TtDaCMsFwSKuogQxjHKMzoyyXLBaCm86F4z361z0AqlM4WWZlJ1C5f?=
 =?us-ascii?Q?qXlgIi79btNDhmF+RyAa7lPitNdxzQ0MOtCiJfMSvRxX9BXzGqgLhfXl+VU9?=
 =?us-ascii?Q?1mPlCb3VyYH1WpOkTnuOqQ0p77UmUviNjIdMhuSaWCe4Mq8fgl750N7AQrBq?=
 =?us-ascii?Q?c00soirteqGE8he8hAWSCskbmNLcwkuBWbELB1O9ZXFZ8FlzhPmoa4PjmnJM?=
 =?us-ascii?Q?fggY1vhAiSAJhtT6GxHlMh6XTrAaUQr6QkeMyu/ewFirQaUCAeeGqIsXd65U?=
 =?us-ascii?Q?oCR6ZfZC2etENZSZ3c8OuNbF/ifW8e2VQ217INFJ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c16df2be-b1c9-4625-1f0b-08de3842ec82
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2025 23:22:01.9527 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oaRaGgwQthJTnqX72u7+HX8w0szFoqXuP3WXR5e30Uxjq6kymIMPdzOqWjMpb6PBtASXx7MXJ28BquLZC0wL0Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8451
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765408924; x=1796944924;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tU5GpGY7S8/sVhu+0iqs4VlUBlzbtrRxcMkmLB08dTg=;
 b=Rjyv+drGG4o1fxkxD3j6ZBablRFPwdF5eogJiYW/0FZQegxBhfpwbyfO
 76i6kJhN1vUbAEVzkW7iG16G82g/BH8M50F3dLYhGHIbeE2MIdSY3cKam
 HxrxHjuEIvXbIZIUTRB63sen8HUKZ8J4RjYjzKtRNaGRW6KKK1tx2D8lQ
 OvAtgIrHHwCse+7cTFAv3RzMSYSWybpi+FBp3mYBLiikE0eklxdDvJ7nT
 wFSvyp+w4gN/0bK6P611m2vMdS1Qg+mFdS4g0fryzuGWID8iAeA5jXseX
 AjK2TggurkF8aE9rDacJqAm2udSxn/ggskFrNO3LHzvDpL3x5pHuIZV83
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Rjyv+drG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v10 06/10] idpf: add rss_data
 field to RSS function parameters
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
> Joshua Hay
> Sent: Wednesday, November 12, 2025 4:42 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v10 06/10] idpf: add rss_data =
field
> to RSS function parameters
>=20
> From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
>=20
> Retrieve rss_data field of vport just once and pass it to RSS related fun=
ctions
> instead of retrieving it in each function.
>=20
> While at it, update s/rss/RSS in the RSS function doc comments.
>=20
> Reviewed-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v8: rebase on AF_XDP series
> ---
> 2.39.2

Tested-by: Samuel Salin <Samuel.salin@intel.com>
