Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 225015EEBAF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Sep 2022 04:23:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2973983E6F;
	Thu, 29 Sep 2022 02:23:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2973983E6F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664418202;
	bh=3XfDYTbrHcpbhpDo5FBgxAdnU7WVREmfznpP2EzVO50=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ThtUXJq20a2dgIrQ+yMWjLa15PxKWiP/NqWGRwZyohjgO2+foNuNtMMNsz3jh60AP
	 yrv/dz3n0AH+KrlWbX182aUkrIiLc5LKDApxIV6oUlV1wcysc+AlaAeG8LCBkKoXQW
	 1r1s2qsJhd++bKtjuBghbcde5rtc4dkj6xCOC0ThKhnhH1lgvP3XsyaFReS7EoeK29
	 cSQ6b6gs1dvrK3fh4QNud1H/tDczZBlKfPubgcef0AO9YRx22hI20i1Fxc6N0bb9IJ
	 WRgAKom/9/4a5PxvF4vbdfz3x2UdxsGR6ncWgWj/yIZV8FhviijLdmu3ykWzAUQvvA
	 LILS/nsmrrlLA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zDMGFAn_Lae8; Thu, 29 Sep 2022 02:23:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DE66083E64;
	Thu, 29 Sep 2022 02:23:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DE66083E64
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F2E571BF591
 for <intel-wired-lan@osuosl.org>; Thu, 29 Sep 2022 02:23:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D96A883E64
 for <intel-wired-lan@osuosl.org>; Thu, 29 Sep 2022 02:23:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D96A883E64
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id njG43SrE3FJH for <intel-wired-lan@osuosl.org>;
 Thu, 29 Sep 2022 02:23:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DDAC683E62
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DDAC683E62
 for <intel-wired-lan@osuosl.org>; Thu, 29 Sep 2022 02:23:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="365819341"
X-IronPort-AV: E=Sophos;i="5.93,353,1654585200"; d="scan'208";a="365819341"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2022 19:23:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="599813680"
X-IronPort-AV: E=Sophos;i="5.93,353,1654585200"; d="scan'208";a="599813680"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga006.jf.intel.com with ESMTP; 28 Sep 2022 19:23:14 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 28 Sep 2022 19:23:13 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 28 Sep 2022 19:22:50 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 28 Sep 2022 19:22:50 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 28 Sep 2022 19:22:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JCnuukrMT9LvSer3jPR48nA3AaQmEP7ptGykbi5bW5kvDvyf0B4R4O9zYMAfV+j+e0T2nksT8oOM+MTvT29vST8qnDaBZY8aA/E+h9olh0WrV7WllgzZp/gLExRneWtiBfB9GIdrmovHejW8V5I+Ee/EbyY/gjNMKvGNAEC3LzCpE8Nx+gi/zatiilcb6I2CediRi1g9pF7rbMO2miQM3YFBto58/KliN/b7OwYUvXmrzScquQ7OOyJMz+JybiaYOGGGv7M499ohQCbMydOExbQ3/jI9akMsd92Xh7LQyh5n9Q3GtLbQC/31WXHOWISKyFaPlf5WCAfdley4x22Pdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cHMeCj2l7Tz+nmhE40sABu02tkCqpoSzL7uRZkhFTPo=;
 b=kADPls38j/R4EvZPTunXbNWGlTIlOnH5H7Ply4NDhdeDFn/R79hRS2fTUugQlDAnF9IS24wO7FXlfeI66OhPDTITwNu1ZdOzt4GmQuWBX/+SeSGUmfq+LrCb26XvMJWpb93USOSqLAW04uQU2axta1cb88Byfeb01rqYDPeykR/ZJZJ6jYjhJakh6XUllLspOREvOIaJH4HULRWnlIhBoxsjR2AIh/zq/qZSbEo+Mo6+0gL87PmE2Ce1CHnsf5FViWuDdF6tYUNhQ4SB+85EusLF8+lRqo/xdKRu+JvWzCjb4N3G6s1BtDVT1r30+W2pu1WVdndqXDxGmNynQA9HnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by CY8PR11MB6913.namprd11.prod.outlook.com (2603:10b6:930:5b::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.19; Thu, 29 Sep
 2022 02:22:29 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::7c03:1c40:3ea3:7b42]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::7c03:1c40:3ea3:7b42%5]) with mapi id 15.20.5654.026; Thu, 29 Sep 2022
 02:22:29 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: Andrew Lunn <andrew@lunn.ch>
Thread-Topic: [PATCH v1 0/4] Add support for DMA timestamp for non-PTP packets
Thread-Index: AQHY0nIwdgyUAXnuBEqr/9DPT40VFK3zZmiAgAJIAgA=
Date: Thu, 29 Sep 2022 02:22:28 +0000
Message-ID: <SJ1PR11MB6180EFE995DC659ACB77120EB8579@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20220927130656.32567-1-muhammad.husaini.zulkifli@intel.com>
 <YzMWX1xPC0NChKNl@lunn.ch>
In-Reply-To: <YzMWX1xPC0NChKNl@lunn.ch>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|CY8PR11MB6913:EE_
x-ms-office365-filtering-correlation-id: fb8920ac-0b74-4506-45c1-08daa1c17506
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /mjbgUgby1vjTfY2PMgnAKAHmG7j/rvTSQhJaQ4mGdcB/17bL0UBY/9vRsg1YLONoD+JcEtKF2nLSMEhs+2ie4cPGavZLMZEj/r6FZCeJnBKqhIYJzsTfB7VXpCyCDPBw/RfgNY+Hh855hS7CfvozvRvVuX0Fz81JDjHwv0dr70EiyZ88Ay6QGi+D38rC+E9pA4uJGWgtkb5tO7ohmsX/NFWjgjjS9qNL4DX3OM9FgPg5z/6jGjfvfsk/Bjnuos1FfrqG1Ydf5t6P2vmmTK44+23Q64mSWFvLFyc5wmDEp6/Tx7RxZoLKIboxMT80AH9MV5S9kc5i+Fy8+qi5SWgwYhNb3QUnlrLfFT/IEZlZUGRtlDThxX7JGnji2akVRzEL4/Es+TkTu7UuMK8SePK2P5K0JYw7iPqyAN2PNi+lZoi1Nia3iaamLs4hvhyOrKCUxQ+inKLvbadHUvMok43ezr8d0Bt2WzalHdhBlRbBZ4j62bdTni5oYL0VqqyRjKgDRR5mDU4WDTtsAZkX6tdRVGxvlXu1HbvcGtXkA8TrWKv6KLBz079fZOhI9+Zk9j6bqbZbqEVEG3tGXAkx5TbNBLSAuEibcI/pFbwOyvNQ/EHcv54+Jmj/+pC3HNlmVU8nV0ytAVVjo9uxJDGUqxGCvr5UhyffW41YLtcdLFQfoQ1wCnV8SylvgIOqYHXhgP35FHB2qm+L2YzSKVh1C8yl2V/JXb1Dy452rhtWFjbswUg4dPM2cyBkbcLypDazzMUWb9qWsXzNx4M0SbKU3C3QA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(366004)(39860400002)(136003)(396003)(346002)(451199015)(6916009)(86362001)(478600001)(316002)(54906003)(55016003)(41300700001)(33656002)(66446008)(66946007)(66476007)(64756008)(8676002)(4326008)(76116006)(122000001)(82960400001)(53546011)(83380400001)(66556008)(26005)(9686003)(6506007)(7696005)(52536014)(5660300002)(8936002)(38100700002)(2906002)(186003)(38070700005)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Qw5rRy1minV3GE6Rpih3OV++BUj/uF9aEbWQ+bAfLS7RG5bc8uftqEK1vfN4?=
 =?us-ascii?Q?WLEhzYP8sgnkAyD+6EjlMtib4FyCZ2c9BRB8tT/fB06WfquQWJxaBSUjFfK1?=
 =?us-ascii?Q?yVR/271GLRPQtPyDIHSG/CEkW+myNAGkfj6DrMIFOyzMzZFJmo0ZRDW6mFlr?=
 =?us-ascii?Q?+IJxI1/XH4zY8TjtWfvhe0zIbvzxtVKTKRTLJUuDzrSXvgR5A6b9mikjDsaN?=
 =?us-ascii?Q?Sf7TdNTyF9+GWgjUbTRc8QEQQ0Umw8vOzX1sHghEhrkhSO9koGXw+gBqGdmj?=
 =?us-ascii?Q?cc+gt/0kCCmj7h0N1QbeN1GvsM3ATJLJy4M0IWqS1E0lnENCKQ/LNc79tbZt?=
 =?us-ascii?Q?y6rzk2pP+fPjgLYRKozW5MMmzo5y1kwg0OnsOaYW3YVILZ8zPC01CjdCEXv5?=
 =?us-ascii?Q?ErEprbZNisPl4sSHeZDxtKFxb0URddawUSr+KtRdDCY+k0/n6tf6FfK8PRY7?=
 =?us-ascii?Q?nB8QzEW9uRoXY9/d40dyfMBNN2cHo84pCuHDAWoDSRmoh1ilz4k8bc9Ub0YU?=
 =?us-ascii?Q?kRoP5IUs3YBRqH3bGpn0P8j1lBspxfhmD0z2kU+ZFPjE8sfpY525FzqbySv5?=
 =?us-ascii?Q?B698G16LWSpfjR+S6HcZCtaCyA+lzvgYWMTXw9xx+bqjAJDFqBVs8Pa/hGNQ?=
 =?us-ascii?Q?Cls85am4gesI+BBaHgFCBR4GPcX6HVN20ejQ9kHMT8WvCPwJh3R0yqJkjsXa?=
 =?us-ascii?Q?kFrYx9YWl69WeRFdxanmMVQJFfZRm8zVIhfhQSsNvR1cdX6SS0cRcbxOgJ1E?=
 =?us-ascii?Q?BrpCgVFsu1lm2NSNIGBGhH9pERTsCNFgtqQmN3OTfvnBiegHxKDTNu50cyqa?=
 =?us-ascii?Q?tmgZFBQoNUjb0/YTQSNAQuY/FOMTQar5k1gOS/FKzFVzQtNjWK2tMY0M6WQY?=
 =?us-ascii?Q?zwTENF9K01lXdwjOOvj8ivVCB7J88RzprHrKPzs6einXiPq8ag4xGdz6WX9j?=
 =?us-ascii?Q?5HzfTK+DeHF9t2TY7WI9YTdDbbiQN6C7qIZPOKm1AO9DVebV/9MDrbtm+Ocv?=
 =?us-ascii?Q?Zq2eo4UDG0E2adEiQ7R4aNJv/q7m7vu1NEb2WnQ3cfKr0RNCNTaUyEV43dCZ?=
 =?us-ascii?Q?MkVXX6IzQRQNVAKlN3GktD8YpSfKMcRo+wQxRpow6PoTx2rd5Jsn6Q3biLYr?=
 =?us-ascii?Q?L4og1Ejikdywqfwv9xO87dDfHM4PBamFO76BgTkrvVP0njWBjkFKAiFLOzO7?=
 =?us-ascii?Q?CG0PBFb+xWOdhu+6J4WrcPMmuxmGxp4Yu8CRofA8zNhtQ5MQXbF/GbqsYtVu?=
 =?us-ascii?Q?QWPHCb/NlWoHepbTz0GmEG090zO6gjpSvXkGplhp0Xsxj9BgMp+S5FGCC2Cu?=
 =?us-ascii?Q?OGyi6EDXYrwqrThoaJQbu2ATYYTpT7X05HKkuKKTOzae5lgbgOW9MKKco2ut?=
 =?us-ascii?Q?2Gv5ag9x2pq7wIFaqOgLoF/T62yMgulI3fWWybxtT2ycMOyHb2YLkRiIcg5C?=
 =?us-ascii?Q?k9tOND5CIVepd/4BMT+lW989ii3ErEm4ZQxdkqitR5Iis3QQiGsjDzlvVltq?=
 =?us-ascii?Q?oMNfAH3xG7FrIW2j0M2gCIu+1jtTOWt0r/P9dxIswUY1dkVrh5OqXN7VUWTe?=
 =?us-ascii?Q?kJj03CrwFxylfrICdqY9eWFhyj7XJ5Oby4xGGjhc5N6ngyZHDhkFlHESndDS?=
 =?us-ascii?Q?HrrINjEB7NhySWeay5bvygg=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fb8920ac-0b74-4506-45c1-08daa1c17506
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Sep 2022 02:22:28.9983 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iVFpO698bQZKIkhkNxFgsGuJm1dSQrgMkBBOGRtR155Umr+dSRan/hnLFR3jUPPQ7AZ0Gm/cO1+hjizNLzkoBtaGRHa6R65Vd9+FpbYCAh37C0uxfeWt+pKEV9hCFttP
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6913
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664418194; x=1695954194;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3Ja0RLNfOO6E9w19OKwnVDwJfFyeUuiOAtt//zvC4MM=;
 b=VbfVCzupq9DEGkz6yXXGtFxDH8u9EKhbmRc1f//4Nsi2B+ZvEURiwjRU
 n3+Y2zNxkML4+9ZBkEgnWGvXBWhcByIXn8zAHOnAIPar2v+2W/Wkb/EqC
 QCxRnkO71KcVlQ8R+HwbpCpJWqLqiFJrf7xHn+mPVOg8TFz3yam6jujWk
 p6pbDzqH0X1j6xp0t6TnM5hoyLCDZkVvuI+LMVc6iBfswFwhWWF0NuTv6
 iodgJvOZgm5p/ijGaQ2G6tJoVefGjEdyXjCeRFJoYM1JD3KgjmZ1Qw1aa
 AvVdLbuq6CkfuIeBzdTz3QzBs5Mgm5hPRt8dbaaOcvUAPAptK0U0pVb2X
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VbfVCzup
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v1 0/4] Add support for DMA timestamp
 for non-PTP packets
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
Cc: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>,
 Richard Cochran <richardcochran@gmail.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>, "Ahmad Tarmizi,
 Noor Azura" <noor.azura.ahmad.tarmizi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Andrew,

Thanks for reviewing. 
Please see my reply in-line.

> -----Original Message-----
> From: Andrew Lunn <andrew@lunn.ch>
> Sent: Tuesday, 27 September, 2022 11:27 PM
> To: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>
> Cc: intel-wired-lan@osuosl.org; netdev@vger.kernel.org;
> davem@davemloft.net; kuba@kernel.org; edumazet@google.com; Gomes,
> Vinicius <vinicius.gomes@intel.com>; Gunasekaran, Aravindhan
> <aravindhan.gunasekaran@intel.com>; Ahmad Tarmizi, Noor Azura
> <noor.azura.ahmad.tarmizi@intel.com>
> Subject: Re: [PATCH v1 0/4] Add support for DMA timestamp for non-PTP
> packets
> 
> On Tue, Sep 27, 2022 at 09:06:52PM +0800, Muhammad Husaini Zulkifli
> wrote:
> > The HW TX timestamps created by the NIC via socket options can be
> > requested using the current network timestamps generation capability
> > of SOF_TIMESTAMPING_TX_HARDWARE. The most common users of this
> socket
> > flag is PTP, however other packet applications that require tx
> > timestamps might also ask for it.
> >
> > The problem is that, when there is a lot of traffic, there is a high
> > chance that the timestamps for a PTP packet will be lost if both PTP
> > and Non-PTP packets use the same SOF TIMESTAMPING TX HARDWARE
> causing the tx timeout.
> >
> > DMA timestamps through socket options are not currently available to
> > the user. Because if the user wants to, they can configure the
> > hwtstamp config option to use the new introduced DMA Time Stamp flag
> > through the setsockopt().
> >
> > With these additional socket options, users can continue to utilise HW
> > timestamps for PTP while specifying non-PTP packets to use DMA
> > timestamps if the NIC can support them.
> 
> Although this is not actually for PTP, you probably should Cc: the PTP
> maintainer for patches like this.

Thanks. Added Richard in the CC list.

> 
> 	   Andrew
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
