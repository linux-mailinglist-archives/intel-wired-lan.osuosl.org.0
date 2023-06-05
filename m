Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DE1B722365
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 12:27:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 14ADE82360;
	Mon,  5 Jun 2023 10:27:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 14ADE82360
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685960857;
	bh=+tJdTmEhO6r5oU9WEH4eXpERnLn8V4NH2CGv4zWIXtE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZZLjVY/qEZWrkOBrWxkUHZ7ieGwA4KZ7CtK9hSnS4A16loPpQxe5wHYdvEk+KxQZV
	 qAZrg9DAC445pWrJ6uSq5j9M513iOKMfhHYe9DipGIQbcdg+RXGpL1ERg5KxXSj75r
	 /V9uJI4lLiFx8l/aDby6hs8BPqCuzsYaskHgJxYv7j2RwxoL5o9uAHKwoYty5hVUtQ
	 InEh6V3FA2ffBk9kbY+b7gJ6T0ZSMGqwMq+m0JB6JA1Vkvxp0bZJny2lQmdSJawY/J
	 BnTHjIKG3LszJWq47vieYSYtJe5enJPg/EExigwZ6ChDVJTeOg2tRkIcKFipyCE1gB
	 Kv1FgUlF+o4aw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f1FEGYNsnJOi; Mon,  5 Jun 2023 10:27:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 036E182105;
	Mon,  5 Jun 2023 10:27:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 036E182105
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2AAEC1BF4DD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 10:27:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 01E6A8235D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 10:27:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 01E6A8235D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8STSPF1Ltgpg for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 10:27:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9897682105
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9897682105
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 10:27:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="384636931"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="384636931"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 03:27:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="955289221"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="955289221"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 05 Jun 2023 03:27:28 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 5 Jun 2023 03:27:27 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 5 Jun 2023 03:27:27 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 5 Jun 2023 03:27:27 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 5 Jun 2023 03:27:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z0P1lYPSyV+dZyr6ER4mu/+buMhiajkAFtVuMhDW16rtWfYV3VMyTD4LB+oP4+wHkfKDlaI/QDKxVnixCM0jv0V9gaGPHjap2bacehH5+1xCy8/unupaydplRCFGiAMNI9XKc2xXykDXZSMgsKDI2IuGoeZB/AZrkt0SvtteJNiEhuDC8IZP5Yi8RyWlWVCeAZrXR3dtzVYsmIRICYkXVkc1aWFFX6YWw+76Z9CEiEkveCNHBvvmhSW/IjYEuaa6d+MRZW/UFRpdJEmpgluVpDTeqMcUhwfBmvSKHUwnvfN7TSfntt4v00WQubCuWnol4BZbsPykRcmnqtF+d0qstA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b9l0RuXnFA6fQzomPIhm6pthEaI/etS7tGMHHgHAhDk=;
 b=VQPhO/mXV3E+KDsjjZ9xQEq+Nlq+ynj6KnXjRd+QX3lx9KOZVvsgbeGDCL/J6LZuRB4irBqFccrT06mpCRvQRHhrsq9ee2G3ooO4vjB+KuxqNqDWh9oG8cmUOX1uvp7ldAPcro3CdsgwF7bKFxOace+wd/n9B4Zpnr0gBWi+VNsXOPUdkFyMK+Wlewuz+xTx2JvCtRTNmVvx0drtsoJEURCaB8xBdEorXvKBrvZpXOvoZJaw6Hmm/N3bYvFWOxMxsS0yxb9XFGiaXXhCpNf+ln4m6reN4YSHs2QIxLFXEu0MhnyAT3/SIY0SW06E2LzYWVcPdwhOEcseZ2LcI8Qrnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.33; Mon, 5 Jun
 2023 10:27:25 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::7b23:e512:60c9:ce08]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::7b23:e512:60c9:ce08%6]) with mapi id 15.20.6455.030; Mon, 5 Jun 2023
 10:27:25 +0000
From: "Drewek, Wojciech" <wojciech.drewek@intel.com>
To: Simon Horman <simon.horman@corigine.com>
Thread-Topic: [PATCH iwl-next v4 01/13] ice: Skip adv rules removal upon
 switchdev release
Thread-Index: AQHZlr0ENn3ocsr8rkK2OXd5zvP8T698Ar5w
Date: Mon, 5 Jun 2023 10:27:25 +0000
Message-ID: <MW4PR11MB57762FFC9A503494BA4B7646FD4DA@MW4PR11MB5776.namprd11.prod.outlook.com>
References: <20230524122121.15012-1-wojciech.drewek@intel.com>
 <20230524122121.15012-2-wojciech.drewek@intel.com>
 <ZHxIitexswXG7iZQ@corigine.com>
In-Reply-To: <ZHxIitexswXG7iZQ@corigine.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5776:EE_|DS0PR11MB8049:EE_
x-ms-office365-filtering-correlation-id: 37f0dfb7-1323-4dcb-c361-08db65af7478
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5A3Ed4mkh+Jso3APdF6Hxgl2J9dWLjXiM9dUHgCOW/q/6LDpMQ/nFzRCHwy3ATAwVKrcClqe2FL8zHOnpbMxe89hQ3HnLi4+CQeqqP/3YSRQZkvpbaz6Zb10bEhJ80IExqwVHjiBeO7cWk1o542iyiOxym1nl+ag5+40UykNsKvEOg0Fil655aUFRH3tR4Jla0/DYJKzw4f9s4dobBpK5eUloP+i8k9/oZPp8Y4VsetkRJ1DHHPiXYSJsXYEuWSiD67XT93+DY/P55mWMhvavFct9LkZ7Sl+M47Nb+dBcPJZVun/Z0g5KmeacV3FnPXlIRiXveZQcj5rDzO4LRl0uCWZOvW7KEEh2z3+/Qmgxo0xEWQf40qkk3/VcTY8+3RlWM7yyqkB996RbVqQK7uz4u8q2S/q5B4WlzY81eT+hC3LkWIybGhq586wFFioP+Qz+STtsVjCT50MwWUmkS9QP8EXWjotMPYXHI+0/OPudQTsntPsD27PLrWnGffVFO6muV0arRgpe0+zgGaZU8no/GSFVlvz/dA7M4SWHO2NNtGQCJoGguioCmEbPtbzg3ZEWmLfXLzOxpJiJLHcbhCoAiQXOQv2GbPUhxVrPMQT+hpH50VbDLlk75FXHD0x1yAi
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(366004)(396003)(136003)(346002)(376002)(451199021)(478600001)(2906002)(7696005)(33656002)(71200400001)(38070700005)(83380400001)(186003)(6506007)(26005)(53546011)(9686003)(86362001)(122000001)(82960400001)(38100700002)(55016003)(316002)(8676002)(8936002)(66946007)(76116006)(6916009)(4326008)(66556008)(66476007)(66446008)(64756008)(5660300002)(52536014)(54906003)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?q6QY/0D3myVmrAP6ChWVgsZ21JcJzp/I5OyojPN/tEz1bsLzJv8BVTnHoBqw?=
 =?us-ascii?Q?L17ItcH+9A8EU49PeYoaY5Oevn8EAI7TwQosWSyqUQEJTbAcI8wGtySvca82?=
 =?us-ascii?Q?sqUskcAWYRD6vbpGB8OpkVd/d5nLSifwaw0rwFkSm/K2D/jtJXIV6AMWj9AB?=
 =?us-ascii?Q?hT0gtra9Q1/XJAODHH0Hu2vtCN4MG4DMH4SlKpz83v4SKaqsl2Pm9Q/N803t?=
 =?us-ascii?Q?6rCOyOsTp+X8ED6j5cPiuvBWW//NkoJa5eoOcPuRF93H83w2kvqvPTFbMHKU?=
 =?us-ascii?Q?lIzLVQrHpVFbWgB+akmivh2pLPaFS8XePgVMs2KM2wGR7OkolGd92mpEpZi6?=
 =?us-ascii?Q?bRyLOq8HQ3/eYaJqp0zSiY9q5JZje/dKjZlECxljHAQ+1osYg/914S+48Bgn?=
 =?us-ascii?Q?jexLdHiF9mFfcH/T+xM9fgp43qulwgS6fpOW+U4LErGanpDvJ9dWUGWYJIHY?=
 =?us-ascii?Q?UXQIgfqZqS5B5AHoLTnF7th4PMeDNhsWlRmnS6FpOgMTAP+gk/XudkJjBuRz?=
 =?us-ascii?Q?IVOpwmfoEZ1xnrjc92Z7VJ3Rop5BtdamSHSO/onXVYEbeoSvrXv81v5+DXSd?=
 =?us-ascii?Q?TqhN0AdPs6TSI1j/Gp10px60tfUu+Qh9LRABXvB0zNeZhMNvj9Yszuup1OR5?=
 =?us-ascii?Q?s8j2Euc4EbYewdNbMPvWopS6kzLdwX1YsBnXpKB6a6C4XgfCPa2IPXCayzFt?=
 =?us-ascii?Q?rZULFDGDhuWqavl+l4cA0888Rssae8KDRAN3T/asfxTrpCSvw6ACxqLG7qv5?=
 =?us-ascii?Q?qXhteazZBAtFoiRP6iV2wzMiuxRI4nXXtfCZQc63JF24pSLBXLjkGzCnu9ew?=
 =?us-ascii?Q?CXBYRm1ms2FWyr90nCQTbL+R9eGbLOMwgRBGHKUfZmKDvjPGCAF73Qa2nLgw?=
 =?us-ascii?Q?xkQImoJ8cmTt5Mbx3fccX+Ow1mhlyeW0ZRJnSGij9K8GNop86CYbl61Va+Sp?=
 =?us-ascii?Q?D3z+IJq+dCf6y4Fg7bNxBq4E05sGMDAzI6ny3FPzDvZMvqcSSGF/bVrbQIEp?=
 =?us-ascii?Q?xIPffTbPSDQsyVTpenLipIZ4bCkpzByP+CSxFMZczDCceLVCEvORKUi4Iz0/?=
 =?us-ascii?Q?IehbFPXnSIMcvDCwUMYkqr3GSuYAclnp9B4CHkOEKN4L8KULqvL0YLmwFW+q?=
 =?us-ascii?Q?hPTXoR4LA6DQ7r3IFfFQT35rSoyUq+uHgjSpFZcxmzNDJAtd3caMpyg7Rq0W?=
 =?us-ascii?Q?ul1/qZRlKuMRs4U89Pe+sFsUyuH47JYo573qyMorsOScprRgwtPMhgSWg8U5?=
 =?us-ascii?Q?SVxNznJqc/Ag+l0+O4F4DenqzHYktrZKm+nFXZRnU7UQyhCtlPf/D8prHBKG?=
 =?us-ascii?Q?WnrKgEJxnn8slKo5aPEoFNac7TUZ0cQBSe+iqeLRWmnig0dIk/6dBEzqxfsr?=
 =?us-ascii?Q?gVFh9pz8ruShuqlX9yGwWQxwtLPEnHst4KvRADrW9W3YlTCWak4OVVVxahwj?=
 =?us-ascii?Q?EGcsDtfpkmLJs8qrDoII7AUlfUrdS+MZAyWFDVPG6Cdq/WAgWoP5PYcFbtsM?=
 =?us-ascii?Q?uvCgU5oiXzKW/Gyu+ivD6IGdfLeLrotV/f5etimYgVF4cuuphAJsw2FzY4dR?=
 =?us-ascii?Q?tL7HQa8RiOnfp5/kbJydSQXAjV9OHkpiuJVZXx8o?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 37f0dfb7-1323-4dcb-c361-08db65af7478
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2023 10:27:25.0595 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NnJzdYzPa7WRtxDG7hu6K0gsdnufG+N1EKURiwhdGcDv6OQniXLl2TLQ+sjSrEaZybicBHU3zHKnjQxQqf2A8tz1RYuHFQ3VWqBBW4yJ4PE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8049
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685960849; x=1717496849;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=926QkEdX5rD6jU2a9bJDqJEtgXJTqvdgtjGzp7CIFiM=;
 b=bP5cnijXGnBaFpl4yYKvFQN0/ztzyDMgi35CTdcpPqgxnD6dgSeOVTEK
 6Y4NXQjKFAv+MUNKMfkKjCkkOevYFOY4W9C2Zj/CUoutohgQTpLnFV5sy
 SH+zV5P1iPd+Q5tAzWt0D2Z18hfpst0sZF/EMhorCgQWT0S/GIVRNEV47
 GxRtlAYDz256K2xZhTjluQHvRvcZTF6cwnmdmyt98bf/Xid3PohSwe94e
 mSzAKeGd9bUpTqQ5n0+eBGIpIWkFoFjK22U6hBnyF/J0Cc+mK2ex1vrIn
 KG0B+KTqpBUsO4XyqFJ/+hOSiRGdmU80fCtNuFaiBf4vYzYwjlKkNOYsn
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bP5cnijX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 01/13] ice: Skip adv rules
 removal upon switchdev release
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
Cc: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "dan.carpenter@linaro.org" <dan.carpenter@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Simon,

Thank you for the review!

> -----Original Message-----
> From: Simon Horman <simon.horman@corigine.com>
> Sent: niedziela, 4 czerwca 2023 10:17
> To: Drewek, Wojciech <wojciech.drewek@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Lobakin, Aleksander <aleksander.lobakin@intel.com>; Ertman, David M
> <david.m.ertman@intel.com>; michal.swiatkowski@linux.intel.com; marcin.szycik@linux.intel.com; Chmielewski, Pawel
> <pawel.chmielewski@intel.com>; Samudrala, Sridhar <sridhar.samudrala@intel.com>; pmenzel@molgen.mpg.de;
> dan.carpenter@linaro.org
> Subject: Re: [PATCH iwl-next v4 01/13] ice: Skip adv rules removal upon switchdev release
> 
> On Wed, May 24, 2023 at 02:21:09PM +0200, Wojciech Drewek wrote:
> > Advanced rules for ctrl VSI will be removed anyway when the
> > VSI will cleaned up, no need to do it explicitly.
> >
> > Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> > Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> 
> This looks good to me.
> 
> Reviewed-by: Simon Horman <simon.horman@corigine.com>
> 
> As a follow-up perhaps ice_rem_adv_rule_for_vsi() can be removed.
> It seems to be unused after this patch.

Indeed, I'll just remove it in the next version.

> 
> > ---
> >  drivers/net/ethernet/intel/ice/ice_eswitch.c | 1 -
> >  1 file changed, 1 deletion(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
> > index ad0a007b7398..be5b22691f7c 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
> > @@ -503,7 +503,6 @@ static void ice_eswitch_disable_switchdev(struct ice_pf *pf)
> >
> >  	ice_eswitch_napi_disable(pf);
> >  	ice_eswitch_release_env(pf);
> > -	ice_rem_adv_rule_for_vsi(&pf->hw, ctrl_vsi->idx);
> >  	ice_eswitch_release_reprs(pf, ctrl_vsi);
> >  	ice_vsi_release(ctrl_vsi);
> >  	ice_repr_rem_from_all_vfs(pf);
> > --
> > 2.40.1
> >
> >
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
