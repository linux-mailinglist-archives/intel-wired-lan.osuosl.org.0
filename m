Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AD7296D6807
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Apr 2023 17:57:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D60A56107F;
	Tue,  4 Apr 2023 15:57:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D60A56107F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680623849;
	bh=fkARah+19ctAAr0xIHalk8pwyyvCu7qmNWs8pFfo34w=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UQvMn922gHW8vUiKkB35Q854/WiND6FksBQu+uWlrGioQd1sCBR1ftozUSLcVO/Hx
	 7Mgg1EaS9zHfEIIr+js92Alkd029derUYywkgRUJeUZLr7C+OGIrFa+n9VRqnTAEE0
	 Jwyn5Q3hWFDObz7/ZzeSYvJWqI9XuNudKLgwImNFKlXNo10Ror1EHxzQKdyU4d+lQ2
	 YB4h9PaAyTfxqtqxizNLYt0id+NnXOiufS5heDue6zAma9aKF5YrhR4VJ4mcN8k6lM
	 vR923kRbDATHMk98ZJn09EUu9/WUIk2xZpJCv8AwFumuUWu0rtsiHJCzddoZkHqecZ
	 QdF0TvKQkdF4w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PsgWDN_PhzX5; Tue,  4 Apr 2023 15:57:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9AA1B60AEF;
	Tue,  4 Apr 2023 15:57:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9AA1B60AEF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DD3E11BF348
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 15:57:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BF24B401F0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 15:57:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BF24B401F0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zYxGvKEr3H1q for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Apr 2023 15:57:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DAF12401E4
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DAF12401E4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 15:57:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="407296270"
X-IronPort-AV: E=Sophos;i="5.98,318,1673942400"; d="scan'208";a="407296270"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 08:57:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="718989129"
X-IronPort-AV: E=Sophos;i="5.98,318,1673942400"; d="scan'208";a="718989129"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 04 Apr 2023 08:57:18 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 4 Apr 2023 08:57:17 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 4 Apr 2023 08:57:17 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 4 Apr 2023 08:57:17 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 4 Apr 2023 08:57:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BmEaHdGknBRn2vCORHUsyhr4oNw3mOTLcxcnNdEd073qKZboGeSCq7sMUvrMP8/lZnQfBGxD1aBT6LfKF/bOMFGXxVHCbumVrqc1wv1+RfPDT/pJOk35zvVeV9fQ0y0frYhJxH6xj2yRBfQV47895UJj2UkAYvCBNMo2SiEupcloxn3OOd7STbsLBfXoU5wJAIKhX9rpYgyTgPc9bi2QlBimkhuywqlkemRNjRTtEz8/5Ijtoqhk9YDYI+BKcZoIUAOH2oGDuBV1HsAcSpSYYT+HmTWymmlNdE7fTpgAj5HJNGR/tNZzY3poxWd16KV0fUl0/IELfKSsQhx+gK4JWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/Zvg8bxfLGUoAW38gc6tXHQyuEwW3cHH9/TIeDDqvYk=;
 b=IeaFTqpWh1Rkg7NJ/dv61aRRF8UNAE+Rq4I5t87b9VPUEd6SA2jNi8cHfQQXU2tt39+0PpuIW+M9sLAhvTWYE3J/ynTpIP4frnbnfrAMk/D0p6aUF3vw8nNo+Z4N//XFlM6Xm6Rg+PftK+WQ7DHW/h4MaIZBPQoLAYXJL4mm9MGeTsCIq5Ef94MKkoE0wvIn0iMLONjwtl1FBa0rMZ8pakq3Nmi6nv9T43F+Hyfd7+O0XYRtQA5/xQvi+f7c0rNjyM1o6L+SurDI4Mtl+GTk3xa1TOKuJ8VX43C9ikwW/YFrhYILpQPz2AzK6z4oM5BZ1e9JFaT+y1fdlE+Jpdj4Ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5028.namprd11.prod.outlook.com (2603:10b6:303:9a::12)
 by PH0PR11MB5126.namprd11.prod.outlook.com (2603:10b6:510:3a::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Tue, 4 Apr
 2023 15:57:14 +0000
Received: from CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::c111:cf7:80c3:6ef6]) by CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::c111:cf7:80c3:6ef6%6]) with mapi id 15.20.6254.035; Tue, 4 Apr 2023
 15:57:14 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: mschmidt <mschmidt@redhat.com>, "Kolacinski, Karol"
 <karol.kolacinski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v3 net] ice: Write all GNSS buffers
 instead of first one
Thread-Index: AQHZQshGVd/zlWyenUS2QDnazemjq68KWzeAgBE46rA=
Date: Tue, 4 Apr 2023 15:57:14 +0000
Message-ID: <CO1PR11MB502815AA128A52719290FFC0A0939@CO1PR11MB5028.namprd11.prod.outlook.com>
References: <20230217120541.16745-1-karol.kolacinski@intel.com>
 <CADEbmW0yGTU3u-zznKprkS8Jc=JzvZWMC36wYfszc4SAZBYE5A@mail.gmail.com>
In-Reply-To: <CADEbmW0yGTU3u-zznKprkS8Jc=JzvZWMC36wYfszc4SAZBYE5A@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5028:EE_|PH0PR11MB5126:EE_
x-ms-office365-filtering-correlation-id: f569ad7c-3e0a-42fb-2fc0-08db3525420b
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0p/bL+n+TudlxX/vBV6SejkM0LCyieC3sEqycrLFrGNn7Pu2jkPt48+tA4bdGJ1EkjhoJcTGDvWoj8xFmgn+Yv+mkMj9/tcvF7yvYFdn8hlaKNS4K+3CaAP+xVLphFRPXI8AKoRQqGGwu5Nrnm1L/GNRnQrRTlBCVwyzxpmUY2v28MIfUYw4h6YKdcfWld5VARVcObL4FopC3K4u5PTg5dVKzrQDGkGUITftEVnCTgxf4VDx+6cD8nmpTbWIJ2ILxBwiU5s3GcW17MqkVUR6w53BuWa36wNap+n+K0IDDP2/RyDqkcDUV7+UBdGzLl05nXQfw74ksOzq425Xf053Armd8Hf7D+HdxbKJqsQSkTchZ+Wn1dVcYtC/jd8g2eL9wOmNZKnGdHbZvOt8fNjOkY7BiSn0ms68Lwifi7b/07xc+afmV6o9X6l2SzWjt0YdT8zWKvBhn78cMHspTya6jr9q9cRIvWQocpvCVQxON3rAe9BijrmPvx2mtPluGbjUVP0sa+AKH3w6XNu9Qf4bv/Vxqx3e0PUu/YLxbHgx+82aVQs5HXKQY2SFOQ1lU42rq61O+rxAZLKgYEMJKFs+SrErDdwPLuP+9B9QEDuBV9w=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5028.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(376002)(366004)(346002)(39860400002)(136003)(451199021)(33656002)(122000001)(82960400001)(38070700005)(38100700002)(86362001)(52536014)(7696005)(8936002)(71200400001)(316002)(966005)(54906003)(5660300002)(110136005)(6636002)(55016003)(2906002)(186003)(6506007)(9686003)(26005)(53546011)(8676002)(4326008)(478600001)(76116006)(66446008)(66946007)(66556008)(66476007)(41300700001)(64756008)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MlE4WHdCUXViRi8xR3FlRFFrQWd1MnRFWVZQSkdBcHpCcUhuaUVydFpEREYy?=
 =?utf-8?B?UXc5Y0ZrQThCVms0Q2VaUFR4bmp6alliVFd0dlRhTFBqVzh1dEt6ZGpSUlFL?=
 =?utf-8?B?VEtpSWt3WFFXd1NEQS83UjJFV1I1TWtTWVQzeDkyOGhBa0dERWNPeG4xTWhW?=
 =?utf-8?B?b1YzVit6M0o0SzJyOEpwNU9UUGk1VHE1RTgwcmYveHhZTVorTW93ay8rSGdJ?=
 =?utf-8?B?QkZLWkFhQ0NscHZ4aDV3SGk2bVZ4OGkyb012bUs5TDFVQUZLNFhwenY3U0VS?=
 =?utf-8?B?TFpmRnE5Q3U4SmdWVjB6aXBGamJZc2VISG0wRjVJa3dzSXFnaXZNWjZ6RUhW?=
 =?utf-8?B?ZkV4dWpTWStVQVlIT3RkaVBaK1VyOEt6UEFzci9pSFY4MUZRV1dHR2RseldX?=
 =?utf-8?B?L3oySVRzdjA2UVhpMnI5aXEzRU5YYzVXdlRUODY0bEhiOEIvSG5PbkhxaU9i?=
 =?utf-8?B?WStVa0VmVjVHeGVqNm1mdlNJV2FqOGtTYnVsemtEbXJoNk10VnNOcldXQkxQ?=
 =?utf-8?B?aUpHU2lJL0EwbTBKenRjM1Z3WHpXMlpad0xRNkVab1VSTTY2dUhDemRUcEFt?=
 =?utf-8?B?enhSa09GWTQrckRsY2ZlS0NkL1dUVmg0Z1ZLUnFFanZpUVVrSndIOERVc05o?=
 =?utf-8?B?WGpiWktzVkRLaTJKY25xREV3MlJPazJ3SnVyWVp1NW41MFFPaEI0bTFZaldB?=
 =?utf-8?B?U3J3QjlsZnNnOVRVRmdXaDZQZ3grTGlMazFnNzR2K0REK2xpLzRqT2I5SjBW?=
 =?utf-8?B?RUpoa0dDOWZ4L2JpNndPa2Y0U2UwclFzZVpScjF2aUhKN3BxclgramYzZGZh?=
 =?utf-8?B?SmttckJoUFZaTWh2UDhqRnZNTWE4RzFmLzR6cVZkdC80ZFBSV2ltejJCMVFh?=
 =?utf-8?B?ZTZzN25qL3pRb0gva0ZnWkxDeit2MWhPTXR5NXhyelhEeGw3c3I1WmtELzc0?=
 =?utf-8?B?SDROd2VSNFlxUVJ1QXBUMmRZNDVwNmhpenpRWlNFNE1vQUFDcU9oMnJWdW9T?=
 =?utf-8?B?VmcyUVRPK2xVWVVXZTZFbmN3TWEwelN5SGR4K0p1R1NtM3JUNFlVUkhlWlVh?=
 =?utf-8?B?SUhOWXZoTDRjR3lvSXhNRlZNTTlWVkVTZ1kxN0UxRjhuQTB5M1hsZTI4Rzh1?=
 =?utf-8?B?djlRUHVBeHRIbTBXN0NEanNSKzJ6L05hTVlJQ0Qva3FMMFdOVEJvVkxuNmVW?=
 =?utf-8?B?aXY5aTFSTWZ1aXdJc3pCQzk4aDJpbWEzclA3SE54bFZWaWJsUm1nWlQxeUZY?=
 =?utf-8?B?bTdibktDUmcxZWxSelF4aUZGdFMxVUFUbDJtOWtTOTlncWZ2MkgzTEVJUG5D?=
 =?utf-8?B?YnhZaGpIZVRKSjFCRmwxcG02bDhqM01yZDcxV1l5WXFJWDFoelF1d0xQYUdG?=
 =?utf-8?B?Y09oYTBTT3R0K2trREtRSHBQUjU2OUtpaitPUGFwbDl0V3pWSUVpUGwvM2hE?=
 =?utf-8?B?clA0cytWN0l2U0pORGhzekRaMTFxQzAyNnZuZzdlclloeVJ2eUZYZkI3empx?=
 =?utf-8?B?ZldCTzRFUGt6YTBuTkE1elAzVzNIREZtNzJqcTBnd0kyZDZSUlhrVDhMSUJL?=
 =?utf-8?B?WFZqRm9OMVdVejFMWG8rRUI4U1M3WVNrMTlzT2RsUWkzWHhLTHVqODN2TkRG?=
 =?utf-8?B?a2lrU3Y5aFpEdWxVVmFhK0F3Ui9Zbld2NHJkK0pLWDlEbElFZGcyTElvU0FV?=
 =?utf-8?B?TlZ4QjBtM2ZYMTZ1V2t4MHRXOHo1UG9iTElOeFVoWDFLelMyMlhUU1JQTTk0?=
 =?utf-8?B?ZENQWmY1aXZQdnRmNHR5YkhrcXk1WVFnWThNKy9GRkZMRVMrTDV3dkthRnJn?=
 =?utf-8?B?UzFJbHVCR0JucHRuYWJEMVU5ejNvcFBsU09jUG43S1ZQd05XdmIyYUluM3Z4?=
 =?utf-8?B?eURMN2xYb3p1cUxobzExVEZQUlRyNGdPOFlHUml3ZlJ4NE1OUUtpb1lXQytB?=
 =?utf-8?B?ek9pK3RmKzJRWXJYNnc0bmY0OXp1emxxcENmeVpobUNORG82NVp2cUhVK0JH?=
 =?utf-8?B?anNRa3h1Z2ZhbFoxTURoSDdtSWFINDNuemNHdGw1cGlIanpldk41LzRPVmxE?=
 =?utf-8?B?VXVOd1FOcDh3a1JVOUFaaUEyNG5YOXFmYjNxN3h6OVhxdU9iSDNlNk4wMXBv?=
 =?utf-8?B?T25EcCtzZzZldm0zSmdLU2lGWm5oVXlKQjVTcExIY1R0M3d1MlBIeHoxVlI2?=
 =?utf-8?B?ZHc9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5028.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f569ad7c-3e0a-42fb-2fc0-08db3525420b
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Apr 2023 15:57:14.0924 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tEHE+mAGhia3L7hkKgOROOb5ZfEXFbD1pQVx14LU6KR13bE25i1Or28w+uw+fVdXHdKLjMst8fS6tYxUtxYpIEDZ3zH1abdEgd8oTXpF3iw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5126
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680623840; x=1712159840;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/Zvg8bxfLGUoAW38gc6tXHQyuEwW3cHH9/TIeDDqvYk=;
 b=OT8FsyRLxNux3PZBNuPm7GQX8/OsmU3vHLNKM00A5qS6YBj4MJfezBd1
 yyFhojXPbhycvUe8aCXWukqhbkTDTxujlzVQX4YPyE9tNVJYtZIXzXqEq
 FLrzz6eOoC2ph5HEgDKYySUQwQ5CIzYdc5jyP0ifVz+SBj1tmZJrmMX0k
 dDmgHQiEdttifnyo6sD4vPTbox8/VPxk/2DxqvLIioex1RYsstnO0qUpG
 e2sfoMCTyDBZ8Ij1k0Td/uBqRJY7KPUYL8UbdginSzZD1smIRl7jtc+bx
 FcHp8Ah90QZJYgn5ssVShNa4bzxg7rt42GQZ+Z3nUyuCrI1CHcp9TsYTk
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OT8FsyRL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 net] ice: Write all GNSS buffers
 instead of first one
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Pi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLXdpcmVkLWxhbiA8aW50
ZWwtd2lyZWQtbGFuLWJvdW5jZXNAb3N1b3NsLm9yZz4gT24gQmVoYWxmIE9mIE1pY2hhbCBTY2ht
aWR0DQo+IFNlbnQ6IEZyaWRheSwgTWFyY2ggMjQsIDIwMjMgOTo0OCBBTQ0KPiBUbzogS29sYWNp
bnNraSwgS2Fyb2wgPGthcm9sLmtvbGFjaW5za2lAaW50ZWwuY29tPg0KPiBDYzogTmd1eWVuLCBB
bnRob255IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgaW50ZWwtd2lyZWQtbGFuQGxp
c3RzLm9zdW9zbC5vcmcNCj4gU3ViamVjdDogUmU6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCB2
MyBuZXRdIGljZTogV3JpdGUgYWxsIEdOU1MgYnVmZmVycyBpbnN0ZWFkIG9mIGZpcnN0IG9uZQ0K
Pg0KPiBPbiBGcmksIEZlYiAxNywgMjAyMyBhdCAxOjA24oCvUE0gS2Fyb2wgS29sYWNpbnNraSA8
a2Fyb2wua29sYWNpbnNraUBpbnRlbC5jb20+IHdyb3RlOg0KPj4NCj4+IFdoZW4gdXNlciB3cml0
ZXMgbXVsdGlwbGUgbWVzc2FnZXMgaW4gYSBzaG9ydCBwZXJpb2Qgb2YgdGltZSwgdGhlIA0KPj4g
ZHJpdmVyIHdyaXRlcyBvbmx5IHRoZSBmaXJzdCBvbmUgYW5kIGJ1ZmZlcnMgb3RoZXJzIGluIGEg
bGlua2VkIGxpc3QuDQo+Pg0KPj4gRml4IHRoaXMgYmVoYXZpb3IgdG8gd3JpdGUgYWxsIHBlbmRp
bmcgYnVmZmVycyBpbnN0ZWFkIG9mIG9ubHkgdGhlIA0KPj4gZmlyc3Qgb25lLg0KPj4NCj4+IFRv
IHJlcHJvZHVjZSB0aGlzIGlzc3VlLCBvcGVuIHRoZSBHTlNTIGRldmljZSB3aXRoIGNhdCwgc2Vu
ZCBhIGZldyANCj4+IG1lc3NhZ2VzIHRvIHRoZSBkZXZpY2UsIGUuZy4gbXVsdGlwbGUgY29tbWFu
ZHMgdXNpbmcgZWNoby4gVGhlIGlzc3VlIA0KPj4gbWFuaWZlc3RzIGl0c2VsZiBhcyByZXNwb25z
ZSB0byBvbmx5IGZpcnN0IG1lc3NhZ2UuIFRoZW4sIGFmdGVyIA0KPj4gaXNzdWluZyBhIHNpbmds
ZSBvciBtdWx0aXBsZSBjb21tYW5kcywgdXNlciBjYW4gc2VlIHRoYXQgcmVzcG9uc2UgZnJvbSAN
Cj4+IHRoZSBkZXZpY2Ugd2FzIG5vdCBmb3IgcmVjZW50IG9uZXMgYnV0IGZvciB0aGUgbmV4dCBz
aW5nbGUgYnVmZmVyZWQgDQo+PiBvbmUgZnJvbSB0aGUgZmlyc3QgYmF0Y2guDQo+DQo+QWx0aG91
Z2ggdGhlIHBhdGNoIGRvZXMgZml4IHRoZSBkZXNjcmliZWQgaXNzdWUgaW4gbXkgdGVzdGluZywg
SSBiZWxpZXZlIHRoZSBidWZmZXJpbmcgbXVzdCBiZSBlbGltaW5hdGVkLg0KPlNlZSBteSBwYXRj
aCAiaWNlOiBtYWtlIHdyaXRlcyB0byAvZGV2L2duc3NYIHN5bmNocm9ub3VzIiwgaHR0cHM6Ly9w
YXRjaHdvcmsub3psYWJzLm9yZy9wcm9qZWN0L2ludGVsLXdpcmVkLWxhbi9wYXRjaC8yMDIzMDMy
NDE2MjA1Ni4yMDA3NTItMS1tc2NobWlkdEByZWRoYXQuY29tLw0KPg0KPk1pY2hhbA0KPg0KPj4g
Rml4ZXM6IGQ2Yjk4YzhkMjQyYSAoImljZTogYWRkIHdyaXRlIGZ1bmN0aW9uYWxpdHkgZm9yIEdO
U1MgVFRZIikNCj4+U2lnbmVkLW9mZi1ieTogS2Fyb2wgS29sYWNpbnNraSA8a2Fyb2wua29sYWNp
bnNraUBpbnRlbC5jb20+DQo+PiAtLS0NCj4+IFYyIC0+IFYzOiBTd2l0Y2hlZCB0byBuZXQtcXVl
dWUgdHJlZSBpbnN0ZWFkIG9mIG5leHQtcXVldWUuDQo+PiBWMSAtPiBWMjogQWRkZWQgcmVwcm9k
dWN0aW9uIHN0ZXBzIGluIHRoZSBjb21taXQgbWVzc2FnZS4NCj4+DQo+PiAgZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9nbnNzLmMgfCAyICstDQo+PiAgMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+DQpUZXN0ZWQtYnk6IFN1bml0aGEgTWVr
YWxhIDxzdW5pdGhheC5kLm1la2FsYUBpbnRlbC5jb20+IChBIENvbnRpbmdlbnQgd29ya2VyIGF0
IEludGVsKQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpo
dHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
