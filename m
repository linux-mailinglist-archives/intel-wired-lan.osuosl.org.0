Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 91EF046CEA5
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Dec 2021 09:06:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5496B83EFC;
	Wed,  8 Dec 2021 08:06:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nFnuZu_BWzo5; Wed,  8 Dec 2021 08:06:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 45DE383E42;
	Wed,  8 Dec 2021 08:06:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8DAF11BF365
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 08:06:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 895F041D85
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 08:06:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t6lTtzJvxP6E for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Dec 2021 08:06:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 81C7D41D82
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 08:06:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10191"; a="218464716"
X-IronPort-AV: E=Sophos;i="5.87,296,1631602800"; d="scan'208";a="218464716"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 00:06:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,296,1631602800"; d="scan'208";a="502958268"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 08 Dec 2021 00:06:43 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 8 Dec 2021 00:06:43 -0800
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 8 Dec 2021 00:06:42 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 8 Dec 2021 00:06:42 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 8 Dec 2021 00:06:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IBFvAw0inz8MgNG1cXwZJnMJnwGC0zj8n7nOiZ0vB2vOoUktAxmvipoQlFIcOnlATaLF5HTmnC6y7RqSPERU5gdgZCGNiZxVM/8b1ByT24L7QFJelx0h7J8Hmwa1gVp4B3QISIWwxtNJh40fFjx6hqWCe/PAKvhNTanmMDjqHRw8if/zSHqSyJ4KKCpV1827IkHIe8z0/BEmnO82GwvAvawDATKd8MTN8XOkpLKDpYQmh/Fbyj0cU/z7Y2b1E4VkuMTy9QrsR6qZx0XOwtBZTV1467nGit6BLQ6dwJtSg6ID0RKQJvQV+rqPO3etEcMlYeH1ScWAsrBmDukFTun+Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y9yCFcsUwduaNCuvRavHloMxGJNSXWgbU+rAS8OMs/0=;
 b=gCiiLyHh9klLDabXsnHtisaJQCkO7QZkjAJI0VYYYXJ/tFXAYIV71M6I/xk/sHh81cHERl1rOPRf60Rnz2PT3TKGhbR/D2mXMAUXoq+nS5RGaliil/wwMHcU8/EzAsC9qTofylzs7sj0a7uNkKrH/XvvAoRVqyxv4TNYCVFYZUyoBKK06dvmDxHRDn4/3+SsuFtC8/fawZdFybBv/e8RFc/TxuMW3C1wP6hkwlAbDMurST7pjwHrQtpuGzRyL0MfHh7wqH0d1hytfYlAcpyoXxz3ihz57ytlYcbSstPiRtVUv5dAF7wPZEomO0L+fyI/XgpLL659iNmHyfWVGVNoHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y9yCFcsUwduaNCuvRavHloMxGJNSXWgbU+rAS8OMs/0=;
 b=V+62pifdPfy2dvn3hgYheGOGShdVvIiIX0zN7xKCdSB4UOrHYEigQkLkCDJRrlSTnk3rGvxnhPLPVgTMzwsQIZJMLS9KkG6/jd+n96LXfluFnSCiTnd0pXpwoisFFQ0GKskMI2GiaNXwtciL1gJkN/mO0cjVlBYPII7mGEtEFmE=
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM8PR11MB5672.namprd11.prod.outlook.com (2603:10b6:8:26::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4778.12; Wed, 8 Dec 2021 08:06:41 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::3114:bfaa:f64d:684a]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::3114:bfaa:f64d:684a%4]) with mapi id 15.20.4778.012; Wed, 8 Dec 2021
 08:06:41 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 3/6] iavf: Add support
 VIRTCHNL_VF_OFFLOAD_VLAN_V2 during netdev config
Thread-Index: AQHX5X+7keZDPX2zB0CVzKmqVJxMdqwoSe7A
Date: Wed, 8 Dec 2021 08:06:41 +0000
Message-ID: <DM8PR11MB56218F18B6C3AF7206B6E429AB6F9@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20211130001604.22112-1-anthony.l.nguyen@intel.com>
 <20211130001604.22112-4-anthony.l.nguyen@intel.com>
In-Reply-To: <20211130001604.22112-4-anthony.l.nguyen@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d9a75e57-0533-40c8-8d22-08d9ba21aaea
x-ms-traffictypediagnostic: DM8PR11MB5672:EE_
x-microsoft-antispam-prvs: <DM8PR11MB56723D208A610B5A9417FEECAB6F9@DM8PR11MB5672.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iuoJkuUpdNCeXJqGqJcw1khQp3BJ8s2apeQKcLIaj+LP3lwMG/T6Qz+EenMiMOUtS1FQGtEC1VTlA2LmzfcJYL/+LuE0rVQL0fzrZ1cMqy9eSLEXXRX+/rIxye2No7Q3mIF95uBAk5rRmr48ZIIqlg+qDbwpYkPHJh1Y2XgIK3YJq6jqwl5+ONUcWEjt6znADLSeZMq4IBsG74PyklHy0HYKWx1oe5yY/N3Y1CToZbLNXbTerjAtq3m1YsqhFTJ4fK3Ib8UAIanHMxm1OjCHIgpCmNRx8bmF7dj0RS3b0L0RXgdNaVun5O1qYoGoXdTnK0mC3RT3Ht3TmBtvMVu34qpkm0yb+/s1d/hbpqVjDt8kN3H7R7AA3boFGb0H4EyYx9kwQmcRZ6pSTwF3Y8gbFOK5GrMGhmqytpab2UDgRpGSqSgb2xHxSY/AvZeEilP4C8XXPywu0ztKCeJECFSbLEHa+1+AWWGX5hfljjspyq4q0GKdiq9Tr6Nz1K/lfm8dfoesQ5Z4LvyXEQHacHS6MxXdR0hrU76fAn5ByGqHk08qXXMq08/oncEeueXXMyyYsGU/Py2oQwY4oRAsHzpB7JzA2ocGoobQHkq15luT4w5JKgQ8Q4OKgA4LLu/bYLHETu6js5RCB3w3LgslZPLlGeMLAyrET0sTKqOhxl+LMefW0RcYJ44keBKC5oZZ/jm9dzqWNyeOGDktBznHMzcDiA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(122000001)(66946007)(76116006)(9686003)(5660300002)(38100700002)(66476007)(52536014)(64756008)(66446008)(66556008)(8676002)(8936002)(71200400001)(508600001)(33656002)(55016003)(86362001)(83380400001)(38070700005)(316002)(82960400001)(186003)(2906002)(26005)(7696005)(6506007)(53546011)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Nl2dx1piiyePBJyrlxQN+RA4EUcPYGbJClri+Py7kviaAK2jr0pMq76SNVFJ?=
 =?us-ascii?Q?6fB5tiZVNws/sjeO3uzXPP/2EBZ7rGFiaPKQvSKeaeXFQk41FRUNyPw14w6Y?=
 =?us-ascii?Q?bitx5DI0ZTBAyV533/zAcjpa2EwzqLmdp/KyzkwchS+7RvLAd2oVmRbgiRY2?=
 =?us-ascii?Q?GIfqV/ZSQ3C7s25OQtBtTkXFXXGmUn8iNNpjtpWEcjlDL5SElTQIkBBDuFm7?=
 =?us-ascii?Q?Rg3RR3XTBVnCq4XUfdyAdMyqdryEy7OiSpt8+gGUTXENdNz7K7XVV8PnxIA9?=
 =?us-ascii?Q?8w90IMb2mGG5qP4OE/i2crILWdMz2cGqdRQR8xg2ynpjKa/xUPUN0K6Tu7l3?=
 =?us-ascii?Q?mA/NUMj0yEKFen6a+ov7d/XYKzxm2gA4dTZ0sB1mNnkXhaDDtL2MRtJxVJTF?=
 =?us-ascii?Q?B6va5N4o2x7Bm1RnXt6FTd7dycB5iIxNv0QlF1sNFY167umpOSdzVwUCRIYG?=
 =?us-ascii?Q?HRYiJsZRsfaAbLNVOtdnypOVa7/WTTFD5B5f+k9qdmuL9i4TvB6KCNOv4asx?=
 =?us-ascii?Q?G05/cBkceNroS/ypkP7Uy6Bv5yzl428ulva2gRye9AkK723fvJV2pvl0tum5?=
 =?us-ascii?Q?Z008pwDE0cUTHJm9NNR5j4ZSTwjAQKOy0JZbgggFMli+RxsXSgrvVrSyz7xk?=
 =?us-ascii?Q?x8Bj6NvaU9f0Zq+IKAJqDUJOt5QZYp2AnPyUsgDdDvZrhTBcVL/2IpnhKCFc?=
 =?us-ascii?Q?jONnFR8GgA/HH3LK5AvF3QApVerqckPaAIQPJrdk45ilJJ4Lcia/mSk9Nh9V?=
 =?us-ascii?Q?8gwJM4LXjiteWwa2WBVFHgqpQ34+ObJyb4BOxm2ir/MREGT7zk4TQ/I+Es7t?=
 =?us-ascii?Q?En+j9Mi6AIeCQe1HscS6vj5Puo9PhBrixEGdOcIUJDw7NJHJHJD3qOzLtrqN?=
 =?us-ascii?Q?/oOfIScOs3GhSKdGk35cBtau5u+t1I4MDyQ/xfSpsJiIpnnetC/CNkzw54FG?=
 =?us-ascii?Q?89B5RE+NxOu5dG7srgCvuIE13CbNe4K7bX2vCnHzik1bEZRg0+fQmh7up/Zi?=
 =?us-ascii?Q?U6fnkvbvB6qqF8yslhVcOW/ZtRC/b+/lrgag+2JlwAdhSJXEfBKUmcobm5yp?=
 =?us-ascii?Q?MfzLPl0NEDb/4jH5AaWWd9yrfKkKVJgmFvvT/p6rXgIeBDOP8iCG9tf+05TC?=
 =?us-ascii?Q?U3BcnJ3q3qbubyNk8f8Kt7ZzLVF620T49zvscrtKTRO+PGObbTmQ4+gmTJZn?=
 =?us-ascii?Q?TEA1YuU6EBR0ZpbINZtVqJME0HPi7JA1aWqLB71THzNKxTwhTvU2HHEIi8F/?=
 =?us-ascii?Q?A3NVW8+gVlOzHHxXHRS5zQrDuCwXqzW/fjpxnBED+2xPpm6ZdHnbwm3gxbNS?=
 =?us-ascii?Q?Lbnh/oE16lf+yUKoYlDspy8+KPWlj+CDTc5Mc/CHv8IXoNtdMxAD/2fwMOQ4?=
 =?us-ascii?Q?EXonpPEjoTLhCZxnOEuZ5S+y4Y1ANiyNqh60z0EoXppvjNnOHXAIEcKSySCg?=
 =?us-ascii?Q?h42SKkpnylP5mZKpFdXKcf4wQPIUdl8y55YdGL6n3EW7AZgo81Oxj8vdNLIv?=
 =?us-ascii?Q?cnF8ugT0OCMBPtG8LZOXDK9IFSdlw816mgvnjrNEg1Q6+Fo93PLQeKmSuHul?=
 =?us-ascii?Q?AkuNKan7SaNAiuxMUbgXPZuJmwl/Y77p7m8tAGeXwn06Lw4mCFebmUrcNNyh?=
 =?us-ascii?Q?0h2V17XylWBddo/su+TAv2l2flmi9mCkAzh+iOdboovMi+xssTSAQBvrRBZY?=
 =?us-ascii?Q?t6p2Uw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d9a75e57-0533-40c8-8d22-08d9ba21aaea
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2021 08:06:41.2964 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: H9AvPXx1S0WYjao8odZirOVi4fEgKpbnE3D++TO9hZ5WNFP1Vhy5hn+w4zG+E5hx5vNrg7ve9qfi6lKBzhGq87HN0Ta7BdvWX8IORYFXD84=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5672
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 3/6] iavf: Add support
 VIRTCHNL_VF_OFFLOAD_VLAN_V2 during netdev config
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
> Tony Nguyen
> Sent: wtorek, 30 listopada 2021 01:16
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v2 3/6] iavf: Add support
> VIRTCHNL_VF_OFFLOAD_VLAN_V2 during netdev config
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Based on VIRTCHNL_VF_OFFLOAD_VLAN_V2, the VF can now support more
> VLAN capabilities (i.e. 802.1AD offloads and filtering). In order to
> communicate these capabilities to the netdev layer, the VF needs to parse its
> VLAN capabilities based on whether it was able to negotiation
> VIRTCHNL_VF_OFFLOAD_VLAN or VIRTCHNL_VF_OFFLOAD_VLAN_V2 or
> neither of these.
> 
> In order to support this, add the following functionality:
> 
> iavf_get_netdev_vlan_hw_features() - This is used to determine the VLAN
> features that the underlying hardware supports and that can be toggled
> off/on based on the negotiated capabiltiies. For example, if
> VIRTCHNL_VF_OFFLOAD_VLAN_V2 was negotiated, then any capability
> marked with VIRTCHNL_VLAN_TOGGLE can be toggled on/off by the VF. If
> VIRTCHNL_VF_OFFLOAD_VLAN was negotiated, then only VLAN insertion
> and/or stripping can be toggled on/off.
> 
> iavf_get_netdev_vlan_features() - This is used to determine the VLAN
> features that the underlying hardware supports and that should be enabled
> by default. For example, if VIRTHCNL_VF_OFFLOAD_VLAN_V2 was
> negotiated, then any supported capability that has its ethertype_init filed set
> should be enabled by default. If VIRTCHNL_VF_OFFLOAD_VLAN was
> negotiated, then filtering, stripping, and insertion should be enabled by
> default.
> 
> Also, refactor iavf_fix_features() to take into account the new capabilities. To
> do this, query all the supported features (enabled by default and toggleable)
> and make sure the requested change is supported.
> If VIRTCHNL_VF_OFFLOAD_VLAN_V2 is successfully negotiated, there is no
> need to check VIRTCHNL_VLAN_TOGGLE here because the driver already
> told the netdev layer which features can be toggled via netdev-
> >hw_features during iavf_process_config(), so only those features will be
> requested to change.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h        |  17 +-
>  drivers/net/ethernet/intel/iavf/iavf_main.c   | 279 ++++++++++++++++--
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 251 +++++++++++-----
>  3 files changed, 453 insertions(+), 94 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index edb139834437..5fb6ebf9a760 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -55,7 +55,8 @@ enum iavf_vsi_state_t {  struct iavf_vsi {

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
