Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 77ABB6189CA
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Nov 2022 21:45:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0C1BA81270;
	Thu,  3 Nov 2022 20:45:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0C1BA81270
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667508315;
	bh=oU8xGgML9jNKjMGMmfp+hySwGRQ5f0EVfgyUBZO2FtU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=l5pt5QC7uLbmbC6bvQmO60MTVyGH/JNlAKH6NpoNheicTNUI7dJtm5Jhx8xqVtI65
	 x4Er/FOkEl1G+8lc+pgtQ4momQwNk2og2YCo9wZeN+tuxyq+AcKYpyTquyJ3RqSyTX
	 aUAvgkcZ19B0CXv+aMaXPb6aDcwQNtHp7n4FzcZAY+0KBY++35zeiDPxsmbRTjQoTx
	 cLrG69jQfUtUs+1Q1x9hnDggpthdO6mi5c08S0yrKRzQBv8cjfmUKKc3FwxxrSUj3e
	 MUW2dIadI/wd4Tcs89zwwk38CqIljWTVZxZ8I7V21Udg4KXu5hDjv1DIwl0Xo5iav8
	 rYRx0jKde+6uQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aJb5TGHu9MEI; Thu,  3 Nov 2022 20:45:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 829EF81F72;
	Thu,  3 Nov 2022 20:45:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 829EF81F72
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C2AC81BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 20:45:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9AE5C4094C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 20:45:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9AE5C4094C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BusVeOJuv1xE for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Nov 2022 20:45:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B0CBC407D7
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B0CBC407D7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 20:45:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="310918382"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="310918382"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 13:45:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="634821546"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="634821546"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP; 03 Nov 2022 13:45:06 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 13:45:05 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 13:45:05 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 3 Nov 2022 13:45:05 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 3 Nov 2022 13:45:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eGVqJCPX5Fw/o0SWUigRJe3WEUJBPImjRKzuxuVZr1bv0DNWAGLDSvk3eUw/2n60VTuvkw3fcZTkdi8pDf15kEIbR7I28vBNUvqyFAIhLJEHCGbP87NQ45kpTAcyhsTWlh0fjLGVVGgFSzRCTrCpOhfy8GAAiXD+4TPRkdypWD9p5Ia+qw7dfAldILsJ6ksl2O55f3sGYnwL4uGoWBeTHyEvODzNfcBT3PwJkVZbyvfqDtd/7TOo4tNNSJjFmyWa0jUoPYX7VRMtBZOsM8wLduEdfvi7sOiDYGh8SziaTTP91TerkjYkoBElDvxuUaJZUux0VdPqdEiAhFzJgFHFOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dowIN4d2dEa3Lt3DszbN3/R8Hi87VvRu3s6jXKTSbhY=;
 b=JT+GUIYJMCTpalesAfcuIy03Ugu92gor/0rs3e7s3l8VAyoBfHDSdjtATT8qygNjq9cWPX4wQruVBHwbaBdiK2A2sGOMaHKCNeoiGPYiM96oz51G+j/m5fouhtHCpdinTRS9NZh61v5ubQ2ekSgqFAOj4m/6ZBvOU0l12w0hYPxyPgKtYHnOwCWqx8UNhZWsg7AsHVx0UFDvZgM5u5aIBch8pwjNJNW9ZSkwsL5wz03bpbYx/bjaJbEqo9FlA5gY43Z6qFiKkHZguDv7zMN0VSEp7z4bInOgeunFKnwOB0l632WZzBEFFUCuNg2sXgtwAiNs7i1oKyNWVUONnq+uig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO6PR11MB5636.namprd11.prod.outlook.com (2603:10b6:5:357::21)
 by DS0PR11MB7505.namprd11.prod.outlook.com (2603:10b6:8:153::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.16; Thu, 3 Nov
 2022 20:45:02 +0000
Received: from CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::e071:9750:b84c:2461]) by CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::e071:9750:b84c:2461%8]) with mapi id 15.20.5791.022; Thu, 3 Nov 2022
 20:45:01 +0000
From: "Stillwell Jr, Paul M" <paul.m.stillwell.jr@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 07/15] ice: check Tx timestamp
 memory register for ready timestamps
Thread-Index: AQHY7kTdVH4HpUe8fk+HQXaFesap6a4trAyg
Date: Thu, 3 Nov 2022 20:45:01 +0000
Message-ID: <CO6PR11MB56369632E158CC5AD92D59C6E0389@CO6PR11MB5636.namprd11.prod.outlook.com>
References: <20221101225240.421525-1-jacob.e.keller@intel.com>
 <20221101225240.421525-8-jacob.e.keller@intel.com>
In-Reply-To: <20221101225240.421525-8-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO6PR11MB5636:EE_|DS0PR11MB7505:EE_
x-ms-office365-filtering-correlation-id: d21baa69-ce17-4832-dfe2-08dabddc474e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ANGi4GUsXriW4TdSLwQNEjCXSpardTUzKk90QYsAucHybRbJnVkyUDidyWutsR4QvRDbwYQlNEHgNnXkzGGkJXZYSLUnFBw4VK2xojxLH97eO4hPfhCJcsOLmceLzD93A1rSC5aLNoAs93b78YZ6eJZX7LR8YfBvwyd4agRl1n0N5jeZL1KWGs3i9FnRkMJj6/VFbj/T7bj5pqE2HbNvpN8V73n1BursohKY8rUz9Tu0YahQpeRYhQV2UTPyRDp+1p2rKM0gkVbZ7cMAMAx+/jY0b2p5x0ouDlugKqEtZ04NjNvX58mrGxEu0wqTiiFsK/m6Uz6mLyAQ3MF7ZjZKAFfKoKb5Liatl1+ARQWrFw702Cpbo86JgYl/sD20T0ywf9S9URvpxA5b7WapXnkfuiokavsEMVRNep8ZUeDg1D28FovdwrbnIrLxX/GgoHUQi7BVmbzoH8vK9rb08EtACwnlUqjWmudDuc3wZYBN/F58CHrVd9N9HyaWBzljbTxfP8AYepYP38jItm8asL9/eL/VJZy8zTDgsBlg0DDufMY+y4kReS1hXFHuCZ5QvwXzrQM011o5EIJGBgE1bN+9ZevDjx+eXWmM+VT6nvImZVLjNjLEDCTBFHVFINg8b5pAiGhTvuGBxwwfhy7qn8HfN4VhcQniylBffA/kcjhgqXbtGLgSr4fjfsVrxME85CJnP8DLRnWlNIpdaoEXaEuz22fj/DQ4CFv0M0BOWtg2na+MncwMmyTuz9trrz35LIQgQEKhRLaC5hMmXKMxe/ZQCISIvh/9jMEXMfsJQG3WbQk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(396003)(376002)(39860400002)(366004)(136003)(451199015)(110136005)(316002)(966005)(8676002)(66476007)(66556008)(76116006)(66946007)(66446008)(64756008)(71200400001)(6506007)(53546011)(5660300002)(8936002)(41300700001)(2906002)(9686003)(52536014)(26005)(86362001)(186003)(33656002)(83380400001)(478600001)(7696005)(82960400001)(38070700005)(55016003)(122000001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?83kjiEhmhmjib5MV+8Kvw1f94DyJKw/iC4FwUkNs5kkzkX/T+jaPvukIjLZq?=
 =?us-ascii?Q?Wvp8Oodso6r0qozId8vKxqlCFPy6RAHT42cwc4CjXEuEL+u8u8FmdT2eAqei?=
 =?us-ascii?Q?dzmBVLOjzrQM3njd58Oz5m8ZfAobZ+OYqHf5G6JQhzkj4KGA7ixC2j/DV7Dm?=
 =?us-ascii?Q?yduZL4YAVFsMAsB3HS72mB7/yYp7fUxCP+efImNpzQDrLqHjYKUMNirkC6rT?=
 =?us-ascii?Q?pwm/QIpW5oa/y3dmdGICvJ3YIHOmPmsLEZ27lwKikBM/GuJHm23zynybnvl/?=
 =?us-ascii?Q?pz/Fyyn8+Q+MDKUmIAcW4iwpyklGAfDsZBYaoegLKR2uEJRvLvvI4JBDH/Gs?=
 =?us-ascii?Q?xbVJmsz5QY25KUIAI6CSgGcuvOXqUyJzQRnsZavqNpCiqDz26x8TB9yY8FXD?=
 =?us-ascii?Q?UapTEY7fcQ/Zy/NFtUoDHoLgThX0C8C6CsbV5EBo6sTwsYU6G0MqPEoZgpOt?=
 =?us-ascii?Q?+JxaimeUv9/vBuOfqGv3IxPm2IX5JkFgFSayVH7ygm5GLE4UlI2pIHOEMqpj?=
 =?us-ascii?Q?7IR2+0l0Cn8MAAYTI4Ofs7WNwCdqMPCxoNZxgFH8Lc1Unl0oR7uMskRs4edY?=
 =?us-ascii?Q?gOtgJ/sWYFg03PWmfTvDpKEGTGCJUd56ywQuLW5a6wnQf6Rp6Rdb666E7DyY?=
 =?us-ascii?Q?untVZpE6oI8ydiVmNI1gRewYG9q+/ldG5s4FHMO2usTznza4tGJUTBrMcvTn?=
 =?us-ascii?Q?H5GfzCA2gcZUTCOcVHc7Y1Rjo9d5z6BKbh0ZhGvjAqm1f5yCFpAiIVxVXCfL?=
 =?us-ascii?Q?ztjKTfaj4KF8dF4i3m2augq+Ujj7IiV2NeQ1iRt8Quw1hZbQg9XAMTvqCNdA?=
 =?us-ascii?Q?lxcsiGX2CsaAlGTN0T9PQfQlUitNWvDtQ6493CH2IDStT07qOOxomD46Ja3t?=
 =?us-ascii?Q?ZWXPfGjwWNgQDL4ksTNJfW6o5Q2egbukSiJ5wJulqgo/DQIdtqqieVeiiNU5?=
 =?us-ascii?Q?bQ00L/3V3tJunSqLmwg5viXaellry5agouyIKIDZehTndwlnO6cEYkeIfWGZ?=
 =?us-ascii?Q?9t9W3XmeP25TObXntTbUZET0t/TXQLr86VNOlhZaEGae84J/a7SKOK0SOHdb?=
 =?us-ascii?Q?HSpaZjinPaxfU75lY+vUyEuZ67BEmdtSDjwPkzIZW47ku3sSjtBiCq5YzX37?=
 =?us-ascii?Q?EhBFvN5WJTvqzkCBbU2yLm3hT6yaV2GVl6Qr25aRpRVeIA20uhchLwmbtHO2?=
 =?us-ascii?Q?pqafzM3nXWWJZhZ8bok2M3eeFKUgBWW4IL9Yx90k9aLj5cwXQXg/WXg2li+l?=
 =?us-ascii?Q?2svm8KjAz3MfcOD4Uqe66L33zys2NTQyYA95LylJZieYKIS5SMr3HJx9XXKW?=
 =?us-ascii?Q?ybHGeCaEkRUynR0xCa5zVFjpO5Z+00OtLm3PJ3hmbua+B6opsUB3E1HQ3LAG?=
 =?us-ascii?Q?OUv1t/XFmPaZ0/5qSmWzmC5YRHvOob8cmBJtCtRIPRO87yVI9t9Vyjmg05FP?=
 =?us-ascii?Q?M1jtKpaFPU/aVwcmtpGQ1K95r0dihLjPDI3LxwPYeMr/20kUidAd7wzTIAiO?=
 =?us-ascii?Q?JtqhaRmtCHbxpjhc4lGt0Yt3/OueZA2O0rNuWEgGYh3RvTstcMEdJtuTrVlU?=
 =?us-ascii?Q?WMPOqvqaSYIBuoeaFibb2orC7nKBfAPteTyyQLQcqB0p7Ej02/IjykM9XeB9?=
 =?us-ascii?Q?NQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d21baa69-ce17-4832-dfe2-08dabddc474e
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2022 20:45:01.2684 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3fsMpOYy31S7vvd6v9W0Uvvq7EWd68aWnVmh8oZHhoK9lcQvOoN6ei3C7KhVtWkmRZKMBMBuSz09y8L/QoBP2raf0xCOW/NbzbT7A4ZMMh4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7505
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667508306; x=1699044306;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=asPVUraBeR97k7kzwTJOhNGsrxgn6vafDb23UjMsNKU=;
 b=Yyf1MwsUCPqZBVTQWd9yrjXkgx38z6sMzi4huqsboVgIomxcDhHXuGQL
 5gwcMBZdhyLRpqg4fKLmyf59fxv+cS5Laifg+5SMys6zYIw4gyjROO/jM
 NFZPR5lB5Sypp4tdmoGZi31QOuWJ7rR9U5+f6agvnzcQEskjkU3GsRumC
 8DJW+Udvnz/t6d7FG5gJhsB2XYm6vNq8wa81gYj/pf77CkrvGSWLVVd0I
 BZqGX9jki8C+M7i4OTOtsZdL8n4m4a1E58t9sp/5V3LpyQD30M6fMEIFO
 J3t6oNmPy5GdT2sQ45tJWERl694xB9Cv7LIDw0N0es3zeF270z7xPHg8H
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Yyf1MwsU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 07/15] ice: check Tx
 timestamp memory register for ready timestamps
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jacob
> Keller
> Sent: Tuesday, November 1, 2022 3:53 PM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [PATCH net-next 07/15] ice: check Tx timestamp
> memory register for ready timestamps
> 
> The PHY for e822 based hardware has a register which indicates which
> timestamps are valid in the PHY timestamp memory block. Each bit in the
> register indicates whether the associated index in the timestamp memory is
> valid.
> 
> Hardware sets this bit when the timestamp is captured, and clears the bit when
> the timestamp is read. Use of this register is important as reading timestamp
> registers can impact the way that hardware generates timestamp interrupts.
> 
> This occurs because the PHY has an internal value which is incremented when
> hardware captures a timestamp and decremented when software reads a
> timestamp. Reading timestamps which are not marked as valid still decrement
> the internal value and can result in the Tx timestamp interrupt not triggering in
> the future.
> 
> To prevent this, use the timestamp memory value to determine which
> timestamps are ready to be read. The ice_get_phy_tx_tstamp_ready function
> reads this value. For e810 devices, this just always returns with all bits set.
> 
> Skip any timestamp which is not set in this bitmap, avoiding reading extra
> timestamps on e822 devices.
> 
> Modify the stale check to apply only to e810 devices. It is not necessary for e822
> devices because the timestamp memory register will prevent us from reading a
> stale timestamp.
> 
> Modify the ICE_PTP_TS_VALID check to simply drop the timestamp immediately
> so that in an event of getting such an invalid timestamp the driver does not
> attempt to re-read the timestamp again in a future poll of the register.
> 
> With these changes, the driver now reads each timestamp register exactly once,
> and does not attempt any re-reads. This ensures the interrupt tracking logic in
> the PHY will not get stuck.
> 

Minor nit: for the E8xx devices we should capitalize the E in the commit message
(e.g. E822, E810, et al)

> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c    | 41 ++++++++++--
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 72 +++++++++++++++++++++
> drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  1 +
>  3 files changed, 108 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c
> b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index ebe910326963..39c68a272c6a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -655,6 +655,9 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
>  	struct ice_ptp_port *ptp_port;
>  	bool ts_handled = true;
>  	struct ice_pf *pf;
> +	struct ice_hw *hw;
> +	u64 tstamp_ready;
> +	int err;
>  	u8 idx;
> 
>  	if (!tx->init)
> @@ -662,6 +665,12 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
> 
>  	ptp_port = container_of(tx, struct ice_ptp_port, tx);
>  	pf = ptp_port_to_pf(ptp_port);
> +	hw = &pf->hw;
> +
> +	/* Read the Tx ready status first */
> +	err = ice_get_phy_tx_tstamp_ready(hw, tx->block, &tstamp_ready);
> +	if (err)
> +		return false;
> 
>  	for_each_set_bit(idx, tx->in_use, tx->len) {
>  		struct skb_shared_hwtstamps shhwtstamps = {}; @@ -669,7
> +678,6 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
>  		u64 raw_tstamp, tstamp;
>  		bool drop_ts = false;
>  		struct sk_buff *skb;
> -		int err;
> 
>  		/* Drop packets which have waited for more than 2 seconds */
>  		if (time_is_before_jiffies(tx->tstamps[idx].start + 2 * HZ)) { @@
> -677,24 +685,45 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
> 
>  			/* Count the number of Tx timestamps that timed out
> */
>  			pf->ptp.tx_hwtstamp_timeouts++;
> +		}
> 
> -			goto skip_ts_read;
> +		/* Only read a timestamp from the PHY if its marked as ready
> +		 * by the tstamp_ready register. This avoids unnecessary
> +		 * reading of timestamps which are not yet valid. This is
> +		 * important as we must read all timestamps which are valid
> +		 * and only timestamps which are valid during each interrupt.
> +		 * If we do not, the hardware logic for generating a new
> +		 * interrupt can get stuck on some devices.
> +		 */
> +		if (!(tstamp_ready & BIT_ULL(phy_idx))) {
> +			if (drop_ts)
> +				goto skip_ts_read;
> +			else
> +				continue;
>  		}
> 
>  		ice_trace(tx_tstamp_fw_req, tx->tstamps[idx].skb, idx);
> 
> -		err = ice_read_phy_tstamp(&pf->hw, tx->block, phy_idx,
> -					  &raw_tstamp);
> +		err = ice_read_phy_tstamp(hw, tx->block, phy_idx,
> &raw_tstamp);
>  		if (err)
>  			continue;
> 
>  		ice_trace(tx_tstamp_fw_done, tx->tstamps[idx].skb, idx);
> 
> -		/* Check if the timestamp is invalid or stale */
> -		if (!(raw_tstamp & ICE_PTP_TS_VALID) ||
> +		/* For e810 hardware, the tstamp_ready bitmask does not

Same comment about capital E in comment

> +		 * indicate whether a timestamp is ready. Instead, we check to
> +		 * make sure the timestamp is different from the previous
> +		 * cached value. If it is not, we need to re-read the
> +		 * timestamp later until we get a valid value.
> +		 */
> +		if (!drop_ts && ice_is_e810(hw) &&
>  		    raw_tstamp == tx->tstamps[idx].cached_tstamp)
>  			continue;
> 
> +		/* Discard any timestamp value without the valid bit set */
> +		if (!(raw_tstamp & ICE_PTP_TS_VALID))
> +			drop_ts = true;
> +
>  skip_ts_read:
>  		spin_lock(&tx->lock);
>  		tx->tstamps[idx].cached_tstamp = raw_tstamp; diff --git
> a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> index 6c149b88c235..55bbe76ce0bd 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> @@ -2417,6 +2417,43 @@ int ice_phy_calc_vernier_e822(struct ice_hw *hw,
> u8 port)
>  	return 0;
>  }
> 
> +/**
> + * ice_get_phy_tx_tstamp_ready_e822 - Read Tx memory status register
> + * @hw: pointer to the HW struct
> + * @quad: the timestamp quad to read from
> + * @tstamp_ready: contents of the Tx memory status register
> + *
> + * Read the Q_REG_TX_MEMORY_STATUS register indicating which timestamps
> +in
> + * the PHY are ready. A set bit means the corresponding timestamp is
> +valid and
> + * ready to be captured from the PHY timestamp block.
> + */
> +static int
> +ice_get_phy_tx_tstamp_ready_e822(struct ice_hw *hw, u8 quad, u64
> +*tstamp_ready) {
> +	u32 hi, lo;
> +	int err;
> +
> +	err = ice_read_quad_reg_e822(hw, quad,
> Q_REG_TX_MEMORY_STATUS_U,
> +					&hi);
> +	if (err) {
> +		ice_debug(hw, ICE_DBG_PTP, "Failed to read
> TX_MEMORY_STATUS_U for quad %u, err %d\n",
> +			  quad, err);
> +		return err;
> +	}
> +
> +	err = ice_read_quad_reg_e822(hw, quad,
> Q_REG_TX_MEMORY_STATUS_L,
> +					&lo);
> +	if (err) {
> +		ice_debug(hw, ICE_DBG_PTP, "Failed to read
> TX_MEMORY_STATUS_L for quad %u, err %d\n",
> +			  quad, err);
> +		return err;
> +	}
> +
> +	*tstamp_ready = (u64)hi << 32 | (u64)lo;
> +
> +	return 0;
> +}
> +
>  /* E810 functions
>   *
>   * The following functions operate on the E810 series devices which use @@ -
> 3091,6 +3128,21 @@ int ice_clear_phy_tstamp(struct ice_hw *hw, u8 block, u8
> idx)
>  		return ice_clear_phy_tstamp_e822(hw, block, idx);  }
> 
> +/* ice_get_phy_tx_tstamp_ready_e810 - Read Tx memory status register
> + * @hw: pointer to the HW struct
> + * @port: the PHY port to read
> + * @tstamp_ready: contents of the Tx memory status register
> + *
> + * E810 devices do not use a Tx memory status register. Instead simply
> + * indicate that all timestamps are currently ready.
> + */
> +static int
> +ice_get_phy_tx_tstamp_ready_e810(struct ice_hw *hw, u8 port, u64
> +*tstamp_ready) {
> +	*tstamp_ready = 0xFFFFFFFFFFFFFFFF;
> +	return 0;
> +}
> +
>  /* E810T SMA functions
>   *
>   * The following functions operate specifically on E810T hardware and are used
> @@ -3306,3 +3358,23 @@ int ice_ptp_init_phc(struct ice_hw *hw)
>  	else
>  		return ice_ptp_init_phc_e822(hw);
>  }
> +
> +/* ice_get_phy_tx_tstamp_ready - Read PHY Tx memory status indication
> + * @hw: pointer to the HW struct
> + * @block: the timestamp block to check
> + * @tstamp_ready: storage for the PHY Tx memory status information
> + *
> + * Check the PHY for Tx timestamp memory status. This reports a 64 bit
> +value
> + * which indicates which timestamps in the block may be captured. A set
> +bit
> + * means the timestamp can be read. An unset bit means the timestamp is
> +not
> + * ready and software should avoid reading the register.
> + */
> +int ice_get_phy_tx_tstamp_ready(struct ice_hw *hw, u8 block, u64
> +*tstamp_ready) {
> +	if (ice_is_e810(hw))
> +		return ice_get_phy_tx_tstamp_ready_e810(hw, block,
> +							tstamp_ready);
> +	else
> +		return ice_get_phy_tx_tstamp_ready_e822(hw, block,
> +							tstamp_ready);
> +}
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> index b0cd73aaac6b..b781dadf5a39 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> @@ -135,6 +135,7 @@ int ice_read_phy_tstamp(struct ice_hw *hw, u8 block,
> u8 idx, u64 *tstamp);  int ice_clear_phy_tstamp(struct ice_hw *hw, u8 block, u8
> idx);  void ice_ptp_reset_ts_memory(struct ice_hw *hw);  int
> ice_ptp_init_phc(struct ice_hw *hw);
> +int ice_get_phy_tx_tstamp_ready(struct ice_hw *hw, u8 block, u64
> +*tstamp_ready);
> 
>  /* E822 family functions */
>  int ice_read_phy_reg_e822(struct ice_hw *hw, u8 port, u16 offset, u32 *val);
> --
> 2.38.0.83.gd420dda05763
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
