Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FEB169F1E5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Feb 2023 10:37:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F23CA404EC;
	Wed, 22 Feb 2023 09:37:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F23CA404EC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677058632;
	bh=Q1yzixAt/ovL9pkgrNDvU/bYNQvb312DBwksqCAzREE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=r0aXf0JkFDp1qwCyekNwbxfJgjAXpAr7f4sILsAarLeAbfN1g1T86Jndat8xx7TFr
	 iIPEA39SVMYr3kOFiu4XPhV1YZAyhk71L4pzVgHTLFy8X6VIIgdb5VayaJRyFE8U9f
	 j0ZZY0Gm8Yt6OcVP1jvQCcVIfn853Sq/YGpQIyLJ0jzVNkqI5iKtBxfcw4sONt4tf7
	 vWJY2bH+9Cw4An7XCqKvFSTPBoX8ux5/NO3M19EnZpnyrmlrT2LSvUtJzgTcTGh6+s
	 j87/v7LgkpNQmI1xK5SZv+bqIGSPdkV3lmrl/SChuxVei39G4J0XkjKaYw1yjwu/Rn
	 iDpDN0wIxC9yw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JQY1N-SmI6JB; Wed, 22 Feb 2023 09:37:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D3892404DA;
	Wed, 22 Feb 2023 09:37:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D3892404DA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 098471BF3F9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 09:37:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D3842417DF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 09:37:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D3842417DF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UmpRad9wOaR2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Feb 2023 09:37:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F0B4417B5
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4F0B4417B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 09:37:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="321022249"
X-IronPort-AV: E=Sophos;i="5.97,318,1669104000"; d="scan'208";a="321022249"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 01:37:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="795839231"
X-IronPort-AV: E=Sophos;i="5.97,318,1669104000"; d="scan'208";a="795839231"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 22 Feb 2023 01:37:03 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 22 Feb 2023 01:37:02 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 22 Feb 2023 01:37:02 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 22 Feb 2023 01:37:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fPrIC/6h3C7qXUAOQvVGZPGdoapmH1rIJSgbu9n/ip2ugsNAfP59ATGzNyT6HtXbkkeB+hQaeZQurRdOzelNsIz4KOQ1D3BRJ7l269QVNF5pgEFwaDlduWGxisfBWHD6QeCBK+NBhD4w521739cpbYf+i71FmMpvUthhtd3hE3nnXGbx3WqkqCfIVgA6oBhYZaBrnal5rRJpbgnXGl7oFNHDIMFsQcKy0hze81ysoMFMGI766NvyS5YU2enFhH1DsYCwuWbkWWouN4h5WzZGZlbK16LtdbcSosYHujTpWui1dE9qthjPeDkUqZbUHZ1UvptfrIxAtbS5r5ZB2R0OgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z3OPbTPYMnsYwzaC6AM7IQtu3J8b8XHzq758lWqCi3k=;
 b=CfZWgq5NcAIuazQpTpkEcZ5qSSs6Jap+LBIpa5XEN6PZApAWWVuKrO8K2umiqWrRm/2NCJv7GDdwsfOcQ20W5UbBWQc2uFpLGA6zYWFEeS6DOF74xMr09RMCgRHfcqrJ+a28NYV/bdO5lp4JLkpzR+apf30KY/V6H3zt7H/g046W2UtrihRauYsraFfxg1U2s9ngUAmWdZ0BFxZvLyvCLpAy4AJuDdSQ21Qi+TBr3yzPgMzSmpjV5pQetmZhtDcrOhQaDz/kjeg6KAZJ0Ffpwc2THaZbD4M3wAhuZw+rZLll+4OIMelpYfHkNqGCSqHkGUBWmdXqaMqcqsl5hK/ftw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5225.namprd11.prod.outlook.com (2603:10b6:408:132::24)
 by SA3PR11MB7534.namprd11.prod.outlook.com (2603:10b6:806:305::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.21; Wed, 22 Feb
 2023 09:36:34 +0000
Received: from BN9PR11MB5225.namprd11.prod.outlook.com
 ([fe80::fc7f:6ae9:dd31:bfe0]) by BN9PR11MB5225.namprd11.prod.outlook.com
 ([fe80::fc7f:6ae9:dd31:bfe0%5]) with mapi id 15.20.6134.019; Wed, 22 Feb 2023
 09:36:34 +0000
From: "Tyda, Piotr" <piotr.tyda@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] ice: add FDIR counter reset in
 FDIR init stage
Thread-Index: AQHZP8e2cfeE2SIZ6k25lZK/svUmrK7awlMw
Date: Wed, 22 Feb 2023 09:36:34 +0000
Message-ID: <BN9PR11MB52259E356CDC68DD02441EAC99AA9@BN9PR11MB5225.namprd11.prod.outlook.com>
References: <20230213055415.399081-1-lingyu.liu@intel.com>
In-Reply-To: <20230213055415.399081-1-lingyu.liu@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5225:EE_|SA3PR11MB7534:EE_
x-ms-office365-filtering-correlation-id: 323f0317-0fa3-4794-7130-08db14b849a9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5PVlwmdQY2ymSf3ROj8qJID6LlPZ+38r7QqXcOpQYKRKKvdqno4EkIvszh1JkVFpy8jLHYyNvNEGtyII73saApJRW4yqVltfqr4ZvXWYX7IozWeJ2mN12/cJmB3U3SPWnIFOjc7GWIpcKob0FEdOwcP5sQ8a/gKypNEo57/HJ82pq/0Bo9CcIXckULPb7G2GReqwo2dR7/W+pWqKNRfuNc+t3bG/AQIS9GMIhG3dVJHHS8gP+w7S9V8CobMJtRaiccedgI3X3243EoizG2jfXxkVt2TQrUA3aWc3OEECTXfZgT7h0qJrpaTrzikz+FcYU9KuFCnUI4KEjE5I1SwY1JICL1cE04OtkAXB/rSOGCQaH81WVgNUrDyUPniLdLet9agzbP3bAmuGGrib1HQFStbkugIkBCN+3n5xHt7VI2CLgUhuiIKxzsClmHvoeOs5ekuR1IrDGSnx2icrb3FwHnuAfRAN7Zmv3lieG8A78tDlNnucTkipLKFjqmRu/UOr9CZoqiO66RAqgRbDSBd3bAgBQsXg5bGncqO9rI8rNPGr3l0ybwRYkWSyF+3NprVPuMVENQYsANyz9soSPur7PegPp0yknKqcWEqV2wGMNDfYiqStP5qRAyZW5L2rzZTCd7VCScfWh6GL9L53JXb5uqbHtPphHvfMOhaM0+43sW56jW/IItfXBzriFCUXEvWSfW1r/SvWka96gQtDjqBdpw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5225.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(346002)(396003)(39860400002)(136003)(376002)(451199018)(55016003)(53546011)(38070700005)(2906002)(9686003)(33656002)(122000001)(83380400001)(38100700002)(82960400001)(86362001)(64756008)(6916009)(66476007)(8676002)(66556008)(66946007)(66446008)(76116006)(478600001)(52536014)(5660300002)(8936002)(41300700001)(71200400001)(186003)(6506007)(26005)(7696005)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZEgJkxvLG6m1xqL9JIzZ953bMY06khrkgQBBwU9RfrwocS8rOEhn1eXlYSah?=
 =?us-ascii?Q?gqiyRL1nuvEtWZUcB0E9ybfnk+nNj04DuVkWsBOlrYhLt205+1k3b61XiI7N?=
 =?us-ascii?Q?2TBRxScIC2GBUPkxVMB1XG7mR7AWPlUUawYTilObw8lAIoGYHxhjfj9/8vp9?=
 =?us-ascii?Q?aa9aiW+viM/lb+1GtlW7bnd8kiB5OPiy0Zb+5m3yhkTjt9IDz3gmTTlDyuwh?=
 =?us-ascii?Q?/R17STAgbJHIypHro6Un08zXHtS9aeAs0sgwm9OfNdFTdL3TtGv/HOtIfDu/?=
 =?us-ascii?Q?+V3ygA7KGrXHIASRp+eU+1y0si0CmN+dcCFWnGztDvhjJllwpWuuHjgB+JW1?=
 =?us-ascii?Q?tccp/sAXRsgJTTKVqS1m+8czBTwpJht3XwgSbbebmTcueRxRApp+3ijJWXqq?=
 =?us-ascii?Q?a42voyd7VqjDbHK0YBaD3ZD8DUdGitNULH2Q5OPZygmbvkfCbT7UuSSAremN?=
 =?us-ascii?Q?ifQQaddNKhhdxE4PyP8mYnNgNC/yHL9RQDWAEFrdMc13T1Po68QaIbnd4+xV?=
 =?us-ascii?Q?b7ph2gUyF2tqeOTMAWQCGFfAqPT/qU3zgVclXB7FaNEl7HWbj6a5ddlQ9KFC?=
 =?us-ascii?Q?fuulxKWHHOv+JrYf4/tQAirN+aANZJuUkVdwAUGseCZrEkgIAa5sKdsWo6Lw?=
 =?us-ascii?Q?+264YC3aBwzg3lJ1FXRzbq6T4GUPV2L53O6R14X54sKWb6igfYWtztx4CnEe?=
 =?us-ascii?Q?/UhHXH42eamd+2zlh5IF3FAGnBtW6NNZA2U+y5E5qkTqP4SsP8L1XTlHUFme?=
 =?us-ascii?Q?+IassCm9YUfuzD6cb7YrHwcVrGIiTxsW8tn2QmJtxaljlxKOKnv5yXF78opf?=
 =?us-ascii?Q?RnGeXrH79eldHR3KQLHcOyjZFpTlAXetUdXXZDUz53a1j21HI8LI4FNzN88k?=
 =?us-ascii?Q?uXrAbmBfh+sjjNeAtjSKLV/IlYqFT19UkaM5pK5kAmgm2Z1LZdOGui0BAWFF?=
 =?us-ascii?Q?bIWC3bkbrf1DzWMue7+E4eSB8aPSz6ejXG5l18empRwWTYKiyBzAsfMs/e7m?=
 =?us-ascii?Q?gKI852t1bOQmCKuA+ecy2yMKBNRjT+PhyL2YvOJArpIX0nizstFLFcvTfQyl?=
 =?us-ascii?Q?7qB7x5tf3+Q4PNUd4RfBUJkyyXghEa5C2AVmcfMPjWn/p6ASc6OgPmEbn4Xn?=
 =?us-ascii?Q?r+u2IHgZSoFTkDHo5QzeTzFxggvzG+iqClXwLb9Vbrpdi6OC6VwLJ+8CVZ4A?=
 =?us-ascii?Q?tsg8R9c9w6y1ib7G3MYGubOBQ45DnDas009fVxhljDj2ZmLG5AqrwbbSv5Vk?=
 =?us-ascii?Q?lLwnpMc6ajgelE1yb9jr3qzSneR5uLTINIcDUoN/HVrXDROzEvHKCdgCyXik?=
 =?us-ascii?Q?qml3UKaYr+HvJglH2lzDU0IR06UAUWOS3CxfASB51wjvY3acERJ/7yq9KBl4?=
 =?us-ascii?Q?Q1oIZ2LBQmr7gNYH6v7x+8AN3SWwXOECE453h96e0pdjIAlv65fhwlzkJgw+?=
 =?us-ascii?Q?c01MJh2OZf+yBpql0LznRRBxzN+XJShqGkvHgb3MPDxlns6vb5o9tYiwOUC1?=
 =?us-ascii?Q?ufkgj1dTkJGPrFGnSvFrGEE4GwN5GUB4zTuTMNzfCyyhYjp3Dox3VRR8zZJc?=
 =?us-ascii?Q?RcV6tZs9Nr6STrNECDoaNKJTr/lZxqWXGA91ZVPH?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5225.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 323f0317-0fa3-4794-7130-08db14b849a9
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Feb 2023 09:36:34.4967 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +cap/fGVrmHBJ0kGitzr0yjD/QFjn0LoCXYTFEM8Sw6OLH+/DxqGvsDlxHDDssVwC9Gf6YaSe+Mi90L5BoPa3A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7534
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677058624; x=1708594624;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=uVeNRzvQyt7i6gcUgydVNFmxGS6/0aebWr3qUdJVtow=;
 b=iJTMENyZMo3QSJY47WfKfBozWwscbzG6daeQXWLfLWxvRLWOwaSKOsX+
 3Iz/7zQWQ/szi9P98plvIqEbkmXUvcZj0qcKTzxiMqZ+uMTxro2fPbjJB
 deYPYLPFCslNQ7uyApA5eTDHPlybBciyMcI9E2Aag3ON+Y/+142hnSXPu
 qPjnuiTc6/UymHuk6q9ccGKISEyPov9RTTsk+eAdFI3SgnepVfFoVxb/6
 jBCHedv/IHY/5Umu8azL6ZNYQ37WhHeZQEHUL5EV/AwpREay+UD8FjAUe
 zD7yUdyu/cOFStVdFxHe+7nKcs9HstF3jOOaoAIe0gNBl1q/JoK1xmsv1
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iJTMENyZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: add FDIR counter reset in
 FDIR init stage
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
> Lingyu Liu
> Sent: Monday, February 13, 2023 6:54 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Guo, Junfeng <junfeng.guo@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] ice: add FDIR counter reset in FDIR
> init stage
> 
> From: Junfeng Guo <junfeng.guo@intel.com>
> 
> When FDIR exited under abnormal circumstances (e.g., kill -9), all the FDIR
> counters will not be cleaned, which will cause unexpected behaviors for
> future FDIR rule create (e.g., rule conflict). This patch fixed the issue via
> resetting all the FDIR counters in FDIR init stage.
> 
> Fixes: 1f7ea1cd6a37 ("ice: Enable FDIR Configure for AVF")
> Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> Signed-off-by: Lingyu Liu <lingyu.liu@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> index e6ef6b303222..60c9da4aac1d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c

Tested-by: Piotr Tyda <piotr.tyda@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
