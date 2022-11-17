Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F8F62D84C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Nov 2022 11:43:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7ED86418F5;
	Thu, 17 Nov 2022 10:43:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7ED86418F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668681781;
	bh=lyzU9E9OfvzvHo8nMkyUb7NAjkSkZajP46J9jSIG0iM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gWq3l2X2TqzGtUIiQKPuiglvOU4ItKhFzG4fhwBvz8NjizWRdw7voKKGlul52tCf7
	 aSgEd4BrempwPnO//jG9jMwmvA1edZ+9VOGh+Eq5ZKDYYO9K7KWAkHSUe869peXwhK
	 0PqwVucBnBuOvtRboERuzur4Nl8WqCHUSrJuBhvH8UlLqJmTfW6mRyP9Z73ygPbB3o
	 KtXs8hAhb3jeeZ2DdyTwIngI7PpV/SKdyNo1cvZ+5OFh/cVYRGKEP4UsHDjUyOw90r
	 0UWkQtzgHFYHECOFX4GKurA/7AMKkA58fhNiODE+13C/4aKXAYX+jd9ZPkRoejDdwK
	 cusJToNuKyWUQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mgI98R5Qgxzr; Thu, 17 Nov 2022 10:43:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1F628418F0;
	Thu, 17 Nov 2022 10:43:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1F628418F0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A76791BF3A1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 10:42:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8164F40420
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 10:42:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8164F40420
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 71HoVX8dgf-9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Nov 2022 10:42:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C7342404B2
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C7342404B2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 10:42:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="374951255"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="374951255"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 02:42:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="670878202"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="670878202"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 17 Nov 2022 02:42:53 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 17 Nov 2022 02:42:53 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 17 Nov 2022 02:42:53 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 17 Nov 2022 02:42:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TalLs086MAxmoS9aQAi626k2VrsZVvMZHjKbZNx4RcZ2rQx7eeqAxmMNlnaMBlD2gUsCXEsfCE1Y53HjQJmvkLMbQBX2jCC8jHQd9js7mGebFZ8CmcyGHLN+/JdiAIPTKxjV2Ne+lUqqDbMcJzsk/DJmhmf6nNaRGPHTrjvbr+9sYmHALdsqHJwiaQtMq4ZXghPR7PmumNnxEjSdud/JaJxBH2Dw4ukpge7VCWEtzfWWjzevXSIWugOXbKUIwYRnpWfoEak2yXF6gy4ofY39piTGa3Fzd2GT3VZ3rAbYG3oJh48NobxpuDUBiROPlSprvw1Oq7WEzZt2u5EbL1+vKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qa3/rlJoKKvCy7P53YZu3WFFpkJ11a3KERW0B9eKLpk=;
 b=FPDy+sGTccl1pucWgAuSojfTsN1T1oJJhPfiAtfPxyUnEltOLbCuYqcrXvA42AgQ8P2XtjxMXpPsm5DRdjHslK+YgkD81fsviXWfjQ4PP+/oR33NDSSv4o2vqTGcHAX6aLV27Pie4XfP7SVMH7QM55V0cOec7Xl4vUXCfD5Q0fNphoBmzOb+qx9MwZfWl/6x0vSvCkjRsmJUfViJp2I0GOJfHgY+GGHn+BCivIwkQhtrgChLAv19nu82gU3kZqDeGd1NGKiRMUQDVYUyt2hOd7T74Z8lEV3ukrhcPKdft4wP7kAL6luPPc3mCQKuBqOGSqhkEDVNk3Bqbwg6CuzR2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by IA1PR11MB6123.namprd11.prod.outlook.com (2603:10b6:208:3ed::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.20; Thu, 17 Nov
 2022 10:42:50 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%6]) with mapi id 15.20.5813.019; Thu, 17 Nov 2022
 10:42:50 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 05/15] ice: always call
 ice_ptp_link_change and make it void
Thread-Index: AQHY79AfT1uahC/mO0ODFF4gEMRHHq5DAvDg
Date: Thu, 17 Nov 2022 10:42:50 +0000
Message-ID: <BYAPR11MB33679CB31010162DC0D445E1FC069@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221103220145.1851114-1-jacob.e.keller@intel.com>
 <20221103220145.1851114-6-jacob.e.keller@intel.com>
In-Reply-To: <20221103220145.1851114-6-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|IA1PR11MB6123:EE_
x-ms-office365-filtering-correlation-id: 74ae2a6b-8e36-46d8-7a36-08dac888799a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /dCoSADrhBuBpLjbV7eI5YhkbPZAx60dbrWtZqWOOMzb8oxq+UGDgTBwddZHf30e6nBXqp7FxgIpxN4mfpRgcqgxePEVYkV6OlIZeqBiP/1WwzhDgfdGaXMI6EzsT5l3T7+UJXsmUrbarudLRcwfRrvpJG6N+2mFK0OzHKbnJutWtLRumVFCZC4iJEOWNpS5lbQyy2UmZprOCNEWop/JnKrn8tCPX5EnF84Iu/7kqMbi/A908gl7dwyC/BtCa0utZC1idApz+CXXK8dl/b3lhfT2OLj/6/xVjyvXPHurUnZ+Zl1QhFIrJUAN3OvINsM+B0Jb79EdxJ3xSj/TQBaZYyj1124LwfGmI+8AMHuOBe5n4DCbvUrhJ3tNwTelGDAy/6IqDAmdwDUz99DojlzonD3dI/2XIWfxFg+FJmWf8KY168R1KrPaqRd2++SrE0s03/76RqwvxnA28Xk/s+sP1XuUb6N7OgJouQuV62rzS+6ef3O64IAOUg2eblWZQS0ZMvxQMG/cDyYiTOoyd+xbKUaxYJd92Cc1lZUhTGwO+v+fexe63j52IOYt1dopOp6u1TgBuAhqVnZitstv7VdLSoeqgo+frUYXJaHCqFSm/6NpLUf/5WAhIuYsHmKK1UzOiuCkxlficwWsUDzsXLVZFZ+8XAi2mzYO6k71I+i99SZDBU3rVktsSXWyFWH1rsgonRl9586zT6srtGHJGXs2Yw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(376002)(366004)(136003)(346002)(39860400002)(451199015)(71200400001)(478600001)(41300700001)(26005)(8676002)(76116006)(66946007)(66556008)(66476007)(66446008)(64756008)(8936002)(52536014)(9686003)(5660300002)(186003)(33656002)(53546011)(7696005)(6506007)(316002)(110136005)(83380400001)(2906002)(82960400001)(86362001)(55016003)(38100700002)(38070700005)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?QXZB1QhRLfNUlGePnHLtsdHj6CebhYIx7w+UGbX5lYL6lHRnE0uNk/CS40HO?=
 =?us-ascii?Q?VlJha3C5eR+YEWKCAJNR9SvQz2XPUBtVFugY0Nw5c2kRA5MbMglymZOs5svf?=
 =?us-ascii?Q?KYZOplQm1BwEjXsml+BP26XXJshB6DPs+oAj3Ctza1Wf31HA9RbbR1S5rAyl?=
 =?us-ascii?Q?uJ+HlFTJkUWmu0AvQ+u58biCI2pf7SDcImHeB5kFzt0UA4XmuCBXUGAgnhiF?=
 =?us-ascii?Q?IAr87XgTAIHTRsWAmX58v7R33zIW1CGJVhzoI4mjHU3em5z6JQBxqWI4Rm5+?=
 =?us-ascii?Q?+4GNjVNA2J0oRmgfugiTN/bmb755wB1dXQ9l0kGt0Dj6AkVgrJcnS/8WeE4b?=
 =?us-ascii?Q?G6Rz24o8kJaxk9tDSLm06SX+vZ4n0apzQStgalHwYi7V0FBhPBLCrYTbkgqO?=
 =?us-ascii?Q?GIzmLHylum0R3vnPd4QlrC8hNLGU3lzsDW1m+oijxeEzP8AmdQmL0YRhUjXm?=
 =?us-ascii?Q?oD8MqowCRdcyzk6mfUtEmCh2JZsp9wusB7iO7vlZdccISoZ7kTEsvXNbVM83?=
 =?us-ascii?Q?E/7nrq5LVNsJM/rtN6Nv1SxZdKZD2MbfvaIXtUV636H1sC4rwY8wMaeu4iGx?=
 =?us-ascii?Q?kttotuVwQvqRDKGJJI6dSNx1/Vph1u97B5ejBqGMcJuxbQWUqr9qgvUJ3zFE?=
 =?us-ascii?Q?U+LKVFKxQUfrY7b/BQnE91pD3jNGZpJtHTB146Ie7CqIGcQHgIyMJjoxwd4P?=
 =?us-ascii?Q?3XZavhFI3OmqgUq1OpPJiLAuBrqpPCg3mOcBrHw2e1cUO60Xv6swVxGRT08A?=
 =?us-ascii?Q?Yb70tcIXTBR+EA/xqQmzXvyoRJHdwd6AsfqWCrg5H0h3mLvtzcA4jMF+w8Ki?=
 =?us-ascii?Q?txpI4fc7Pr15Y+tOumajilYz09BoLieiJ0ElHlkkb9OPDR43LfiIYJw1jinS?=
 =?us-ascii?Q?9H5qFCiVHThslWkoiBnVzSWw6/H83rUzEXfOd6itCgE+qFgqvfFbSVYdMt6K?=
 =?us-ascii?Q?Ezo288RPvqbDzi8HYFVK8iK6JgbseeylslfnZAqk/zmIMhoUdPumdEBa6FXk?=
 =?us-ascii?Q?yE8SxcgBbhSorHA3tGGcXDmkiJnSM8x1frZqzpBaHzxr0ObbGYycSVJsRxnd?=
 =?us-ascii?Q?+B4x/piUUXQnZt7C5jpGlMgkrRUGn7DWO2/MmTSfbJ3nS51mxFBYsApasJJ6?=
 =?us-ascii?Q?rc/KUjkxkXib9B+uCtSPOPtklkUpRYViNcA4CGhI6MKvgcSDlcqHjF6RlMRc?=
 =?us-ascii?Q?PG4HA1Vde0IXyWa1jWfhn3iuMhy10qh8HmVC3oq/Q7xxH2/ZfhrBV9NbJ+rD?=
 =?us-ascii?Q?n+ToiInlkd4Lstizrt7kIWiYUD8ErezsMbSWFcNC//IccXbDJcCAl7uZx8o8?=
 =?us-ascii?Q?juIZj/mSECxGymRog6svHad1mc6tn3/0oyp8HK5UKghWPOv5GyUCGVh4/KEt?=
 =?us-ascii?Q?AKBoO840xrtqM85iBIS4vUidNpU1BWegIQsdF1zurQsVz0fxLXtOVgJ9YIyM?=
 =?us-ascii?Q?SPsL/F/WfoUz6jJUuQVhQjMP/diYHhAgwhII45iiGiOlDks/2BAGOVFRXmkJ?=
 =?us-ascii?Q?abzcaUvLuO790g1q74BsGLj3ejr7W7QtyFMmSNX1tiyIW3CuMH5bYdyHJrMV?=
 =?us-ascii?Q?CVFMVlYcW1mtrI23+T1xMY+qSrUWT/ux1M8DY1Vj?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 74ae2a6b-8e36-46d8-7a36-08dac888799a
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Nov 2022 10:42:50.7152 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9dRFaVCq035ccibPpJE2AJokk/McmbayJChKS9NdARk+WXewOy0R1o301nGZNtZro0ag+pEuivbNHhxw+dFEvw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6123
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668681774; x=1700217774;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=C3RoEfFIGhD8g7NNurji9RXhT7iKN87RsBg2PVe7oRA=;
 b=kGuPoCjb3DgJh3qQ26tNibq7TyhBmx8V6hwgnfOsZC4/qZF/w3zI8Xrz
 9mIo9gZQQRXRh51gMOUEl5A9vOF4Rho1DxzjQyrNLriy+BlPgn0YbUHcP
 QOydOtxCmSIBXx2aavRB85N2+V5Ct6OwPD/yhIGWO7HEb+GI2z3QzWWb6
 254oU8NXrFJaVjKAnWXkh8a6JRkiDINL95re4TFegHptztHIbF755cjhR
 y82TWmXKw6LJVPYmvbaAhvYT2r+FbwJyrCSY9qs9puMeJTlxxzDtrkpnj
 dlXPTWeUwi1n1LPADYb9ZzmGytKLPzqRejVPgm2vd2BnwMFD3F4xWZEVQ
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kGuPoCjb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 05/15] ice: always call
 ice_ptp_link_change and make it void
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
> Jacob Keller
> Sent: Friday, November 4, 2022 3:32 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [PATCH net-next v2 05/15] ice: always call
> ice_ptp_link_change and make it void
> 
> The ice_ptp_link_change function is currently only called for E822 based
> hardware. Future changes are going to extend this function to perform
> additional tasks on link change.
> 
> Always call this function, moving the E810 check from the callers down to just
> before we call the E822-specific function required to restart the PHY.
> 
> This function also returns an error value, but none of the callers actually
> check it. In general, the errors it produces are more likely systemic problems
> such as invalid or corrupt port numbers. No caller checks these, and so no
> warning is logged.
> 
> Re-order the flag checks so that ICE_FLAG_PTP is checked first. Drop the
> unnecessary check for ICE_FLAG_PTP_SUPPORTED, as ICE_FLAG_PTP will
> not be set except when ICE_FLAG_PTP_SUPPORTED is set.
> 
> Convert the port checks to WARN_ON_ONCE, in order to generate a kernel
> stack trace when they are hit.
> 
> Convert the function to void since no caller actually checks these return
> values.
> 
> Co-developed-by: Dave Ertman <david.m.ertman@intel.com>
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> Changes since v1
> * Fixed the commit message to use E810 instead of e810
> * Fixed the tags to use Co-developed-by and add Dave's Signed-off-by
> 
>  drivers/net/ethernet/intel/ice/ice_main.c |  9 +++------
> drivers/net/ethernet/intel/ice/ice_ptp.c  | 24 +++++++++++------------
> drivers/net/ethernet/intel/ice/ice_ptp.h  |  7 ++++---
>  3 files changed, 19 insertions(+), 21 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
