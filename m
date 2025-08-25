Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C264AB34FA7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Aug 2025 01:23:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7638141C36;
	Mon, 25 Aug 2025 23:23:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Kz4NO2AOz_RS; Mon, 25 Aug 2025 23:23:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E0D2341B41
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756164220;
	bh=dP6y0+bG19EkWQgt+WUOMG88zhaubOY6vJ4w0d4pTCg=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Zjc0ajJ8MzAyO9kwNfkjrKR0j0idF2W0llZfsw80pcT2R/UmxuUZ/XIHNkdqrZgq1
	 jLULTpujE0/OGEcQ09ZyAnepQcWYTOTkTivZWw/LxqtrxKsQuLhQrEc0I9luwJ8abo
	 vWjzxSJTRYlQXI4oVr5xS+zqPG280AaBUZp2jCji5GX8gwOGI+su7i1D6zPOlbRPda
	 7QM1MlIXggU3uUKvCil+cB0wy5KjGfuV0nO4Sk+YM5p/g2FtyNupeOBOwCB/H4k5OD
	 MAfY37H2ldxnKtUhiffTN79zcbDJ0gNHmyB+DTw1WmojA1t4tjtB4sBkBeHFimp6ux
	 QVEToQtOjwd3A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E0D2341B41;
	Mon, 25 Aug 2025 23:23:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9E7FDCD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Aug 2025 23:23:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 84B5F41A54
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Aug 2025 23:23:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kRNVs-mAjkrF for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Aug 2025 23:23:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CADDB41A70
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CADDB41A70
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CADDB41A70
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Aug 2025 23:23:37 +0000 (UTC)
X-CSE-ConnectionGUID: SWG7CuksT1WfkIy/kaq/4g==
X-CSE-MsgGUID: BVo/2VUBTb+XgkU4uWpiIA==
X-IronPort-AV: E=McAfee;i="6800,10657,11533"; a="58534728"
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; 
 d="asc'?scan'208";a="58534728"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2025 16:23:35 -0700
X-CSE-ConnectionGUID: ya33EjLkQFKb4kzgmsVGkA==
X-CSE-MsgGUID: ySahIAJ/S++zjzjvyxGCtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; 
 d="asc'?scan'208";a="173819284"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2025 16:23:34 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 25 Aug 2025 16:23:34 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 25 Aug 2025 16:23:34 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.50)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 25 Aug 2025 16:23:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HtFmmrjzUcYRHqjn8OUCKuDBiKe8UxnyUXEIq5JSWMuxfjYMwwrFJyDoT9yuM5RJm9zl+05PCHOhIe9DzcEfp3138lsCTuqRzuxUiUXhaYU1wy6zcs8EHtZdYdOeFsmT7USBJrVirRDjwSeWzo32Mv1Tg2zh9Bk/oHCzue0KefFz5UA5KXf911EXGJEgl50fq63KJ6hsZqgmF1annztdhfCzenxULO3AoRLOhw0A081OKiI0EicsG4j2/JgzUdLgiBo8OWl1NPamx5bl0qIfc5LdoLey9CrHbsi4PNuU4AaKAePtoPpi3kfW4a13ltxee2vJ9bntVXWf963D6MUPAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dP6y0+bG19EkWQgt+WUOMG88zhaubOY6vJ4w0d4pTCg=;
 b=LvcVz8ovvqrplmiuzb5uYrxXIQWD0WmfguNAMIlivogCQiIGvNW/AS8REyp/1oT3mJ2o56zPoyi5efNhWCYlNSihSYjNiegKk+48BccqD7LMnZUl37eZjiIUgMhYZE8h+9ecScORkOFN4dWeupgFlmaYBg88UpqEPBtuIf/a4DVpise2TPax7gaJEBEV+c1VNYVhWEgVBNiapzpRZAsyIvgjTE/CYIqH0VWcPcPtdsp0vA5FyIALm00C05JWtgByX0kaXuyqGt52PnTYm7PIW83iMawqzzZSaBYcwR0yt44v/wFuzLy3m0qPNhAWSVirsvyFrA1AoRTHo1b0mcsKZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA1PR11MB8325.namprd11.prod.outlook.com (2603:10b6:806:38c::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.17; Mon, 25 Aug
 2025 23:23:27 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.9052.019; Mon, 25 Aug 2025
 23:23:27 +0000
Message-ID: <edd81dec-c914-45c9-9618-6042fdab60da@intel.com>
Date: Mon, 25 Aug 2025 16:23:25 -0700
User-Agent: Mozilla Thunderbird
To: Kurt Kanzenbach <kurt@linutronix.de>, Miroslav Lichvar
 <mlichvar@redhat.com>
CC: Sebastian Andrzej Siewior <bigeasy@linutronix.de>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>, Paul Menzel
 <pmenzel@molgen.mpg.de>, Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
References: <20250822-igb_irq_ts-v2-1-1ac37078a7a4@linutronix.de>
 <20250822075200.L8_GUnk_@linutronix.de> <87ldna7axr.fsf@jax.kurt.home>
 <aKwWiGkbDyEOS9-z@localhost> <87o6s3oivk.fsf@jax.kurt.home>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
Autocrypt: addr=jacob.e.keller@intel.com; keydata=
 xjMEaFx9ShYJKwYBBAHaRw8BAQdAE+TQsi9s60VNWijGeBIKU6hsXLwMt/JY9ni1wnsVd7nN
 J0phY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPsKTBBMWCgA7FiEEIEBU
 qdczkFYq7EMeapZdPm8PKOgFAmhcfUoCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AA
 CgkQapZdPm8PKOiZAAEA4UV0uM2PhFAw+tlK81gP+fgRqBVYlhmMyroXadv0lH4BAIf4jLxI
 UPEL4+zzp4ekaw8IyFz+mRMUBaS2l+cpoBUBzjgEaFx9ShIKKwYBBAGXVQEFAQEHQF386lYe
 MPZBiQHGXwjbBWS5OMBems5rgajcBMKc4W4aAwEIB8J4BBgWCgAgFiEEIEBUqdczkFYq7EMe
 apZdPm8PKOgFAmhcfUoCGwwACgkQapZdPm8PKOjbUQD+MsPBANqBUiNt+7w0dC73R6UcQzbg
 cFx4Yvms6cJjeD4BAKf193xbq7W3T7r9BdfTw6HRFYDiHXgkyoc/2Q4/T+8H
In-Reply-To: <87o6s3oivk.fsf@jax.kurt.home>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------KPsdwxKzIurJT5r21z4V0JUd"
X-ClientProxiedBy: MW4PR03CA0238.namprd03.prod.outlook.com
 (2603:10b6:303:b9::33) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA1PR11MB8325:EE_
X-MS-Office365-Filtering-Correlation-Id: 5d58af41-db0e-4458-f603-08dde42e64d3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|7416014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?c0xsa1BvMzg2cUFiUkdLbXBvdWNxOEloWVRtOEVJTFZZUXh4MHZrK2lyVDZ2?=
 =?utf-8?B?anVNOVdWelp5RlJVTjhEWDJaVFAwQ3pDclo0RXVtNWJNSDNUeDFndnUxcU5x?=
 =?utf-8?B?eWgzVjBaRXFjTE1jL2dDWmRlenNkOXVNWncwZjB0WDhsQjVhTVRxczFIYlNU?=
 =?utf-8?B?N1VQOFpPWjJiOVRlS3VJakdodnlSd2RGU29tYlhrWTJXRzYxWVNVVGxlVVlj?=
 =?utf-8?B?ZXV5UEVndlpqWThyTjJOVlgwbGVGZzh1UlNwMENCbE1zVi9ZZWU0b0x1UXFP?=
 =?utf-8?B?SkMxT1ZCNGswbnFNa3ViR3Q2OG5Rb1Fzam5jQ0xtTk94STFXayswdzdGbmtM?=
 =?utf-8?B?dUhMTjhGQ3NsWERaYmxTS0c2d0RSTHhiZndrNkloK1ZpRzZka3UxM0RxV25k?=
 =?utf-8?B?K3NlV1dVZHJrL2tCNng3NERINUI0dHFQbUdXUEJkQnpFRWxKejVkS1FFcHJF?=
 =?utf-8?B?bkxOWjhQOUtlMDZUeW4xbERZUmJqZXFMb2hZT2I4dDROVjM0UHptaWI4Yjlp?=
 =?utf-8?B?ZEpRMEpRWUxQaE0rcTlYMjJNOVlHbFB5YnA5M0wrcnlZemg1R2dPdGdKalBN?=
 =?utf-8?B?RU5aWHVEMWY2U3M5SDN0TXhtZndwK3huV2hxK05zdytYQWVFUGNhWjN5TDVo?=
 =?utf-8?B?TTFrb0J5MHJqSUpKNGdEclpPRFV5UldweHlmU0tTSDQwWms3YmhiREtJTUVo?=
 =?utf-8?B?RGphc1UxOG55RnBlc1RWai9ka1MrOWl5aWU0TUVzNEEwbit1R0VFa2JDb3Bq?=
 =?utf-8?B?N3FBckVkMjB1L3k3LzZCczJ4TDdaK1R6NUZMcFF2S21jcE5BRFR3Z2hZc0Jp?=
 =?utf-8?B?YzB0YldCUzJtR3lsaWk2MitWTWNzTDZVMmNITzFsaUNkMWF6Nm5ZMGNnZFIw?=
 =?utf-8?B?RE40VGh6enJjemxTYkdKUWd6alFkZHlIUERjNTdqdmRLRWp2Z3JoUmRUQWNi?=
 =?utf-8?B?d2h4MmZlaEhGWHlra0duRlB4aFlFdjdJbUhpM3g0TjlHeVVNZ0podEdjTTZS?=
 =?utf-8?B?d3ZGN3ZhTFJKVzA1RXoyMHA0MUpBQmY0My90UnlieDEzMVVyWCtSVjFOdkhl?=
 =?utf-8?B?RVh5c1o1ekh2eis2cHJWcTNoVTNpd2szNTNsMENXcklpOFZncENhUW1rS05v?=
 =?utf-8?B?djBDbkRwZHhqd0RNWEUzV05OWm5VVEJKYWRjQU4yNkxDT2tmeVRpckVJMmRQ?=
 =?utf-8?B?SjRXalowamlkMlNzVGU1Qzd4b0djYmkxOWsrNUtNVDdIaGhaTnhDelNScStq?=
 =?utf-8?B?Y1ovYXM5N29yUUpOZUZ6WkpDeXRLU0VQbkVYc3VheFV3S2I5QjFnakhzQmRS?=
 =?utf-8?B?WVF4MldHcUhPS3ZBTkpWY2puOEQzNTk1b2NWTWpXUXI3OFc4cEM5T0xLSDBL?=
 =?utf-8?B?YVNhcmNhTTg1MkQ1TFBwTWRPVlZqOVovNm8zbXJtMDZzcnB6dUkrbFBabEQy?=
 =?utf-8?B?c2cvNzJtem0yYUxmMk9LZGNqRzg1dmJ4dTRMOGwwL050ekVrT1RwMlNCeFVX?=
 =?utf-8?B?TGdZQnpQWGhRakZ6VnprVFQ1RVBKNW5EQWh5ak8rOFo5Y2lrVTg4LytIWGVG?=
 =?utf-8?B?cUtPbm8zbFMvTWFmZnR4d0lGZ2RmUXlOY3F2NStvQVZKaG1lSVJQL2NQeDBJ?=
 =?utf-8?B?UWFlL2tTVkN3NHFnNnl4L0xpTEFscXZqWmpaK09oNVUxQTNZUEJBeWNvRm0y?=
 =?utf-8?B?VUxGVEpSNVVvYXdOaCsxdXRCdldNSFNnb1ljcFhSMXhzdjI3NUc0a2hrbS93?=
 =?utf-8?B?dDEycWU4R0hDRGZpVHpod3pjK1YxOFJaSzVJTlZyL2hzSmR5M2Jpd0pDcXRw?=
 =?utf-8?B?Vjk4YzR4SWFZeUd1YS9mQXNIa2hpbUZXSHZKYTZaTU1HdnRBNjRGSDZDb2E4?=
 =?utf-8?B?TUdTWDY2bjdPWkVWOHZzeExnL0sxcXd4OWR6WCtSTjNUSTduUDU5d29OeXhk?=
 =?utf-8?Q?cX797ZBm3zo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(7416014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QVMvWUVVNnFGVXhLTHhpRE9FRDhGZjlUMW96eEdlRStEQm05S1BucGExdDlR?=
 =?utf-8?B?WWJQaHFVYU11b3h2WUk5ekNTRjNNTDB3YzFvZU1hNndrb2t5Q2w1c0pUeFIv?=
 =?utf-8?B?SlIzT0hOclczSCtZcDk2U0Mrd2dneERoRUlNNnU2WTF4RzBSbDVlTGkyblp4?=
 =?utf-8?B?bExWSi9RSWRuM0hHWTlERXFsU1hSZzA5S1oybHpXVjFBL2VuVzRwdW9sbVUx?=
 =?utf-8?B?em1uVXJWMDNEMjl5SHpSMFp6ekJEajJCTWxabmU5dGVTU0pVZkIrQU9vUGxZ?=
 =?utf-8?B?UHJlRzdNNEw2T3JnMHRJMDdlQ1hxMGtPYk9VT0l1emYvcDA5Sm1KTEVTcDBk?=
 =?utf-8?B?WittbEorNVExbW0ybWozbk9Tek8zYkh1aTNqSjlKZ3dRS2FSUjI1ZlhMSUFI?=
 =?utf-8?B?eU1jckltcVA2c2ZzeGNXckJ5c1I5TG85QjV5QWtvZWhJK3NOY0xoVmpJdGs5?=
 =?utf-8?B?aVFFcEpzSnhVbjdOZWFQcUZCLzY2Nmk1dHBBTGV1N3JKeVlqUFFsT1cwSm9Q?=
 =?utf-8?B?TGJiQ0RjVUVWdUs4SCtqSVFVcVExbXgzMDdvSUlSMDAyYi9pMG9HbFBsb1NR?=
 =?utf-8?B?aFhDWVBibGxvWkJMUWVaWG8xdGwwemE2bEUzckc2SzI5QXh5dzNveGJ0YzAr?=
 =?utf-8?B?SDhHZ1dHNm9BY1VhZGc3aGNrRjBVZldnTWpVWUEyWjJaNFNtY3pFc2NpVGRo?=
 =?utf-8?B?aXpwUzZ4RlFXZk9DN2paamREQWdPb3dHTG1iTThDNURJdVowczcrSFgyT1Fh?=
 =?utf-8?B?NVNXaUxSOWlOZFFuUnZuMXNCY3R4d0VOemRJM0VWN2MzemlJaDNFbDEvdWhV?=
 =?utf-8?B?Mk80Njljc08waEFBT0syY01CMFg4OUN5QmR4emszZjV0Nlk3b2ZvYkIxbU9l?=
 =?utf-8?B?NzFHdGl4ZEpQM2tJcjRrUWpIQ2hqZGlQQnZVeFJmbVN6NTBUYm02QzljSStw?=
 =?utf-8?B?bEtXa3hyQkR0SFE0VVhaVTJKajdIWmM2R0hOTGN4WGY3SHdVd2U2TG5vUGtG?=
 =?utf-8?B?NnFHNElTOHdIN0VrL3NDdTBKdjFOb01ZZmNSSVVSOXk2MlFEbzlQSmJJeDlG?=
 =?utf-8?B?ZHlJTjI3K0M4aDQwcmR2T0pLYTRvZ2VGamh4RVJIQS9uT3Y0bnRPcmQ3bk1y?=
 =?utf-8?B?bWlVa1lZcSszaExNNFlUb0V2VGFyRDVmaTQzdVhEZVNKbXdpNUJ5SlBXNFo2?=
 =?utf-8?B?OCs2eDVRZnNQYm5zWjN1VDhVM1E0ckNkZUJrbTVuUStWVlRRcmo1bWF1TVBX?=
 =?utf-8?B?UFhoeG1tQUJqblhUYnJMc3EvTTFMWTNFVE5QbHVIM2lTUk1EdjBSVFV1WlB6?=
 =?utf-8?B?am1qUW00a1d0TDEzTlh3QUt4SkRldFZET0JDbjBDRFV1Y0IvVFlYVTIzU0Y0?=
 =?utf-8?B?dXJYSDh4QlhyRGJydnd5NkppU3dreHlNWTZjUkZGM2ZSUWE5MTdlcHhMZFh2?=
 =?utf-8?B?STAvT1pxS2ZUeTZ4WXlxYU5iRGRmcUgzZmFWZkVuMDJ0MXZuSVVDaUtKWmFr?=
 =?utf-8?B?cWgzYnJaOVV2dWxrSy9sY29nYVlkQmpYSEJhRmtoalpiZXZlUTJUQVFOck1Z?=
 =?utf-8?B?UU1Cb0wxVEpKQ3ZaRlZ5QU9UL0hVL2ZLd1RqQVJoTnYydHYzdWtweWt0Ymxm?=
 =?utf-8?B?TjEyMjZYNGdzN0VIamN0UjZDaFY0RUc2VXd0MW9kMjNBNlZaME42eGs3VHFS?=
 =?utf-8?B?Qm5XK2ppZTNNT3FodklxVG9OdVJEV1g3VndmSWZra0xGK0ZwR3h5NjY2a3RV?=
 =?utf-8?B?dEFYRCtIOXJhejNDU25GRFYzaWdiNjdFSFdhMzU5YWlHVDhjVEdOVGd6YU50?=
 =?utf-8?B?ZmllblFrazMwU3hwalNHWjMveHRZQk9QQmJIQTF1OTdERkRQS1JWWlZ0TjhY?=
 =?utf-8?B?L0RFMm43V1RFdnZMUTU2SGQxQTNheG9IM3RadjVEWTZhaHRvL012Q01qT1Nr?=
 =?utf-8?B?b3BlMDgybWp3c2J1SjNDOU5Bc3hmUFRucG82MmNCZElPZFBMSUJKcTViZVVn?=
 =?utf-8?B?aTRTd2Rwc2ZoYmZmcDVwNFZrVHh0NnFqazFuNndGRVloTStSTlB1ZEtlK0Ro?=
 =?utf-8?B?eXlOaEtUYnhQUDB2UDZINytFSnVOQkdLdnNmNWEvbWtIM2lybElDU0U3RG5T?=
 =?utf-8?B?bERpZ3NQQmJ6cUtVc1NUVG03TFcwdS9wNVVHc1RvOWk0WWlSWGdqY0Jja2cr?=
 =?utf-8?B?V2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d58af41-db0e-4458-f603-08dde42e64d3
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Aug 2025 23:23:26.9317 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8Ah5OuXbmPOxq0WCY1Kw+cWSuDl1mAR/6UWV6coBMyxHMtvl026onj0zL4y5hpPQ5jFvipVF2GJbeVNGb5XT1dKwfnA5WjmskY3+QNhTHfI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8325
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756164218; x=1787700218;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=dP6y0+bG19EkWQgt+WUOMG88zhaubOY6vJ4w0d4pTCg=;
 b=dHlXmRp2Ra5ZhnBSR9G5A/4mtXS0fSgFvlF3cAYcAPx67uXfyXicEJJy
 rm0Pnad8kikn7cNgISTs4+t0LDMzvo9YMdPPKx9kk1XBQP8zqdlXs7zke
 toBtYJz+CqGYcvscac2ZHYYOBj4kRXMzY1LnYY6oCkndzXf7/AIVXUHzZ
 6NqIvhZQoMskI3WX2OF27AtII51miPPd6ny6FebAZLOvDbsxdFdkPatFI
 z5WH511Dc3H40hKxgTYz5HF6P9KXGSvo2NrksYvVIpxw1fiY0nhwcAbI/
 5fe25gDDPOt+XCg5YMlB1Aka7uwNVCA7WeSUwko4eg4joIDbXOeH4r7bi
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dHlXmRp2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] igb: Convert Tx
 timestamping to PTP aux worker
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

--------------KPsdwxKzIurJT5r21z4V0JUd
Content-Type: multipart/mixed; boundary="------------dHgjpIWR9AS00sVVKUMkNrot";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Kurt Kanzenbach <kurt@linutronix.de>,
 Miroslav Lichvar <mlichvar@redhat.com>
Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <edd81dec-c914-45c9-9618-6042fdab60da@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] igb: Convert Tx
 timestamping to PTP aux worker
References: <20250822-igb_irq_ts-v2-1-1ac37078a7a4@linutronix.de>
 <20250822075200.L8_GUnk_@linutronix.de> <87ldna7axr.fsf@jax.kurt.home>
 <aKwWiGkbDyEOS9-z@localhost> <87o6s3oivk.fsf@jax.kurt.home>
In-Reply-To: <87o6s3oivk.fsf@jax.kurt.home>

--------------dHgjpIWR9AS00sVVKUMkNrot
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 8/25/2025 2:22 AM, Kurt Kanzenbach wrote:
> On Mon Aug 25 2025, Miroslav Lichvar wrote:
>> On Sat, Aug 23, 2025 at 09:29:36AM +0200, Kurt Kanzenbach wrote:
>>> Also I couldn't really see a performance degradation with ntpperf.
>>
>> I was testing with an I350, not I210. Could that make a difference?
>=20
> Jup, it could make a difference.
>=20

Yes, that could make a significant difference. I350 is a different MAC
architecture. According to its datasheet, I can see that it uses a
similar TXTSTMP registers, and it appears to have an interrupt cause,
TIME_SYNC bit set which an additional cause register TSICR indicates
which specific event occurred.

It does look like the logic in the driver checks TSICR and doesn't just
randomly call this function each time, as it relies on the presence of
the TSICR register.. Hm.

At first I thought it might be because I350 also has an interrupt
trigger for receive timestamps, but this cause is masked in the TSIM
register, so it shouldn't be a concern.
>>
>>> In my
>>> tests the IRQ variant reached an equal or higher rate. But sometimes =
I
>>> get 'Could not send requests at rate X'. No idea what that means.
>>
>> That's ntpperf giving up as the HW is too slow to send requests at
>> that rate (with a single process calling sendmmsg() in a loop). You
>> can add the -l option to force ntpperf to continue, but the printed
>> rate values will no longer be accurate, you would need to measure it
>> by some other way, e.g. by monitoring the interface packet counters.
>=20
> I see.
>=20
> Thanks,
> Kurt


--------------dHgjpIWR9AS00sVVKUMkNrot--

--------------KPsdwxKzIurJT5r21z4V0JUd
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaKzwbQUDAAAAAAAKCRBqll0+bw8o6E7W
APwKtvHZXPjm8hpgzF30+TX3sOQZA4dE4gpmedHhcggbGwD/dWNyVc/6T5eS0gBklRCSJ3wa5Raw
qi3Fc8AuNczmkAY=
=5mhZ
-----END PGP SIGNATURE-----

--------------KPsdwxKzIurJT5r21z4V0JUd--
