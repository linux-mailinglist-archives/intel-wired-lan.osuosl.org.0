Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B7527C6AB2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 12:13:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ACEE360FE7;
	Thu, 12 Oct 2023 10:13:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ACEE360FE7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697105616;
	bh=swxo9oTAB87d6k6UDoHh1FJiop29TKha9+joXQrR97E=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=o2nSJjpyZkm2yiWaQbyyYbxjM1XPFTZdkhkUCXwJF8RRe84n6AV/UWrCspTng91+B
	 Wuz7wIKshsqohU3XwJ4fPQWqJKeYyraypo6oXNfvLC1nOiiXrB5tJavPjb7CYtuwxa
	 M5ivYTBlqkh9nTcT+CnnGhHhYbGXUhbmTO8tG8XGH2DhFnW6pRarOgkbnUVcS52ecZ
	 kkG7YlaQI/DtajHrmqer44uNMy5X0adB8tMCYjM2J89aMXKzfl6XcYwt+r7LykqGdG
	 n/IHPauLCXWG0Nu5+N2DoNJloxT8Qo1qbGrykBr++ibtwWMhwDDeYpR11pc5lYQjbC
	 NgzPlEeHyM3TA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N-6Hsarc_M9q; Thu, 12 Oct 2023 10:13:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EFFA960BC3;
	Thu, 12 Oct 2023 10:13:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EFFA960BC3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 445511BF2B9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 10:13:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 27A8E40370
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 10:13:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 27A8E40370
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id llcxUjX3EFHw for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Oct 2023 10:13:27 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BE15040004
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 10:13:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BE15040004
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="365158884"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="365158884"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 03:13:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="898036501"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="898036501"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Oct 2023 03:11:23 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 12 Oct 2023 03:13:10 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 12 Oct 2023 03:13:10 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 12 Oct 2023 03:13:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FkihDJosW0wnKQ5dZMDwPD/FLuueYBt+OP7l1HrPVTqiOC10sbGXkuHvljOaKE1Zpn+Rg6YE+w3Z2izChu2on5NFHu5LWn299s9xI/IT1Rtimqrpo1l78vzTPtxtR4T5lDSxQSRUWlj0eVuHvBYofyHILLpE/vhmZ9d9JFJO2vZCOVs6CbOM/+Rle1tSV9S2OqaTN2XVnQxg1lBqglbGLo+wNyMH1lV4GY3db2Uwvb4nAQeFHyAGLQRua4uaHWtFYzsvtBt6N7+719VHDy/eU8Pn76TsAYe7t8uKFOKLYkHRNQ9JDWFxomVJIWXoHetBMzdTUrWfKTzz/PmSpfISiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fSM3vdOIausRWKP4h3wW+HUHEcuFBMJUlkIRVAvMBdY=;
 b=guh6sBvozl6L3/b+6I6pVpcgAPfrWw5oGUOJcqyxjxNBJR+qdZSlPsdKQQmolE64P992Lh4757zcImHOFkx4bheWy8yuxN2uxTr3pG/NWBCzi2ENcssutf3By2avkaopRdoeF8126mb+kf8VdRwTDgogUDDL9F4HK8B6+k1hDDx4Kvvix8nN9xVrjxFuNErlS7YLzi3LtEGnlLRUOW7lgo6gIK6s1SdshflUmfqP5+TrUK+7oTlvZ7GvbAnsK/w8wuMoborFqlP5JVykgB2dsbnrAwnTbwD/vbs6u8KzKnukObvpmjBV9jP4aKOJESgLJns96yBMQx/Qu1Pf2cIPPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by PH7PR11MB8251.namprd11.prod.outlook.com (2603:10b6:510:1a9::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.44; Thu, 12 Oct
 2023 10:13:08 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::e372:f873:de53:dfa8]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::e372:f873:de53:dfa8%7]) with mapi id 15.20.6863.043; Thu, 12 Oct 2023
 10:13:08 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 2/2] intel: fix format
 warnings
Thread-Index: AQHZ9imWOmpOSesagUKJY+axTP6BBrBF+wZA
Date: Thu, 12 Oct 2023 10:13:08 +0000
Message-ID: <BL0PR11MB31222860B8222722D15AA251BDD3A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231003183603.3887546-1-jesse.brandeburg@intel.com>
 <20231003183603.3887546-3-jesse.brandeburg@intel.com>
In-Reply-To: <20231003183603.3887546-3-jesse.brandeburg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|PH7PR11MB8251:EE_
x-ms-office365-filtering-correlation-id: bc1e00a7-341e-48f4-63df-08dbcb0bd50c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JoY3dN9EghjAxh4ZjAp8ZvP+n7v9ax8X5Wa4gYiFDZ9+ajy5AzygXNZS887FvIHEh0C3G8Vhuynf2yweUI2xQoXSw5Q9A/JT3GzUhS1tgNiyMglkZ4SCj7rmzSnBFzOM5sxOuC2wWbat+hOYljESXXhd5kuICqNw/0EyxJUe+jY8O3RhfqmKCT/7QfdOp7ym53SIq46Xh0jztswuAlRrNsRImBfAk9KN7xnfYgFhtHh/7RmdRnLTaCLR4EOM4UNyCGq/niqEL8o9wzE6U+PH4I2rR+7xXZyN8nZQeOpQ7M/msCMQRXrLTYFxpC3ZIo48WrU12Vo4WLEwqonhtpZ8UQE/YRFiaKKsHLmqan4nFrWLcqKcMIrqYNesKpL6tcktxbvITbRoyktdDZHq2N5PwqK2KLH7d5ySmr7ObUlTq+Y2TckejpWHawPmR743Y4ZzeXN8L19PK3LBweCMWScTb7EmjDNOwd/xqzdYhL7C1G+Lgnjm7HxofITSt1OydWa7o79GvePlcNHJbM9MAJXanKl/9vX69DdU7pLvPF5jJdJqEqBOemfORyrAmvIRUaup3Rnn0+isqWN0F0V2ViugsvNqhDGJwiJStq2Z+Hci6KpC11ag6F/9gm3DU4TP/ri7
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(136003)(346002)(396003)(39860400002)(230922051799003)(186009)(451199024)(1800799009)(64100799003)(26005)(66446008)(107886003)(54906003)(55016003)(478600001)(71200400001)(53546011)(86362001)(7696005)(9686003)(38100700002)(33656002)(41300700001)(66946007)(5660300002)(122000001)(66476007)(66556008)(110136005)(64756008)(6506007)(316002)(38070700005)(82960400001)(8676002)(8936002)(2906002)(4326008)(52536014)(76116006)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?skxSahXyIxNOAfxZC+aqWa4avEPSdSys2/5G3Eog4wPRRtGg0PBfEwOJo3W1?=
 =?us-ascii?Q?uHemSxSVog18dHQuixFsJ2IatVE/AOQVDh0yrZX8lVXTURVQeCdQ7kGKKv/W?=
 =?us-ascii?Q?mgd9DeoQ3gMqF7ikjHeYteeOyOG/V8VKGNJSEH2LnE3gnY2hTvJjAdCR8Zyx?=
 =?us-ascii?Q?534EJq+G4/35pgJJHGsrmRnnFWMeyQPvb15sHoH7YIje1Ph5MJw7FK6bfW77?=
 =?us-ascii?Q?DkmjqdLBaKOH6CZgbF7c9oljgfdWrCWIxqGGGVUpjw8/74mP54POcX+WL3sW?=
 =?us-ascii?Q?q8MwVcId6Q67SXY2Xp/9Bf4FW3KYnSFJOJlcjZ6/hKoqKEHW6RAlGPWxcLeQ?=
 =?us-ascii?Q?9y0Ajxg6+H0jQjerpAiOtfIB7yW8DrIHuLhZgvU1mmFwBdNomseg8HuiI2LY?=
 =?us-ascii?Q?FayYMwEbjyp2OggXJMcHM2L870QpVNzADGOJFMvXQ3/f1Hqk9JsQhBU2Ypn3?=
 =?us-ascii?Q?w8lwi/Xt1gguqkzXFjD6KZ5JbwpIHoXjfSMAn3qrJ3jopiuPWeItnFzicVdL?=
 =?us-ascii?Q?An8VVHUSfWq9FKWBSiDPlj4EAq063xSg4QTFlktdKRFC4mFHYntBbdq9tjnj?=
 =?us-ascii?Q?6XLXgeVvq4GcX9q0bqBWBeAmntxum+69x6AChpFiumowCRSHGLPhjbYFzjlZ?=
 =?us-ascii?Q?VedKDaCUtYMPT83VAZ14Yk7kH3r7iYnAm4VEQS3oP/mjI2k1D8kIHtenUPFD?=
 =?us-ascii?Q?Z9+/kQ54NgZNeRvLcbFJIQaaeRiRImUC+nOjbpQfdG9qJweChF17rl+ax/TW?=
 =?us-ascii?Q?WX+ujmPLpU6o0NqI+dXiOuqz/UrPbNN2Febocrld2I4+dQ6WcnmfhC3uPM3+?=
 =?us-ascii?Q?X4u4MqK7rmDEjNqykpviqdXOjE0qczqrmxIfEJ5wRBji8E1rn0GJBntkvI6S?=
 =?us-ascii?Q?4pJN7PdP5NcvMKO3JXjZXXUL5ngHV0oBZkDuwCaYH85Ak9lSuuUB/iWZgyxh?=
 =?us-ascii?Q?baBnJ7iLC1Kzt1lDQ3TMUh1OHLOwo1b/I0VouGQtxJqaHGcjDmTe7i+mk9x3?=
 =?us-ascii?Q?kGlPq3FbMlcksdHyVYA1WNWQiSrHGK5bKN6I1PuRZBpDz4BO0N8T3F3BRHGY?=
 =?us-ascii?Q?wufO4Ugr9tqjmcDyrE1hsNoKtgE7Rc3P3kMMu3/Lq/t4bogmV6BtsmnpP5vP?=
 =?us-ascii?Q?NhcKnmEk52KYapqun/l3joFWFzVg2DOM3I0fExHkAWygdozACiGS1KsLkzJG?=
 =?us-ascii?Q?I7gtxlPNn+Iz0I/zThNfSn4S251cAwgNENqkKojbZJJ8p1D+AUB0+dYz9pzf?=
 =?us-ascii?Q?cQ+920a/D26dmhlWJZ5fQBSfzwVyNeSk3viHFc5+3Ur1CbBZq9kOggi94mxk?=
 =?us-ascii?Q?nN+fJRXR7bLtndqWFAloExbprJ1trWBFouWTqL/PCUhBPG7j9bMBn8PmtPg/?=
 =?us-ascii?Q?NNYYyC0C410dT+x++kQ9bT1hLAoSwnvCKXFtJQwDcdeZpg+k6j62XayGkFlk?=
 =?us-ascii?Q?78+V3p8ST25ZefCkiflsOEZDEfKL2wkv5GVL1H18uLZWvjvx+nQbzfr+Z2/v?=
 =?us-ascii?Q?TOe36wFls60XzXcZEpGaOjghpu+vU6MFRv/ysSsA0Ysv2x55GlTC2e3ouVnQ?=
 =?us-ascii?Q?WHg+uJSuuzoqb2WyZuh2TUG0W5Jx7MrRc6Q4WEIYAn7nleE9dnv2gGnfCWlM?=
 =?us-ascii?Q?rw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc1e00a7-341e-48f4-63df-08dbcb0bd50c
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Oct 2023 10:13:08.1984 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 44HNjzjjhoH1QsgCF99+RCyJ5kvJyRi9Q5Nhnm9EkPsUD0d1Vb5QNTNd1wmnMxIGSUgdBoFYEc4VD6DPddlA7GMUSO3XQkxSpnsTvgfm8UZNUx6FFOnBBQYbuwdOHmeW
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8251
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697105606; x=1728641606;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dXFDwfrKX1xj13g4jnwVkLmGf+zJ7yLPdDrCN6RcKps=;
 b=AhrJ94JRFbGirRLwblEGZ8YNG0VTqPZ+QvcCzOGpZdrvRdEpfVQhCUdK
 +Fxa+q5u6UnuPh57Esnagn2xJALGo8wWZ3DGDKOu2nGAkA/lkAm4jF8go
 CEcZnrp99H0ol7WeAfmJtlAC09ySjNZGFrS3wpUWLcvbTVX/UElCIZMeI
 yoaQkle9i4qRWFdOns2m5imqrU4Xb7FYwUpVz6wfIY8qE+URCF8Xypfbw
 MefoiVtm9jNR6AXc/P04vzT9TtPesUs6T21fhgzilwWoMWzko8BY9Fq5F
 CFQz4A6JwsI3QTr/REc/reByrpQBJib8R7lO/sAFfdF9V10hGW72hP012
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AhrJ94JR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 2/2] intel: fix format
 warnings
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jesse Brandeburg
> Sent: Wednesday, October 4, 2023 12:06 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Lobakin, Aleksander <aleksander.lobakin@intel.com>; Christophe JAILLET <christophe.jaillet@wanadoo.fr>; Brandeburg, Jesse <jesse.brandeburg@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 2/2] intel: fix format warnings
>
> Get ahead of the game and fix all the -Wformat=2 noted warnings in the
> intel drivers directory.
>
> There are one set of i40e and iavf warnings I couldn't figure out how to
> fix because the driver is already using vsnprintf without an explicit
> "const char *" format string.
>
> Tested with both gcc-12 and clang-15. I found gcc-12 runs clean after
> this series but clang-15 is a little worried about the vsnprintf lines.
>
> summary of warnings:
> 
> drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c:148:34: warning: format string is not a string literal [-Wformat-nonliteral]
> drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c:1416:24: warning: format string is not a string literal (potentially insecure) [-Wformat-security]
> drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c:1416:24: note: treat the string as an argument to avoid this
> drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c:1421:6: warning: format string is not a string literal (potentially insecure) [-Wformat-security]
> drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c:1421:6: note: treat the string as an argument to avoid this
> drivers/net/ethernet/intel/igc/igc_ethtool.c:776:24: warning: format string is not a string literal (potentially insecure) [-Wformat-security]
> drivers/net/ethernet/intel/igc/igc_ethtool.c:776:24: note: treat the string as an argument to avoid this
> drivers/net/ethernet/intel/igc/igc_ethtool.c:779:6: warning: format string is not a string literal (potentially insecure) [-Wformat-security]
> drivers/net/ethernet/intel/igc/igc_ethtool.c:779:6: note: treat the string as an argument to avoid this
> drivers/net/ethernet/intel/iavf/iavf_ethtool.c:199:34: warning: format string is not a string literal [-Wformat-nonliteral]
> drivers/net/ethernet/intel/igb/igb_ethtool.c:2360:6: warning: format string is not a string literal (potentially insecure) [-Wformat-security]
> drivers/net/ethernet/intel/igb/igb_ethtool.c:2360:6: note: treat the string as an argument to avoid this
> drivers/net/ethernet/intel/igb/igb_ethtool.c:2363:6: warning: format string is not a string literal (potentially insecure) [-Wformat-security]
> drivers/net/ethernet/intel/igb/igb_ethtool.c:2363:6: note: treat the string as an argument to avoid this
> drivers/net/ethernet/intel/i40e/i40e_ethtool.c:208:34: warning: format string is not a string literal [-Wformat-nonliteral]
> drivers/net/ethernet/intel/i40e/i40e_ethtool.c:2515:23: warning: format string is not a string literal (potentially insecure) [-Wformat-security]
> drivers/net/ethernet/intel/i40e/i40e_ethtool.c:2515:23: note: treat the string as an argument to avoid this
> drivers/net/ethernet/intel/i40e/i40e_ethtool.c:2519:23: warning: format string is not a string literal (potentially insecure) [-Wformat-security]
> drivers/net/ethernet/intel/i40e/i40e_ethtool.c:2519:23: note: treat the string as an argument to avoid this
> drivers/net/ethernet/intel/ice/ice_ethtool.c:1064:6: warning: format string is not a string literal (potentially insecure) [-Wformat-security]
> drivers/net/ethernet/intel/ice/ice_ethtool.c:1064:6: note: treat the string as an argument to avoid this
> drivers/net/ethernet/intel/ice/ice_ethtool.c:1084:6: warning: format string is not a string literal (potentially insecure) [-Wformat-security]
> drivers/net/ethernet/intel/ice/ice_ethtool.c:1084:6: note: treat the string as an argument to avoid this
> drivers/net/ethernet/intel/ice/ice_ethtool.c:1100:24: warning: format string is not a string literal (potentially insecure) [-Wformat-security]
> drivers/net/ethernet/intel/ice/ice_ethtool.c:1100:24: note: treat the string as an argument to avoid this
>
> Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
> clang-15 warnings before the patch:
>
> drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c:148:34: warning: format string is not a string literal [-Wformat-nonliteral]
>                vsnprintf(*p, ETH_GSTRING_LEN, stats[i].stat_string, args);
>                                               ^~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c:1416:24: warning: format string is not a string literal (potentially insecure) [-Wformat-security]
>                         ethtool_sprintf(&p, ixgbe_gstrings_test[i]);
>                                             ^~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c:1416:24: note: treat the string as an argument to avoid this
>                         ethtool_sprintf(&p, ixgbe_gstrings_test[i]);
>                                             ^
>                                            "%s",
> drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c:1421:6: warning: format string is not a string literal (potentially insecure) [-Wformat-security]
>                                         ixgbe_gstrings_stats[i].stat_string);
>                                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c:1421:6: note: treat the string as an argument to avoid this
>                                         ixgbe_gstrings_stats[i].stat_string);
>                                         ^
>                                         "%s",
> drivers/net/ethernet/intel/igc/igc_ethtool.c:776:24: warning: format string is not a string literal (potentially insecure) [-Wformat-security]
>                         ethtool_sprintf(&p, igc_gstrings_stats[i].stat_string);
>                                             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/igc/igc_ethtool.c:776:24: note: treat the string as an argument to avoid this
>                         ethtool_sprintf(&p, igc_gstrings_stats[i].stat_string);
>                                            ^
>                                            "%s",
> drivers/net/ethernet/intel/igc/igc_ethtool.c:779:6: warning: format string is not a string literal (potentially insecure) [-Wformat-security]
>                                         igc_gstrings_net_stats[i].stat_string);
>                                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/igc/igc_ethtool.c:779:6: note: treat the string as an argument to avoid this
>                                         igc_gstrings_net_stats[i].stat_string);
>                                       ^
>                                        "%s",
> drivers/net/ethernet/intel/iavf/iavf_ethtool.c:199:34: warning: format string is not a string literal [-Wformat-nonliteral]
>                vsnprintf(*p, ETH_GSTRING_LEN, stats[i].stat_string, args);
>                                               ^~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/igb/igb_ethtool.c:2360:6: warning: format string is not a string literal (potentially insecure) [-Wformat-security]
>                                         igb_gstrings_stats[i].stat_string);
>                                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/igb/igb_ethtool.c:2360:6: note: treat the string as an argument to avoid this
>                                         igb_gstrings_stats[i].stat_string);
>                                         ^
>                                         "%s",
> drivers/net/ethernet/intel/igb/igb_ethtool.c:2363:6: warning: format string is not a string literal (potentially insecure) [-Wformat-security]
>                                         igb_gstrings_net_stats[i].stat_string);
>                                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/igb/igb_ethtool.c:2363:6: note: treat the string as an argument to avoid this
>                                         igb_gstrings_net_stats[i].stat_string);
>                                         ^
>                                         "%s",
> drivers/net/ethernet/intel/i40e/i40e_ethtool.c:208:34: warning: format string is not a string literal [-Wformat-nonliteral]
>                 vsnprintf(*p, ETH_GSTRING_LEN, stats[i].stat_string, args);
>                                                ^~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/i40e/i40e_ethtool.c:2515:23: warning: format string is not a string literal (potentially insecure) [-Wformat-security]
>                 ethtool_sprintf(&p, i40e_gstrings_priv_flags[i].flag_string);
>                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/i40e/i40e_ethtool.c:2515:23: note: treat the string as an argument to avoid this
>                 ethtool_sprintf(&p, i40e_gstrings_priv_flags[i].flag_string);
>                                   ^
>                                    "%s",
> drivers/net/ethernet/intel/i40e/i40e_ethtool.c:2519:23: warning: format string is not a string literal (potentially insecure) [-Wformat-security]
>                 ethtool_sprintf(&p, i40e_gl_gstrings_priv_flags[i].flag_string);
>                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/i40e/i40e_ethtool.c:2519:23: note: treat the string as an argument to avoid this
>                 ethtool_sprintf(&p, i40e_gl_gstrings_priv_flags[i].flag_string);
>                                     ^
>                                     "%s",
> drivers/net/ethernet/intel/ice/ice_ethtool.c:1064:6: warning: format string is not a string literal (potentially insecure) [-Wformat-security]
>                                         ice_gstrings_vsi_stats[i].stat_string);
>                                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/ice/ice_ethtool.c:1064:6: note: treat the string as an argument to avoid this
>                                         ice_gstrings_vsi_stats[i].stat_string);
>                                        ^
>                                        "%s",
> drivers/net/ethernet/intel/ice/ice_ethtool.c:1084:6: warning: format string is not a string literal (potentially insecure) [-Wformat-security]
>                                         ice_gstrings_pf_stats[i].stat_string);
>                                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/ice/ice_ethtool.c:1084:6: note: treat the string as an argument to avoid this
>                                         ice_gstrings_pf_stats[i].stat_string);
>                                         ^
>                                        "%s",
> drivers/net/ethernet/intel/ice/ice_ethtool.c:1100:24: warning: format string is not a string literal (potentially insecure) [-Wformat-security]
>                         ethtool_sprintf(&p, ice_gstrings_priv_flags[i].name);
>                                             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/ice/ice_ethtool.c:1100:24: note: treat the string as an argument to avoid this
>                         ethtool_sprintf(&p, ice_gstrings_priv_flags[i].name);
>                                           ^
>                                            "%s",
> ---
>  drivers/net/ethernet/intel/i40e/i40e_ethtool.c   | 6 ++++--
>  drivers/net/ethernet/intel/iavf/iavf_ethtool.c   | 8 +++-----
>  drivers/net/ethernet/intel/ice/ice_ethtool.c     | 7 ++++---
> drivers/net/ethernet/intel/igb/igb_ethtool.c     | 4 ++--
>  drivers/net/ethernet/intel/igc/igc_ethtool.c     | 5 +++--
>  drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c | 4 ++--
>  6 files changed, 18 insertions(+), 16 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
