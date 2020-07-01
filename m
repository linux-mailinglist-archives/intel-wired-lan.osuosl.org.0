Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D9BD211101
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Jul 2020 18:47:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B34F78A9C9;
	Wed,  1 Jul 2020 16:47:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RpbF51v7Ye1y; Wed,  1 Jul 2020 16:47:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 698388ABB3;
	Wed,  1 Jul 2020 16:47:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2939E1BF422
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2020 16:47:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 24D3389303
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2020 16:47:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9kHV9eq-M5_y for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Jul 2020 16:47:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E8255892FB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2020 16:47:27 +0000 (UTC)
IronPort-SDR: LvBvR5aT6w64RxxglMOwZU/dhpfRPvbiK9TyW62PdRlxOtzLhY6q/Xy3nxCLJq5LoYzIA+rxpJ
 0GUJA8AmDayg==
X-IronPort-AV: E=McAfee;i="6000,8403,9669"; a="134928836"
X-IronPort-AV: E=Sophos;i="5.75,301,1589266800"; d="scan'208";a="134928836"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2020 09:47:27 -0700
IronPort-SDR: V4AIj8DzdW/b3adP23rgbTckACutdZZ0j0hfkBh2pFsukUIK22PScf+IpANfRX7lK6txpikBgK
 prs+LfwbZG+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,301,1589266800"; d="scan'208";a="455167454"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga005.jf.intel.com with ESMTP; 01 Jul 2020 09:47:27 -0700
Received: from fmsmsx113.amr.corp.intel.com (10.18.116.7) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 1 Jul 2020 09:47:26 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 FMSMSX113.amr.corp.intel.com (10.18.116.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 1 Jul 2020 09:47:26 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Wed, 1 Jul 2020 09:47:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DQldYkCO4hPz4BTnfLkwzsvAp78ne36gZ5k8AmCxow3ex/9Q+KhhKGH4MBJiM0hGVkAGI/Qp1XywbhVvYe9koZH9ePkbti/sZt9tQTOxLs5Bn4fxBgT0uT31keywazSiIKZgGNlySSHNqQu3XMbGkc+lkTt1puQcPmH/zvOAIjXtSRt0dhY5LqsdJGLwaXXvfNhqt442Y62fqKwwwFouGWieXGULJpTSgo2ms3RwWmp/cEgSGY+d7aOXRQ8S3z8OnDpoR69UGnhEJ+EJZ6M6Pq8LltSgLhin8dC+fZ5jdqj8Twx9yffvNFR1QmLsmk+n48lkVj21ro+/3tl4CeVjCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z5db12xU1j/Xq+MAo3h51lwQN/6cnOal4xrtGNSoknU=;
 b=lJLMEqiA185bA7EP58/HYCbXYgF1/GVDid0zMxtS+1VwB59gmVZv5Mvh2YTJdTFY+vzhyPFruG4EYngHnbUfYAujgxx240+SmlIlb2XPz26/kyF9Kx87VU3QXAtzYtWNKN89Un8yKTEZ2UR7EynhK0C6hF9enVq1g3ga9BVm8wU/aTqy7GhXtRfnu4SPZYGVIt/LwZuGmNpOGx7VyAKdpJTniLWv6L18ahfcNtnviz0HBXgtc6BdrItTG5/KJY63h3G1hofvwy1n9UVKnkILv/2AMiAiBsrzByl38vVhWfG50pyndtMJfEjQiQnIpa9f1pIn3ApKl22b9pzSa/QZBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z5db12xU1j/Xq+MAo3h51lwQN/6cnOal4xrtGNSoknU=;
 b=n4dFEYXAywSGVTJCCDDRa9nJDb+p4E/VlFFPCQdNikBVeyF5JhQlogte3xa6+6XgWgO/l9MoS97dR0n1mrR3tAecXUfxVbftEIlVYOM5Ce5irujCq2OfCFfCJguZ5jnQ5Bpe4amw5fp2ZvicAjmiB6BgUdHKq1bg5GrtedOzx/E=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1793.namprd11.prod.outlook.com
 (2603:10b6:404:102::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3153.20; Wed, 1 Jul
 2020 16:47:24 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362%9]) with mapi id 15.20.3131.028; Wed, 1 Jul 2020
 16:47:24 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next, v7 3/5] ice: support to get the VSI
 mapping
Thread-Index: AQHWT0f9ag1iECAGLUmejESIIfNmkKjy7/Sw
Date: Wed, 1 Jul 2020 16:47:24 +0000
Message-ID: <BN6PR1101MB2145AB7B54B4BCD9BF38682C8C6C0@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200619045711.16055-1-haiyue.wang@intel.com>
 <20200701012557.40234-1-haiyue.wang@intel.com>
 <20200701012557.40234-4-haiyue.wang@intel.com>
In-Reply-To: <20200701012557.40234-4-haiyue.wang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.52.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 991b6ba3-e6aa-428c-fff4-08d81dde6e46
x-ms-traffictypediagnostic: BN6PR11MB1793:
x-microsoft-antispam-prvs: <BN6PR11MB1793CD1839A669A0639FF0D18C6C0@BN6PR11MB1793.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 04519BA941
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CMhbaY+f1CBHzI99wL994JSo6NuXvsUVgpLVDlCPaRZalTqcibhVzLKZlh3HOXNEZNiBwwX1wYyYEnlJfJqeRNqXVSr8hYwK2Hpf/0DT7arbhgP8IeKBEeCIzmMgMeD13zpYxvtwvAE/rESRtxfIwrd6FOlC+Zv2uEs0qlkTs/8Kkd6fdydHJimZJc9+yP7zPnE/qX95wAy5Dq3kEkB8YRLLx5yKvhGWIsTUr1LLyOsQj/+2wmwTwclDkUBexl0IHnzO02ZRoZUZRD5DeeLvINwb/oi37uiAqpID9HaQ/g2PqjeXXOMmX9QAQIwFmh8C8m77Nf3NgNMdmxZbMKIqH/GjCQ5jWmE3dHqbd3t1PkvE+n1PBxuq+j1N2WEtOWtx
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(136003)(396003)(39860400002)(366004)(346002)(55016002)(5660300002)(66946007)(64756008)(76116006)(52536014)(8676002)(8936002)(6916009)(26005)(4744005)(33656002)(2906002)(66476007)(478600001)(66556008)(66446008)(53546011)(6506007)(7696005)(9686003)(316002)(86362001)(71200400001)(186003)(83380400001)(15583001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: sChrCAsl4/ViPB9M0EIh3qXImk4BnS42IvKsMtfYH4tzTcg1skb+BtCs5NnOn/yzMnI8KeRM3d7Whhtql/VAKi3gntt6I+D9sixY3E5ezUFumxUk6mLBJIaoVqbcFvDv6JWd0CTyNKwKOZ2OI+V2qeg7pN7GkduSPiNUAat6VArwJZGjerf6rXKg7cudULGhNwVwddF6qjXJM02N1mSExfx3JzpYAOfXV8j5LgIqbqTbmQ7LwNiW5cp4ULyM3oEl4LLtCQSNK/8R8NVTCghrskkKmVQpVBs1MfpqDppCsIEqFKO0j9T7jTUASYWN/Wx0Gw5JpAGV/lRMXIHqbH/RlVVJ3o5u2XBDJPUBbx/Izv6uEIyE7WrxF+uujVkBM4DvSWysSDS6kMQ8A6NQEKpbthL5hvu4lbq88jWqUMrDEOE4kvA3YEW4d+zWONE5gCaNDnAz4sSZEf5xDvM3fYUasYft/Cc7Vr4dsRVAX/YZUCU=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 991b6ba3-e6aa-428c-fff4-08d81dde6e46
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2020 16:47:24.0988 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zkRFf7juSe6HHXByaag+UGm1GK+HM6WXuaDYED0wCaw+1wSerxp+Lb3dX2hcuSRWmi/yrPPvpQs7f9OaiQ8KGdjYhnYAk3S5dBzXRn/frvc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1793
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next,
 v7 3/5] ice: support to get the VSI mapping
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
> Haiyue Wang
> Sent: Tuesday, June 30, 2020 6:26 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Xing, Beilei <beilei.xing@intel.com>
> Subject: [Intel-wired-lan] [net-next, v7 3/5] ice: support to get the VSI
> mapping
> 
> The DCF needs the mapping information of the VF ID to logical hardware VSI
> ID, so that it can create the switch flow rules for other VFs.
> 
> Signed-off-by: Beilei Xing <beilei.xing@intel.com>
> Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 61 +++++++++++++++++++
>  include/linux/avf/virtchnl.h                  | 21 +++++++
>  2 files changed, 82 insertions(+)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
