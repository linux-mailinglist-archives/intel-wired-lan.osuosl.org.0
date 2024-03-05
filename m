Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E428714BB
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Mar 2024 05:29:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2361E4082D;
	Tue,  5 Mar 2024 04:29:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I63JDiNl5XGu; Tue,  5 Mar 2024 04:29:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F24740830
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709612959;
	bh=DSTw2lNkbBbCiziqDxrP8Lf2gtzcya8nXDMA70/l5Co=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=f2qN3L53IC90MsMv6iPE/9DcFLamyeV2wA5156iKGc+5+4Sfd+9omuaNci0j3SwPy
	 milHj+5TP7Wr3EzwAfgseYH1mL+bIN4ANP2aWBjLYMT9bXESgn0BvGUf4CDnMCdFL2
	 JcH+zSPaoCKe5uUXOSx/riCyUPzCcnhU4yO4IOFUhJzGKdsiOwkJVxZJ9eTME5QkYf
	 WsMofwnLSfGiDrWHvL3NDyvtzbTzA9fFhcjU/fDI1/Z5Hr79i4Oh3oOc4QPuvaX9A9
	 YESqv+3SIyGI58TiXQFmS/wFrE1RT1JMLZfOYRWonsjRGzOdHqvtR900le+Z54ULA6
	 ubMeELcULVhPg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8F24740830;
	Tue,  5 Mar 2024 04:29:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C57BA1BF2C7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 04:29:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AF38B60B4C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 04:29:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WP4IKR8uKyj2 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Mar 2024 04:29:15 +0000 (UTC)
Received-SPF: Temperror (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 90B9160B3A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 90B9160B3A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 90B9160B3A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 04:28:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="29565272"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; d="scan'208";a="29565272"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 20:28:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="9340854"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Mar 2024 20:28:52 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Mar 2024 20:28:51 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 4 Mar 2024 20:28:51 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 4 Mar 2024 20:28:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fc0tljasxGjg7MyCBTClZeciwGN9ehiYxf9Kf/GDVB/BYPPtu4TubyN252FyEJMr9Wr5VozHRroBO7jlhb+kq5SQPjrMQr9PMoAypg7B7F3J+PlmQysIQtMe3I1t3je9b122YwjiUGbYTrtO/MAXF2oiddGq7i1GFgFRu2/4+Niz16ESqx+HkygnPoT2V2S/qerkKIbg3ZIUKgXiX7Wue7E8CXFrEiuQcUBXrC9+CX4RfXXEL0aKGbVlUChAgmOINbC0eCaignN/AOMdE+Igs4JjWLXihUHcXTCUN+/uJIzIPHoUOSTeSnnoyrQvp5g54mNkWkV3rDyUMyn80T8GcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DSTw2lNkbBbCiziqDxrP8Lf2gtzcya8nXDMA70/l5Co=;
 b=E6cWyQiuk+XMaBng8yORRqc8Pu2c7NOStqtxYnljuMLze2tz/FKu+HsLyYDpA1q3/xv2G7EkTqbUKe6pyQABPphDx8JArMRJvnyhg9+N7zAyFnX4vuAIEpaXAok5T9cC4sC/oWX1JbBEEf3A6QyObjgO/0uGJR0yaw992ZfNiD8MiSb56DVLdkoATGSqite2RFfpnWZu8axtCft1jrsO489sfu6QfQCtHYip8To9xFI3KB89xLlvQ1Z7rMB+EbEjK9oHFCr7X+hc5dKEqxdACERJyUb7NmsplJXwrsezzkTMbeD3A3uvuceSVpIQm7iCJttTvqjYa+omIExNpa6/6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by PH7PR11MB8456.namprd11.prod.outlook.com (2603:10b6:510:2fe::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.23; Tue, 5 Mar
 2024 04:28:48 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9%2]) with mapi id 15.20.7362.019; Tue, 5 Mar 2024
 04:28:48 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: Takeru Hayasaka <hayatake396@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v8 1/2] ethtool: Add GTP RSS
 hash options to ethtool.h
Thread-Index: AQHaXVfYPrQaFDDbUU2tyu9IZKEtzLEjR9cwgAVbwwCAAAsMMA==
Date: Tue, 5 Mar 2024 04:28:48 +0000
Message-ID: <CYYPR11MB84290126F884C2AB4F9AA5FBBD222@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240212020403.1639030-1-hayatake396@gmail.com>
 <CYYPR11MB8429FCD568EE2AF90AEE2CABBD5E2@CYYPR11MB8429.namprd11.prod.outlook.com>
 <CADFiAc++edOb7-O6yCUgpAaonZ1sQdkrwwH8432D=e40g1CwoQ@mail.gmail.com>
In-Reply-To: <CADFiAc++edOb7-O6yCUgpAaonZ1sQdkrwwH8432D=e40g1CwoQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|PH7PR11MB8456:EE_
x-ms-office365-filtering-correlation-id: 65fbb380-4404-4675-3a2a-08dc3cccc0b9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: L96b2rFef1Ta5iIuTCrwXq+sjDVFVEY0z+lIB1la82KS1Q3+yoqnLTwswYdQ/1dXQP1PUT3qaacCB8dSRJV3I+jQZeYrA3zdbZqo97wHwroCp78eVn6VzpEFv4e5k2DKKbVakJP40xEiDzWB7RTYTUPHBlqRxjnu9603yWCRaYiVbxHqwKWxEFiFFSdWYGrRqGPoLqGMgyyfstkrcLs5sbaLZeMu6g5QyzkJKMPnmQREv1OkS6MM0gRYrUfMkzq8PtDsumPOVIVakuOmL2mfuVeoMpsNfggtRf2F437m4Ke+LDlAbgkcMDYaiSGy0kJovQDXYAY1yQoYOjvmcHNVGS3376l3jTjOkIjGU4yHkaF88IRFqhagcsIKmkBdjZM9NIyrbUJ6inlF+iYF81gP7uTuZkOIM65EOz1z6VE/SDrEJklxzeH3D/OHJ0iVG2poX0aD/+IhQTFbuI8s8ptWCUWege4VDJsq38BGCeqe0b77OxAxeg/dSnVXAgwAhfNGwtt/kpwwPZzfvXLIhJjVLF5wgrPQ8GUWS/fF2fWvwOpgzKaOu5yUiPOBLhBxmNvrl+QeLlu7NVasshvAe3xj/W81K/nhaqQWG6Qa9IVfScEPEOURaNsA6kPjRx8uEN6/bp/W8qWG7ozXGDbEQpplUj9DRBjtPllTR+J6cfSVMw8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eGlpd2ZjbkliQnpMQno5SktRWXJOamsybUdQajZ6OTdlelN2Y0E1c0tFeS9W?=
 =?utf-8?B?aG90bjlOQmhQekZBOXp3OGFpOWMzcGNLd2NFbHdVU2cwUDhtMlZSK2VNcG40?=
 =?utf-8?B?WjJxb3hiVVpKMWlCVi9kSkxhVHdubWNMaHR5bWFpYVd1Q1J4c2ZWUm04NEJP?=
 =?utf-8?B?dDZMT3RLeXFSQUZ3UVgrMnhOelRheXVsb3Byc1p6MUJmWE5QTkpqUjFYcG1w?=
 =?utf-8?B?ZElERE5KWmNtMXVGMU9veklzMTFTdlo0SXd1elphV3V6VHNLNkJWNHJmNmJB?=
 =?utf-8?B?Rm9YV1h5NkF5ZXpBWnVabTFSWHhxNXpWYldub1MzVTRqS3FzeE5mbk1MSFdS?=
 =?utf-8?B?YW03cHVraGxzQVFmYkYwQU5ieW9sWTJPQXRaK2YzWGZPZHRzdkFFQjVzYXZS?=
 =?utf-8?B?cmtlZGdKYVNCMzBxQ0dxbG5uY0JjRlJVZ1ozcXpKNTRvVW5JM1Q4bCtLalcz?=
 =?utf-8?B?YzFOR25Pc0pKWU1pSHVxUklnK3p0M2hzS09Qc1N3cEtRRlpBdVJnRCtSSVFz?=
 =?utf-8?B?bjZvUlpqeHQ5TEF6cmxUKzdkajI5YkdieEdrb0hra2NGN25NNXJRc1ZXeVE1?=
 =?utf-8?B?SkIrL2NIRTVsY3pIODJ5RU5QcGRuMHF0eE5nSFBObmNFM1ZsVTR5TzYxQmRW?=
 =?utf-8?B?Q0U0QW41c2o1RnEyUTF5UU03V2xJVEJUTGVjbFl0eTFJK2J0UTRHbk1EZ3hw?=
 =?utf-8?B?NjVnY0Zya0F5M3BxdlYyVVZQeCtwTGlwZHltZEtoWGZKeEF1clBwNk90Qkpw?=
 =?utf-8?B?NlhWaTZ6WSt0N2tLNzdxWTBHbXk2N1FEY09IM1gwemJRdk1WL0FGMmZkaXc2?=
 =?utf-8?B?VVpEZzRzVlgyQlc5Z0VqK1ZZUlpwM2VQa2ZyWWlXNjFGU0JOZkVuZnpKb1pP?=
 =?utf-8?B?RHhlV1NzUzh4UFJ0ZXViLytsWlBHZWZiNEZlRFpGL21vTEdLNndzRFFyNEsw?=
 =?utf-8?B?ekhrZDVtRXFpOHAyblQrNlNZd0ZKTHJyMnRwdGpZaEw4SC9ibzVHNFdZUmZm?=
 =?utf-8?B?TlZMWHRuWGZXRHVMOStuWDdWK3VRZ1ROY1VIblo5bVJRZXZmbHdYeDh5azFn?=
 =?utf-8?B?TzBMQ2V4QmJLVFNCRDBNajB3bXhBT2toSzlCSnVWeC96cGVrWkRBWEd4WEQy?=
 =?utf-8?B?QWIrd25jeE0vY3k2NUJBSjBGWUhJSnV4UktLY0hHbjFjRTBTdk1FMTVrRGlS?=
 =?utf-8?B?dWNaaVM5SVNpTmpxeUk2OFZxRGQzc2s5aGc5SXhsRzYxYTNFc3RnU0Y1WTUx?=
 =?utf-8?B?anNQekZoUUltVjNkdnN4LzVBZ2E4Ly9aSnh2QlYyMkdQZTRCZVNtemcyTjd4?=
 =?utf-8?B?VDdybTgwSVA1QzdxdlRLd1NKYUtSMVAzem8zWGplK0JTd1FJb25sZ3JnMnpL?=
 =?utf-8?B?T1Zoa2Nva2lzSEpzQlJYdk0xRXZ4dHdlSlZNRzRnVEVLNWtxU1UrVXNhbjk1?=
 =?utf-8?B?NUZBWjB5L253UlVDS1p3bFpLQ0J1cWJtSVNpK1JDOHRjd2VjWnEvdFVVUHo5?=
 =?utf-8?B?YXl5dEptUzRMMENIbFhXVVJQZDFhV2V5UGR6WnlxZzhtTVNIeWZjNXNUTUF0?=
 =?utf-8?B?b1dtM1hXcWRlWnRnUmQxKzhTWGs3K0dyZEdrVzByb2FjV0FtdEhiQVZRZGpk?=
 =?utf-8?B?UlZsWUVzbzB2RmpGUytnbFVHdVZONUxUL0NiUzJvblo4MFlkOVJRRXZGN0lI?=
 =?utf-8?B?SXRQd1NYaTF4NUswSXI2SU9JOGxoaTRXejIzaHNGSWE2UE5iZVFuVThPM1hs?=
 =?utf-8?B?Y3BRWnRPK0FIc0xTMS9iR3lCL1plY0tFc1ZlT21nandNN2VVY25ieEFvd2ZN?=
 =?utf-8?B?aXpIY0p6UWxvd01TazQyMjFXZnI3K0poWm5UVjAzZll4TFAwaUF4SU90SWYz?=
 =?utf-8?B?Mk1yUUlQUWh6NStEVVBjZWpwTFBCc1dlYmE4dG1nWTRwRmxnRmMxcXZMRC9j?=
 =?utf-8?B?dDVIQVdTTHFzbFdYamVNRFAzYVhQK3orWFBKRVFGZlNwVFhueVA5RjBRZXVr?=
 =?utf-8?B?cVBzd2g5eWlYTUdxK05PWXlTbTFTR25rOWY1aFhXQnpNT1F4RFU3ZE1XZGgw?=
 =?utf-8?B?cjZvMWFIU2pFQkRHN25BbGpzOXJVNGRVSTExQnZsN1RBL2w1RThFUjlINWEx?=
 =?utf-8?B?T3FXdXNqUkRLZE9uTVNyUVlpRGI4S3hDMzUvODFqVmRHblZhOUhzTFlnU0sw?=
 =?utf-8?B?eUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65fbb380-4404-4675-3a2a-08dc3cccc0b9
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Mar 2024 04:28:48.3674 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oj+IsVOSBkSQ85vaWHiuja02syVP49yHGGph4H1Q+n4R78XLb1ZJwokEvLt8RGT5LPDisc7ANpanxOeW9/tIHMxLjAWKbxFJgbZkTkQizgaFqY51DkyBXoPE4DRWffVB
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8456
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709612956; x=1741148956;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DSTw2lNkbBbCiziqDxrP8Lf2gtzcya8nXDMA70/l5Co=;
 b=hYArCBqRrb8uZOpeW87jKbl9JpoNKaESmAU2pZXfr4tn+vPXdNtBITek
 2cGg75rtR+gjSSn+Ipzax9eNjITAgmi7V1G/O0cmZ+boH4lJEjxr6RGrC
 QCVmgMYe0Nk7qgv5FxzmM3EFeSBCjowd+zOUBT+5YYKBnGQbrePi3IpWn
 376sz9oNu403ChweIdH/PhGyuYpfWNCXp7bBw5a3MqQvMd1c9peqHws7U
 XRNkHTBPINFZW5vShF2O7ayXDmxR69h7+diHqOMeu66WRgQq+0gwu4IvY
 Q/pE8x/L0ccTN7tOPh8bIFIvc/UozxqcmUIwC7459TT27pDaZQ9amWCyf
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hYArCBqR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v8 1/2] ethtool: Add GTP RSS
 hash options to ethtool.h
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
Cc: Jonathan Corbet <corbet@lwn.net>,
 "vladimir.oltean@nxp.com" <vladimir.oltean@nxp.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "laforge@gnumonks.org" <laforge@gnumonks.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Eric
 Dumazet <edumazet@google.com>, Marcin Szycik <marcin.szycik@linux.intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 "mailhol.vincent@wanadoo.fr" <mailhol.vincent@wanadoo.fr>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Pi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFRha2VydSBIYXlhc2FrYSA8aGF5
YXRha2UzOTZAZ21haWwuY29tPiANCj4gU2VudDogVHVlc2RheSwgTWFyY2ggNSwgMjAyNCA5OjEy
IEFNDQo+IFRvOiBQdWNoYSwgSGltYXNla2hhclggUmVkZHkgPGhpbWFzZWtoYXJ4LnJlZGR5LnB1
Y2hhQGludGVsLmNvbT4NCj4gQ2M6IEJyYW5kZWJ1cmcsIEplc3NlIDxqZXNzZS5icmFuZGVidXJn
QGludGVsLmNvbT47IE5ndXllbiwgQW50aG9ueSBMIDxhbnRob255Lmwubmd1eWVuQGludGVsLmNv
bT47IERhdmlkIFMuIE1pbGxlciA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD47IEVyaWMgRHVtYXpldCA8
ZWR1bWF6ZXRAZ29vZ2xlLmNvbT47IEpha3ViIEtpY2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+OyBQ
YW9sbyBBYmVuaSA8cGFiZW5pQHJlZGhhdC5jb20+OyBKb25hdGhhbiBDb3JiZXQgPGNvcmJldEBs
d24ubmV0PjsgbGludXgtZG9jQHZnZXIua2VybmVsLm9yZzsgdmxhZGltaXIub2x0ZWFuQG54cC5j
b207IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IGxhZm9yZ2VAZ251bW9ua3Mub3JnOyBN
YXJjaW4gU3p5Y2lrIDxtYXJjaW4uc3p5Y2lrQGxpbnV4LmludGVsLmNvbT47IGludGVsLXdpcmVk
LWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBtYWlsaG9sLnZp
bmNlbnRAd2FuYWRvby5mcg0KPiBTdWJqZWN0OiBSZTogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENI
IG5ldC1uZXh0IHY4IDEvMl0gZXRodG9vbDogQWRkIEdUUCBSU1MgaGFzaCBvcHRpb25zIHRvIGV0
aHRvb2wuaA0KPg0KPiBIaSBIaW1hc2VraGFyIFJlZGR5LXNhbg0KPg0KPiA+IEZ1bmN0aW9uYWxp
dHkgd2lzZSBpdHMgd29ya2luZyBmaW5lLiBCdXQgdGhlIGV0aHRvb2wgcGFydCAodGFiIGNvbXBs
ZXRlIGRvZXNuJ3Qgc2hvdyBHVFApDQo+DQo+IEkgZm9yZ290IHRvIGFkZCB0aGUgdGFiIGNvbXBs
ZXRpb24gZmVhdHVyZSEgVGhhbmsgeW91IGZvciB0aGUgZ29vZA0KPiBwb2ludHMuIEkndmUgYWRk
ZWQgaXQgYWdhaW4gaW4gdGhpcyB2ZXJzaW9uJ3MgcGF0Y2guDQo+IGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL2FsbC8yMDI0MDMwNTAzMzU1NS41MjQ3NDEtMS1oYXlhdGFrZTM5NkBnbWFpbC5jb20v
DQo+DQo+IFRha2VydQ0KPg0KDQpBZnRlciBhZGRlZCB0aGUgYWJvdmUgdjQgcGF0Y2ggYWJsZSB0
byB0byBzZWUgdGFiIGNvbXBsZXRpb24gZm9yIGZsb3ctdHlwZSBidXQgbm90IHJ4LWZsb3ctaGFz
aC4gUGxlYXNlIGZpbmQgYmVsb3cgbG9ncy4NCg0KIyBldGh0b29sIC1OIGV0aDQgcngtZmxvdy1o
YXNoDQphaDQgICAgYWg2ICAgIGVzcDQgICBlc3A2ICAgZXRoZXIgIHNjdHA0ICBzY3RwNiAgdGNw
NCAgIHRjcDYgICB1ZHA0ICAgdWRwNg0KIyBldGh0b29sIC1OIGV0aDQgcngtZmxvdy1oYXNoDQph
aDQgICAgYWg2ICAgIGVzcDQgICBlc3A2ICAgZXRoZXIgIHNjdHA0ICBzY3RwNiAgdGNwNCAgIHRj
cDYgICB1ZHA0ICAgdWRwNg0KIyBldGh0b29sIC1OIGV0aDQgZmxvdy10eXBlDQphaDQgICAgIGVz
cDQgICAgZXRoZXIgICBndHBjNHQgIGd0cGM2dCAgZ3RwdTRkICBndHB1NHUgIGd0cHU2ZCAgZ3Rw
dTZ1ICBpcDYgICAgIHNjdHA2ICAgdGNwNiAgICB1ZHA2DQphaDYgICAgIGVzcDYgICAgZ3RwYzQg
ICBndHBjNiAgIGd0cHU0ICAgZ3RwdTRlICBndHB1NiAgIGd0cHU2ZSAgaXA0ICAgICBzY3RwNCAg
IHRjcDQgICAgdWRwNA0KDQo=
