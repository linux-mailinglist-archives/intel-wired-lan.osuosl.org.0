Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BEC7605636
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Oct 2022 06:08:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0C577404B3;
	Thu, 20 Oct 2022 04:08:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0C577404B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666238887;
	bh=hLAe3UMGEvF2VgOBzAwrJqri1zKwnz6bxDJeE6Y9lRg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ve5pVwEVd3IpN7yE4vMDyPh8LCNX42yuRronhGJ8aGkTPTdThpEitoYGj+MwvIR4j
	 cSOtgOBwOdOhr9ZyROzWLkiguvJ5Cfy0Gc1YkqDzMl6ZYTgTpF+IPWOnr12IAa1htq
	 850R2L2+5BfZR1mXhRr1tUBA/M4+uPC5aaLS6tMvtoKOBbti3CoSJ5lyl0Xxt7crUu
	 oTyw8RCHN9zX8fyvGad7w734mjXlMpRVOql2Otx4crjeVVU1QgHPslZ8NEhv7TH4kh
	 dXBXgDXFzTtyEVl6xisvjVdkjABbDfa8L0MPNvWodEX3GMmHbvYo55vPl12gmulu1u
	 CjG8UdMVwCl/w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IEgFdxqWJ7uv; Thu, 20 Oct 2022 04:08:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B25E64019B;
	Thu, 20 Oct 2022 04:08:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B25E64019B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D7C4B1BF3E9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Oct 2022 04:08:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B0AA58418D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Oct 2022 04:08:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B0AA58418D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IKuFWPRgT2o2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Oct 2022 04:07:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5FDD68417A
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5FDD68417A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Oct 2022 04:07:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="307697074"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="307697074"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 21:07:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="662800806"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="662800806"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 19 Oct 2022 21:07:41 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 19 Oct 2022 21:07:40 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 19 Oct 2022 21:07:40 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 19 Oct 2022 21:07:40 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 19 Oct 2022 21:07:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MqPHb+AdEbOmIf8Xt7Ueeivig/fCm08heMAue4h7SCtVTtTaLkT/cSUuS/V0MO29dsKhhNuU/u7ZoRbZa0IC05RUt1jH0asr86lhz58UJtr0jgeurR+7PF608fVfEcJlpnokq2sSg1BFAPGUVV6oKGxypbg2CI3x9vDbIyEhNFgYJVFP860f0aX+mOVrx9yEQnUy5u/RTPRANsgt5On8aAeZCVWOYRq2lAy2ST5gR4J+Bio4c/jFP+xoh8SKetP3n0FOSAvOL3qsCGdfX0hjaC+tDrqK8CRZx8OrbsvbAR+hufnQss8o13mTtGWVOA2wHdQGF12ntukEc3waZEuEBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZT07fjsLdxkwj0GOBmdvLaCHWeu992+nMsZtAeEWMnQ=;
 b=UPsBPvpcUiltmTT5yeIXBp13rvBz3tfHSEAxclpsqoulFKXf/iHDFukrAd02pnk7qYNjD4dvUL4CLKCT0I0e18priP1Je5eMFO3VhVrwUOMvWigH6YnLrZom8kZ+yeYsp7RkYMKPfppDXDTlOmBMGUE6I2UwoD2siqvbzSWMnvW7pd/8Ivp48Yj9Q+43+YHg8Kjd0Cva3gtxiatFdf52a+2TkRrs2nomyZam0Oan42PWvZvnD/7JBM5D1L8R7gZJzxPHXi5IQtqPqXoQ+9w4E8ArGkZ+cUcnES11YEi/DMS0VgQK19avUw7hMSCunxs2pvtGIrHPVMHV4agBR15wcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by PH0PR11MB7561.namprd11.prod.outlook.com (2603:10b6:510:282::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.33; Thu, 20 Oct
 2022 04:07:37 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::888:2df7:7c31:e1e5]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::888:2df7:7c31:e1e5%7]) with mapi id 15.20.5723.033; Thu, 20 Oct 2022
 04:07:31 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH next v8] ice: use GNSS subsystem
 instead of TTY
Thread-Index: AQHY46FbfLwltJOGEkKyIcpCny7NKK4Wq3MA
Date: Thu, 20 Oct 2022 04:07:31 +0000
Message-ID: <BYAPR11MB3367DEDC71B56EFE737971C6FC2A9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221019095603.44825-1-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20221019095603.44825-1-arkadiusz.kubalewski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|PH0PR11MB7561:EE_
x-ms-office365-filtering-correlation-id: 82139c9f-eebe-4e4b-9a91-08dab2509c0c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vbQ5xJE1s2Hj9lEF7y4e6osgKo9em6+9vR1hzyvP1DnaN56TnRlwtbmOWdEeh3bGwmPRTvUxcKXCPuqFZ/XQeXl1S2IzgxEMawYoZNpjnOLqEDwY1ldZMcrnjrrzndLnTNdR0C9dS+w7ku/Na7jB/u8R0xkkHECPLVCLCin0idtLgUnEXz2dFLZjBM3Y8GKKKayIXKpbvQzYgLFmBgtsz56FOm010D2D4BznifIW+MgPubSJy/td17RZ1+Ps/ZotOrgoWQ7iT8rdv0vxk9BCssHe4oLbZWobpDMEqs19lBB3BI39655X5dMNcHz4oPmn2/qU78hDzHgPxM6e35OPzBn8BRJ/C4YBoknbePhiTEo8QTp+XXUUrIwPBsSJZoJ8ax+GkB2JYBI4nYo+UdHWbgVz/65A6qmiEr2FP8a42jYMRK6mh3iw5iuNwseP3dGuzr+KD0xTiqAI9iyoHHBgx0K2FZ0ijLx8Djcp1fo7J2orwm7dlpNzmSbRNNaFKvsYnRIQUa0TWRRR1I/Bg6g2LwvfnMGw8q/gpWTy6V8twCVKCb4Xvw+efVENVHcgCaJWFs+qaNOzYXY2Nsf5mMIQVPGgs7wwG7tuyfUTocKXINFdwkLPEMvdzqXPcOAUlCkkY5DuL4d3oKYIR42M15Us7wIjUEOCmJOEgFb2fHoLM45xL3x5D7sUoR0TGsY8JP/uMf7z1eoSvEbyCFAMViyH1/hUlDZse7kepWcr44LY6Ere+0tG0hnMy3tEnpch0goMC4Y6MzJjZv5t0Uyzxeqq8A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(39860400002)(136003)(376002)(346002)(451199015)(86362001)(38100700002)(64756008)(82960400001)(66446008)(9686003)(41300700001)(107886003)(26005)(122000001)(5660300002)(53546011)(6506007)(7696005)(316002)(38070700005)(55016003)(4326008)(8936002)(110136005)(76116006)(66946007)(478600001)(71200400001)(33656002)(52536014)(8676002)(83380400001)(66476007)(66556008)(186003)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?u5lyKqg2pDqCloIuXxKy02gj+TRbJEZVRmb2SmA7iTqn9NTh26k+kKlzznJJ?=
 =?us-ascii?Q?FTUHkWffqi2Ing/K6ww+KBRfhC1mXhts3n9USBzyKiJ0NYgF/yEBJIbgCYud?=
 =?us-ascii?Q?GVaHetzysObTrtobLGDL/kRFgAL4ciSKsTOOQV58qakEnhZJ5GKx4bgFW700?=
 =?us-ascii?Q?4Zz4+FpuTGIG6p7T5oipiCSbIdPdr/6kmkJ0sIxxUYubkPzFyYH/M/dvchu2?=
 =?us-ascii?Q?bBiUIdp5xgDeDVDe57Yqr/Kv/BEBS3naFx1m8zxYz4lYotkqF61ksM3ZDA39?=
 =?us-ascii?Q?MHVSWRo7LfobTKMqiYTMgRCmvbmHktwm/ujLWGovxRaC1mQmwc3SN0XuQzFS?=
 =?us-ascii?Q?sH2jyQjfJ6APJQdSyCjFr2/X5+bl6u5L6t+omYhtzF416F4XowP4k09O4kr6?=
 =?us-ascii?Q?Q4x1lAQ83jWY3lSZgrlKRCIpPaxuuqmQl+bg30scEO4InY1ZawaUNNDWNjUk?=
 =?us-ascii?Q?goRCHyovg38YIGmhxmYYzjfnuvd7m4+EzpJlWT5iVzixcNffd3YK5CZKSNJz?=
 =?us-ascii?Q?Ghqto2BQrEeltst22d7aK30H91cG72If5BgKQrWoSJQve6bnS2mR7uIuqB5B?=
 =?us-ascii?Q?5qHi61626RET351Y3Lw5kCagxfzss4g5vHCzc3QCJHhKhmD5NhQ2LDxyHlLN?=
 =?us-ascii?Q?8ErLvx1bsuILGLoRXqWE1fvRfVh0xdFiFFQZVvq5mj9j0nuOHsYelDK6TcBs?=
 =?us-ascii?Q?2IX3hus5sbHDtItTpoJ8iznClhH9OfY/wVlQ1+bCZZ/y+12gFRodLFsf3PCV?=
 =?us-ascii?Q?MMwXuVpNV1T9W/+j+kQvbc0TwXuktZwNbBhRkJpheZnYc95FpMKBSWOGa/Xz?=
 =?us-ascii?Q?dtB7qVl0XOnd1uDpHxSzYgsduny9VqNLJiihasYt8PySJdf4aLhSlcB4viEN?=
 =?us-ascii?Q?fFzB3MO4NxEuRV98d74+aJWOiwE787bQ1xvU9fOFzfHCIiZMHBCj21Gg0i9q?=
 =?us-ascii?Q?dFqsX6/j/xo1XsFiKjX+a5Q86VgyUdhhBizXf0aarV4EFbMF75fIEgGHO50V?=
 =?us-ascii?Q?hwNAnDG6E77rI3TiD1RBwrk/BptO3+64lrW+QDtaSp6JERwbRdfDuqHlWQ7t?=
 =?us-ascii?Q?fTw2O/YWklbtgkkSZcQo60pNFiggJZNG6t0RUSkmpP+jOoBvi3xqiflSrUlj?=
 =?us-ascii?Q?wCqVRykeKQ+7EjAo2wgjvYiz6onGlHwz+OUaI4rm3lnrMDATElxfjehC2J1J?=
 =?us-ascii?Q?prT4zmnrb5izQtzgCC3tq8na9m9+rlJrzsS1Y3OX2JaDL0U3y93awt7/cBcT?=
 =?us-ascii?Q?r84DGCU3bEJvxqFzLSVk+xhkrPT16nEzZSoHj5o2h2HTRFmzUHOh9SdkzDkD?=
 =?us-ascii?Q?Ae2tbwia33MWeKsni99Crnz1K4wuWyZt0HcA4FD8nJIhwScUt+i4dykcZofW?=
 =?us-ascii?Q?xaDK2r2Dk7Yfu0osohbPMZ95Jrzyv4Pz8KBde6Nq7kmm4RUJCweggz0YqipM?=
 =?us-ascii?Q?v4k3CxB8jiLDQSQbb+DPP8AG2hFrLj9IRVG0B20P5uZBCUptmGPRnt/Ze6nL?=
 =?us-ascii?Q?gUJU4M3kL5iT5Hf+zfGqIR9+frH3E1FRno1V8N0GxRBwNBFV3oYun7vLSXpO?=
 =?us-ascii?Q?bj99SXIzCFgl31m/amVppC2ggvbobEL2OkTiZhs3?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 82139c9f-eebe-4e4b-9a91-08dab2509c0c
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2022 04:07:31.1077 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NM3ENcOlNIKnl4hnR5qaZRH9Hf0ZULCTzdH6ZEX0RIKZ2Jg8HohsQI+6kFxpsQVQc8+ISaSjEjB/X2JyvaooRQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7561
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666238879; x=1697774879;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=J41JFvVfina5QiL0ahKfo5VppgUHYrEOOQa54K++cfU=;
 b=XyADdnpkO/V9OekjsMs4EJhG1JJuHWfRzVmV3UOGT9gzIbGfVBZ/7ui4
 hzKalKp896Cmw1Gn7eNHBZQIHkO9s8csQ2BXluJixZJIBZ1S1b6WATvwe
 XS4THknquA61hJRamqeQxp5fmYzA6wDLGpA+IFHenBDwXhW5HAPXYOwdD
 MNnHI8gzCu3XXFEp5hKVSxufRyNfjhPd0sZFZqvBr1zLI43r0UD51FKPi
 dWzFTstVvbRWPPtpR5xBgr4VNsHCGOSCBOWT96r9g27BexCC7518kApsb
 s2270CirjuZoBDrJR4Rc0qCJDcezgtxfX9HqqMMdyZp8C5CARw0z/Lp0W
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XyADdnpk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH next v8] ice: use GNSS subsystem
 instead of TTY
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
Cc: "Kolacinski, Karol" <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Arkadiusz Kubalewski
> Sent: Wednesday, October 19, 2022 3:26 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kolacinski, Karol <karol.kolacinski@intel.com>
> Subject: [Intel-wired-lan] [PATCH next v8] ice: use GNSS subsystem instead
> of TTY
> 
> Previously support for GNSS was implemented as a TTY driver, it allowed to
> access GNSS receiver on /dev/ttyGNSS_<bus><func>.
> 
> Use generic GNSS subsystem API instead of implementing own TTY driver.
> The receiver is accessible on /dev/gnss<id>. In case of multiple receivers in
> the OS, correct device can be found by enumerating either:
> - /sys/class/net/<eth port>/device/gnss/
> - /sys/class/gnss/gnss<id>/device/
> 
> User expecting onboard GNSS receiver support is required to enable
> CONFIG_GNSS=y/m in kernel config.
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Michal Michalik <michal.michalik@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
> v8:
> - fix example path to gnss device in commit message
> 
> v7:
> - add blank lines around 'GNSS module' paragraph in ice.rst
> - mark '/dev/gnss<id>' as a code in ice.rst
> 
> v6:
> - enable support for CONFIG_GNSS=m
> - improve commit message
> 
> v5:
> - fix "ifeq" in Makefile (wrong usage of string)
> - fix description in "#endif" to IS_BUILDIN
> 
> v4: change Makefile to build ice_gnss.c only if CONFIG_GNSS is set
> 
> v3:
> - remove unnecessary #include,
> - change the IS_ENABLED to IS_BUILTIN - right now if GNSS kernel subsystem
>   is not enabled, we also won't enable it in our ice driver.
> 
> v2: fix sparse check warning, remove fixes tags, fix commit title
> 
>  .../device_drivers/ethernet/intel/ice.rst     |  16 +-
>  drivers/net/ethernet/intel/ice/Makefile       |   5 +-
>  drivers/net/ethernet/intel/ice/ice.h          |   6 +-
>  drivers/net/ethernet/intel/ice/ice_gnss.c     | 380 +++++++-----------
>  drivers/net/ethernet/intel/ice/ice_gnss.h     |  18 +-
>  5 files changed, 167 insertions(+), 258 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
