Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B22FC64A0D1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Dec 2022 14:31:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4413B405EF;
	Mon, 12 Dec 2022 13:31:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4413B405EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670851885;
	bh=mTAs/BHCK42AmT9/QcW1PzxRoeIIAsXMeKo4AvCMpvA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Rv9VPJH4YHJwFspNszSxdfnX7PavbP4dhtrUAWq59+oT+wYOtYdK3+5YTVc4N7xFr
	 eiU12iV2eQpJ97cyXZpBUH7Z58inUCb8TiVdWsQhGODj1bRMHN08GShi2DyVUXzgmC
	 qHaNXeiuliEhzt4pTeZlxVM2QzNtzppMmyZtZcnGqKYi8QnHdtV3OGcvTmeOoVsVJg
	 W+OymKq21Qljh247kBLTT3JCnoUFWFt/vN98rrdZgILOLAREmWCu1ejJLO76N9cdWF
	 beEi8zWk2byvqM6eqCFlxjhg5OCswfLQa4jsd62+M+2edMT5doOWo0DbOBrnjVtco7
	 WiqYVYBrmYoLg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8CwMUxI4PZ2T; Mon, 12 Dec 2022 13:31:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3CC21405E3;
	Mon, 12 Dec 2022 13:31:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3CC21405E3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8110E1BF389
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 13:31:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5776080C93
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 13:31:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5776080C93
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F27uoTPNb0rf for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Dec 2022 13:31:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8385D80C60
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8385D80C60
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 13:31:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="382160461"
X-IronPort-AV: E=Sophos;i="5.96,238,1665471600"; d="scan'208";a="382160461"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 05:31:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="790492550"
X-IronPort-AV: E=Sophos;i="5.96,238,1665471600"; d="scan'208";a="790492550"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP; 12 Dec 2022 05:31:17 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 12 Dec 2022 05:31:16 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 12 Dec 2022 05:31:16 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 12 Dec 2022 05:31:16 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 12 Dec 2022 05:31:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KSltx78lzmk7sqz/ns4mWcWYFDdRjeHpH6Cf3wsV6yHcnAE1FQeJdcisdHYoxL4pFXZUpkhBgjwuBAPPVaf3MBZuvUn6/4xbWGSZQn6TXXB4StUqh8TozUK4mmZ4+G+M7qFRSXRGgC7vlplIOmv7xtfhhV3HeEXAhC9MmboLnLvpFV5e97A6MA5A2RfMhoXcQfYAFn0IQFO6rSqYpW9HGhD5z7pWgQE45Uw31IKPaR5Bg6gO13y1OIE8i+P/NdNoU860zbzMx+1ahxydhetQw4VssQ8eozcRQH05RhJbFUGsf6EuD0IkYYVnNKF8xRPB1hFAdNxIA4Y+uxOIYO6FPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ymmy0syuDcEJivHi27XKmr7KWFgNc3l86v0w2YlFWJI=;
 b=N+Y+36VDBI/LMkDiQLmDeFV0oQxG8xAne/4HXB4ZVAAqfYtzVwvRqXxg4OQqzmCprbZ7xKj3Sa2CjR+4fYI/+dvVyXioLxPJtr4kYByTeDHbaL5jBN/BgK+v1BUPkD0nWnBBGhfDsEeXi7Wg6WvZy/2oHidTgERC0pRd1tbyfu5rDlAHUNcUDmt9r3AR/C/3y9d9sdOLjh6D1wkDBnc1O7T6s1FJfwiIm0j7qT4j+8EvHcHaEQo63h7lvbIO+hzR+iAPKtUS5v/9ILyHn+Sib22rQHHDkadWYTCr9vaFPt+DtZErwF4625Ftgsq/AizQc8Q66/6vxJUGVpHN6WkEQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN2PR11MB4045.namprd11.prod.outlook.com (2603:10b6:208:135::27)
 by DM4PR11MB7352.namprd11.prod.outlook.com (2603:10b6:8:103::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Mon, 12 Dec
 2022 13:31:07 +0000
Received: from MN2PR11MB4045.namprd11.prod.outlook.com
 ([fe80::39f1:b5ed:24d2:fa46]) by MN2PR11MB4045.namprd11.prod.outlook.com
 ([fe80::39f1:b5ed:24d2:fa46%6]) with mapi id 15.20.5880.019; Mon, 12 Dec 2022
 13:31:07 +0000
From: "Rout, ChandanX" <chandanx.rout@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH intel-net] ice: xsk: do not use
 xdp_return_frame() on tx_buf->raw_buf
Thread-Index: AQHZBBW+KIGY5txjtkCr0WXxPHf3XK5qUyqA
Date: Mon, 12 Dec 2022 13:31:07 +0000
Message-ID: <MN2PR11MB4045CEA69F84E8BE0A9C0D27EAE29@MN2PR11MB4045.namprd11.prod.outlook.com>
References: <20221129171125.4092238-1-maciej.fijalkowski@intel.com>
In-Reply-To: <20221129171125.4092238-1-maciej.fijalkowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR11MB4045:EE_|DM4PR11MB7352:EE_
x-ms-office365-filtering-correlation-id: da3cd534-1c2a-4f32-7073-08dadc451fd2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Qe4MGt3DainFLlf0L9xNLHxewAAJWoDojlFex/ZLoujSlhIvzJCKG7J8ZyiPd5YvtzV6+8mDRaoQsMxO1zr2jWGGwVrE9ULStEXpgAbXlqD+cHBYoOkb+YHKe5zv/MRxish8Wxu6XaVf8v+Sld6Y9/KZEfZQ4aWOR0khw+oyzzMU+9xLOzC0YbRYrAj0hs1mqkLxOfrZNc7riQDrHelTUklJ15P1El9QqDu6B+gaQC3HPA+1zdqe8cgYvpf7ELVGIJawaD6GkUzEJLj6a5Ifk3L4lKa3nPyMB9HH/54fRB1aUbbo09yz4jcpn9ti9NH85NRYAbz166sh5hXb2CZpdWZvo6gbuD6UUSFio8H8MxVi4QnfInq86zD2oYJoDHlY8fjfDsnjmOyrtEA4HoxshXdxv44e1bURULtpYPwqPwaeNEZUntxmP1m5+GAnxbvAJOz2N6Hh7Jr4oYvirYBhcGwPd6tc14o78JGGZ22zHnvhpOWrRi0jgNeNAApyoXNeAd4j27/5JElrBaa6rEGa3trUsdghvg0GPJEaVB2jBymReCiLGNpwN20B9jKqgSVLXi/AQgtOwupG1cDH59+giKuEwUUD8UPY7r1QybLY/tpAf8mT4h5Hb5vMc6UQrzGbDngbXwaDhrQm/uN2sbjNuW9u0BnZaCkukj1QR8aPYxaTNyokHaQiomanB4FHXtAek9FWv9ELkl13wKnX9CP6Qg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4045.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(136003)(376002)(39860400002)(346002)(366004)(451199015)(2906002)(82960400001)(38100700002)(55016003)(122000001)(26005)(6506007)(86362001)(107886003)(9686003)(7696005)(41300700001)(76116006)(66556008)(4326008)(8936002)(54906003)(6916009)(5660300002)(52536014)(316002)(64756008)(8676002)(38070700005)(66446008)(66476007)(66946007)(478600001)(71200400001)(186003)(83380400001)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7WfISEZtXimEP73VxZ9oW+TY324u3IF4DDch/zOH9C4ROyFIh1y0heurP7Yb?=
 =?us-ascii?Q?r5IN8+nqaXqbfrbtOw3DCEhNHLc3zoTlk15q6p5970eeKbN3bgb0DDFF0vyH?=
 =?us-ascii?Q?NEf1GnFkXFcMn8sSvjxgr0fohBfjzvJ1bkZkw2vWJyNOdYPoiYUTKE9HHQYJ?=
 =?us-ascii?Q?RIZTlLP4C2KkNf684FRWsf4c905IFnmZrAE/mpbDWlVHfTOCE+kathqFryMS?=
 =?us-ascii?Q?brXe9PPRYCPtDvqH87MUfo/CGlIn+PuYaZ/wHCKNrh5kXUhtdhCwkFbxUhjK?=
 =?us-ascii?Q?ZxG7aiKCEkuXQVWRyvIVgcWDXwbPPeDlnKQndnJredtw/vuYWQOndynocSSp?=
 =?us-ascii?Q?oaOxzNpW0c+eoIWENMW673S5q43W3YuTCJSFUio70xPJsl/qHVfo/ySgTmyM?=
 =?us-ascii?Q?y1ENP5HWYka/T5p9BJSJMPXVA1l9wA40XkzqJmK8m3IqUc6uiakDELtNk9Vg?=
 =?us-ascii?Q?1PrDTaXoz35KYxvliyeBoX61CbQOHKse8Fr+DGIXF3deXK75lgrlGCMQ7/xB?=
 =?us-ascii?Q?heEKCrwv7DkhGCt/1SOHsM8vCNXYUTssO0SJmKJywK6YKKcAd8d8sBfMqt1m?=
 =?us-ascii?Q?mxzNTjjYNWIvW/c1YpOugcDgS+KR12LiZqi+M5vbKpOuc94KHmnWxfZCioKv?=
 =?us-ascii?Q?H2e15G/Z9CJ/1gVPNb/oGOLnvS1k6OULq7GxrRt75jAJKmdX8ZRNEA3WPuiD?=
 =?us-ascii?Q?es9U+BKZ0RXLUo2E0yFc0hfLHYnmajkOtpC4cGeh2weFbde2WICaPNphMvwJ?=
 =?us-ascii?Q?oSVHid1zq2epJThkTHg9BUyqXyrrO2NyVtgxl2gNnt6h5+vP59cYUb00aldz?=
 =?us-ascii?Q?dL2kDpbXVEfcN8Y+wj1zllsjQXDu4RbP4uOoX6e8uV/DXxhoDZxnE+9Zuj87?=
 =?us-ascii?Q?61RdhXdh8SSgsJGLLshaxKVp3rUnJTjqG+o0HnxDSR9QfHIlbHpKppd/9jY9?=
 =?us-ascii?Q?CKmA3yB8csKCnpJqSj8BS4JgVv9D5VsfhoOO1icaY/xHJDZdldI0eIPRtwNC?=
 =?us-ascii?Q?paMp/UaGztgp0yia2SelQSlIC0uWnn6ITV3jwIRyBm9uaTw9xI1OLvVjhl0q?=
 =?us-ascii?Q?v+VZ1KwjwkHuohMrAxnVsXAoLgq+ldFddY9BQTd3Ye+4tzIruGJALtk9p225?=
 =?us-ascii?Q?p3EaVUWhh1Vhh+rybvfEG372BwBauMs0HKmZCS1Wk4iYyGqYrjbm/UWl8DJv?=
 =?us-ascii?Q?lTJRMhksyj1MDY0jvf1Ao0l4W95Qbmo0yO6w6X6M2vO+cXYL8LqI3kkBrEWq?=
 =?us-ascii?Q?I7hmI7taTHxywmCdfMxMpkd4xeE7S4Daj/uKvJG8Jdzc84rwrAlJ797pC4mW?=
 =?us-ascii?Q?gf1st+/IPs3FpVrKsNcxAv1cfowJH1VVNjOF4UnvzAxll0K//CtSsNelTbYv?=
 =?us-ascii?Q?mU1Ng31iqFpELziUGjrb+CpdfyMCJwhajQH9eUccSGZiRWjuHi5yDMKDK/Nc?=
 =?us-ascii?Q?9BoNDx4s+l+QYelPmqoI1hLYfnjZRrMhhG1fIR2FCaANNFZ/DLK+A7PkMitw?=
 =?us-ascii?Q?T6ThezsyuSqdLigIWz6KGIPXWmyftAkOarsAv9ySMR+W5gLvU8LlwvKk37JH?=
 =?us-ascii?Q?GwCTgXP3vBaLljTu+LOC+yQhKsBCkJwIJ/Vbcwkc?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4045.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da3cd534-1c2a-4f32-7073-08dadc451fd2
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2022 13:31:07.0616 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: P1mk99JUcSv/LgGS8PIsQUwdIq1Yo4LAu9oEdQ9+YaCCmak0x39qfZ56tMVs2gJleSA9zQh6L+LZTZYBByApLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7352
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670851878; x=1702387878;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ymmy0syuDcEJivHi27XKmr7KWFgNc3l86v0w2YlFWJI=;
 b=L9gkc3hfjGE0jJa0LAG8A8VlAF742xckj+hYDGBT2L84uVqbV8wDBaTP
 rkpa5TW8eSSFBaTLMtewjeG9L1IH5IH6pVYT4GDperB8FYncmMHPLznnn
 8Tgi1msigTIy7O+gmgSyJum/an4bXcwQG6wGmwoDTIPpNHgnMDTpZVQEu
 XAOawUvn+jNkalLArs3NJEannA67MSAf/tI1bBTCcVxjW1kG+mBctckyb
 HmeRqDMy/P/iEA1ElKUSPcLQKmm4D2G17dg7cp3a00ZoPBIuCsv6v1MOk
 EW8HrhT2PCepkT/Q1n0uCQiYLJ3fpKVKK5uT9Kk15TKBaZhw2W5d3iRN4
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L9gkc3hf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH intel-net] ice: xsk: do not use
 xdp_return_frame() on tx_buf->raw_buf
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
Cc: "Nagraj, Shravan" <shravan.nagraj@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Fijalkowski, Maciej
>Sent: 29 November 2022 22:41
>To: intel-wired-lan@lists.osuosl.org
>Cc: Cowley, Robin <robin.cowley@thehutgroup.com>;
>netdev@vger.kernel.org; bpf@vger.kernel.org; Karlsson, Magnus
><magnus.karlsson@intel.com>
>Subject: [Intel-wired-lan] [PATCH intel-net] ice: xsk: do not use
>xdp_return_frame() on tx_buf->raw_buf
>
>Previously ice XDP xmit routine was changed in a way that it avoids xdp_buff-
>>xdp_frame conversion as it is simply not needed for handling XDP_TX action
>and what is more it saves us CPU cycles. This routine is re-used on ZC driver to
>handle XDP_TX action.
>
>Although for XDP_TX on Rx ZC xdp_buff that comes from xsk_buff_pool is
>converted to xdp_frame, xdp_frame itself is not stored inside ice_tx_buf, we
>only store raw data pointer. Casting this pointer to xdp_frame and calling
>against it xdp_return_frame in
>ice_clean_xdp_tx_buf() results in undefined behavior.
>
>To fix this, simply call page_frag_free() on tx_buf->raw_buf.
>Later intention is to remove the buff->frame conversion in order to simplify
>the codebase and improve XDP_TX performance on ZC.
>
>Fixes: 126cdfe1007a ("ice: xsk: Improve AF_XDP ZC Tx and use batching API")
>Reported-and-tested-by: Robin Cowley <robin.cowley@thehutgroup.com>
>Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_xsk.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>

Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
