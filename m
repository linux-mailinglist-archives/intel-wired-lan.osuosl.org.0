Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1AA7DFC87
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Nov 2023 23:43:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D0D2F42131;
	Thu,  2 Nov 2023 22:43:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D0D2F42131
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698965019;
	bh=UZvCOLVQ0Ar4sRTH/nvXhDC6gnvJeHOtcOlNft4BTWw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zRqQBvFluPAnjOOrFbOZ/IKPny0ygMkC9pEJqBzqkrTnwQB0VBe0g3Nx6EjuXfApg
	 49CLj4AY0ccoFnPOffWWBCgpwWoKJCGzV1FUA9fJrhFdMzEzZV2zoX74LkfjrigMXv
	 7uEu7qJe5qevqkQ+KlhrVZbYTxKAQ1EN84atlIaYSiJlrSVyfwvJ9U4qZFQd3eg19U
	 y3TkUethmlkS9xyE6sxz5fi+Qs/VNuyyYzq1+UNWAzfm7R0OjgklB9FXXwTtVaJMgQ
	 UjkL8aDjVFZxcKvRxltHqtGSHDIvO6u5enmFjpJCUtOWs25s7KEW0DWXrEz7nZR/Hw
	 CxDfFWoSsP+Ow==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6n3AOdq8pouA; Thu,  2 Nov 2023 22:43:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A62C441F54;
	Thu,  2 Nov 2023 22:43:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A62C441F54
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 21EC21BF30F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Nov 2023 22:43:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 05D778511D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Nov 2023 22:43:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 05D778511D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4-aMhMAdMXZC for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Nov 2023 22:43:26 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9F9B585117
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Nov 2023 22:43:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9F9B585117
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="391705747"
X-IronPort-AV: E=Sophos;i="6.03,272,1694761200"; d="scan'208";a="391705747"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 15:43:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="765071500"
X-IronPort-AV: E=Sophos;i="6.03,272,1694761200"; d="scan'208";a="765071500"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Nov 2023 15:43:23 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 2 Nov 2023 15:43:23 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 2 Nov 2023 15:43:22 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 2 Nov 2023 15:43:22 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 2 Nov 2023 15:43:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G87jNLLok0llWMjdFy8bMedSoqYWjro/cNgYcyNH60o1OGA+cPnfkTPGFl8Nkr/10q4RB5bxCpQ1QEigdEGfs7r2zkIKOA2Wcon0A23YBkJ6s14gTtpuTnlRc2l0p0EvHSWpYkcIuQVVV1EuzzcfcMlflY5D54iO6PLCpD0YzoXL9wMLLvtxuP9SJimKr8MDEvk0P/D/JmH0O+1nEiSlRsT32nSlEWw9VIyT3XFpnKjoQ08T3TaJoh2vmT3ziro9sQvNRfzB41zvi4s/DHTSREj6hJUO7/x4V/gGqfKGb+9iX5GChPb57CHOCMdCM+8g+WWeulrTNTOFbuIZRZkrLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7SmrYEomSRDSJ8ozBpfMkkrEJhoAkupHtX5eDR6mxaM=;
 b=XqZYodZLEPThyfIoN+2mdndk2gCeT+If8QM7cj9S83BA8c8NTPWsHhEIqcN6lyIet95A6OR9j38Vb9036dAlilZGf1FfDow0za8bxRTiHbdwnYQHJ4mnvA/nrggN8iePiAgMP4gv0Lr6GYaKOS1TvTsm/iJWDYW2WU+GUSD4ZaM911fW24wYraCBUzxnfA6nho8AEiZIqK0QMT2G+bay1hYT28DJyA7aWoBdjGoKVS/Z96D5pLwfx86TcSrCt93IKDr7eBv8ZjaA8Rx47L1ZjKvcUU0QrQdK4BMZv4Kkk3FfSChxcznsRlUINjxE8zQRh7QeI1FaGXchtZlPoWgRmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5028.namprd11.prod.outlook.com (2603:10b6:303:9a::12)
 by DM6PR11MB4513.namprd11.prod.outlook.com (2603:10b6:5:2a2::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.21; Thu, 2 Nov
 2023 22:43:20 +0000
Received: from CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::8826:2570:4809:62ac]) by CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::8826:2570:4809:62ac%3]) with mapi id 15.20.6954.021; Thu, 2 Nov 2023
 22:43:20 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] ice: dpll: fix initial lock
 status of dpll
Thread-Index: AQHZ/cAV5KNtiqZ65ECRl7aXq38QCLBnv90Q
Date: Thu, 2 Nov 2023 22:43:20 +0000
Message-ID: <CO1PR11MB50282A32B118CD83AC45998DA0A6A@CO1PR11MB5028.namprd11.prod.outlook.com>
References: <20231013102510.34886-1-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20231013102510.34886-1-arkadiusz.kubalewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5028:EE_|DM6PR11MB4513:EE_
x-ms-office365-filtering-correlation-id: f40e888a-8ea0-46cb-e41b-08dbdbf51d09
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cwWQG23XCSCHOdmwdRToE3I0kUfg3lSdvbaDzmtzGxnUz9M1gMJvb7upQmwc29kEx5WC0LucLgDYZFbkt6hkqRbLUrL5f0mQ5BIHfq+wT/ZiUeOKgQxBY7npzg+SDB3oVzLe6xylC0Q4scEpm/7anW5y1+5ndj/0ACwaAjCsVKqp6liw1ABXrmevZpUEPH/C543Ij3zJHQHM16+5v/JjfGHHpQHfQ7ihwgKcfSVYI4/KJBXKpCXxG/hQBIajOOiIGRR0EvgII1r5SLTTv8gcrQ4OHJsWMdusqyXbSSnOwHYBSfsayIHKpFW1k481qHwFBQpXRsVFFqIx5uUb2m5DhRgxwLwyHNBXNGItd8Fn6KkC0xunAvjxI0msNTt9Wm1mzH3lKjdXQ8nbIhjIRI1f8o+dtVYuDjsqV2FKdOHcTBn2eA9jWEbdIwgZRWm99vGtXWtWj5SBO+fey5dg5DSVHJGFS2yv3utpmLRkksD9G/n6VonjLU6vi60B4+1X+pjn2wJY5eeJnCUxUEpr5Eb4dJSEZd9qWN5woZgCQliIR5rvxYF8t4JqpjFZ2/wK00iUoQW5fPNaNBilHb1unslEcpMz6KHlgrcpJ0CqjyXF6t0FAaZFCsDGgG0q/I6iLTXO
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5028.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(136003)(39860400002)(346002)(376002)(230922051799003)(451199024)(1800799009)(186009)(64100799003)(2906002)(478600001)(107886003)(26005)(41300700001)(38070700009)(38100700002)(82960400001)(122000001)(33656002)(86362001)(53546011)(7696005)(6506007)(71200400001)(83380400001)(9686003)(316002)(76116006)(66946007)(66556008)(66476007)(64756008)(54906003)(66446008)(110136005)(55016003)(5660300002)(4326008)(8676002)(8936002)(52536014)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XUt1gdQveZBbqNUenhdj43Xi15P5+T2uqEW0lENatd0AuhvvOoOCoCbDCbX3?=
 =?us-ascii?Q?mqzoqEbrKYQaqazyDZgA6zXxBk5jxdT/ahD73DIcNGyew8bFAMGcfoeUIWlM?=
 =?us-ascii?Q?vWLrmxP5P2kMWLvIJS9WXy/C0eGEiXIYZCTfCzplsEM7PxJwznfJ3XPuzE/N?=
 =?us-ascii?Q?omYj9JLZ5Ld8PvYNARyOtsHvFOUIlNoucYTC2wIPv11BvP59amtr7tQ2Id7Z?=
 =?us-ascii?Q?oClZv9xsa9CsiNNiQCJF7ByrqlODBGlHXsAU/iX2S6hKzcIBNNUQPSu8Ecfp?=
 =?us-ascii?Q?+0oHbX9Ry8NMkANb+cwHq4o6H+ageeDnFaxIgHWslnvxNGbWaXCLzE0pr3Ms?=
 =?us-ascii?Q?SQ4by0VuSjSIMp2kgyigtG44YXR6WuUzaJ0EULLD6Dpf3Fd42b8C2pHtBhlT?=
 =?us-ascii?Q?sdyQvHa3r6rRVqGM2WXn6y1CWRO+f94g1Qnq3fETX2yeNADiok1a+z5QzD1w?=
 =?us-ascii?Q?JSQ16+EAGblAX/zTU5EGfOxg24oOs0izg0E/mPtTtGvEdUXfLelu+bUid7Lz?=
 =?us-ascii?Q?qgFV3gBUmXFc8MyNItCdgj9BbpZk8Jke51C2OBDq2xDHMnpFXWpWKGMik4bl?=
 =?us-ascii?Q?xdRUmX1PnlPKfuhrh5WvSRhZPjmRY07AC6CU/bEohBZkw98CYYUuT1qCkhu1?=
 =?us-ascii?Q?82PFgW90dO8c92KdhJ5Q240yK7wQCHDKRqmTyA3v/md0GKRYmh03svMfVtV+?=
 =?us-ascii?Q?3aXBh4ZSaJGW+Fogr8YbwHB2FB/5drkhuNFPS/ye462v3g+yBf2WxpMMs7sg?=
 =?us-ascii?Q?qa4H3Bbxx+5GvwnCbGrPhf7X17yFKNRrlOL/s72JCJvm1LZNc8mjsOprp7HG?=
 =?us-ascii?Q?eASS2XH3b6uMR86u1+xzZCRZCvGHx5tfflguDo7VnbO9hlaGKuOYKnUZE1AR?=
 =?us-ascii?Q?/naFQJ7UZh23p2g0K7o6vQMVB8Yl94YM+yVvxACb+B9dCafuVhuwE69qFrqr?=
 =?us-ascii?Q?rFF93QbNb6hE+Wqcm/iVKcqBg48UM9nrVw6qXG8n0gOC3UkBcB+/DibKwHK7?=
 =?us-ascii?Q?X6gCQcIdjJdUe6P1Dqw+gUQI7fQdhLjYMNMtZBT+rLsH0hiP7b6GI0Pv5WCe?=
 =?us-ascii?Q?oNFZL7K1Z4kk4a26SEiLGxVVIf9MlJJTZHT3vd3GZoyAkJXUP878jZAgFDtZ?=
 =?us-ascii?Q?RYWuovm87T+8A5ytBduLS6J9JsQv5RCU+UBg2sxgcVVL0KsJBqfNHrQIw4/+?=
 =?us-ascii?Q?Hj/sxPEseVVZof2T/vHJXKYLB1SGwTBcJ2l3N7fSQJzNKyvCJDFJTow6s+YE?=
 =?us-ascii?Q?8Vk429bDJTSMSgnRpTiuzpth3NP1sq37IXQbseZBOuXhXf5kDQ59l5QuefPI?=
 =?us-ascii?Q?kg+02F0QOiCmy99rDXXREzlKesJ3DGhtP1rXrIyKJ4pMrfS53I4BD1poxWcg?=
 =?us-ascii?Q?Z39oZt558qw/plpnZ13hT06U/gPLiim6NXjrJ7X4cExSlPEeX8dkPmhStjVi?=
 =?us-ascii?Q?NEVn6lPI4yhAwv1ucfLJiffhDlpFTiYsA6kzRj36YYQIk9lFDyg/D8ICDnJ4?=
 =?us-ascii?Q?bryFKcSEJ8oEwq6VDeL3QOfePPJSEHJjii1kBDXBGJzOvS/bqHp9DMk+SJRV?=
 =?us-ascii?Q?oR0mz7Nf097ff7qX0a3QwaSDoxKIc9BZrNYgqMWS?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5028.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f40e888a-8ea0-46cb-e41b-08dbdbf51d09
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2023 22:43:20.3411 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WU01f4vVSxn0hXwVgIiOggKjl+NeEVAJHBLThHHGATHUZujcT1kHe41miy5UsG/qPVPTRKudwS77V++2oqtSU6qOIkCaenMuQWliPg1UUNM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4513
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698965005; x=1730501005;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lwIjYPN3xBR1vfmsj+/vb62IAVycTudIrrEsdroqCgE=;
 b=Bt2WG/vDt/pStYSJHTUorUg7bm0jYyw1Kr/I7PbpPB+Zrg5V9pf4eDD7
 lHXaZhUrxsnl+ZCOUtMO0G/qx6OcNc5cJvjmYcQWfCx8hpttUk1GRPj+S
 E3V4bKNBQQMr3QlUHUMQ1tJ2KeZ03xmqrLzkQTFCJIOHQpoHy0yRqKBaB
 ptyhdvJhibKeBWrDfh27Y7yB1MjpFLB5ofnft1L5nZsestJNVhGeOtfp6
 WUUmDa28vssPZQjImh1jiQa4r0gg7asaruDu9S/4VLMuaAI2p62j/e4l4
 gceM0ofsmijclFHspncYBdvYENfQ4+vkZ54+qEcocgEYU/9uEu+qkQDe3
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Bt2WG/vD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: dpll: fix initial lock
 status of dpll
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Arkadiusz Kubalewski
> Sent: Friday, October 13, 2023 3:25 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Kubalewski, Arkadiusz <arkadiusz.kubalewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next] ice: dpll: fix initial lock status of dpll
>
> When dpll device is registered and dpll subsystem performs notify of a
> new device, the lock state value provided to dpll subsystem equals 0
> which is invalid value for the `enum dpll_lock_status`.
> Provide correct value by obtaining it from firmware before registering
> the dpll device.
>
> Fixes: d7999f5ea64b ("ice: implement dpll interface to control cgu")
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dpll.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
Tested-by: Sunitha Mekala <sunithax.d.mekala@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
