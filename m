Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC5753C5CD
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Jun 2022 09:14:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DD3BD83F7E;
	Fri,  3 Jun 2022 07:14:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sVP7JjQdMYM5; Fri,  3 Jun 2022 07:14:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DBE4283F77;
	Fri,  3 Jun 2022 07:14:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4181C1BF30B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jun 2022 07:14:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2E4C240B84
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jun 2022 07:14:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gGKNNu-yIAQ3 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Jun 2022 07:14:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C6DA34019C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jun 2022 07:14:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654240458; x=1685776458;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tpip0VwiSDAEJJclrug9wehiLqPdIEw1Ri7+Rgrjkk4=;
 b=Z0B39ysfvjhE7qckimMmdyP6D08Ux3EvBSdkItuvRmiMkYD/WxJPq8Je
 NfeHB1sDx6qnxWysJH0tGAS7/tzAJ5g5dqTu4iQm6UIQl13JcbYciWE4z
 VzzN0f9VAQhYAEJC1f8OOdXA9daz4dHa1PlNWyjvnW/3W+lPABhZdvaI3
 cNVotmbv29VgaeBQFiP+bn+MkQgQXuLLZOh6Ljq3iT1ShGMKmN792/rrO
 blxnY4lzkJzCTy/F0C2mAmJf63G8yuH0CL2EA5Gne3S/kbYeZHUfxAitD
 P2qJB7gRjGjH21U+Z1l5nasIjaMyW4MH24AULfFEYlz2InFlMs3Es9iYu A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10366"; a="263832259"
X-IronPort-AV: E=Sophos;i="5.91,273,1647327600"; d="scan'208";a="263832259"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 00:14:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,273,1647327600"; d="scan'208";a="530908308"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga003.jf.intel.com with ESMTP; 03 Jun 2022 00:14:17 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 3 Jun 2022 00:14:16 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 3 Jun 2022 00:14:16 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 3 Jun 2022 00:14:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YGdAyVJCEKVXsi9rkJjkq5mgHuEsuGFGfMh9gr9yBltp7Krcg+JLKxNz8Mpc0TX1OOAugVT3W433dIsSgoJlAXOEaEc002M0RPj94j/nYpCImXra6MnpNZCM5N8smCOFdaolc/Cw2/wrbM1jH65tqvysOgdkYx6aY3Pv14rNW5AgJHpU5Ouoji7CrL3KvAweQvO+p8pSidN5rm0mR5z5w6U5Hznn3MFe1DvdY9NdqmOiqEQ7/Odkxk/tpwnOWKsHmdOZKszQjjXNr7dbUCgognw0mvkbV3fJAX+xUY+Iub3sXynlz7T13wneFeKNr03VJKgoRW4ngxONF388qzWS3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/0I3ruZly01RX9HkfvPs4TBl8jvSIQT6QQNi2mLedVM=;
 b=f+jsM5SHQCeCIQPFVOSQEvMy2A87c2IaFMy7qO7dp0hzKoW104k8VTLodeZ0DQ7jklwfsh8r/AiBUOi0tlhUTIgt7SDWsub/PXWH2NZQ9L/nftwHVAjRxyco1CkdMi902VjovQvon/7f/bBZGFhwXtRRWoTq8109RqgO6Kci3sRj1KsPPHzXraOcJzFSo/lBvQG4Oe9MHPHbCnVrwriwSkZliXCVVr7j1nmUu48hEXrsLokc3ul69GP8PWsDdzxlEszRcIUiczd0EzsvzBYCOW0tzT0U+5OCNUSeKWNNh7pLR26yfXfH2CXsW6lpNeKKYLWyKfltg5AUGvA/Bfnncw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5144.namprd11.prod.outlook.com (2603:10b6:510:3e::20)
 by MW4PR11MB5892.namprd11.prod.outlook.com (2603:10b6:303:16a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5314.12; Fri, 3 Jun
 2022 07:14:13 +0000
Received: from PH0PR11MB5144.namprd11.prod.outlook.com
 ([fe80::16b:609c:5ca2:58]) by PH0PR11MB5144.namprd11.prod.outlook.com
 ([fe80::16b:609c:5ca2:58%6]) with mapi id 15.20.5314.016; Fri, 3 Jun 2022
 07:14:10 +0000
From: "Kuruvinakunnel, George" <george.kuruvinakunnel@intel.com>
To: Lorenzo Bianconi <lorenzo@kernel.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] i40e: add xdp frags support
 to ndo_xdp_xmit
Thread-Index: AQHYYKAvjp8ceVK7N0+h6dwD8F4ze608etnA
Date: Fri, 3 Jun 2022 07:14:09 +0000
Message-ID: <PH0PR11MB51448A6FF8C74C83EDDFA372E2A19@PH0PR11MB5144.namprd11.prod.outlook.com>
References: <c4e15c421c5579da7bfc77512e8d40b6a76beae1.1651769002.git.lorenzo@kernel.org>
In-Reply-To: <c4e15c421c5579da7bfc77512e8d40b6a76beae1.1651769002.git.lorenzo@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3c5844ef-784b-42e1-e7a3-08da4530a7da
x-ms-traffictypediagnostic: MW4PR11MB5892:EE_
x-microsoft-antispam-prvs: <MW4PR11MB5892B87212AEDFD33B31D996E2A19@MW4PR11MB5892.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: O4oqv1RXWwXjpq7YcdtXR1MyDmFgzpoBfmaQIyru36BCRJCylqpxwlObZ26Hlic6kTzeUwN57F+YWGorJqdCOpsKEQ6eT9DE49PbncHdYpxGMlVUZO2bsFMdCxWnobbQS40lTb9kfZm4rI6b44cYhQjMhXzZlER8i2M83qYAdwqSlz4sKbzF0mTO1Hd7E4IV7wM2V+hx0wUHojmQed4eqZCQqRawpKR5+7KZWRYA4m6SMlwC5dJ5RceE/gxGkTnX3Cfd3+9CcMkfFILl6+H8jPViffojcWW4cWtAVVOWYkgCoMpBrMzUde0ElvMx/xetB8L9F04ASGKaIU4+UJ76bfDRagEMTHZxWe7LSlQGRF8kyt8VVdxPimr5IYk2s/cQed/upEpYm/3Oh4nR0hT6DfoBGWVDVKzUL02wLm0RxX/42ga48tTvwayz3RCA9N5t3QMX0KmzLaL++MmQvNHvZGBcUDa52exf1dpyFWfFJdEU2EFSfA7y24Pm4UmIa6qMrWvbYsUy9R1xZjJNEEG1utE3RRtbn+fVq+BG9RkjM/B3YGDbJjwK1vnStrrSkSCRazcn5A4UQvG8ApbcuLCp7XYiE4enXC1/NvaCxScNz/1dWFxdzwiDAiO1XbP8j3oIYhzqsLELOce36B7FnPbEAfawxgXi1Gey330CbMmSWaDyjeof7cQQaHKHMqIZV1kRtqpKXhnrqLlKz7v03D7TIQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5144.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(66476007)(76116006)(66946007)(6506007)(8936002)(4326008)(52536014)(8676002)(71200400001)(53546011)(55016003)(2906002)(7416002)(33656002)(508600001)(66556008)(110136005)(54906003)(5660300002)(316002)(86362001)(4744005)(64756008)(66446008)(186003)(38070700005)(122000001)(107886003)(38100700002)(82960400001)(83380400001)(26005)(9686003)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xuH1BHRMIpKjCUfzkM7oA65IU9hUig+c/6ijsVJx6FnD2/ZS/784eJLeXqrt?=
 =?us-ascii?Q?n6eToltFFMWFGjHlHXDTkr00lXxwDhP57MKVTbIAE6/g9pyjdZLRtxvqVG+c?=
 =?us-ascii?Q?sVRtGYc3b69S4qLZUPJ2J6IxUGz3kmvvfeecti63CeDGpVhUW8BjWg3yOgeo?=
 =?us-ascii?Q?/WKtaq0bDeu4pihnULYP1xmaKACxzHMzo2qLE9W4dM0ChWtPHlziHecE11yj?=
 =?us-ascii?Q?lpNnGUohek/2IMYTCQDWA4vo1ahPLluID5Hecaj+Q/YX235WHv8Kp7Q1CbfH?=
 =?us-ascii?Q?Kw+Pqc8Zn5pXceoj3DQJym/mNzAChX1PSZfyqfNElegap4veKpvBRkT5R6hM?=
 =?us-ascii?Q?ME1yD+QZdsdkJ2984JJcYGnpQsm+yEzjrNhgvUml3UK1p2HdI0lHfjUMFVY0?=
 =?us-ascii?Q?65UhF17Vp6wI8U7oCXNM/wHXa6zQsVvUU46HeabLyZIWaAGLpivL59WY1Kz0?=
 =?us-ascii?Q?rqAN5bFWccPBI4jjZXhc4OZt/PITvWEQqLODbBhyK00jw6ubVl4cy+kowbxW?=
 =?us-ascii?Q?Aa+k0x2AaMp3yUe4yfNLW1KxToci9fHRU2ZwtKGE73GcaRAVhxLHG1oZNorF?=
 =?us-ascii?Q?e3JWmCV9SYCc3P0K/iSeXWT3SBU5AlffkRNgYvPK0C5BchPTg++DH7eMg0ua?=
 =?us-ascii?Q?ud8dBUrBsF31qmK83Jn/O1fSwx3pQccillD7VWMQ4Ym61JdW/gdknflj+wK1?=
 =?us-ascii?Q?JIGrbm/gS5SK3QLbD3r7zjhDAD0OpdwQj3dBOjZk/2SO5RkQUVCEMtJkMqpB?=
 =?us-ascii?Q?H+7asScfyNn6JM9k8eb4aLv+KRhRyySE83kk0E0pR3IzYPkjx0VdWbasSoR+?=
 =?us-ascii?Q?jWy80lxUPWj54GRvdjzieB0/evhp2PI05uYnS/Urp64KNy20ZNZuIuDYodHk?=
 =?us-ascii?Q?ZioqmO71lQSm/4W2+OxR4VQZ/QZXyzOwmx+dFVvOoXOEaRzFPHs8nXaDsHqP?=
 =?us-ascii?Q?bjthGus46YLMCj1nfZEg5t7vFwXDYplSIMKHaXXPdmT0sqbHHerWegzcuqc+?=
 =?us-ascii?Q?pWFM6DNDr2DBj0/GGMJ/X55igaJSvIfHPwU3b9J4oEsBE7EL587eJryLAhRC?=
 =?us-ascii?Q?ZvrPrmYYfPcowq7/MEPsar1GDm8ArJYnHHxGpbCa7+RIJEI09AN3J6UxJ1rk?=
 =?us-ascii?Q?Js0W+EtO69mKbueEwF2fO0RWuWao5mbNtlU3ET3Ds2WuKcUyBI9MXxBeGGCe?=
 =?us-ascii?Q?c4D7NaUpmRHsQ4hUZV3WrWrmS1zC7v7hYC1rDQG2dms5V1tbvZ5geFzsAdxK?=
 =?us-ascii?Q?K4ZbSuN2ztAivegOTBDo3aNnCZwO6HOT764379E5ovMkMVVuk5ypWSOKpABZ?=
 =?us-ascii?Q?SDKJiLBzUYaq0c5aicz/NsASWKbp9d0T3s4TLfHdKQZT3x/72f866XGlNhbs?=
 =?us-ascii?Q?4TGYLzxk99l0TvHsyv9P7a6UOFqKAmvAFSWFZLkrufSC0xJ+1AGyLqIuGX3f?=
 =?us-ascii?Q?hpfISMGCDvOj+s94u4GARUR3sn7Mb/wLnlcP2/2xgGIYP05vRCMikvWOaco9?=
 =?us-ascii?Q?Kvk54w1X38CU9Pbd5cFG9ZQFw+SRzZNB0YRSby1hYhGnUlI8IJBBAg5a5bck?=
 =?us-ascii?Q?rRQkNocKdUnpCeYJ2LQvURrek1ytppbWxgRo1yXAitZ8qRio7vP1/Xv4MlRy?=
 =?us-ascii?Q?5xLMP8dbwk3UMyJAsrFXqiLtg68jfMR1mBna4uIDLdi/OAXngo8HxFUpJzzR?=
 =?us-ascii?Q?bwxwDBrnQpygORMVmPnwtaD/4F9bvs0fQQqpCQKu1Wp5GH024ij8E20lPHgW?=
 =?us-ascii?Q?x897Km4oH3wPpEm9CjBDwU0bhnHbic8=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5144.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c5844ef-784b-42e1-e7a3-08da4530a7da
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2022 07:14:10.3077 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: scDzda9SxJWKEshYBE7sHSGLhBdeo5toXpMEs7mA0cYfbf63NErM3RyfIcennM18iStnU7ATJA+VG7hiCAymj7e1YvWcAEzWIcDk2b6+hMc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5892
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next] i40e: add xdp frags support
 to ndo_xdp_xmit
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
Cc: "Sarkar, Tirthendu" <tirthendu.sarkar@intel.com>,
 "daniel@iogearbox.net" <daniel@iogearbox.net>,
 "toke@redhat.com" <toke@redhat.com>, "andrii@kernel.org" <andrii@kernel.org>,
 "jbrouer@redhat.com" <jbrouer@redhat.com>, "ast@kernel.org" <ast@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Lorenzo
> Bianconi
> Sent: Thursday, May 5, 2022 10:19 PM
> To: netdev@vger.kernel.org
> Cc: Sarkar, Tirthendu <tirthendu.sarkar@intel.com>; daniel@iogearbox.net; intel-
> wired-lan@lists.osuosl.org; toke@redhat.com; ast@kernel.org; andrii@kernel.org;
> jbrouer@redhat.com; kuba@kernel.org; bpf@vger.kernel.org; pabeni@redhat.com;
> davem@davemloft.net; Karlsson, Magnus <magnus.karlsson@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next] i40e: add xdp frags support to
> ndo_xdp_xmit
> 
> Add the capability to map non-linear xdp frames in XDP_TX and ndo_xdp_xmit
> callback.
> 
> Tested-by: Sarkar Tirthendu <tirthendu.sarkar@intel.com>
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c | 87 +++++++++++++++------
>  1 file changed, 62 insertions(+), 25 deletions(-)
> 

Tested-by: George Kuruvinakunnel <george.kuruvinakunnel@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
