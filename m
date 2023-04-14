Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A836E2718
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Apr 2023 17:33:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AA5C28442F;
	Fri, 14 Apr 2023 15:33:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AA5C28442F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681486401;
	bh=q4jetJ6R+6/vsOQ+77Xp9EV1w7YVCe0kH+1oxyOfFBM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fLszR9vTGbAb2u4X+j116lpW/sQd0IJI2h7VdJr8hEuKxf6nrSEVay4ja/7hqTEAF
	 XYlIXeVUm4y2DzwfwJBD/OvBhKuyzVYXto5GVbGTwZorU2499gTOyxD3PgJk8qQah1
	 GYOxzuq3anRORqKfXFls2Cs5gAcXTQK2gJqSoBBBtspnKIcvXjq7uc3+HjNDIEsuMe
	 8sZJdc6DvO/z2dF0yB/JB57OzDcwAilSrgwK9QaAzdNibxDHdbzB+SH/RMf4C6PeJy
	 5W8qzAqlLxP890SCUcnawP8VU1hgKgGZiAaY1w8qVcwMBoZXmi+j1hgMDbhIDljFoW
	 tCBNQ2MiS/hzQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0Crl85eW9M7R; Fri, 14 Apr 2023 15:33:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E19158151E;
	Fri, 14 Apr 2023 15:33:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E19158151E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9B8621C3E7D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 11:16:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7DEF241C24
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 11:16:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7DEF241C24
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cbl02RKsw0kC for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Apr 2023 11:16:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F3AB04187B
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F3AB04187B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 11:16:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="328589206"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="328589206"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 04:16:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="779157637"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="779157637"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Apr 2023 04:16:19 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 14 Apr 2023 04:16:18 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 14 Apr 2023 04:16:18 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 14 Apr 2023 04:16:18 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.49) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 14 Apr 2023 04:16:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OXNXyq0ZCAzkvolmUTnFapsmiDT2ieoRiep1A2GrbM0u1U9UOt9zrhE+IXOVCi4MXNor/nC1bH2Hclr6kftRk8CEXYsvvVGX6NpIM+V8EUFHx9b7wQpF5q4cyfTeDpBOoFD6enM4Q/RJwU+dIcPt7XQH3QUWvgQ/JxbHd08HOv3wB80wDe6aCNaoEVUXHsO9dYsUZ+gWFPVi6miiRJSAEkOAflOXLO/A9wLCAg0xfHrmzLnrqQ3E83exY+i5yEQXrOohcHBPW8rlTvMijQU1nrNtD60HZCv1QZ2kOxha4FeBBS0Byn3MpVhv1v9qqbcqqCTziHAt6vaapfAWBzcUQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i/k6LKcSkDiZ5Qi48ejRjSuRbkEZtMUC1l4ddpvgj9M=;
 b=Mw9mRfxGlKyzG8dWGneDQMmto6lga8T2T4Zsm83lxpmDeOE+xiYeBwVnIJ8y3VigL5U1G5fbXOFu0UMMPaNahFjNDvRp37vWvVUSuTmsa+hvRKffLozdhdrcjcMX/n8AZUi3BmYUzbRiJZE5j9BfYXNF6gMaVTcegaJnRXX6GQ4rC+yObmiBex6mLVXLSMDtuboJKppfpxqJnpUOwb/k4+Bypy0TykhreiGFpIcEEAtbed1Q2GUPA6oVc7yTlSb1E2APUZazMVYTmXkKhGjheWOisjnzItsDbZRFOD5YPV9alpch5pI06Uz0oz5uOLkdfg23RY/aA4db4QH0XwwCYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5830.namprd11.prod.outlook.com (2603:10b6:510:129::20)
 by SA1PR11MB6943.namprd11.prod.outlook.com (2603:10b6:806:2bc::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.38; Fri, 14 Apr
 2023 11:15:45 +0000
Received: from PH0PR11MB5830.namprd11.prod.outlook.com
 ([fe80::1c4e:86ae:810d:1fee]) by PH0PR11MB5830.namprd11.prod.outlook.com
 ([fe80::1c4e:86ae:810d:1fee%2]) with mapi id 15.20.6277.036; Fri, 14 Apr 2023
 11:15:45 +0000
From: "Song, Yoong Siang" <yoong.siang.song@intel.com>
To: Jesper Dangaard Brouer <jbrouer@redhat.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "David S . Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
 <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, "John
 Fastabend" <john.fastabend@gmail.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, Vedang Patel <vedang.patel@intel.com>,
 "Joseph, Jithu" <jithu.joseph@intel.com>, Andre Guedes
 <andre.guedes@intel.com>, Stanislav Fomichev <sdf@google.com>, "Keller, Jacob
 E" <jacob.e.keller@intel.com>
Thread-Topic: [PATCH net v2 1/1] igc: read before write to SRRCTL register
Thread-Index: AQHZbnY42u7Gz9ET40eYzbfYWKvVVq8qkCGAgAAQJMA=
Date: Fri, 14 Apr 2023 11:15:45 +0000
Message-ID: <PH0PR11MB5830D3F9144B61A6959A4A0FD8999@PH0PR11MB5830.namprd11.prod.outlook.com>
References: <20230414020915.1869456-1-yoong.siang.song@intel.com>
 <8214fb10-8caa-4418-8435-85b6ac27b69e@redhat.com>
In-Reply-To: <8214fb10-8caa-4418-8435-85b6ac27b69e@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5830:EE_|SA1PR11MB6943:EE_
x-ms-office365-filtering-correlation-id: 54a8203d-51ec-4271-8697-08db3cd997d6
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KLiq7BvJc+dmZ+CUXbc59ft2bRqPtz0cotwqh/RbRxzpB3BPxn2eYbB2BJdYJjJOuJakBOuIHOczWR+0ir4C/1EspBQX3EcM8FSnEEhcMni0v//2QBrkzuUZPxRWS+W7SByeiVNtA1V8XmxPvfgE8+WeSBux49NUEebW4T9U6DuJq4DwwZ4NePf+krSFhtADZ27pYNjIhuhqQ4u9/ToZBrDYBUKnsib7vCX7sGXhThM4blLlA8VIjJmkRrOsTYn2YSFb3+uESvpxwU5zwu20nWncb1zb+daXZx8ydom0qx69jO/4lUwpdW54OS60GlpeXxCeokkqDfK36QxkqQ96Xz3VPGtZK09H7m2drm2FCywLV9gfIMkD0ib7QtRrQp5bW5RKovo/gkpR8uFDOmBZqT0YM/bWDFOD+8k0SrGeB3dcCcXIzPV00Cxwvki0vwc44Ds6+KMsQeiXhprACdS1UoYudiAeHvfJUQEQLsHQeSRNKlseL6QsEgb4RNyqFS/YZTBhzFLsxofRuqfQ0J4HEe9kePNCtZ1qlwODiPxlR/9j+6xJebXaGbXAZ8YD1sz9LbOmKm+7e0x7roYhULG2QV4RdlQtZZ2kqFYH8jF5RCAYm6okvU70nwW3mQTcmumo1Lhs1atcCWaopIwl8eV/OQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5830.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(39860400002)(376002)(346002)(366004)(396003)(451199021)(38100700002)(7416002)(921005)(71200400001)(7696005)(55016003)(52536014)(5660300002)(83380400001)(2906002)(38070700005)(6636002)(55236004)(54906003)(110136005)(6506007)(186003)(478600001)(33656002)(53546011)(86362001)(26005)(9686003)(66446008)(4326008)(122000001)(76116006)(66556008)(66946007)(66476007)(64756008)(82960400001)(8676002)(8936002)(41300700001)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a2hhTTVlL2pmUmhhN2VGc0Y5Z0d0RHhWVlVDTlR2TjFDZ285a2ZURXNyeDFT?=
 =?utf-8?B?VDBXdTZwcHRXQ0R5emxlVHNNdkNocHQ5d3lqYUZlMGNjN2cvUzFEdEU0UkJs?=
 =?utf-8?B?Z3lBbks2bkM0REpTUGw4d1hlSUdDc0VsMHY1RU9kTDMyeVg2UDNuK0hEbWJS?=
 =?utf-8?B?UUJtVHEwTVo5L0Q3dThWUG12UkVJWG5zM3c4c2o3VEcrcU9MVy8zeVROTlIy?=
 =?utf-8?B?QlgrcXUySGJwR2xHeUN0UmtHL0VWSWtlL1N4WnkrZCthZU9nZU9MellZSTc3?=
 =?utf-8?B?R2t5citJaHgzOURrc29WTFJjU1JjcHJTSEMzem1weC9uaTlGRjJ4VmtLU3Z0?=
 =?utf-8?B?aWwxUndwUENkUDdQUTd1WnE0K0dKczRMZVg2Q3EySTlrYk5PWEhSY2FYS2Z0?=
 =?utf-8?B?UnpacDFkcTJwbllZMHJlNGIrVG9QdjEyU1d4QnYzSzR6M2hmblRqZHQyZEJH?=
 =?utf-8?B?UllnS2JXakw5cUpYYVVYREV4V2hlSGw0U051Z2NSOHdieXZIVG5lbTM2YzRi?=
 =?utf-8?B?enhvanEzSzdTdVEzakJQdEY4cGFLQUc0K016K0doWk1aUlpRODBMUy94Skxa?=
 =?utf-8?B?UzhSeEkzQ3g4aWdnNWRPMkVKaUlMaUxEZVBEa1lJOXBJdXJ3a3FaYlVyTm9q?=
 =?utf-8?B?bVJCVWtTZFQ5dHZ4Tk9ZVnZodjZsYWl1ZmlDVmw4cHdjUEJOZlpNSXN4U0xN?=
 =?utf-8?B?M01GcFVEL0U1eVVhNi9lVDhiNUtZaHBpL2RqVzg4Ni9LcWdMTkQ4N2QwM0hW?=
 =?utf-8?B?cU1POG42bGE3TWcwZWZRUFFFajJTeGFEV2poMDArazd0dExZcU1QUWNWMFRz?=
 =?utf-8?B?Y1BVZ1BrMWRXUWY5M1hJWkhVY2FDMVE0b1NiSzBpSHpncXNDZU42cWdwcFRT?=
 =?utf-8?B?S09qdm03b0J2Mm16NU1iLytqNElUYUdHUFRRYTJWRTVZcXZrajZVeUZNYi93?=
 =?utf-8?B?NzhPNnhzSWdNbVM4Z1pqQlJVYzVsNk53VjdJa01vWFQ2UHlWdFdBM0FhRDFV?=
 =?utf-8?B?RjVFZXlLMGlucDdpalNvUGc4bWZncUwvdGRLM1VBWXBpTjhrVFJOQy9UcFE4?=
 =?utf-8?B?bHRIcTZpM3ZKZjlZUUFjRGZVaHN3NUgvWUJNcDJZelpDTmVyeFFWeHZxY05V?=
 =?utf-8?B?K3BqajdxZWlKcnRlZEh1RWcwSnEwVEQxWUtZNWVLS1pnTWtLZ3lxcXhITVV3?=
 =?utf-8?B?YVBGbXU0NGltSnh4MFNCUkxxQWNCU3I4TDRMTFJOYVZSVS9VVkpOTitOWWdK?=
 =?utf-8?B?NXBTOXZ6aVlXOHZUclY2bEdxTm1iSFM0ekwvdXNHdU1MeFFuWjFtQXdsZFdP?=
 =?utf-8?B?emFCQ29oamVhcU93RFlWcGEwRVpMTFRwSGFGclI2T3BnaDZZdnNoTUdhWnJW?=
 =?utf-8?B?U3pVK0V5V01xSGY5OGdxU0NqSmRiWk1UcWpuMmdVV1BhWld6N3ovODQzNFFn?=
 =?utf-8?B?NXZsWEwxVmViSlhnZUlUZHIvakVzMDFEOFRvZ0pyL2E2TE54b3R6VElOMjFM?=
 =?utf-8?B?bmtEQW8rRDNiS3BhSytjRkNhRzBrZU5ZMEJjMll0OUpaL0U1NlpXY1VsWWg2?=
 =?utf-8?B?bVpreTVsclp3MktoNkpiUHdkMVdhQTRZM21xMUF3L0VpU05OQkZwUUtoTnVh?=
 =?utf-8?B?RDdQL0FlQXJkdWx1ZlNhNGlaUElnNy9TK1FNclo2R3poYmFJLytQOFNYZGlS?=
 =?utf-8?B?eXNDZDBQemg3QXpkYzAyell5ZkJTN1lNSldhWjkwQ2xsaDFvNnp5cU1RRlpC?=
 =?utf-8?B?ME5oT2Z1Y1VZTW0zN2JsZC9UaEp4Y2ZINVFqSS9IelhrdlowRk95a3hETXR0?=
 =?utf-8?B?L1JVdmtKblVKL2tVaU1xck1LQnZrcmUyRzZMb3BTZFNlbTFZWUl0NlljN01M?=
 =?utf-8?B?eHptZG84ZHJsSDQzZDIyMVAxcHVZU0xtQlRIVUZ4M2piVjZyUDJVd1hsdGlC?=
 =?utf-8?B?LzlvTndDWHE4dFNyRlJ6djRFYmcrOGY1QkdBWnR4TnN1dUR5YitXbm81RjF0?=
 =?utf-8?B?VlJHa1hkcU5DVnduMGd2YnhvckpzSi9NNzIybFp1T2dPbCtGR3NLRFBJWjVH?=
 =?utf-8?B?WXNTZGwyUVVSN0ZTWWpVSG9NS1VtRFUxcFJsSUpkMTBsTGw5NHZiMjloMEFY?=
 =?utf-8?Q?6sCV5lmvzP6OupK/gG5hbEIlz?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5830.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 54a8203d-51ec-4271-8697-08db3cd997d6
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2023 11:15:45.5901 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y/JA4gB92QfvBFMlFr3Kr+X4CmrAVZrYEbfV4tCAKpv+0+jpstHJHvjd41Wy/q4kkashijyAjN8raNlwCPj4pclflsPSCboSrkOMYULPZJ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6943
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Fri, 14 Apr 2023 15:32:50 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681470981; x=1713006981;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=i/k6LKcSkDiZ5Qi48ejRjSuRbkEZtMUC1l4ddpvgj9M=;
 b=H9/0VMPzJ7geLpXjc3cvNqWr3bXmISZXJJI8NCqtWZtaq9EjEYOnEXmn
 L3Iy50+hEegz1/Rlo/RWccNgz1dTp+VKq4WQrHoW4oQcuFoGrO71mMlcm
 rOmj8WSTFPOXDPpMQvPcUjdrWvvCDFdvs7Jyr8vN0j8HQzCO9QTUjDVXl
 7j7bh/ZSWjzcPxXSe6Crh5E/ktbDiIv2iFiUlrH94WHm42TxHdyNQ5xS5
 ML6oVf41/b5lqTfjd69NuObUWMNE19jCIHUmqwVDZmlo2Bj+sDquhkqDM
 EA0ObC3W5ien1dWxrW9sbAREvosVXwlZdkoKT6lEA3EYhAs3FL2otkr1s
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=H9/0VMPz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2 1/1] igc: read before write to
 SRRCTL register
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
Cc: "xdp-hints@xdp-project.net" <xdp-hints@xdp-project.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Brouer,
 Jesper" <brouer@redhat.com>, "bpf@vger.kernel.org" <bpf@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Friday, April 14, 2023 5:50 PM, Jesper Dangaard Brouer <jbrouer@redhat.com> wrote:
>On 14/04/2023 04.09, Song Yoong Siang wrote:
>> igc_configure_rx_ring() function will be called as part of XDP program
>> setup. If Rx hardware timestamp is enabled prio to XDP program setup,
>> this timestamp enablement will be overwritten when buffer size is
>> written into SRRCTL register.
>>
>> Thus, this commit read the register value before write to SRRCTL
>> register. This commit is tested by using xdp_hw_metadata bpf selftest
>> tool. The tool enables Rx hardware timestamp and then attach XDP
>> program to igc driver. It will display hardware timestamp of UDP
>> packet with port number 9092. Below are detail of test steps and results.
>>
>> Command on DUT:
>>    sudo ./xdp_hw_metadata <interface name>
>>
>> Command on Link Partner:
>>    echo -n skb | nc -u -q1 <destination IPv4 addr> 9092
>>
>> Result before this patch:
>>    skb hwtstamp is not found!
>>
>> Result after this patch:
>>    found skb hwtstamp = 1677800973.642836757
>>
>> Optionally, read PHC to confirm the values obtained are almost the same:
>> Command:
>>    sudo ./testptp -d /dev/ptp0 -g
>> Result:
>>    clock time: 1677800973.913598978 or Fri Mar  3 07:49:33 2023
>>
>> Fixes: fc9df2a0b520 ("igc: Enable RX via AF_XDP zero-copy")
>> Cc: <stable@vger.kernel.org> # 5.14+
>> Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
>> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
>> ---
>
>Reviewed-by: Jesper Dangaard Brouer <brouer@redhat.com>
>
>> v2 changelog:
>>   - Fix indention
>> ---
>>   drivers/net/ethernet/intel/igc/igc_base.h | 7 +++++--
>>   drivers/net/ethernet/intel/igc/igc_main.c | 5 ++++-
>>   2 files changed, 9 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/igc/igc_base.h
>> b/drivers/net/ethernet/intel/igc/igc_base.h
>> index 7a992befca24..b95007d51d13 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_base.h
>> +++ b/drivers/net/ethernet/intel/igc/igc_base.h
>> @@ -87,8 +87,11 @@ union igc_adv_rx_desc {
>>   #define IGC_RXDCTL_SWFLUSH		0x04000000 /* Receive
>Software Flush */
>>
>>   /* SRRCTL bit definitions */
>
>I have checked Foxville manual for SRRCTL (Split and Replication Receive
>Control) register and below GENMASKs looks correct.
>
>> -#define IGC_SRRCTL_BSIZEPKT_SHIFT		10 /* Shift _right_ */
>> -#define IGC_SRRCTL_BSIZEHDRSIZE_SHIFT		2  /* Shift _left_ */
>> +#define IGC_SRRCTL_BSIZEPKT_MASK	GENMASK(6, 0)
>> +#define IGC_SRRCTL_BSIZEPKT_SHIFT	10 /* Shift _right_ */
>
>Shift due to 1 KB resolution of BSIZEPKT (manual field BSIZEPACKET)

Ya, 1K = BIT(10), so need to shift right 10 bits.

>
>> +#define IGC_SRRCTL_BSIZEHDRSIZE_MASK	GENMASK(13, 8)
>> +#define IGC_SRRCTL_BSIZEHDRSIZE_SHIFT	2  /* Shift _left_ */
>
>This shift is suspicious, but as you inherited it I guess it works.
>I did the math, and it happens to work, knowing (from manual) value is in 64 bytes
>resolution.

It is in 64 = BIT(6) resolution, so need to shift right 6 bits.
But it start on 8th bit, so need to shift left 8 bits.
Thus, total = shift left 2 bits.

I dint put the explanation into the header file because it is too lengthy
and user can know from databook.

How do you feel on the necessary of explaining the shifting logic?
 
>
>> +#define IGC_SRRCTL_DESCTYPE_MASK	GENMASK(27, 25)
>>   #define IGC_SRRCTL_DESCTYPE_ADV_ONEBUF	0x02000000
>
>Given you have started using GENMASK(), then I would have updated
>IGC_SRRCTL_DESCTYPE_ADV_ONEBUF to be expressed like:
>
>  #define IGC_SRRCTL_DESCTYPE_ADV_ONEBUF FIELD_PREP(IGC_SRRCTL_DESCTYPE_MASK, 0x1)
>
>Making it easier to see code is selecting:
>  001b = Advanced descriptor one buffer.
>
>And not (as I first though):
>  010b = Advanced descriptor header splitting.
>

You are right. Using FIELD_PREP() make the code clearer. 
Thanks for your suggestion. I will submit v3 for it.

>
>>   #endif /* _IGC_BASE_H */
>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
>> b/drivers/net/ethernet/intel/igc/igc_main.c
>> index 25fc6c65209b..88fac08d8a14 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>> @@ -641,7 +641,10 @@ static void igc_configure_rx_ring(struct igc_adapter
>*adapter,
>>   	else
>>   		buf_size = IGC_RXBUFFER_2048;
>>
>> -	srrctl = IGC_RX_HDR_LEN << IGC_SRRCTL_BSIZEHDRSIZE_SHIFT;
>> +	srrctl = rd32(IGC_SRRCTL(reg_idx));
>> +	srrctl &= ~(IGC_SRRCTL_BSIZEPKT_MASK |
>IGC_SRRCTL_BSIZEHDRSIZE_MASK |
>> +		    IGC_SRRCTL_DESCTYPE_MASK);
>> +	srrctl |= IGC_RX_HDR_LEN << IGC_SRRCTL_BSIZEHDRSIZE_SHIFT;
>>   	srrctl |= buf_size >> IGC_SRRCTL_BSIZEPKT_SHIFT;
>>   	srrctl |= IGC_SRRCTL_DESCTYPE_ADV_ONEBUF;
>>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
