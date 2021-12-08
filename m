Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B3AF646CEAA
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Dec 2021 09:08:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 527E060F02;
	Wed,  8 Dec 2021 08:08:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8pwYRyCGU74Q; Wed,  8 Dec 2021 08:08:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3914B606B3;
	Wed,  8 Dec 2021 08:08:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 855681BF365
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 08:08:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 74B104016F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 08:08:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jcfg6VCNc64n for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Dec 2021 08:08:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C1E124013D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 08:08:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10191"; a="236519439"
X-IronPort-AV: E=Sophos;i="5.87,296,1631602800"; d="scan'208";a="236519439"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 00:08:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,296,1631602800"; d="scan'208";a="606163810"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 08 Dec 2021 00:08:14 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 8 Dec 2021 00:08:13 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 8 Dec 2021 00:08:13 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 8 Dec 2021 00:08:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ih6E1fEDRLhNuFfYgfiLRaaV7ab3FMYjFbkIVKoxMQ9kzEKww19Zk13qrlqLYtliQSM/GSOQ0SkH044lTN84d+woz7A9ku13Qq9usBghQdR1jlVrG3uYzyqasY4Vm52FRYlxVAuwkceREubd+Mo32Yf2o69Abhme3lZ971LJG4A1SgHARCBk37OBD+N76Wh40Pwz6Oxi5sMn7DuWgzcOV+4nkbEbgQG43ntem0MWI7ZdcySuO+TmJcNb31lmphQAIk5IpmTqCkYljLRSNNkFnXcFyQfkn1xToi28AAvv6cBfEmf9fTHXquiFL3dL9c6Q/GTZWIgVIi6R98RTHZnQeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MYz3qNLJcrLXC8saVUwl+ceZ1HCZ2DI6iHiiclDqJ7A=;
 b=Rq5BZTuc95LjDOkk/H1OcNJLUHErc+H+gwBMjKrGzrS83TaB91xauEEULl0GbVupFFy8gEVdVegVgftGB8IrljixkQlp2zN/FRrUlRDOU4PweiuGmjkItETtVrikpZY7ddH+3JOmm3Sa/tVkk4F22/jO/ih2n2H99ZlYHOhKwLfKmHhesraJkj8IEBCmsmrCTnQIN7g8Z8G64x2nC3YvHpJ3GC1UdYEqzIGGnbxpez+1pfB6xegFv9R/Ncm4XBqbNdx+SZCAcbDChGZj4JHv69vNqwGG1ekzcu3f0Np+fT1HHOckHfJyfnHV30QBw+f3UBonazO8VOYg/dAwDTpd9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MYz3qNLJcrLXC8saVUwl+ceZ1HCZ2DI6iHiiclDqJ7A=;
 b=rq0K0fO4uY+0edHoaDwBevjj0aYXLkEh/8ja9+Fl9oyuMLaIIQW7XJ9RDBsrU+2+VECSE/gYj8nZd33MhHb1AYoEVqjfGMsp+t/qOi/mNWmYJu2cjiIw9zI9e9MsEuCc22S0ZTdHATYw3E+UArCG2/SV2HLae46+DJzYtDoI4Eo=
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM8PR11MB5638.namprd11.prod.outlook.com (2603:10b6:8:27::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4755.11; Wed, 8 Dec 2021 08:08:06 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::3114:bfaa:f64d:684a]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::3114:bfaa:f64d:684a%4]) with mapi id 15.20.4778.012; Wed, 8 Dec 2021
 08:08:06 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 1/6] virtchnl: Add support
 for new VLAN capabilities
Thread-Index: AQHX5X+8Z9avpF7fWEKMIZEccPNOLKwoSlxw
Date: Wed, 8 Dec 2021 08:08:06 +0000
Message-ID: <DM8PR11MB56212059F295026BBFF34300AB6F9@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20211130001604.22112-1-anthony.l.nguyen@intel.com>
 <20211130001604.22112-2-anthony.l.nguyen@intel.com>
In-Reply-To: <20211130001604.22112-2-anthony.l.nguyen@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1cb8b00c-3c21-4e04-1baa-08d9ba21dde8
x-ms-traffictypediagnostic: DM8PR11MB5638:EE_
x-microsoft-antispam-prvs: <DM8PR11MB56386F63537E95B7364217BCAB6F9@DM8PR11MB5638.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VJ8XeDdPulTNuZ5Dc9SdZhg/S2B2uJxw9DKU+BSO9xvNWvsu5eqAO9NMAd+N+iJH+iS2GH4817ym0BMW1kTyDGfHaHle3kXawgsdKEPzuonREAK6H11CLuubw6N8a/daYElibP7Q6DUwTVJ7ijfQ9WHqUMfBPLLsPCwj7Uadhkp4OqwR4+/Vs7JVIQCSRT0ioriTaWow1vH3Y/P7w0QjPsPiVnkbTvqV65uArqvxGvltD8c8qVqNjXrCxp7uFvPS9sXcXlXuSwOw87c+Rjw9hZZG0cnEUsHRNdoBdgyWMCVL8IWFPz3E8D0Xx2lUuHmC5b+aOq7p3dNpWj+YIe1Hn4entOlTNtajGFMLPvhITeQwZX0Bi2f94y6h0ZyW35AaxRvGWXf6ufjaeXgI/s3gSz0IXGh8xIwSBQrFwY2lkkvrz3mlmwZ+z/JnqIQ4izkBF8ODUXQ2lGdjgfis28I2EGlrr3LeRrrHa7ndYMge7KzGPT2oe5b1fskWlDHgkC8fE2ew8gGOMEgwjQAKGmDdxNG4h3yeC3LSqcdz0bPHZeaFXsWpA4qY0chj18xrg4FrtLHcsHvSB+W+vAllGh865E7YiWO7MqbBMO66vfsITp32xXYSEzYkm3lzT+ccJxfQDydQ9JOhamWGrRqZYQ4ZbSnoe7HNC63Wu14Vct1hivYn2qkfxwqVtNHJpvPZGvL+2oeLZQN5Jt2vrEdizeq8MQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(38070700005)(5660300002)(110136005)(83380400001)(9686003)(186003)(26005)(7696005)(2906002)(55016003)(52536014)(38100700002)(122000001)(71200400001)(64756008)(66446008)(33656002)(82960400001)(53546011)(8936002)(8676002)(66946007)(86362001)(66556008)(316002)(508600001)(66476007)(6506007)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RaglNeEaDyCGKzAqWBlMq7mnSpLl+gUdsw1nwNmbYDJARKhh4KyLsQUU1PGx?=
 =?us-ascii?Q?hZd44AF2ZCdcdRznPNxK9EupX7QebztBmmN1ixqAn872r/sgDXm+AXdAVSRO?=
 =?us-ascii?Q?d0u+n4qlNr9l058KDHfO47U7IBuasvzAYTDYgdrVZlAQNA/vImZtFEH9fxIJ?=
 =?us-ascii?Q?Vq7z7b1xRIbZjnrMXy1FM4Nu7EZiHnPLwtizyalYczXYmd2xYKNPV7kZ4N6U?=
 =?us-ascii?Q?zkfIqK4r9fE0FjYcWLhfwrLUONjYTWAMVdPjdo1K2eZ0OcpFdOqqtfzx9TJo?=
 =?us-ascii?Q?RQSjGe+oXzPnXS4moqA+0k4WUXMOdC8iCDbXZFAK2lUmL1+SUUzJ/rlQf6wJ?=
 =?us-ascii?Q?df2yQmTcuBMApOEQ6bqSAZjUeszUj74e9kqb+2jTdkJTe82/ABEe3XNQpzzp?=
 =?us-ascii?Q?8B1DGHORSibz13Etj9BAcf/34iIM+Zph+J0nTshQIY60FpPmsvy1fOHgNm9J?=
 =?us-ascii?Q?8psiqIo/YDnaWvcd3J5R9eiIzVOTLsgF6Tbb1aZwrTr3jsVw49qpc+WGMglM?=
 =?us-ascii?Q?6HSaiu3QsRc08AINyVuoj8gtMRS2fUwt/ohz/JqXCg0oQ5ySlhNcjb5y8/am?=
 =?us-ascii?Q?n8fPJTHn3G6d/QoesUpCww+7Soz/0vUmwuo9lVj6kVCWIXRe1ZBSFSdMKwXi?=
 =?us-ascii?Q?Pka6/vniqpQw8cZoFR+VdIhKwHbMtnFW9aFIHR8XxopDoNEzmP4qoVnt1Fzp?=
 =?us-ascii?Q?k7eAipAdhTZhP0PEl5SUBebFbgFfl0l6rDDRfwFP5AkA8PtbuU/Kvvi6IXul?=
 =?us-ascii?Q?wfOdXPliNtq2yAoDOQck1CIso5PaSXCQbbq4uWVZDUpk7vR3IpDwbgmlkY92?=
 =?us-ascii?Q?hk+YjjmmFuOM3CW2lpcb88e/akc0QedTKoxQ48RqxbcftseXWoucOSGHL5Ld?=
 =?us-ascii?Q?2WfSIGKv63fwLjnHYnZQmvRj3VfBat0wC/32oCuBvLSeyGbK3hHkBBz+QKPp?=
 =?us-ascii?Q?vTYR+inOs5gIQ+95FPmZd3S8oM8fmyENaueu1D/Es2cR5PcMpIPZCx+vmjjw?=
 =?us-ascii?Q?rMI3XB6eXpYsgmSKBI0MY7bXTTfV4YWeH+9VOON24SJeuJK/13svmypXc1Yt?=
 =?us-ascii?Q?lRxPhH7sug2Hmv2zfisGcOmqcXk4KUqV26U17YcdwGz8Feq4xo8a39ecRVTX?=
 =?us-ascii?Q?Np680Pua3MieEo4GynjM9uGUoJVYMPuV1gZU2XZ6DKLYHd1K2UZt3U+BUWAT?=
 =?us-ascii?Q?p5VJWZVG0UUL4tHus1SJc1nbpnYMc0RS0qeurs7DkkA0hZeqMqSRYyZ5yqFA?=
 =?us-ascii?Q?ENrOxn/a9zGG01GlFbE5oMOviGEpssAeeL+9OlL/T1nK+Od4bd7G9PM4Y9K5?=
 =?us-ascii?Q?MLQgPUW7oS0hf0AhcFFkUVF4eohu32bnxjSgA20cV/crmYm79r8jD0ctm7WU?=
 =?us-ascii?Q?YdK2tSDlm1q6J5XQqol073CtiWmIGDcfgJ0eDk2R6V/hEZwycFcbn+2/NYtV?=
 =?us-ascii?Q?hn0pouR8SYIlFmVTw9mJwDuRvqSDxYdMMa4pvB2zh8AghTGJ+vrHruOaHddi?=
 =?us-ascii?Q?obotqWH8AqSfAoeuEv/uf3Iw5AQ+uFZVGxwn5PtQEz9i+aNyNbOeB3Jeg0P8?=
 =?us-ascii?Q?a92mSKV01MyDeTaQM8ZwHbZm8dYbM4M+uK/MD9R4uUbyoWCUNjxjPDKx7bSs?=
 =?us-ascii?Q?vLb64BfCfondTKbLvj0IKicw1DP/PW1TbM3r4C5phG2swGvGBLSNv45TVTyo?=
 =?us-ascii?Q?RAUpew=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1cb8b00c-3c21-4e04-1baa-08d9ba21dde8
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2021 08:08:06.8174 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RDzi6fH5CxJLvm5lAiWr9WvtgqSveSjte4zUlmcPrUJhoALxtK5Qlfa2VGv8ag/9Hk+na8G2vSk5PXfc2LiZkb4VstUEaFqEBUHvNvY6Ik8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5638
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 1/6] virtchnl: Add support
 for new VLAN capabilities
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
> Tony Nguyen
> Sent: wtorek, 30 listopada 2021 01:16
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v2 1/6] virtchnl: Add support for
> new VLAN capabilities
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently VIRTCHNL only allows for VLAN filtering and offloads to happen on
> a single 802.1Q VLAN. Add support to filter and offload on inner, outer,
> and/or inner + outer VLANs.
> 
> This is done by introducing the new capability
> VIRTCHNL_VF_OFFLOAD_VLAN_V2. The flow to negotiate this new capability
> is shown below.
> 
> 1. VF - sets the VIRTCHNL_VF_OFFLOAD_VLAN_V2 bit in the
>    virtchnl_vf_resource.vf_caps_flags during the
>    VIRTCHNL_OP_GET_VF_RESOURCES request message. The VF should also
> set
>    the VIRTCHNL_VF_OFFLOAD_VLAN bit in case the PF driver doesn't support
>    the new capability.
> 
> 2. PF - sets the VLAN capability bit it supports in the
>    VIRTCHNL_OP_GET_VF_RESOURCES response message. This will either be
>    VIRTCHNL_VF_OFFLOAD_VLAN_V2, VIRTCHNL_VF_OFFLOAD_VLAN, or
> none.
> 
> 3. VF - If the VIRTCHNL_VF_OFFLOAD_VLAN_V2 capability was ACK'd by the
>    PF, then the VF needs to request the VLAN capabilities of the
>    PF/Device by issuing a VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS
> request.
>    If the VIRTCHNL_VF_OFFLOAD_VLAN capability was ACK'd then the VF
>    knows only single 802.1Q VLAN filtering/offloads are supported. If no
>    VLAN capability is ACK'd then the PF/Device doesn't support hardware
>    VLAN filtering/offloads for this VF.
> 
> 4. PF - Populates the virtchnl_vlan_caps structure based on what it
>    allows/supports for that VF and sends that response via
>    VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS.
> 
> After VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS is successfully
> negotiated the VF driver needs to interpret the capabilities supported by the
> underlying PF/Device. The VF will be allowed to filter/offload the inner
> 802.1Q, outer (various ethertype), inner 802.1Q + outer (various ethertypes),
> or none based on which fields are set.
> 
> The VF will also need to interpret where the VLAN tag should be inserted
> and/or stripped based on the negotiated capabilities.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  include/linux/avf/virtchnl.h | 377
> +++++++++++++++++++++++++++++++++++
>  1 file changed, 377 insertions(+)
> 
> diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h index
> b30a1bc74fc7..2ce27e8e4f19 100644
> --- a/include/linux/avf/virtchnl.h
> +++ b/include/linux/avf/virtchnl.h
> @@ -141,6 +141,13 @@ enum virtchnl_ops {

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
