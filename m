Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A1855FB75
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Jun 2022 11:13:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 102B641A68;
	Wed, 29 Jun 2022 09:13:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 102B641A68
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656493997;
	bh=Bsd1upMVxbuRcGmIuy/QhuLmbuNIcCnl9QJr3A79ovs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1miA2AcCLsj9k7ay9S6k1LijS+YIsLXgbJLblSVgz8dFy/XMxOZ5XSVIsR+u6b+bK
	 9gr01yEmZMJkUlXLWZwNXCtLbHTpfN6VBJXWI6JxhtGq1KofcUwdYySmVni06oDAH6
	 7FUs6LjLG1GqSEvCkcjbZrSIPP01iyVJ3uMitbe1iNq/kxX4aQEiaVoN+yLv/RSGa1
	 nwdzvtf6OyjjN1KByFbCDNt3cV+z/jSeZQR6oF/QlJuiJ+o4Yzw0IhMwtBT1hIRKl5
	 zL2g03fgx6f9bz+sYxpmbDxo8VBofnBJuD+nyA58rd14hw01rkKUjP4mMQYhzeYQuS
	 9AdEiQlAHOOQQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zLXnRecaT0J5; Wed, 29 Jun 2022 09:13:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2C41A41B54;
	Wed, 29 Jun 2022 09:13:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2C41A41B54
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1B35D1BF349
 for <intel-wired-lan@osuosl.org>; Wed, 29 Jun 2022 09:13:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F307B827AA
 for <intel-wired-lan@osuosl.org>; Wed, 29 Jun 2022 09:13:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F307B827AA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MYxeZEazKXQ9 for <intel-wired-lan@osuosl.org>;
 Wed, 29 Jun 2022 09:13:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3342D81ABB
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3342D81ABB
 for <intel-wired-lan@osuosl.org>; Wed, 29 Jun 2022 09:13:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10392"; a="343669792"
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="343669792"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 02:13:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="623244892"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga001.jf.intel.com with ESMTP; 29 Jun 2022 02:13:03 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 29 Jun 2022 02:13:03 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 29 Jun 2022 02:13:03 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 29 Jun 2022 02:13:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V0SUXqNqwbZBlhkaJG/5VI3dnyfwEalQD5mscQtVuwictWWhK7R5zNlW6RRwBfKb12ZWSJfEKC9WioO+jl+lAAYlZ/q2bIXmYaKTh6R15wJVn2rIZascik3LuDkYb5qG4q6miV1Gs7wVn4TD1kG12XSa56mKyzc/JBUIYpu5qCOMrdk9WxcCVKVeNIDqhpTbknSRZXCy5AUYzA7c9g+fBISP5sIIWwreakalszvNo54xjzFWLljUHfX3sAjhLYVHqbEFv4ZVVzFxEafZIh1hq44E7xnpK7RaUusdKxMidSw7ElPgsMWdCUjVjHWI/Mv2CkSFvuCXuYaUpgMX7mV/8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XNg+n9O5icOlQBmlAuFaKxiadcbpx4wICXgiaxFOHD8=;
 b=CE7w6j0doVgPLjuPUbU+LLlGNry4IkC3YjlMT51U9vbpiQ4Jay6mS/fOb58Fccuc3mWUcG44HxZn5sWgxiXK7RdTwcxR/c+qL6xOrvNSnCLYJi2ZVtPpBWSebAQFXqlbDmVv1z6RPj+JoDdzw9W+Y2sUOgKnqpN9Z5xD1W06vM3Q0nVK6Aq4991gqW5RUtSOJyDhSp7YryzToJ+MRkgFSMhzD3jNLUKGZIOv4fekU2uYBshxlrcJ7h6sP1BJhrTdcEuosZfJrxl6OW9BZ7MZBTf71ZJylYZyKsvXydCxvHboiSLIZJ58jWiRN1NDBQYbYfK+m+2HEgbH4qOEkXXteQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BN8PR11MB3620.namprd11.prod.outlook.com (2603:10b6:408:91::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.14; Wed, 29 Jun
 2022 09:13:01 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d1b2:ed18:5abf:364b]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d1b2:ed18:5abf:364b%6]) with mapi id 15.20.5373.018; Wed, 29 Jun 2022
 09:13:01 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Stillwell Jr, Paul M" <paul.m.stillwell.jr@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: handle E822 generic device ID
 in PLDM header
Thread-Index: AQHYe3wyYiNlJmey9U+vp5N9nKHyca1mOZiQ
Date: Wed, 29 Jun 2022 09:13:01 +0000
Message-ID: <BYAPR11MB3367E76BE12B37678262B104FCBB9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220608210952.442-1-paul.m.stillwell.jr@intel.com>
In-Reply-To: <20220608210952.442-1-paul.m.stillwell.jr@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 41f71932-a030-46b1-15f6-08da59af90fb
x-ms-traffictypediagnostic: BN8PR11MB3620:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 77HgVeeuBqqh6uP+AU6SB0A3bcZTFKqo1202bK6pZURbDomO6XwP1LnpXe3BbCxrhOL++KpgWhk74W/Aafyfloo7FDPAtPrsCeJR1e0oAKK9Q0BAhZPwsVw4nIdGDtdHPPGOrVi0K8EPW1ADK0vbqwp7pMr40bptHQ5ntPYHyNQR5dRHCsiJg5FZ0yJXzF8/Ld2FSZOoKxbS1s3YiQVciJQfONvHlcEN+KJ4r5k4SXEYvxvpgmXkfQXZ/MZ3AU55SD502Pkx7K6LQmK60/0NL1+dOBRvx7HpD4w5R5lAlSjRehR8Gg8KKFyJaT4TltskXQL4bu+izNp61eD3YSDxCl0iPYkIoD7t3+WLunisHieZ84Olju7xsHHjJLcRrLvloxC6qa/J12DMXT5+ILJMuzlwX3V+SsshPA4S63H9r28Hb6DcpraJ4F5xcBPMUSZ/t5BaSySBshZz9pf+iWGXVpJvd2Hsp/yv9q1OgbDziPbY6WMuUKEnr2pzOVZo9pJDLu7Vhde2BavKecMvjdX6s5bnqvisQasTwqygU7LThbnlwzd9ZTw9oNWm0ZXWMdK8vzzMe6kVzUCT2YM/eCiBiHRvbaF6P97ZkHTduXjebhF/ga7foyKdG+dEIPbmd8rIRoBjVqrdoSRIeYRNnKWga2PXm4XHuQD33TU4IOkyvTqdUylrK4GSoFhLWptRUlNCN4x79imFy40qhylTmKQGPDjNzeZJqozrTYJQtGVbMHvOWHH0sA/G+UJ4mPLtdQnFEUMthZnhr9G/7f3cYKUrmXjn/W7s8gOe36cP04/okKsdqoXlQ+PiZxrsyvdUjEE0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(136003)(396003)(39860400002)(376002)(366004)(8936002)(33656002)(52536014)(5660300002)(55016003)(83380400001)(478600001)(66446008)(8676002)(38070700005)(26005)(9686003)(53546011)(86362001)(186003)(64756008)(71200400001)(4744005)(82960400001)(7696005)(2906002)(6506007)(66556008)(316002)(66946007)(41300700001)(38100700002)(76116006)(110136005)(122000001)(66476007)(41533002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?oQvNRz1IK94FQiilR5S+jQocorXffSs3K6TIU0DDuSoC8n0WspFNJmQ1RYsm?=
 =?us-ascii?Q?ggJkR36iqbKLuvsUuVY5wQ5XdF77hIAAL+aIfWWJlkxqE8HLkiMd2HipmN+Q?=
 =?us-ascii?Q?d3S9gCX/q0sBjlCwPC2nyoJReTBes8aFxIUkiek8yO6eb+NCHWI1S0sBNPyb?=
 =?us-ascii?Q?8sz764vk5aMHOy14mncpPWkrnpaKsTSA5V8Y9SoW58E/xRJPqvEfj5FBHkjq?=
 =?us-ascii?Q?pNXbvr7VQYhPsT9ZQjwSaUnMQI3JqoSH2Hqfvs5in2ysbGmMOqO7FClEXFUM?=
 =?us-ascii?Q?EgC62IyCfHtqjZqlktTXY0HGolpL8xGCEkQvaHzSEcpQ6ZCkHqk+RiYDfjV2?=
 =?us-ascii?Q?DpwjRwEzNX358/u19+ZYiuPqAN801kFHiascECr3TzJ2Yj72w/T0qsb/nGYJ?=
 =?us-ascii?Q?5Tw5pVR4kPBnHSUdfheALE1j/gabBX8KGZ8PZT4DtGS7ARIqqZ+GvNeuOWhc?=
 =?us-ascii?Q?Rj4RTmlFtLQ7yd+dEZbz6bGYUBOKshv2X46MNPXLWFqkbXOeHKZmj4rPW81U?=
 =?us-ascii?Q?VwqkP4Qbzn/mGgfdKvNDqwU6cEpX6cVRplBdziGQoYnhET3n//2BMfd50aGb?=
 =?us-ascii?Q?vZe/fBq83Rv+nFYNZPOU0aQSmQukYSZ68QzUIU5TqQ7zqK2+KeQSrdDHCqqZ?=
 =?us-ascii?Q?D3/zRAxG7lbXqp5Zsxsv+3b2jnF9tHD3cU2Z8XThIabgS0KtEtXtvjdotMCK?=
 =?us-ascii?Q?lFJ/Hpy0ZTQJuHa7JnyxEU8Z/p9QoI37a74UWDhr25sBrdvd5Hcdirt7526O?=
 =?us-ascii?Q?uICWVCUTAAtmfz58ok0JS/u95J4RfOzRDRrPVJEfdstUR5DVSHBNmq95IlYR?=
 =?us-ascii?Q?tzkR2ZWWNLJliR5b61B2WQKpOI2fHjr2dIeGOsv33+xlWq/DLH01EDRkVOxm?=
 =?us-ascii?Q?zheqeqb5fa462BiyfCy11ywh1+FMaNkHUyAjVC+p2nne9dxjbfhtBAj2STrQ?=
 =?us-ascii?Q?DgznqAEbmN5Wz34i0Rii1u3vXVKTUNiX+J0JHc2u202WTVkzjqVahnYcRRKp?=
 =?us-ascii?Q?3Km7Fock6rNulBvk3lz5a3E/0uN9j+vEu45XYqf42X1pKSHLU7pFL5F2i2jg?=
 =?us-ascii?Q?dtP8j+AnI7T3SfwKK4EfWeM+CpZy4N+l9R/vY2Oklfn4oHEjswHkqNWK3HFI?=
 =?us-ascii?Q?l+bQrGSKrkA3tYXElkOfPpQwDXJpOuBKlYRw/c9opgYNsZiQKfR+DumsTrzE?=
 =?us-ascii?Q?gqp8odust8xif7aOQxeBSg23BkNNn67bovTHIjEf/bSnTDJn/kkhuin7Ryo4?=
 =?us-ascii?Q?cUEFE47tmxaugqBAGCFOXbj7S7RV9WXn49hXnifOBqtG5WWdAVTvzPoVRx3B?=
 =?us-ascii?Q?+HzHS/Zo7+wxuQ5xApo8oI3Kw3dZhwkox8/xtshoWIvV82K5IulKp2DOAK0N?=
 =?us-ascii?Q?qTFs2MZpMHEZ49C4XGoLFGOMmcDKBRSUk0Q0MesLLHWP5SATQ47GDYiddrck?=
 =?us-ascii?Q?7AdErjbo7bo1qXJAb5c/KPhOTGjLileohwUDeY2YOgSGVQHQH0etTyFeoaJJ?=
 =?us-ascii?Q?wzPHDtXmYywfeoAPNLEKc9hw9AsI90HydXwYr6AzkLO7+QftMhx33RpCagPP?=
 =?us-ascii?Q?OVwNwAIbr9UIjxkjEhI/jRLDSxrBGPLlUAIYXZDD?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 41f71932-a030-46b1-15f6-08da59af90fb
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jun 2022 09:13:01.2713 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pm5hOUmxODMVr9cRd3bYyINWnCAkiR5HbNuUvYD+8013lvEAxL9cGSPSZe8Lvsnvo2v0Qibehn2nkG8jB/wkdA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3620
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656493985; x=1688029985;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=jOjvLZDOZimI9W5b6zGG7E5h6R6ukgbXQlooGawYqF4=;
 b=VtZ1cPT4/0wlkHjbqhZuJ+0i+KrJMvqM81Gn1qHZXa9qqzkH4w/qhQJH
 g9oj04ftDHjrZ2aEM/c7cfYfQqQVphnC0Fs9EBaC6/uLhUI6zRy/s/uWF
 khT3Su3GOtC/uqAMuiyPfeExLVU/hgWlSM37UEVG0yUG6zBFPxLjwxiE6
 VmPDC2ayayZ+2VvPW6B1Mjj7g8fqsQRtohyj+1trTIguz2nFKvdxsUR14
 ehr/D4T8PrZ5NfUb4jCE9Jc2MjowDaSh//1v6W8zmZmBgfQeij4asah7l
 D0A/d4ViqtKZAGdGfszpyP5yr5pBjj0rY8LJPVIPxj29cFUwnwSUp6Ozj
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VtZ1cPT4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: handle E822 generic device
 ID in PLDM header
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
> Paul M Stillwell Jr
> Sent: Thursday, June 9, 2022 2:40 AM
> To: intel-wired-lan@osuosl.org
> Subject: [Intel-wired-lan] [PATCH net] ice: handle E822 generic device ID in
> PLDM header
> 
> The driver currently presumes that the record data in the PLDM header of
> the firmware image will match the device ID of the running device.
> This is true for E810 devices. It appears that for E822 devices that this is not
> guaranteed to be true.
> 
> Fix this by adding a check for the generic E822 device.
> 
> Fixes: d69ea414c9b4 ("ice: implement device flash update via devlink")
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_devids.h   |  1 +
>  .../net/ethernet/intel/ice/ice_fw_update.c    | 96 ++++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_main.c     |  1 +
>  3 files changed, 96 insertions(+), 2 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
