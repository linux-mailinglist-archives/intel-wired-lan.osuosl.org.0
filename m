Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8189C6F6FF2
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 May 2023 18:32:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 95E6B6165A;
	Thu,  4 May 2023 16:32:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 95E6B6165A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683217964;
	bh=k2pmJdMA3H2vMLlFcOSg2HJBcD1+BMi4iBJmk6mQBUo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OhNe659CCBsxFxdD/8v8lL60TvMs1yWPzr1+sQTQ1T8qWs8ojiFRJkkN6ufr8oPtI
	 WR3Om39Kk1R+BltWAX2GP6mkGISw2uv4npEupRJbUvfwnoLVGhykt2oj5yG5zuiBv0
	 hdU7rMrUYw5HilYjm41tGQVRPXWbDZmk9QQFznsLm+QxGi9+9lOlEnHOfNHH0LJArf
	 6x37XVmbK+Y+22y1ovL2IpJBAETDRMnjQpnqVJIkwQpeM8PRw0KGv17Y44AzgqTOyr
	 VzjV1Hm8SI/nzM4bcKwr/341O90WWVv0H8V8eROFokOWk6uuDFlAVCh7ZFG4w5pcSZ
	 UhF4h//Ms++iw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HGBHCzUduWWf; Thu,  4 May 2023 16:32:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 73E0F61659;
	Thu,  4 May 2023 16:32:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 73E0F61659
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0A2821BF310
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 May 2023 16:32:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D5B5061659
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 May 2023 16:32:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D5B5061659
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jne8IeQL2GM9 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 May 2023 16:32:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5C8C860F07
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5C8C860F07
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 May 2023 16:32:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="414483545"
X-IronPort-AV: E=Sophos;i="5.99,249,1677571200"; d="scan'208";a="414483545"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 09:30:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="808801155"
X-IronPort-AV: E=Sophos;i="5.99,249,1677571200"; d="scan'208";a="808801155"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 04 May 2023 09:30:05 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 4 May 2023 09:30:05 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 4 May 2023 09:30:05 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 4 May 2023 09:30:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B9GTGb1UokoOIfmOQZxgYwThy5lao/XOqIE2xK0EpqKTMtYjxVkqoYEO8kw1VlmHHtXcERW3h/45/pBawz93LLPLTOh81CyPylJBQb72AawkgNd5canNS9K5+fw8KTeS9PkIYOpsf9XZ++plZYvLylebWHT+8kKkdxBGJyc8K/8Ek6uKtS5R39QugdNrdz/G1B+v1RrSSdOHCC2Yqwez+oMy31a6mUG6m8Iz54PykqqWun2EfBw8dE9NOfnAIoAoVAmjOvNFyKlcX4K6fcds9yoNmQalyz+odzJ2deP66Q3WEy3e+T5VQhg/0LbIxNUIQNUCY/zPumnQrTHg33Hw/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T+JuLKfXsX1TBOi4EOS61rnC023mcQMUbpcYGLA3O34=;
 b=BEtuDNn0u3rTrPBem+4v0rujB5leg6oAu0qUdsmzlXXqwnzzc7OGSitfJIziPq72HuoFCCdJJsU0wnGI2+a33/9BIGuzpOOLobJX9ixw2qU1xiSizYIYscd5lSePdPE7O6JdiQ/OBMhk24t7LHJ1pYdNlGe+Oz6TA64MuB5BzD6wRsCNNx4olyMbAJAOGnwLeW2Ec5FBR8orRD18aPlkeiB8RTe7sSuSZUpttWSDGM4UZQ5rsXtOXLETV712LFkc/icPRmUO2vWCcgRsGfOm16SHjPpONjdcLkabKM6FNMpDRX7t/h9+CtJoN08ARmYKUb7r3vWpeYHfTBVzYghkYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by CO1PR11MB4994.namprd11.prod.outlook.com (2603:10b6:303:91::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.26; Thu, 4 May
 2023 16:30:03 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::a4e7:9fa1:19f7:6a41]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::a4e7:9fa1:19f7:6a41%7]) with mapi id 15.20.6363.026; Thu, 4 May 2023
 16:30:03 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Tyl, RadoslawX" <radoslawx.tyl@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2] i40e: add PHY debug
 register dump
Thread-Index: AQHZfqWrXOEtgwgxaUGN0pmmmx5n1w==
Date: Thu, 4 May 2023 16:30:02 +0000
Message-ID: <BL0PR11MB3122370D9AB50C8CEC9B813DBD6D9@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230425114402.3413096-1-radoslawx.tyl@intel.com>
In-Reply-To: <20230425114402.3413096-1-radoslawx.tyl@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|CO1PR11MB4994:EE_
x-ms-office365-filtering-correlation-id: 91211778-3b45-450f-01fd-08db4cbccfb6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1SzVjuo01NmC23Frru4YOYBnki3LmjY8dJMA73+5tHO5ho+Jnku9xdXnz0VMI8TGqdmgbT9BRV+Bimv3Tdzlt445ab6fFxQndI/PxHPYE4+3Kb35oowyaO8yi5B/9ft8gpsX9jkRZZR/wLZzjtVid0j2OPC9plHDeY2t80nubc3o2jgKi0aS5tgDRUCO+Bzi3iRNymDS+oDWHRK6QXaxRC7cngAgRv5nA0vqZ4OLNJP9lacZkg5dtTXT5DMc6SNYDGkhEsE/R/GzEZeyYagcUZnEE70xaIMbEuah3TcVf4h9ISIpDAM959fbFzBnIBLinwZRETj4EpZZqkRD5igFNNViTq0Bh4XCSet7HrV1hTOeAsvsY0kNI5WMjZR4Xqwq9PTtH+z5c6wq5DE5VWrd9yo8e4WrSHj6pPRsxFbFZxHWT+Z5rvRnC/Yc8pxSe2mJly3CMnCVaLAUi//kRPuSx5dy8v3m97rrWXP+gRkRso5PawktEcUyMpnXUp/aX6Yk24EhzrjGR9gERrHNgiqMKDaWImupCX2vt3FYO9IL4AkGNbRzZa5ijF3ZGjDVv/nyoDsKYMkpGwX0CxXx82Y5XcewI6H5KV/E4iklTdrssz19nxHX5ZHKo2aUzHyLTvxj
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(376002)(136003)(346002)(366004)(451199021)(52536014)(38100700002)(122000001)(186003)(2906002)(4744005)(478600001)(110136005)(82960400001)(6506007)(53546011)(5660300002)(8936002)(8676002)(9686003)(38070700005)(26005)(7696005)(71200400001)(76116006)(64756008)(66446008)(66476007)(66556008)(66946007)(55016003)(86362001)(41300700001)(83380400001)(33656002)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/+ceOXDlp8nN+lRcEe+AMGinFVJnVtXIVv0zf5xPOs0i+VbnQBuwejjp/zLL?=
 =?us-ascii?Q?hsk//VzldlhoiFncCTKetQt/gnzHSb8i7lLSA4HI3sPvA+B95YPNp5CbnY9P?=
 =?us-ascii?Q?HmjZXZzxsIetpKCrxN+iO10ZHOiHJ6NCosnTIXf7lywB4fxDmw9rTMRp9srb?=
 =?us-ascii?Q?xAC/CHV694pahsMmtRrukwNC83POtOYPhmxQ7jI3gPYaquPrCCFImeyChcoE?=
 =?us-ascii?Q?aLkS5PHUnVbX+AjDCJrLWS44SMDnLS8vNiHM6i2f3xVWDJLZ/l/epotBNOz0?=
 =?us-ascii?Q?K53l/R8PbeS1wrlRs4hVzOdf+ZI2xkn0+gxbICP9c8E7sRlLLCm4t1aMtStX?=
 =?us-ascii?Q?zDO0BsNDkKdQQVKZNjIZeUqva4L+5YWsolMlMVmGUic/Rn036oSDMkdCLk0z?=
 =?us-ascii?Q?FJax/Isx3MG600oQ8s+45kTA6fyihIn5XR1tdo19cdRhWZAzIWsdXa/szwza?=
 =?us-ascii?Q?FF52vOjEeBehFd1RSsSsUF4s4ymSb4o5/SdOeaW15J4WQglmT72IQgjCWVUk?=
 =?us-ascii?Q?bSzTXgYdASeAaY9p4FsL8BJyS+X0y1TiQRo+DVLbGaS4SH8KvSe4AO/jmjs6?=
 =?us-ascii?Q?Bsrky73YatIth+hBUKxlatTYlxbE1kQsX5uyzQtI74NGPM7C194o6mQddel3?=
 =?us-ascii?Q?sx9BHa+tIX3ZxgG+4AkQu44F/Q1wmY/XIVFzUR6DSSlp5SPZeaPPklSP2q+4?=
 =?us-ascii?Q?EKpGvxMPXcVZqHz22Z0VdsIfJRYkG154FClptUhDVooIaZEjkmxmcC7GLDG5?=
 =?us-ascii?Q?Rb6bSFPGSUD0RmWqZ7VhTayri6PFEKMDBebKwPuBt+wtMCkwsD4RW2b1Qeld?=
 =?us-ascii?Q?MrJwKjzSduXN8s51rJdj3wwqa/z3K5Ce5HhPnoDMviTGVFWsK/dx39ONmI+I?=
 =?us-ascii?Q?T1uA7jQ1cPa61escwZwKLwt29fXjmYbHiBe7nQCJmcnc2sqZKRk6J7INDEZU?=
 =?us-ascii?Q?+ZnXVz7wckA5/fhPVAhbr8culCeJTDW5jbgKY051oyNQebzJO2tWBEC4y6Kk?=
 =?us-ascii?Q?OG2VP0LePT67vycpw5VbFp2OQlAVr0sARcjgbcfOXRouFu97Ck21P8zKV+nW?=
 =?us-ascii?Q?SB1udJ10mwSd67a45qzQF0lIXFsjMDioPxu8TLpnYDU7Mblfi3bVOG1H9tdl?=
 =?us-ascii?Q?eywhYhupnl/XstGNDe98Ixhqo5S63GUcARDApvPmXNAkXIpKVMuEQjD/UCeL?=
 =?us-ascii?Q?6YqLiqMGZn5Yauf5pPUZh9PaKsD7CSXxD8i1vSFDpvkvqBQWsk8CmS3+ddmM?=
 =?us-ascii?Q?N2Z+/VH9kESRexZNrrb0q2Yy0BlJp7n/Nnhh/eFx7oZyj/+sXW0YKJ/UajxT?=
 =?us-ascii?Q?94t4Ke1FOPlPd7SiWP20o54MLs2znhERH2gQWHAC2fRr7eIg8R6nPz1u6iwk?=
 =?us-ascii?Q?VHm3bYUAzIEc+/5rIhUFRtu4bXmdkJ/scLVGTRi4RaECkfNuDPdAF8GYRaJS?=
 =?us-ascii?Q?C3ry5X1OdZiyewEmr0HUnVGo9rXUaah29r21FWaGz5CV7m6yfOQ7jpMBffX+?=
 =?us-ascii?Q?Bo09uVQbbbObItNyZhUBFxIhBnEgALu/AC2kfQ13UhWnQoBF+lTY9CmkKSnh?=
 =?us-ascii?Q?2vekKAG4or0NpyKYcgKfnLDyauZd5rdOvIT5ZY8wA7ScSy1xlL56LKtz0ppj?=
 =?us-ascii?Q?LQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 91211778-3b45-450f-01fd-08db4cbccfb6
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2023 16:30:02.5054 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9J80DITm86dy/xZUTW9rg0H9rt2757Wyv7+wd6OqiMQsIxeTGBrBh+Nu8lKBviACmgWjqwJCsDkkStTJ8LEnotPOddD2QvAhQxg7X6JIR31nD2fg8Qb4FZdImWYzJoMQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4994
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683217956; x=1714753956;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=sEpJwu3joj/cYClI/z0uoY+NFay72/j+tyWwZk4l8KU=;
 b=g5dLxUFsQaqoZQV4C16Z9kfz1E4bASZsC9grRtqLn8sDzYtSadY/1KrQ
 A9580FnNT6WavGEoJUS6dM1nOdpL48ak2tzGUYOJQ/x9Sc1obBjXRl0XJ
 qfc8jV6mqk2TAEVI8hk4j4Eo+lJyMfNJDGu8N2o0GMou5Fl+h52/KEc07
 j0A+UCKKO29rrPcQ8wa1r3qtCXZthTRHj1iVtO7+XYz5+0CrF5KATtklj
 kzoJX7a4CYDAx+MI+S5T63MfMlS8ozHIaXXYjucrtjtdpTqR8EiRLzq+G
 VUlSkvVEjMSu7rChIE8sxpzX1j6ZhzPdUrkfPt9l9iuEjLtRT//u/U+YC
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=g5dLxUFs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] i40e: add PHY debug
 register dump
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Tyl, RadoslawX
> Sent: Tuesday, April 25, 2023 5:14 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Tyl, RadoslawX <radoslawx.tyl@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v2] i40e: add PHY debug register dump
>
> Implement ethtool register dump for some PHY registers in order to assist field debugging of link issues.
>
> Signed-off-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
> ---
> v1 to v2:
>  - fix sparse warning
> ---
> drivers/net/ethernet/intel/i40e/i40e.h        |  3 +
> .../net/ethernet/intel/i40e/i40e_ethtool.c    | 72 ++++++++++++++-----
> .../net/ethernet/intel/i40e/i40e_register.h   |  8 +++
> 3 files changed, 65 insertions(+), 18 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
