Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 10CA2915F80
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Jun 2024 09:08:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 61E8860EE4;
	Tue, 25 Jun 2024 07:08:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ge6W_0JKCIbY; Tue, 25 Jun 2024 07:08:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 95BBC6059F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719299286;
	bh=jxFtvfBUxsD1WZ5Ja+x4otxLrmnE+ycoOfwFMWaTn5c=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4KN5z2ZDhAdIMMe9T5BVn3fGWME5Dj991J9ryJ7pEhS2I3VhRijJIhdUY4NZMIX1g
	 M0ZqI2SOZApRFetGa2vC6KPRgA5b3BP1tax6VUomN9nyMS1QDMw+Yc9REVdVzxC6E5
	 97y6jvc70Aui2Xue1rWwX4KrLzT92Sb57Qt7qBBLeUKqS0JQnA65r6BHvXG+/69Nh9
	 SglIh4vMppITcxUozRL2g7jOhS9AUYBuUYxde7kk1F+qQGIEt1rx0HHbPPmscY/RRZ
	 ita4p3fSLMOyirBz5nTEoJ54gOXtOI1kFgLT9owTJcGin356epmrJGhRGfKOZa5Pha
	 ZUH2DW/4tg5UQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 95BBC6059F;
	Tue, 25 Jun 2024 07:08:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B64651BF215
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2024 07:08:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A9B35605A0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2024 07:08:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yL225K2SdCVT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Jun 2024 07:08:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C52CC6059F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C52CC6059F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C52CC6059F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2024 07:08:03 +0000 (UTC)
X-CSE-ConnectionGUID: q8U2M3k4RDmyLP+o/PBieA==
X-CSE-MsgGUID: ifyrOwwrQ2+uqttU63316g==
X-IronPort-AV: E=McAfee;i="6700,10204,11113"; a="20177154"
X-IronPort-AV: E=Sophos;i="6.08,263,1712646000"; d="scan'208";a="20177154"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2024 00:08:02 -0700
X-CSE-ConnectionGUID: JoqUkdv4QemEZxcQGEGWlQ==
X-CSE-MsgGUID: QLEMwEPQSTSZ5ZkIG55wOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,263,1712646000"; d="scan'208";a="43537388"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Jun 2024 00:08:02 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 25 Jun 2024 00:08:01 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 25 Jun 2024 00:08:01 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 25 Jun 2024 00:08:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gBzcE0q5u0t5uikYvYfugSoolgal/FFGaaFJJNSJiFZEPsJE6qGUZKoglfSytqZwoKkMK50FihOZliXOOqlP2Xumq3EcDyNXhEEpWq/HcbBoYCp9a64+1KLhy3RN5eMAHmbydsFdX/M3w4ynW+qL7GU7C/greLzWRSrCTJUupZ8xeQnafvfdMTW/WOeVRPToo/suzEf/6gyFXM0IuW3+WxrFe2DgE2GoSq22a0w9xCWwEBJQoRoM8lATXj5lptuenZVNwnNcb67ZzkWY3HwQmJaQJCn0asNKgZ1LthYXiVDLzoGxERQPpMcjNuk26sNoRJOut6aMoxPAZ+KwyXIFOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jxFtvfBUxsD1WZ5Ja+x4otxLrmnE+ycoOfwFMWaTn5c=;
 b=I5DuKLeCVKJPKZbjdOZdnCLZpOtF3wlFJIBO4nD3A5S8fAnWMknJv+r+XrSuh0GDvDVDvrpC/jy5JK9TgPMxGqdNIPDJtxscW6QxL7w8vLP9xQCO/Vlgt9etwrC20kRxg4d41vKxW6ZudIBlMQaiio4ElgWXEFeguKmExWS0cc+0jERKcMjrjCgDIZ9mRcpeVy9GubkYI6iSjRrDiJ2sGgk8Wv/H3Ms4gNSvmWZWr/LsUhAz6NgMjtm74AjDSXcFLrfOIZRLyhiOidClpDASxHx0v0e2Y19vqD1/BcH3erGdF6ZxpOiP9gHW0pKN/WeEJJOfx3SROUhIFh2ojiY8CA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by LV3PR11MB8482.namprd11.prod.outlook.com (2603:10b6:408:1bb::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.29; Tue, 25 Jun
 2024 07:07:57 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%6]) with mapi id 15.20.7698.025; Tue, 25 Jun 2024
 07:07:57 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 iwl-net 1/3] ice: Fix improper extts
 handling
Thread-Index: AQHaww3wuJv/jHXI70q/zvuqPFsNcLHYDixQ
Date: Tue, 25 Jun 2024 07:07:57 +0000
Message-ID: <CYYPR11MB8429726FD2CA5E500781BE83BDD52@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240620123141.1582255-1-karol.kolacinski@intel.com>
 <20240620123141.1582255-2-karol.kolacinski@intel.com>
In-Reply-To: <20240620123141.1582255-2-karol.kolacinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|LV3PR11MB8482:EE_
x-ms-office365-filtering-correlation-id: cbb275ee-ee72-44af-4c65-08dc94e58a8f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230037|376011|1800799021|366013|38070700015;
x-microsoft-antispam-message-info: =?us-ascii?Q?OVtGgMOOxKfwSswamWD93GYvq36YjSbbOoOLXatSJ6w8B/B8o6Ql/teCePb6?=
 =?us-ascii?Q?cxhMNBYdRUW6kKklX1YCTQ/9EVV+Lfvpb2c/tIiWhQ4VSIwE3jHpkS5qktJp?=
 =?us-ascii?Q?UMfRCDQgpCNldRjmpeR8hfLyA0N+Gp1CHQexMsvJ9umG+sd3Yp6HOrGH571S?=
 =?us-ascii?Q?kH2VWT6M6mfeod+nZWNaPBmWTJ6F6WwCxA3RuXryr9BKKJOywNpz7ni3KaP/?=
 =?us-ascii?Q?WmVor9Tq8OQQoOq12pClQsAeUPm+LM84k0m4M4o6Sm6XSok96IV0teNIXcXB?=
 =?us-ascii?Q?VYKTMa+aZ72eLlA132A6gs6FvFa/MJzYYE+KrtpU9kYWrSF15XmSu3SDsQH6?=
 =?us-ascii?Q?yEe5GgWP+trzR6hmw0mrwXihhgD8fKV+oIAMN3PaM6atZlmdXOHJ+DY/IIMg?=
 =?us-ascii?Q?F3tcoyYDpAgIbDCb1NhHNLePJucSZ9p+aT/NF8fxfLgFRGLxT3rsm1hTsSyl?=
 =?us-ascii?Q?gFJhC5pslJh09WF4fGFqBIUTG8A0xz5MB7YH9Tk20YLrSOAdXCaqkmF2/zRq?=
 =?us-ascii?Q?/ltvfdEojK+D5/fNqXOq3UiJfuNwGJ2cgtvHLjvhIR3ElVLuLlJ7xAvfqbot?=
 =?us-ascii?Q?4ZDjAx0exNxc7bgKKnzR4+Fsx4VPK3x0xS3ZuyJD3m8HSXaD58aCWwYI1d86?=
 =?us-ascii?Q?wvZshgExb+gSgeXD0wJ0TjV8a8dJw6sz2uzaS1vV/LiSVGYOg3SZ35ut6B8W?=
 =?us-ascii?Q?sJD0dLQQKO1kdA/HMER3A/FMHVj09OlE6jhNYBnEy7kxbe1zsV71KU6a+zIG?=
 =?us-ascii?Q?uFrDcUtn94nIUaCBYA2KCc8phF6iD/fjLO1xjXHy+02vAIjZUlW4OeyO6hgK?=
 =?us-ascii?Q?FQrKV6/JJx64s3liGs9dTKgZP2AyRozpZhoaoDfMad3zrnWHXLyqUgKBkwEd?=
 =?us-ascii?Q?nqcVTBnXM0RtNx1gIPu/iH/r8MIAFm7F1VFp2IpOJoPbxWI+asjDz1vmfX31?=
 =?us-ascii?Q?fndbI1Ehv2oNH0ZN9igvSVyKuB91ZYvLBsF61jFu9wB89AsqYfLVi3u8dilD?=
 =?us-ascii?Q?MXK/VAWuMv/7wNNe4GrAL4+I8SwKzJgqKV0ghTwgT3cXtbyfljVE2ngd8u5R?=
 =?us-ascii?Q?Vgc07Zx5FQWN3KJAVGCdIYgFnOD/qQXQRGNmAtq8MU6tFyGKKIpoL1WibNl4?=
 =?us-ascii?Q?kGDM88G97o3nKpxdH8RxLT10iPqWdIfMwgzTBQJ1ReB/UQrzxga0Gm0LMTqd?=
 =?us-ascii?Q?sIzQh1UHknPI7goRiNgN8nsgEiIpsszc9OfYphjMA4TpiHeKdmrMIEucAu/U?=
 =?us-ascii?Q?qPc1xj4zFkr+k/PtnQDHAkG420bwoDdxwec0dfl/otaUr8BKA9gImMLMgBHc?=
 =?us-ascii?Q?ncxDg9/g0mmEvhA10WlRhxNR/4WQwK83spo3G8xMvx7RW7jzLA8VAoeHLCf6?=
 =?us-ascii?Q?/WFpBZQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(376011)(1800799021)(366013)(38070700015); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PJMkYmudyWWBCjIX24maQLKDmhuQG0r64jNJTU3ZKrcv2UT5+0nEQp8MPBYD?=
 =?us-ascii?Q?CG2HlMHMo5YmYO+GRL57hsEqfHh7R8LWr0+SKroYAQhQGxGczzGUgBXCpQXp?=
 =?us-ascii?Q?WoqETwkMvYPt8eGF592nYNaxuZcc5+cpf3zoTPmwyeUTiu6nMyzo62aQ6H9E?=
 =?us-ascii?Q?HTz3KMsPju5gqy+vm4G7vHVoUVoFRuCsUKINqPojtLmDcSAIB5JZ3XOiHlQR?=
 =?us-ascii?Q?GMIwF9kPm6jDvl3PjGLwxu3Zd5yddfFJWipmdysZmrhs4mtugLkbEpOJxVxG?=
 =?us-ascii?Q?p4neo53SOHmgSholaRdE7SMdnMLBbOOpXVcHbUimd1TIqB62S2OKDEoDTqKR?=
 =?us-ascii?Q?byG9SI1KAEOSPOtZueJguh72XoAC8cR3WhcbQYhwWqXIpnqfA79hCeWTCDnL?=
 =?us-ascii?Q?YMdU7I9OkjoHXKvm/rftlRqvwnWz+94UhYeJ5z7XIPFNySqv8e+w1hVdlR5G?=
 =?us-ascii?Q?FTCKlTxNEFlfXgYjk4FEPTG711hb+j9h6FheJ0yEHQKhJufDDU4UVnJynVAm?=
 =?us-ascii?Q?Vf6sh7R8i7uHEyPCOTj94kEqAIqxXmIjyS/9+bgibZpOVGxipgWh0ISoDw+C?=
 =?us-ascii?Q?ULGqjF8NfJGxvFO+3F63EVktHS9R6y7NmgrpzOf4tKsVBrXkQublLLZU6gw3?=
 =?us-ascii?Q?a5nNveLpBLlwUJrTDtjLf2a2uGj/Nu8o3fr+YMGVaUh+icqI9n1eZkWa48kN?=
 =?us-ascii?Q?TY3fVfZmKicx89ESjd+fR7Jw4+qpTFJ3UV4YxpHQnOxTU9g1BRM4qMXBTmtI?=
 =?us-ascii?Q?u74ercJoxgk93ZwCLISV3WiQB/7MhW2X9D6njfsIJwVtqL+xYuvxB6RnRd4o?=
 =?us-ascii?Q?+/ODyPolKAIIQd9Jk+W1QHPMiQHpPVMisCgjcKc3UwpUNwPoudrCL3oWMFGX?=
 =?us-ascii?Q?VjuzthgkSUReZiJM8AqC5eiZn40iHtEnO3pC64pJI7OWc/Uyglf7jIXWZyiB?=
 =?us-ascii?Q?3iLtR+ELKrgrXsKE12GrNDa8gk07PppOQA1Ln7SgrC0bzxVcfk0zE+6otKJT?=
 =?us-ascii?Q?B2VY8TxL28R1IaiWdzXC/07Zs0rjxXmIETZlAt7OEGA4/1wRaqiY9YyQfvAN?=
 =?us-ascii?Q?qGqSXCsf5ZrYU9Y0h81CcXzzBQf74Tkad8L4kw6OqOQRtlyPlayLoIbFVz1E?=
 =?us-ascii?Q?YfEEic9SmYKZryjb0zrQD2k9vdHaYYk0VvB9OCc2IJehQn/TO2yM9ELVZ7SD?=
 =?us-ascii?Q?R2qcCgVZi+aetQce7vg6zqikyDNJttpccjuV0H+eQk+GiJdlow/eT9Do07wA?=
 =?us-ascii?Q?K46Qz+kPIoGjwogWaeI38udx7Z7GmJ53UtSGPsBav8fsQYg+mUe7fRooTd/C?=
 =?us-ascii?Q?DqRKKmuAfOfog1TfhcNTeWtT48Yy+rhvF8prVqUl6sIrtODZMpitusuUkrbb?=
 =?us-ascii?Q?I/U4lGrdEHdJw26f2+MfXFZkxWXCaH94CZYV0vWajn8kH2cmpCsLbXzug51o?=
 =?us-ascii?Q?MqbyQM1fckOOY8wCT0apmBX6kYYD5+tfR0UAOWtlx3UXxxz9Nke5J0UOM+J6?=
 =?us-ascii?Q?jJTrOowxI1IHTpDkOZt92YpH0oXGuCRmouRG/70cyejTxSbv7PdlHJUbVkSZ?=
 =?us-ascii?Q?TtzkjTmgsD0A+lr5Bdyc73hmDytJQv6Fnirdc9DsH4gMpE2PbbsrokX/K73X?=
 =?us-ascii?Q?0A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cbb275ee-ee72-44af-4c65-08dc94e58a8f
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2024 07:07:57.2667 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tWrCSrvsP3inLK0FbbQKRcdPmSgZ8dNU6jkU7gXQlt0UTyH3YkSYOF8rHIyj8iHMGwRdxP0ahbycST01+4JuRK7IhUKuQoNE82ea7wt9vEMJAy+LMys39R4ikzmLYWT1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8482
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719299284; x=1750835284;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ckk6RgbNZ0rdoImPxRrhj5lDQqBedvv/csWoBVOXjY4=;
 b=BzWmNeFnHUwc4r0av5dcZuWFu3cCLvTlpqGaSTVz36ER28+QJJ6jJcxX
 OZeIs5hemlhaaGJQkvZBd3uUzzKDWSdVx7KdKoODw0vHtlGL+zdRZWLuY
 8LBy7D9CzBsbiepkLseJIKHtCVPrwgX/nqNh1ZMHyEf/upF1AHQ04EZqC
 clnILWs6b1MEti5mXW6Zfh+AK8qrS/b2oWMdZuQ01q/sqz5yg4BwwrqNO
 RURx1edTaT0q4Ptn9O3zFDQ5ipowIIATMiqYjNVKAb2WNlFfPQfUU8xAY
 J8y4DV40ChmhQIlpoE++x5DjAIuCUdZ6gQa43Fa+92VXCE4A3jjygRTuo
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BzWmNeFn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net 1/3] ice: Fix improper
 extts handling
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, "Olech, Milena" <milena.olech@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of K=
arol Kolacinski
> Sent: Thursday, June 20, 2024 5:57 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kolacinski, Karol <karol.kolacinski@intel.com=
>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <prz=
emyslaw.kitszel@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>; Ole=
ch, Milena <milena.olech@intel.com>
> Subject: [Intel-wired-lan] [PATCH v2 iwl-net 1/3] ice: Fix improper extts=
 handling
>
> From: Milena Olech <milena.olech@intel.com>
>
> Extts events are disabled and enabled by the application ts2phc.
> However, in case where the driver is removed when the application is runn=
ing, channel remains enabled. As a result, in the next run of the app, two =
channels are enabled and the information "extts on unexpected channel" is p=
rinted to the user.
>
> To avoid that, extts events shall be disabled when PTP is released.
>
> Fixes: 172db5f91d5f ("ice: add support for auxiliary input/output pins")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Co-developed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
> V1 -> V2: removed extra space and fixed return value in
>           ice_ptp_gpio_enable_e823()
>
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 106 ++++++++++++++++++-----
>  drivers/net/ethernet/intel/ice/ice_ptp.h |   8 ++
>  2 files changed, 92 insertions(+), 22 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)


