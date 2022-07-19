Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B0FF557984A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Jul 2022 13:19:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5A7BF41554;
	Tue, 19 Jul 2022 11:19:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5A7BF41554
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658229547;
	bh=/LYnFgX4wFTzX2MkenACtoYCdzApaQ1PMxoCtVG6AIQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VQesuiSt29y4nW5Rfz0BLyaePWRXpTxqxzKo9o0fHgV0ZRTj1lpsAMgWReOK+W4ZT
	 2sKjIdcXUtFBzQduhJkxgxYBMfkssXL8PMZhmT16MMOHA8YUjXHkDoHB/tooBJzpGs
	 O4CnAlig3obPaEjpW2H0VITK7suL07ZmVBc/6rsF9uLHWRVD85hSgyJ4PPCk6JQ3av
	 xHK8h1flnlCQpWfQvyMPTrMwnIQvOCoX7oz3kCqiJrSCmXbOF3GLP6FzQBnAxcokqQ
	 xAIQnvclzxNDqKDhy5Da3HRmoi7KqsuX3o+LIMi7NIEQwfpuedHdfNQI1fceUPFUZl
	 IvUShDvtDineQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vEUg2vpyUgX0; Tue, 19 Jul 2022 11:19:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AF0EA41552;
	Tue, 19 Jul 2022 11:19:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AF0EA41552
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5B23E1BF8C7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jul 2022 11:19:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 33BC4826BB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jul 2022 11:19:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 33BC4826BB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PQar9wWeEGDd for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Jul 2022 11:18:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D6CC3826AA
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D6CC3826AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jul 2022 11:18:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10412"; a="350427978"
X-IronPort-AV: E=Sophos;i="5.92,283,1650956400"; d="scan'208";a="350427978"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2022 04:18:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,283,1650956400"; d="scan'208";a="594797197"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga007.jf.intel.com with ESMTP; 19 Jul 2022 04:18:57 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 19 Jul 2022 04:18:57 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 19 Jul 2022 04:18:56 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 19 Jul 2022 04:18:56 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 19 Jul 2022 04:18:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L0bl0lbn1HS2Xg+DqK8Bs088DuzsU85k0PRdlnLOHSlfzT5gLzBSSD9Q89GXqJieB2tx1ewZxl51B7x+WmU8kfAQDCwkMVaQwVyiZlpN8eDT2yDLm+DQf74Jy5XAjjMonpfUn1Id5AIVQStv/sguSdpwxxH+NW2QIG8eDF9TcmIu0M/JcByCB15ebh5tbkPJoU+UtpLkKVt3NJaaiCJLfJ4PZJpNY4ehTkFqkuqrysHZ+sbY/J5L2PGxj4HsXnp6qCQ6O7u4ngEM8MOpC13XbtjwclOo0omibQTWeD2f8pErSiH9NsoMq19Q1LrPTZZdJe58/yzg5/nNpk2TVeJsRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pj+vPzQkZpS83oNz3hyUKgOHwfkUejgjFdgWpDnTRe8=;
 b=l9T9bEidVQoPadebayk2RUpjK9L49oJJEXRbeYGxSAXJZkxzewDjL6t8f2Bv+zQ8MqN0L1vS891/MIBUQPFNcOQc49dig+DbfyFeERSZDTj8LsNaWYNK6hLlrKO84OtMCrg8iBc+OI2aN546+ytXFAqf+TboV4A80aYrDID3BUEuZkJ8INpYr6pCsKUeYuImZAAHxpx5P5Gux5+rnd+8XHgOv0g6YiB8EguL4RX75AQF1DOsjDcprt+HjIhco8ugBTtT4RZ7dz3j8VBQ1bsA3SC9HH0B9o4u3iqBMr5+KL93Nw49sY8nj34JKPgOI7jzq07lOxVoz7VGqN5aKt1LGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3609.namprd11.prod.outlook.com (2603:10b6:5:140::20)
 by PH0PR11MB5807.namprd11.prod.outlook.com (2603:10b6:510:140::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.23; Tue, 19 Jul
 2022 11:18:55 +0000
Received: from DM6PR11MB3609.namprd11.prod.outlook.com
 ([fe80::169:2b76:cd12:9dc4]) by DM6PR11MB3609.namprd11.prod.outlook.com
 ([fe80::169:2b76:cd12:9dc4%7]) with mapi id 15.20.5438.023; Tue, 19 Jul 2022
 11:18:55 +0000
From: "Sreenivas, Bharathi" <bharathi.sreenivas@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v4] iavf: Fix max_rate limiting
Thread-Index: AQHYf3bHYs0vb9TMO0CfnmXA1c4pta2Fw24g
Date: Tue, 19 Jul 2022 11:18:55 +0000
Message-ID: <DM6PR11MB3609F21E1350A499BE1177338E8F9@DM6PR11MB3609.namprd11.prod.outlook.com>
References: <20220613224123.3978156-1-xuejun.zhang@intel.com>
In-Reply-To: <20220613224123.3978156-1-xuejun.zhang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3b9f60f4-87c9-4304-32f2-08da697877ae
x-ms-traffictypediagnostic: PH0PR11MB5807:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XpD3tnma9gZ0Qf7bLFbHBAhhMVKSv4kcrVjtd5h8aMLUHlZS0rzrEsn3iXiJbJdqziT70RlGA9wa8yiddJcH2Ltp+nF3z5qPolYurAXf8gTLgCnf0mjGxRsMpnQ5TauCH/vZ/O/U1c+9QH261YGg09qqcurdXC6jT5VBaRdQlhT85ODgcb4rTqQrYjDyS6V8YKKYx3ikVFAA9F+7LlfY/uXVVVCjpZiIgQW0pa9GqBw1f3JDrxb/3uPMAUjvH9AUTmdl+Ay68y9KofQDFWXFXFUTUFKCCIHmK4vLHCioavnCruPiMm9YORalKY5KVw8R9WK50qLDTHSt/wpI+bANyW2+wpHcR1IhlHF8ZTIhSbIZkfjo5cSiLTxTZqmaFhyyBpTCnqgp8ZZm8taEvK+z9tQ16IG85FZviy/unNYBzRlNHEBSSFa5JbiMTaumVzIHvFKwMOMtKYdmM6ljPR1m1nVly5+P8uSg4Zw78rrQwbdagOuR5cnrdXX4xMf1LIjL1vc5MbqNq50J8OnxPoqT1N5tIqgZQaFUxGD84eot7DuSDB2l+fNTB+ITIL77/BQx/9+9plm1ATuVplOweP9aPieQ1kJng+Cs7NsrvXxJg1KP+lvRq9Lnmfh4cr86cVv2jbb928n85hzl9Q6yvwmzzOddAyH6ohqV0kK5q3wYTuj1BPXwRHAaa+7iG9bc25bLCAtXsdHOVsQvl83w44THAZaGtlE87RKoboRr41Gk/SOkB1hwXpJD2lJpUEYjR8pEgF9KeqLi5t00XGoQ3G0u34vrhTLHK9fJNBIoJZ9omO0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3609.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(366004)(39860400002)(346002)(396003)(136003)(71200400001)(41300700001)(478600001)(186003)(53546011)(6506007)(82960400001)(7696005)(122000001)(9686003)(38070700005)(38100700002)(83380400001)(26005)(2906002)(33656002)(6916009)(8936002)(5660300002)(52536014)(76116006)(86362001)(66446008)(66476007)(64756008)(316002)(55016003)(8676002)(66556008)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9SokB4ZTidGtSxZJDmi0UHKzOOqBrKKkcX3kF37NnBoBqZn31kOnYqAjitaM?=
 =?us-ascii?Q?9ftkdQG3fy21P2Y9vhQaywmzRR+ULvWyKMc73xE6UwNecA0guLYkfQjSruGH?=
 =?us-ascii?Q?zA7K0BOI4i/ejkusvYaDrg+bqrpvGhJHvjEJX9yHCxwyMiadFbSiJwObHHCf?=
 =?us-ascii?Q?Kz3dC52+8YSnV7hy5RSulTaTbv3n+cftnZI1s7v1+IglW+UN7S63yWNj6OQE?=
 =?us-ascii?Q?2YznI+doinWfFllcqkmkly51euWRmqPqNEz+LBItSwSCI/lwPkag8viKNSfD?=
 =?us-ascii?Q?BXWXWfoTOt85xAwq3TPBC/1eQeTXtV0fez8KPW5XxilYJTOdrK5ZSu3aUPLE?=
 =?us-ascii?Q?Z/IO5xYov9FAKLhHKuntTOLqCHWtl4PubLvymOGAvNZ70eoPTNM+ktvIeGvW?=
 =?us-ascii?Q?ezjhYbQh2If7N64tc+NfbeZo18bA/BQY/DFd3C0vZ+6uLQd95+OwzLf5UBGX?=
 =?us-ascii?Q?yx2JUimwnQMAE8pHjHpCqgWxs80LJWT6m4g7f4uUoLSekdNy10nZsjKPi8iB?=
 =?us-ascii?Q?S2OgUywH6BzAjI501HB3bbl1RHMWmE5V1C2oYGwLzYlH4V2Y87HN7FprIPSy?=
 =?us-ascii?Q?krwYEoyRkV6mKDPCkuRxV+6CVNF/6gh6KXRxEKAnxXbdYKw3c8aTe9PHhNTz?=
 =?us-ascii?Q?OzuBqN031ysBKnxalHj0BGhAG4Fw59E6CSdYC5sT3zgwqY8Q6qj3Hkd2IHDQ?=
 =?us-ascii?Q?HI+rTyDM4w2AAF3DrcZpqEy/TxG4n5uE1apNPQe+poehMeAuBjfns5UOXPe5?=
 =?us-ascii?Q?NPkwDBu4gwTowVO9OA3pk0q4YqcU4NRTbqVUrc464ge/lAGCZRGpaOmzeyfj?=
 =?us-ascii?Q?THbmAgqZXNFnbXPSQYrsXK2MyC1a4oVYMJRITqc/QdvRhXQ19ds+P+MhVeaL?=
 =?us-ascii?Q?iZzAujHBuuSKj8N/ZmnaqpBx3MPUOnHmYoUlqI1lIWsCDGUvv1vTJNpxZcEG?=
 =?us-ascii?Q?5wTdeiwwh3tMqZkVJMo/6l9EPEOXMpohSDZMC5zVANZsgI2QkihBLckT1aE3?=
 =?us-ascii?Q?TclaM0p6NeZz/d68W0O1Nwy/bJzYCV6jLUd7wsDN2BLBCCa7gII59LJsTi/w?=
 =?us-ascii?Q?B/NogkN54L4R9anc6bKVzjETBM3YwrGSEt0K5KGSOEoN7tIMWYmRVp8/a77S?=
 =?us-ascii?Q?RY8XTqIl4v0IZR6EG6+PYOkE/po2gjp33b141LqTeGpkymXlu1qetZp6PE0u?=
 =?us-ascii?Q?1uWJxMHnJcoI8rK5NXWNQDB+A25wPsuUj5KLyz1art3WvHLjnrZKg8+Ln1zL?=
 =?us-ascii?Q?uwtc0FdKkHWsU1qfGR0pipn6Yid4rvGuK2KTj2rPIoYtVb8uEwoO259Rqfdc?=
 =?us-ascii?Q?fOVk7GdiJAluq+caSKPhV/eYAK7WbD/eYciHPWRKcg6pGV1xFy5wOdPvz+R1?=
 =?us-ascii?Q?pYzEW/wWrV0BnRURUxjOvKg8S4hJ2kODlQiL5z1W8HyiGU67jEmYzIf8enS8?=
 =?us-ascii?Q?c1dLntDfdKFMlT6XVreD3Zz7z8OX7mNy4VRBIKsVeN4TkkqT4u9V57wkKDLs?=
 =?us-ascii?Q?MiqMdE+vY+viTPAgQc41dQ8K3xywiGAFNIAVEvcUoCUX63l4Uhl2ACV2/7UZ?=
 =?us-ascii?Q?Pij7J6KB0KeztaXvgfany97/4gfdR2+akbtJNEkxrdDUXarZLa0YRrZPAIKV?=
 =?us-ascii?Q?cw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3609.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b9f60f4-87c9-4304-32f2-08da697877ae
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jul 2022 11:18:55.0618 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +CCsUp44Fi/mroA+LbLr0EMLF/UFrmte/nvFVN3dI8rCY4UTf0l4M+qqWIc3QeWp2sodWPzHfUdQC8E0Dz49L72bdAcZNNCUEWv1WgtN2no=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5807
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658229538; x=1689765538;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=IPBtzsWuQs2TXFRd0lNglzHzHKlRn6TZJg7ISWYAzKo=;
 b=I1Wzxg+ds01JRsqcA3z1S6ewkaoou9F+WGHCyPulfecmrgco3P16foN9
 3ktgate8YheP1D/k28gjrXGlYkzIrHLqmA32DYr/a6jbFNXapv6SHIhnK
 tfWvYKZOjbgO4Fwx/utZUtLs4dNQQLp/WK2h89qRoLiim6Px1aIIQKQEH
 BdA+Gb5FKPgGQVlyScKycv766vxn8dZ1gCxgq5YPptkd+Vzm1Yd8zUzCP
 VC4NAeMv5qaidn4OTaxzCUVqAYEkDM5lefrnz51vTSv441Z3aK1T9vFTM
 J8Z2YvjntHyRJvtueJnhtvxaU3z+bEQp2NdtL3ln4kTD1IqQhJtu8jHUv
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=I1Wzxg+d
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v4] iavf: Fix max_rate limiting
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jun
> Zhang
> Sent: Tuesday, June 14, 2022 4:11 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Patynowski, PrzemyslawX <przemyslawx.patynowski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v4] iavf: Fix max_rate limiting
> 
> From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> 
> Fix max_rate option in tc, check for proper quanta boundaries.
> Check for minimum value provided and if it fits expected 50Mbps quanta.
> 
> Without this patch, iavf could send settings for max_rate limiting that would be
> accepted from by PF even the max_rate option is less than expected 50Mbps
> quanta. It results in no rate limiting on traffic as rate limiting will be floored to
> 0.
> 
> Example:
> tc qdisc add dev $vf root mqprio num_tc 3 map 0 2 1 queues \
> 2@0 2@2 2@4 hw 1 mode channel shaper bw_rlimit \ max_rate 50Mbps
> 500Mbps 500Mbps
> 
> Should limit TC0 to circa 50 Mbps
> 
> tc qdisc add dev $vf root mqprio num_tc 3 map 0 2 1 queues \
> 2@0 2@2 2@4 hw 1 mode channel shaper bw_rlimit \ max_rate 0Mbps
> 100Kbit 500Mbps
> 
> Should return error
> 
> Fixes: d5b33d024496 ("i40evf: add ndo_setup_tc callback to i40evf")
> Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> Signed-off-by: Jun Zhang <xuejun.zhang@intel.com>
> ---
> v2: Change author to Przemyslaw, and change variable to RCT
> v3: Add space between title & commit message body
> v4: Change Fixes Tag to 12 Char Format
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h      |  1 +
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 24 +++++++++++++++++++--
>  2 files changed, 23 insertions(+), 2 deletions(-)
> 
Tested-by: Bharathi Sreenivas <bharathi.sreenivas@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
