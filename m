Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 83596478F8E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Dec 2021 16:24:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 21FC484C51;
	Fri, 17 Dec 2021 15:24:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AHmZaCdFPsRf; Fri, 17 Dec 2021 15:24:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1E57A84C46;
	Fri, 17 Dec 2021 15:24:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2C3F21BF281
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 15:24:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 195DB41EF2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 15:24:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2G-85D2iEa0J for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Dec 2021 15:24:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3C46541EF0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 15:24:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639754658; x=1671290658;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fTbWcyIbCSsEdGvQQzbM74bK2wDAu4pRgBjhBdq3jVc=;
 b=ERqk6BTyQ9U/9/5XdEWsv+htXjKCkP4za3upSqhUE5BVpYSNN6X0WAfs
 PrE8yLrJpELwkCxvsO9wO8Q3yQUjZrc5WrNHISlskt9gyIRRaSyhD/xoY
 vJst118XCwGX9k8fQ9jdf5u7TgnqGtummHlmwDxj9YYflgfhcsFM2UetN
 8nSiH2R2RRG9dSOCZahvWPAqn6P9bqHnDccRiEfY+RLaojs9fhBBiPH8M
 rcglNxiyU9CLdo+D6NN8fBf9u25+0vb2euGtwUHiixB9Bbkz7YxzPsyUZ
 j7ragh2PeD9etmK+/rl+6yF+xLM9EBO/zeOg17zLzPo/Fs7qJ8dRell1x Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10200"; a="303147258"
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="303147258"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2021 07:24:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="612155761"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga002.fm.intel.com with ESMTP; 17 Dec 2021 07:24:01 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 17 Dec 2021 07:24:01 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 17 Dec 2021 07:24:01 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 17 Dec 2021 07:24:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XINJhvR8gO2lPmjSwxOF8L9TLinvc8zSbdMcOLH+eynLs97KwWWgO5svBu88U4kg6MjKKVJukgdYEv92OIjJ64aAWiSfkqoZUpa4x79jw2WCW4HzhMgNUIts7zKaKCTt/BO9djyp7HBVupHyTSj/a8OWn5YymX/qiYIc7pFTY5cuzPQAKbUO75sdGNj82C3QdpEt67dH+xrN1fDfgHBtm/3L+kOh5D4QDAu0iriwvI9Euy0T7vfI3nEVyfIpBOWlM+Bc2FEBjKszzuqpLRbap8zN2arOQmpc05mJ7GkQTHOjn/Dj9vcW+lcGMQzOEcn+rEPIcYYMqkaAZ1dgKJ9+Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=elV7hakKQiXEE4v/2vKoZnI+l094vXppbu5jg7bdyLA=;
 b=HRHh0SMKzZIS6IFSylxuPxRCodHxNfOKBCc0eonMnDDmJPzHpuDZCtFlkAQIgvBIgwrzOa24P15dCLzDKuA62YOb2bgGuDnSyQY+zs/ZlDxQvwNvwEcvw+3MOEyaQ+1iX33Z/9jcvQk8kf5kaLUxPovPGJ4SIAhuGwQQ0otRpg8HpksA+C6eMYOxUXAOlCabwaulw0FXe9mLYp0BzRvwtyBMbqcGyL774I+IiAioa69vDeyVNowgHvfiZmfKmjpXIWT6PsLrWIk+e1s/hQ4vu2wgxnv1aKY95QnJ5MBieAoYBlkmhyoQ3VSOH869lNqfFCiZePsQ24EnMrv45Uvd+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3292.namprd11.prod.outlook.com (2603:10b6:5:5a::21) by
 DM5PR1101MB2105.namprd11.prod.outlook.com (2603:10b6:4:51::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4778.17; Fri, 17 Dec 2021 15:23:55 +0000
Received: from DM6PR11MB3292.namprd11.prod.outlook.com
 ([fe80::84b0:d849:dadf:e47f]) by DM6PR11MB3292.namprd11.prod.outlook.com
 ([fe80::84b0:d849:dadf:e47f%3]) with mapi id 15.20.4778.016; Fri, 17 Dec 2021
 15:23:55 +0000
From: "Bhandare, KiranX" <kiranx.bhandare@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 intel-net 4/6] ice: xsk: do not
 clear status_error0 for ntu + nb_buffs descriptor
Thread-Index: AQHX8DaZ/v0w+abHRkS8YexyVzrS96w2hKzQ
Date: Fri, 17 Dec 2021 15:23:55 +0000
Message-ID: <DM6PR11MB3292039CD30AE96145240042F1789@DM6PR11MB3292.namprd11.prod.outlook.com>
References: <20211213153111.110877-1-maciej.fijalkowski@intel.com>
 <20211213153111.110877-5-maciej.fijalkowski@intel.com>
In-Reply-To: <20211213153111.110877-5-maciej.fijalkowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: abda519b-508d-43a7-e31c-08d9c1713da4
x-ms-traffictypediagnostic: DM5PR1101MB2105:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <DM5PR1101MB21053D5CEED2C3B6D8C48E6EF1789@DM5PR1101MB2105.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cIxxPRbLxNjTTUhNYMq8ifLbPC5LZzFOe3wiuzcMgdv2nu20G8Lj475vyAD50DaJsa3LT7ZMKAaFDdGJM7yRsbFAjdxKfgGSrqOr2dxXzBmC3pnFFsJVd1VOx/LzvZm90nKHyHpFhxma3LMsMm2ZPg6aEY/an51FPhkJFTHYXB/15bpBL3ekpYoJeGCdw26ltrwvsUD/B+8KeKr+jz13uNNUMwRG6+jrZ7WVBkqNx05jKttUsP7PNUU0D1Uv1E0YtrXaBm9VPnEnM/w+sdDTVlyx5isHD3RDnITQ4e0k4neGX4YYdpo0rF1tVcsa4FIK0ngOBdYA9KWOUKwrfaqMQIYaH7+iCflqcDincPBe6Xjmg6QTTWELEfyWcsnDY0rUIwafSTu9Z51lJEPis86CqDUb2YAYX2AdDbu7BprAQKguOJDATObvKzUJgmC0Qj3+P44nvkdLGAnyyo9erWXDsiJn0G5IKv76IVAv2jBq4bRiF+Kqmi/h+q/F1m9UtUUdf5yXey6JhdRvJNiH51zvSPBR1YT3ytFqcDTR4oAGNi+8IqjI9fdHVKRDl61DzmYEXfsA43E8WCSwm2LDPdSP4mVY/vxYlTD+a7VmY8Stz76yGb7VIB1qNKdR2NdT/Hs6jXdLYtF5FAA+GGNMIfbVA3pPC3qxpCcV+r7CW4VUeOGzXdQTH2cYroaJioFRHa6rMBvfta9ieQQ7QoWCdjMFsA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3292.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(26005)(82960400001)(5660300002)(8676002)(8936002)(53546011)(6506007)(71200400001)(54906003)(107886003)(122000001)(52536014)(55016003)(110136005)(316002)(38100700002)(186003)(9686003)(4326008)(2906002)(66446008)(66476007)(64756008)(7696005)(66946007)(508600001)(76116006)(33656002)(38070700005)(83380400001)(86362001)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?YB+jWnC/yaEiHUJED+VHnszuwHJ2UcR+5SbcN9+eLuNGnSUsN2TEKYROO/c4?=
 =?us-ascii?Q?YyFXJv5uSvGqt3tohY/mnYJaT/izsfVIIOUgn8D+YwHbTF+FOCUDIonBDXfs?=
 =?us-ascii?Q?aRNBbfWmCtStoRNSB4SR5wMeujtSL2qgpqF+vpS0LwtSYqNyI0QL2nwqnDBf?=
 =?us-ascii?Q?EZm2J7vwyiU5Z6m4sdQvv9oxCAT3tQwsK4IjWPVk6q03ple7YGlsvRuUWo4A?=
 =?us-ascii?Q?N1sS0IXdEvSmcBmVitQQHyoWxfRocBxGqijSL6q3H0PuM87YtQBCUPZWVt+i?=
 =?us-ascii?Q?OXQ2kIkmYOg2CKd6NGF1bIZglXCw65cf/F2hR9G33NRpvN9k0QmfseuuGklb?=
 =?us-ascii?Q?f//yblS/ICyuSQC9+kyQXPR8C2oEQfWBgCOailtuQEdUQSZ2xMZ2Nlg3FF1z?=
 =?us-ascii?Q?dv/S32nL2kvbJEIPbZqXcBjP7SF1ezboq88J27nO8YS6Wt8EyZdP0fpeo0p4?=
 =?us-ascii?Q?754JJ2iKFPPw1taL8MlLrbBDwSwnKt9PLrtcb/j2agq66eQpgZ8VkOHfuA5M?=
 =?us-ascii?Q?9fT13fyvKtAxJbyTjAZcuICfTqqhzooULO6iN/iqB9A0pvFuqGvPlH8In7wG?=
 =?us-ascii?Q?SP1BnPw/cUrtLZ0sVLYXj2j99PcH3CvzgAqBzm9Q9+/KeqDpfd1rG6Tlk5vE?=
 =?us-ascii?Q?vemP9e2CGHp+uRGBTaeE/RxRMXAdfTeOCnearCj/nH9btOe1liI3bmIJMGxc?=
 =?us-ascii?Q?1DCu5YMJWJTReuCpTAP2ld+CcwLhL0Uu5H6vnJVGDWeqOfi78X5/LP/DAwxj?=
 =?us-ascii?Q?jWq0uQERFHdf4dN7IppzrFoAlV/l6JOpgjyhbi1LlSptmmIe5YUuD0AXPU+w?=
 =?us-ascii?Q?KOwFfz6oGkz6TknfeIrxv3QjbeU8oc1NG9iwxZnFdojVJaavVfBg4LerseH5?=
 =?us-ascii?Q?uF1xXZQFd9PN6k2mkKcLqYhX2o2u1nLlQyiNnmDGpupLLeN3KHJCTgWxf99o?=
 =?us-ascii?Q?UdpH8GUbeDtab5SUmbL7DbAfN/iMH3Rk2M4abcD4/1FrRuvJwb2QoXATLUkq?=
 =?us-ascii?Q?J+sAbZ4CvSFlNfvY6E41es+cKDG+QilVeugBSOfNahAGIZMJBH9mAtp9sR4w?=
 =?us-ascii?Q?t1ORAtsFcfwXRIJDIKHxViNfNAZsYWyr0b/OGTLO22RDTtjNuh06q+goDAju?=
 =?us-ascii?Q?bzLZhmAR3SOXkaeYEOB9yBQLZlQsa8wv97f4tNUGIdnFP+B79qRi+Guyna2w?=
 =?us-ascii?Q?z76r3JQqS9NBWb9LWnLlAlte8Wgn49aQ8k0xSi15PGR0T9Vsasx7S2Xu0zbA?=
 =?us-ascii?Q?4+DgM7eUtTtyP7oRvAsTFXoW/DIejAnXGlM4SItHCIvwR5Q0tJoG2uwFOXiI?=
 =?us-ascii?Q?zHpS7hP9OhW8Bo4c31N+ODW00PKcGn0EPQnN44RWFnBSYwGPbxvru80GJ8sx?=
 =?us-ascii?Q?QheMrsPRmtzfjPAJW5I3pk+R8pwJg5dRfQK70RpFAGnyj5N6+0XiudD8vn8h?=
 =?us-ascii?Q?H9/3EQL+r82uZ10YZUjMb7mnq9oCbhKO78pOaT7xjueyyh8MS7kdJKZ1Q6YO?=
 =?us-ascii?Q?pxmWU3mYjI0dp+eQSI2o+XrgfkY4A8JR7xSGLePQGJOTeNYtEn7HBjhZyfAD?=
 =?us-ascii?Q?3dvuQbjut2IhhLZ34ueCuOIkpKI578aeYMa5VQq7eromxMcovsxSxtY6qv61?=
 =?us-ascii?Q?jBE6hEuHL5Ik5p0GHmJE3nJOG0zDBCV91AyrLKBWeByo8O6uqc2wD3eneWiy?=
 =?us-ascii?Q?8ndv0g=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3292.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: abda519b-508d-43a7-e31c-08d9c1713da4
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2021 15:23:55.8067 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6p+ii9XXUXGwI0DJzFjDzn+IkaC+LZtGnv26AGnDNQdDIAF6QNpqvq08pGFSOg7VKBlN9Hd5hAL7ZpIHue2gsQmQGFUvRXyAxp1qe2FA/RA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2105
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 intel-net 4/6] ice: xsk: do not
 clear status_error0 for ntu + nb_buffs descriptor
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
Cc: "Mathew, Elza" <elza.mathew@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Maciej Fijalkowski
> Sent: Monday, December 13, 2021 9:01 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Mathew, Elza <elza.mathew@intel.com>; netdev@vger.kernel.org;
> kuba@kernel.org; bpf@vger.kernel.org; davem@davemloft.net; Karlsson,
> Magnus <magnus.karlsson@intel.com>
> Subject: [Intel-wired-lan] [PATCH v2 intel-net 4/6] ice: xsk: do not clear
> status_error0 for ntu + nb_buffs descriptor
> 
> The descriptor that ntu is pointing at when we exit
> ice_alloc_rx_bufs_zc() should not have its corresponding DD bit cleared as
> descriptor is not allocated in there and it is not valid for HW usage.
> 
> The allocation routine at the entry will fill the descriptor that ntu points to
> after it was set to ntu + nb_buffs on previous call.
> 
> Even the spec says:
> "The tail pointer should be set to one descriptor beyond the last empty
> descriptor in host descriptor ring."
> 
> Therefore, step away from clearing the status_error0 on ntu + nb_buffs
> descriptor.
> 
> Fixes: db804cfc21e9 ("ice: Use the xsk batched rx allocation interface")
> Reported-by: Elza Mathew <elza.mathew@intel.com>
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_xsk.c | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
> 

Tested-by: Kiran Bhandare <kiranx.bhandare@intel.com>  A Contingent Worker at Intel
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
