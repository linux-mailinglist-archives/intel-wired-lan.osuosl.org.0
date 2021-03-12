Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 03070339986
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Mar 2021 23:14:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8F6FC4ED98;
	Fri, 12 Mar 2021 22:14:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VzB4FSqD_VQT; Fri, 12 Mar 2021 22:14:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 66A1B4ED8B;
	Fri, 12 Mar 2021 22:14:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1BBED1BF379
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Mar 2021 22:13:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1638B43089
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Mar 2021 22:13:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PMYc9d8m6bZt for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Mar 2021 22:13:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A0A6243083
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Mar 2021 22:13:56 +0000 (UTC)
IronPort-SDR: 14q7KJZK3GDCOWKjzqBrB1vnwYGQrLH/oAzDVLOIHh7ujufomnZWCMwhGZKcTiGFHaiTJSr7ey
 j3EQjblZ+mPw==
X-IronPort-AV: E=McAfee;i="6000,8403,9921"; a="176486218"
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="176486218"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2021 14:13:48 -0800
IronPort-SDR: DxceJGya5F/eINDPe4szyF1UDEEbkhFSOP8pwtzJu3sE+GablOWdY0m2qn2n/A/5ZPuFMookUb
 yRav2gEQD8Bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="600734438"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP; 12 Mar 2021 14:13:47 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 12 Mar 2021 14:13:47 -0800
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 12 Mar 2021 14:13:46 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Fri, 12 Mar 2021 14:13:46 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Fri, 12 Mar 2021 14:13:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jo6GL0miYovetggHFbnIckPQD6OsuDWqqbcDXZlJCe5uwXmU2IIt3C3KRIJ9rKfbnbi+P7ZQ7FiL2++dH9vxAqpWV3T2nM8m0TuxMGxrD+rX+UcJp+VskeYOBb0sdEwsTunShbuYmTKH3IE+w7ThCJVlzeZoiNW+gi3fIYxrvVO56BBEfetEPtDVIqqPb30KzEydRmGvpAZa/ssm/sk0bIydqIM3xfKKib5U7jVE3/WVLbR+qpiYh+abE1bALJB8fg/swgXGqK74RepOYN2d6zE/+I//+4g2///97l1LQLBgIcli/GuyBo+GJQl8KsdmcbL5+AumBaQRcqclFx6H5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VfwDt6JhWm5rRcXP5ssLXQXNZzIHnffxGULb7R1RYlY=;
 b=P7m2szGeL8ni5D8gb/RRHj3rsSarwS2udiGoOl4RK7Bj57cEND0YaNraU66UUak4MrsYaP78Qpz+WoKGUC/aQQldw104m1+J0bW58RO2GO+F2KN4y7nrzFdXtMu9qq9hKs8CmyQMb0ujgAvY+uKXnFvRUHXwo5pSB4Gpy3KcpkYmFSEg81u9YwwOVB7Austrkfar6Sem9CBLU9Sk/ErVM1nQrjS6BWQoqlZAdGOCBwz3Sg9f6FQ6kIGLA9dY/+ZKj990WEHs5bPjARvGbQak3+nkZlMzV5TBO+QFgi8hIV6gcZEnlOdq4Wilq6q54j+XO/DjJ0OM+N1BUobs4CYJAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VfwDt6JhWm5rRcXP5ssLXQXNZzIHnffxGULb7R1RYlY=;
 b=YPCzTyjrWlyGuNx71kdUt/+cebYkYa+JPnqml/ElRQ0VWG9cVJrLu4VxrQV+6/CMuHyFquV5TSnmWO6NT+oGXa6wkvUClR/r7IuqAH71l1uPNpsxU8gsn3q8GHCxNBtO9mNSjwRpotsUb4d9qFhfmhgfLKrLY6K6QeZgZHk9HFM=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MW3PR11MB4732.namprd11.prod.outlook.com (2603:10b6:303:2c::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.31; Fri, 12 Mar
 2021 22:13:38 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.3912.027; Fri, 12 Mar 2021
 22:13:38 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S55 03/14] ice: Add Support for XPS
Thread-Index: AQHXD5D5m8pH3m+G20+VZOr/99hEJKqA+pAQ
Date: Fri, 12 Mar 2021 22:13:37 +0000
Message-ID: <CO1PR11MB5105654265C7B1ECA35F56BCFA6F9@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210302181213.51718-1-anthony.l.nguyen@intel.com>
 <20210302181213.51718-3-anthony.l.nguyen@intel.com>
In-Reply-To: <20210302181213.51718-3-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: aa71af5e-1e10-4a89-bfe3-08d8e5a41623
x-ms-traffictypediagnostic: MW3PR11MB4732:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MW3PR11MB4732E1368DC9773FCAE31FD3FA6F9@MW3PR11MB4732.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: h/GRyLOul52U7NhJGExt6ev3H5yThr04HOwvk+FB/cc5rMegQYRA4V9X3CkuO7snETr3IpzUkS2wBGLYlDY3wZN3rJyFa6SH8D0nazmwOAJ8FK4oDeHn/8joPDZ8sIboEA2WuIF/27Dkfn8ZGKnAwZuDebe8SjKa+dEU9GOaf15aGFVvCiGQQwB21G41ayBlTAjM+wH/gwRnd295c6XtwDYFlqJaymtMmN8SotOD+l4ufn4dP/NT3fcsFk+mWuJeMJSSSICIot/0l9gJHTXvqmxy0n6hDX+HwY2wANMEpcTFXtplF54ejz39eVe3tTcdwdyndtlm3C46Q3MFNyrjxEJT5iQ9p0W6GGUm+fc/S8Tlmij0tgN8F2d4IgxZrh9ylsmKpMTqZxot07QX5Hz4FNQ4lHh4rCnRKDzbhRSPImWaguOnfQ3yvV56/n0DhzUYeFHzhy/gkGgl8v8sJ42D+VNpQatCUu0Rub2bcpHn6WNNaUtCOg2G5gkjzpw6AlA7QOICIcEiCxR+VBzGZp/oQgr6CW474j82D0UWYTj0zw/rS0FLhiPaz3dNuY6sgK7d
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(396003)(346002)(376002)(39860400002)(136003)(8936002)(76116006)(83380400001)(86362001)(71200400001)(316002)(55016002)(9686003)(4744005)(66476007)(52536014)(478600001)(53546011)(186003)(110136005)(26005)(2906002)(66446008)(66946007)(8676002)(64756008)(66556008)(33656002)(7696005)(5660300002)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?kZUOw87abQxDnO/2EXws8+PIqMLKCaqIdlKdifIIA+5mjYcflrxNGW1XwQX8?=
 =?us-ascii?Q?Ocv7NdGUyLuMjz5vxP8S2knIMGDwdnJeXcxy69DxQx6BPKogK28yaVzChL3G?=
 =?us-ascii?Q?ixSmuv/QfXVMIHLlxd9Rgux8QwBa8Ju+jxC+VaMVLgrl/X6Qfd71wmXZkN49?=
 =?us-ascii?Q?YmYY3VkIZ9ZOvHe8n13BwoxXGS6oq0V/WBydLm2k/eqEvwpuNw4fa0E0aKDf?=
 =?us-ascii?Q?qd/PkKVk1Ms3HXM3s+3tAAxAbnbAVfH2T4LBwXiuLFm0qYzkeqJd5Q8/qQO0?=
 =?us-ascii?Q?8Nqr0OEehLvou1Xk5KS84DWrQ4xAO7dOX3t4hoW4UlLDxgPHk5afofJi+H5o?=
 =?us-ascii?Q?hb/TNHDFW1pvj4FDw76wyQpV38e90TTMoxbZQOMlOCani8nAA0oaboe2gXf4?=
 =?us-ascii?Q?nVHLuZnHQKin2Kf3DRZVDc8fkS2f8wbv7wbJd/DlUav8AUkgspzO2o+8X8aA?=
 =?us-ascii?Q?n46NbUZQCusffSey/S//eWpJgOL0XrpGh+qZmrieCrBdl9+X3YPvsXNQOMRS?=
 =?us-ascii?Q?JgFdfYTby7gLy2CEzJL2XTvMhJK7NRvelLfrT2TEEmeLFCpLCgGVMVi7W3cE?=
 =?us-ascii?Q?a9oOKElbOiCRTtZKKBLtnX4BzrVrfgYVtoGcELYCB7VmprMUOOqDlUrAXlQd?=
 =?us-ascii?Q?txQIymumXbzeGTjAL+DMEvaeWSht2Mpuwbhtgah4mmnDvr2Ax6DNXz6wTQfU?=
 =?us-ascii?Q?74gD4oPFQUIxylKMp8up4DN3C5ZWV5XtPLKlVfPqZDyiOTF1SG8oMRfepLSt?=
 =?us-ascii?Q?6iBuQyMbxAqMQURJiLiXNKqgF6OTOM/tfO4DwwYGx3AkdEYwlBQGYx2zI49r?=
 =?us-ascii?Q?GCEGcDQk2e7v3aZpvBMb6Zcv7cB1CdBNXeOI+fKadrU2r5tnymyd5k44HSmS?=
 =?us-ascii?Q?+NybSg9tkSgjpe3+l3VKoFJjodf01DfQAYrqCqDPxeY8UcGENvlJ+GAEJhB0?=
 =?us-ascii?Q?X3WIt3W3lpXS/D5PP70y7iV1lER1DMYRblgKWROlwpFqYesgSF2668fiRlvz?=
 =?us-ascii?Q?NGMUq5enZGlf6Z8FYYzbipgEqry6EJTRZws4vYfWD0mD1njfojIk7IugqrXX?=
 =?us-ascii?Q?cunFZVKXey7Di3Avq2qrU8JcbfBGoYx0Ayvp0BXhMQvYxKR40iGwnfGJh5PW?=
 =?us-ascii?Q?DT/4VKW5GLKVGBfXs/i3jbpOd6M4TKayvLusRrdbx8jL1EMpaOVCXNIhi5EJ?=
 =?us-ascii?Q?ka9JeCW7irGUoz8DKBCu5CU/E66Oi6dscCl6137ofa8q7+Z/eqANOa7Rijw+?=
 =?us-ascii?Q?1epjtNvFsubOqi7Bu7v1a8Ptdq/Q3XmfhjtJIW/qhxFyaMfl4hD40liDK99i?=
 =?us-ascii?Q?swXHYnx9ZdHQpKmclSQorxXP?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa71af5e-1e10-4a89-bfe3-08d8e5a41623
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2021 22:13:37.9862 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0xEGNYdhWxxIOrDHc8tFOQIQ/r1TI2xmveRGtXBde2zHLzY4V/7Ar69dJzBFK758EClzV027+aaslEz2HGY9Q74xy8iJ7jw6h0+ITQHn6fw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4732
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S55 03/14] ice: Add Support for XPS
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
> Sent: Tuesday, March 2, 2021 10:12 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S55 03/14] ice: Add Support for XPS
> 
> From: Benita Bose <benita.bose@intel.com>
> 
> Enable and configure XPS. The driver code implemented sets up the Transmit
> Packet Steering Map, which in turn will be used by the kernel in queue
> selection during Tx.
> 
> Signed-off-by: Benita Bose <benita.bose@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
> Note: Emails to Benita will bounce as she has since left Intel
> ---
>  drivers/net/ethernet/intel/ice/ice_base.c | 23
> +++++++++++++++++++++++  drivers/net/ethernet/intel/ice/ice_txrx.h |  6
> ++++++
>  2 files changed, 29 insertions(+)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
