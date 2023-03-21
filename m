Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C40DA6C30CF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Mar 2023 12:49:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 37C6F81ECD;
	Tue, 21 Mar 2023 11:49:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 37C6F81ECD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679399390;
	bh=dm7cqgVF7AiXWvJ6MOxjLSQUCLD74G9nfKwH/M5VjaM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DJpXTN5iIShWqtqykBTTrl31FBlTsnFY0tZe7TNZDLKPSQWoCX28OUWvS5EjNYtO6
	 XOQUfmDtFE+EL1QyV+L5bchla+iLBgaTrPkcgAf4oM6MXSgSkBLumTz21I8ORkSkyp
	 5DyJZyINj/KCQpbSQIWRh7ZGiiTaeDZMe543Ly5/DRsHvZWD7hsPjkD8760n5tXzJN
	 XzkXG2enXFz0g18FvLv/s5ias5c65w1ZXMdtrLSQWbkGSrwsnE2JouaetsoC2igglq
	 +35DuLa8sLWFi/96RY6vDEBi9JAsyny4w6bQjv7AQKmOsfIEhxVm1+LxzCtH3wEzDc
	 8iiTJcWTG8KOQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XhHlwvi5SdWY; Tue, 21 Mar 2023 11:49:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2C6D781BB4;
	Tue, 21 Mar 2023 11:49:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2C6D781BB4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3C6871BF293
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 11:49:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0C873416AF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 11:49:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0C873416AF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8K8bkzWmIBAN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Mar 2023 11:49:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C26134168A
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C26134168A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 11:49:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="403791437"
X-IronPort-AV: E=Sophos;i="5.98,278,1673942400"; d="scan'208";a="403791437"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 04:49:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="1010910703"
X-IronPort-AV: E=Sophos;i="5.98,278,1673942400"; d="scan'208";a="1010910703"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 21 Mar 2023 04:49:18 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 21 Mar 2023 04:49:18 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 21 Mar 2023 04:49:17 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 21 Mar 2023 04:49:17 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 21 Mar 2023 04:49:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d/gFjrjJv2M9v6P2ADL0w6AS3RJf7SYCLjkeFd7aw217dnIYrlStnXev9tVtNPW6jdr8HF/Ggfh0YitIGvi6w4trkDbG3TKe9pF62/BfUNLRfdqv0COYrmBZs6bLzo9NM3kmhkL5IoW0tgJPJ4cnpajPZMT866UFHZellWDHUZXSZd1hHjh0I1vpK8MggkfoKQ2jHFif0/Xqc6O4fl8mx/STKyKD40PPMM0c6Y0Si/owwdWMBeIKU2SPV2RFDhojOoG8sTIgS3xGR5fjkEhn7QniV7AnfvNrOViqEaF3vGE2tFFYBX3RrQb7Jkh7iH3BOaG6MKGG3VxXys2LQQ/MGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OmgjOriZOdmZyxu3IWEKdMvjOkMTfezgHXG/+C51Kls=;
 b=aULXvFf9OR6kNT5ozR69qYYVN1c4EWoj6I63I0opcCbChDO8NoRkntICWXOzFKXI1CEJJyfnWtroZ2luy5d5Fc7/HizFWmntJLiwyCTVEIaonj/9JTOPY8RjTMGl/gjR4AMR4rq9YrOiOgbof4KqaGuox1o3kHJXeG0fY4AQwkJhy8tTC7udrY9A1RMoxmMGEOs1ntaxwQZ85wBKgZrOC3lnLTsKBmNVDOVR6qiGHVoZxOmiaJ1Mrd7RwhXidxnr0kGEeFfNTHbVkWRCYKXJExbANiryBz1c9VerdP7Ql1J7cNL39v4oYuo0ghy68SCCICIj7djF+BLuv7ZJJ1nrsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by PH0PR11MB5950.namprd11.prod.outlook.com (2603:10b6:510:14f::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.22; Tue, 21 Mar
 2023 11:49:14 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::601a:561a:bce9:967]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::601a:561a:bce9:967%3]) with mapi id 15.20.6178.037; Tue, 21 Mar 2023
 11:49:13 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Kodamagula, Kalyan" <kalyan.kodamagula@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] ice: check if VF exists before
 mode check
Thread-Index: AQHZU0RJXcO0PeCkpEuTDMgKrKCB+a8FL4Bg
Date: Tue, 21 Mar 2023 11:49:13 +0000
Message-ID: <PH0PR11MB50137B35EA086EA5B33FB72E96819@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20230310113344.199393-1-kalyan.kodamagula@intel.com>
In-Reply-To: <20230310113344.199393-1-kalyan.kodamagula@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|PH0PR11MB5950:EE_
x-ms-office365-filtering-correlation-id: 2a276e30-776d-4911-1a42-08db2a024a74
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EpJtCEG3JbMy6FBFHu6QXk6V/QMY53Fp1t6+W+127MOXOIqWIgi6DS8v43wr491RJUBKaF8kFRyd7v3Zu2kQTRHJygynOLs99jKmhod0/v8ni4Z+EmVMVjjuLWg9owxqtbx+lvNImP+o69mPb5A8VJzNcBFbX7/ZUUJviMPaYT9dTFxQw0xtRFKKmvrOL+ZQRJUHxAXCTWhyxbdyR7nDgrlvdzy/JeJxwMDoaT9cNCMh3ArPadRnsqvMDBlWxYoTTD0QwolFyOy9gqmelp59ZApavKHB4AOR3ITKgD3GC9JDjXTM2is3iS/HAxNoyUAwBITtd87ju/OeczETUGOEwZpHb4hRlPlMZFdFuiVpDvJ4KN8feDRBSS7uMepudTTVY1J6ZP+4MkAztpDciYAdFiOuFYNqNKDnuVxtw6rbPbTYHqXnjk4vnc9HGVi2laY3YgdIE7DZd3+EQAnMSktcWXG+7P3ukpmPJTRd6xaefHuygZQpbjU6aVJ5ExD24uIQBKvacY+CU68VIkYOBm03eyJa+bNy1d2fAqFv7xab+Vwb4I5nizEWIDJ3gGqvLO8vkKt8A1/SEkph7kbtjiNws+qmAgspWPt9oJfi7h6/5IJcqE+jYNh6WZ8lSFGu+i9mTrogYrrggER9fnOuXHIueFO+uGHe099qLWlnR/2AeV54WGSG7WFmb9MyRNDPe6y+NCMsKjf8DNxfHI4zOlkUkA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(366004)(136003)(346002)(39860400002)(376002)(451199018)(66446008)(6506007)(186003)(7696005)(8936002)(66946007)(107886003)(2906002)(38070700005)(66476007)(122000001)(4744005)(478600001)(8676002)(66556008)(5660300002)(71200400001)(52536014)(38100700002)(53546011)(76116006)(86362001)(82960400001)(41300700001)(9686003)(64756008)(4326008)(55016003)(26005)(316002)(33656002)(83380400001)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?J0taEZy5jgvxcQcgd0UugAtX0v9aDLLVND+3zy8WMglqe/4zgxrPPSDPojKk?=
 =?us-ascii?Q?7t5s/VXBSI8p8ivPCax77sdYv/nnnytdgMrzhKKcI7eavOpQbAe4qDCqDttI?=
 =?us-ascii?Q?D9iYpYYlbaPzWdA9HOLev23pQEZ07Ce8lGzR6uyNDqNphXGiYZpVK9kXCQYJ?=
 =?us-ascii?Q?X0GPwNZzxkEl1OjOiLWsTwgcSvs92BMN06RJlbWts3v60qYfG+5GUYmDgy2v?=
 =?us-ascii?Q?hxqWJmC8yoj3D3OtiPipw2+rBQQhE2EiDIIEtC2+m0cWdF4ky7jpkXVMOpKU?=
 =?us-ascii?Q?5wZRZC0sUe2m/NtL4Ry6ySM1I4tahRhiyusIOe3IDgViIOgAxj7I1TnOewdT?=
 =?us-ascii?Q?wlOs4997QK74AHNJWNullAh9pM4j5ehh3nEWrwxHQc75g+WmuVaLsbLuuP5N?=
 =?us-ascii?Q?5JsguJR3LK8FuUJb3EjSVQ6aWb9DW/XuAaN5K9xOqU8ghfIUOxG8V495LfbN?=
 =?us-ascii?Q?d7ERdBcoEo1q/gEBjxbAMF2+Y7edBUbc/3wjE81NGKCVkfnNyMJc/jvHTvsf?=
 =?us-ascii?Q?2t50VqulJP1BWeZKZHiSyybD8wf+Y0TKexXtCdCqk4PVgqLr2cDV4RzhOpJf?=
 =?us-ascii?Q?ym/4GfD+76EFapWVzJfO0lFESoyrbRACobrTW1ktEnz6CGhX4ZOt2wO4JrPg?=
 =?us-ascii?Q?nbXFa5z6ioozWhrvLebHbRyQggLTl5T2wVvD70boxiB//Hv0vrQskLWYD1vG?=
 =?us-ascii?Q?UiWdP/+6CvqkqfzAAYvyz6PA/C96kGMQFsl9HA7ge1cHRhyxzv/2FBOmM6y6?=
 =?us-ascii?Q?swLaZClh38kEZeLd9PJUeHV4pczLMVGgcFXTxFK05vCj0fiAj9FLWagroLz5?=
 =?us-ascii?Q?5mxVp6IjiscehuODV4QWC1Dix/xcHZsGczu3vPEF1zFgUCJQEeIVrMB00RMA?=
 =?us-ascii?Q?atm70Z99ZV3HIY4imducC21jVfZSWK9sKdRO/7freTQs4Kep5fNsJbMHgXWO?=
 =?us-ascii?Q?rHjUOOPnHBBWnONXeFIrcS3z+TO0xJ+goRQ7e7gH/+rDSKhqX9o4M2Z+h6Ir?=
 =?us-ascii?Q?PoRb5sG8kROwq2P/W+aGJ6p7mX6Kw7+vH2GzMJ4uHxoFugd0MXGFYyaUlazu?=
 =?us-ascii?Q?AOcIgHSTWBzfkfQ4Z5i9disamfLc806cNue9yFn79W7qIRflP/HK/BBE6vcb?=
 =?us-ascii?Q?+zxd+ye6p9g2dJvy/+wwurGmkArfqBp5HsUzaf+ckuAj9+8Co3tTyY7cUpB6?=
 =?us-ascii?Q?gg3rFMQ9GWSwC0B8Yi+/GBAcpdzEoPfmcaGfjFqq6sDYyHDORqvFJTWCyPib?=
 =?us-ascii?Q?L1+cE5lAMggAuNUfiBUpcUm7rrr4RAlbYqOXU/yL/BfoRUtqSXOuQ3j3rmEr?=
 =?us-ascii?Q?Q9UHrswv5tYjV1kAlQyhS6g06tg/dfUjYm4tw1bSCMEeGDbAtgfmnptEs3v+?=
 =?us-ascii?Q?ttO64esXcgbbnv9G3W2tPWUs7QFkhXYx9K4aBArHu12eREvDeuEF60siazli?=
 =?us-ascii?Q?P2a2Wj1APXKSUHUHn3+TKIYp5DQke3UMCorc/nVFlIFpJ+mJZNQAEYzN8mnT?=
 =?us-ascii?Q?N8SJlHus/GK+APGUK5g61+oTO38QHSuUqZbCrqClizr61cU6Rpm2CsEl5g+5?=
 =?us-ascii?Q?X17pw0bhMoWoW9+c9BdGgHhFGQ+4/OLWh7rcpBJfTmVt2QAhXxXlwsHHrz/R?=
 =?us-ascii?Q?uQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a276e30-776d-4911-1a42-08db2a024a74
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Mar 2023 11:49:13.0325 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NaQo8JkhkRmFNXhZQItvgVER3qwxsMnn9ZgsbccjTC208J5bK7H8ecoal7n+dGQ6MDwVUOvDNSexlD2+kJk+IszU6u+g0RN0c6PtexDTqJY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5950
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679399382; x=1710935382;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EuoZGuSQlIGbdUTN+YUmtAxs0wLtsKGsgIglLCzO1aE=;
 b=GwC//tc0CHl73D93u1SaY9k53L5IB0+A6rQae+eSGl6PrAwdbaae/+uB
 faurYaWxPuHsX2ph8AZSo2Rj6lhKrFYBfRiRq0qrbmElJnqJvwLE88uZx
 NCgE8M2ZH7DAWyOWqWl0d9gapIbRy3HgkOXhWX8AoRMR6ufiQjqQBqmlZ
 x0wkEkOIixiC4kxi2JDYCkyZEX/BQC3D58vKKnQ4U4og6ZG7jL1scoJmF
 Ey5kFe6xAjQdOHOsYsRrt1gHl7YXMl71bz7jxajBVxeiLO9CxZxxRhfZ1
 cgvOV6eR071l+m3ljrfDWVdG3IphyYaVOrwbEoYTEN2Y9X3GTc/qkH6O5
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GwC//tc0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: check if VF exists before
 mode check
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
Cc: "Swiatkowski, Michal" <michal.swiatkowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Kalyan Kodamagula
> Sent: Friday, March 10, 2023 5:04 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Swiatkowski, Michal <michal.swiatkowski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v2] ice: check if VF exists before mode
> check
> 
> From: Michal Swiatkowski <michal.swiatkowski@intel.com>
> 
> Setting trust on VF should return EINVAL when there is no VF. Move checking
> for switchdev mode after checking if VF exists.
> 
> Fixes: c54d209c78b8a ("ice: Wait for VF to be reset/ready before
> configuration")
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@intel.com>
> Signed-off-by: Kalyan Kodamagula <kalyan.kodamagula@intel.com>
> 
> ---
> V1->V2: Added Fixes tag
> ---
>  drivers/net/ethernet/intel/ice/ice_sriov.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 

Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
