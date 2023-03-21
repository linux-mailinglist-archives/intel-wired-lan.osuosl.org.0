Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE586C353A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Mar 2023 16:12:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 17B2C81FD6;
	Tue, 21 Mar 2023 15:12:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 17B2C81FD6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679411530;
	bh=XT3LCnxJgLKpzPF1UO+FjHCasr2wZO7CPxyQ4VVfO7c=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=viHa77RwOkhEknCi1xQsSigW9HryLq8tIye9CS6b/6eIPt5rXSap54/aLezw8orFp
	 7gWQCzhYBkARH0ohPv9ClgabivnB8bcXkU9q7gh4MdfLDDbOo8997fcpo+nK24JLt9
	 dLTDiJEHHS8OazPu2knfjE84uVqxqyfYVdpXvGrUz2tJQzXNjzu23cUJGLai8AyhUW
	 4SO/9SNHv1Ax2+7IHn0Yp2ppoqx6idchVecwfGdgWilaxuPlUtGu3hk9LRNmmpcm4/
	 /oJWvHJj1FrXjf3SxOjIWn31SpRI1KtrEPd6s7Li9s8NNouwue311HAN7L7jaiDkSp
	 oBO7kbR4eirng==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N1klqjYW_TS2; Tue, 21 Mar 2023 15:12:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0FE3D81FB8;
	Tue, 21 Mar 2023 15:12:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0FE3D81FB8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 123261BF3D2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 04:40:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DF01E40AD1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 04:40:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DF01E40AD1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IX7XAP5f8mD0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Mar 2023 04:40:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 22813400E7
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 22813400E7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 04:40:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="401419493"
X-IronPort-AV: E=Sophos;i="5.98,277,1673942400"; d="scan'208";a="401419493"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 21:40:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="824767872"
X-IronPort-AV: E=Sophos;i="5.98,277,1673942400"; d="scan'208";a="824767872"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 20 Mar 2023 21:40:04 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 20 Mar 2023 21:40:04 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 20 Mar 2023 21:40:04 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 20 Mar 2023 21:40:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EBnSKqw8oKA5XAMtphJ4dnawUyRVhDBBrKs6yRFwgNAbyr7ALR/jVPGMfU6BWga02hzqg8QPm1ZH8rdsq/WkqE2rCNH+B91V2v9gR5+xBrtzvFvfjFqBIATllDWhFJlifWNBE3Ynfh7o3C7JjceBNj4FE3/Yu1CYu3C8UNw8dqh3l0s6L+pq8BC6n6xLKabwefaekRIHB2K9+YySiPrscAvPvpZLQAgpr9l23wriR/iCGTiR2ldOJLJG8SO0bn/Qj/HBJUehRSr1QoVYbctsUAU20gx/JRQKW5qG6aiZmo889oKxynC/cgH8bLBrpk/jJQnAGGCu8q0SosBsn7dxbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B24L9VaNEDiJPT2dBnwXAUA3Rl+Rd+wlLIY4iDSfYl8=;
 b=J5o/2+yDWDJmXhHXJ3E19mkyxPrmmrNc0I7iIjTHn0/jtU4XvT5l1qIf5inlPP/UTgxKVLQ1Ja5mc3qtOC4nCYePCtPmXLse8X6T6rnF2BbvuT4mos/hVbRIkCOAOU5gfISLwB6WN2E/iAipMQw15MG+U9D/R85lcOQqVzIu2jQwlO9sAy/TJtbbol4bsqXa3Lpnl3xWsZD8NLAxEclaBWEXmwOnxiCHaTafwz8XssidKSZObGOMtH4uL0hOO1C7gUVRB8Xlif2pOd964nMout9L9Nk6PzC3gzvxDDAy02vUKJJJSCeeSUsPc+EMMJNsNwD0CL1o3j6BSgE2JIZg5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5354.namprd11.prod.outlook.com (2603:10b6:408:11b::7)
 by SA1PR11MB6824.namprd11.prod.outlook.com (2603:10b6:806:29e::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Tue, 21 Mar
 2023 04:40:02 +0000
Received: from BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::464f:1bfb:43d4:416a]) by BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::464f:1bfb:43d4:416a%7]) with mapi id 15.20.6178.037; Tue, 21 Mar 2023
 04:40:02 +0000
From: "Arland, ArpanaX" <arpanax.arland@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] ice: remove filters only if VSI
 is deleted
Thread-Index: AQHZVac4s9V0pCz4e0SCpQeCWTbzj68Ese7w
Date: Tue, 21 Mar 2023 04:40:02 +0000
Message-ID: <BN9PR11MB5354305129FF5A6EA945765580819@BN9PR11MB5354.namprd11.prod.outlook.com>
References: <20230313120915.4143379-1-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20230313120915.4143379-1-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5354:EE_|SA1PR11MB6824:EE_
x-ms-office365-filtering-correlation-id: 6959950c-3867-4831-a4d7-08db29c655b0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FIQ0RyGb2XYiy6tNr0f27WwzVb3xANgTrQ5sJOsa9gy8wO0exKyJnt3NEzsbzL1gIvDY8w2sPEyzEVEHSGWWedZlcaZZAEV3rXqeM0Jn43H5MQ7DOSFBf1MUYZr//o433ed0bMfMBClU4N+dPoLSU3UvITwTsGz45De+IDqMaSC2JihE2insku0vWny3XYedOZ7cXxlDmGNHsXi+rBp50dsFzelLgpSi4gYw61lH/gqqzntVa+7+W9zy5Xr4KKXgTIj0JVKN4G+NlAuMrJuLqKVvkh8IIP/u1zhQ0HEiji+z3z77sK5FrrufgqDNQu1EvG+mDDLvJawO7qMXKuAlI33e6lNajGyyfuK0YYnxtZVTpnW1hOsvpc/nym4+EPEExG1u7qMej3JED1YGzmilYOQZ5agoSefaYGpQPRlrjq3iIT/nuwCHZMFYl4jobxzwSc4VkovB5NsUWHXpgavLpBee7cTpoMH0LIuwZ+2ruEfbwk90ALH0HoMTtuEkAcXAH3s/lw9Y8FTI2l6ceCT2CsX57dcZD1zPcBwaquA1RxgdrnLApWAz3jGxQAfXXkeDUQE6NUoQwJiMul7y+wVeAIs2tDKpxzyElvLbFFWN0SrSADAefjrvz7fistkG6t80+86BraP66bxQY+5subp7EacihuFCgWigVZw1CVM5xdveForxcMDh8hfxFRLHxOJben2OusnHK76n1aPfm5BoUA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5354.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(39860400002)(136003)(396003)(376002)(366004)(451199018)(38100700002)(86362001)(122000001)(38070700005)(6506007)(33656002)(76116006)(82960400001)(4326008)(5660300002)(2906002)(66476007)(64756008)(52536014)(66556008)(8936002)(4744005)(66446008)(66946007)(41300700001)(26005)(186003)(316002)(55016003)(110136005)(71200400001)(53546011)(9686003)(478600001)(83380400001)(7696005)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?75WwGkopScKInC1BZDOXQcxV/Shz5TI+la2+T70gBQCerit2b5mrtnX7kF2j?=
 =?us-ascii?Q?tlm14mFzGHYT0EYq8NQjDHCMyHSO+4sHFI0z9lZ/9SelN25j1CD1fNAV0cAT?=
 =?us-ascii?Q?7eJAdoJCPc0KKqrR68ysrTi47HXnRbwgOXQ1QJtTw+3+T4dMr6xERpTHtS/J?=
 =?us-ascii?Q?Fu7KcKxptUyPkD2JkY83McQ5iclUiPK/lPyg5jucC8VQfCqZ4Sf8Uhj+yAZC?=
 =?us-ascii?Q?nN4qpKm6NxXiVkbc4WvUK9FnmOJ9oc+WmhMeAbltQ+h2w2ToOuErbNxm8mVH?=
 =?us-ascii?Q?UtT2VDLO6r33hvWuXvJ+d6zQSijq6Lvt5E5lH1wXmB46mDZaYPrCFNobaxHo?=
 =?us-ascii?Q?Q5t4NMNsFVyMPLS3wX4IQeTxJhoGq5Yu/kLNeSVdUlPORG9Sy+I2kM8dOp7U?=
 =?us-ascii?Q?WdzC2Vzs2WpFloQ+36WO2i1XoiZD5I0Lpb+oKCyTsffuQfy7kbjK3zm7g0zR?=
 =?us-ascii?Q?hW7dWIvy8rFiRPbcyUpjl4UuGJjUsYJt1S1OtLRcuUjrhcYzh1TJf5JX0Hko?=
 =?us-ascii?Q?2xGRVFseQ/8mLeBCRYvcrkzkUqa3i9B1qFUc+sNcbokOJKStTV6x1JazBWfL?=
 =?us-ascii?Q?e1My6o/8eDtPugZTLylFeZhGMmyVeSHKAPEb5FAPsvbM+5IkK/MosC30SNAa?=
 =?us-ascii?Q?/DibiuN9DKEok8cZr4A/2bRMIxO2hTAax536hUAjkJ9d3VGoTQWcRqbywCmJ?=
 =?us-ascii?Q?XLv2yOk03ZcrglPQSG73n/if2crpEGEZKKFqkH8RZvhUTF6b/9kJ80jkgEl5?=
 =?us-ascii?Q?Rpz06UNQ9pBUVKq2BvLt45hPmAaGIl+pcnAXz47MCBmWDyG+kSa/bxl2K1T+?=
 =?us-ascii?Q?EoTMJqHRPqMof0hsqoYFlLFcZW8SZeExXd1pJvxvT+O3dX1QFTMjgJfFx8K2?=
 =?us-ascii?Q?4uz5P6TWFsUG0bVl/M8zrbXQO4HginzzmqQKgpvXkHknWD+bvX0QGQ19dvOz?=
 =?us-ascii?Q?Pa12jSvRrYtezCVRCiwZPiiK/DFfH99iahWvbn4n/uZOYGYcSqaNwxZfRfqo?=
 =?us-ascii?Q?GKzhEUs5Qnvu+rXLRMjcgQlOE+4LniREenbCV6k3th3gT55ebAuTUT3Nnhfs?=
 =?us-ascii?Q?p1OxVWQF9uvZSVfWP5iryVNrfbgcv8WXH5nKvCkhgUTcSzVC193xt/MtD5Av?=
 =?us-ascii?Q?mypV0umNM+lCMtWsWqz/BSrjOXvzYdAS1Knux8lzUCHkb49h0yIDRHAHQDiL?=
 =?us-ascii?Q?aWv4iP9WwkHwDUw1OPr5Ah3owTk5siVMU4+az38uPckJpsU4Ee9UnmvFsUPt?=
 =?us-ascii?Q?Lig5uWSL1mrZk9wOjM5xAKeiAODFgss0HtKKb6IJljuhg7T0Wu1SgkjzOD5a?=
 =?us-ascii?Q?cAFuGbGgpW2hcVlvbsDCG2sCysikg6g4MMrS7u0bkqfqrWUmkx4bYOH3eas7?=
 =?us-ascii?Q?KUWf65oiXgn3u+c4QibawLL9Q7ntjtCJuhgirKt1W7rzOflhZxDYRWC+1b6e?=
 =?us-ascii?Q?gc5GovEDnRCAyRaOJu5cUPm4wckaa017ZQcIl+4g0uq0PvSK4RxqkBlad2kf?=
 =?us-ascii?Q?lsWGUWIHIFkJTmsLU2SWZvK/Jk210aLBDHpGh90eiYJjkD0UvUadqKpSzWvl?=
 =?us-ascii?Q?o9u/nmDoAsMJw/7eSB2XMFk2c5yvS19QJUUiG/w8?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5354.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6959950c-3867-4831-a4d7-08db29c655b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Mar 2023 04:40:02.0648 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3NdVuV9IEqNJPOzMA11PN+5kqLhSL13oY7i7YwnaDp6iyPSKwYMrZYN0n92VXjVkNVAz2sIZCx6qJ3xxS3wTSq+LLvgtVemjaA2vKfwOjuc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6824
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Tue, 21 Mar 2023 15:12:04 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679373606; x=1710909606;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WSx5NfuOb3lBTLMwZz9uGMWEsSm8A1cqtKI94wJEvoM=;
 b=ftzYtQSlwatxFsKSas/k6sJCWmofIYQZuNAfC4XYQnN4wsFq30AavbVF
 KO0kVmToaG/FOPW6TjYKRmKVGtICnBNHhTSaLCEtgH4e8BV0wExNr4e7o
 X9RY/RzRVdtrOmeMEaiKvUOvIIFrqsvVGUd94XnI/xVh+OltHs30oCCJ1
 fg6abooQ+Y9Gazbx0HyovL09/PBhTPfdm1n8RT2hwU+GuYyrlJhHCtVKw
 n+qF6lzlb1sx5+SxVpsRovv5CqQFE748SiNKasHmqoCuYnntLlZou+h0c
 rLFAJXJ8fAwg/9da23UF/d0ppL/tahlMOv+/7Dl9fSdcadI+tXWJLVzSX
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ftzYtQSl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: remove filters only if
 VSI is deleted
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
Cc: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Michal Swiatkowski
> Sent: Monday, March 13, 2023 5:39 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] ice: remove filters only if VSI is deleted
>
> Filters shouldn't be removed in VSI rebuild path. Removing them on PF VSI results in no rule for PF MAC after changing for example queues amount.
>
> Remove all filters only in the VSI remove flow. As unload should also cause the filter to be removed introduce, a new function ice_stop_eth().
> It will unroll ice_start_eth(), so remove filters and close VSI.
>
> Fixes: 6624e780a577 ("ice: split ice_vsi_setup into smaller functions")
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c  | 2 +-  drivers/net/ethernet/intel/ice/ice_main.c | 8 +++++++-
>  2 files changed, 8 insertions(+), 2 deletions(-)
>

Tested-by: Arpana Arland <arpanax.arland@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
