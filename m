Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA68A5821EB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Jul 2022 10:19:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0CC6840412;
	Wed, 27 Jul 2022 08:19:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0CC6840412
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658909946;
	bh=ZSBclbz/2bEqoKcUPOxDcqa8gv499diNfr3tFTM1xD4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=E+W78oPwLpk1o51Vq0MCdjBfx0F093n5x9pfm/rWVQusRQqDRiIjJcGn0khs8d/3e
	 5sUmSuTXStOwiqruhRdQfDIpooa1F0+rVyxU8s8y5KN5iD9yoR7DQV4Y+dUJYdJ3z7
	 8AmogrwFgSNahPJko+fbuNwxyjM4lauwPWGyam69vMNCmUP1d7dIM7KtqHBUyxZ8RJ
	 EQKd6XU0Yw+im10VBt0m+ET8fhQ5bNtHGoV2wMThJ7U/EpbS8O1swh7LVIXki9M9T2
	 dq7g4lweFo594ZCfAChen7EfUXExYXsXz9fWYDu5PWVXKxfs6jr+MJnOuKBQeQWRF1
	 38TTiiwpLWw7w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wYnVDHoUFGvF; Wed, 27 Jul 2022 08:19:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E0068403E9;
	Wed, 27 Jul 2022 08:19:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E0068403E9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 072B91BF59A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 08:19:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D3F0181759
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 08:18:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D3F0181759
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7enF8XJ_IfpM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Jul 2022 08:18:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A097813FC
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7A097813FC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 08:18:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10420"; a="288186755"
X-IronPort-AV: E=Sophos;i="5.93,195,1654585200"; d="scan'208";a="288186755"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 01:18:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,195,1654585200"; d="scan'208";a="604067178"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga007.fm.intel.com with ESMTP; 27 Jul 2022 01:18:57 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 27 Jul 2022 01:18:57 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 27 Jul 2022 01:18:57 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 27 Jul 2022 01:18:57 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Wed, 27 Jul 2022 01:18:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DuhImtNzWPnVp0eUzLyAZg9doPxto9JEBfvsrLQjQmyUS26MRxhek4OkqToc0RQbcxP6pcrYXPDT0y/Df/qPnxeHwwfV/HQPFrFTJCzBn6CggqS+QMjhRzXkBs4JTbx/fn7AooPOTTvu3EFKFpp1eTeH6PpQ2/uUTGo1irYjvGdREABfZIPH15mhM8jwaENhoTkvG9RTUmhxRSXdg/sDFTvuTALZHhtNdBQkZPhhSW7VM4N4cE0XTSk1Xa8GMawwVELxC47fUGt6ut5vsa9/aR04aeNx7bS/s1craq29briW7cFnF8tGsO5Qxhmgv28Tihxpr5X3g7pUffwNoo4o0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3Maa+ftcodlvJ43Nfr/dmKE9MuYXqEo5pmfRBIxoLKc=;
 b=k2+1BH6JP/jaQUcHzpGn+a8z3qS1Dqm/lQExdzGGF82BueRuxt+33+c/ltHGv47aPp70I9r4rTh2csqCIiTS1Cv9ZQh8HUlgYgzvlXCHjOzIkwIBmpAdNxNWmLo9/1zdKlp4xoHn3QPEtWRnQFknjT4C6XWhU2oSq+424q72w2VB5XShBZF9qXYxVmbrk4t7A7MkY01YRdcUkFvj6P3TRzKmXrGALs3jbci1AZNHAX+dpSjkaUCKqFWgpXvvb95d4ow38DXlVT9LC//fA0wnKidAGUo/w2mi8hud02mq8uFjfiHsj2hshLHUJrQbZDjQp6CKvPJAyuMY9FiWU+LMRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BN7PR11MB2788.namprd11.prod.outlook.com (2603:10b6:406:b2::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.19; Wed, 27 Jul
 2022 08:18:50 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5458.025; Wed, 27 Jul 2022
 08:18:50 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH 5/7] i40e: convert .adjfreq to
 .adjfine
Thread-Index: AQHYnUkxFw0sw7IgLEmXaLWGGAjKSa2R6EqQ
Date: Wed, 27 Jul 2022 08:18:50 +0000
Message-ID: <BYAPR11MB3367E04D8AE73EBD9F2C4337FC979@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220721213001.2483596-1-jacob.e.keller@intel.com>
 <20220721213001.2483596-7-jacob.e.keller@intel.com>
In-Reply-To: <20220721213001.2483596-7-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 331e849a-f528-4967-4234-08da6fa8a2b7
x-ms-traffictypediagnostic: BN7PR11MB2788:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: g/y2gUr1AkpU8EHQDaGT9KjoaMSUJnlQH3a0QLUgX9fjk+UboAGQ4W4zCR/9rYQEra4Wcje5n0jis1bOnu6g1V+t4VKka2EfsT/+v2aALv9xRwneIzqJde+HGsV98tjsnpo67oQWcyBT1Y5vxFrXRTQPENaGCYlQOmxYQXlz0PXXUoFAGkXYr5Kh2sDXxa7gSVnhphVAz7kp5GBsFT5eTBgGcqkat8EsIxu9wsLJi+3j99OnxbZAdfgWnojkF090eTl7YpUcykyLuaHPtfsqX7STPdUeXFwaUFh8y/NSkpC+sMthuUYsbaN7ygl2IUEK6PyNNy1vmmVKprNGH3OH2QZRp73uXHZIIuOZwDeOel2tgKVKZAEtbMvjmuC0xBBee88LEORgUvL9znKuDm7GrMHCGLgB0h4SEMil7the+yBWtOtgfFC0CkdXNcArsbPlwUfuacS3dn2xg4SarGM8SVq2MQt6mlXa1vM1pHcApL0H7/ENWUUI5R7VDHluFMwNj42UsRi6i7k68ER/inLi2emMsI/4o98dILNvie7Rx9zMgPRBisN7Kk9s52ZKkIg/B/H311wLp7Z9dcIKDNIAhgrK2wvAmIW3IXxMuGHLUgOOXHUuQgDWd2XBuCES6xheq3Ww/v6ZDEvE6teu1KE08kk7KmdKlz9w4BeWDpP9cj/URdlR+N1C5maEP+tHMJ/zRRu+x9Ne53mFFK6h3DbNkWnIh7j2uCExVPB+HX0kP1+eym4U1zGh4a7ejYQp9Gx7ukB/KWGgfnk8fY37gQbiEBLX2PPkFWyjS/OZqzIEVFpUkf41gVwCLGgp7HMDCPoWxvnaYC2Z5tfIFMVfz8xr9Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(346002)(376002)(396003)(136003)(366004)(6506007)(82960400001)(8936002)(52536014)(33656002)(86362001)(83380400001)(26005)(122000001)(186003)(9686003)(38070700005)(38100700002)(41300700001)(478600001)(110136005)(71200400001)(55016003)(7696005)(5660300002)(8676002)(66946007)(66476007)(66446008)(64756008)(76116006)(2906002)(316002)(53546011)(66556008)(142923001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bRhjoSIRFrl+ft1UL6j6MMshhgDJAhjpX5W7aNxP4gP/nHUtnQ7YldGBiZuy?=
 =?us-ascii?Q?PQgT6yTJkR0Qmni+MAs1dd4rGTg+8YhVFlwjUxsMQamao7ETa/GTs7wDHChh?=
 =?us-ascii?Q?q90eAy9AagrEJEGqGvx838qU6zTLvfT0JjLXjuyyWXfPTgvonCig0qgOvcwA?=
 =?us-ascii?Q?nlX2ppH1PAAneWxz2UHRo4q6otCUHxEWTZWcto/8xibpbzGkKGMjyPZN46Eb?=
 =?us-ascii?Q?7LIkSImMeCRJ1ihENReZ5QloGF9OWNtAdg2iGjhjw7QkDzimMVj6NktpC6Sj?=
 =?us-ascii?Q?8vMHYCOXs3KNX4O1tD4pWjiz953Mc7eRYJUG/r8XrVtayQrd/Jp2nRydYTjv?=
 =?us-ascii?Q?Vz1sC8Bao5W/DnY3+V8tVLj0kkJOOzh8z/Q1x5BWvltNdyilvdRZxpLQLGGu?=
 =?us-ascii?Q?/8ejoObc0hJ3Fad/ha2Ya1dJ7OGxl/gT7wmfHnMXjQBF8nvfl5WyP2kI94dx?=
 =?us-ascii?Q?w0J0s0+1dArndcl6H10G9ibRDhp91EMFE1EvBay+o3aA5DulEffXV5/tlanY?=
 =?us-ascii?Q?Jf61IXKNQunwK+PX0Wn0XxZfDbRZcQ3+UqanwEFKgizRxOhi1uxNgac+QVXg?=
 =?us-ascii?Q?Cax7Qlek81LNmbSQPvOd4xod1OJk8d572xH+i3N7dt8MtmW3+PRF6VJpjSpn?=
 =?us-ascii?Q?Ku8pVCMbEt4ofoARko5QNnd4660yk4AgNu5bW94m5WNy03wjhC1B4NDPl8F1?=
 =?us-ascii?Q?YG4mILgIeKzeCopm8jxw0QqFk3dZAM+/dFHyYrF9K9ogueYtW/YxD/C9OSoV?=
 =?us-ascii?Q?1lKOKJtklc4Uf5qB9AkmIxPaUOkmxcEFYzLrZyC1Wm008oKFPBMkqAwD94iE?=
 =?us-ascii?Q?RFmMv/u9K/I+S8olNW6S7aBmmp4BUTcIbSzTIpWCAifm88lMviDj4R753imb?=
 =?us-ascii?Q?5KXoxb3gnL93SMfex/H2u4xjJ65OpwpkF0gCfhiCaRPVH5Qtf6UMC3I0yv2l?=
 =?us-ascii?Q?RYyZSUjizehRSaBAYw0/BCKa3hJuZEJNbf6+qD8iU3cP9p9Fsh6ICsl6DlMA?=
 =?us-ascii?Q?cGntxmiB3LvcTkV+9zGGcTXvD0j/BwCe20Yt/Y7I4bvIYmV+Pea3q1eA6jRo?=
 =?us-ascii?Q?FOnSyjR7Sz4aPFNo+infwpdqEGXNMAgLfTPA1EnXZVcVRnuUfHLj+Ui7EotX?=
 =?us-ascii?Q?oRRMBseONmJOkxLkxuIxXJC58EnrQ/0/V1LOWtNYI7FseNHCqs21j/kiI7WK?=
 =?us-ascii?Q?zy2zLzq0djCH/ZwzVgclnZxPl3LY9IqXFQLU/Lnjbh/JAdrKrTp1lE8qMkB0?=
 =?us-ascii?Q?i9efXr4aZgZD4Afk5RzENm6qZPCkcebAAn1gPoNvpgXlfOOgdvVh5n8N8OIg?=
 =?us-ascii?Q?uNu1sTdcqgHwfrTErFnow+CgNQQq47cPO8L0CAOxXOPddbnIifYqgObnrKJN?=
 =?us-ascii?Q?I/OxKQqOLIlglisO0AxcRDA5y0sNMKwPLo3vELgZwugWWg3DSR1VxCgL+F4w?=
 =?us-ascii?Q?e1HVN2k+4Barn3Yf/RNDqQEqfx66YnRpHhh0CMNXKUMPt2Uep9URIY4TKxd/?=
 =?us-ascii?Q?GaoCNg5oEYOzC/E9I4VYs/Mwpqj0ITiXl1fGLmb4Fp6qh/Gk7nN9e6jUHExV?=
 =?us-ascii?Q?Nppq+kbQJLkuuXWBP7jjj55r0SejSgfgP9VispN4?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 331e849a-f528-4967-4234-08da6fa8a2b7
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jul 2022 08:18:50.0829 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: knX/MWFFTYo3Elb/lbJrTLhl7Kvic9hakpS9VuoprQcnU4LRsa0kG2OK2paQ6pDyF0fdsEP/QRQwuRxEgo7Gsw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2788
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658909938; x=1690445938;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=mQzfcDEWFGogSYljtZXdjlZrTDWlnUPwg3l6pS+3aow=;
 b=AZKwUOJjOXF8QoXko9jMxmHgi0uwshz4i/IZck4y27PZCFRwEkWYDcMH
 6U/nuOKqD2ytrMhXNtY6ItAPBwDvvT3DVDVQfb/LjXUvKdcK2NAFbvvCs
 WxmSQwV74OEFYDrKiHJPtGb+XM2RAL7Mimd06vkwTkpIzO1DKpFtAu5uT
 qRAkdV78LFHehdXggfruwrnLf/bP5oz21j3sr5Yvtknz6k3D089vgox12
 oRwe+KsMKlXingBoWMdG97f1HbdcnJsXyfhmPvx2f4J/WnN+7xue6Mz21
 u+qwODxq8Rs9IwXWzF12YcyvfR0ZyQH+KJDtvIvhuG1DRxFHAJgQ1CmMi
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AZKwUOJj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-next PATCH 5/7] i40e: convert .adjfreq
 to .adjfine
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
> Jacob Keller
> Sent: Friday, July 22, 2022 3:00 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next PATCH 5/7] i40e: convert .adjfreq to
> .adjfine
> 
> The i40e driver currently implements the .adjfreq handler for frequency
> adjustments. This takes the adjustment parameter in parts per billion. The
> PTP core supports .adjfine which provides an adjustment in scaled parts per
> million. This has a higher resolution and can result in more precise
> adjustments for small corrections.
> 
> Convert the existing .adjfreq implementation to the newer .adjfine
> implementation. This is trivial since it just requires changing the divisor from
> 1000000000ULL to (1000000ULL << 16) in the mul_u64_u64_div_u64 call.
> 
> This improves the precision of the adjustments and gets us one driver closer
> to removing the old .adjfreq support from the kernel.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_ptp.c | 22 ++++++++++++----------
>  1 file changed, 12 insertions(+), 10 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
