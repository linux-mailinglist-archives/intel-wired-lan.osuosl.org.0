Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 146845A99A0
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Sep 2022 16:03:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 140F38137F;
	Thu,  1 Sep 2022 14:03:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 140F38137F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662040994;
	bh=d4NLzEa72XqpYntdH9Cv7F6plHYKtlftSQ7FNQsig4k=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ncat8TowNO/bl90DYGyVw/Dg3T1rkhnvn/MBaA7B1UrNZL3+970MQXHTC6SDjHbs1
	 g9UyhK8r6R3fTkCYuUY0zgEmqUbWMtyL7JJLUT+h3URbuMIlp6Pde0z6fXsVHCtD7k
	 i8vqEGhmeJBC+RKoUqOPP0B4V61+/r+w9+Z4OlWjJL7kjnRLTJ22dIdKj4541/V6vR
	 705mV7X0CxyanrfGFO5jqJDCpaXJejUZlpnqSQTfAhxdk4OzfVZIesSBdYjaE5z8dU
	 bcM+RJa9Eomtlt2bPGyb62BE08pa2lCm2jXdAmyOT0gcvTybVBcZkAxtp4Q7h1MaKo
	 WRpQgfDuULbjQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 758orw0rknHW; Thu,  1 Sep 2022 14:03:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 37BDF81097;
	Thu,  1 Sep 2022 14:03:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 37BDF81097
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 55F721BF301
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 09:55:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 36D0B41916
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 09:55:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 36D0B41916
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l-TJZhCv-uoc for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Sep 2022 09:55:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 52A46418FE
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 52A46418FE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 09:55:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="295679916"
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="295679916"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 02:55:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="716046857"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 01 Sep 2022 02:55:15 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 1 Sep 2022 02:55:15 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 1 Sep 2022 02:55:14 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 1 Sep 2022 02:55:14 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 1 Sep 2022 02:55:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZA0L11MxefnquFchI3Uzy/3ybtxtUkoSFY/OG8kfv/gDQOWPhorqaW41GjPYUZREtKzIED6o/hA9TrVK+pI/rvDlFPgWhwCNRgtuI0c63+WRPs5c6Hh9HBcSXk4ICErAT7FjXd2ANJ99OS7zo74SiycuRQY4xFDDLV2aLElk7Qq9ViTG+P4G15mv0MeGURu60quR6bToN4OaD+qvZtfwW0qqQp8KEjQV7yqba+pGMnlFHE2khmh4mqNpPT0q8UVRaYT0xEvDj3IY/G7rw1KSDPXnW8xwsYDubhFfnJR38Pkk4/UsIiGO6vn99kdHRf1GfWkiZkQkyMkUUmBZtUMYSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dRdgNwA2HGVViB6KxiNWiEiAPyK/UtyCph3L6SRC8Ys=;
 b=C0H8Yw7zRfr5c27vBpitTrbdVb4BHDfK/Vam8pDAdeQHp0U873/ql2VbT6BbmNlWXsbWLCLSh9xDLswB9riqcfNa1r4pDVoxjybFjYECPGnmb8/lzGiftaxs1UzNH1JYexGaYNyAqJEPU8PSgh9C+q1ANCL+7AOu5gUVIsnAg06ba1yNGepFiaWCnL9k6YN8a/QiKnDR1+A2hN8ZgdTYu6tS1MwLP8SqG9pnts8Pexmz4iJtiQaV1jhHmiCWMwH9iOnG5BWOy6ksyP6ZtGGQTqT+ALmLVirqKlXtYN+PoGsoTtsBgh4/05c+ZTnLXDMXmdw2i8r8WccSbgbCbiLwag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB2983.namprd11.prod.outlook.com (2603:10b6:a03:88::22)
 by DM6PR11MB3577.namprd11.prod.outlook.com (2603:10b6:5:137::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.15; Thu, 1 Sep
 2022 09:55:12 +0000
Received: from BYAPR11MB2983.namprd11.prod.outlook.com
 ([fe80::e8f8:5cab:24b3:1c8]) by BYAPR11MB2983.namprd11.prod.outlook.com
 ([fe80::e8f8:5cab:24b3:1c8%4]) with mapi id 15.20.5588.010; Thu, 1 Sep 2022
 09:55:12 +0000
From: "Dubel, Helena Anna" <helena.anna.dubel@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] ice: Don't double unplug aux on
 peer initiated reset
Thread-Index: AQHYrBTz/Nvhb3eAd0etDpH8ELjeDq3Kd8vg
Date: Thu, 1 Sep 2022 09:55:12 +0000
Message-ID: <BYAPR11MB2983DC4EFE6CEC213FF41F0BBE7B9@BYAPR11MB2983.namprd11.prod.outlook.com>
References: <20220809172423.1967513-1-david.m.ertman@intel.com>
In-Reply-To: <20220809172423.1967513-1-david.m.ertman@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5d63dc5d-d669-455c-37b4-08da8c000fdd
x-ms-traffictypediagnostic: DM6PR11MB3577:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qOsntrg8u6WDJSgHOxIroBTUOaxcMYCVsxsYvgcspaoicn58htq50+yQoYvpom3qX0AzKpo0A6vzMmAPpMke2CaCZiT0HrTOSwr46nxfKk9Yjko4vlYsfqAyLn2T3Ak3IuSP8jcPWcuwaAzc9OTe2YwXvt0nbF+RX2Tyijq40SEBz3c9YEPMOkQY+2puDlUjnd+GIFVkqmmoa96o2WR8lttzvGeGbFBPZEgCljdIMjnDC7okBAld9+XlHXqOK3qS49TNqHt+j1i+bCfGFRe+LTZocHfCAX+V31WIHoOiepIdfLIPWFQGO7EB4GEjUINObODsywGYHqCgVCeC6qrBA6Lxa2BPEctNqGBSumgbsqU3SrILjD0gCfYpt+AbPLJvhY/UDy3x6m0Axl7Mzz8eFeYtl32wSPxxHHPE8Z6+j9BdIDVGNugmN5FjjazZaoZc108EpOOpCojR9Da3eMAfQIP4g/TRFfuuWEavbsR/BUF75WGeXQ1UB4Nx6Z2ZkgeDzCuQ5H0KH2sntvIO49uuTuYhCFnkAU0E/VXFIyM7HmPWhNcSMehj5gY0S0AZd5o6TX/MmOKav5yzY1K9/xMyI3bcHvCLppBDIKgwYvhDDcFVTFyC/m1Yphs3MeZ2rwPKriK+yB7pGCRxeRTgJ/iBy8KhtbSqqeEKJSeRYSy+EOUzEqP02K3ysTxHVl4Mj3LR8DFJJbyPUdDnwUQ7jNMqtRDXnbP4NQsliWgLCs169AFZrMLQWgD1fIcEVmomIl8OIENvuMxyruItKEuyAL2SmA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2983.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(39860400002)(346002)(396003)(366004)(136003)(316002)(66446008)(64756008)(7696005)(76116006)(478600001)(83380400001)(66946007)(186003)(26005)(86362001)(9686003)(8676002)(71200400001)(53546011)(66556008)(41300700001)(110136005)(82960400001)(45080400002)(66476007)(38070700005)(122000001)(2906002)(6506007)(33656002)(5660300002)(8936002)(52536014)(55016003)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?385Riq7LtaJGM40vTOKnbKMxO/3r9dsfb/mssIMfgeSvPBbJ2YNrphQXvF0D?=
 =?us-ascii?Q?pWgzujmVJe6+VbyDO66klEkEi4/0Gll9NQu5nOq7WRXZnT5Ul9vZ7uTUJ8hG?=
 =?us-ascii?Q?OGC/lbX8XYlD0WnmpFR6TntFJEA6uITvpkGxKrbzAGImLWF924FD49p7VkI0?=
 =?us-ascii?Q?iCBFKeqVx8FBJoOxPrvLK2VHzID7o+D3tjbGcyBFmO5BUwHGEjsx834+83Ln?=
 =?us-ascii?Q?m86x/zcZj1Dh4o+NwkxlRENn3YL0gTaJHh42njalabzfeTFS381c1KMv5Sna?=
 =?us-ascii?Q?sg8kJvvlU7hLl9BbOl9PtVDhju541A9KXBkNYxw3ZoTpDt/zawHLKKqU+KQx?=
 =?us-ascii?Q?/J1U9ItdvztO797GAGWgb28HVsBTqy8QMRsOjk5VuBVyHfdhxX49JghjorE3?=
 =?us-ascii?Q?u95aHFeUcLmwLeKqJVTTb5AMUbozc4dbMXIOL4YjQdS387ec8KeaM9cTxdtJ?=
 =?us-ascii?Q?s10CElnP8rEAmmm+D/k9TbRmdK4uRj7p9zQ6pp2zO7Qb5Jp0dB4r3qSFbxST?=
 =?us-ascii?Q?ifzl+/epgh3FBlTwGeo9AKzLTEB5ld1IVwkoUUNlICbVIUb/HFEgjNpyTbo5?=
 =?us-ascii?Q?SJ+9VywUTJanjUUDZjWuf1VrNZvOjhKHzm8W2uDxgMeguwdrBjnyvyT/maEC?=
 =?us-ascii?Q?nQX//o3lOV9FsUAREIC4tAgu6NfofGPV80U9HZGxn8cPRYrHD2ojk+0DpkpH?=
 =?us-ascii?Q?/xKV/A96TRbV+fqnN7SDVhcdqzJt5CbUe5ekFJNn80H3yTGxodmztWOYAfA8?=
 =?us-ascii?Q?yneWg6amoesIu4XXPySYHgl3S1O/D2HnmZrYTVDrjRRlB+h/FcsIs8NkE/it?=
 =?us-ascii?Q?kv465wjM3s98ATVdj2v87x+/fTp/aQeRrv/CGVzvuSGZYv0Y170z58BipfCb?=
 =?us-ascii?Q?rD8ZyW5VT86GqVXTxosmxrtMuJxOiJGGj6QSvYdhuxd2KmxF8k5xpz/u57i8?=
 =?us-ascii?Q?LnkQjGjoyAGTyF5rBfOIOzyaExAf2LEnSQ8U+/2HITFGQ08xni7HbiH7+ylX?=
 =?us-ascii?Q?OPUfSFprGkJwzDRy7WvpzI5xVmeYLwtckGLNM0O3FZ07wF6202y3l28rJYFm?=
 =?us-ascii?Q?6GExpKBHZmvOxKYdkxt9oujO+XugE1GXkbHpFaykq42qInQ+acrS2QN04SyO?=
 =?us-ascii?Q?tDt0rZ7g2KuWpy1L2pmmMgs3HENZmNco1BPhscP1gD8uG7W07NnW0jarhWyo?=
 =?us-ascii?Q?WvA5clA5NdR73Hzh4AFXpKxQK9q9LmGLYjmelAIhw25M9fY538nAyeAoXPP4?=
 =?us-ascii?Q?yX8BOcXE2DwFEKvBF1fODAXbkZKcmmpWEvNt02L6osy2s68fWrq3rMrxOhgj?=
 =?us-ascii?Q?VzHO4hMXksnUaXykGbgIBceMPP2zAUZsYvBvS13lpVg58WphjozjdVFcSf7o?=
 =?us-ascii?Q?Y8tsaBXHG2gRmQs/5ov6zZ3rQvzd2iSXrAfmd5G7BLOiD/kkIx8d2VTmBDTx?=
 =?us-ascii?Q?goxvIUGJyxP2U8wulyUEHmAUnyG52cI78g880IjNJ3Fa9l3RiYpSUP+gnOmi?=
 =?us-ascii?Q?ypYAdaYckTVy/MI5XxWU10PuEhjMtKlFZUvH11ju65UIGKKBCV46XEzm61tC?=
 =?us-ascii?Q?x3/3aygpIaPWqBhjrMmdhdecZFfKCk700annQPFE?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2983.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d63dc5d-d669-455c-37b4-08da8c000fdd
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Sep 2022 09:55:12.0234 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Lntzc6G5rTm+Gmr+EDRMKxk7fCSPUC1s4Igjer65dloK1vNopkG6jq9VG5M2RNyOr2UYyIG2pt2uDcQGqI0tftANZcEQHhyhIoJTJFFihg0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3577
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Thu, 01 Sep 2022 14:03:07 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662026121; x=1693562121;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=IFlTZK+VEhc2yWI/+A6et9yd06PtmC8tXNysQIT1A6M=;
 b=dFJncarN6IFQEmIFoMABOAMJ1DwBH0iM/w7JVP8qxWLHZd6+HBeiSi3L
 Jf6TYByxALqljQ2Wj6DsnQBUVRrKogSM4ouvKxO39L5kV/rLa11/GFi2+
 WFSMoaFd32A3X+VDSbri/rlSd9ZbgISNxmRL7T8KXUWUFexlTUUYRvNqC
 CQtfNjjfDzmwvgpae2YI7F77OHRjcj4rArjhEfvYQmUL9RwFC4v1sNLXu
 4LK/c2ZVpKczXRhn8b2qUPPR1r6Iw8164zzqa7OzXm3su/DizRoWx6yIX
 ikl6oBmVg4NGsC/oVDgoheKvD1KECbMJKXnrP6ClO/7uGCae/g9cRq4Vd
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dFJncarN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Don't double unplug aux
 on peer initiated reset
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
> Ertman, David M
> Sent: wtorek, 9 sierpnia 2022 19:24
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net v2] ice: Don't double unplug aux on
> peer initiated reset
> 
> In the IDC callback that is accessed when the aux drivers request a reset, the
> function to unplug the aux devices is called.  This function is also called in the
> ice_prepare_for_reset function. This double call is causing a "scheduling
> while atomic" BUG.
> 
> [  662.676430] ice 0000:4c:00.0 rocep76s0: cqp opcode = 0x1 maj_err_code =
> 0xffff min_err_code = 0x8003
> 
> [  662.676609] ice 0000:4c:00.0 rocep76s0: [Modify QP Cmd Error][op_code=8]
> status=-29 waiting=1 completion_err=1 maj=0xffff min=0x8003
> 
> [  662.815006] ice 0000:4c:00.0 rocep76s0: ICE OICR event notification: oicr =
> 0x10000003
> 
> [  662.815014] ice 0000:4c:00.0 rocep76s0: critical PE Error,
> GLPE_CRITERR=0x00011424
> 
> [  662.815017] ice 0000:4c:00.0 rocep76s0: Requesting a reset
> 
> [  662.815475] BUG: scheduling while atomic: swapper/37/0/0x00010002
> 
> [  662.815475] BUG: scheduling while atomic: swapper/37/0/0x00010002 [
> 662.815477] Modules linked in: rpcsec_gss_krb5 auth_rpcgss nfsv4
> dns_resolver nfs lockd grace fscache netfs rfkill 8021q garp mrp stp llc vfat fat
> rpcrdma intel_rapl_msr intel_rapl_common sunrpc i10nm_edac rdma_ucm
> nfit ib_srpt libnvdimm ib_isert iscsi_target_mod x86_pkg_temp_thermal
> intel_powerclamp coretemp target_core_mod snd_hda_intel ib_iser
> snd_intel_dspcfg libiscsi snd_intel_sdw_acpi scsi_transport_iscsi kvm_intel
> iTCO_wdt rdma_cm snd_hda_codec kvm iw_cm ipmi_ssif
> iTCO_vendor_support snd_hda_core irqbypass crct10dif_pclmul
> crc32_pclmul ghash_clmulni_intel snd_hwdep snd_seq snd_seq_device rapl
> snd_pcm snd_timer isst_if_mbox_pci pcspkr isst_if_mmio irdma
> intel_uncore idxd acpi_ipmi joydev isst_if_common snd mei_me idxd_bus
> ipmi_si soundcore i2c_i801 mei ipmi_devintf i2c_smbus i2c_ismt
> ipmi_msghandler acpi_power_meter acpi_pad rv(OE) ib_uverbs ib_cm
> ib_core xfs libcrc32c ast i2c_algo_bit drm_vram_helper drm_kms_helper
> syscopyarea sysfillrect sysimgblt fb_sys_fops drm_ttm_helpe  r ttm [
> 662.815546]  nvme nvme_core ice drm crc32c_intel i40e t10_pi wmi
> pinctrl_emmitsburg dm_mirror dm_region_hash dm_log dm_mod fuse [
> 662.815557] Preemption disabled at:
> [  662.815558] [<0000000000000000>] 0x0
> [  662.815563] CPU: 37 PID: 0 Comm: swapper/37 Kdump: loaded Tainted: G S
> OE     5.17.1 #2
> [  662.815566] Hardware name: Intel Corporation D50DNP/D50DNP, BIOS
> SE5C6301.86B.6624.D18.2111021741 11/02/2021 [  662.815568] Call Trace:
> [  662.815572]  <IRQ>
> [  662.815574]  dump_stack_lvl+0x33/0x42 [  662.815581]
> __schedule_bug.cold.147+0x7d/0x8a [  662.815588]
> __schedule+0x798/0x990 [  662.815595]  schedule+0x44/0xc0 [  662.815597]
> schedule_preempt_disabled+0x14/0x20
> [  662.815600]  __mutex_lock.isra.11+0x46c/0x490 [  662.815603]  ?
> __ibdev_printk+0x76/0xc0 [ib_core] [  662.815633]  device_del+0x37/0x3d0 [
> 662.815639]  ice_unplug_aux_dev+0x1a/0x40 [ice] [  662.815674]
> ice_schedule_reset+0x3c/0xd0 [ice] [  662.815693]
> irdma_iidc_event_handler.cold.7+0xb6/0xd3 [irdma] [  662.815712]  ?
> bitmap_find_next_zero_area_off+0x45/0xa0
> [  662.815719]  ice_send_event_to_aux+0x54/0x70 [ice] [  662.815741]
> ice_misc_intr+0x21d/0x2d0 [ice] [  662.815756]
> __handle_irq_event_percpu+0x4c/0x180
> [  662.815762]  handle_irq_event_percpu+0xf/0x40 [  662.815764]
> handle_irq_event+0x34/0x60 [  662.815766]  handle_edge_irq+0x9a/0x1c0 [
> 662.815770]  __common_interrupt+0x62/0x100 [  662.815774]
> common_interrupt+0xb4/0xd0 [  662.815779]  </IRQ> [  662.815780]  <TASK>
> [  662.815780]  asm_common_interrupt+0x1e/0x40 [  662.815785] RIP:
> 0010:cpuidle_enter_state+0xd6/0x380
> [  662.815789] Code: 49 89 c4 0f 1f 44 00 00 31 ff e8 65 d7 95 ff 45 84 ff 74 12 9c
> 58 f6 c4 02 0f 85 64 02 00 00 31 ff e8 ae c5 9c ff fb 45 85 f6 <0f> 88 12 01 00 00
> 49 63 d6 4c 2b 24 24 48 8d 04 52 48 8d 04 82 49 [  662.815791] RSP:
> 0018:ff2c2c4f18edbe80 EFLAGS: 00000202 [  662.815793] RAX:
> ff280805df140000 RBX: 0000000000000002 RCX: 000000000000001f [
> 662.815795] RDX: 0000009a52da2d08 RSI: ffffffff93f8240b RDI:
> ffffffff93f53ee7 [  662.815796] RBP: ff5e2bd11ff41928 R08: 0000000000000000
> R09: 000000000002f8c0 [  662.815797] R10: 0000010c3f18e2cf R11:
> 000000000000000f R12: 0000009a52da2d08 [  662.815798] R13:
> ffffffff94ad7e20 R14: 0000000000000002 R15: 0000000000000000 [
> 662.815801]  cpuidle_enter+0x29/0x40 [  662.815803]  do_idle+0x261/0x2b0 [
> 662.815807]  cpu_startup_entry+0x19/0x20 [  662.815809]
> start_secondary+0x114/0x150 [  662.815813]
> secondary_startup_64_no_verify+0xd5/0xdb
> [  662.815818]  </TASK>
> [  662.815846] bad: scheduling from the idle thread!
> [  662.815849] CPU: 37 PID: 0 Comm: swapper/37 Kdump: loaded Tainted: G S
> W  OE     5.17.1 #2
> [  662.815852] Hardware name: Intel Corporation D50DNP/D50DNP, BIOS
> SE5C6301.86B.6624.D18.2111021741 11/02/2021 [  662.815853] Call Trace:
> [  662.815855]  <IRQ>
> [  662.815856]  dump_stack_lvl+0x33/0x42 [  662.815860]
> dequeue_task_idle+0x20/0x30 [  662.815863]  __schedule+0x1c3/0x990 [
> 662.815868]  schedule+0x44/0xc0 [  662.815871]
> schedule_preempt_disabled+0x14/0x20
> [  662.815873]  __mutex_lock.isra.11+0x3a8/0x490 [  662.815876]  ?
> __ibdev_printk+0x76/0xc0 [ib_core] [  662.815904]  device_del+0x37/0x3d0 [
> 662.815909]  ice_unplug_aux_dev+0x1a/0x40 [ice] [  662.815937]
> ice_schedule_reset+0x3c/0xd0 [ice] [  662.815961]
> irdma_iidc_event_handler.cold.7+0xb6/0xd3 [irdma] [  662.815979]  ?
> bitmap_find_next_zero_area_off+0x45/0xa0
> [  662.815985]  ice_send_event_to_aux+0x54/0x70 [ice] [  662.816011]
> ice_misc_intr+0x21d/0x2d0 [ice] [  662.816033]
> __handle_irq_event_percpu+0x4c/0x180
> [  662.816037]  handle_irq_event_percpu+0xf/0x40 [  662.816039]
> handle_irq_event+0x34/0x60 [  662.816042]  handle_edge_irq+0x9a/0x1c0 [
> 662.816045]  __common_interrupt+0x62/0x100 [  662.816048]
> common_interrupt+0xb4/0xd0 [  662.816052]  </IRQ> [  662.816053]  <TASK>
> [  662.816054]  asm_common_interrupt+0x1e/0x40 [  662.816057] RIP:
> 0010:cpuidle_enter_state+0xd6/0x380
> [  662.816060] Code: 49 89 c4 0f 1f 44 00 00 31 ff e8 65 d7 95 ff 45 84 ff 74 12 9c
> 58 f6 c4 02 0f 85 64 02 00 00 31 ff e8 ae c5 9c ff fb 45 85 f6 <0f> 88 12 01 00 00
> 49 63 d6 4c 2b 24 24 48 8d 04 52 48 8d 04 82 49 [  662.816063] RSP:
> 0018:ff2c2c4f18edbe80 EFLAGS: 00000202 [  662.816065] RAX:
> ff280805df140000 RBX: 0000000000000002 RCX: 000000000000001f [
> 662.816067] RDX: 0000009a52da2d08 RSI: ffffffff93f8240b RDI:
> ffffffff93f53ee7 [  662.816068] RBP: ff5e2bd11ff41928 R08: 0000000000000000
> R09: 000000000002f8c0 [  662.816070] R10: 0000010c3f18e2cf R11:
> 000000000000000f R12: 0000009a52da2d08 [  662.816071] R13:
> ffffffff94ad7e20 R14: 0000000000000002 R15: 0000000000000000 [
> 662.816075]  cpuidle_enter+0x29/0x40 [  662.816077]  do_idle+0x261/0x2b0 [
> 662.816080]  cpu_startup_entry+0x19/0x20 [  662.816083]
> start_secondary+0x114/0x150 [  662.816087]
> secondary_startup_64_no_verify+0xd5/0xdb
> [  662.816091]  </TASK>
> [  662.816169] bad: scheduling from the idle thread!
> 
> The correct place to unplug the aux devices for a reset is in the
> prepare_for_reset function, as this is a common place for all reset flows.
> It also has built in protection from being called twice in a single reset instance
> before the aux devices are replugged.
> 
> Fixes: f9f5301e7e2d4 ("ice: Register auxiliary device to provide RDMA")
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
> v2 - changed commit message to include BUG message and remove extra
> space
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 2 --
>  1 file changed, 2 deletions(-)
> 

Tested-by: Helena Anna Dubel <helena.anna.dubel@intel.com>
-------------------------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Slowackiego 173, 80-298 Gdansk
KRS 101882, NIP 957-07-52-316
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
