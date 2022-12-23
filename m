Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED23654A6F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Dec 2022 02:17:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EFB8A40C16;
	Fri, 23 Dec 2022 01:17:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EFB8A40C16
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671758228;
	bh=cuLo7TIqoqmLW3CtOIT4u0Gu0DpBPQ1jskTMiqd/SEs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fNKNL1PYQaSPQY6RM+jNeEtGbjoGXb1UwRPDC0Uip30FRMNMmMIpINbYAoT/imt2q
	 DLz1/V1iC7/jRKfxNFfT2kVomt1Zbh+l/0YXhx9/xvd/Z3edo6NYt8e/ObjKIOD4zp
	 8Ze+blY40u9HAUf65WlTD2o8MiJ42Apgk9lG9g5px39gg4VbAYWsLjlNESHkSDT+wf
	 OI6Yij6vUU73ygVm3Cek/W+jFDuDaasQpU5oXxHFJfega7upZ8ZDJoSXtVlCF/RuDo
	 8EFs3F0JdEqAZGjq01y5TrLLl7Mnm4Z8LgY6+lBmqB3l+PbvhzVO+0kPdn8aRrCeud
	 IVWtt3TYd3s/g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8saEYr0T2vMq; Fri, 23 Dec 2022 01:17:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E81B74046B;
	Fri, 23 Dec 2022 01:17:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E81B74046B
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 27D961BF3E8
 for <intel-wired-lan@osuosl.org>; Fri, 23 Dec 2022 01:17:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0087D402E6
 for <intel-wired-lan@osuosl.org>; Fri, 23 Dec 2022 01:17:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0087D402E6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 680rP7LCqJmA for <intel-wired-lan@osuosl.org>;
 Fri, 23 Dec 2022 01:16:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 86D0B40154
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 86D0B40154
 for <intel-wired-lan@osuosl.org>; Fri, 23 Dec 2022 01:16:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10569"; a="406491972"
X-IronPort-AV: E=Sophos;i="5.96,267,1665471600"; d="scan'208";a="406491972"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2022 17:16:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10569"; a="897383979"
X-IronPort-AV: E=Sophos;i="5.96,267,1665471600"; d="scan'208";a="897383979"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga006.fm.intel.com with ESMTP; 22 Dec 2022 17:16:57 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 22 Dec 2022 17:16:56 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 22 Dec 2022 17:16:56 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 22 Dec 2022 17:16:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P02znGOJjdDAWxOwmQhdJP3bm0TLAbo4VvXCrL+t1M9oEmNVCqr59qhug6lIb1+UGFkvcIdxG9vyvfNGMWk0vQclK//rF7AOmxTt2eO71uNUyXbLa7mBwGK1aIKJS4H4p3D4pLvFRPpWGJuRXXuia6w1MZ3v4DaQzALlRd1r/7e3EAn7onFqtbwj0vFX6TpVaNp7MLHe695ZfRWWRO6X7FHlngiLsUi0UoQSpXw1wvRPR2BRVWpDOllKStXJ4BWUHiUNN/d2TKID2KdAYRb7AFwK/WvYVfqkfwJN1mTCIWa7hL8hIxxPVioRbo2DiP+QJCpkPIyOmGsK6WzMSIdgXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4hTzlM0f6SXXNjcQB5uXM4ChBEhL0J288ZdtFQWAFlw=;
 b=LxdSt5G/SXMypzPU0MIepje0+kCoLSTp7x0XRNx4prVuolfNiJOA1jrf0dfyIQqemf56YJGFw50hKHgbGkTrvASe6PUznurk8LQ79EJasQMDuHggYEqnstyespwjvHw1foFOBMWtOO5pkgv2LBrsJLlFE9fu2zJOlotZaiJXA5tMRTf8c/7IviQN1oPC4BY1BBnoOOLNrzX0zetnQfrfgnfotCFN/dv1Z3dJkom5PLw6PlNPcTX019qdVky9aHkHNRFLSWYXYKGtTUNrgL4uqAMO3+ZUshVoZJpKL7/OqhrCIAw4P1u+WGxaVvxfv7XIV7MQPzU0/gatYWdSaxUzTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5031.namprd11.prod.outlook.com (2603:10b6:510:33::18)
 by MN0PR11MB6184.namprd11.prod.outlook.com (2603:10b6:208:3c4::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.16; Fri, 23 Dec
 2022 01:16:54 +0000
Received: from PH0PR11MB5031.namprd11.prod.outlook.com
 ([fe80::6488:c674:163d:642a]) by PH0PR11MB5031.namprd11.prod.outlook.com
 ([fe80::6488:c674:163d:642a%5]) with mapi id 15.20.5924.016; Fri, 23 Dec 2022
 01:16:54 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 2/2] ice: combine cases in
 ice_ksettings_find_adv_link_speed()
Thread-Index: AQHY/1k3JaiJYMB4EkGuiGfbApGnI6562SsQ
Date: Fri, 23 Dec 2022 01:16:54 +0000
Message-ID: <PH0PR11MB503137824F422D09F96CC65DA0E99@PH0PR11MB5031.namprd11.prod.outlook.com>
References: <20221123155544.1660952-1-przemyslaw.kitszel@intel.com>
 <20221123155544.1660952-2-przemyslaw.kitszel@intel.com>
In-Reply-To: <20221123155544.1660952-2-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5031:EE_|MN0PR11MB6184:EE_
x-ms-office365-filtering-correlation-id: ac856aef-e857-45e0-3729-08dae4836105
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6ksRvoHnApXMTnDbaZUb0Mo1AyI7WUUb/d4vQ4pMZXjzB4BJ8NqptlRhoIPC1BlOXasx/6yfVu9Ah3YM2UAUm2OUYZGfrNv/w4ejWs6g7Km6elKqwzdA4q88Rh7PFdqjcDtrVHyZBIvPE0hXHVhOgX24kVLb79Z2q89iu1Xe7vbcpldcANGtbp1+RNe6RjuxA6n1x6SBuYx7fDXmMJyVO46opD7wSDSrg4BSunFfhFjZn71MX9XDINrbdtt+5oEEVSn+SvQmwI8AARYsqZcT/TcrL/UMelDHnVLQSgQk9ZGssv6/uqyZ+1RaLqdSSC87YZXJSKwBlLzBlWv92FXhGueSZ8IIl7AALPZ8jOk40jqz9fM4fCYUnbrnbmzSPtm+42S/JGSaF9+FLI/LgDnNs35FKH3xXEfy5FhNXlL4VHHboI80Gqh3L4G4B3c4p34xWOh4+ZT+RS6YsG6AE0NDvewNj1TGjU9O4MezkOTQ2cFdZ45glFYuS4X0x2ztByqMme3nBm1xlO3G767N0Bh9221uvmwTkTQe8XPSgzHNoGLR+ZD8Opf76JgHAez4z/addswfZQLw8pGse3lyitc/tpi4DSFfK0aIvirIQ+eDk0Sh3tldEIAreq0ogSn3NNpfz/2DhyVo93epyMJB50fCIQG+5zexeqep1MLye6WQNU6FJ4DomzUqWq+i6ALJK3NT
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5031.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(346002)(39860400002)(396003)(376002)(366004)(451199015)(38070700005)(53546011)(54906003)(7696005)(6506007)(86362001)(316002)(82960400001)(478600001)(122000001)(66476007)(38100700002)(8676002)(110136005)(71200400001)(76116006)(64756008)(4326008)(66556008)(66946007)(66446008)(5660300002)(52536014)(83380400001)(4744005)(8936002)(107886003)(33656002)(2906002)(9686003)(186003)(55016003)(41300700001)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?S+qPYtRvFTXWRcgScXMaxVEs4aQ/ORXENdGdM3t+lh8zSSa0OFwJXufvv2Sk?=
 =?us-ascii?Q?6ku1i0kSEKOWd65kWF3gi+lVgIWNf59TswbAnPBlkhWHLdIWFxchKYAua4Gw?=
 =?us-ascii?Q?CcW7l1a85U+PrFeml7Nn2aFbXRlxRKEUmFH3LVc4+BlAdtaGjpyHN/Kga3wZ?=
 =?us-ascii?Q?0G1RGydaIj+e45ZG1Nmf+Fof0kuQ01xryXkoi3rJac85hy7hm19Xbn0Zgnrg?=
 =?us-ascii?Q?wgkJDiLJLYapdZ5mS8XZk6te3gmzAgVc8T7bl2v9bdafkvZwRUKHzp9HYh3F?=
 =?us-ascii?Q?a2pO700PiVjH3mduoGbi+9dfCwMxQdFmKYPfoMaD7vBrPe3gDHhpKFskmrAz?=
 =?us-ascii?Q?XrHiFLCL59L4xDhoxpnGm4YhKGIg8asbtg6q4AMzFZ3pxltvZoAnN011lPEH?=
 =?us-ascii?Q?fMGdvpmFJJUkAf5GSGpH8r5uhuhsKaKc8fXTQNuuE/nUQKfRl0rZz07ZYOfO?=
 =?us-ascii?Q?MdCLtksKx9hPwtns2WFja0QyOkuj40L9x0/wMD+JMxNPU1BEv9CgnwqctQm7?=
 =?us-ascii?Q?BqvNTuGihrj08lYMnaqk4uVvpSfvbKffqomx4Y/I+8TRkDVLbXg3VrHJkk2I?=
 =?us-ascii?Q?L0LimpgBkGwzdFORSsIr1sJiFO8sYRzWh3T3KYwpBgnxAba/0hYpw4uLdNME?=
 =?us-ascii?Q?H0L64jdkNKoDfYBT3HIO0SEh9u7TORnJMz3JW+4HiGLnCdGFFFObhVfQH3bV?=
 =?us-ascii?Q?qrkGvBYEteIu0bt59qrIMRb7qOJ+qE2mmKQ08vhR+RRUJIiYlp840RPJxY0R?=
 =?us-ascii?Q?eZpY4LrDjDzR9p2QoaP5uZ1THMcu4wKOdh5UZFUDp+23n5+BSSCaxEaG609e?=
 =?us-ascii?Q?8HWZ4ZVFb/O7RnIbG3FY4vXRkDGkIfjlUd4f/oYO7rNv/Qr99oKuVcXeY/kw?=
 =?us-ascii?Q?wq7tSGikgW5MHoxmMJiWw12c0l5pNphRXqU+PT1Wu3//ugArySLm5SzoYox2?=
 =?us-ascii?Q?GqgAkkYzd2XVM/PAbD7w0bacGl5Tuh0oD0yEMO9KgM9TauJof1TJYKI8nsIH?=
 =?us-ascii?Q?PQ6QxERYCYqzZ2/OfkHBKWiTUlnrS99Os7vG7yEeuVlx+HtlF3klmQd49BAZ?=
 =?us-ascii?Q?sZPVizUyT5V/cQMNNy0M691RkRn9zVhqzpwMc7DXyDynQl/AFPPecLbT/S0T?=
 =?us-ascii?Q?nsbMnVg1t+eVBEEbrAG/DQ3TYAUvr19rfVr2mqKud/pgHkH8+JA542jB3f9b?=
 =?us-ascii?Q?evNtU/MqR2lq/Y6jU1gWtYg1bl+rfWz4YOXNL59qnPcpU3bE6iBs1VdTJU9D?=
 =?us-ascii?Q?ZrkMxD/6N1XtC40lw7hvRJkXOwlUM4a8qB4KSxbw5W/vfOXSEELetjp/fkz/?=
 =?us-ascii?Q?OJ+ZpV72rEqSL0eavY4h2nNGB7E+16COkukWlCbY9jnEza3zjPbUm79bFN/w?=
 =?us-ascii?Q?+iwMnpKOEQbV40mpscNzaL2QLwqmrHJb7RpTj3yAjnZZFZfxTwsRSloRhrwS?=
 =?us-ascii?Q?usr3QQrogJ/y4x6QYxRGUO6fjQn+m4Mkdyl58XXShZ9vyRntO0vDnuJZse+x?=
 =?us-ascii?Q?pa2UiKeRtZDWJx3uqIhgCmSzaNTyuYppLx7p0eITZhvQr/FXT13H8fAf/fAR?=
 =?us-ascii?Q?8Ql1sJBuzQ6DCy/eRDkmek2CfEsBDHi5KKYuhvEpE1PCJJsfm7lE3DdnKeqU?=
 =?us-ascii?Q?Gw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5031.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac856aef-e857-45e0-3729-08dae4836105
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Dec 2022 01:16:54.5302 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mfGG7FYYOet08QDpQtZgfPkJgUl3r5obEUYZCum/WS/qjbRMC44bBgLC4IoR/JbRZ7JHieycqj1nksrplPqXpNuxSFn5pyweGOZElX/1VDg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6184
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671758218; x=1703294218;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Tf0xyUEBLLY4YTdqyV+irfhruiGlg8b62iueo4nF85A=;
 b=E0M60XEgLa7z43tslGffGesFnIHy3iCLt6V3ewHY1cR53Q5SeE0Xu8EG
 vIR8AHUkIDUWzrUigzc/wYwRkWOCImX3Vtv8L2xtq1TSSu39Axqikna4t
 V+ghJ7rTDtE912tRTYANiKAjU05EPCJKUV/5N0Fd2nGAZjmrKjGGJmEAh
 yMNI7Bwtn17cEXWRwEFW6WkPzdMY2gr3jAh23s5gXvrRY8MJHi+x+tX8k
 Fyd9CWIhawIBI1ywOnx1u+0wz/SQAMucHKvTxi4LOW5WIozRagm0+Tvsl
 +4KA8whXVRJNcbNvfyaXnyWLb/e6T7+M/CXfiVqGH49FxXDQGnJl0Lkt3
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=E0M60XEg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/2] ice: combine cases in
 ice_ksettings_find_adv_link_speed()
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Przemek Kitszel
> Sent: Wednesday, November 23, 2022 7:56 AM
> To: intel-wired-lan@osuosl.org
> Cc: netdev@vger.kernel.org; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next 2/2] ice: combine cases in ice_ksettings_find_adv_link_speed()
>
> Combine if statements setting the same link speed together.
>
> Suggested-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 20 ++++++++------------
>  1 file changed, 8 insertions(+), 12 deletions(-)
>
Tested-by: Sunitha Mekala <sunithax.d.mekala@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
