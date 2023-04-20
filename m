Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B64926E9D92
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Apr 2023 22:59:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 45F0440BB2;
	Thu, 20 Apr 2023 20:59:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 45F0440BB2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682024392;
	bh=IIr7O4NKlK3yU16lOy9/h5z2rwR/uLfEDC0LYeQVloQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2h5fXXShBl8K4lzbiN/h9dQh3E2y413ak/7le+eq2mpW25zCBDohGmWgoSzMc+zmb
	 TgDcvzZEcZvuEkB/Qm9ZWJs45upvZ0V4zoAopIZMCxdu1LJ9arhWcnRMoZbqcTAEi1
	 wMC7KnCfYqDfT6WrVC6uAqwZ9Zq/E+h7amk7XQpX9nxhKqJUaIQwgfBwzYT2It8Gfn
	 X4DfyzEIKAXe3Wn1zyy3YyeCvfpKkm9kK8OAref15/B3oOmmwXG2ULskxVf8NdidWN
	 4vUb+6Vt6AjJmmR17/8YCkNezMf6FpyeyEz/oxTksSDAtVyqcWL7ZaQtq0g0uZa/gP
	 +/T2jq3Iy+2AQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dfb3iM6Z3Rqk; Thu, 20 Apr 2023 20:59:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1A95C40191;
	Thu, 20 Apr 2023 20:59:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1A95C40191
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A3A4D1BF982
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 20:59:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7A467417D5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 20:59:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7A467417D5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 73ANDsznS6iw for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Apr 2023 20:59:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7429B417D3
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7429B417D3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 20:59:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="348640524"
X-IronPort-AV: E=Sophos;i="5.99,213,1677571200"; d="scan'208";a="348640524"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 13:59:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="694713971"
X-IronPort-AV: E=Sophos;i="5.99,213,1677571200"; d="scan'208";a="694713971"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 20 Apr 2023 13:59:39 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 20 Apr 2023 13:59:39 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 20 Apr 2023 13:59:39 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 20 Apr 2023 13:59:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CmIBmnjlE6SZICAwxNxl7g1e7LjHK3RKnMH3jb+ADx0GnqDr45h6O59YwZrnmsrgfhFo2pg7tM8dC8ioadq6k7kRuWe4xMaMCX8uhF912foOr4ACKo5PdQbhpz3d5sCLrb18uEwPr+6W3sF3I+yCZqGSNbv3B0FbqSb9q4gCjDbooi2iXhiE/aup8FWBfhngSOBEft/vD5UJkG5rCCVRH4gB26YjzUcz4QmlFToGmMEk9s2ZHNKJrXP1rWe6W2Lj6CIT6EMPB5OB/JbCq9VU/YNMplWJjgXVQpFmUShau/OQihVTmSsgaDH9+Dx6AXkBQDI5ud3fzvehWzoDVp0B9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yAy8ioU8tZxS2j57HhCyfKsVDe6oRN3iyHpUNeTUGdE=;
 b=ON/QWHCPHXAXRxTgRqkCEg2EpRpPONxXgVR4FhZIsskgp0snFiCK8wBH5JvsHINLv+x6RGhrUe5Q6yVE9jILhnriuXzgM04cgle1g0OXU155FTh111bBmuSsl5H1dBmCEKOnBczmq46H/rxLpB3w2mRKVlaDSRbBPyLyQt7mbQwaGeIWGzAqzULwfmBCAS92dESSwnnzFQfc9R9EW+sgYfbCHT5nGvKolHw8pXVdfUSVpBMZTt1gMr4GiOOWkumaB66QGUb9hL37B0F5oDPUg7JQTQiiEdvK1eshwgeq5PQ9u7+EfzTFnIZhH62SwDET1XxBuTI6wKD2Stjtq/mldA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5028.namprd11.prod.outlook.com (2603:10b6:303:9a::12)
 by MN2PR11MB4517.namprd11.prod.outlook.com (2603:10b6:208:24e::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.20; Thu, 20 Apr
 2023 20:59:37 +0000
Received: from CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::bf74:c4e3:c731:b8c7]) by CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::bf74:c4e3:c731:b8c7%6]) with mapi id 15.20.6319.020; Thu, 20 Apr 2023
 20:59:37 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: mschmidt <mschmidt@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 6/6] ice: sleep, don't
 busy-wait, in the SQ send retry loop
Thread-Index: AQHZbRe92H1NRWqW1Ua+C/djSQZ3Da80uyJg
Date: Thu, 20 Apr 2023 20:59:36 +0000
Message-ID: <CO1PR11MB5028EB98BBBCD9629E70BA29A0639@CO1PR11MB5028.namprd11.prod.outlook.com>
References: <20230412081929.173220-1-mschmidt@redhat.com>
 <20230412081929.173220-7-mschmidt@redhat.com>
In-Reply-To: <20230412081929.173220-7-mschmidt@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5028:EE_|MN2PR11MB4517:EE_
x-ms-office365-filtering-correlation-id: fa7c27f5-85f8-45f5-4514-08db41e226ab
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZHRPmMteVQ2LgqHnD8lBUC5vgc/WW7rZbu3j8fcfaJ3O6M1dvIj2+8PpbgkSE9/r1uloZdb37hW//XPtDGN+lKPnQb8t0dYzr1O9xFVfqrNwst2zkXGVMrJ3Q16k+v8VMNYVsW5z7ppg5QhU6azT2eaBFWJDmqb7cn2X+mfV9pZu4FNmz1LG7EvN/V5f7PeBdV01kQcYMQIWCU1AQkaowZGOQMRCotl0MqZ+ZSPGfxwxKIGvll8K5Z2XekQ0BsxnxYcZPYPjRcl1w0gZ6cHDc3nR7OrV1zrXFhD3zsuMZ5EP2RNbNpbvNjHI9Jbif3ETHh2kpegh0GhD5NdDSwNaK1Q2hHzedH/Aln0JXprH9EmJjJXZQfZYXJHa+4DEPQ5/mwtVZSOO7t/OQJrYqmskhhWiPfKTIUFvm/KZePEQ7PZYpYLkZrTicrF3OUeX2tzHkBpXptpRRCcrST6jZYgzBnkzSyWfLMszTcFMR94zBmZ6CETgrBPes6kJO5M4eHRG7knY/7rA2aSqGd21ypv8V4VJkJD+iX7C/loXanjrkTl4pLOu1tdvcW5bxEXFM2cixPh4gK4kemznMPulLDJgc4mVDGq3hE3i5W0WDYTdKz6v5+3iyPLdqIq2d5+tOnjR
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5028.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(39860400002)(136003)(376002)(396003)(346002)(451199021)(38100700002)(8936002)(8676002)(54906003)(122000001)(41300700001)(82960400001)(5660300002)(52536014)(4326008)(316002)(66476007)(66556008)(66446008)(64756008)(76116006)(110136005)(83380400001)(66946007)(4744005)(2906002)(38070700005)(186003)(7696005)(55016003)(478600001)(71200400001)(33656002)(26005)(86362001)(53546011)(6506007)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zl4iLU15hVmryU0fL5v8GPPnFzgzfEG/xYmbNqzIheU/1ocRnVqS23Gf/6xD?=
 =?us-ascii?Q?Xc/5rOK+W9pqXxXg4qVF2ust6+USBz3pEZsO9tSYx5ftAPlgIKyZ7JNGyIuw?=
 =?us-ascii?Q?RTgy81AMOeigr6cEeV9yJQiUWckbzrx76/Nw3/SfsVDGJtgHrcTHbmKMrLj4?=
 =?us-ascii?Q?65O7kUyfPD9NJyue0/jZSics+6XIjSvWKWS9FCk1I9aVXbDxRUzPHmTCCOfX?=
 =?us-ascii?Q?oVL74Ise7EVPPSo995Iia9tOH4b7zXYutj+kpFk9u5LgQJ7CTn5dXJDsqny5?=
 =?us-ascii?Q?+zy6uzCHEijk8q9kub1hNkM52+6mHpgxjEDOE6oM1PRBsLKoh0/0Ga3MRVeo?=
 =?us-ascii?Q?a8Xg0WCxX6ib4P9483jIOF+5720yT+axSK6Y6+Yw7OJHKwEs/n9dt+Z4fxM8?=
 =?us-ascii?Q?Q07V76YK9cOTQlwC4RafZ+vEtdMu5YIaHlTRpQuqil2WXSa3PG03IyRT0K3E?=
 =?us-ascii?Q?opNT4pm82m+9kUBgjOYxaMIVS0SeSzCGDm3IzmE0BAue/pBDBBhtdU/MYgjw?=
 =?us-ascii?Q?sd7o2Y3tTztxJ5J4+y4X57OzG8zSrSicON/9TZSRUDzMWTpEY9fPVsSz7ELP?=
 =?us-ascii?Q?QYGJ0DIkNmDxrL4NvLzJHgW7EVwdADtyIQS/lsd+LuxpHm4/8ZBcXNwbLd9P?=
 =?us-ascii?Q?sqG5qj2uA0C6EidQ9DXUrYM0BQE/dluL3Xkfy2dEafowWd/MCWAqTajF82Vr?=
 =?us-ascii?Q?Cj+3FCeqPsKhq2oa38X5R3316Y/7lCQvrR5X9mzE5WX22/z49W74cx3g/PqN?=
 =?us-ascii?Q?mBvVUoJStK7LhQHPtnV/EcQBlscNiVYPmCUI80qTyLKgwvjH8aCGfwHz3RJk?=
 =?us-ascii?Q?RUw+UP3KW9wvFv8xzfVW04HvkW/YsAMfXHwl8QgnvdJY9j6PfDbH8m+HSi1Z?=
 =?us-ascii?Q?DTKHCHghOJ4gdEU6a0WKpvDHbG3pflV6RGt4MayuBEzTuIfk1N2cv/+k9+xf?=
 =?us-ascii?Q?nGNwrmnX3gUGs2gK0m/KcT17JjkZq29csSpbtI+SNmWKi3ZVdSOxt+vij76h?=
 =?us-ascii?Q?rVsKl06yA0SlNXbAwgNusEBDOY7Ezc8YM3fcngXIaAhmnaPLtaTJ0WZO0XsY?=
 =?us-ascii?Q?7MLSMbmctsgCUwoC2/jpggo7yYgFGV9jA+rB/4MloGQq2a5DoikXsQzzWj6g?=
 =?us-ascii?Q?OMPwnUsKKq+Z0qTUxkGmnT7paOSc8WOSx5syOLJmW6ggyR5ZQTdPJqiI1YUR?=
 =?us-ascii?Q?hRcXuV0/xiLsk+4NyyAVWbpyrOTqcOxsMJ1Q8xq6kumuEZU0Gil7bEgclNJX?=
 =?us-ascii?Q?920aX8Ptr//HDT8JlTa8o/1+by3hVIY5zRMoHCXShNQvqUh/r8d2eRBu1H39?=
 =?us-ascii?Q?HVjHPTV7mGKcVikW6xW0annnIJCM1ZIoey+VHmXFOlxZRiaYxDhFP5trN+dr?=
 =?us-ascii?Q?1X6K8VVC9Xmp9mGW01pAcoXAbBwf02ZR6haGJB5OmM1EWTJJKzRali6NsxsX?=
 =?us-ascii?Q?TMOk1RRlvct4wPxjhKmVPhortnwgBfTSdIJ7+B//EKNbtuJncrYo+bgsbqL1?=
 =?us-ascii?Q?s8CeOmEqTqHfY8gP7xO+bVavbqFlVPQwsUHKQzTJtipx9th1BaQdwhY5Ik3Y?=
 =?us-ascii?Q?SpW1Z1NkGoWSzxL3HtsE6PTfYztJ2mQRLzzhMn9sIUXdR6t/u6zKbcm/IJwL?=
 =?us-ascii?Q?Vw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5028.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa7c27f5-85f8-45f5-4514-08db41e226ab
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2023 20:59:36.9960 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4B2DdaKwXrSOL3yjCjkBHZtU8KbXnk//vHCu95fBd1nrXyjWccma7s9OQhh7VSdIvwkAZyORJrAFha1cD1qjYyZd356bWe9IwglavDf+QGk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4517
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682024380; x=1713560380;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qK0wnP3cvC2nWoR6tfe4q2/7oGi6TgBr64lnKx5kQmk=;
 b=CgDOYiPf1nASFV4mygvrgctBf6lXkpAJDVbIPcubVdcY/H+W3iB1xIta
 GuCi0AsXulad/1qkwUhoG9nRWPpDvouub9MhKrgtyVgf92wX669H3Cpt0
 5j0pLOW+EidrDs3dCPHIWVICbPDUYk45GI6f2TA5ZL5s0BYfHMpMKmfoZ
 6PkRhirfO2VyWVmajGhiaqUWyOD9raUCeOcP8lRfjBK8Mb+2/tJErW6Pq
 x0bIKJl3R81VszIjRJrkKLFsQYBmBjlAfEOFHF3XGy+n38tjEit5Hp6ss
 XJ0uSC52LZm0kwZBWDzjL73DuUGmg1vWAu1JkETApQbU7lp7nLX6XF95b
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CgDOYiPf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 6/6] ice: sleep,
 don't busy-wait, in the SQ send retry loop
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
Cc: Andrew Lunn <andrew@lunn.ch>, Simon Horman <simon.horman@corigine.com>,
 "Brandeburg, Jesse" <jesse.brandeburg@intel.com>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Michal Schmidt
> Sent: Wednesday, April 12, 2023 1:19 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Andrew Lunn <andrew@lunn.ch>; netdev@vger.kernel.org; Brandeburg, Jesse <jesse.brandeburg@intel.com>; Kolacinski, Karol <karol.kolacinski@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Simon Horman <simon.horman@corigine.com>
> Subject: [Intel-wired-lan] [PATCH net-next v2 6/6] ice: sleep, don't busy-wait, in the SQ send retry loop
>
> 10 ms is a lot of time to spend busy-waiting. Sleeping is clearly allowed here, because we have just returned from ice_sq_send_cmd(), which takes a mutex.
>
> On kernels with HZ=100, this msleep may be twice as long, but I don't think it matters.
> I did not actually observe any retries happening here.
>
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
Tested-by: Sunitha Mekala <sunithax.d.mekala@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
