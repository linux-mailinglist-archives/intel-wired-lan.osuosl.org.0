Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 09AB54CA168
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Mar 2022 10:54:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2ED86402AD;
	Wed,  2 Mar 2022 09:54:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4nH1Lj1JcV9T; Wed,  2 Mar 2022 09:54:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1C7D94024B;
	Wed,  2 Mar 2022 09:54:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AC26E1BF3A3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 09:54:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 97D1A40395
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 09:54:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZjpwkyJAfh58 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Mar 2022 09:54:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BD045401D2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 09:54:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646214885; x=1677750885;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6nqBv53hHzuG/Ex7FT1SrDAA3QcIFBw8Z9tlGeNKeOE=;
 b=BQQTEsUEQLKY6Nq4LN18aBJTsf1qhz5M1OTSSlPdoL8cp5dFgP8YWQTs
 mc93bCdzpMDErRFmwvX54Bke1JXUOQ8Xl1Ue10DBymvrkh+5ghlt/T5fT
 1DPi0ReHY7O80Z1nkOM+1dyCJ+uyCXp6QohKCjbTKvMZC9tOJ4aCb0cp8
 ALlZXjn1VqghXn62qWMwInvd3o6V7Ggym+/9oGV4CT+yScCN2ABQe8RHy
 0jtI9RQTe06Qo1Y/AvvAqgQBKA/7xlSCtyzbJdOn0ulLtAvxhxXJOCYRG
 ybNt4RJOMgUfjrOyBDJl6+a0HJnGNBDhj3mbeOj4dUG92DoXY5s5H5xAC w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10273"; a="314082178"
X-IronPort-AV: E=Sophos;i="5.90,148,1643702400"; d="scan'208";a="314082178"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 01:54:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,148,1643702400"; d="scan'208";a="576053630"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 02 Mar 2022 01:54:45 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 01:54:44 -0800
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 01:54:44 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 2 Mar 2022 01:54:44 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 2 Mar 2022 01:54:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KIhroSB7+CdWvyzOjX9E8fR0VSvC5AZiySEtcAh7nUWHACgsYloW4GCZHqjdWG0ogOJigovJTfx3mnP1tPdslHr30dT8Cb5rjPXhXto2BiAU5BiKU/VMYpe65RjgKywo0IwXIptJIFc80pFYf/5GlKOiDlZRD5HDSa8/h6kgwVBCH14PODc/mJe6s425Hw0YfMqZEYffDmG4tjabt+erwKGL1TF2BLvxy8naKev0Wywa82tBXJyv3VidaJMNQ1mXeiLyNkVSvQ9Hj1fhlFTcmt1N9Cb7IytjEOplUKnBvb1AXtcgJwOiJBA7iNaf3Q1CX3PyOFUjVnYoW3QnLFj+Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CrcmzA+lT0p9wRwRieABcPRtA0F/GzPGqypwyCqO/P4=;
 b=FJEej4RYTcsHX+zQOtKcRS54XEisoIzHd6DzHwkAzVzA1tkLcVwo54HcLzF9jE9yGbas3Gc3pl1ddIbeC+oQdG6JU6Bhpa9HsPEe8BS0TdaRFCplZdaNjLooW82JYZadVUFaE+b5ByGOGY+rgpulHVh1y0J8MBcJzdimyVIQ7z0/gpWrytFEwTwZUYAZrJpK4vaGo/XTgRlXPXrZcnRfrp6WPOghiOTFqsvqGiGqQZO0O4GeIEvdpqzMtm1WJBi8m3ZyVwYTXQxlJVaXJlKnaRX6DNwyXoUzkCnnMJlZuFIO78m2iC14cKdAm01bkz3UOnQvrHNf/evuNBDGLeiFXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by DM4PR11MB5438.namprd11.prod.outlook.com (2603:10b6:5:399::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Wed, 2 Mar
 2022 09:54:42 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::a594:7b41:f854:2478]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::a594:7b41:f854:2478%3]) with mapi id 15.20.5017.027; Wed, 2 Mar 2022
 09:54:42 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] ice: Fix curr_link_speed
 advertised speed
Thread-Index: AQHYJ+F/OnOQKLBQ2kejVoP9sUU4eqyr5uwg
Date: Wed, 2 Mar 2022 09:54:42 +0000
Message-ID: <BYAPR11MB336709F8B25883DE9E0134C9FC039@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220222114304.126803-1-jedrzej.jagielski@intel.com>
In-Reply-To: <20220222114304.126803-1-jedrzej.jagielski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d10a1b58-7429-480c-7e5a-08d9fc32acc5
x-ms-traffictypediagnostic: DM4PR11MB5438:EE_
x-microsoft-antispam-prvs: <DM4PR11MB54380B462087B7CB0EED1550FC039@DM4PR11MB5438.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GeBm5x8ukbVRoX+J5jif/FVPqHRWDzaBNZ35NFIngyEn3FRpr4koB6EqCKWqKYv+46rqQlfsK5GOksUN9VFwSTCnKUhYOqLe8UlBMCgeL3XjKgT8SAJaGYcy9C1jqEuV4JonLglOFv8Bt1uYob/d4yHlvaT0k0eixYd5Bfy4TjDTCMe+hh5MMdioD0a/0hirWCx8Y3e5/K0XIyuCGlwZBJQnmSjHVXIoQrxTDtZ/pPsbPkwfJ9GPOXZ25W9WgIU/Igt2+ZjU6dbGDaWuk/ByF/N+EMOCUTP1PT9NEGC8tT5E9Lyiaw7x2QaOT/jYl4+nxOpRD9w2inpsK7+1aIplwPzI3PlUuMVfyTdtuBT/l2Mjlel+67Ps0Rex378QDUOB25BEs/fiPf0omCAhuTBf/lvRcQ2DJQU8ydXnFI8grIK4lNnj07rYfCssKf6L3uCdbU12C1MG1rS3+0EEehE5bl/cmwsoULDYbYQrBrZOwNmMZUxmSnN6jApBsuw4ui2mFXxqnKe18JozHF0FO4041ji9ifQxWgvMsqatOMfYukqd1HLMEm+oRMcoUja54V9FemgqOU3KgD0emgKYM3neKTV0f+lNmEb7tLQNrQhvJ/weWn8BXKZ9ycdvGsp76VLVqR8JuNv+JUpbusYHjYB89itvtgiYavCjQP20K/9J70Akazd60I0Tl++tKADqsDrR6JcHdIZMZklUvEHsAhsI1w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6506007)(7696005)(9686003)(71200400001)(53546011)(55016003)(54906003)(110136005)(508600001)(33656002)(66446008)(8676002)(64756008)(316002)(83380400001)(76116006)(66946007)(66476007)(66556008)(4326008)(5660300002)(82960400001)(8936002)(38070700005)(122000001)(2906002)(86362001)(52536014)(26005)(186003)(4744005)(107886003)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zejiV8Onaet1ELL52nrDxguRDsCEtMJFAAkutHIR3dA4I7lI4b/fZTgYLhJZ?=
 =?us-ascii?Q?bx+6oNXKZ2X1PCStUgaEdRT9xb9GLbBzn+WPdUoQQ7dh8kAS7/K+BtoQPH+4?=
 =?us-ascii?Q?sZmV5V1GpW4FDvxH5dlnAy/YCq9mF0uEvgG4x2AqVtqMG5au+tirhCh5q4FH?=
 =?us-ascii?Q?vLDQD4LpzuZoW0RKwZmeEcoNelZzxjY4XnUd6V4L4eivxBhFshV790YzVWMn?=
 =?us-ascii?Q?lYb34R1y4JTRfJs0LrOKD0Bt6GqGlVo+EOK3AR7Z6whlL07LgU/dwje7Pfj+?=
 =?us-ascii?Q?MWS7SNG4C45GnlO97OJ1hTvYe9rpOOEnTkEc/CWgr8az0cl/Ge617PZ7d+QJ?=
 =?us-ascii?Q?MYWEsX5qXZBCVvnH84Neoq/uEVIuWYrAMzc0vgBFrDuPZHzzn627P9/koK1m?=
 =?us-ascii?Q?sUMuRrs6wid6eU6QoiYlGHp8wvYi/BWp/mAL6Zt4aEAzcIByCadrgIhJs6DW?=
 =?us-ascii?Q?liI2SMdJ7f29Mkv5d61A6OV2ZXSSBziBuxqn5/d4wxndn2KE5J6kDuds1oUP?=
 =?us-ascii?Q?8k//T9c+V1k19oAZrnaEZQrlLcguhjW67TM0T3zNiAaxkhgB3UkhqiK+qkCp?=
 =?us-ascii?Q?BBjBA3hzMJfPLjiFeK1s9+hyRPTqZMsH/wM9+cM8xT0PVeaSk+bj6GUcLF36?=
 =?us-ascii?Q?FNF1SzXcduSPNSL1eNxJIJ092vE0b2ppMK3PUkzhZcOXYG4T4khWbE3V+ubj?=
 =?us-ascii?Q?bAmKEUbYnUMp6gEG31oYkgdbMaY3EMFJdtlupwmkbj2tF/F+5YJkvuooj7Fb?=
 =?us-ascii?Q?eVRCTvL30l++SxivKoK5g0GBvGJoyk6IaS6trfm+7oxi8XH+7NS0MJt92HCf?=
 =?us-ascii?Q?yS8AC3I0jA5dUxr+7ZCU4pakYA69+WvJuCuQzFukyKiBgsAZL8ytLgbeRcUr?=
 =?us-ascii?Q?8ftISZyqTD10Cl9ONlgeOp7+i8d+eH00ggIJ/2tP3Lta0djyPwYS7iYcCCUd?=
 =?us-ascii?Q?vfZLnO3a4RkD7jna4DVaP5EWDdRQ4BL28ewgxaCIJDknqZBmMPnJQFu1HJhP?=
 =?us-ascii?Q?+OvdFS60fRIyqpsyZ25KTkehURUWyCUMzzCfdvUNlsz4WKxvdd4obohaBMZq?=
 =?us-ascii?Q?MiicQfftcg6EVbO7tooHLrd+3U2dFyrk+VYcJ8ZIXNp6p2x1SWPSa/KhQ+1/?=
 =?us-ascii?Q?IoSS/hbSiTYWtJooJHcX5WCisQRD9tvAoGiwfwQJW/cOs0MaoOhqhTtD86IA?=
 =?us-ascii?Q?z75cr2rF44GejnRWAzeoXZZocSwJfQJDzG4UgOtGbuiXQfhLfV5T4Jnxz4kv?=
 =?us-ascii?Q?c4wBb33Hvt8LFQGqm0/mz0hxqS924BjjIaA5+2c5aT1MP7KVPpBCZvEMn39o?=
 =?us-ascii?Q?OUrlxgERc/cOcATxZTD+9OlF1NAKs8P1T9oI3m5x5rYMTb4edJG5XoOOJSkL?=
 =?us-ascii?Q?GFTWasi/pP5FYYz8wwl8OLM6lysn3qYf6fEtKjGAUXCNLJgqxU4OnpVPlI5E?=
 =?us-ascii?Q?yXJmXW/6O9hM0zbTF5AzKY5ThIZUDroBym+fvYieVDZnNwZ+0bLmmDVF3XU3?=
 =?us-ascii?Q?tVVzsXv5o9JI9pz7VWWWZphIwfvKC3ST5XbUvL/KA4RVzenkblBFMs1pnglY?=
 =?us-ascii?Q?PFniB2CRvoeIfN26zax52LvYjJhR0K2FtyO5U52B/1ZnjKN3D5KveLf5yKHU?=
 =?us-ascii?Q?9A=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d10a1b58-7429-480c-7e5a-08d9fc32acc5
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2022 09:54:42.6199 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OeWNeaVuKxSAaU+DUNICwlfecLIKL4pSqwMNOcta51Xp9mc56xoXu8sgtyKboDhONtMx8nreCsh+M/Dfb2u1wQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5438
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: Fix curr_link_speed
 advertised speed
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
Cc: "Siwik, Grzegorz" <grzegorz.siwik@intel.com>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jagielski, Jedrzej
> Sent: Tuesday, February 22, 2022 5:13 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Siwik, Grzegorz <grzegorz.siwik@intel.com>; Jagielski, Jedrzej
> <jedrzej.jagielski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] ice: Fix curr_link_speed advertised
> speed
> 
> Change curr_link_speed advertised speed, due to link_info.link_speed is not
> equal phy.curr_user_speed_req.
> Without this patch it is impossible to set adverised speed to same as
> link_speed.
> 
> Testing Hints: Try to set advertised speed to 25G only with 25G default link
> (use ethtool -s 0x80000000)
> 
> Fixes: 48cb27f2fd18 ("ice: Implement handlers for ethtool PHY/link
> operations")
> Signed-off-by: Grzegorz Siwik <grzegorz.siwik@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
