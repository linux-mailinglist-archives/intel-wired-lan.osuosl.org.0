Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A15C4809A96
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Dec 2023 04:43:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DB65C4058F;
	Fri,  8 Dec 2023 03:43:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DB65C4058F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702006990;
	bh=lYnfmj3wtWtloH1CeD89zhKYLRGl0jU4UE/zMN6gESo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5QQXxqG2mkodZ51mZPe6iIVtfUpv+uo9GJdoWwGWW5VOcja2eWj+lFzE/bKnF81QB
	 IgMi/FxrhQUzFNx4q823uSir2QeVuxOoWivIGAumfdCgU8ADIjMrdeG5SmngBlY0qx
	 DOwYv2hnIGSQ0ffSkacCl/YZSUMpEEPnQD41RPwDxTJchNZ/ZYa4TbuAElH1fEutPB
	 gV4h3dYL4F1ZQUQsSqtz+uitfLGHbL3UWkdXE49AWWO1F7G9AkWz2pHmlvuX7LteCV
	 OeUz4kxFUNes+HgawkzTvhUtfMhLyxRpXhfejlLd+nL1Zp1sL79Ou5gNr8+fmzbLlb
	 TU5mh+g7/3yzQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hRQs8ofmCyTN; Fri,  8 Dec 2023 03:43:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 73167401CC;
	Fri,  8 Dec 2023 03:43:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 73167401CC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E46731BF97A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 03:43:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B6AB060E8F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 03:43:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B6AB060E8F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sAekQcD2-vXv for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Dec 2023 03:43:02 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 76B6D60D59
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 03:43:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 76B6D60D59
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="384754107"
X-IronPort-AV: E=Sophos;i="6.04,259,1695711600"; d="scan'208";a="384754107"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 19:42:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="1103423835"
X-IronPort-AV: E=Sophos;i="6.04,259,1695711600"; d="scan'208";a="1103423835"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Dec 2023 19:42:26 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 7 Dec 2023 19:42:25 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 7 Dec 2023 19:42:25 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 7 Dec 2023 19:42:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UQ2jW9gz0tlC5YNZPP71V0vW0wVKJJdVHPkPaqiCHl4sREoULarjkeWAMIKKZAObVfTiDDNl4Xwhk9dIJE/yF4siPq6hJPtnj9dr8D9RWxDAjbXYYfGJr90DwZuW8M23NhgncoU7tV28VOXBhSIIUM4yFU0hrlAD2un4uDNE9Qnd06Z/QyPwmqsxFq/l3oeZ7L6s1X5RllsVhTuv2ZV9orLm7GZ1Z2DViYkk5reS2kTU2BEpOeuNH0+xct8FB2kgIoeFBycnCISrjMdHtrJjSg7dh2GAvLA30OxR6mmrnqcKMPOM4Pu2nWOrVFgUDtH2XdBebGtMVjATfwZqaVGlrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YPYYeQ0bwxEkZvQnUDKZOox5ADvCq+4sVsF3gj+NnB4=;
 b=ncwSAvLPPPiWgiD53X/FUp1rUss8YsqWxoojPqcko5IK/IrZCg5MPj5L9VlQBX4zy3IJFBQRMMSFT2wjWZx01Z1RLlguR3htrpjP/sg0wuLHyxo79A8fNiWjF802GMhbALtz/L7GV/btvn4ek6s4GZ1Ow4LvT4M0pXLTzn7TjDXwB8x75AFDVq55pwPebAC1k8lDQIWSuntTK9+AIUMYDlrRPLLd6vLvyPdAZuL2s36EGIeOFQb43tyqXPMycvITqLqeYkwvIGSN2UiS08Vuiy+a51MTdB1QRhad2mOcc9gLfzorLBvZzkaPrwe7h7/4VZY1TmYUlaML198pFmH33A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5276.namprd11.prod.outlook.com (2603:10b6:408:135::18)
 by CO1PR11MB5123.namprd11.prod.outlook.com (2603:10b6:303:94::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.28; Fri, 8 Dec
 2023 03:42:23 +0000
Received: from BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::e7a4:a757:2f2e:f96a]) by BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::e7a4:a757:2f2e:f96a%3]) with mapi id 15.20.7068.025; Fri, 8 Dec 2023
 03:42:23 +0000
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Alex Williamson <alex.williamson@redhat.com>, "Cao, Yahui"
 <yahui.cao@intel.com>
Thread-Topic: [PATCH iwl-next v4 12/12] vfio/ice: Implement vfio_pci driver
 for E800 devices
Thread-Index: AQHaHCWMRtdDji/zHEGUpzx0eLlIz7CehUqAgABGAZA=
Date: Fri, 8 Dec 2023 03:42:23 +0000
Message-ID: <BN9PR11MB5276B67DCF9D1538CD425FBB8C8AA@BN9PR11MB5276.namprd11.prod.outlook.com>
References: <20231121025111.257597-1-yahui.cao@intel.com>
 <20231121025111.257597-13-yahui.cao@intel.com>
 <20231207154327.4bd74c98.alex.williamson@redhat.com>
In-Reply-To: <20231207154327.4bd74c98.alex.williamson@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5276:EE_|CO1PR11MB5123:EE_
x-ms-office365-filtering-correlation-id: e39c8534-d442-4a14-354a-08dbf79fb02a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZZ70KETTeeKq7UiSMKhsO8Beteb4BQUELqjH3IlAeQJ0ZNM44JqZT4tBL88NJN8fejUTngdPgNkwNi7r4A8BWclYNAAOmlmwXNbHKRUYI0BiN3ZYluTXvbMLOrUOpkQPwghQNOoVvoqR69EjOg2LgZqjYALFbnz1xJQQCTdopE/MDjeqb9pS+KmzRr0NlwOGo4dO6F/SC5yhXLB60cZfWPwK/mQO6lU4RZ1jRB6Pw/LU+EgrPhFShBnEDZizojgKT78EFW3hSeiel7bdhrD3vZpMiPvbESf5EgItp09fkPEe5ZekIGpc6S/ZQEuHEvP2yVr0+APv6Bax/9fZAS9/16kc9wcL4jFafcGGeK5ur4DpoF6gbIEC+Znw8sUkjDgtDpK4INPoGWq2AzCBdpT1/lTpIVs8kGeR0ptHdIXV6kBhQCazP14CkHCYyQLXpxIIis7D1EBzV6wAO7Y21bVa9H2mJdm/vK7P4S8ySykfly/AAI6hlRh2fCGzKT6QArd+EOnFRPXok9bZvKKSUHAF9n8iWZVPlgS13SoZzHD0O6vHEdKbT9Sa4zx0i3u0lCijbXcQniSLkgOXewiE++8ErMcyCiN4BCuzGDMCUlaXIafCXRgQWHER7EcKSqjCib28L86MgjwleB/weCLTR5qg+GL/At33/NeIVjPK+Y+KnbQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5276.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(346002)(39860400002)(396003)(366004)(230273577357003)(230173577357003)(230922051799003)(64100799003)(451199024)(1800799012)(186009)(110136005)(76116006)(54906003)(64756008)(66446008)(66946007)(66556008)(66476007)(7416002)(6636002)(316002)(82960400001)(2906002)(83380400001)(55016003)(86362001)(9686003)(122000001)(52536014)(26005)(38070700009)(71200400001)(478600001)(8676002)(8936002)(4326008)(38100700002)(7696005)(6506007)(41300700001)(33656002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TT6ERm5wBSnodjNV6/crcb1St7wp1eY8cO8MW3edwPE2ZYjjPkwYeJqz9/w0?=
 =?us-ascii?Q?NSwZSkbRoW/kR0/36lraB1CRgtNF3x0pljlFJ36zAVWrnQXIFbMcuMqjTgzP?=
 =?us-ascii?Q?hwI0vMc8ZcCeAnCykSXWFEiJUFGT73fy6D+g6Bgm3GJg9yuKK9yX7VExOLe1?=
 =?us-ascii?Q?Y1BTgatLWx97o58SaGlrbN27BfG5KoRSZ/0r3CXSQQ+nFIAk3KqI9PLW8VE3?=
 =?us-ascii?Q?B94ZkP2NdUVmNMBfNXQ6dk3l2Q7aP0qAExk43/VaisUvhzi2creHVA1hw31H?=
 =?us-ascii?Q?5ZMFPl4zaqkdA0BpEd9lI/pVkmefDTGBOIawsQtH/NXn0k+zkzROTK/akZFn?=
 =?us-ascii?Q?9W6sdsHqo6Jocj/VMOgb0SnSbeGSALsaBF1MwODZJbQzwh2X5M7VTrKwDUd5?=
 =?us-ascii?Q?rKokfNoNGQDZc3BoAXDkFshwZjhc84K8gko8lpIaK3p2yuW7B38rpsZRrJtZ?=
 =?us-ascii?Q?LN1GYFt+t23k1RezgFLASwquQB7LqHl/mvfI0hdapFOet5hJ90y4HGwDCyko?=
 =?us-ascii?Q?bJmtB7z8RHY8ikitvnz25pWUCKCpzzsJS9PUyCdjw4ziK26agJE3ve9mWM32?=
 =?us-ascii?Q?Ku0Ql0SaSH+hiiC335d7KcUh5ndkzjNe6tI+EQ3x2Q6D7X1+O+lNpEcQO9Oq?=
 =?us-ascii?Q?jonvYjuzJnGO2/ABe5LleF46eUJ4IeHymGJdEZ5HZ9gbK8/KXRnna4DCOin9?=
 =?us-ascii?Q?b5pRe5XPsgaSV9b7XXTSE1dkRYKaCqO4GU50sK9v9XUg2hTE2ZcWj7S/M/+5?=
 =?us-ascii?Q?zW9uoYiaeWtz6UlleNFhtWsQtUJmzqYmJ74C8oQvQLmXCozRAqRSAiF7Yn3z?=
 =?us-ascii?Q?LsflZjXA5zB3ibnN9E1FM+A/Opea+mrTczKpNM6g3zOyUzArCDJCxvrq20yX?=
 =?us-ascii?Q?SgLRzd2QbaycVn4ypEDzSFSQY0+t/0iDjjEFpwBGru/W+ZQMZ+JUB9pT2q9j?=
 =?us-ascii?Q?8Zdv2ObUMHB7d+FvfzpyYc6/RS6/Bj0/arhTs5piWIzxWqn5LoAY4wk/xEHs?=
 =?us-ascii?Q?nwpCfO5Lmru/stAU/gV1A/zZSwij7eYz3oP3cdudvCNVgQsPVAl+7F8uT4fH?=
 =?us-ascii?Q?AoVchhta2G0r0uv91QXMnVP9Xx0gGIgAB74gP86QWH3Fyx1dKaocHva4Miex?=
 =?us-ascii?Q?pFz1cKVw7N3toNy328ptZXXYvSlMhpYIEynd38ZdkLnT6gn5GWF9G4IJ4pcz?=
 =?us-ascii?Q?rgLE7PtkDYNnf92IKFpChkK5lSaw7YiZhnbI+2c3G8H1kyGPtw5yQi2ogkIg?=
 =?us-ascii?Q?71CcpR7wYv8vGo/qE7JygBFikETNANwnsH/xEwj4UmPK2I6e94taNFCWWxE6?=
 =?us-ascii?Q?WYjw9xYcErJlAxRAzIaiXU4A1fJwx3lkbHiEu5pbQTC1awLr0IA032t9NB9M?=
 =?us-ascii?Q?RGwtHToE0Twvg6sFMQ4mkxl6TnhkBdoEMAxMY250hYmd0JBZr51grSOdBssI?=
 =?us-ascii?Q?qQDCHZzxLcSbZXXNEz5PpUysK0HlN3DZVHA5iWczTmf/gdq9AbjnEXL41aQG?=
 =?us-ascii?Q?Dw/jDPm536OtRDr3ikUAAi1QVDEaNt9jBefVllsS3CO/CGuP1brHThQnB3d0?=
 =?us-ascii?Q?5VH3SEct4A2d7yDSTrW9U6ises7Ph/evaFE13RoQ?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5276.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e39c8534-d442-4a14-354a-08dbf79fb02a
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2023 03:42:23.0447 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J+x4LKMHd2su0UMKzJYD6cIwjVuPJMMEr/1H6KjfbsG+Z8jWTISdfU0ismFUUYgcaMO1ARmrybEWK1szlQdpGw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5123
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702006982; x=1733542982;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=L0aPB/0kx7GYAD5aNSyy4sjDz8M7QgNcwz/dbUOftWc=;
 b=FC6bweuNrfuch6gnagZQCXKH9o7qOvriA5+8vrlWgIHD3hE2Il0T47Kj
 plHTu9fsr/2ARoAQN73lOpV/lhutWUlTxPHQQscAetubVk+wM5bTh5EzY
 CcIn68cOBeOsjtHCHjAt9vc0wfvPhv6/5OuPfJ69DuBOhgR7NGWYmEcaz
 VY8rVMmzYRArh7EupGSygLoMSsmWR2x7BFQ7JpVeJddjoIE/Ilk6/WMEt
 SSEBmOAY/nOijBn6UTohO3L2RoNknOnjB46CT72J7Bn7QcDbf3UeEd1iq
 yWZzbEgL/zEWzO1gXd+CgFeUYdU3uIj7rm73YVhVoY9dYWKLiGXW1RE7U
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FC6bweuN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 12/12] vfio/ice: Implement
 vfio_pci driver for E800 devices
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
Cc: "yishaih@nvidia.com" <yishaih@nvidia.com>,
 "brett.creeley@amd.com" <brett.creeley@amd.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, "Samudrala,
 Sridhar" <sridhar.samudrala@intel.com>,
 "shameerali.kolothum.thodi@huawei.com" <shameerali.kolothum.thodi@huawei.com>,
 "edumazet@google.com" <edumazet@google.com>, "Chittim, 
 Madhu" <madhu.chittim@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "jgg@nvidia.com" <jgg@nvidia.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Alex Williamson <alex.williamson@redhat.com>
> Sent: Friday, December 8, 2023 6:43 AM
> > +
> > +	if (cur == VFIO_DEVICE_STATE_RUNNING &&
> > +	    new == VFIO_DEVICE_STATE_RUNNING_P2P) {
> > +		ice_migration_suspend_dev(ice_vdev->pf, ice_vdev->vf_id);
> > +		return NULL;
> > +	}
> > +
> > +	if (cur == VFIO_DEVICE_STATE_RUNNING_P2P &&
> > +	    new == VFIO_DEVICE_STATE_STOP)
> > +		return NULL;
> 
> This looks suspicious, are we actually able to freeze the internal
> device state?  It should happen here.
> 
>  * RUNNING_P2P -> STOP
>  * STOP_COPY -> STOP
>  *   While in STOP the device must stop the operation of the device. The
> device
>  *   must not generate interrupts, DMA, or any other change to external state.
>  *   It must not change its internal state. When stopped the device and kernel
>  *   migration driver must accept and respond to interaction to support
> external
>  *   subsystems in the STOP state, for example PCI MSI-X and PCI config space.
>  *   Failure by the user to restrict device access while in STOP must not result
>  *   in error conditions outside the user context (ex. host system faults).
>  *
>  *   The STOP_COPY arc will terminate a data transfer session.
> 

It was discussed in v3 [1].

This device only provides a way to drain/stop outgoing traffic (for
RUNNING->RUNNING_P2P). No interface for stopping the incoming
requests.

Jason explained that RUNNING_P2P->STOP transition can be a 'nop' as long
as there is guarantee that the device state is frozen at this point.

By definition the user should request this transition only after all devices
are put in RUNNING_P2P. At that point no one is sending P2P requests to
further affect the internal state of this device. Then an explicit "stop
responder" action is not strictly required and 'nop' can still meet
above definition.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
