Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 030F1338283
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Mar 2021 01:41:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9992E4ED36;
	Fri, 12 Mar 2021 00:41:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z35rxaFF7d3i; Fri, 12 Mar 2021 00:41:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A705F45203;
	Fri, 12 Mar 2021 00:41:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0EAD91C1148
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Mar 2021 00:40:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 09D624305F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Mar 2021 00:40:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P7m8VJAMQVsw for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Mar 2021 00:40:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AF49A42FB6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Mar 2021 00:40:55 +0000 (UTC)
IronPort-SDR: kxZvsJu/bZTwLncC7Uf2BTNMYVPZdq4vWX3NngXOlu1bZyrjXDpY0txTzX94X2h0E3fX8NxdHA
 1h1UNoGQWYIQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="186387133"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="186387133"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 16:40:54 -0800
IronPort-SDR: eCHqUCmrtoIfCuRnhTFCZANjp62uQDCBJdo/JfxTT905QrtQCwg5x+iSS7Elpcc4JYpMfhOtws
 5qjhkDf7B1qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="438879369"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by FMSMGA003.fm.intel.com with ESMTP; 11 Mar 2021 16:40:53 -0800
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 11 Mar 2021 16:40:53 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Thu, 11 Mar 2021 16:40:53 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.102)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Thu, 11 Mar 2021 16:40:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lG95moo3KRkZplkd2iGS7j+LCh/HZ+lNYYFui04bQA7aDA/WtA+zZltXhgSCkdY9Ts+xfGkqQNdiX6USlAAF71Rrgsf2nELF0yxl7LaO+/JpqBYl8tJB2NQA7i68xMoCdJMbwfgVfPHs/SVj4Cp2q2ZzfBDGyDF16e7ed1D9T/+AYa4yceHhr8Aa/raIznLVkJMmT2MzjXkYda0/vta4itL7VSuU9QNgwuVck0LUzvOEqJskYDeLRQoko+a/hafRZQd1OzzaBuptYUJiH2PvVSMkzeFdKbKSDpdFUFeYGf3y4UQ+KYEFiWyyQO9lIBUJXbdqY2G4A8QKMDReJHEmug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Gv0SA0ZkPVL/mxT90KZ9nIYoafucnLKRhs2wPUt9Wwc=;
 b=Px5d/08/GV5FXKN3DVKMuOPCxQSXEbyl2Zd2gB2rGo/MSi1W7uyAWBTFUmxDOGYQsoO/Pbc3CHX2ik/SYjgV0d5XKJFswy+v2Y8NFR74tSSazhSWPtpIzQIUXYgUBqgNdoP9k4OBp2jRLYGNjTvHHgOzo3tR9D9eojhZ84qFEmgwxJuL3mintPJhXaCSX4jsOYPLBG6TF058SdKZA6Lxi9556QntS7uOgMlpkh9YRLknUYo7bIv65QsQ51OEKpGRqpW1YqZ70oJMEMgUtcEM4Ss3pdJisestB7E4lnRRS6Rp/V8lYaV4GvGVmbRp/CFWHiJh1S2Ru0nWpzqsNI76Bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Gv0SA0ZkPVL/mxT90KZ9nIYoafucnLKRhs2wPUt9Wwc=;
 b=nN//wslBIREb0+2lk4qYEmRucwSCdydf3AF1LOTVRZZzjtZTLxXvLt4FhetpbCwljfC+wlJxRDKu6xzL0m908ym0Im4jBDraZH8ooE2eRHPB1ebijsFI3UG0D1d7BqhpjENL9yx7AmXGuwPrI8ApIlSR8NaTOb5nLkpEchj08mc=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR1101MB2095.namprd11.prod.outlook.com (2603:10b6:301:5b::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.31; Fri, 12 Mar
 2021 00:40:51 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.3912.027; Fri, 12 Mar 2021
 00:40:51 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S56 01/13] ice: Change
 ice_vsi_setup_q_map() to not depend on RSS
Thread-Index: AQHXD5F4LTUFGh+PKkmk94mGIwyRNap/kXVw
Date: Fri, 12 Mar 2021 00:40:51 +0000
Message-ID: <CO1PR11MB51052C4802C77B106E357141FA6F9@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210302181545.51822-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20210302181545.51822-1-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.213]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 88fef50b-5d8d-4d04-a526-08d8e4ef7cdd
x-ms-traffictypediagnostic: MWHPR1101MB2095:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR1101MB2095EBB62225FE102D3D703DFA6F9@MWHPR1101MB2095.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4ZsxAsIB8xHQgeQHuBAtrw22z7nIT2lbIW49w2v1ATbGCtShFITDwHS/B5kiO4TvWpD+fSRcJS31WmuMJNfrE/cri5jUXtLT0ZuCiuXQarR9IT0BqeFromit/lcOHPBlfGOoHq3AseWx3MlxGMLjfaUT//asyt3IMk8SffIjglgWFKdOqLKev3PB0VL3s1YBorWBALKf237EIJ/jkbq+vr0C1Bxzw2NdDrUjZdKaH9jdq88DJKrgICYQR6OkP/kHS6Pa72YuN4PdQuseA/csx3Ip6vDzuXmhzJfO90Mr+J/SWZ+nvjfxsrKO7tskzmvqriI4+iTBFZHmpWmzAH9BfoFyHA6rMtalvEujWmpOhrbd4a229xZ/Wl/EZZUEPki3APpCp/Fqs+3jhVwSqobESNakMKeDXrsUkgXJ/IptLA8YBjWWeJfggBnzuNwnyrLuYpNeyhYxYqfwTU6X4zJ1VjLhZxT/3EFFmI6IHQs7vQg/nYaO3N6dyirRfhqjli5gcMj8JjvQzdfE2orWIgQUsMaF4OM7FpMRaM1TZ+DMdvQ1Xd5uY7zFAzYj39FndozT
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(396003)(366004)(136003)(346002)(376002)(66946007)(5660300002)(33656002)(66476007)(66446008)(66556008)(52536014)(83380400001)(4744005)(53546011)(64756008)(6506007)(8936002)(7696005)(76116006)(71200400001)(86362001)(8676002)(26005)(186003)(55016002)(478600001)(9686003)(110136005)(2906002)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?WbAB8BPG52tlCj32dghU6DaXJqC13m4e2iPUc+WkY7DBL6vgOtOdp++4llIG?=
 =?us-ascii?Q?xyD8Pgv4xv/HBYt3CY2FC7zQMrQwTX4iYG7nTAQ4YOKMSbvkOnVF3CnpOq5P?=
 =?us-ascii?Q?Alc4eCQe+JY/BaO2susLkRlqxk2sc7pCtofzXCof/DuVBxXI3Mxkx7vU/hxq?=
 =?us-ascii?Q?4C/LsbepO5H8jQNfNCy+k96PQwyayQxmIaKGfCWH527w9Y8lA0athyYdtPRs?=
 =?us-ascii?Q?MZIP6rGCevbcYYAAFoY/zIGkne7elyzlbaaWZnAdQeQ2eOCWJeWo0BgzcFKx?=
 =?us-ascii?Q?KwQ4IwPmyDdl4mTWf3Il9bkDNrZTrX1cSYz+UYBo0oY3/JU/1lV5pC0AZ3/F?=
 =?us-ascii?Q?jgklD7zWFvFtRvOo5/RK+TSJgtMaAK+dbW1JGIykZwf3kE/Hh5yxyAI0Sm66?=
 =?us-ascii?Q?mQpRQfHNGRebOSgd9I8/eH7a5VNPC9bUjeLjR4O5PIkaenrz34rlVJSIkKpI?=
 =?us-ascii?Q?xqkSEwqxviNg6reYpkvH0injRa5wpe/avrTj6dWaLRxWhARjcU/hfMdT67JE?=
 =?us-ascii?Q?jwo8+N5JL8RcCfZsj82W7oATfS/Fi9udXS7QNPQIKXt2cel1mlWQTBDETVSg?=
 =?us-ascii?Q?foAizxMBGnGj5E1LV9ms9/nd1FNbQyBfzLoRseR6hXRB6Lo8CEBvJYLXvqm/?=
 =?us-ascii?Q?JkDC+2kq74XXBkiMUCUVYdzocyFTKvK5zlH71IgzHXS/4XnTqYQSMbnYEwtn?=
 =?us-ascii?Q?cW5qrBLQCOqNSzGKyQD6iXPyKfhQAceYBtWYx9AKliGYIF1cGPSEErk6FXrF?=
 =?us-ascii?Q?43xcloye5bbJgMs+9kc9aa4DGpk0LJUNMN/pj/bK4DKOgtrbJhYtBlgPRkJN?=
 =?us-ascii?Q?8SzOkv8EQ9AdPgp7m9hb0MyfgBFX7O9LbYyCIDSopatWp4X09yJbctfMMYGo?=
 =?us-ascii?Q?Ujvazq/NuTXLz4wm+DENjU5561Lubc+OWEpOVn4wkB4IhjtfD7kx44cTDbLL?=
 =?us-ascii?Q?ZyRhmJpUPTQHQo0Aut+VvPL11VyvRIEkz5p9Qz2qWQc6btLpV88HCSDXoaTD?=
 =?us-ascii?Q?KA7jPUfcrSNM8gFsLvDnL4T/tz3WD43FKniuWmmrHs1VSbppbDnSnd+1aEvq?=
 =?us-ascii?Q?JjoH5g2tz4DdcfJUdh1vEh8mJlcX/Iv8q4ZN2hdS1jazjbGeVTwaDg3svuft?=
 =?us-ascii?Q?DxDYZWxP1OyiUxsZ73gjH34w/vSloqVHN+HAYr9Ep9hQT/ZJXqJuynALV95t?=
 =?us-ascii?Q?sQ3nzlq3da5sYH1e7i4jbQCeUaiMuhhL8MFDvD7MSFOSfa4YL//1M4pk5rRi?=
 =?us-ascii?Q?lRLv0tJHvgMYh+JB+uhd7ioilhqa2a3m0w1Sg8BVH9GOJxjd4cKG/ngrTQob?=
 =?us-ascii?Q?xXFuLMCTBt8WB3aY3agHb8aG?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 88fef50b-5d8d-4d04-a526-08d8e4ef7cdd
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2021 00:40:51.5047 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /t0fflZxI6F0REGTowyf5KWMdB3VX/NjNtlQtCE7uQX5pWaAbm+nGIFx2/PChbn8WhnOOv3ZeKWIoxrMaSPe/CIADd1BXz3YMe52DBshHIc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2095
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S56 01/13] ice: Change
 ice_vsi_setup_q_map() to not depend on RSS
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
> Sent: Tuesday, March 2, 2021 10:16 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S56 01/13] ice: Change
> ice_vsi_setup_q_map() to not depend on RSS
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently, ice_vsi_setup_q_map() depends on the VSI's rss_size. However,
> the Rx Queue Mapping section of the VSI context has no dependency on
> RSS.
> Instead, limit the maximum number of Rx queues per TC based on the Rx
> Queue mapping section of the VSI context, which currently allows for up to
> 256 Rx queues per TC.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h     |  1 +
>  drivers/net/ethernet/intel/ice/ice_lib.c | 50 ++++++++----------------
>  2 files changed, 17 insertions(+), 34 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
