Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DA5572B8A2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jun 2023 09:30:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CA7D181FC9;
	Mon, 12 Jun 2023 07:30:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CA7D181FC9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686555025;
	bh=HA6xlw2qKA7iRBku9honJBTvX87s46/lrZnjrGBkFJ0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=s2q7eIlfDnyom0h7s6nXxOCpYVlxQdz7pCzAnKxLVpjpTgfE+BsaXK87jCktAoK0R
	 PTjDgfYHxClAa/NCZzqXM//Kp3zQSVgT0N7SI0obWIPEwnBDmvAdTGlFlabbQtmEYX
	 V6noUIbJrRliRPEKn7O5XMomGTccQFNszXxDd86teSN6aylzLYh5BWdXKLJlcKMZJL
	 3Ji4bnyuYdezDzaxlg2Q1vgHkjcXB72lsp0jCazh7ZEUO2LShLXiQqokLGcyvSTy1r
	 5kXti5P5DfkbRS4YgQ2BHCEdG8ZC2SMgtNmqWK23JDaU2EW8Xtf3Bd+6yxe6TJfu2+
	 0OfrCOGETW7jw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v5r0Frt6bZRp; Mon, 12 Jun 2023 07:30:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8698581746;
	Mon, 12 Jun 2023 07:30:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8698581746
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7EF2F1BF3F3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jun 2023 07:30:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6315C60A87
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jun 2023 07:30:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6315C60A87
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qconi6sLDdhb for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jun 2023 07:30:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AC07A607A3
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AC07A607A3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jun 2023 07:30:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10738"; a="357962842"
X-IronPort-AV: E=Sophos;i="6.00,236,1681196400"; d="scan'208";a="357962842"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2023 00:30:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10738"; a="781080785"
X-IronPort-AV: E=Sophos;i="6.00,236,1681196400"; d="scan'208";a="781080785"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 12 Jun 2023 00:30:09 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 12 Jun 2023 00:30:03 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 12 Jun 2023 00:30:03 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 12 Jun 2023 00:30:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dv4yMsmZ5JV75L1tgx1tP9nLmOm9iI3aW5OPgZJVBsyQkZkNjhx2m/nRbm0IrAsibYLpqGB86mTTa9uNMxj/gEvNEgioUMm7s8/aNN8Ocg6q/EPeTFwIRQ63PrH4snuqZ4cRLXWALtsYwwGqtK9nOSwLxVznMpA8diwsmXGAsybCXyMLbl5dMatAskhNRkdjXR0uBUhh//5u1bFQGB/7oypdI8FcYuKwdqaGTAcsfGfnB/Vzte3qd9zjFQNn8wD6GpR5M8DVbHlZ2AE4AeAq1YUqz9CmJqS7duCzVxrdGoSfC2DTI/bsSzBRjOEkSRkvHztS00ahH1qrq5BcU18STw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nCOogWM6nULdhJIT4DSiBweds/4tS0KtRKjqMsRrzio=;
 b=Z2aaPdhirNn3jCYQ+OUIewUHYiZOVWxDxuLxy0hr7N4jXd2nJQBmkCWbdeA7cPYSJV+opMYUecaJkGvCdkuFzjnky/yYm3U1/3atPo5uOjwMMn3mPlpSYc9ACmHv7vznEu0nQweXgTG39l6BcFdAzReqCXSiaw71BeNnyQCkFf9HKlDBQsgBeCKuIwqc038Fac+Wk1S0EfTFrI2NTqiYYsUr6AbInT2Lqf+vRjNeGqqhkDjH2WogiqNOCrqzXLcQIc46PAj4WX9mFHS3dgFrN7ijvUSrqwtCOe3sL3xENvDAc1eL/JSEP6hdl95E2gLD/+OG48WAm4eBjJKUkpNvnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by DS7PR11MB6014.namprd11.prod.outlook.com (2603:10b6:8:73::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.29; Mon, 12 Jun
 2023 07:30:01 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::fcef:c262:ba36:c42f]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::fcef:c262:ba36:c42f%4]) with mapi id 15.20.6455.043; Mon, 12 Jun 2023
 07:30:01 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 02/13] ice: Prohibit rx
 mode change in switchdev mode
Thread-Index: AQHZjjqL1byktwjS6ku6SpG5AwQXQK+G4fKQ
Date: Mon, 12 Jun 2023 07:30:00 +0000
Message-ID: <PH0PR11MB50137097208278AE754EBECC9654A@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20230524122121.15012-1-wojciech.drewek@intel.com>
 <20230524122121.15012-3-wojciech.drewek@intel.com>
In-Reply-To: <20230524122121.15012-3-wojciech.drewek@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|DS7PR11MB6014:EE_
x-ms-office365-filtering-correlation-id: 36393b77-6ef6-48e7-ccac-08db6b16d4ff
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: U7icfZWSToo7bWooZKZ5LDrAevD1IIg2ItaMQjoddBEA3d9u6Xc4wfJvW+zcDrJx4z7qrsli+YeJEd1uE+UWQX9sN/ZXDTg5oSImr1JIMZTWQzki4xmzM7zYY5XBC5ozBLWCj9w+70S496oxwty38tw78tp2xe4CHdB6FfHQIiyVso8qvdcknIMgZywe5nyI0FXzHvwu9XYMHhdRQtywigdMrf7Z0a8LtbEpS3iJ+anndvgW9H/r/la8kfWadAVgig4Pl/CphfABAatGhTlG0nr2/S0/rdqcfwiLbwX/7FS5iQMhCZohVSvXZHP5o8NYsy2pLBjXmAsQoAI6huaS6AyAh3AVFF1soYhJqwnfHkg/teb6BUboR1PN9BGoyVrlev789FDsXnEeLXPKJJvdaApyZ3SeT5Zutg0Ci40pvFvumG+kxkzCaFemchs425RLe9kEkXf/awt8P4ObW4f2wJ7dyQxpml/Y6vJI+Fl55vhIljU2+yXlXOb0OT5AWtj8ZfmhdbMoKM+rRVPz6qnRMSoi8cYWzl2gsuVk7SSY5+dM21DPyxMSer4W44xQCSmzm7PgwU5P1u1XDtsP8HGz0rAWAG0wTMFPbU6HIeQbm6o=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(39860400002)(376002)(346002)(396003)(136003)(451199021)(83380400001)(82960400001)(33656002)(38100700002)(86362001)(122000001)(38070700005)(55016003)(478600001)(110136005)(54906003)(4326008)(7696005)(71200400001)(8936002)(8676002)(2906002)(5660300002)(52536014)(66556008)(66946007)(64756008)(66476007)(66446008)(76116006)(41300700001)(316002)(186003)(6506007)(9686003)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yihLiUZAL+liIHvj0TVXAzLzUy5vZZ5ZjWfM7URcTo/Q41IpE9StxO1Z3Po9?=
 =?us-ascii?Q?19xSyhMFpfwXJj9lmDHD82zLLLQV41vcU/bGXJTxwTlVzRc8PR/gd2zrvPQC?=
 =?us-ascii?Q?MveKTtVpJNdzDVJ2YOQim+Owyy4MwUThLYv95WBFba8kijjoK0ndDXgY2I/x?=
 =?us-ascii?Q?/0qOy24JMFyzocGE8EK7JNZVFf0G5cXXHpefGzLnbBac/FAvO8sZ4460BbdE?=
 =?us-ascii?Q?X7mjKVBa+khn2fiVmwHVKsQsSHOK8KJSzolOEvqWVS6Vw8kbCvAhAXSo5DE/?=
 =?us-ascii?Q?qkx5N8ABmMCuqZsaphB9Bx0CkYV3nL/e4WPYzgMXf1Nrqmxjyfj4grYo9QXF?=
 =?us-ascii?Q?BsunI/wwazBPGT2TTfxJ0PdDpnEl5v+Tk81RimpvvFTDHHWcUZ5xaCuXKZB8?=
 =?us-ascii?Q?SuLazs94eL9iy7UH3v23+5jy4Q6u0t0IQXF91/yijtJ/ycQ7F5pZOZytB9SO?=
 =?us-ascii?Q?L8HPOpvuzM+k4yOQKXoY6ms0sh141xpDB4Bz+DemOTnlzf65WVlygUEZ25Oc?=
 =?us-ascii?Q?tAAKHQ7LMuS9DBFiaENGjmAYxS/CSx90bouUaVJaiq4IqRBsF1M1tEY3Tw/M?=
 =?us-ascii?Q?fT3ZP9SAnD7rXTciTldDqmYxb3H4WhDqnbEDKPeaukOgFrK+soCwsjpgS7oR?=
 =?us-ascii?Q?2dUDdeGLxR0akWIqDDeJByRKwtJgeKAsi65JGZFwcI/r+fbDTo1v2tbA/7Ut?=
 =?us-ascii?Q?xB7S0+A7PmLzJh9kgR2OfbTl3uaYwNKGwnYOMOcDqK+pggID+mYnP0wbBLSW?=
 =?us-ascii?Q?plzJAfxJbgQK+UHRd3B7bCHEYZqSKvn6qbN5uZBXjvVxiD6tGG0Ujhe5GwGk?=
 =?us-ascii?Q?XNMoNF0NS0jGUl/36bVcNgZU+x7gty+YfRidO7Yot98vN4rSJV56YxMFpFPY?=
 =?us-ascii?Q?UmWZbqykSo9fHkf9IIthoG5xQjdfSxS06h9QOp7A3ZNp1USvjl8ruVKSLn6N?=
 =?us-ascii?Q?fS6cZ6CgQV2C2QEWt+MTan+jSp9ZYi6IQXaY2hp72UYY6wxu1sTh1CZ8QHAq?=
 =?us-ascii?Q?8tNnmFvMgGXLOZ5CzVabV25lvZXhVW73cqYIabePbKPC8DI//zH0avFmEVji?=
 =?us-ascii?Q?kY5gtQxJT8i6T19srRbzo0cN9mYUcrSqI0UFdLK/Eg2I+kCNAzz/2+2tHxV+?=
 =?us-ascii?Q?bJYfOkplMADIrjQ7m4n3puxndibmlO95Uq6mTH91p8dQQXy96I6MS9Ak4aCO?=
 =?us-ascii?Q?v/FafmYMIAvin8jEbu/qh4BM8pZ6VBWrGEpnyKHAp0PfVihl0uC3uaxIF9In?=
 =?us-ascii?Q?72qwdEz6qOkjUOLuQ/PVIvuiPYhgiLJJubGZhf/WaSUJ4Y5exHzUDSJN5WZ+?=
 =?us-ascii?Q?1xGigUztvdnY2WYS8EKEmkt0l37cClKXF/4l5tmEa15l/7b4L9ZKRIOB8WMx?=
 =?us-ascii?Q?omx72DqrMWHVcNnQdHi2YqjN9bACd9sYD8tUccRN31e/ZkNcxAwTJTNrE3/b?=
 =?us-ascii?Q?OQP/hO6bsZojxycB1Rlo5E0D9NKdqmD0rYjcTbR8Zi3nX1WrQaVmk0SP/QIK?=
 =?us-ascii?Q?Bk4HgQVySsiSTVq6VKmMAHtEP9Am+f5h37nvhFHETa+uBgYeYWrhgC24um/e?=
 =?us-ascii?Q?+eZ/HZn8axCmyh9zVRHouAtCCbNG18jmCJX3zAFMIKQJ+DWTygjddOHarLp/?=
 =?us-ascii?Q?dw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 36393b77-6ef6-48e7-ccac-08db6b16d4ff
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2023 07:30:00.9793 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HcDrqWlQPcsScQkZAPQPTYQ4f5hgT7lyRNrwrtYUiw5lUQxhiYr/QByax5HZi+aIfDPkMEoOZNUC6W2wXLjyvilyDk0novCJB4gnO3ihReI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6014
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686555017; x=1718091017;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=r3LwebVJsW73DnljkY8f59YKVcdSbl0EIGgaXDQ5K2Y=;
 b=fcOC3/hRwpBJknPJQtDE68DZmZNycOPQGXQ02oI5TfPqZA+e39inZTWU
 DJ4MfWAroplaO4vOkMJw3JiW4uWW0cNSvaMnwvuAP6/e+uyKknGpx3oRS
 56ppqb6K/k4aZ2Evm5y5mkjXl0bSOJ8ZpJd4/vcu7rn7l3FQLHA4V4LSm
 J59hU5KxhF5nMvXoAGPu3UbQaPTShF9+uqGcV6AaO9HrsL+lcUQv9b6b4
 DWuxo9THwsUg41BG0dDxJNBS5LqlUmEyeT/dZI+wthFAmwfayCtYszVA6
 lU2TWA+wEIr20u9KuPQP5T3h2x90RiCGfJwqts7fgPJvWFq/B4KV6oJZU
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fcOC3/hR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 02/13] ice: Prohibit rx
 mode change in switchdev mode
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
Cc: "simon.horman@corigine.com" <simon.horman@corigine.com>,
 "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "dan.carpenter@linaro.org" <dan.carpenter@linaro.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> Don't allow to change promisc mode in switchdev mode.
> When switchdev is configured, PF netdev is set to be a default VSI. This is
> needed for the slow-path to work correctly.
> All the unmatched packets will be directed to PF netdev.
> 
> It is possible that this setting might be overwritten by ndo_set_rx_mode.
> Prevent this by checking if switchdev is enabled in ice_set_rx_mode.
> 
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

During our testing, we found out that PF netdev promisc mode settings can be changed in Switchdev mode.
Is this expected as per the implementation of this patch?

[root@wolfpass-switchdev ~]# ip link show dev ens802f0np0
193: ens802f0np0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq master br0 state UP mode DEFAULT group default qlen 1000
    link/ether 6c:fe:54:5a:18:98 brd ff:ff:ff:ff:ff:ff
    vf 0     link/ether 52:52:00:00:00:01 brd ff:ff:ff:ff:ff:ff, spoof checking on, link-state enable, trust off
    vf 1     link/ether 52:52:00:00:00:02 brd ff:ff:ff:ff:ff:ff, spoof checking on, link-state enable, trust off
    altname enp175s0f0np0
[root@wolfpass-switchdev ~]# ip link set dev ens802f0np0 promisc on
[root@wolfpass-switchdev ~]# ip link show dev ens802f0np0
193: ens802f0np0: <BROADCAST,MULTICAST,PROMISC,UP,LOWER_UP> mtu 1500 qdisc mq master br0 state UP mode DEFAULT group default qlen 1000
    link/ether 6c:fe:54:5a:18:98 brd ff:ff:ff:ff:ff:ff
    vf 0     link/ether 52:52:00:00:00:01 brd ff:ff:ff:ff:ff:ff, spoof checking on, link-state enable, trust off
    vf 1     link/ether 52:52:00:00:00:02 brd ff:ff:ff:ff:ff:ff, spoof checking on, link-state enable, trust off
    altname enp175s0f0np0
[root@wolfpass-switchdev ~]# ip link set dev ens802f0np0 promisc off
[root@wolfpass-switchdev ~]# ip link show dev ens802f0np0
193: ens802f0np0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq master br0 state UP mode DEFAULT group default qlen 1000
    link/ether 6c:fe:54:5a:18:98 brd ff:ff:ff:ff:ff:ff
    vf 0     link/ether 52:52:00:00:00:01 brd ff:ff:ff:ff:ff:ff, spoof checking on, link-state enable, trust off
    vf 1     link/ether 52:52:00:00:00:02 brd ff:ff:ff:ff:ff:ff, spoof checking on, link-state enable, trust off
    altname enp175s0f0np0
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
