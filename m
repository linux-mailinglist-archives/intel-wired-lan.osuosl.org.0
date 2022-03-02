Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B524CAF50
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Mar 2022 21:05:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AFB634109B;
	Wed,  2 Mar 2022 20:05:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 282hwUfANlEe; Wed,  2 Mar 2022 20:05:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 961044098C;
	Wed,  2 Mar 2022 20:05:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 36FB21BF841
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 20:05:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 30D28404AA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 20:05:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8fBKv3wR5kWb for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Mar 2022 20:05:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1EEF3400C1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 20:05:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646251527; x=1677787527;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=wq6oygSvSPAzOg0o/mIMLAh13GKMqvrOyGabMy42PNU=;
 b=I1q+bi14GtmPkuPfDaRGqsdxJjEbS/4ytT7XPQAqiYehRjTEpjzpVEIQ
 fow4LCEgWB3u3BOAf/Jlz2ZYapD4TSvCR92sZBDRGoo9/7ztrFCb6nkR8
 OMWUqcan/9Fnd6Al/fGc+3UokJrlN/rP3/RsrgPzofLmHsHgyyOUHhpX+
 J37bYv3KUgQsTE8INxe5ecGqL7QOanzyH55HLEZEc3KCry1RRw4/gYoG2
 hi1zAqeo/H7gt2zHW8GlhTavMm1x5wnh8MOA/KBOzFwzfQWOKVQey9jId
 +cCqRTejmKW4ff8wSCUPsan0bzMjl/p/QKdauhvcV6MdGgetPmVThLA3Q A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="339926204"
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="339926204"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 12:05:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="641830913"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 02 Mar 2022 12:05:26 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 12:05:25 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 2 Mar 2022 12:05:25 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Wed, 2 Mar 2022 12:05:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fmfwqCh6JwTCyTki4EGfUP6qRySdoAzMoyu5mhp63IIcafLBPRcpp10jEHH6g8mO91TyiRe0AgK2ffPqkbwX+KstvfjXxCW73idP312fKdTyprMfSoiJgiX2JYBNFZDQDsX5dhRI8dfKhngGAMiLwa5t3Kzr9nTIvUmgMyAeO9PPWCyI/nrCFM9C0JF6M6bvtgvvkHxC7hgBw0zYMWsvWr9pMbfk4RaJ6vv3+xpAYMDqACmEpFD4U1bhNV7i8rJaM/TJEU5wOHvVWEGbL+Y88PMyXMv8KEWR4PCCsN6hARyzMcSbck76KzZCRRHU8ZZrTDQOhkAbSAnrlBYH5F0wLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AeCf3IgSmd3bI04xq/kOcohTbkZsiNiDygp4gCEhEAg=;
 b=TPu5tztMCUeNDJXarQv+PFOVxQtmA341XDzkGthUk8rGrzGNvS+1tQogd/IGGSOpi3LqK7S7AWtSfASsFkri7rJ3uIPklimbx7u+Lz3qplXcJRTgixpQkvtH2CghSt/2mTBr2bCyD9jjvxpY0WOf/xtXfc6VOT6MArMovBqnSE2W54HoodarVID3Oc9W7JChcBJK1yv9UatiGKb4o+30Nrq4lzKqt2xgAgZy7JckqgFbqPpKL45kN+XND5mq3L3X2bsNYmt1SWfmogIEF2Tn+lGvGshpO6r1ZyfLnHLbCTNw9iwQFczhY4L5Gxf9FU/j6Cxyjs78Ud6Eryv2vPrdJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by DM4PR11MB5406.namprd11.prod.outlook.com (2603:10b6:5:395::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.24; Wed, 2 Mar
 2022 20:05:22 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0%8]) with mapi id 15.20.5017.027; Wed, 2 Mar 2022
 20:05:22 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH 02/25] ice: rename
 ice_virtchnl_pf.c to ice_sriov.c
Thread-Index: AQHYKExFE2YflbA5aU6+pfhcBIWGrKyskQGg
Date: Wed, 2 Mar 2022 20:05:22 +0000
Message-ID: <SJ0PR11MB56290B3CD3E60E4918AB0178AB039@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
 <20220223002712.2771809-3-jacob.e.keller@intel.com>
In-Reply-To: <20220223002712.2771809-3-jacob.e.keller@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b940eb86-e7a8-48a3-63d4-08d9fc87fbba
x-ms-traffictypediagnostic: DM4PR11MB5406:EE_
x-microsoft-antispam-prvs: <DM4PR11MB54068088F8BDD773BA2919A4AB039@DM4PR11MB5406.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jem7KCMujmnPW1zNhwA+ag5HKrszd7MmrNk01kP/YXeTj+r5AXHB4tDkMnrfMjFVI2nKWJ1j+tYrLlK885PXaoErzpu3sF2C9Yj035CwzDDv6K5JzPf8AwhUPppEd5fbeTdlDTKJVHM1nIKKQ2DDKMMnO3BPfEgiCNIi/c2gmwSyfpCYAWTgxO/WXd5gXseFslV8L9O99DF5fNrXoxIYOtDFJUmMqAbNFQhZRr+qf22k0gW0P9A/BbSgBOzuXNknFJ8VgTFkS8xaheymh2Fd/swxUYqI8/mAhoCIn0gRKgW3wGi55RwFSlGKq3tuZi6PdZ5AXtEth1TiAUsz02qMHOv1aK9XmrPlueXBhD1IPnPYa/eL0Go7sQ7mdHHbHvCHTORBHNEQ2/ofzJkwyMyo9xqVHzexfiWGW5A65qQNnZhiPCAyiiensZq1gIkxmlGs5LzuHEXAEg/bAD/rk6h98J7jombcyaTnZr2DwNMbDVEK8NWmiWH3/X6YxCEZbhn/CdESj+R2EuYIeMYAc3qO1tE56oQ2FKzX5+JPdqhRgIUYDX57TE8B2PrKasuaLM9bx8a0IDmFJarfEHHYjR3GBm+a8uXxWjTpatkRgHQxr4tm7KqS/gK8snnPyki4ZjEC74+6XqcCpM7VNNjws+4WyhjHEuQ2d+kwGYMXWDkOhD9brPyEV6xaJKV423zJXb3tp2ny2oCuYJu1sdPofjeB8g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(7696005)(53546011)(82960400001)(6506007)(33656002)(83380400001)(71200400001)(55016003)(508600001)(122000001)(110136005)(8936002)(52536014)(38100700002)(9686003)(86362001)(5660300002)(38070700005)(316002)(26005)(66446008)(186003)(64756008)(66476007)(8676002)(66556008)(76116006)(66946007)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OSY5DoK+N3MAvoIMV5d63bM+R2mYD0ReVI+SnOW/Qsk8mfJ2vZmyGDsu32D4?=
 =?us-ascii?Q?SOMGphqW1Ay0OFWFJOdS0pw4hKD3oXlw0GmxMKQZAixVlxFXwMkGafwJpjqk?=
 =?us-ascii?Q?lb57NWN0CBuH5SQa9090ntgt2xvLSBONcYExOavk3mf1lE7JT3P4QOFx5cUE?=
 =?us-ascii?Q?DxgUWO3jdw5K0WXRxEDYRvADfQGEEmAevN7VEQo7u7cfrPdwtLXU7ZON521V?=
 =?us-ascii?Q?rQN4ZASfxXNKEi6BrGiJbMbNaII0MpimB1vSzJgJaCPaq7ZORur/PM7naDx2?=
 =?us-ascii?Q?htkqMEX4w2HhKNFptPdOL1d4jxg2T8bgeSkGgOAKRt6zx1Ca1yNO2rBiMwJu?=
 =?us-ascii?Q?4b+1SrkM++pqpjzuR+rNwF1w7EgTvJzwUlWp5YLCrIQA7Qe/EEFO2SAUIjBc?=
 =?us-ascii?Q?ypz7L/Hau0Pw0h8w0voCfTySg+T5N+47C7PDPZc4OJUWIrACRFE53qNbt2Qb?=
 =?us-ascii?Q?wIP0VB7L0obgBcrry6P3XXyGiuckWjPaKiqEdPhofRQySzZ8e6hsY8UN8pZk?=
 =?us-ascii?Q?Y0OUxwe5BIU2miD3xS7t62sWzmaSs+uzxpmHTsjxReF2LjN/ijbpVeK2MkOd?=
 =?us-ascii?Q?KgHXFeINpXFAmWET3y1lVbVoQ3msh27fx7lEZc64jzr1oiae3UvfuEpz9juE?=
 =?us-ascii?Q?yrSP1hW9TqTtHiRvmKYXPQON7fGiEQn5R8GEecLO++oshbEItTsqrEEAGdK/?=
 =?us-ascii?Q?WfFIhduePJkcPIJ5Bq7PPInBqLPEv6vEfvg46KGYen6kuSRMK0hdZgufkWjD?=
 =?us-ascii?Q?8ZtKMYKtgJxveRaGGhDsACLXqJswmNcWXzCrMdbwnbzQQuAUcT2BvXHvDxgT?=
 =?us-ascii?Q?Z1TWTgOTmENFsuqoysrc4woEOdBar3IVcYrV7mcdWeBYvi/it6QN3AZuiAJq?=
 =?us-ascii?Q?JbtgXev5SoH3/yun0QeXEQQu9LE/dBv1NyqSiyPFtg2HppORPZRimpFzXxQT?=
 =?us-ascii?Q?oMZq1iWe5Pu3WCsFtS3t6hCbV5rW0CwVo4KB1eVGfiumGlqAfJ4qxkQFO8Sn?=
 =?us-ascii?Q?XDevFZ77r0TXvnQcJnbxbm5Xgvgk5PqYsPa5B7l1ke7PSlNH+Xlr8bzrSeGE?=
 =?us-ascii?Q?MKv5Nucb0UhGJfH/OQ1AWFJuG2zzWjh5iD/C/nWBMSAc1gqyLDAiGYUO3hML?=
 =?us-ascii?Q?Aoeh0iOHKSBYLHTjARdiNKWnEkhCVANQvcEqYQfuamalhyyk+WQhtkO/QJad?=
 =?us-ascii?Q?3gQ6ji9/Yt2BG2SA1IFnKOR6f/Hj+bm2VN+k90j7dP/om0wG34An91bI7Ae8?=
 =?us-ascii?Q?xWjCvGx4Ur6bdE8Elm7tBx6evq/lc6+aUehRH3RadpZ6hJGk6IBC/JeKyN6b?=
 =?us-ascii?Q?a2EZ594FvnTnXJu4N4qYlZmf9qND4B/4OJRpUMzGFMQWIVLHIPOkbg4rYZDN?=
 =?us-ascii?Q?4ZvvLpTN6t+aRyXZjy0XgcZKHxdG6BOdxSGqix+Dsurc6eCLT1/Kx3+cOHhz?=
 =?us-ascii?Q?EZZhcF5WLn+27h1vV46ffQI1Ai0JAoQ/ai5kjxIpzGaMCcY0A3F/LK5sxfeQ?=
 =?us-ascii?Q?w/+aQwtGPLuQQUO/sLiqKV02UcpbPBwjmvOKuvLsl1ZEPuxDrVz4XUj4vNQM?=
 =?us-ascii?Q?CHzDPs2vuWmYcfnShiTp7NoQk8MLwNytQMdxe0mrjrJWVaaS79NmiOOv6GU5?=
 =?us-ascii?Q?ZpA9Z+BgTp5mD/F+bricffBD9rEVwX01lOcHirR9oUwlG8h2NbjffjlLWYCA?=
 =?us-ascii?Q?Q/wZGQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b940eb86-e7a8-48a3-63d4-08d9fc87fbba
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2022 20:05:22.2779 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7fB+cEOqx4sRDwDznA7iy7NHURn+eRcUF+iKMIDgjIspYIFzjyy9I8t2JY08i2WMEmqTHgZH8d8imbSBcZa+eVB0dHGvk/fAlBHnIZSc5q0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5406
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH 02/25] ice: rename
 ice_virtchnl_pf.c to ice_sriov.c
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
> Jacob Keller
> Sent: Wednesday, February 23, 2022 1:27 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next PATCH 02/25] ice: rename
> ice_virtchnl_pf.c to ice_sriov.c
> 
> The ice_virtchnl_pf.c and ice_virtchnl_pf.h files are where most of the code
> for implementing Single Root IOV virtualization resides. This code includes
> support for bringing up and tearing down VFs, hooks into the kernel SR-IOV
> netdev operations, and for handling virtchnl messages from VFs.
> 
> In the future, we plan to support Scalable IOV in addition to Single Root IOV
> as an alternative virtualization scheme. This implementation will re-use some
> but not all of the code in ice_virtchnl_pf.c
> 
> To prepare for this future, we want to refactor and split up the code in
> ice_virtchnl_pf.c into the following scheme:
> 
>  * ice_vf_lib.[ch]
> 
>    Basic VF structures and accessors. This is where scheme-independent
>    code will reside.
> 
>  * ice_virtchnl.[ch]
> 
>    Virtchnl message handling. This is where the bulk of the logic for
>    processing messages from VFs using the virtchnl messaging scheme will
>    reside. This is separated from ice_vf_lib.c because it is distinct
>    and has a bulk of the processing code.
> 
>  * ice_sriov.[ch]
> 
>    Single Root IOV implementation, including initialization and the
>    routines for interacting with SR-IOV based netdev operations.
> 
>  * (future) ice_siov.[ch]
> 
>    Scalable IOV implementation.
> 
> As a first step, lets assume that all of the code in ice_virtchnl_pf.[ch] is for
> Single Root IOV. Rename this file to ice_sriov.c and its header to ice_sriov.h
> 
> Future changes will further split out the code in these files following the plan
> outlined here.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/Makefile                     | 2 +-
>  drivers/net/ethernet/intel/ice/ice.h                        | 2 +-
>  drivers/net/ethernet/intel/ice/ice_base.c                   | 2 +-
>  drivers/net/ethernet/intel/ice/ice_repr.c                   | 2 +-
>  .../ethernet/intel/ice/{ice_virtchnl_pf.c => ice_sriov.c}   | 0
>  .../ethernet/intel/ice/{ice_virtchnl_pf.h => ice_sriov.h}   | 6 +++---
>  drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c        | 2 +-
>  7 files changed, 8 insertions(+), 8 deletions(-)  rename
> drivers/net/ethernet/intel/ice/{ice_virtchnl_pf.c => ice_sriov.c} (100%)
> rename drivers/net/ethernet/intel/ice/{ice_virtchnl_pf.h => ice_sriov.h}
> (99%)
> 
> diff --git a/drivers/net/ethernet/intel/ice/Makefile
> b/drivers/net/ethernet/intel/ice/Makefile
> index 451098e25023..816e81832b7f 100644
> --- a/drivers/net/ethernet/intel/ice/Makefile
> +++ b/drivers/net/ethernet/intel/ice/Makefile
> @@ -38,7 +38,7 @@ ice-$(CONFIG_PCI_IOV) +=	\
>  	ice_virtchnl_fdir.o	\
>  	ice_vf_mbx.o		\
>  	ice_vf_vsi_vlan_ops.o	\
> -	ice_virtchnl_pf.o
> +	ice_sriov.o
>  ice-$(CONFIG_PTP_1588_CLOCK) += ice_ptp.o ice_ptp_hw.o
>  ice-$(CONFIG_TTY) += ice_gnss.o
>  ice-$(CONFIG_DCB) += ice_dcb.o ice_dcb_nl.o ice_dcb_lib.o diff --git
> a/drivers/net/ethernet/intel/ice/ice.h
> b/drivers/net/ethernet/intel/ice/ice.h
> index 6c41edd99410..0fd15b45ce23 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -66,7 +66,7 @@

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
