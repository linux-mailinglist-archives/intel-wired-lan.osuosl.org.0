Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 087FB6B3603
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Mar 2023 06:16:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D735C60F58;
	Fri, 10 Mar 2023 05:16:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D735C60F58
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678425395;
	bh=0RYNX6vtb8PLn14XzZBRmFSEpoHQTz03hNZA9P8N8xQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7Em4FVEpkSy1utBtQM2HthOFRkMs/uzOXVqpVLOuWwHNY2WOvUFJegZZ4nfHOwmY0
	 berkJ1GRLHiPyzKcE7hCkClAo4ZFppmcQU+qgk2o1d2x+AVvG+FbczKgxwOtzjp1Fs
	 ftkCSOavfQ4o8EAO+0Jaq1WLuKgSLlovPOXFAeG3X0pY3APoIibuSrph19ri6D4Nxx
	 DkDvlpSXYGSnl+Tm4zcmXQfSR3yZiBQ57/1D4RTvWwUd1jg6CE/+5MwIZFrIzTZ5bq
	 r+oDJMVxKhxTd9M33OC+cytlaOvk/M7X8TPZLw/bI69tamJBV8rPSjpU9Xmq56x2dD
	 /KBESoFruiYVg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SAU0n963_fOQ; Fri, 10 Mar 2023 05:16:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 943BE60F53;
	Fri, 10 Mar 2023 05:16:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 943BE60F53
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9E0E91BF2F7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 05:16:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 814AE41999
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 05:16:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 814AE41999
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tVfFVgAkePIu for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Mar 2023 05:16:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E335A41995
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E335A41995
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 05:16:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="320503414"
X-IronPort-AV: E=Sophos;i="5.98,248,1673942400"; d="scan'208";a="320503414"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 21:16:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="923540400"
X-IronPort-AV: E=Sophos;i="5.98,248,1673942400"; d="scan'208";a="923540400"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP; 09 Mar 2023 21:16:26 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 9 Mar 2023 21:16:25 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 9 Mar 2023 21:16:25 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 9 Mar 2023 21:16:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mj56XNcoSguq7+B7xpc9kSIRsVPsXZUm7hs0LYreMvZitZIIaOIl+NxlUl5lp0QBDWgzhc9qsk8Rp3YtJ6X8eQUxMow+bLGcr4H48IRqpNZFule7O5XbIPMCTcxLuqdL05RYeNaHMKaGDIET3PEKutJoPjSR/+YrFdhltmkHy5bEQ4BWqB296CQd89LBONh51hIpTvPHmf7RH0Q423aK8ZkYLLs83JE0IQhpKCNTTnJ4nTzTJFDMCHPi3IL3IA2xXD8N95XM7WRib8wQcTLeDH2Ms0jbg9njhy5wEMaQaBEU3P3PUmezv2EljhFY3/SKmlolclvFDmZwXFKGc5rrew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Znmr1zzOjDcTttIrQRH4l66Z6VsC3IOLZFRRobRLZiw=;
 b=ChXz7WsGeEQcwLDasCUutPbbBzAqrSXwrGHU0eax6HeVo40bVdsUX/J70vjOmYf0HaPk9UxxbmjCoMwMnSrOoMjNdHVUK5eCvLBaq2VBr5jCc1mmrKWMVAGQW09jJktw+XNj6I8jtQ0V6InkMukDJfac9HLM8y47VIZj52VElx5QWTjkMI12F0G8wyTzm5d4uCiWUOKdPtRb43gsFhMjwOri9wg7Ezt5JOkwR+TSGNlAY/yU4d7NVgN61iXkHYG4lVr9NtMNQX4PaQvm48vkkQ9czt02qvkC6JIgjSNv6DGUFf43twy/+nhTNMhySjQn1bdvZ3sqO90JyfmtLAi9aQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3723.namprd11.prod.outlook.com (2603:10b6:5:13f::25)
 by IA1PR11MB7919.namprd11.prod.outlook.com (2603:10b6:208:3fa::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.19; Fri, 10 Mar
 2023 05:16:23 +0000
Received: from DM6PR11MB3723.namprd11.prod.outlook.com
 ([fe80::b060:3d57:bbe5:baa8]) by DM6PR11MB3723.namprd11.prod.outlook.com
 ([fe80::b060:3d57:bbe5:baa8%4]) with mapi id 15.20.6178.019; Fri, 10 Mar 2023
 05:16:22 +0000
From: "Guo, Junfeng" <junfeng.guo@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: add profile conflict check
 for AVF FDIR
Thread-Index: AQHZUkV7Uz2vEigeeUm0oPTFlJjYu67yeswAgADhW8A=
Date: Fri, 10 Mar 2023 05:16:22 +0000
Message-ID: <DM6PR11MB37232688E5F2E6C2A1646DBAE7BA9@DM6PR11MB3723.namprd11.prod.outlook.com>
References: <20230309051011.1165676-1-junfeng.guo@intel.com>
 <ZAnmxK1U+a57Rlpf@localhost.localdomain>
In-Reply-To: <ZAnmxK1U+a57Rlpf@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3723:EE_|IA1PR11MB7919:EE_
x-ms-office365-filtering-correlation-id: 31d3d297-805f-4d88-f38c-08db212696af
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vvPgbA19KV1qGwyPSew13Ig//ycbpoPYaaND8RnvdSGjyPrFVH4hWYO3mj7h1w95qJwiCtRRKBZmt17F2LXc8KdRTeLFJL9Mh56L9mLkl7S5+A3LrhHHDM+xI3dcdM0+DH2aci7qIkBG4hf9tBSNNFmrJZSsOHSgabnE0bi0R/ZbKCQ6wVmVV/aT0sxjhEDoSMN19fXUB2ZxkEvvIZ9HZGZA5lxJQmXw28e5g1FEWVzz1o+7CgdcOZjF5pYcoOToVddc51g1nXinITjYU67QYE00LUUQAR5lf9Lo15QhYQhMPUJKgrEB0yH6odaSnOaGGtSAqQ8MzYwTlNlrAr0bxAjR7x2FJCXh7jFoVRcJc+y0YHhWP9j/hw/1/6dX775RS+ALvqRyneW7ZFuVcDRU0HO2Xyqamy8A82h0SmmtsuMA3lOQqMRVgeHODS/8OlyKw4uyIFURPyejihCTjDZp2dtiXd93/xxClqEap+K1A+uh8vLXsX+wt0ne9FBAJ3XzacgMrnwq6qSDWAQgi2QSkAmq7rKs+wh9uHM8NKDexlDy6jj6v8pobeWkxiBktLMXCLGk74tlodDI7VfSJmNVmWO56IkLMozZKovs2e5HtWISQriQpFr3ZLUkBTnsb0/GQ6pcRtl1ENlTZsshBpYXSoRnvNWbBtEb5gGcZw3ZWgiFKnkT/QSbHswx0imno93n
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3723.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(346002)(396003)(136003)(39860400002)(376002)(451199018)(6506007)(966005)(26005)(9686003)(53546011)(83380400001)(7696005)(71200400001)(186003)(316002)(66946007)(66446008)(8676002)(66556008)(66476007)(64756008)(76116006)(8936002)(52536014)(122000001)(82960400001)(41300700001)(5660300002)(4326008)(2906002)(6916009)(38100700002)(38070700005)(86362001)(478600001)(55016003)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zEEINCY6wDoPOVsYYDPclt6qeKxavGF9tBTqWiHFROjfeI1cuRYwkUQnvdfX?=
 =?us-ascii?Q?7c5yWNEzAuVEqXVvgOXN84kYLUDIoO+5VPaRyJP7S2E6+GmeBvXLfOiD3uUv?=
 =?us-ascii?Q?6PKo25VG7XGnMQuwzd1n6XeYfjYWjZXwnhItc9SQTNQoZV7b1U7+XrdqiJfb?=
 =?us-ascii?Q?TV6zywcNjVyvU7BEbF7u7Zaxea5oPmE0RpciGBd6yGwb2YNnNKl1nNNLcXIJ?=
 =?us-ascii?Q?zhMkyH9ct39zMNIfOYdiHldl5YYJdIQRpswjbn94yIooYpzl31gE3Ntm9qw8?=
 =?us-ascii?Q?6arQS+c2nck7SciUbTHqcu382mWI5er9xupXbelUk6ujnhnro3jZfODIzdsm?=
 =?us-ascii?Q?LPurOub4Anw9OUV0H6K6j0OEkmRj+QauuZtd0TsKkQoX+W2q7JtCmPdFaQ5l?=
 =?us-ascii?Q?wt6//aDNe1CldfDo631zB0P9z0dPBdKhkMkSqdiPdamoux0rZBDQuWGwWg4b?=
 =?us-ascii?Q?Njlub9lrDibeMi4AeFT7gNcKaG8YjZ3rXNLcsIwcRTwmURy/o/yWvu3wOcIh?=
 =?us-ascii?Q?IzKjALQNME3F0hWuQyK3jA1XsIlmTjDLCsXRzslDIReGMPxuNKm5MqkD8YBZ?=
 =?us-ascii?Q?wm8vNrWExgNeWgFJO24JlNvXE2X3OyCS8IcGI/JVABn4GQF/vUm2P+qoz0Rn?=
 =?us-ascii?Q?vrFJPW1eaKpTyGr87kxk14eP6mz+De50TyE8f1PigTRUNjeKgjgHECARmw6S?=
 =?us-ascii?Q?HiKJaolFfkB9DU4Mq8EP186lX9k9XAk4syf2AiJHcuLRorTQx/RlBOiqCucd?=
 =?us-ascii?Q?9uQmtlczg2cEzkLz2nNuPW5QbAOUBqVCG6fy+FpbMtC5nANZGeii2ySLJzmJ?=
 =?us-ascii?Q?AIIfTVn1ShJJ79iRVvhqAAigenINDuE0LbdjKdJN43IeMHAMC0EWPXhbbeXu?=
 =?us-ascii?Q?jHWVFPu8KjkCMoxSo5DZh+tEvGI7baO+mTXWdDh8N+P/GZvgeWuPy7YuNUUu?=
 =?us-ascii?Q?lLmH9P9lTs7W+29jcsyjny2lYTYtz17U51v/wOhOQ597sci+J6yTVfKTEHPb?=
 =?us-ascii?Q?pITonp3FxG6BzMZz48Q2qyYgaI0aLhzzS+64i0cuKg/DrTnipZmD1QbBbsCY?=
 =?us-ascii?Q?TrKVKDuoeyeXysx7+f5jBtldeSupjN6XIPLmeCVm3ZTcMuJZYcw3Kj/V7JUz?=
 =?us-ascii?Q?IaFlWobd2qgAZtAOek8Gnv3sOV67Ebu0Rl1dzJ6dplUkVRLm4OFbsPDFHBVd?=
 =?us-ascii?Q?puHt+3kAgumo45PVeYGIiq5ABdLGc9DIFE8dgvDLeUmaTFgJvwlORCfp2bI0?=
 =?us-ascii?Q?lwZidw93aalYNDqP7wWKW4qHzDqnCH4fEeOBNmP+1iYiw704fWi7QSf20mSx?=
 =?us-ascii?Q?AFcnxZEJltcMOaTEz7v2TSU20uTqbvK8N9y3cCyKfycBzKt7pzrPVytgXgeF?=
 =?us-ascii?Q?udrrxNjdWkSTXRMu/p1PcTobw+w8zMJwQuXJeUxFNlsEJNKhg9Aw51uKuoJ+?=
 =?us-ascii?Q?c2B7ClyOrI48pB6sl3mbM+MYHuSNc9VJWGNLxP1+KK0yjo9Dxz+PxW0psx3m?=
 =?us-ascii?Q?tr9i8ibh9gCKzgm7tEdrZUToAlLRFedIqL1Qcl6AllSOo0eu8Z9/xK68lnG5?=
 =?us-ascii?Q?gL800XlF89WqmjX0R+f+HKafhPN8ZcHmuuNphG4f?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3723.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 31d3d297-805f-4d88-f38c-08db212696af
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2023 05:16:22.3175 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VtHdP/J1BLBhs+0f4pAG9UB5KBPvWo8pVooT7JcXgpiZSsglTmPjU4amjylnZJEB7QcDpnm5Df3PSKDLe8iESw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7919
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678425387; x=1709961387;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iBM250GLZw6R4XFdrnpD9BF3TUqjiA4xrmWaiUUTdEA=;
 b=iE5IjEsMO5RO5WdXXKnN7hgAGEWUoiNPm5/Iw2d56bgwZcUN9pYNJ0rt
 j6X5ZGpMwuIc+8etkctaze8r18ejgmasewZ+ksI3/SiEvMmU4mRJyNHdN
 OcwnaHa+gMdoHF7zyR2gSGFzhx7oiVMViVBxXFQ+gdeyqgXaaIliAosTQ
 07BRnAwdYKlE6ilfXUpt8hH9A/LkaKK9Tkh49dedPDsdY3pwz935L7cSV
 J/pbEx63hONnlG0DKcor+HtDaIJMjHukjDCHuiUt8dFqnJyBRfHYO5OOJ
 X8NSV0VTF42ZyqO1Zsurzh60eoLlPjuVlVi+/zKp/cIkyBEUjv0aeLuk6
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iE5IjEsM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: add profile conflict check
 for AVF FDIR
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Thanks for the review! Comments inline.

> -----Original Message-----
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Sent: Thursday, March 9, 2023 22:02
> To: Guo, Junfeng <junfeng.guo@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org
> Subject: Re: [Intel-wired-lan] [PATCH net] ice: add profile conflict check
> for AVF FDIR
> 
> On Thu, Mar 09, 2023 at 01:10:11PM +0800, Junfeng Guo wrote:
> > Add profile conflict check while adding some FDIR rules to aviod
> > unexpected flow behavior, rules may have conflict including:
> >         IPv4 <---> {IPv4_UDP, IPv4_TCP, IPv4_SCTP}
> >         IPv6 <---> {IPv6_UDP, IPv6_TCP, IPv6_SCTP}
> >
> > For example, when we create an FDIR rule for IPv4, this rule will work
> > on packets including IPv4, IPv4_UDP, IPv4_TCP and IPv4_SCTP. But if we
> > then create an FDIR rule for IPv4_UDP and then destroy it, the first
> > FDIR rule for IPv4 cannot work on pkt IPv4_UDP then.
> >
> > To prevent this unexpected behavior, we add restriction in software
> > when creating FDIR rules by adding necessary profile conflict check.
> 
> What about flow conflict when rule is added from host perspective (by
> ethtool)? Do we also need to check for conflict? Maybe it is worth
> create common code for this case.
> >
> > Fixes: 1f7ea1cd6a37 ("ice: Enable FDIR Configure for AVF")
> > Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> > ---
> >  .../ethernet/intel/ice/ice_virtchnl_fdir.c    | 71 +++++++++++++++++++
> >  1 file changed, 71 insertions(+)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> > index e6ef6b303222..1431789c194e 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> > @@ -541,6 +541,71 @@ static void ice_vc_fdir_rem_prof_all(struct
> ice_vf *vf)
> >  	}
> >  }
> >
> > +/**
> > + * ice_vc_fdir_has_prof_conflict
> > + * @vf: pointer to the VF structure
> > + * @conf: FDIR configuration for each filter
> > + *
> > + * Check if @conf has conflicting profile with existing profiles
> > + *
> > + * Return: true on success, and false on error.
> > + */
> > +static bool
> > +ice_vc_fdir_has_prof_conflict(struct ice_vf *vf,
> > +			      struct virtchnl_fdir_fltr_conf *conf)
> It isn't aligned.

I think here is just the display issue, the "+" at the beginning will occupy
a character place. Once applied, it will show correctly.

> 
> > +{
> > +	struct ice_fdir_fltr *desc;
> > +
> > +	list_for_each_entry(desc, &vf->fdir.fdir_rule_list, fltr_node) {
> > +		struct virtchnl_fdir_fltr_conf *existing_conf =
> > +
> 	to_fltr_conf_from_desc(desc);
> > +		struct ice_fdir_fltr *a = &existing_conf->input;
> > +		struct ice_fdir_fltr *b = &conf->input;
> > +
> > +		enum ice_fltr_ptype flow_type_a = a->flow_type;
> > +		enum ice_fltr_ptype flow_type_b = b->flow_type;
> I think You should folow RCT variable declaration here, and remove
> empty
> line.

Thanks for the advice!

Do you mean update the code order like this?
	{
	enum ice_fltr_ptype flow_type_a, flow_type_b;
	struct ice_fdir_fltr *a = &existing_conf->input;
	struct ice_fdir_fltr *b = &conf->input;

	flow_type_a = a->flow_type;
	flow_type_b = b->flow_type;
	}
Or like this?
	{
	enum ice_fltr_ptype flow_type_a, flow_type_b;
	struct ice_fdir_fltr *a, *b;

	a = &existing_conf->input;
	b = &conf->input;
	flow_type_a = a->flow_type;
	flow_type_b = b->flow_type;
	}

> 
> > +
> > +		/* No need to compare two rules with different tunnel
> type */
> > +		if (existing_conf->ttype != conf->ttype)
> > +			continue;
> > +
> > +		/* No need to compare two rules with same protocol */
> > +		if (flow_type_a == flow_type_b)
> > +			continue;
> This two ifs can be combined into one.

Sure, it could be updated in the coming version. Thanks!

> 
> > +
> > +		switch (flow_type_a) {
> > +		case ICE_FLTR_PTYPE_NONF_IPV4_UDP:
> > +		case ICE_FLTR_PTYPE_NONF_IPV4_TCP:
> > +		case ICE_FLTR_PTYPE_NONF_IPV4_SCTP:
> > +			if (flow_type_b ==
> ICE_FLTR_PTYPE_NONF_IPV4_OTHER)
> > +				return true;
> > +			break;
> > +		case ICE_FLTR_PTYPE_NONF_IPV4_OTHER:
> > +			if (flow_type_b ==
> ICE_FLTR_PTYPE_NONF_IPV4_UDP ||
> > +			    flow_type_b ==
> ICE_FLTR_PTYPE_NONF_IPV4_TCP ||
> > +			    flow_type_b ==
> ICE_FLTR_PTYPE_NONF_IPV4_SCTP)
> > +				return true;
> > +			break;
> > +		case ICE_FLTR_PTYPE_NONF_IPV6_UDP:
> > +		case ICE_FLTR_PTYPE_NONF_IPV6_TCP:
> > +		case ICE_FLTR_PTYPE_NONF_IPV6_SCTP:
> > +			if (flow_type_b ==
> ICE_FLTR_PTYPE_NONF_IPV6_OTHER)
> > +				return true;
> > +			break;
> > +		case ICE_FLTR_PTYPE_NONF_IPV6_OTHER:
> > +			if (flow_type_b ==
> ICE_FLTR_PTYPE_NONF_IPV6_UDP ||
> > +			    flow_type_b ==
> ICE_FLTR_PTYPE_NONF_IPV6_TCP ||
> > +			    flow_type_b ==
> ICE_FLTR_PTYPE_NONF_IPV6_SCTP)
> > +				return true;
> > +			break;
> > +		default:
> > +			break;
> > +		}
> > +	}
> > +
> > +	return false;
> > +}
> > +
> >  /**
> >   * ice_vc_fdir_write_flow_prof
> >   * @vf: pointer to the VF structure
> > @@ -677,6 +742,12 @@ ice_vc_fdir_config_input_set(struct ice_vf *vf,
> struct virtchnl_fdir_add *fltr,
> >  	enum ice_fltr_ptype flow;
> >  	int ret;
> >
> > +	ret = ice_vc_fdir_has_prof_conflict(vf, conf);
> > +	if (ret) {
> > +		dev_dbg(dev, "Found flow prof conflict for VF %d\n", vf-
> >vf_id);
> > +		return ret;
> > +	}
> > +
> >  	flow = input->flow_type;
> >  	ret = ice_vc_fdir_alloc_prof(vf, flow);
> >  	if (ret) {
> > --
> > 2.25.1
> >
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
