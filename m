Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 054406AB59F
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Mar 2023 05:23:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 907A581289;
	Mon,  6 Mar 2023 04:23:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 907A581289
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678076619;
	bh=wdQ4lMztqzRFYieNFEwlrFZFYFXfEasrdAnhAhvPDoM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=k4k63En/dwq408Hj9nzrE74gyIzF/QpiIuH77a3U4m/idc9i/PXZi5gsP7cDTEFcw
	 NkhT4SCscWXicljz2EnyPm6pgdYpyJJl6g30pc+uUHBqvAnq0J5E1R5qdttTJEo0Z6
	 LnHNvhuU0wj1LqEdfdmhRUcl0vSgciwxzu3RYs+CmRLSqB+3yooOJxx6YZjJl9l75O
	 g0K20d8+RbZ97NvDCY5qPbcYnc/l8kfkX2Y//5wM4qb0cAsZCqFfyS3enXLQZPCr1V
	 OFSUb7+6X7viK0sI9KOzsN4L7ATAmasrYs9t2t/Hrr/XZ10xzsmMrZomRk4ngVOGPo
	 4v05M1uP2k34w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OdyrwaQvwfJM; Mon,  6 Mar 2023 04:23:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 628D881AAB;
	Mon,  6 Mar 2023 04:23:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 628D881AAB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E01ED1BF2A9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Mar 2023 04:23:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B7DF2402F5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Mar 2023 04:23:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B7DF2402F5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id plfR-RUJSVzv for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Mar 2023 04:23:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D9A12400C8
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D9A12400C8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Mar 2023 04:23:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10640"; a="398050896"
X-IronPort-AV: E=Sophos;i="5.98,236,1673942400"; d="scan'208";a="398050896"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2023 20:23:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10640"; a="799873638"
X-IronPort-AV: E=Sophos;i="5.98,236,1673942400"; d="scan'208";a="799873638"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 05 Mar 2023 20:23:32 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Sun, 5 Mar 2023 20:23:31 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Sun, 5 Mar 2023 20:23:31 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Sun, 5 Mar 2023 20:23:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jCGOw+6ujo9q3dvbxR9v9daACN7uWvldF2Rvtjf+eA0zKPQzbTOWAg87nHtpd3moXNWW3UcKvI21Th8Uj16L9mfFD5yRRGQKtVc/iSvx34weCz13Ov+rl89590NDKKDCjwdG4QzXX5pzsIYBMgxv3zkEqrObKbRoVNRsu+F8EUns8VWFogOzQhhOrsd7zZ7IR1L7wUFS3UWkwmgBhrZQlq6z0nlChuw70EXFYjr64Lf1U3zKjtdG/3F0XwO8qKTtjF49DU88hcJd8cXaFM8VdTtnxWeGVquDGSauvfeuc5QokAPME8CRRsrm+xXlAfeuvbHOa8Ks6byU3BgMCHrGxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LXStlZxRYM9XI3ME/vod11WUlzv1mhZCr5D0odQFJ+o=;
 b=a17dOTGmzptpBN8TB5XS+kuC3+2OI740viBWbVeAnun2M7pHBqWF2cjdbd0f5xepaYy1DBcojO+ri1Z2wFnHzQDXBRmeJGLFJVcbV81wb6hUd+8APsOuwQTTtAu4XixIJo3aCwapvvysOQcCcLwx1dJA7D3Xt5cZjzOhfsmCB/2SFuO1KTnHC47cexBJDQwZbIn6PrQKcg4Gmyl04PC5SgziXTqZPVAJ9MlErweZ/OZRNDf4z78C3xWbNp+DMLCsSeOBSUWGLYBAV6gxKv7vJgw031QOIIB2Mu4NGhg7JFjD3PZNkB+48weRlm6q7hUwkhveTUyzoG5eUehPf80cXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN2PR11MB4045.namprd11.prod.outlook.com (2603:10b6:208:135::27)
 by MN2PR11MB4613.namprd11.prod.outlook.com (2603:10b6:208:26d::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.28; Mon, 6 Mar
 2023 04:23:28 +0000
Received: from MN2PR11MB4045.namprd11.prod.outlook.com
 ([fe80::6b67:1c73:161e:9444]) by MN2PR11MB4045.namprd11.prod.outlook.com
 ([fe80::6b67:1c73:161e:9444%7]) with mapi id 15.20.6156.026; Mon, 6 Mar 2023
 04:23:28 +0000
From: "Rout, ChandanX" <chandanx.rout@intel.com>
To: "Sarkar, Tirthendu" <tirthendu.sarkar@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH intel-next v6 3/8] i40e: add pre-xdp
 page_count in rx_buffer
Thread-Index: AQHZQwnyGSO055v8VUaySnHWiIARb67tQHAg
Date: Mon, 6 Mar 2023 04:23:27 +0000
Message-ID: <MN2PR11MB404558A3074E14962EB203FAEAB69@MN2PR11MB4045.namprd11.prod.outlook.com>
References: <20230217191515.166819-1-tirthendu.sarkar@intel.com>
 <20230217191515.166819-4-tirthendu.sarkar@intel.com>
In-Reply-To: <20230217191515.166819-4-tirthendu.sarkar@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR11MB4045:EE_|MN2PR11MB4613:EE_
x-ms-office365-filtering-correlation-id: 3220ef90-de1b-46c9-85a0-08db1dfa88fe
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eZHnXWqHwWcXCB5/wzuwNXuvACmMOc9Jr/0gX8upnrAxtOTN4mSqJJaRiYU7w5UkO0+biOmHGEUy9ML3cfm56FQ8QEB26/ps94nVfolVWkXfFjQA2SYEOvdny/mr42U9eRoOu3iQcCtZx9ybfxvTFZ8zvStwPH4r948XWPjcw1nBTYkN7NEdvNgTTkq+Wujy9TEpFzGOV5hw0DOmAyywfwCFvUg2TEoINofQ7b+tcc2tnDbu68CEfBk1Luhjt275rdu3mm5/KOOCeLmSqF9J8IQsYLcvdS3df3N+ctZKToPHUFwgIfckElmen+AQDoOH24XHYBXwVQydKoTbwSd0t5jUNiCrqxh+RvWSfBqnlyLLh377x5wr+w24Um6BrvwlQDE0uvU/gtuMd6bdYFVvkIwk/ewjq8/wvlFD9ROxxQn0kc1oacp4tGinV/pUiE/F0WX7l9INunngtU9k6TVSZ/f8/zyZmC/6MmMEh/mSgd+vb1Nagay7U5NLIUavUYzrelX6NyY2KeATIBEfRQmsUDYlNHqs9xdSicRhzjapyn6JhXpwi/0CPWiDmE+3oAixetUaT/XgHnPMBX6tPlBDzixZPgp1246XiEA7uYcOP2cbhndXSUVNa5+5TCcHdj0aZP+RcR+V3OepOnq0JbztqUc3nmaJDpiK6mMiNLDolQy6uAxskNB5G0suqbxqxZbU
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4045.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(346002)(39860400002)(366004)(396003)(376002)(451199018)(9686003)(186003)(82960400001)(122000001)(38100700002)(38070700005)(52536014)(8936002)(66556008)(66446008)(4326008)(8676002)(66946007)(41300700001)(66476007)(2906002)(5660300002)(76116006)(71200400001)(7696005)(478600001)(107886003)(64756008)(6506007)(26005)(316002)(110136005)(54906003)(55016003)(86362001)(33656002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vKOaIN2vDoQxlsyqiYoKw6s6YbjZkrswZjn1Vaha12L82V4N7sIKx4rc2xUC?=
 =?us-ascii?Q?Dwk0SmjcDNw2BYQfHM8kzilkNZbEVBHC0qR0S5/AewyvnEukP29SEOCk5RQU?=
 =?us-ascii?Q?gbRqeONygZ9nh9uDznB/ytDmanwDnf2JmpbRhZSgrAp/smvE/cRn/8GVP6Vd?=
 =?us-ascii?Q?+8wWSI7nJwilLwWJOr7IcdUDfve8BZnPgcmgm3Iq1358GomjYDHXa80wMHpm?=
 =?us-ascii?Q?uxYq46DwFOJDhxhFrrIkt7Ajmeb/TcHP5Ica6cFFSAUHyJ0aTBut34x944Gn?=
 =?us-ascii?Q?sSycGogvPlkuIYUcbN/kiGwBkqKvKQn74OkkTWFwSe5Q5C3v7FxEIbcm5ot6?=
 =?us-ascii?Q?Vl7tPkGGngbBKOnD136x+tX7hMoO4dKwJc/IQQbsvSY7SHFaBJCk2P62jfq7?=
 =?us-ascii?Q?znu0ot/3ULlC3O2uMstEuT0GPKjdAp/+aHNVslx6d0dkRC/Il4GHdvIUB3it?=
 =?us-ascii?Q?WJhxbM0Fuab0iFc+lZucA/gUkfEqOuvKMacFTNu/CpIoGxOw42tw2y+Zm4M8?=
 =?us-ascii?Q?5NuHqtr58OETjyRjErbaOzEqyWh+neSOcBSX1+8J9pu1FKB7mAwnkvTdvt4o?=
 =?us-ascii?Q?v8BKG1TgouwC3QGcuW+k/jlFAC10nMP8Tphd12aFbNXXdRD3iSzwRaldrEoE?=
 =?us-ascii?Q?zTQRzZUAHbb68kzGR2LsmloZjlutmqnTl3UB5hRkJxfCNyQ5XX0vilmWJZpU?=
 =?us-ascii?Q?NMgFPaY+F8x/k+SNfilLlVgcAYCTNQcyoj6bcYtnBu9VgZslvMKC4OrcRHWV?=
 =?us-ascii?Q?7t68Vo76svBSBr4xghNzHSKL2dPbnbj6ZKLS9Ui7I3RO87QYWCU4hniYb9mR?=
 =?us-ascii?Q?0nMdHEY/sE9wNNQdgl0CBiXZF2YDpeF/En4fuWxZND2psRYO2H3Gyii5uiA9?=
 =?us-ascii?Q?vPExfAJ4iJiQnZByPfhz3YztbmVPnZ5OwqPvIXGlhgnMRtPDj2F0WGbrWpzW?=
 =?us-ascii?Q?DVftsEp9V0N6wQSqZ6TltkSg7FBzQYla+CioBFpSG3SBBHjzy+/KKQgi9ugV?=
 =?us-ascii?Q?zL6WpaeVK4WdyggbKhNk6BX4BXWwnPXEf0v9JIK4Vw0CeBG5UzwBvzaIbeSP?=
 =?us-ascii?Q?r3EhDqjuh7h8UhKy0/6vesICNBzn+l2HsO+VQtF6Oyjzm6z7rI2FSI+MjrdO?=
 =?us-ascii?Q?N6F3Xe/6p8igPj2/h/l0rkvdA7epgV9Vw5D8I1GPtfE8Ag4Dh0q5ojYQOqB4?=
 =?us-ascii?Q?uFUbsbvUUZQx+FwDeNL43m8xCvXWwqevtqsf84v02kFBMfjsWWNz5q0BJNkb?=
 =?us-ascii?Q?UzRdOhmWuV55of9fFAvfgANtgTey1wxVsjYNJobNR4fb9GUO3uN0Skex4UQd?=
 =?us-ascii?Q?DGwjiQYrrLwzGHN4z1DrlDkgif0p0RSC3P2psEuxaFvWyXfLin4/SwEZk/ki?=
 =?us-ascii?Q?hQxT+9Lk0aT8HXq9p+8p9jCt1LjmN1xxpSQ1B0e0r/zdHwaSeN/36lrVLaKo?=
 =?us-ascii?Q?G6UupdXFwBg8AATI567jfplZbu73Avdq4ncYypigec1+t+ouWfaNutZiAHFe?=
 =?us-ascii?Q?b1w2WlthiGGp7SWf4aFCg7jp43YGZHyxO0ls9+2ayssZeqMRmdRfX1hxpUC/?=
 =?us-ascii?Q?cx9+3ss2vKsXetEtFD+A+mpnR4Kkw0C2CQXVcQ/Y?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4045.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3220ef90-de1b-46c9-85a0-08db1dfa88fe
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2023 04:23:27.9999 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kYPAkkrsvMFnhGotPaCYnCdqhVf4rk4R7sSPQZ4snijQ6bgvEvpDYG1kq58Rc/7ROdgyyxapOSJ5rrLkwQMCWw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4613
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678076612; x=1709612612;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZhCuIu9UaM74Cx5NrtuPQ7xsxM5k25ofZL1ibJbMgPg=;
 b=RIbQ6RH90ARecN/csr8JabnymHPDHkCaM4lXbMtdKytjxn4Tt9O6ZhyP
 N3PUpKzEKDdryp8MZ8f43GkBhXCk9nQ/IMTQnkRdQHtck52zfddcrAPjQ
 0I+G/dSauhqDlhauxyo40OoZwpJP3p/Hocra/WX1QBNiY1QXrdvN9xZ97
 FnyJtOzWoykLNWrSyaoQtyV6EROgPckuey04JRa2sF530tLwCukKkFntE
 +rdFjlErofzIZgyou+Z/cquqKjGZBKFIQN9NAjp6si+9KXQY7toOyxWzp
 5dl7I2nT/DchTKstUqsPyISEx/FWy2gHkQ9WZCsDXRGYG2oxz7LrHA9/u
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RIbQ6RH9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH intel-next v6 3/8] i40e: add pre-xdp
 page_count in rx_buffer
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Nagraj,
 Shravan" <shravan.nagraj@intel.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Sarkar, Tirthendu
>Sent: 18 February 2023 00:45
>To: intel-wired-lan@lists.osuosl.org
>Cc: Sarkar, Tirthendu <tirthendu.sarkar@intel.com>; netdev@vger.kernel.org;
>Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
><anthony.l.nguyen@intel.com>; bpf@vger.kernel.org; Karlsson, Magnus
><magnus.karlsson@intel.com>
>Subject: [Intel-wired-lan] [PATCH intel-next v6 3/8] i40e: add pre-xdp
>page_count in rx_buffer
>
>Page count of rx_buffer needs to be stored prior to XDP call to prevent page
>recycling in case that buffer would be freed within xdp redirect path. Instead
>of storing it on the stack, now it is stored in the rx_buffer struct. This will help
>in processing multi-buffers as the page counts of all rx_buffers (of the same
>packet) don't need to be stored on stack.
>
>Signed-off-by: Tirthendu Sarkar <tirthendu.sarkar@intel.com>
>---
> drivers/net/ethernet/intel/i40e/i40e_txrx.c | 23 +++++++--------------
>drivers/net/ethernet/intel/i40e/i40e_txrx.h |  1 +
> 2 files changed, 9 insertions(+), 15 deletions(-)
>

Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
