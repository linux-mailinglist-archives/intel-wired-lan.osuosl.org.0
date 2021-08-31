Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F95D3FCEBC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Aug 2021 22:43:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 754E440713;
	Tue, 31 Aug 2021 20:43:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D_2lZPZeQx7m; Tue, 31 Aug 2021 20:43:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2113740718;
	Tue, 31 Aug 2021 20:43:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2DFC31BF853
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 20:42:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2981F61392
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 20:42:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=fail (1024-bit key) reason="fail (message has been altered)"
 header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NsetROSkL6Ly for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Aug 2021 20:42:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6555B60664
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 20:42:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10093"; a="282279608"
X-IronPort-AV: E=Sophos;i="5.84,367,1620716400"; d="scan'208";a="282279608"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2021 13:42:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,367,1620716400"; d="scan'208";a="687868393"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga006.fm.intel.com with ESMTP; 31 Aug 2021 13:42:51 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 31 Aug 2021 13:42:50 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 31 Aug 2021 13:42:50 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Tue, 31 Aug 2021 13:42:50 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 31 Aug 2021 13:42:50 -0700
Received: from CO1PR11MB5028.namprd11.prod.outlook.com (2603:10b6:303:9a::12)
 by MWHPR1101MB2286.namprd11.prod.outlook.com (2603:10b6:301:5b::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.17; Tue, 31 Aug
 2021 20:42:48 +0000
Received: from CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::7d44:3d3f:92c9:f07a]) by CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::7d44:3d3f:92c9:f07a%8]) with mapi id 15.20.4457.024; Tue, 31 Aug 2021
 20:42:48 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>, "Machnikowski,
 Maciej" <maciej.machnikowski@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3 intel-next] ice: Refactor
 ice_aqc_link_topo_addr
Thread-Index: AQHXnZyAtljpfnWlrEiuJIXWk/RI0KuOE/Wg
Date: Tue, 31 Aug 2021 20:42:48 +0000
Message-ID: <CO1PR11MB502824C5C18C17EC1D733649A0CC9@CO1PR11MB5028.namprd11.prod.outlook.com>
References: <20210830122614.4031053-1-maciej.machnikowski@intel.com>
In-Reply-To: <20210830122614.4031053-1-maciej.machnikowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.0.76
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b195b9ae-623d-4ade-ce54-08d96cbfe52f
x-ms-traffictypediagnostic: MWHPR1101MB2286:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR1101MB22867656DF3947A8B5BF63A3A0CC9@MWHPR1101MB2286.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:248;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: h8NY2lKzzJTVytvi9lVK0r7Yq/zj53XrTcAHmFoU6kC/zBHe56j0l3xvbF2jgXNScwi2TnTq7yMjKkxp222R3cz87f57i0Ga4GKOt2nmD2zh3MWro/pwY+N5wFCE4T7cIuk3FyWh92eiNlW3BhGyiduS2hrj78sD+xDKDgiiKkwEuj1CB5vGnCI9gMBt4RHhdhNgk4NXegSox5plEd1gRVWbEiFF8Si6VZQ/9YfbVU/2F5Q0yET+u4J8J8stLgi136NGivMgAVDntW5meqb8bVTCQTSisJ9YuuHKsW9+9RQ+TVVdboSoWx48qHZpl/xbKwC21FzwTzGhOaX29sWJyXU32wUsU9z+E4gFdnFzcKluLnm/6TJHIp0ai14OKQA6Cg+ks4mw0v60cjZ9Y16UhFCDMOLnHfUhwCpd2WD9twDf1eRvawz4Pa5wujt4Rt9b6b63wjpEB2vza3RlTNKcp+YlzUQFUMh8IP38lbqwk7fk1rDfL18+lAo+Msvl2TOc+jtlhRMts68JOq4BhRPfBnju8FS/kVGj4Op8TyncE0dibqvdN/ap/R7pk24m7VJFuXxC1dJEcbBeeuvAhx8PWusoUoU/4nx8/W1/S6faGWVdB0ex78dBIQnRi0vl0upxi4cOOpw9wENtVYKwkdSncKQssYOrNbVcQI1lFHQj5aL228Zit9BDzmH48Ld3rr/uUn2tIqXjKS4EoubsdCc9bw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5028.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(366004)(136003)(39860400002)(346002)(396003)(8936002)(83380400001)(71200400001)(478600001)(38100700002)(8676002)(122000001)(38070700005)(2906002)(53546011)(6506007)(33656002)(55016002)(7696005)(86362001)(26005)(110136005)(66946007)(316002)(186003)(64756008)(66446008)(52536014)(5660300002)(4326008)(9686003)(66556008)(66476007)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PHG5bBgOIBiaYri/6GGRULHe6GIGoqJOrurTK4tauWSpJnNlFKTJo8PDex1+?=
 =?us-ascii?Q?+/sRG7NC0tpypBeeo8lKKjIn96ve63ec+AjQMAnIB4l5xpusx9Wlrt/MNxSm?=
 =?us-ascii?Q?e27fL0vHHH5a+beVeX53cCSqF9EmVRdhqixf/p69fZhLOZZ4u95lmmsX6bRC?=
 =?us-ascii?Q?GS5w7znhC7rQNI9jWx3Bor8d29JxYG0ayDOwl/xmzDwn9UyHxFYpMgLcK03U?=
 =?us-ascii?Q?dLh91Xbe3U25AvGvsAoZe8Lkl/J52rGoQEkkVBi9QwEfID6X8WKDk4zUDJ9u?=
 =?us-ascii?Q?y285xL7hbh6NKdeaNC/LkJX11nEiY3pA2QXKaZ3Go+Csw+YDCyv92OBcMSRs?=
 =?us-ascii?Q?aJ5C+A9YkPy9bp5OkUuOe1tQ5GYnbf2kuGKs01y0bj88X/NBLxYwfvz/NThC?=
 =?us-ascii?Q?Y4mGh82nenz2pC99+0TECaxYPLeU39I0b2/bIqU6hcqs9ttbo8is3jL6Undk?=
 =?us-ascii?Q?RS51O0n1cBdVp2YJVct+Pum9OjTavy6aA1zwUx4rJ+LRoSmffGBuIe3lb7OR?=
 =?us-ascii?Q?4eOCBqDb4rvBRKk9NB9MihzJOPgpGMZGeWxpSt+pMpevoae6RVgUkVUZFA54?=
 =?us-ascii?Q?sMRkMVhu0N8OlPnRFG5KHJ9qxN1KuwlEgWZHTvsxt9C43ae0t+IOtqHEadm7?=
 =?us-ascii?Q?LeBjC6JJ/1jB6bxQOoPirpS7FLTiyYDef/9boHSfSwR5WQzZ4LjqLzPwE0zd?=
 =?us-ascii?Q?qW8rBYidLw0KxbDecO0rOe71qJRhMIA1OouNTDkApfVjg9LzRhPDJMN5nVty?=
 =?us-ascii?Q?88yQfUHqhH4U0FkjaUquoMaOwgoZuu7CTjBrm3443mjiYJEqm8rX0LSBBqF1?=
 =?us-ascii?Q?psukJgDnPyVwWGlTn2MC2YwAmoeZ5QXlGhMOajt6mPg4dGMT5ihTETulbNNJ?=
 =?us-ascii?Q?40M+RrePLNG4g0nLoi+vfkeJyaQ/Ta0XWspLUACeo8oUVrmyjwUAOtFiatzp?=
 =?us-ascii?Q?SaTHUHsnsj2RCRIMqydrOg1oMq94nzUU6JvIr3mEhTWdWLhoVXDDcYNs+u8b?=
 =?us-ascii?Q?NuYHCetpG7+Pn4wIZjJAXlCwekpG9tXWtX1xxhTedGag4x+NVXL+rlYlMYMT?=
 =?us-ascii?Q?SJkHaYssxxpyqjxVHxIHRtyARi8sabc8PeeD7bMEey2V7iU+JRNo/619CdXq?=
 =?us-ascii?Q?v/oMTTUCijI8Vr2IkwA0cTz1U8+SDSrppvZKxC2ki5FjLuqJXOg/RuzK0Wdu?=
 =?us-ascii?Q?CtsbcXlYUC0Vm7IYh9crR6/pkIyF4/KOWrmHu8N0YiaOJsVtstYgBknmSxBH?=
 =?us-ascii?Q?ArefGB3Xj7UcLdwyhLJZ5dPXTrIvNhKU+jY/vkWMVxyFRkmcCdYfBxUKeyHI?=
 =?us-ascii?Q?ovTnKw4cU+XOkcO5rCABMDjA?=
arc-seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oBvWlnJxy+b2XAqqlG4OmdnQ4P4OkQ6+ab6f6GzojLBYEF8bxyd8hbu8udFTVmXI3tNKGxBmysMWjykZ4RnPSj6lBH+WePFjoP8bk2+clDIJQA2+lKTV5M+cP6ENYkGc7JqMnN7g4k2UjEL8DvsRcAu64Q0rCcKSIc10Ydx0n6CC32+3CKbnl0YUBqQH3Fh37XRQfkAUaJH8gmwud62P4AzTSidl8F7Bu341HeXepfHRbbh01zu3R0UFrF4tDGSE4QW7ZQzf+s8uNaLi4ipghV6lI8o/aCxWCW4352HsDRMglzOBPeEMN0HcVMfKTNYGx3y/9vxToG81nqrDWSwNjQ==
arc-message-signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=h8UdNTKAnfHQpJLfHQIsUcyKOr5tr7DUEKqwlQZtnrk=;
 b=h5Gj9dpyXd5zrFmOm37R3Y3IJpLNldiUJMvaEUqoxhmdU1qqTy/Yrgrd16o0KL7qPhoHIAkB5DVDvS1FsQ6rXmaDPa+naKx1E4MOp4jDJistEn6f0O8x5/ve9Z5WxH1Se2OzLq6yyeQ7SUQll8/P1/UpY6qJCEUR//TklnNKzfQfcoK1dbhHOSc/46WIvLwkZLC4uihPGA2GE5/PhvP6kBNn6WkzvgZNprxF+E/FtOUyZ3TwUI3QNH6n8NXJLuiAfBT4nFiLt56oHdqqqZYjjVVLz/q0XovhisGQhRDW+MVqkQ2MZzdD8/zGAYrBlMIoPa3xhqkPNXtOJOMBv/XzxQ==
arc-authentication-results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
dkim-signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h8UdNTKAnfHQpJLfHQIsUcyKOr5tr7DUEKqwlQZtnrk=;
 b=zD6Mke1d5XZCJj+wYpjsfYK+r4Bd4ikc6AB6EBYUp/6qbUYDeT9G9TXKrzZNQYfEEw1Rh4w6lWmf2VEtdJICeNtroNusEclxLF3Oxt1R//iudJs/MHL94I2x7bHCX5SFrp6hwxvOgLQ3FswkmWsCSIvubkSIqZ8KULGf4eHeG+s=
x-ms-exchange-crosstenant-authas: Internal
x-ms-exchange-crosstenant-authsource: CO1PR11MB5028.namprd11.prod.outlook.com
x-ms-exchange-crosstenant-network-message-id: b195b9ae-623d-4ade-ce54-08d96cbfe52f
x-ms-exchange-crosstenant-originalarrivaltime: 31 Aug 2021 20:42:48.7651 (UTC)
x-ms-exchange-crosstenant-fromentityheader: Hosted
x-ms-exchange-crosstenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
x-ms-exchange-crosstenant-mailboxtype: HOSTED
x-ms-exchange-crosstenant-userprincipalname: ePfELmvk8k3lrBLd0Zn1XripR6nIN8EeYaGtMHwhxekfSkLP/zfH/ghD1t2XaBBi9W8q8J1GPU06bhwu8pRg5oebko25YKCmaFajMroIRBQ=
x-ms-exchange-transport-crosstenantheadersstamped: MWHPR1101MB2286
MIME-Version: 1.0
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v3 intel-next] ice: Refactor
 ice_aqc_link_topo_addr
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
Cc: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Maciej Machnikowski
> Sent: Monday, August 30, 2021 5:26 AM
> To: Machnikowski, Maciej <maciej.machnikowski@intel.com>; intel-wired-lan@lists.osuosl.org
> Cc: pmenzel@molgen.mpg.de
> Subject: [Intel-wired-lan] [PATCH v3 intel-next] ice: Refactor ice_aqc_link_topo_addr
>
> Separate link topo parameters in struct ice_aqc_link_topo_addr into new struct ice_aqc_link_topo_params.
> This keeps input parameters for the get_link_topo command in a separate structure and is required by future commands that operate only on link topo params without the node handle.
>
> Signed-off-by: Maciej Machnikowski <maciej.machnikowski@intel.com>
> ---
> v2: Fix code style errors, Change pca9575_handle type returned by
>    ice_get_pca9575_handle to u16
> v3: Clarified commit message
> ---
> drivers/net/ethernet/intel/ice/ice_adminq_cmd.h | 6 +++++-
>  drivers/net/ethernet/intel/ice/ice_common.c     | 8 +++++---
>  2 files changed, 10 insertions(+), 4 deletions(-)
>
Tested-by: Sunitha Mekala <sunithax.d.mekala@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
