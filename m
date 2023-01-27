Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C29F67E5C2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Jan 2023 13:50:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CB51582DDE;
	Fri, 27 Jan 2023 12:50:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CB51582DDE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674823836;
	bh=arI+8LRiB4bRVMIXZF1le3Lega7Z0sYPRt/QHozavRM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0+DJS/OCOBGrXDZxWnp/YeSgWTTiUXDvxjMTKKrzaEqYI0F/EhLmaf1GCoQRreMSl
	 usLvPFKRnmyMm4PveHWFgimHL4tTzgHHYxCiMxZpvVWW/j3G07NjMy28VPZ2WMcqHx
	 oReEwSdBZ/KwTvtchF3D3S+uwFeFBnCNImWy+WauzlO8+v14NvAJ7s1duGf2gZhV6Z
	 LSDFiibHSonmd/sl8RGKyGJ1ToVO7I2XKEPwXNxghwAid9WMctfWSTn9AoKrBEzKec
	 xX3jkA92egcWf1aJtFxaWvUOAeTbS7j8IzGUFle6ISSXhyTw+lqivlpwtKtVBnng/3
	 /9cQFHmrGN1XA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4cpVW2qQXbEI; Fri, 27 Jan 2023 12:50:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E146282D57;
	Fri, 27 Jan 2023 12:50:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E146282D57
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C337F1BF263
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 12:50:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A7E7682948
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 12:50:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A7E7682948
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5pxqY7zw29Cg for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Jan 2023 12:50:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AB0B08293F
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AB0B08293F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 12:50:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="389453975"
X-IronPort-AV: E=Sophos;i="5.97,251,1669104000"; d="scan'208";a="389453975"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 04:50:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="665242410"
X-IronPort-AV: E=Sophos;i="5.97,251,1669104000"; d="scan'208";a="665242410"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP; 27 Jan 2023 04:50:28 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 27 Jan 2023 04:50:27 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 27 Jan 2023 04:50:27 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 27 Jan 2023 04:50:27 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 27 Jan 2023 04:50:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LGfv7IphJe4urHq6dZtP2h1b9G8YoWvvgXg0sClGqik1W3S4m0LzFoOEImKIzYwV/fflnMOmfNoeIV/IrkAQMMCwH/Iw1RTIoPU+2F1EfNP7PFXW7lzV5J9goRJ4sKsz00sweuTQMeLG5yafwunlgvfMsee7/rya+1DxKXOK/pmbYgIPolA6BbcsTuYNowFcLBtgz6zqXbjgG+bPNVnjj32jA3tp63C6lfneIx5VZgI0kojCFGQq5aSAbTleUDBSv/jW5KQQaYC8jVi5SU+SsWIPkAJAOpjqaxo8djfMb7Xw5WC3DHfPSQlPKC1EZ4twDhU0loICXmhe37xwqEat7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gz1nTtu5B0rbfTHIE1nzabEysDnrxirHUfCt386bBJ0=;
 b=YEhG2FiFODJdH+Y47ZFSS5tBN7kWF8YDkQSOrUgZj6H9dTPcbiRmrySp0oG1/oD8ZGk6bORCbU0WAjToPKZ0vh0/V9jTMI9eOe26dwBK9lGFAIR7fPxiw9Rb7I13dNKy8vFQQEVy5dAJoepNsL7LVGqpZAE4PT36j0K2wVHe8bSO+byGQ68NnGdDdDosKsnYvS6AvIO1OHl7aWN3w9JD6trzy3UKuGAA/QBztrvUuudr53ZI7DU6EOsKVBZjkjLU9gL3RtYQzCZgPsy/DLgDxts50423YfuHUNodSv8YLGKalSdI4nCC1XRWpA8hfm2vL4QBQtv24H9tRivYvBCewg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SJ1PR11MB6300.namprd11.prod.outlook.com (2603:10b6:a03:455::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.21; Fri, 27 Jan
 2023 12:50:25 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%4]) with mapi id 15.20.6043.023; Fri, 27 Jan 2023
 12:50:25 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Stillwell Jr, Paul M" <paul.m.stillwell.jr@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v8 1/5] ice: remove FW logging
 code
Thread-Index: AQHZMEFrOgchiO+AWE2q3pxzP82j8a6yOyiw
Date: Fri, 27 Jan 2023 12:50:25 +0000
Message-ID: <BYAPR11MB33674E58EC542F15457F68AAFCCC9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20230124221428.114-1-paul.m.stillwell.jr@intel.com>
 <20230124221428.114-2-paul.m.stillwell.jr@intel.com>
In-Reply-To: <20230124221428.114-2-paul.m.stillwell.jr@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|SJ1PR11MB6300:EE_
x-ms-office365-filtering-correlation-id: 5d5caf4b-b5af-4fcb-b96c-08db00650f8b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +u5kjnhQ/6n+elsB05VZRmq5gJkypRrqYRiiQp2oBnwtZKqM7zsv7X+B2DFBxGH8yXBpz8yotvGpnA41KKoy0UtQ/XThRruBhNKYcWxR3oVeje1od3bi5f7Y67yFOVZbQoLIPF60WMakNiv0DGHWFW4eCxE7NUk5qRDjF1mbDLL+XNAYuubbOzpeLBvV+ou9lypmt/EDOHPwAv4Ji51ny76oZk/aA7336pFBijSYHcswxi/j8fWfl1+g0KAcWkUL0nSRgb0uBYNUs+ryRtJd55xncq2664bpCsx5y1ssWd6z9e5OfScXrXCg6PwPCQiJqIFi4M/QzBdouxme46iIPzpFeoY0fhW8dfhvZz9pbSOJqF5BK32Mju5B+ZbKZgmzc9/kkGN9KPusqfTKpGENk1ocd2EbyizsHJICGC/8A9nG4MCo8TlbgSOwyU/U1MorTVycgBMUNBfQGrEfrYGsEvxLtoPgqZ7FjTRSin6B8NUiYZFG6q0Uyvhpf4EYc785fajNgrhDJ49jXASOO0PbWxYOzS1EnHRp/le9O/7tODGEt6KOvHsUy1stQqG2xrjBwe10k2QM0BavaCQXPgs7hlyyFQ3G+QKNDg6UKApGgnoy21gK2WdN3mUkMa1IJICpSImixhDlyKildDJyegFIWeNsaOFmNAllrhZmasENzU+DkZDXYNFc3Xpovnkb6e5B
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(376002)(366004)(136003)(396003)(39860400002)(451199018)(66446008)(5660300002)(2906002)(66556008)(64756008)(52536014)(186003)(8676002)(66476007)(8936002)(76116006)(66946007)(41300700001)(7696005)(83380400001)(478600001)(71200400001)(6506007)(53546011)(9686003)(316002)(26005)(38100700002)(122000001)(82960400001)(110136005)(4744005)(38070700005)(86362001)(55016003)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?F+O/L7AZSsmP5ydTlKffRkPx+LI/pAjEIWFM3YjTotIKdESQi6/C+6B6vuYy?=
 =?us-ascii?Q?qZDGstUQUtA1OYUaPOWhjE2P835/aCwohPlHl4IV7M3WNUvdzQu5OW38JchI?=
 =?us-ascii?Q?RF2ScuxwDvqcDPTC8e82h5fEmKxCNWmHkHOGM9iQlSk8slqaqXU0nq5Et7vL?=
 =?us-ascii?Q?b2Fy54VAwOqbyaMeSUER5ihCNtSXeukmqQMt2iGi2lzp1t/JgzTPgoyViFni?=
 =?us-ascii?Q?JiR+7RRcEnbW9jUHCYH7i8aDAIkcqhp+6ylcnf8/9PW4ylSXafGthIyXVo1J?=
 =?us-ascii?Q?PcmX94Hr7LUsNRfdU6Ksks/FhCsnSiuU84z3AWZa99IS0d3+9pV+akFOduPM?=
 =?us-ascii?Q?2i2kChSliE9Zb7AzSJkb1LvgVSL9nK4rscze15ApOwLxet5RDRodaIKVZwhp?=
 =?us-ascii?Q?FVjK128l3Rj3fN25GUEymKKv20EyaIcM2l94SkyjZ1COLqcfivPOSaN0AJtT?=
 =?us-ascii?Q?ivtxo8LPsgPeW1oA0VOsd3XoqljZ8uXOXB6jS5vXSNacYD1Gds8fetniPFxp?=
 =?us-ascii?Q?CNKMgMtNqfuhPNJ+/sTCsMZvMhCjiMr/tMrPuCp3vQsmG3drhLHnJAHW/D/Y?=
 =?us-ascii?Q?dGLY/lWJwJQ6dkxNopNI+RgzA26xg2bQmNPt5FlVERkgLE9jIROmZamXdyxE?=
 =?us-ascii?Q?hZzgn7q0FU7ytupAXpifKSDY7ThzNf5y7uF3Lp23RusSjJbSW363uy3Odbke?=
 =?us-ascii?Q?59Xki2WoacuND37J2Le+JYQYh28Q/AFE69a5ugrtQMAW0mLH4UQ3Hv1KPrph?=
 =?us-ascii?Q?UfCPGcp4JrqypDJVU/iyeasmCZ4+lR8wMSToZghqPQ31tapqKJxUi/IVHoph?=
 =?us-ascii?Q?1Ns5feESqtfrYXvdMWa8prfIS6WRmKZ4Qnc73eNS21TRaLvJj5m9NftZotVq?=
 =?us-ascii?Q?H6zh1bBG+ykg3d+gT/pagNqYQoi9UukMF7Vv0FLjL8el63AAWg1K8L4KVokb?=
 =?us-ascii?Q?lmZxey5N838IdngqgBcQyWzkHXibhILM2fTEC3mhnw5Ilk5ekB5fcNUP0mTe?=
 =?us-ascii?Q?HOOCbu+iTDx9Z6WTkEH09HYKE+ElGlB+uRQhcONJwRfos+ZtVKXFeE+lZpm/?=
 =?us-ascii?Q?mrGPSsIOlctIhgUXH4VEmypkOHaTHET289q2FIjps4z/a+Hs36i2OLFDEmL8?=
 =?us-ascii?Q?VKaHoQ9cbxpS9dEXoZRSK0Uj4YhMJCWp6EB30V2vbowB1Qw6Iqk7fRfsdssP?=
 =?us-ascii?Q?h0RlOMLmyXbjyta/slkF5o9L6vV1M0i1t9SIuJF0jXcrZLK44zSHR0fu0o3k?=
 =?us-ascii?Q?FinVuCKR3II4lUyVVWkmy0zq37XCFQS6o8Um1DxOQ79f1JgXbYeqPuQOWrId?=
 =?us-ascii?Q?QjELOWIMvZrvlierJhpZNwBI4oaO3jXDJwkAzXTdh57X4GpSy8NstwW1mixN?=
 =?us-ascii?Q?eDvgUR7VGbnrF/IEGOp7ed7zZM2UPr6lDDmtb8ZzxtWEtNz5IBGnqJUdWS0o?=
 =?us-ascii?Q?umXh4TWkABSWMMpW6QfaPIUFLsIgg3HrC9c3wIYJ2CGXFAMOYWEydjVb4F7L?=
 =?us-ascii?Q?gXJIOc7GejEUREFO3QrlsBNd+b0xlsdA6rj1VH3DPYymRu60mfy1PrFyQAPa?=
 =?us-ascii?Q?B1Ea9O2wa1iyK8JAFH/EMUrTUBx9/qt7aZF3mSib?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d5caf4b-b5af-4fcb-b96c-08db00650f8b
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2023 12:50:25.5100 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7p3e/PYV4zRzeOe2JrPNu+6okgl64ijoTLYuS7Prx+9zoyxEKSPU840E/cLhC6D4zTUm2jnAchlSfO5Qiu0aQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6300
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674823829; x=1706359829;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=1OmvoFoIEnNMlVbaKZJwGD0Lz5mZQj+YLzuv/qbUriM=;
 b=Ut1KuASSDUh4fwT7i9qzNl0gMNxnUthCRaPmLg4NbfUClLOxBEynubwn
 bugQfGmHGN/qHNft9ft9MagqKStQK1nMLaXd27Ify7qjtTGIzDM7t9VrL
 +DsZNoFiGco534ZENYPm/g/PFikwwhLuXk/cYItqA4oKvaT9WvWrphnYC
 BIDP7dKLzLcnack/uMR9cjaIzVx62OfYlB7jO91Kj1cEcf9aKb2x/WitN
 vl2iEEmtGTuWKymVp7QZcbOwlfU7aQ9nMI5FBf6Ni2xoK91cGz68lTwtc
 d4b+ze6VUASUk4q+OL5899uR4mdgQc6UgMruMrfa9imKZRAMPeMniQjWj
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ut1KuASS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v8 1/5] ice: remove FW
 logging code
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Paul M Stillwell Jr
> Sent: Wednesday, January 25, 2023 3:44 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v8 1/5] ice: remove FW logging
> code
> 
> The FW logging code doesn't work because there is no way to set cq_ena or
> uart_ena so remove the code. This code is the original
> (v1) way of FW logging so it should be replaced with the v2 way.
> 
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  78 -------
>  drivers/net/ethernet/intel/ice/ice_common.c   | 218 ------------------
>  drivers/net/ethernet/intel/ice/ice_common.h   |   1 -
>  drivers/net/ethernet/intel/ice/ice_main.c     |   3 -
>  drivers/net/ethernet/intel/ice/ice_type.h     |  20 --
>  5 files changed, 320 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
