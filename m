Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 940564ACA05
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Feb 2022 21:06:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CB0204049B;
	Mon,  7 Feb 2022 20:06:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mref7OqMHiar; Mon,  7 Feb 2022 20:06:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7FE7D40179;
	Mon,  7 Feb 2022 20:06:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 77BE81BF31D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Feb 2022 20:06:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 70C7F40179
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Feb 2022 20:06:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EVaeo67FotKK for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Feb 2022 20:06:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7ADFD400C9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Feb 2022 20:06:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644264406; x=1675800406;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Gyjg6SsIHKfQLrF77JnYLZ4Q1BzECAiagUtMOQ0X8zc=;
 b=cygl/65pS+u3JzU30AUxThhBpT2HgLXfnnRh1auDUVdX9KOM3a7HlqZH
 OHxZ1b5cAR/SIjIu5LaqIwzPggF2RQKnPRmwEg8h0I5QpRAL0TzrU9XAw
 MsC4PZ/bvxpKQ/rwdg8ahD8GaUjQvEAwE7g/SI1Tm3Rl3zkOCdycwGC+7
 tyBgMxK+XdDdseN8saCf/Fpj+cHtuHUHvKuGDojrwTACuyf/KM9asD1M7
 82/7sCU7kg7k2Z38AItQ17cJo1ksWB6eORCQcP5DvZv55lI91QmdI9Q8n
 bRPX51oWb6s7SEBJ+gWRT9zWy28NFrX50RW8L/n04IuDk1XneTSI3V1TL A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10251"; a="247634402"
X-IronPort-AV: E=Sophos;i="5.88,350,1635231600"; d="scan'208";a="247634402"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2022 12:06:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,350,1635231600"; d="scan'208";a="499320964"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga002.jf.intel.com with ESMTP; 07 Feb 2022 12:06:44 -0800
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 7 Feb 2022 12:06:44 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 7 Feb 2022 12:06:44 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 7 Feb 2022 12:06:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C403a5ESVkgWpqWdYzRJ1LKMY5wgiW1cCl/DffUSr5eQTVm4kGmyD+39FTdedHh4LGO6CB0LITZS4fJyWFGR9iBBkG/PViA9sPm4ZkcXCU9jw8ZKwCQzJEqTSxsTCRY9XvtvjsI1r+POlEvBoA3tu6RuTHcbEIxOCH88JQ4bp0YHGKRzplVkrbObHI+bbuo4hNNIU8VmCs8RA7cwyCXv0Is1lloN5Ni60+1EPuzmR7lY8cXjuPmLFmymn/busE8iTjkJXn8+J6UOv+/gAMSKUCDrN1Uj7q07KuK9hFHpvr7C7WEnoIeNGQMIrIizqZ4QhZ4YOTUbo+/eNzuf1z9hAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nPlZ/zA110YoKMAdgu4MYO81B9cYHauWigxcd1+Eq7Q=;
 b=XtrGEXFeJoWuQpCLMg/h4XFc+nuJL5daEIH5hTinaj7yAVJFP7wTIOY27BucnuId8IHzRAOaPMNi3tGAI+im04Q9Bokv2XLvG3YP7dH1tH5Z98OnIPaJnjgcPIwmP/ByyKUzakY4zo4H/WifxXOUMH5H92QNM0ry3nwu5L2swM2/rzRvMqzJuDHlJ6m6XRal2Yefi08pr1Vt1cwR28pIeojbQx2r5SAd4Len73qeLdtbDosxq9C1CW3EHuC8gS0OgF5NsaPP3Y5gZ2lxo6Uf0MUzaqc+aAJ3gihKEDcXIR1F9QCJc7HfzagwJX9nsiNtZMB6psUhy6g6xPSwfNMyDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by CH2PR11MB4455.namprd11.prod.outlook.com (2603:10b6:610:46::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.12; Mon, 7 Feb
 2022 20:06:42 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::3162:31b:8e9c:173b]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::3162:31b:8e9c:173b%4]) with mapi id 15.20.4951.019; Mon, 7 Feb 2022
 20:06:42 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] ice: enable parsing IPSEC
 SPI headers for RSS
Thread-Index: AQHYCZ/HZ3SQ7VeR4kiaMeuWIMhuhKyIqQeA
Date: Mon, 7 Feb 2022 20:06:42 +0000
Message-ID: <BYAPR11MB33676D290B3FD574CE160B65FC2C9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220114233718.67841-1-jesse.brandeburg@intel.com>
In-Reply-To: <20220114233718.67841-1-jesse.brandeburg@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 15fa8632-5df8-4870-dec4-08d9ea755c0c
x-ms-traffictypediagnostic: CH2PR11MB4455:EE_
x-microsoft-antispam-prvs: <CH2PR11MB4455EC81F60C394018F2AEE1FC2C9@CH2PR11MB4455.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CIwlIQtkpg4wbM/ou8qNU1aRykssIfv7AY/Dv6tafCsTa2YC3lO86C95hNe62ar+T7xeUaZSj9FqPDm4CwgBW5ouOIIU5VpQbiGjltPbsbrdN8A8lhN4U+nXw5I1TAe136BypFkjzL9YXM0V3XdewWPBjDXsChwU1HTzZ8BHPvQJdyfT8MXQm0wBQLT3jiUu+LTZNnQL6vcNsgZQcRTZiRkXIBtDKiTalVCmMajghvOepTqjFTr1z9zjU54LLczVFqB4uhyWC/9zaz2bjue5jMxFSMbVJRWyvZO3rnkdlJcGQP3uWB6H3TT0bIYf61x1VhQz6eFJr4I2DN8Yrdp/mE0yutVQoIeAUWrJsN+QlQHBawt5YJz5D01a+KCy91VXGD2bhnk39vwmRtGk9ILvoss00cJso3Lk2o2+Vcq6274lX9V/usc+Z2Rby4DOqvwNpn/+LPXKTh2LNvqG9PYUmlDd9Fy2Vm+SEP+SKw7p6kTmiCESrGNsrGJTq+RtBOGeMP/+sm+qS8AaEv9QyECZveD5jO8kRcGTii6ZAaiQ5XoGWlOawcB51KOZBjzZcDLoqAaWdbY2U9eYRjVatd+f/wz4IKHNTfY/sL6KGuZ+1Jc0eb7ZJSVz+Tt7Pj+2san0pYDyi962DPkXwaa7yZE1JNcchwAbXCuSUquDthgd/sxF8BmiXEJenJiXYySOwdNl/s5YMwV/hzXR0dFemKZg5Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(38100700002)(66556008)(508600001)(8936002)(83380400001)(8676002)(66446008)(66476007)(66946007)(76116006)(64756008)(71200400001)(2906002)(38070700005)(82960400001)(26005)(6506007)(7696005)(9686003)(53546011)(33656002)(52536014)(122000001)(110136005)(5660300002)(186003)(316002)(55016003)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tmFOPRz7uyqqXp/IuyAasI+50cIsFHjUWBHbUZU7lheRUE3VHATuU6zBwVdK?=
 =?us-ascii?Q?zrlTN39apPFNmNLLp9In6WJE5G27iUVUwiF5w86t2LVcuxLESqHp49ulXfkK?=
 =?us-ascii?Q?tz0FR3/9uAHUrlET646eNuV60e8AoTmP8cX5T7huI17+upUz7x1yvVDDuSQO?=
 =?us-ascii?Q?iLOz132Btf8y4KdM9wKG6mrAOc5ZVgYco8XGhU1y+n2eAZiZ9uS0MVYg+swQ?=
 =?us-ascii?Q?zhBCfQWgcqSN7MkL939q+noyNGcrChsxL8EvDJJn0X02awu/4qaeoAuae1Te?=
 =?us-ascii?Q?SNsjlM6t4RD+oIsS3kb88Jny5vClzV7kk/ea/q6V9aFXSvs/aQnTSQ4RPNYG?=
 =?us-ascii?Q?bY/te/3Dd/SBlYbYtPr1ZPm7pMImmrYIwpYChlOEPMpXyjS+w/hfN8OUDpov?=
 =?us-ascii?Q?3tGGc7PvM7bWzOxg+Q7CLJnp4ZaiSw/El4YjhG0S2Krf6dl96iOQjrVc9/Xs?=
 =?us-ascii?Q?nW173mIbLs+uattDPj2Xl+iMdZJFu2oMVRUCptx6F7xt//iUunf+hwQnpGIZ?=
 =?us-ascii?Q?38gLZ+o6iW6G4dmj7zGn7ePR4qLQ9BlPxDdGQt3CArgNaFyeTbpMD6ckzpzQ?=
 =?us-ascii?Q?DI87q3jNsaEr2JfaJxdxUhRXO4/Fs1jtSBWAFnBNlAdR916RXR4q+h1RVNav?=
 =?us-ascii?Q?+u0LtpjeamzoJBsa316crm8/lXdT+kOz3YyG4szGcUDseoCa/8F848qgzGt6?=
 =?us-ascii?Q?Ht1dDBk6Z92ULltwdUaeydkCmqLYWC3iMbpjZFUjLfSPV9Lyf6pyldYpEH70?=
 =?us-ascii?Q?ShTtANMmh086Xx3mYT2C/DCjQGDvp8iCCKInTI0AbuOLURCMAOco6u3lTpmz?=
 =?us-ascii?Q?ij9CW2/BawMbROT3tgGwNmaunpu1lasXtqK34YPxG4Xcodh3eus1XJUpnsKP?=
 =?us-ascii?Q?gGwUOxzfwYPmvWv42qlk/qADmbxDwuKxMx8ODl2+/Uhu/h0H382/N172lK28?=
 =?us-ascii?Q?5BL6CK/OyENoruh0l+RqmE7N7ughhVEpq0sX60iTyeOo6wfjmDodJEkhPBqo?=
 =?us-ascii?Q?P9i+W5CwM+Ne0djiYreEbOtK0buzQJyJvMvT07yWmXi6SMS+3mSVGPG3iw6H?=
 =?us-ascii?Q?klbIXxHWNi4ShLgIdHpUOJaynHpgSHslFvRh69E7Btr20Onnqo7lrR3Lw9uZ?=
 =?us-ascii?Q?52yv+DfT7LFjH4G4a3sZDVv9mnO1x6nr/deAHT2yZzCUWoERU6BYPUqyPAbF?=
 =?us-ascii?Q?5ZTMzcGthf31q/DhKC54XoKx6JiwkLNYtapfAFI5VG4LUeIdCwEM4QjOPYY2?=
 =?us-ascii?Q?VoQQ6rluUw6NTWnIjs5yWSCl75qeVbsKm6pve6HwlklA+PMZmRd4oo+l/n9J?=
 =?us-ascii?Q?aaJ2Qiteb3ctfN9Apk9p7mitLhHDv13HVtzdpafNlCnw4Wb2n0DFfDFZWCcY?=
 =?us-ascii?Q?wdJ3ZhsoGiqOtf4Zr6qBmBYi5QD0eRO9T33iRWI58c06/0NcDQkdwLbzFsQP?=
 =?us-ascii?Q?wsKhKbnw/igE/qm43HW+Q0CS70sMww9BMO6TTchHztynZ5xHjoi3niqipjl4?=
 =?us-ascii?Q?dPqdRD58u1CTGf8uh2B4Wl4HtlNHWjtV3cdzlUfY6xMsc8iuMFZotKdC7heF?=
 =?us-ascii?Q?H40dp5tvcjYgyMQTQ7j+f18NJriOdaJtJXIVF0+usZht58aqbcFdpghwOi1m?=
 =?us-ascii?Q?rw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 15fa8632-5df8-4870-dec4-08d9ea755c0c
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2022 20:06:42.5118 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TF/u0Ptge+XcziDaQ+gwIIr4rdShlqxXRTY8QaCiAwAzPdf+PI+v/GBhFkB62oH4zIQVLztx63TsffFLRlA0eg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4455
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] ice: enable parsing IPSEC
 SPI headers for RSS
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
> Jesse Brandeburg
> Sent: Saturday, January 15, 2022 5:07 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v1] ice: enable parsing IPSEC SPI
> headers for RSS
> 
> The COMMS package can enable the hardware parser to recognize IPSEC
> frames with ESP header and SPI identifier.  If this package is available and
> configured for loading in /lib/firmware, then the driver will succeed in
> enabling this protocol type for RSS.
> 
> This in turn allows the hardware to hash over the SPI and use it to pick a
> consistent receive queue for the same secure flow. Without this all traffic is
> steered to the same queue for multiple traffic threads from the same IP
> address.
> 
> If the package is not available, adding this type will fail, but the failure is
> ignored on purpose as it has no negative affect.
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
