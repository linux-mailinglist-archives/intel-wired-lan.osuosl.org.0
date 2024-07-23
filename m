Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 732CD939F8C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2024 13:16:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F024D40450;
	Tue, 23 Jul 2024 11:16:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hNEmR3oXhUUN; Tue, 23 Jul 2024 11:16:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E01A64040B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721733384;
	bh=7/Dy0xmPGu9o0hIUhHrHzZjYwbRZRtOeqpoWS+LSvZs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vGuco2xerg8N/TH5sCfNrl8X9Q22GrtllLkQkkJHzJsK6UW2bnlp5TQx00729SHPN
	 79x3uu03lQAfT3QieT145fRO0DR1bqlEhDJetpRTo3vZZfKz/HEIaCOycStqLy2oS4
	 PEp8Z1dWmm1DUTnILemgn/75zJC9fHMvxg21G9gEWzxjmcc+hxTW7A5F+oGtgbI/cc
	 LajcAWkP1sat6bwbhIOWhLwQGCrJFHHskH5qH4LamNp9aNRx7YIrYNk8MfxpSJrxGp
	 Lpw6KsRC3yXlIC8r9lUKQAZp0udzSaj5zJrw2YW0uSIdUJ0CZMoYBq2+ySucuo8KJ2
	 2gjg6OBzO8ivA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E01A64040B;
	Tue, 23 Jul 2024 11:16:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4DD551BF28B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 11:16:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 367DB40125
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 11:16:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z9IOP87AUFRl for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2024 11:16:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org ECE0440119
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ECE0440119
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ECE0440119
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 11:16:20 +0000 (UTC)
X-CSE-ConnectionGUID: l89wSJqBRLS+bOLSkoVu7Q==
X-CSE-MsgGUID: MyqgP93RSKyo/oSk9Ve5VA==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="29940425"
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="29940425"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 04:16:20 -0700
X-CSE-ConnectionGUID: gpUm5yL6Qde4FLJzamNWww==
X-CSE-MsgGUID: +LiYesQ4TJqDbqy3VZyOAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="83212375"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jul 2024 04:16:17 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 04:16:16 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 04:15:50 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 23 Jul 2024 04:15:50 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 23 Jul 2024 04:15:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d4Dxluw1vL3IGMQGzzbLf5UgsWOBibT7SAV4bqDCYwGdcY4nOreEv9f1HwHiX4uZfytbLdSGHEqEHwzLowHArrDNDC//F96nn+IBc7nf82eCW7PjVw5JibO7x2hI8JzsfIfjpO63pz3qh4Ys531XD1hXLOKMiULx0eH4BcOQSDHqYNtlHHiwm7xOR4JvzQjhFHcJ+Uz+/LO0Pepoh7w/sU/OdBiZGDbcYnu2PNJzlpAI7KlUgZD/DsoVuM4MIPFbIYy3ex6gS/eR7JkVxoCTkcm5Z+5NIbWodtDm/fgfM3gJQHiUwAP4qB4W2+RBiuXNDkIvFnOcM/Fd7prUGe2x1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7/Dy0xmPGu9o0hIUhHrHzZjYwbRZRtOeqpoWS+LSvZs=;
 b=ZIk1E6E89N17/hjMJS770vhbTpdKY1Yl/a96vgR/UCVAD8wdW1jhJSrOnT8MUunq+lvFv3PiSRu7LdznA856ivc6qIgYFxWFOoXLKeZCQgxGN06aYSYyc/UbGmMr5955Pw9vo3yJi06lSSz95NMFTnQE/P0NuFQ+ZyrhYXV+Rsc2ZlfyfQDyP4uH7iSHw3kaB7+2x2u03XYnW5huXbwuaLUp7cbwUERXn0H1rLT/VdZOlOmitZUwa4GSfEh2U4etcY/Yr7+po/q7O2xr8NfWE2YJfGjqOJkDHIXGMfYv8aPjtNpY5GQwZhSGkL42YBuy7LqKWGwoWoJSxJpHb8y0xA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by DM6PR11MB4611.namprd11.prod.outlook.com (2603:10b6:5:2a5::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.15; Tue, 23 Jul
 2024 11:15:27 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.7784.016; Tue, 23 Jul 2024
 11:15:27 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Simon Horman <horms@kernel.org>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [iwl-next v5 05/15] ice: allocate devlink for
 subfunction
Thread-Index: AQHauAObzOR0cHeqn06eCXflv9EmxrHHIrIAgD1Qb/A=
Date: Tue, 23 Jul 2024 11:15:27 +0000
Message-ID: <SJ0PR11MB5865EE561C6E01A182BDE2A28FA92@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20240606112503.1939759-1-michal.swiatkowski@linux.intel.com>
 <20240606112503.1939759-6-michal.swiatkowski@linux.intel.com>
 <20240614105526.GG8447@kernel.org>
In-Reply-To: <20240614105526.GG8447@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|DM6PR11MB4611:EE_
x-ms-office365-filtering-correlation-id: 4d3bd589-9474-4cbf-86dd-08dcab08c1ad
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?vFgp0KGDVdEvXnio3a1qp+4178fZBNxoFGnsn7CIlw/Nu/PbqlXcxZuCimCk?=
 =?us-ascii?Q?3M5T7w7MLko2Kw06+Oo8vWEbztSEphCiXyqoICbKfaSuSjrXu7fMilAfLfKb?=
 =?us-ascii?Q?v0m/5Hj1qhrYAAfchpzPMqcsKnb+1t9tWiOcSQBDM56zCHTNyIYQrT64Utgu?=
 =?us-ascii?Q?l8Vt8A0NRQcgrcS1gG8xMHFVWhEt5+DazM7PPKIdEUeo+nTTDi/nDJbiIDRy?=
 =?us-ascii?Q?YKl6U8mSAxg4lrTUe6TSSyRiHQeJ2z1W5PEeFd/QrgVGXwlJrVzZcIc0RCAr?=
 =?us-ascii?Q?E3TkV9pJJ8/UkvzCSASGXTsPH82KBEmHhAmbmitZd+NkLD8gkzYHJU4OBTwM?=
 =?us-ascii?Q?LkyO02lFWvxTlQow4e50uypaf34fclUV13McpXhDHLFsHhm7wdyHEFQQpRsb?=
 =?us-ascii?Q?hQVmG64/fAvXLeyyIEx1bqRePKeoLhlagiEF8IqfNEIpcDeTiSNXmmM1mSJ8?=
 =?us-ascii?Q?epMzeGFHy6NnYWyuTLNtSpnBsg1gqavq9gUVO+YODwXPET6jaemYf/5DzUIw?=
 =?us-ascii?Q?TFu5bux+6RyX0Hvk56jeQZ6YTAkjb6h8CtCxNLQ1s+knbnZsW96v+jULLoVx?=
 =?us-ascii?Q?SEFJZy/F7pQgBAeFV93Vyph/YGbxSpnBq7F2/ePbHD0sEN0VBc66sPv5Fm+z?=
 =?us-ascii?Q?5l4kcCLzPDezdvJXuIX5DE1/1rFGMkU/v5EEoYfqqjGP0vuLkJ0h/yc8agWO?=
 =?us-ascii?Q?8JcAawtnrnbL6vqexBQIoJsypGQDTB6KOcw5/7jpVSWfk08m9zsdlS4AC3sB?=
 =?us-ascii?Q?a4CJTt3WoM8bXXOa2rxIjx3U91mcdXgtmqAzIrftNDCtJAWffdKIJIPF4w33?=
 =?us-ascii?Q?fBymwjv8rgswGiChkyuE2dgF+pS4GK/oUt+9HnjLqVIiCxwwmL/l+IPGiJte?=
 =?us-ascii?Q?k5IM/u6Frr5bKR1xW1QSPuNohaSKKEidrwbaG3ldDvEzb3lpE4KaQ4wp8Eft?=
 =?us-ascii?Q?jVLiiGAMgOazUJi/d8TI2KiRHWlpVLawV2YTPCAZp9oMoAwuBgIEwfVmeV0W?=
 =?us-ascii?Q?nZ45ay3EhkpRQnYoBZRXALW3m+cFSlzdVfw7PA/uNMsEzSM+zPYShR5b4xBw?=
 =?us-ascii?Q?kwX5xKbXZWXRD2YvEyNymaRZ8CRqR3qSXfrKXWHLw2gHruPTwmbp5DeG79sT?=
 =?us-ascii?Q?6+RDCZggR/xeIVmwAXCwiUsKuSjdiwK3s5+m5B8Z/8p0Xk8nlQ7fpHGsj8jr?=
 =?us-ascii?Q?GdM0qmPwPq+a9FEao/WWYgmmotue47n8YF0zkpoE3LV5s4JZf+Mp+0FBW5Uq?=
 =?us-ascii?Q?bRFWAceCiYRAoaiHdnVvOjxkrSA7wVa76N9ojqpbKxhDub7Ay5pGbcwz9xn7?=
 =?us-ascii?Q?JJiIZ0PHmyB8VSYbjiLz5QhybYoN+Sp1krkRRTBKJG4FpUc0hWtqf/YupToJ?=
 =?us-ascii?Q?jK4j8KOHAdKaJXfkSCnWAR36j3bbVvxyp6mH0imB6GrskL6Sbg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6KXRnMRzTyYgWu9+49b+CsQcm+E0A8nTjrxF6PGMxmzZPLqW26OJqKV/p0jD?=
 =?us-ascii?Q?wh54Yn+L71wSa2iBoueVqmLvrlPfY5ldYwghn1wK14g/MjpSdgix0Swg46tk?=
 =?us-ascii?Q?UoHLk1SKkWPKU+02T0AJZD3Q7eULezgmW+CdnD0HSGp2L/QEbbgVFx/3+Krh?=
 =?us-ascii?Q?qhxo2QVnoqPReDP3hMNZ7l7+gvFHqvephnmp3V7M9T6sFwA73iSRjndKdUaj?=
 =?us-ascii?Q?h3ubA/CCbO/uEEwa1RjgbD303McNT7JO9e1RgRuLwn+Iu0m4DbacdQmRBYAR?=
 =?us-ascii?Q?QdbOnQYJ/Z0YiwJ5G78bqbvEp3moHuC3ulrYAhxN3OAqTC6PdBed0/s6qZQc?=
 =?us-ascii?Q?IJANArlCRsS3WYIN+va0eDc3e5UQ8FtLvFbo65IT2IJ26Ph6VO4utBxSJhZz?=
 =?us-ascii?Q?WmwYD28i/TIyvcv4dwpEv2xuoNkrxJCr3uCMD4SXSbQd0UzQf2vRgS3+Q7DP?=
 =?us-ascii?Q?GGbUAFj70k9v5pzfomntuL6EKj4kAmqv1f8iAE9KaJb/9InhRNyplJk+UUbh?=
 =?us-ascii?Q?eYJccsn8904zy3kog7RIjtGvbaiWTMceN5kZCkjNi0Edi0KX2cQxu6rgzaAH?=
 =?us-ascii?Q?OSznJfS27O2gdbH+n/B+id2vv/3LoK1A/UdxqA8ju4bhuAWaTTHVHamAkMhh?=
 =?us-ascii?Q?RJlGX+V75EH8Dt0pmGooGYTR1sYQAVR/vLjDIBHkZTlkrd9Xn4scD1nu45RR?=
 =?us-ascii?Q?+CRd8ql8MquM59PVHAEw2TpCx/wlLPKplc6qk9FRdcKqwpVCblgJkNWUV7dn?=
 =?us-ascii?Q?qpeIY+SkttUGHRVV1HOxjz8bM35knHogWJIzE+6NgYqPcyg1fNZxu2qI/bvB?=
 =?us-ascii?Q?dbtPVgKKIb06yZaY8XaEkbu3n4+G/QJLrfvlkAxbhgQC9Fzk7k26WU52T6Xz?=
 =?us-ascii?Q?Mp2pSME4Zh+lPJMCAvcQ0MsOeq2nY1KAznwbPWmJqH3a93v2KXOA6OampZKW?=
 =?us-ascii?Q?qBNi+mxjU1LTNpIORGQ3xOEzhWCceWJXy2lT/VpA67KBv8LM5yyLduqdyPhb?=
 =?us-ascii?Q?Yfrl/MwyKregpNOUhpyuMrsb/9OBrk3qxiVD0HuKxAhtCSBIf8UzVbzV65n6?=
 =?us-ascii?Q?vqGX8g0WSkxm4BT9Nvx2J6WaBm/2xImXeJMC8tWvDJhk3PJe23aOnnJ8doRM?=
 =?us-ascii?Q?nMlXhcUnFNBd+jQIQE5vgdeZeRMWuarAhXmQZQ7XnZ22DhIeiONCb8aN6vFq?=
 =?us-ascii?Q?1EDclpuzUSY+MFcPq4wDB2Dkp3NcygXtLz0Thj89di4aL/P6QqORWxdBeqyI?=
 =?us-ascii?Q?buyy9r1OJvXlyIz0MKsiYAx8OnffK/aazDix1D9LC445oonnFISqnNbuu6cH?=
 =?us-ascii?Q?28Eej+voi8UtCtj6Kfb5HsotVccK9VdbcbBtdZNRzv/Fv/OrqMPIVUHR6Nbn?=
 =?us-ascii?Q?OvU4S2B2Z493RtNOTH1yC8q3NXq48J7rz9yWZa5uOPXlSPcMPzxIkFcM54wK?=
 =?us-ascii?Q?h2rcQ6aN0LDWwEDUBts9/AakqqUmMdr4yzFfcMc3PTp/uxcO5u50KxmRd9C7?=
 =?us-ascii?Q?nBETqjBDYkcCF31xA7+wNy2Tm8r/KDMjDQ2QURXRDJ1CnBH7XVxb2L+x+ZLl?=
 =?us-ascii?Q?trpDQpNpef7vv4lFqsFTCuxb/9S/T/lq2RR696PGkUY1nG0mmH3h5DsfIsbf?=
 =?us-ascii?Q?0w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d3bd589-9474-4cbf-86dd-08dcab08c1ad
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2024 11:15:27.6946 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Tjz3pwrurve+1rykoUd2KzhwxE0TDhSZqwgUiZUuG9Rxzu3I/cU1Vy5kPxF5NP9IZ46yv1SPPKx8siVpvaQJkICJhYxRxpzLPlxwGN0k17c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4611
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721733381; x=1753269381;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7/Dy0xmPGu9o0hIUhHrHzZjYwbRZRtOeqpoWS+LSvZs=;
 b=JplPT1NL2nF22/15XoyVdsn3Tju3a1wvA36AYMFTzEjlYu6xkiiHzlk+
 aUkis4hjJ9m7scmOUDM5HysuQh+aZ6TVa+vJRihaP4K2tr6cqP8XkbNaY
 VZl4fa6d54SvsW6bVay8zackaTnQZGYfCSZPBIep71p9M5Nh+k9w6Jn4n
 KrEdykCkmAFCFqXiWIcH8mYM4peJ/rC9LG5RxGsB9/Ojv/qUnRYJLHk2o
 Mekb11yRhnxT/ATduTFjo9yUBUdUcTETC6NTpmu8v5hmA/0vRIygUD1Na
 aSRwldrnzSzV/0M+YgRvZXpikB6hoKZJIxI6JOiZMGVgcR67t9IXfH393
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JplPT1NL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v5 05/15] ice: allocate devlink for
 subfunction
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
Cc: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, "Samudrala,
 Sridhar" <sridhar.samudrala@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Polchlopek,
 Mateusz" <mateusz.polchlopek@intel.com>,
 "kalesh-anakkur.purayil@broadcom.com" <kalesh-anakkur.purayil@broadcom.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "shayd@nvidia.com" <shayd@nvidia.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "pio.raczynski@gmail.com" <pio.raczynski@gmail.com>,
 "jiri@nvidia.com" <jiri@nvidia.com>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, "Drewek,
 Wojciech" <wojciech.drewek@intel.com>, "Kubiak,
 Michal" <michal.kubiak@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of S=
imon
> Horman
> Sent: Friday, June 14, 2024 12:55 PM
> To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Cc: shayd@nvidia.com; Fijalkowski, Maciej <maciej.fijalkowski@intel.com>;
> Polchlopek, Mateusz <mateusz.polchlopek@intel.com>; netdev@vger.kernel.or=
g;
> jiri@nvidia.com; kalesh-anakkur.purayil@broadcom.com; Kubiak, Michal
> <michal.kubiak@intel.com>; intel-wired-lan@lists.osuosl.org;
> pio.raczynski@gmail.com; Samudrala, Sridhar <sridhar.samudrala@intel.com>=
;
> Keller, Jacob E <jacob.e.keller@intel.com>; Drewek, Wojciech
> <wojciech.drewek@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: Re: [Intel-wired-lan] [iwl-next v5 05/15] ice: allocate devlink =
for
> subfunction
>=20
> On Thu, Jun 06, 2024 at 01:24:53PM +0200, Michal Swiatkowski wrote:
> > From: Piotr Raczynski <piotr.raczynski@intel.com>
> >
> > Make devlink allocation function generic to use it for PF and for SF.
> >
> > Add function for SF devlink port creation. It will be used in next
> > patch.
> >
> > Create header file for subfunction device. Define subfunction device
> > structure there as it is needed for devlink allocation and port
> > creation.
> >
> > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>=20
> Thanks Piotr,
>=20
> I believe this addresses Jiri's review of v4.
> And the minor nit below not withstanding, this looks good to me.
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>
>=20
> ...
>=20
> > diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c
> > b/drivers/net/ethernet/intel/ice/devlink/devlink.c
>=20
> ...
>=20


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


