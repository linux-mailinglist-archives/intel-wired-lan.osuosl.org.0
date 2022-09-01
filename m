Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A8B5A8E52
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Sep 2022 08:36:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 71F02415D4;
	Thu,  1 Sep 2022 06:36:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 71F02415D4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662014169;
	bh=pQxA8cGPYqZi2MWEjU2XD6wBBhftpSP3hnqzsE9cYIM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=R0MIePRYEdjNxjODPccW4+dW42/WmgOKBRSFc3TPaBaYUKpKQiiVyQhKbfDLgf9bF
	 joKWewJPJeIeMelkoVVDSe2PbAqssqV79cKIx+966f0/uG6fyqq/KuJD4ahtTP4dTV
	 UHOyF8zKEnFAvJb0GalD6M3tW7ff+l2YgagFY89GRgAbzA8rNscHCUnhh08RrTObCF
	 kx07PTgpqYnLkkmAyVct0k//ECM7pHUlvQt9uVslITko0tA+hOHbAp7smBaRM6abHs
	 Kmc9fQcTWUEJX1+1vug+E58NZb++UD+4uF4e/nS4oy5WL3j7eHFnpZ9qp+hec43dp1
	 umGMPgrWtMq8g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ohGzXErptETS; Thu,  1 Sep 2022 06:36:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D3C95415CD;
	Thu,  1 Sep 2022 06:36:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D3C95415CD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 358C41BF21A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 06:36:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 186D383E31
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 06:36:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 186D383E31
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8oC19nsp_AfR for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Sep 2022 06:36:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E9EDF83E2F
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E9EDF83E2F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 06:36:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="293208592"
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="293208592"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 23:36:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="645520678"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 31 Aug 2022 23:35:59 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 31 Aug 2022 23:35:59 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 31 Aug 2022 23:35:59 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 31 Aug 2022 23:35:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ds/qx1pqACuHuShsFBG2zC6zAqOGnQYgpsdqN94JJQOMyt1+5jFTmY883XmBr6xvFn4FdUhg0/SxFWS+67jC2nQa15/H9loTXjfQ2XxiniXUqo+yTzX2wWTCGBPv3DVRq2P+mERUGFZrUjZ16yrpUwJkwGcU/A3V+f3aEBAMnX/YAPt1R+vRnx+kzYny0JaxVO2MDljyOX9ywVaBWsd6nLPt/wpVBWeZbr+Pj1eyWnok+ENQ2VrkgAhmUCIGuNC2rD2Fhz2BlS3KkMDBMjkmW2SLUbCc1pG5W8XbNTeV61YCyxsVt2GIIyWCbsMQswnEUlSW5kHl1FKTZHyi2OxBNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xMlmPKl7VGrOxnAcpYDcjwx5tMPOdifS9CynYALLnHo=;
 b=P2lL9GqxEpOu1lznyg28ndmR8Ul/OkWsSC6ppu79jV1yAs6RPjMoaVOv75R0EX3kqL/oTUunchQfKfuGan9WTSopmJSDTm4RpEDir7xquaLzg6Mg4iCTWweK6uss5ajdCO3WkvMG1IeU9YW9LTHF2j/OAD+StP83KOZF1GLnvLPo2x3A6hFKA4KUtZMP3IZkxeHf+5pfU1lZ7d+zwvzVfvXSoSWzPDZI1aL5OAf442xLi9USCRB4Z17cUjNLiJmyZWyrnEBAWghZANL/xiXKfMMGf/8panF8txo8L5wpO6sfZ7wz3S6P1F8F1op8azl52v+rdsnAdPjwezuhhKYd/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 MN2PR11MB3694.namprd11.prod.outlook.com (2603:10b6:208:f7::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5588.10; Thu, 1 Sep 2022 06:35:57 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::f43a:da9a:b75d:e4bd]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::f43a:da9a:b75d:e4bd%7]) with mapi id 15.20.5588.012; Thu, 1 Sep 2022
 06:35:57 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2] iavf: Fix race between
 iavf_close and iavf_reset_task
Thread-Index: AQHYsvZsOdYiEZiQiUyonpX3i6jina3KNCVg
Date: Thu, 1 Sep 2022 06:35:57 +0000
Message-ID: <DM8PR11MB5621D45467DD8095F71E8304AB7B9@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20220818113233.2300327-1-mateusz.palczewski@intel.com>
In-Reply-To: <20220818113233.2300327-1-mateusz.palczewski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bbfb44e2-e507-47f6-28de-08da8be43a7f
x-ms-traffictypediagnostic: MN2PR11MB3694:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: up6/cJ1UUNaBds1t2Z/0IylEJGGegU/VdBFLsNNXufQ6uH7UfC/niToe8FUbpHNX3r48PCsWCNd2EAG61vh+QJWxfPZJwmwYZP2dx0INLoQOiW4we5eh/5pulphuNDNYrpLhQfE0Joz81+FrzU0lecGSrtWl1fd/qW+h/fGiQdRbg9YcJiQtE7Dig8J+oeIicU8xeahhXTDlkplMsR7j6RyU9R55iiSmBFX08wNgKTLhdr9h0cCEjTLW/TxYbpEWcAlIdu4TVseLTv3jgvf1NLDwPVyrNBDLucSOH7c3TJ+hCTFqnB16NrxSAKuOzEQBByv2uda3RZxDedLi7XIeGd+8/XMwBgl9K3UuT0hX7V0eWi3lvTk0kP8NqH62AHQ3p1l1xqXZDX/nhCa74ccfq2eT4ZA/MDz6eUz4U+Y5gqn0igVi1RFri3UTOliUcZhdUcy/DJgvKFQrgahmY0JmpqqWhwW6WIS3zfNNIpJUCNB2RkpA6Dr2ZbyG8d56mjthtByK4078S3xC+fuNpKF5XrDMvh6dE5Pcdk5Z4g8gwY5oPJmFQHuW0y2FoWv4eheVNqmlmbEq2VVQic9gb9pOfoVqcrFAfGIQ4z+LI7gonxVb586eKPXvUAJJNhg6uJtigPDFxWx3cmQ+NsC/3v7ehLZU/k1C5hTWZ0U5GVY8Oq9Cwz4FfFPgLT4RtA9CW6KdWa1Jc6Cdo6EuOyD0zRGSLAOWA+aOrtU8zOvR495s7aSeQKgFpsX0sF7E9qfjSJUTs6GlHiWMebmDfNTIIl5gVQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(366004)(396003)(346002)(39860400002)(376002)(8676002)(76116006)(8936002)(66446008)(316002)(38070700005)(110136005)(66946007)(66556008)(66476007)(4326008)(64756008)(71200400001)(26005)(6506007)(7696005)(53546011)(2906002)(9686003)(107886003)(186003)(82960400001)(86362001)(38100700002)(83380400001)(122000001)(5660300002)(41300700001)(52536014)(478600001)(33656002)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ipXnIpdxiyYEey38bbjptGX7AuMvmBMFL9nOpcYdCC01dGxKIDCOe6RjD2Wt?=
 =?us-ascii?Q?u7JjyxcdevRfqZz7C3FI725tXE6Hmn0g4ifSRaFpZSjKxyE6yUzQcaeqTBLL?=
 =?us-ascii?Q?ZECXwk6I9TW7s++KJHHxWKsVcYEJD+yYI/S3Dyxb3Qf6m//IO1HxZluS0RHN?=
 =?us-ascii?Q?Auv39oKhM4txUKZ4z3o/bBJtatdGNvBSKP8UQISupNWeg1C+P887VCFqvQLt?=
 =?us-ascii?Q?DFfKtJ/qva8ALMnItryBiXh0fW2B0orTxi6yz92D3UIpx107JIlC75FXcZkn?=
 =?us-ascii?Q?gYeTDlyYfr9MkConVhPC1EtSIJMeatczGlVhvpyU0tSC2p77VIpfbtfU4XpS?=
 =?us-ascii?Q?7faXajT0DlY24H+LuHpWMYZlgzA1YDj+aMylQjajxEeAWFtcgSIO3DTuRMCh?=
 =?us-ascii?Q?q5KE65+y4b6hKZwT96orWDoYXaSc27nneOvCjR2J+fbQq1BIxfp3jr8X3tsU?=
 =?us-ascii?Q?w4HG678usIpilrbfypShefiltcZyyTq9NxOWzKxLmLabQA8yig/rajZdsuxX?=
 =?us-ascii?Q?FhcQfyDe6QFMAki26sSLtZNd8HcCKSvk814Gx0LuZzQfiOAVmu0hTq+ccoxF?=
 =?us-ascii?Q?5z+ws/EM4oxqxXAinb4LmzuBLM6ZIYBls+i8t74s5SzQ3ECILa4v43ts94Se?=
 =?us-ascii?Q?EYjBfFwNnktl3KWcQAG6tbhV6xn7uLD0b5kv9g9OSSWp6d+Kw7tVAVp6OEer?=
 =?us-ascii?Q?DToi0iq4S+QjgHO2G3rQS11OhrdFZHGlWDEQcH4y557fgtfySLZvIptyEqEl?=
 =?us-ascii?Q?mItOAWZcA6BqaFP/79WCD4ok9cMZ6rgCkK2IRx9oIldATXW0YFwbeiwseCpX?=
 =?us-ascii?Q?HZHoqGiRQD6OVSTP6AiYsokPm34HIYY4rAoE2Eyzn5m5fiPny4Z43T8jWUDk?=
 =?us-ascii?Q?F23E5OA/AmJfWomvbNbFT0WAtM/Rr7ebAoja3+4YSoR+m6I5UVoXoxbagc2Y?=
 =?us-ascii?Q?P76K5yNBxY1C9LRz0ZJkow8Og3H+HyjCl1lifNdRp1NLNRc7Y3Ot7blikNVm?=
 =?us-ascii?Q?YcyKkDFbxftqGwl5XG2F1HLJJ9SEEN6gJv8QhksaYKGkH2ugTxbZbiFzwvbj?=
 =?us-ascii?Q?ObwMW6MaTqdcK2t1iwrSo4ZTtEhGdXBQ+MYbJgD3ccK3cbE1NBzO2xA/9IB0?=
 =?us-ascii?Q?Dly3nl4QF2YKX48bPcJC1keKb6GktlhA6fqohmAQqJj4sQiTcDopefwI8Bne?=
 =?us-ascii?Q?LNSjWMaklzTD8BtBWNEC8DLlTxCYejKc9uJj8HY1g03Kjp6B7vU/GHV0BwTb?=
 =?us-ascii?Q?YIAjKtPuPkMgyAJMZjQRi/JpWW9M8zDbd9LeksheFsI2Ga51qiydhGZlfiWz?=
 =?us-ascii?Q?15Zkh4tTbONMwDsccKSRSDeHk2EvBDdRrdMWloSKK9knEeNXr/sGfNA19juy?=
 =?us-ascii?Q?HpUT/tk5dp9wHrT1y5nJdVtuLtM7Qn/voGNgwes0ZWBjT7rEpm+JEoNoa7fp?=
 =?us-ascii?Q?q3N235eZteTZVlu12xMAslEYmQe9t0+W/A5RriACNLqvW+Ik6UxVC1TMd6SG?=
 =?us-ascii?Q?V98TBiB0fsqzoSFGvbxuGhlCJO6tVvBmfNvZFQHRZxH+h8PwAo590QlH8roh?=
 =?us-ascii?Q?sVhMtxe4VGhEy5q1G+QkpMiRXmLWQdIlGrazFnlK+V9o5b/rD3ds+YUeJ0i3?=
 =?us-ascii?Q?RA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bbfb44e2-e507-47f6-28de-08da8be43a7f
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Sep 2022 06:35:57.6406 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 489Oh+Y/gtVEbkYMOiIaWbgxuMhVp+5W0JNrGcN6t4r2BeHtg3dCYsgxurf66Bbkx2MGZaoqTeU0Ao0zk37+YmZHWqP9EaG2rITFVOLTqzk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3694
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662014160; x=1693550160;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=R4emMHg28uK2ic5imQztucQ851w8ZuxPFEQkHGhbBFA=;
 b=SMqFOTRM0HsZdFI/7hUdhXNPEgD6BresJYxgVSglzrHJ7haPsGEMlt2F
 9H4RpRrain5bueEIYPrSw+TCkshY40B/XXFww7SODM+71/T+l7qi1We6u
 tEq58JjibublpGiKmT9BBkjSibTpmtn7JGhd8WZpDFHDtozKbuapoQv1E
 rr5857YoHA5c8USiNwBBulT58RRtR95Zi+xSsLjZLGQR9Wb7gVsPVYWEb
 1HcocWRZU2VBFY0Jlj6FS2YzcUGoktE2kBAnwS7EZ9SxEksDuUcwkng7x
 WtVFGwxhB63QLu5TyIOlDN6rO9Hqp6bR92GIasYBkN0iVYwExXrY3+Dbn
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SMqFOTRM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] iavf: Fix race between
 iavf_close and iavf_reset_task
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
Cc: "Jaron, MichalX" <michalx.jaron@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: Thursday, August 18, 2022 1:33 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Jaron, MichalX <michalx.jaron@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v2] iavf: Fix race between
> iavf_close and iavf_reset_task
> 
> From: Michal Jaron <michalx.jaron@intel.com>
> 
> During stress tests with adding VF to namespace and changing vf's trust there
> was a race between iavf_reset_task and iavf_close.
> Sometimes when IAVF_FLAG_AQ_DISABLE_QUEUES from iavf_close was
> sent to PF after reset and before IAVF_AQ_GET_CONFIG was sent then PF
> returns error IAVF_NOT_SUPPORTED to disable queues request and
> following requests. There is need to get_config before other aq_required
> will be send but iavf_close clears all flags, if get_config was not sent before
> iavf_close, then it will not be send at all.
> 
> In case when IAVF_FLAG_AQ_GET_OFFLOAD_VLAN_V2_CAPS was sent
> before IAVF_FLAG_AQ_DISABLE_QUEUES then there was rtnl_lock deadlock
> between iavf_close and iavf_adminq_task until iavf_close timeouts and
> disable queues was sent after iavf_close ends.
> 
> There was also a problem with sending delete/add filters.
> Sometimes when filters was not yet added to PF and in iavf_close all filters
> was set to remove there might be a try to remove nonexistent filters on PF.
> 
> Add aq_required_tmp to save aq_required flags and send them after
> disable_queues will be handled. Clear flags given to iavf_down different than
> IAVF_FLAG_AQ_GET_CONFIG as this flag is necessary to sent other
> aq_required. Remove some flags that we don't want to send as we are in
> iavf_close and we want to disable interface. Remove filters which was not
> yet sent and send del filters flags only when there are filters to remove.
> 
> Fixes: 53d0b3ae2590 ("i40evf: refactor shutdown code")
> Signed-off-by: Michal Jaron <michalx.jaron@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  v2: Changed target tree from net to next
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 177 ++++++++++++++++----
>  1 file changed, 141 insertions(+), 36 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index f39440ad5c50..b62bf4eb6870 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
