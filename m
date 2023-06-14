Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F124730B11
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jun 2023 00:58:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C520040914;
	Wed, 14 Jun 2023 22:58:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C520040914
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686783514;
	bh=j8lDxm/ILpJ42jEeRiWeGpi0QKLK/CU6Ekj4tDd3b/U=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ios0y7ITUaf/FWWLHNgK0Jo0v+LnsDFB0XVvk3bIMXirK8KsHGjeK5cIm72UkuAFP
	 b7MF7ToMHKGEsWatOjx04yqU4O9Q2K8Maszctodn2PLE7PlNZIRUFhU3BxmlwZpY3t
	 Xd0qn+5BtWQ3aXZUAVpEsXg1w3diX4QUxKAff759qqh4FtQC4UqtLm9CA1qFh4DC3N
	 5AbFdnSS3f01OQz05ehYnip+ijujkxQcpiSKXyo3TI6fmirDKaVQ36DOIAgTF9J96z
	 DRhB3Rn7CPI+S9bnETAPGUWfiLtSUwC1VXiEEYQo+Jtb9JyALgIsdxoZ8MfeZV1uTA
	 CFRwxfhpqnOGA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zecsPgqLfbUC; Wed, 14 Jun 2023 22:58:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1CD86404E8;
	Wed, 14 Jun 2023 22:58:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1CD86404E8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 831C81BF29C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 22:58:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4EA3C404B9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 22:58:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4EA3C404B9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dkmCDEvgERj6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jun 2023 22:58:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F13774033C
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F13774033C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 22:58:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="387170967"
X-IronPort-AV: E=Sophos;i="6.00,243,1681196400"; d="scan'208";a="387170967"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2023 15:58:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="706405113"
X-IronPort-AV: E=Sophos;i="6.00,243,1681196400"; d="scan'208";a="706405113"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 14 Jun 2023 15:58:25 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 14 Jun 2023 15:58:25 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 14 Jun 2023 15:58:25 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 14 Jun 2023 15:58:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AvI4sG2+iL7LBZxFZg/QkX0QbHgFokEbIJchdAm6yKMZWVOR2F8ottnd4rAKsKvjedw8LBnehvasWEUh+we3swEXRi8TTe6+AH7rlqmoFfVQRtJ3jtFbViY+atCEkgtJD5vlDaPx8x0MCbkSQYgMUDvbFPSxlU8DprfCaQ9Yju2h5bGycdrxnfKuOFb0OO0/1anuMcOciW6o/rIMWy2xzDtRTybUmiabJGtLlEHrMuf8wbbDbWoEsWVWZzLF4/XhGVdNIipb6gju+0hTecB96rHi2Vej8YjXMWaf98oPXmiObPP+enBWk6A4wj5VcjxGOXut/znLBppVoHp94QRH8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d1MBmDMmcBN873A3YH+uUJQh7aN3obWyhGzsgbbRrOA=;
 b=B/4+SDnJf0yL5uw9k8cly17tk9MNB+zo32Xjgmmri+BTjvX/5Oe6is/8Szte0y1jZhuYNMyKD106WSUji3s5ua0qDwRXylL/io0XNy9wY6Fe3+efWGGpMFWDFngj9LUtkmatnYU5gYSzqX7FHHO+GuEHsTutC2LVjVfC2OkfYtR9wC76tQewEEQOlGP3tRaomGIBF7a9bO6yEp4Kg0oP/jbRRvJ+Ma6LQuP7Ukc+/ARnLwH8xHuUcTV11JcUzRegsIoClYyr347F9AnP/DVPV17tykQNiK6VsLwsPTbJIFtIm6vbw3SKIMsUhbmd6jbRtXYxruLnlPQn7a05QeG6lA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW5PR11MB5811.namprd11.prod.outlook.com (2603:10b6:303:198::18)
 by DM4PR11MB7758.namprd11.prod.outlook.com (2603:10b6:8:101::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.29; Wed, 14 Jun
 2023 22:58:19 +0000
Received: from MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::5e37:38f7:33d2:137a]) by MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::5e37:38f7:33d2:137a%6]) with mapi id 15.20.6455.030; Wed, 14 Jun 2023
 22:58:19 +0000
From: "Ertman, David M" <david.m.ertman@intel.com>
To: Brett Creeley <bcreeley@amd.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-next v4 04/10] ice: implement lag netdev event handler
Thread-Index: AQHZnwaglZ7ENpsem06wiMN1siC/Ia+K5hiA
Date: Wed, 14 Jun 2023 22:58:19 +0000
Message-ID: <MW5PR11MB5811D84BB9769C3FE5D0AEA8DD5AA@MW5PR11MB5811.namprd11.prod.outlook.com>
References: <20230609211626.621968-1-david.m.ertman@intel.com>
 <20230609211626.621968-5-david.m.ertman@intel.com>
 <26e4698d-fd5e-feae-b9ee-fc3ac35c7a1c@amd.com>
In-Reply-To: <26e4698d-fd5e-feae-b9ee-fc3ac35c7a1c@amd.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW5PR11MB5811:EE_|DM4PR11MB7758:EE_
x-ms-office365-filtering-correlation-id: 86c9b00e-c233-446b-bb50-08db6d2ad8e2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Cr0fYSaCI2ADHm6TRCxy1FiIulvQA8uAMCngDJzvLN5f8T6yFd59ShN8gIXvfh5mYWIgWtMCryejpQ0zwkYopGONb7hkYxBlgo9KVcUouQZhL+5eMgMuDSiza3XOMKbUoT+h50NXGQ49XhYy2p/YTLQRfGfULjVrycr2Rodmo1SCAWng7p3MVk4DQlQrr/w4ENylk8npeE82GRtRWwjjbcn1lFxDA7evfnOfJFppD5a8qjbxsnRVrZ3XBv785CfQYZYjRJVF8efWVycePGrG+6OeXAtFWuUp5ZnSikq5d12SLAVshLDZ5YiEvnsRZRXMfENwoC+GwcH8SBThJmG6ihISSd2HF6MSCP6Gu844wB75fAeXQqAwmctxD948bp5ArUnGXY6Bcksekoan7oeqyq7kh0gTT9F0t6bI97t9QaMbGe29naz+sGaAtvLr7Qeq5ghr/99QFHdyuM1jMt//P0f7C/aYfvkufZiqOWfy1fO7ZoQNfQWktd6rLsPiO9pPIyiR7ly3wE4od+qN3rWtmnSK3QFZNzuUWY4v3GPR0w9Link6SBRLCUrVKpWm9Hoq1sQsvW/lLEq73q4eW3sWRGo8Jf9nNIC9WAROuGpu0S/OsP7GSmhkA1ut8tv/5zlI
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR11MB5811.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(366004)(396003)(346002)(136003)(39860400002)(451199021)(7696005)(316002)(41300700001)(122000001)(2906002)(9686003)(86362001)(6506007)(186003)(53546011)(26005)(38070700005)(33656002)(82960400001)(55016003)(38100700002)(83380400001)(5660300002)(8936002)(52536014)(76116006)(8676002)(66946007)(66476007)(478600001)(54906003)(110136005)(4326008)(71200400001)(66556008)(64756008)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OGUvVkdoU2V0RGV2Qk1Ja2VZTzVoQmxiVVAyeWNEM1VzZ3JvVTNiSXdXeC96?=
 =?utf-8?B?ZGdTTm9Sc3hlekhNZ3lXYmdMMkEvS0JzbEJsNGEzY2xyd2NnRVk0TUJndDFG?=
 =?utf-8?B?bTdtK21xRjAwcVNpaGNIVEx0S2hGRjJHdmcxRmdJaHRJZGI2akxsTmNFSGJB?=
 =?utf-8?B?bDgwZDNqUUdrM3B4VElQTE1Xc3VzbnQwbXBZMnJPN25uSUdndmsrT242OEpE?=
 =?utf-8?B?eHhhSVc4Y093TWRpd0ZBVVBOdjZ4Z2h4czBRK1BOSW5mc0Vxd2RSVk82YXhn?=
 =?utf-8?B?V2dIOUttK2ZQUzVaZEtiOUZ5RWFXTkYyZXdXcC9zRUgvTWJhSzNIajBkMDNY?=
 =?utf-8?B?YURhbUR6Q2FOd1ZHdkgwemIvUElwOGs5Q0ZnbGxjOURLY3pOL3EwT1plOGwx?=
 =?utf-8?B?eHpRanFZVHdxckpHY05hVUtKSklCM2hXNVdXY2kxRXhIM2JYb2F4VFR4Mk5Q?=
 =?utf-8?B?WFBYK0FqUXNyczJjdTkvTXV0R0pZTHR0c0lYVk15L1k5eS9CQyt0blVxY0Nx?=
 =?utf-8?B?OXFkbWROaE9ZUE16OVJpSjVMb2JqQmdQYXdCYjNRK1QxRXFHUUpnbjIxOTJy?=
 =?utf-8?B?R1gzSi9vbzNsOWRJMWlVb1ZsMWtMUlI1U3FtS0RmMlpZL3l2VFNQTDQ0Qjcz?=
 =?utf-8?B?SFBaSGNPQ2JVQU81LzZrOFBPQUpRbldOdk9qaU41N1FMZ3Q0RkxuR2NPb3JC?=
 =?utf-8?B?SkRBSnJ1bGJXQnA0ZzlIUUZEQitrZXhKWm1yV2tQeUMwdUZHL05Xb3RRMVpi?=
 =?utf-8?B?ZWdSS0pEeXhqYzJETkFIOUlSUUttaXZjSFkrTEkwSUM2MTZxbFBNVkNsZmNS?=
 =?utf-8?B?eDFXanFQanBBZnBRR1A1RlFKUUpVMnpZUjBsdEpnUEVhT2ZZYnd4N1lxMkEv?=
 =?utf-8?B?Vm53TW1oVDRmaHdGb2hXRWEwMHgxWU4xUVRiK3cwVU81MXUvM3BsYmY2OHM4?=
 =?utf-8?B?NTd1Y05iVlZqeGxpZDhVd2IzZmRNMEhBU2FTc0hpMVR3VWx5ZUVhbWVxQlZJ?=
 =?utf-8?B?am04dUFPSFBnZHJXbHRlSXVqMzlOSUtxK1FoNEtDVEhhN1ZuZzdZR0ZIODJs?=
 =?utf-8?B?NWlqUC9veGpkNFZqVGN0TkFmOUlZU04zNHd4SHZJaFg5SEp2SWZUQXB1bVk2?=
 =?utf-8?B?bnNDcFBPY0Y0cmtPbFFQbUl2c2txT01MY3ZsdHQxU0NFaXZOeHBQRG1ubnpN?=
 =?utf-8?B?MW5pZEs2TDRhYy9NMFlpbTEvbTRqKzZzSnpXU3M1c1p4WVVHZVM4Y01hTi9J?=
 =?utf-8?B?LzBQRjJxbktXZ2owSXJjY2ZCRk1KeTdXSHd3THZyeFVSbXR0eG5rY2ppalpX?=
 =?utf-8?B?clRLS2kwb2VBTXpHV0ZCT3RMWG5PVU4vdXhTVjk0UmM0cWlpVi91VWRYRldP?=
 =?utf-8?B?Y2JYU3NPaE9DY0E4ZG54MkFDa3BzaUpaa3RxbE9XU0I1UUVOQUdMclhHdkZj?=
 =?utf-8?B?RGh3VzlFdnJvSUVzTWJFQkdvOElxcEVncUhjbmR3WGF3NXlTdVkwMkZzdXky?=
 =?utf-8?B?aFlCQytDbGtnOTl0N29XTE5uVVBCYWR3KzZvbEd0QTV5d0RGZnlwejJIM2pk?=
 =?utf-8?B?cjA2SXhwREJrMi9oRkNGU2JjTnNLWnpzaEs4UW9ocnNYNmZvT0NsY0trUGpI?=
 =?utf-8?B?bERrYzBpa0U5dnF4by8xVGFEY0dkeHJiMGU5UG1mWGpaRTkvUVgwNEJ2QUVE?=
 =?utf-8?B?OURGR0xIRG5xM2NuWlU0Qk1vckdRU1Z1Y2hrb3grOWZKdWl2SVV5NWs4MjFF?=
 =?utf-8?B?cXdYRjlzVVZpOXI1VzlNZWFqVWNTQzZObHBQT2ludnBRejY5a2ZTbmpZZVVO?=
 =?utf-8?B?RnBKZGJzZUZFalh5ZE16SGx4ZElsRXdpdWtWNHJ2UWNBVTNETjFSTlV5Vi9S?=
 =?utf-8?B?SmVEeUY2d0VDVHVlODdpWGNkVDlHdnQ5d3dRdERjSEY5MTVGa3ZmT3BEMGNu?=
 =?utf-8?B?NjJ0RS9vL3kwNVN1NlJwV1FDOVVOMkkxNGRQVWJ2OThFTmN4bk1OaWdwaVlx?=
 =?utf-8?B?TmRvUWNvSnRNb2E2aGF5U09pMnBOWVVwNm9OeFduVFZOL01NbWowNW92S0Jh?=
 =?utf-8?B?Y0g3Mkk0SVdqUzlWMnhidjBjKzBlUm83RDJCZm0vNTgvaDd5SjBJTXVqK0k4?=
 =?utf-8?Q?UTOIIriD9/S20ZS5Jn2xdph55?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW5PR11MB5811.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 86c9b00e-c233-446b-bb50-08db6d2ad8e2
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2023 22:58:19.7675 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1Y6SAOMMJBRNnpqiBaw5H6x4OgE4EMcxksnDj2bR0OvIFMvqIvz4cxDQrvQiaMor1vj7GBcMRHN75O1S7l5x2AF4DdFj6EtXfDeT5ylG9sI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7758
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686783506; x=1718319506;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=d1MBmDMmcBN873A3YH+uUJQh7aN3obWyhGzsgbbRrOA=;
 b=iUtHRR6MDSh+ymxtDM+8bUcjiywc+6qZcko+8uIuFQsgGnKO/g5vDokI
 QQSvxm7fAGHQFWGPCh2AElY7f2+F5zLvIDb07evgdct6B3xTV8A1tuS1g
 rNQTBAYczsBMwDczDxP/z0ivHtnZ6xs1XFUhHfm7Ku3LyA1r9IBU+gpPD
 JcRay40yBL/QK4nKu9u0rVr8gnx/q1PyzRJFaKQoNzd513lGzW+rCjPCh
 YU+uazPmiIl1/zjBQe9x3aaUaKObOfr2Xm6AW4wqwu56v+IZRd9k4DcH0
 igenL9RNMLvlo1RhrJxgmVD/QtfdfVI0Yfs0Bp6QlmdR1auCOr5OvDKB2
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iUtHRR6M
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 04/10] ice: implement lag
 netdev event handler
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
Cc: "simon.horman@corigine.com" <simon.horman@corigine.com>,
 "daniel.machon@microchip.com" <daniel.machon@microchip.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Brett Creeley <bcreeley@amd.com>
> Sent: Wednesday, June 14, 2023 2:24 PM
> To: Ertman, David M <david.m.ertman@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: daniel.machon@microchip.com; simon.horman@corigine.com;
> netdev@vger.kernel.org
> Subject: Re: [PATCH iwl-next v4 04/10] ice: implement lag netdev event
> handler
> 
> On 6/9/2023 2:16 PM, Dave Ertman wrote:
> > Caution: This message originated from an External Source. Use proper
> caution when opening attachments, clicking links, or responding.
> >
> >
> > The event handler for LAG will create a work item to place on the ordered
> > workqueue to be processed.
> >
> > Add in defines for training packets and new recipes to be used by the
> > switching block of the HW for LAG packet steering.
> >
> > Update the ice_lag struct to reflect the new processing methodology.
> >
> > Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> > ---
> >   drivers/net/ethernet/intel/ice/ice_lag.c | 125 ++++++++++++++++++++--
> -
> >   drivers/net/ethernet/intel/ice/ice_lag.h |  30 +++++-
> >   2 files changed, 141 insertions(+), 14 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c
> b/drivers/net/ethernet/intel/ice/ice_lag.c
> > index 73bfc5cd8b37..529abfb904d0 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_lag.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_lag.c
> 
> [...]
> 
> > +/**
> > + * ice_lag_process_event - process a task assigned to the lag_wq
> > + * @work: pointer to work_struct
> > + */
> > +static void ice_lag_process_event(struct work_struct *work)
> > +{
> > +       struct netdev_notifier_changeupper_info *info;
> > +       struct ice_lag_work *lag_work;
> > +       struct net_device *netdev;
> > +       struct list_head *tmp, *n;
> > +       struct ice_pf *pf;
> > +
> > +       lag_work = container_of(work, struct ice_lag_work, lag_task);
> > +       pf = lag_work->lag->pf;
> > +
> > +       mutex_lock(&pf->lag_mutex);
> > +       lag_work->lag->netdev_head = &lag_work->netdev_list.node;
> > +
> > +       switch (lag_work->event) {
> > +       case NETDEV_CHANGEUPPER:
> > +               info = &lag_work->info.changeupper_info;
> > +               if (ice_is_feature_supported(pf, ICE_F_SRIOV_LAG))
> > +                       ice_lag_changeupper_event(lag_work->lag, info);
> > +               break;
> > +       case NETDEV_BONDING_INFO:
> > +               ice_lag_info_event(lag_work->lag, &lag_work-
> >info.bonding_info);
> > +               break;
> > +       case NETDEV_UNREGISTER:
> > +               if (ice_is_feature_supported(pf, ICE_F_SRIOV_LAG)) {
> > +                       netdev = lag_work->info.bonding_info.info.dev;
> > +                       if ((netdev == lag_work->lag->netdev ||
> > +                            lag_work->lag->primary) && lag_work->lag->bonded)
> > +                               ice_lag_unregister(lag_work->lag, netdev);
> > +               }
> > +               break;
> > +       default:
> > +               break;
> > +       }
> > +
> > +       /* cleanup resources allocated for this work item */
> > +       list_for_each_safe(tmp, n, &lag_work->netdev_list.node) {
> > +               struct ice_lag_netdev_list *entry;
> > +
> > +               entry = list_entry(tmp, struct ice_lag_netdev_list, node);
> > +               list_del(&entry->node);
> > +               kfree(entry);
> > +       }
> > +       lag_work->lag->netdev_head = NULL;
> > +
> > +       mutex_unlock(&pf->lag_mutex);
> > +
> > +       kfree(work);
> 
> Should this be freeing lag_work instead?

Nice catch!!!  You are right, lag_work is what is allocated not it's element work!

> 
> > +}
> > +
> >   /**
> >    * ice_lag_event_handler - handle LAG events from netdev
> >    * @notif_blk: notifier block registered by this netdev
> > @@ -299,31 +351,79 @@ ice_lag_event_handler(struct notifier_block
> *notif_blk, unsigned long event,
> >                        void *ptr)
> >   {
> >          struct net_device *netdev = netdev_notifier_info_to_dev(ptr);
> > +       struct net_device *upper_netdev;
> > +       struct ice_lag_work *lag_work;
> >          struct ice_lag *lag;
> >
> > -       lag = container_of(notif_blk, struct ice_lag, notif_block);
> > +       if (!netif_is_ice(netdev))
> > +               return NOTIFY_DONE;
> > +
> > +       if (event != NETDEV_CHANGEUPPER && event !=
> NETDEV_BONDING_INFO &&
> > +           event != NETDEV_UNREGISTER)
> > +               return NOTIFY_DONE;
> 
> Would it make more sense to prevent the work item and any related work
> if the ice_is_feature_supported(pf, ICE_F_SRIOV_LAG) check is moved to
> this function along with the events that require that feature?
> 
> Something like:
> 
> if ((event == NETDEV_CHANGEUPPER || event == NETDEV_UNREGISTER)
> &&
>       !ice_is_feature_supported(pf, ICE_F_SRIOV_LAG))
> 	return NOTIFY_DONE;
> 

Even if SRIOV is not supported, there are still tasks that need to be performed for bonding
events - e.g. unplug the RDMA aux devices, so we don't want to avoid creating a workqueue
entry when feature not supported. Which makes me notice that ice_lag_changeupper_event
is under a feature check and it should not be here.

Will change it.  Changes coming in v5.
DaveE

> >
> > +       if (!(netdev->priv_flags & IFF_BONDING))
> > +               return NOTIFY_DONE;
> > +

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
