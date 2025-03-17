Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCA5A650EB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Mar 2025 14:30:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D696460B97;
	Mon, 17 Mar 2025 13:30:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id upQ8KwBhG6fG; Mon, 17 Mar 2025 13:30:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 15FB860ABB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742218214;
	bh=xeDSeiSchtY7iNK/9uBUIdIOkszv4d8NzIwLtY0tmkQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KhDToNBVcpe7LVirrTfrgcEXvhrNbYsjerRKaxOpwHlqSeTMXJROngpj3wRiYj7Jw
	 H7tb2kxbC/P+syFGaeKAYuNiE/Z7S5DK6UufGVC0vjFmj5Ja2SjYIoFBj8Bfm/Jblx
	 4UUt5xL61Gtyh0KzsQNsVDTdL7YGSsdReamJHByH8hEAe9l+yqmUkFbRW5xVLbJXSo
	 MK0cIFXUglpvSWYqFBLS9/KTzc0p5CtmRduIi7/okqlU9eCwrP1tsPaLnmSnygOoFi
	 Mskb7KDRGWBeFgnSxTMiwcn1Lo3FeMJEwB/o9P0pwJhbSPbsO4lnppP2Bhqlz86aP+
	 kaXUghW0fyQMQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 15FB860ABB;
	Mon, 17 Mar 2025 13:30:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 33E4ED5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Mar 2025 13:30:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1816140678
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Mar 2025 13:30:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CtPhMqNWRQYo for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Mar 2025 13:30:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D00AE40644
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D00AE40644
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D00AE40644
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Mar 2025 13:30:10 +0000 (UTC)
X-CSE-ConnectionGUID: +H++0wJNQ6Cy2A9b26cR1g==
X-CSE-MsgGUID: 8aOX5Gh8RIuINPKGWauxBQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11376"; a="43177864"
X-IronPort-AV: E=Sophos;i="6.14,254,1736841600"; d="scan'208";a="43177864"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2025 06:30:04 -0700
X-CSE-ConnectionGUID: y+rD1SXSQOyyxZRsZU31dQ==
X-CSE-MsgGUID: UTc589DLRQC2NrtZC1m28g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,254,1736841600"; d="scan'208";a="122122330"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2025 06:30:02 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 17 Mar 2025 06:30:02 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 17 Mar 2025 06:30:02 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 17 Mar 2025 06:30:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hPCPFLuWjU1pUUHdnUOu1UA3noodLK/zScsdNOKjQu6VRcoLSwOPOEaIKT1XrluKnCYZI2LkXkG/OaVlB30LxyerZgYr64L8qFsSjCi86VUAroZnZLzXax21tG5ZSgRM49dvSsR83XIVO2eZx2jHuPsqip25zivlJ7GtbemPTeNQ5YTIh3VPhwBrHzLKLS+oTkPy+cYZn9u4BSBRE+4LiGyD/VOqcLs43opU1ehgRq1b1W6sDpcx/EseGUoGFOVkR3l0UKLy1aTF0w3+/cO0kBjrLMChq3D0ss7QvMuEAl6lHrxCLxcN8+AQq1BO8YAO+lg9frr9JG+h+UEK42D4HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xeDSeiSchtY7iNK/9uBUIdIOkszv4d8NzIwLtY0tmkQ=;
 b=qGBw4kMc+O9sA1hLWI+kezW2+fvTob1VEaSpUQc1GZPAKIKWrptlrIO8gPaGqj8wG/pLDW+E0K6b9UNedA2T2ae/Zt5yA/IdlcFQiIMyzU1zsv5mEe7krq/zXzKnikeoTsp0h/ODQgqXVEE9vCP2lCLTv5XDRVyjVFP+/dy/EJ1/LGG/YkMOWe7Ys39PG/J9CEhT8qBLdjzx83JJYYvBU5/yr1ip6dux+QXq2JXHaUs7QryDEDWyY9Q1Q19KlaCxFrdVXEI7zIII+cCE7SP1Vmaa8sGQszmCiqkWe/qpruNW7lAdDFii9B1gNS2cktyp6n9t2owQE6STp9hTZF/9Bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by PH7PR11MB6676.namprd11.prod.outlook.com (2603:10b6:510:1ae::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.33; Mon, 17 Mar
 2025 13:29:30 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.8534.031; Mon, 17 Mar 2025
 13:29:30 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Szapar-Mudlaw, Martyna" <martyna.szapar-mudlaw@linux.intel.com>, "Paul
 Menzel" <pmenzel@molgen.mpg.de>, "Glaza, Jan" <jan.glaza@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Jagielski, Jedrzej"
 <jedrzej.jagielski@intel.com>, Simon Horman <horms@kernel.org>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>
Thread-Topic: [Intel-wired-lan] [iwl-net v3 1/5] virtchnl: make proto and
 filter action count unsigned
Thread-Index: AQHbjPXlyt6RNqM5IUCLDdzUzXFo97Ni066AgAAIXYCAAAGrgIAAFk8AgBRzN8A=
Date: Mon, 17 Mar 2025 13:29:30 +0000
Message-ID: <SJ0PR11MB5865019255CD0443700C892A8FDF2@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20250304110833.95997-2-martyna.szapar-mudlaw@linux.intel.com>
 <20250304110833.95997-4-martyna.szapar-mudlaw@linux.intel.com>
 <9f6b830f-d2ee-4fde-a131-a956a6e84df7@molgen.mpg.de>
 <00a160e5-c9b2-4b91-9823-dee37fdc5d25@linux.intel.com>
 <832cc2a5-0c15-42d1-924b-a14674db6391@molgen.mpg.de>
 <e384e61a-4ccd-4ae7-8ddd-66259769f6dd@linux.intel.com>
In-Reply-To: <e384e61a-4ccd-4ae7-8ddd-66259769f6dd@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|PH7PR11MB6676:EE_
x-ms-office365-filtering-correlation-id: d65ea72a-a559-40c3-da52-08dd6557bf72
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?bWxKSGZsT3ZlMG84bzZRTGZhdFE1M1JBMlNvcDN1MkFhMUZNTXZrT2FzeXJh?=
 =?utf-8?B?cWxJdDljVFNleDk0cVFsTnFta2thQlBnOHh4cTU2bldqaWpuazBzOWtpM2hv?=
 =?utf-8?B?SUVBWEQ1MS8wOTExR1hOVnUxZGE4dGFjeDV5K0ZuazJyU2wwZ1NJT0NHUWJF?=
 =?utf-8?B?WlMwRWhBazc0cDF5VDJzOWd0T1JCOVAyV2ppKzNaYlBQWlg1ckYvZzJQVklz?=
 =?utf-8?B?WFF3MUlqSVh2RVpGaVRIREwvY05aNlFURTJyMW81Nld0b1p1SnhTUlJoODRz?=
 =?utf-8?B?M0Iyb3lCcWREeTEvdnhxa2IrZUZ3RVV2T3kxYkZ5YU85WmRFRXJrWFNKcFpO?=
 =?utf-8?B?S3JTZ1l1aUMvV0U4Z1l4dTd6R3hNTCt3cXcvWERnMVRqQXdpeFhiWnJWNFJB?=
 =?utf-8?B?dWxyTFhQemlwT01sdTBoeXdGaU5PdXRCZXV6QllVaGRpclluSDFxTXgyUDhB?=
 =?utf-8?B?YzZMRjB6eWFsQ1lCOEZ2SWhkanpPbFZneHJQRXQ4MzhROUJwZVVMZ2NNeENQ?=
 =?utf-8?B?ZlZpNzZHWjVXbndobzdEbTR3VXVGOC9XVVc3ejJoOHpEMmxoVTI5amoxUnVS?=
 =?utf-8?B?Nk5Ebzg0S2lzT3kycGY2dkttRmlMc1JXcEo0RlBQZHFkaHVNQ05kZzUwbXZp?=
 =?utf-8?B?YXZnSkdTK0kvdzY0OHcvS3RaUlpCTGcyaEY0eXVyNmdGbXJ1ODEwSG5pdkJ0?=
 =?utf-8?B?WHA4QlRTeFVWaWx3dTZVOWtydWVPbG5JMlpDVEEvQVNURGVVYzdDRzJuLzRN?=
 =?utf-8?B?ZUkySFZnZkh4ZmVrNkd6L2dYOHFtY0JVWjVueXR2SkJMNDlSUGtiQUwrZk5w?=
 =?utf-8?B?bU0rc2NQSGJocUN6ZTljS2tlM0NGck91d04xdEdtdHJNd1hBaVRGZGl4U21G?=
 =?utf-8?B?dVlIYWFjMm5lNTFRQ0x5UUxZcHBDbHVNcGpCM2ZTT25hamc4UkdHd2c2cUY5?=
 =?utf-8?B?amV6NHByTlUwZ2FXamZKODVzeU5wYVVsUjQvcElxUTJaaEF4enMvbzFCSjk1?=
 =?utf-8?B?cEc5RmdEbWxVMFgyNlR5emNySm85ckcxNmxFRFpyQ3duZmRTK0RaNGlRaytx?=
 =?utf-8?B?VFBtdkVNRkxPWXMrM0JueG5xd2g3YkZBSGtpNjdUbGZlY3VHWGtCOUFlMHdB?=
 =?utf-8?B?OHphRjRvNXhpYnJRUWxiOWw1NmJiRGZPY3h4WDJtek1uQW1MVUdLL0tPS1Ra?=
 =?utf-8?B?RjFKUDVhd2NteTY4Z2pBcHhldkw1cHJHcURHOUZzZXBIVUgwMVRoTkRBNmRr?=
 =?utf-8?B?elMwZlcvdnhmV1NqK2xYa1YwY2NpLzNYN3I4ZjJ1TjEvMk9wRkNUMXRpS3Ex?=
 =?utf-8?B?YjVrcC80ZzQxN0kySS9aeVRnNFhIOWpRWUI5L1BSTnE3US9GSXluaG9RS2tS?=
 =?utf-8?B?ZUFITFlDZ0ZuenZkcmRGOWlCTncrMlZtRlFRVktUbkJvVHpyVkZrKzRrb2g2?=
 =?utf-8?B?YjNTVEZCdEl5eVFlaTRpVERYcXlURHExZ2lqZythRyt1N2EwSm4xc2N2Undy?=
 =?utf-8?B?VnVnQkUwcDBQRXl6aVBvWWdCMXhQdC9pMm1WUGc4YkJKeUtmc0lKNlB0SXVL?=
 =?utf-8?B?SUk5YlZiTFJ2bTF3anB3aTZ5RElUZ3lWYkpMVGRONWNZblAxWURWemJGdGt2?=
 =?utf-8?B?OUQ5UWcxMHZEekZYVEpYMGNLM3dEVXY0ZVNDZHNRWDNXQUtyQXAzd3A2NXEx?=
 =?utf-8?B?bjUxTlVLZ3AxR3lxMWhYV25mTmFqbVNDdy9iQUdzQ0tHaGYzRk8zZ0U0VHV0?=
 =?utf-8?B?Q2NhL2UvR0lhWlVRRGcxSXRmMDFmeUYxVFNna0d1QVUxMTRsT1dMMjlJNUlU?=
 =?utf-8?B?TDJET2pzN0RkZWM0OUlQb3NYUlRwY1dTRWJpbjk5a2lFTkd1bjJEWHdrODVk?=
 =?utf-8?B?RDg5czdCRVd2STJ2emYyNlAzMEhBUmdnMW85S1MwVlFCcytsSGduSlRYdllY?=
 =?utf-8?Q?+jlcft2WmkC+s4LKAJLSuyvT/o0cFiWf?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K3BTVFNxQkR5cjRzcmh5c2pwaWJMdFBJdDI5Ny84alBGY0p5cVVyMkdQUWVs?=
 =?utf-8?B?NUtUUTliako4YjNkMy9Wb0pZVWUyV0FqNDhyZVhYOWtsZ1ZRL1o0N0t2bjlW?=
 =?utf-8?B?L0JLcmkvSk05Y0VKKzcyTnR0L1NGS1FXMHkvdGphWGRkRlJtdTdVNkpqYVR6?=
 =?utf-8?B?VlZPV2FNZkpxMElIV2NRTGErcGhoZC95TUt2Z2pTcnc0SVRDZ1JoNFJ2Y055?=
 =?utf-8?B?ZDFYRGx4dHZpUHNHZ0NtRVh2WC9ObU1lQjROTHhvWlZQOGU3R2tFVXVIb2dS?=
 =?utf-8?B?YXVpOXZlVVIxdFBnVHNGK1ltQ1pBRXRDZ25ZR3BHSnA2SXpiMFNPM3N6cnBS?=
 =?utf-8?B?c3pEdTh4OXU1R25oOFJ6c0poVjNudkRQaTNqN1lEbjR2bnVPRURZUGUxS1ZY?=
 =?utf-8?B?YjZ1NmZpYWVDblp4R0ZMWGJocGRHSW90S1FuVGU5MFVWRVhlMGhIdUc3Z0lM?=
 =?utf-8?B?dU05RnlxcHppbUpiWVAyQ3N1UE1ZbGlNSXlGMlhkaDdCMWZlZURnNVBaVlNp?=
 =?utf-8?B?L2VydUFvSTBpdjJybFlBV213dWM3Y0ZHLzRyN09iYzRPVWZ0dU5IQUdvYUp3?=
 =?utf-8?B?dXoxUFV0N3VlUEtSZHR2NTkzaUZVODFPc3dtQUR6SUh5L2ZSZXc4YTdieXNi?=
 =?utf-8?B?cTBCbmxlUnJNSGNPVkF1K0JYcC9VbWFkV2V4QnVhczY4aHRzM0RGMDk5OEMy?=
 =?utf-8?B?eGdCN2FUbUJpcWZ4anNpbG0wM1FlcVNwcU93T2NZdEgrd2oyRXV3aE9jak5l?=
 =?utf-8?B?S0Y3Tlk4WG5mTWtmY1VPa2hlNEFhN3UrOXV3UjJ6dU8ycmpRZnNjZEQrOCt4?=
 =?utf-8?B?MkQ5M3VzOGx6d3dKUUE5THZLTmkzTmFPWXNhSlBvU25LVUVhMTA2ZkM1U1RO?=
 =?utf-8?B?YTZKZDFGU3ByTS9HVjZlVjJQbnJmSHhMckNMZEc3amRlZ25FaHVueXB4cjZq?=
 =?utf-8?B?cU5RbTZGZmpIQzNIYXR2VkUyREo1TU9qeWRKWStZTmd0TnVRSW50WFVKeXBw?=
 =?utf-8?B?Mmg1RTg0V1Z5OC8rMHJwYlc5MDlWTDU3dzk4UVpGOUExTkovYVY3bCtTR2k3?=
 =?utf-8?B?MkVHbHQ0N21NY21wdkFoLzMwcXBEV0gxOVp0dFRYYmQ1YWFtbS9adXNtckZt?=
 =?utf-8?B?WHQxblUxVUlpZFdXY1h0K2tUTWtpWnEvcm9tMmJJRkZyU2k1NDFseUlFWXdz?=
 =?utf-8?B?M2dPRG1MenNKdTJlWGRqZTlBWFRXalM3UmRNb3V4N3BDR09LMXBKcWQ2Mm5L?=
 =?utf-8?B?VFltcFRLY3RjdlBUNFZJWStaTk5VTUc4T3M4d2NIWlhtcWoyQVhxSXlNdnBJ?=
 =?utf-8?B?alJqbzF3NTdVWnNCNE1XcEFyR3I4S2JCVXNUbXJLUi9zcWphM1hWcEhURCsy?=
 =?utf-8?B?Uml3bG9LMDdKSEhiZVpMcFdUa3hnYlpQQ0JYNlBCR1RpcWhQYXlUdEZXbTE1?=
 =?utf-8?B?M2JRS3YzekdGbFZhRS8ra2hhTmJWcDk2b3BLMWxJTjJPUUxBWTRudGpUUXYw?=
 =?utf-8?B?SnhJZ0drMjlJNXRRb3NUaW9ZUDRYOExvcGJ0b2ora1ExUE9WQUZoS1djR0tE?=
 =?utf-8?B?TG0xK21mYVc5Z0FDcE5XL0hXZmNOMFM1a2I4TVo4KzJjZG9wSlF5amVLRDZl?=
 =?utf-8?B?aGZKS1NwbnU2YmtTTStISHJFdXNENGFKU01GNWozS0FXSm1KYnhKMm90N211?=
 =?utf-8?B?VHRuRWROeEQzaXFKVG56dEZBK2ZDUi83azNQTTZ6dVhKZHFWYXVDNXhhNzRR?=
 =?utf-8?B?Q0grNUxXRmlMUWQvM3JzTjIzeXhVSE5OT05FQmtTek1laWxSYjBNWk5Ldjl4?=
 =?utf-8?B?bkw3NnFURngyRXNqOHRjMXF3ZDNlQjVWYitKTTdCRTBrV1IyOTZUL0gxWjhZ?=
 =?utf-8?B?dzdKQ2dnS1g1NVJtUC9YcmwzcnBKcU45dTBEQmhwWC9xVktYbFJWSkdvUElE?=
 =?utf-8?B?azVEZVlERmxYeXFaaXAwWFR0eHZSeXZoUW9kalBxQUhtRzlqZEcvRGwxSjVK?=
 =?utf-8?B?S1pjd3YzY1lIcUcxcDF1dklRSFlzUFJpaTZSUzJzbFdIZTloRHVZNGQ4dEF5?=
 =?utf-8?B?c3RWeVlnaHNydjlnN3FLWW1kcWFxZm9yejVXRzJaWE5FLyt3QVBEKzVYV3V4?=
 =?utf-8?B?emFWT0xrUnJoSWZuTDV0Y1VBTURlLzFDYzBzNGxadHE0ZkwzemNmNHJTUWlB?=
 =?utf-8?B?R0E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d65ea72a-a559-40c3-da52-08dd6557bf72
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2025 13:29:30.4881 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QPC3Tzzt/gotjeIXlj2C+rWZzX7lm1SzUI4zTHYYhl3FZf27siuDwLNaHgOabpFwLWpE1mGJ/dOCl0DIglduM5DT2lzXLPcnFuhBaTHHEwg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6676
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742218211; x=1773754211;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xeDSeiSchtY7iNK/9uBUIdIOkszv4d8NzIwLtY0tmkQ=;
 b=b8Ah44J1dPcK+feOVfc9uAXggo8Ecl0XPbLr9sRLuXrtIRKvifg6dOqZ
 5tTBa1YT5z3G7XtfFcrqxsC6TPgVov6jTz1E7jMobwWB9kx7T70DtAep5
 YrEmSiH/rsuPtGZTDLI13aNlUqtNEFZsUCz3flB1p9YNtSuQD4bDRpiV/
 lkcMmDi5Cg8k9KXJ83XTtZe+SGFDhoO9Okmz4Ntp7rPFxn0xA+8FNxytZ
 fzAxFgzSfKsPrRmTcTINjZv9W1BMRuCIk6scsYXdL05A/cnQCc+D/VULA
 8YrPCv8x2s86N1XHNKRN4YD1JxC0171uBIRbUryreltx3687w9bdVlQH3
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=b8Ah44J1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-net v3 1/5] virtchnl: make proto and
 filter action count unsigned
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBTemFwYXIt
TXVkbGF3LCBNYXJ0eW5hDQo+IFNlbnQ6IFR1ZXNkYXksIE1hcmNoIDQsIDIwMjUgMjoxMiBQTQ0K
PiBUbzogUGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT47IEdsYXphLCBKYW4gPGph
bi5nbGF6YUBpbnRlbC5jb20+DQo+IENjOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9y
ZzsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgSmFnaWVsc2tpLCBKZWRyemVqDQo+IDxqZWRyemVq
LmphZ2llbHNraUBpbnRlbC5jb20+OyBTaW1vbiBIb3JtYW4gPGhvcm1zQGtlcm5lbC5vcmc+OyBM
b2Jha2luLA0KPiBBbGVrc2FuZGVyIDxhbGVrc2FuZGVyLmxvYmFraW5AaW50ZWwuY29tPg0KPiBT
dWJqZWN0OiBSZTogW0ludGVsLXdpcmVkLWxhbl0gW2l3bC1uZXQgdjMgMS81XSB2aXJ0Y2hubDog
bWFrZSBwcm90byBhbmQgZmlsdGVyDQo+IGFjdGlvbiBjb3VudCB1bnNpZ25lZA0KPiANCj4gDQo+
IA0KPiBPbiAzLzQvMjAyNSAxMjo1MSBQTSwgUGF1bCBNZW56ZWwgd3JvdGU6DQo+ID4gRGVhciBN
YXJ0eW5hLA0KPiA+DQo+ID4NCj4gPiBUaGFuayB5b3UgZm9yIHlvdXIgcXVpY2sgcmVwbHkuDQo+
ID4NCj4gPiBBbSAwNC4wMy4yNSB1bSAxMjo0NSBzY2hyaWViIFN6YXBhci1NdWRsYXcsIE1hcnR5
bmE6DQo+ID4NCj4gPj4gT24gMy80LzIwMjUgMTI6MTUgUE0sIFBhdWwgTWVuemVsIHdyb3RlOg0K
PiA+DQo+ID4+PiBBbSAwNC4wMy4yNSB1bSAxMjowOCBzY2hyaWViIE1hcnR5bmEgU3phcGFyLU11
ZGxhdzoNCj4gPj4+PiBGcm9tOiBKYW4gR2xhemEgPGphbi5nbGF6YUBpbnRlbC5jb20+DQo+ID4+
Pj4NCj4gPj4+PiBUaGUgY291bnQgZmllbGQgaW4gdmlydGNobmxfcHJvdG9faGRycyBhbmQNCj4g
Pj4+PiB2aXJ0Y2hubF9maWx0ZXJfYWN0aW9uX3NldCBzaG91bGQgbmV2ZXIgYmUgbmVnYXRpdmUg
d2hpbGUgc3RpbGwNCj4gPj4+PiBiZWluZyB2YWxpZC4gQ2hhbmdpbmcgaXQgZnJvbSBpbnQgdG8g
dTMyIGVuc3VyZXMgcHJvcGVyIGhhbmRsaW5nIG9mDQo+ID4+Pj4gdmFsdWVzIGluIHZpcnRjaG5s
IG1lc3NhZ2VzIGluIGRyaXZlcnJzIGFuZCBwcmV2ZW50cyB1bmludGVuZGVkIGJlaGF2aW9yLg0K
PiA+Pj4+IEluIGl0cyBjdXJyZW50IHNpZ25lZCBmb3JtLCBhIG5lZ2F0aXZlIGNvdW50IGRvZXMg
bm90IHRyaWdnZXIgYW4NCj4gPj4+PiBlcnJvciBpbiBpY2UgZHJpdmVyIGJ1dCBpbnN0ZWFkIHJl
c3VsdHMgaW4gaXQgYmVpbmcgdHJlYXRlZCBhcyAwLg0KPiA+Pj4+IFRoaXMgY2FuIGxlYWQgdG8g
dW5leHBlY3RlZCBvdXRjb21lcyB3aGVuIHByb2Nlc3NpbmcgbWVzc2FnZXMuDQo+ID4+Pj4gQnkg
dXNpbmcgdTMyLCBhbnkgaW52YWxpZCB2YWx1ZXMgd2lsbCBjb3JyZWN0bHkgdHJpZ2dlciAtRUlO
VkFMLA0KPiA+Pj4+IG1ha2luZyBlcnJvciBkZXRlY3Rpb24gbW9yZSByb2J1c3QuDQo+ID4+Pj4N
Cj4gPj4+PiBGaXhlczogMWY3ZWExY2Q2YTM3NCAoImljZTogRW5hYmxlIEZESVIgQ29uZmlndXJl
IGZvciBBVkYiKQ0KPiA+Pj4+IFJldmlld2VkLWJ5OiBKZWRyemVqIEphZ2llbHNraSA8amVkcnpl
ai5qYWdpZWxza2lAaW50ZWwuY29tPg0KPiA+Pj4+IFJldmlld2VkLWJ5OiBTaW1vbiBIb3JtYW4g
PGhvcm1zQGtlcm5lbC5vcmc+DQo+ID4+Pj4gU2lnbmVkLW9mZi1ieTogSmFuIEdsYXphIDxqYW4u
Z2xhemFAaW50ZWwuY29tPg0KPiA+Pj4+IFNpZ25lZC1vZmYtYnk6IE1hcnR5bmEgU3phcGFyLU11
ZGxhdyA8bWFydHluYS5zemFwYXItDQo+ID4+Pj4gbXVkbGF3QGxpbnV4LmludGVsLmNvbT4NCj4g
Pj4+PiAtLS0NCj4gPj4+PiDCoCBpbmNsdWRlL2xpbnV4L2F2Zi92aXJ0Y2hubC5oIHwgNCArKy0t
DQo+ID4+Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkNCj4gPj4+Pg0KPiA+Pj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2F2Zi92aXJ0Y2hu
bC5oIGIvaW5jbHVkZS9saW51eC9hdmYvDQo+ID4+Pj4gdmlydGNobmwuaCBpbmRleCA0ODExYjlh
MTQ2MDQuLmNmMGFmYTYwZTRhNyAxMDA2NDQNCj4gPj4+PiAtLS0gYS9pbmNsdWRlL2xpbnV4L2F2
Zi92aXJ0Y2hubC5oDQo+ID4+Pj4gKysrIGIvaW5jbHVkZS9saW51eC9hdmYvdmlydGNobmwuaA0K
PiA+Pj4+IEBAIC0xMzQzLDcgKzEzNDMsNyBAQCBzdHJ1Y3QgdmlydGNobmxfcHJvdG9faGRycyB7
DQoNCg0KVGVzdGVkLWJ5OiBSYWZhbCBSb21hbm93c2tpIDxyYWZhbC5yb21hbm93c2tpQGludGVs
LmNvbT4NCg0KDQo=
