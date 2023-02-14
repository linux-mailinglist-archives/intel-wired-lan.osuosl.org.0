Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D99B696AAD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Feb 2023 18:02:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F054E40B7F;
	Tue, 14 Feb 2023 17:02:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F054E40B7F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676394145;
	bh=Xt/o4RF5UDpUfqbBa3LYIj7mulyZ7gQLV3I1r0bY2NY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UzBAeRkpMDw6MZSxJ8jLaB+SewElFgvP2y1cvgEavMwCX+KlwO4bF2o1nkscakkyg
	 ahoeZcJ0TRVxZr2wh4roE1FwnokIN/evUNVsyAJTSc7LLHMHZKN+eDmH5jBqBO4UYX
	 fcyfWbSMDj/wRWI0LuzG6CuCGbEN4E8WqoygOr6XLFnYevZkn55Fs0Pm6VWX1ak2up
	 0QuOyl1L/hDnaAz2zGdLeV7LqsDGyx/+isrqfmmoVd81tMSDtm1BnLFqv1F/oxvWP9
	 R1h3vwT+tE10+vV4lm/LtvsupCqsKt55Gv76m9S4o4KHBieGRME0jLT+EUbAWRIP2w
	 YO/vm7RFbUWLw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VQyIcoQzlwPY; Tue, 14 Feb 2023 17:02:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EBA0340B6D;
	Tue, 14 Feb 2023 17:02:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EBA0340B6D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6E39D1BF57F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 17:02:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 54ABD40B6D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 17:02:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 54ABD40B6D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FPCChtv1zCU4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Feb 2023 17:02:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 15EB340541
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 15EB340541
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 17:02:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="417428548"
X-IronPort-AV: E=Sophos;i="5.97,297,1669104000"; d="scan'208";a="417428548"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 09:02:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="778419533"
X-IronPort-AV: E=Sophos;i="5.97,297,1669104000"; d="scan'208";a="778419533"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 14 Feb 2023 09:02:17 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 14 Feb 2023 09:02:16 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 14 Feb 2023 09:02:16 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 14 Feb 2023 09:02:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K0WcNWTXLIHqe5d7wQy7pIbxUoxxIBXSCXPwBkwa5UKK66LnBcAbFO3odDEjxuHuqei4hFWd9f3gYMkKE+gHX9LpymtSPN1+Y8Ml9uVoqBgQSj34PpuAZ4i81Htftq9MkSBeec0WzbUpFIRBMEQoKUQSYAvj2VvlD4PyjN+X6mfiJHISlHTNzrIZbFYkVG72F43G7u+TNvJnA/g6Ntgi27GWPh3Rwdebu4PmXGp7SBuvRSUNHedEsmgYNYpjQ8t2jzkujm4H4yluqUA/S6JRCWEnGl2vQzaV/4cq6q0eqCJ6laVg6Oic1LpxdegnC06dy3eKBXP/oLgq1wrwazyFBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NNT2eIzn9jAyNi9Z6G8SKQqkaF7deZAR1ZUF/ESy5m8=;
 b=N/JfrfHLfNeWW0AuGU1Q8bm3+lcshSbjFi41WKqNkMYm45sDZxafAS0xERBPvBOb98SImTs2DDwLuexH1DVK9nanHyDSYsi3axpvCw4spHWkWPXMVfnJD2QEX4b56n+g3GQ56UekB9WXDQcvClmN1ag7C/Bd7gEuOpD5OL+9APVb17vNq0UsqEtXWVPtjnQMnaDXlw16NVm5SZ4gLOljzkF/4cCP03BRkWZbxALT+rsy84mdkYwGadxmO2mmJkR/ujjCvP1FofQSuEl5plxkwwoXcXYwYUOJupXXw9mnin9UH8vuvGmVyNFP5oVrw4s0oU6TNFm6AN6u/vfYPbX3Ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5028.namprd11.prod.outlook.com (2603:10b6:303:9a::12)
 by DM4PR11MB6214.namprd11.prod.outlook.com (2603:10b6:8:ac::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6086.26; Tue, 14 Feb 2023 17:02:13 +0000
Received: from CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::99a5:f631:da8e:8145]) by CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::99a5:f631:da8e:8145%6]) with mapi id 15.20.6086.026; Tue, 14 Feb 2023
 17:02:12 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: Add crosstimestamping on
 E823 devices
Thread-Index: AQHYzm9lpf08JaD9dECxRW+imYlR6a7PjQXA
Date: Tue, 14 Feb 2023 17:02:12 +0000
Message-ID: <CO1PR11MB5028DD836DAB2E11FB224C69A0A29@CO1PR11MB5028.namprd11.prod.outlook.com>
References: <20220922103732.19324-1-karol.kolacinski@intel.com>
In-Reply-To: <20220922103732.19324-1-karol.kolacinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5028:EE_|DM4PR11MB6214:EE_
x-ms-office365-filtering-correlation-id: 232f76fe-25ad-48d0-7970-08db0ead37a0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PigLlCofO/y/nn/3H/JQzLmtztsJLYuXo9YcS/Dhy1lZ2xoJru/0Q+g3Zns9hGLqqT9xNqYTDWm0ARS/iIDxjjNQBFEWvB/9o3cBgQI7yntC0NxB4nW3zmxbpw24vtVr35sB6k44iAA/QJGAefLNk5yb7BnffnUJhWqtTaqEWfuLgTDSn9Gie6cTZG0QgQM+J9+wgSHZPF2OXHtAR3C7Hvq7+H0dtuqpml3rAf6WNTvpFJi5uV7wYikVjKDuUq0Uzj7ot4wHX7E8hX0ZFfN8WGrXz7N/15UFaJDKEUX0gm8/9J9mKc4eJSyrIgORtVR1IUs9TdYzhQt4VINSFnt3r4f+TjDNyiuABOaY6dFSNm9hEUlXQSJ6ad4YxylGbdzxYyZ4Vhk9RXiwj5jXXo0T+OJQ06TvaMNLGYM1/eSNe38yrDh9jiJBHKbAq/CSmjXJyIapZpJR5nyTNjBkf6IB5OQyoswFQLYIBNQi3ktKB2AU868XCskGfPcHKTW3E29qHaBOJdJIHy3TaxDDQiw9brSzanHZL//rq8UxC4tLx7x85bGxc4+STjxgakiOV927V8Y1RpOxu5uFMRrKBwFu5z2KXY2tuXuwY1SQ28CQkFhDu1vOPYsdG5QijDgEl/lZgZoAaqBZnfK/wmgel9dTmgfAzRHEgSUtO/HcFO6nnpbunV1IHb1PmP5jgbGCdmTT67zXLgoTnIAeFJJ3Bknzig==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5028.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(136003)(39860400002)(376002)(396003)(346002)(451199018)(82960400001)(38070700005)(38100700002)(122000001)(33656002)(55016003)(86362001)(110136005)(76116006)(66946007)(66446008)(66556008)(66476007)(64756008)(4326008)(8676002)(316002)(478600001)(107886003)(6506007)(53546011)(7696005)(71200400001)(26005)(186003)(9686003)(5660300002)(8936002)(52536014)(2906002)(4744005)(41300700001)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6kBVdelDctkPUxfy23jnKO6FoxuR2z+dzaWUyXMLRuoM1231+9b0/3PXxVao?=
 =?us-ascii?Q?AmeIINA3PHDvKXqgJizzc46cp5BPSBuQ1GjTh/7i4GEoI44auxY/o1N8EsQb?=
 =?us-ascii?Q?Sp89aAFm/4D5p24SRy3r3u9uUt29sjawtTUpXw7wtl9LkMBynmHipxPmRLTU?=
 =?us-ascii?Q?fPMUswZGCjL7LUZpd8oIYeXxf/PAIkjyBYG24COqz8zK47diadectJTvwIUS?=
 =?us-ascii?Q?dHHDzGP47+BtmIUJ+A4ONwnC6/8Rm1b3V3Ed6+lXjBSpk47Pp10Xk18i5DG0?=
 =?us-ascii?Q?Tzexv5TsGwPLbNxPm8cm98trMpN4Gbuoy7Vm95n6w2mBM/5ULSxVx6o7PNK7?=
 =?us-ascii?Q?gfx22OJxlUMbjfa1ibps7oBVDzFooKMa0u3h/igZHCD09QHtppHZEm4IHmU0?=
 =?us-ascii?Q?qKun1dCVg2kUg+0tE6GUNkv6xxrt7nViGMsSAP56nD+o1bh9ZG7+kLLxm0t5?=
 =?us-ascii?Q?abUrt6hC9H1JizXHY6Fnu8G2jVPkLVL1A6YK0GVO7BL0PDqP+G6+TI6BV+Tz?=
 =?us-ascii?Q?P/V0VzUSothhiDZKgUT9SUwLGA1ozVm3wNqE9p3xoPCHrox3+n4GWWqsbZia?=
 =?us-ascii?Q?S1HYc9DrzooUcSnPOQda13X0UIvcmF1ZTkQry0Pc5YzldC6YbheQ/dxVq8l3?=
 =?us-ascii?Q?HOSV1UegjSamdc9J8xRXFovGne/uBzbQbDJI1oY/78AzlzG2HLb6XcKsyLo7?=
 =?us-ascii?Q?3vb9vlh0qHfJO9re6otHegF2ocTlHm24Bt1nXCAe0c5KRS+HcNRZiqEd/tfl?=
 =?us-ascii?Q?ealvwT+XRj+aIW3rKsua5Fw+qp39yY0Lz7Sx6MTIDCf5Gr3IcKZcP0orJvMg?=
 =?us-ascii?Q?0WRLPiitvuTg8KSZ5ojNwypG+QobK52YaoCwbudMcDhmLVtYoxOjXb0k6q+W?=
 =?us-ascii?Q?IeyrNiCDYPWstqUTWby9K8Ew2fc+AU/Dwfy5kxJV780xpMNdGX4PCeYZDBEV?=
 =?us-ascii?Q?gU3HhX9m7mR5LJIYmyjP4R7STCoXe+2ybINx3Q7KJVcIe8xJuTXjjm/qjN/S?=
 =?us-ascii?Q?jnMVxgnfBky//V4oKbuE2EJCTY4NfY1iLTf9AoXu+NfbwZLXyo56Q2Z3Jh1u?=
 =?us-ascii?Q?xmdH3B0RTMIus48my1/FC/I2px8msVshqPxO8STc1SZllc8j5xp3AnuAph4P?=
 =?us-ascii?Q?CpV+mtEEyqGiE79LD5/Xg5gmjI1pxOs+6d8h2PDb3/gtmeQ9ddwk6ed3RuDq?=
 =?us-ascii?Q?nNlsGXkYZKhHeY6IfK5LfcL+o2xVYryWFkzrTnLIDD7jAnvb15wK8mfwsJxq?=
 =?us-ascii?Q?JKFnSFUamcPUibVF9McMwNCJxZ5e0AhVYsqyaws/Fz5zd5GhNy1Y5bebhqEa?=
 =?us-ascii?Q?9cY3mCRrKVUPqtOV9uEInbvgXpM8kQCB6ajp/pgEF/b6Vym4oJRBYPWrDB6C?=
 =?us-ascii?Q?AZwg/1s/ITk+32o/2ER3QY3nISpMfQ0Muw4uEHded3GCRLaxDjjuc2GgFogC?=
 =?us-ascii?Q?rsEPmXtic6ltZ3q1ZJMhfamGiQVDTivIFJRlq1LdWX5G6AiZ0Im+bhJaNQ4j?=
 =?us-ascii?Q?+Vq1gJlKSU97B81VZ2OeCi9ARo8yGrtq4vWruHfiCb+gUWXYgcng2UWsm3V6?=
 =?us-ascii?Q?zE1CkXlhHESO5+HzcD4HLGdwOhPIjiO3sIdffIt8Dy1wD4ri454SHDF4ra1B?=
 =?us-ascii?Q?kQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5028.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 232f76fe-25ad-48d0-7970-08db0ead37a0
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Feb 2023 17:02:12.7827 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 874LMxiVwOXnRk2N2M6+MZoUNeLBo8itZ5tf4tV+bLMBrJI+of+Bfhxz9NjnezuoggfwJ4h1PZKk7IuFJmVqLDDY2UD2dPfkEFJAvnzmw/g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6214
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676394138; x=1707930138;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UPczzFXI5luH1ikDRj4KWpp1IihaRa+sEYUpq2iZbPY=;
 b=AuL8C1jgubPARr7eBmh7PSbTD4C3l58W2vuLyHKB4eJ6EPmezAMvg6Xu
 UHVLvc3PqOapKlnLuRRHNzbczdvhYi+B6tqJTpsKTmFeCbLbgCBxTMh7w
 sNtYUT+ByRcQOIuYDIScxBSVNSgODE1mT/TS5Aw3EfbrgL2P56gXaupcS
 kBECdwV4DThLaPEatFIyIZua9G4kaGvj+sX0U1v7ELfc/xXfjPpRYxNsJ
 3KmtzMtDnKR+wXLNWt/b2C1pKvCUmghb5vLsRZG0BOoRTtRhFALNIDX6T
 Rpal/LeVghab/s1lB8wsysMIH9u5/mlyzAsk+5nCDPgmPVSMZie9L8idy
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AuL8C1jg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Add crosstimestamping
 on E823 devices
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
Cc: "Kolacinski, Karol" <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> cross timestamping not working as expected in E823
> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Karol Kolacinski
> Sent: Thursday, September 22, 2022 3:38 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kolacinski, Karol <karol.kolacinski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next] ice: Add crosstimestamping on E823 devices
>
> E823 devices on supported platforms can generate a cross timestamp between the platform ART and the device time. This process allows for very precise measurement of the difference between the PTP hardware clock and the platform time.
>
> This is only supported if we know the TSC frequency relative to ART, so we do not enable this unless the boot CPU has a known TSC frequency (as required by convert_art_ns_to_tsc).
>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 16 +++++++++++-----
>  1 file changed, 11 insertions(+), 5 deletions(-)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
