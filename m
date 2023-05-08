Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B2886FB476
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 May 2023 17:55:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E67AE81E58;
	Mon,  8 May 2023 15:55:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E67AE81E58
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683561303;
	bh=EhZDlgG1I7EQD3XGn836r6FJyGd2oBMptqocM3DnHRI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=M+olpX/dxjXeFwq+nWUqnmfq2xPrsvackI27KGm5fwI19KhcJOx2AA//5buVQdtAN
	 f1EzUv8ve/Jr88D3aAmvylDuqTd4pKtCPvVmc9Q5snJQ08VClGPjXORTm4+Qdjgs6L
	 eY6/Jp7xFbPVcOqOrYsQZIjj40JAESC6p/q1xn0pNn8066JVUYfODXu4G3AhLWLqwF
	 61s+oSpWhGLKvwTj9Fr2Oe2Rp9HsuFS+6pYtrNcQG6mQ9Ml9mTST64/sn31Au+4ijO
	 G6YNDo1jG06mOzfcaoBuFbzPNh8q5a3RJW0k0a6RAuAzTuIgf1ZnbKC5kkxYUwJYQa
	 VQpcvN8CEbW3A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i3uuNFwKSTw3; Mon,  8 May 2023 15:55:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BE3BE81E6A;
	Mon,  8 May 2023 15:55:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BE3BE81E6A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EC2281BF360
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 May 2023 15:54:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CE2204148A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 May 2023 15:54:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CE2204148A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NYHsGMn4l1tX for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 May 2023 15:54:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E13E241B41
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E13E241B41
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 May 2023 15:54:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="415244382"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="415244382"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2023 08:54:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="768129280"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="768129280"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 08 May 2023 08:54:55 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 8 May 2023 08:54:55 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 8 May 2023 08:54:55 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 8 May 2023 08:54:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a+WVFd2zX3DXOFBvFunDvKUkCIP7yhidgbbUWaX3q4q7Zh1W815cON7VdF88Ut+Iuzzq2prQyTMq3M7Dczg48Ygeu9+wKGc/4jDtyers2r4gVuh0oSrikiIYH5IiPzUgT0XGhfCzo8SSxUTQGDO1Fx1MtEs6YmX95UBk1Hy2+/QL1QgGqly3utOEj4CnZt1WZA4bwYhgFUQ1ckGHfl5qPVVPyVpyv91JKz0Vntbgt/k//+8YaWpkJEdOaQhYyt4PbVu5KWetR4MjNlaF/uBq1eHLrAOlP2bGvbDY9WPSzfFvqFJ+tezRc8KXi9Kh/A4UDgSNeBPQzYjlQDmXIUSCyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yRBm3hd42zO5EuDgEb/L+qXx7JrGG3xbFEexEThhHp4=;
 b=At3ago8jiKsvFwDU7N5L4dqAUkDnN+CiAnv7PtBFVvSv7pOT8ytrpkngccAQm3LGX1NOQEUrMbZ0l/f5JG9iJn1QzmS2g9yh0CoxgBvLqX0CIYsSDNFM0Dq8j880WObi8limFAX5U2o9XBsVNHhIX0z++ofYqYER4JmHzUWeku7OGDjIZliLIQInmkjwr5Sd3aIjlvfK8QvYByVtuWmHYFPcL4uEnjfBTuSpgudadO2deXwOBa6taLI5arAcsoXe1SD2vnofcspSXCY7FsqxozKpunbRzzGYtkLZGHNVAKs/qAYzzhMvvXmO3HnamCxzUO8XIr0xSNk61FuN4uJXtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by BY1PR11MB8031.namprd11.prod.outlook.com (2603:10b6:a03:529::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.32; Mon, 8 May
 2023 15:54:52 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::a4e7:9fa1:19f7:6a41]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::a4e7:9fa1:19f7:6a41%7]) with mapi id 15.20.6363.026; Mon, 8 May 2023
 15:54:51 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Greenwalt, Paul" <paul.greenwalt@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net 2/3] ice: refactor PHY type to
 ethtool link mode
Thread-Index: AQHZeHEIIBQKpkHTp0G1ExN0QdTvsq9QmaLA
Date: Mon, 8 May 2023 15:54:51 +0000
Message-ID: <BL0PR11MB3122B9A7826EE4AEDBFDE9A6BD719@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230426185047.725910-1-paul.greenwalt@intel.com>
 <20230426185047.725910-2-paul.greenwalt@intel.com>
In-Reply-To: <20230426185047.725910-2-paul.greenwalt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|BY1PR11MB8031:EE_
x-ms-office365-filtering-correlation-id: c69bbe95-fe91-42e9-02b2-08db4fdc8f26
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UV1UCpMHAnowU4JCq/3yH2OhR1jBUqQBFVSf2lr+t7vkNyN1qMT/mU/GYXg+rN75KSLmECSdLKUykuGj6vJXkr5WUPJLca0I1giYFwWUqC82yyeUtiODvm/abw3bgH6psRuCxjxKNOnfcRgQJ5BFHEi+FBDlPPhZDkeKopnVHnts6InN3jUEGEm0q3RgGrcHQAc5YbVZRmw5mVwlSL0mqnrU0pZXd1o7iqDPEbq0t8Ugthe76CI1y+SLJmrOaPm+zl8p0XdjUqyC1Nw/I5y1tWJwXcDrDYLF/smxErOzBM0XTLZlskn2N6lG0e2XdaEFQ2lT7KhDmPz1QOD5XgY1FAWMegA4Y332Akm9z6uEpMZiCFMOmL0hnyjINXWx6Jo+j8EEwF7KBeuNRmYh/OmeC2Cx3Z3WyuO6UlJB94KJul6q0vpwyQPsB8GyoD0apUIsckUWRN2MSaU9FbsPJEOehFnh0kHFuul7oiX6Kzws0grTFXKBdLK6UOUD/I6JNmSuz3UIN2JpJJIpBe3XQ8Uh8lmvm3Y5NhhLw3sIPlwm+pR1VHyus7EWKA4Th7jusM4PKdImExk9aJnVZkvpfofVnfMhfuxCB8ObgVOjJIEkhRp3oWlXOfeQbP9YeMsQLLPv
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(136003)(396003)(366004)(39860400002)(346002)(451199021)(4744005)(2906002)(8676002)(8936002)(316002)(478600001)(64756008)(66476007)(5660300002)(66556008)(66446008)(41300700001)(110136005)(71200400001)(52536014)(76116006)(66946007)(7696005)(53546011)(26005)(6506007)(9686003)(186003)(82960400001)(55016003)(83380400001)(38070700005)(33656002)(38100700002)(86362001)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lDQjfnllFICmsFNj7yFmJMPK+pYu2GOIbrtYQhdT2NgGjPK0sk/QSUn9GlTc?=
 =?us-ascii?Q?vX9V0qQihVPIi6n5t8wHfxh/Uiyl5QogHAV+Q1/Pb4lyrLoC69wKF62hfCDC?=
 =?us-ascii?Q?vz261cGUiMEkE0LRBifFWSouUKQmbWW6UBwEF47+AujlPO1UezlDMp0SaUIQ?=
 =?us-ascii?Q?xFYRZMnQfYc3UVEX4mFUd+YdfrbodGv/Pj6nb4ALMXxpgcPntTcIH/jsvxgZ?=
 =?us-ascii?Q?zC0J1P62i20Q1hd0X54o1dT35yaPHo3d/w2xzeuzBr3xah9CmzUeUk67QSa4?=
 =?us-ascii?Q?AWv5c74uS7D1MpbEtelmsbobjmlQVQap5UNgd2tMCIBMIhWu1zdMVJTG5Qay?=
 =?us-ascii?Q?ztgSpYtLC6JEC8aeZpSZB62JDTvo0iXQ8c7MiHJNSPRofpTazTrOETOXWhWY?=
 =?us-ascii?Q?Gjl7uFAbzniKNhz5QHVhANxVEKDQX18HsiiI1qcT6Nd1Qt33ohsnHKVMhjGR?=
 =?us-ascii?Q?+9hrBamJD5KpC+eSzjpuWe7PEm8l5x6rB6PbOK0R5MB7yL8Y29qtikfEZaP4?=
 =?us-ascii?Q?pnjAzgMz2pl6eKQ5jwLIM4Kh8fGf+QJ0nz+Vsq5nC7i76GF9IcAcrXk1TYHT?=
 =?us-ascii?Q?KWAX3vpq0BR4awTxRMj8jFwBC8nIKpcFTQmEnYCqloGdBMUNVUbLbh/luCDs?=
 =?us-ascii?Q?ZNGMudM1S1iSR2M5qlY4Oax360ac7P0EN6Efi0d/YmBtzsdCC2Pj1XNm95FD?=
 =?us-ascii?Q?noBwCbm4mrjKLnU0sKNgfdDa1FL9X87zJIE5gVCfi7Ul0R7bmiVQJ5iDgZtn?=
 =?us-ascii?Q?GXKc08EgrUvQi+t7WGCA1sHhshcMYshnLN4iiZzG1qB0g8tUeQyDuYqD9pFJ?=
 =?us-ascii?Q?KeYVD2AxPYfN8Gj376zuVuLK1H3ON+vUFide+Aw0rn8InbZ1aikUXxLHfJb5?=
 =?us-ascii?Q?ftIfrEAOUPN09dGhnEeQUY02MQ0LunKrWAW4kiD0R6S6N8D54HFG8xa2khS2?=
 =?us-ascii?Q?KyujNQO0oZPR6qcQflUqakR5TQ4D6anp/N3Tk6sk2QYtKCjseqM6ihDQQO2c?=
 =?us-ascii?Q?0IJPQzn6NeUnXKnwszaa7TxxsogmSX93Kiqg+v2lP+opX6X2oqL7EixF5oa2?=
 =?us-ascii?Q?xDfOBWAuc3mCfh945w11/nd80bOIhZZMF76sz8q03Y/yolwzpkvWFSuXVhCX?=
 =?us-ascii?Q?e9LICWlV7SJFSbUjmEFCdy9+QmNdLeY1Pqs++GrR0C893GYsFLhra+3A2pMu?=
 =?us-ascii?Q?eJg9LGrh6Vm7hHbn5Y0KpLW/50WpQ8uvCy/KJxkrVEURzp77kIMfGm9PlVTX?=
 =?us-ascii?Q?48Wuxv1WlWvP4DPH31nOBKjmhwB9AjJUeae1hTrie+pG5D716PGEb0/jqBJX?=
 =?us-ascii?Q?3KUUGzk5V3vtGSRAZT6u1Z1OqgGwlG87sg0jrJ0kbKMmyIXc1kcX9l63AY0l?=
 =?us-ascii?Q?cdWv7EmL69YAYHTuNY/1Bw2tpoeIfAso3LxY1BRa+TkADdN8LQJOF0x42GyC?=
 =?us-ascii?Q?kyubLBSRrUBSjGzeLvo58m/SA9LO4Fygt76C+keCQCtbcroXSSOYp94LZWPs?=
 =?us-ascii?Q?lRsgtLXaTysMnDH+99Yl6Op9qeK2XauTuirDlxpsZR2JN/xDNWczyfQtHp+z?=
 =?us-ascii?Q?1+Ddw3pd29Uo+ayDzlfkYHWHikwYGuKgot+B0IR59n9752btoVx3Elyl0zzv?=
 =?us-ascii?Q?Tg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c69bbe95-fe91-42e9-02b2-08db4fdc8f26
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2023 15:54:51.5711 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ts2mPRJfNyTKd5ljD/W9WRcd8pQPANjE+A6hmT+aVOH79IyzlaPho24Stzdyo0GFXqeQc5wYZqSYAnhq5NDF6xhyBjVKxym1YDvQ47u9SsODf8aiZorGKJeNzWmkGxYo
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8031
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683561296; x=1715097296;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=B3JZFjJ9jIXvo8V2Oga8efEq2aE/Q3nFQXQchMIvBvU=;
 b=NlIahtIDi3iTXZkz2MRdHyeuxV7caJW5ds0PTmh5kybcSi6pq9xbCBgj
 43+NH9ISzR7MXDPXslHC5gd44DyWPqDO1KGRHEW49rz8je69+42zOOrHC
 sSbRTTUo/ntr5CEP9+Tc7JUsDsV/YH9kZKicVOHnHl7ePI1pPg7RWMKAO
 PxhFFEvnnBevkK2Q7c2DkdHu26eAca4P+xhZuEtIkZzcKbQa11xeb017+
 rgEBYyXem5h5k3XzbBaz0MT41dWIJNzjdZrVXfX1NobMX2RfnBxrdbYWG
 DWvinm+DaEemu8+W0UPzam9IwVwlkHArYqXcmjCeR3HUwHqb4a03cMd00
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NlIahtID
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net 2/3] ice: refactor PHY type to
 ethtool link mode
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Greenwalt, Paul
> Sent: Thursday, April 27, 2023 12:21 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net 2/3] ice: refactor PHY type to ethtool link mode
>
> Refactor ice_phy_type_to_ethtool to use phy_type_[low|high]_lkup table to map PHY type to AQ link speed and ethtool link mode. This removes complexity and simplifies future changes.
>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice.h         |   1 +
> drivers/net/ethernet/intel/ice/ice_ethtool.c | 309 +++----------------  drivers/net/ethernet/intel/ice/ice_ethtool.h | 105 +++++++
> 3 files changed, 141 insertions(+), 274 deletions(-)  create mode 100644 drivers/net/ethernet/intel/ice/ice_ethtool.h
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
