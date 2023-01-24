Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CB9F7678EE3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jan 2023 04:15:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 54B964175C;
	Tue, 24 Jan 2023 03:15:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 54B964175C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674530137;
	bh=161PKqvfCaAEWij275aaEYjGgVUxFHDgnRSDpOFSq5I=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CWJ+P2fOJbmjSUnW8yBBBSgZPHDR8ywGhLWyANoIYbjF3/z9hc2rciK/g1bbjDw06
	 IThoY2iMEgtMUfWO6wyykI6VrFJ6Bw3x5tO/M3cfyotnMLQt+Z2CquMuBuEyUAaz4+
	 gWJXoM0q3OzFnXhTUeyZw3uTmSjwh0hJv1i0ij//BeFXmPj9eC8kV9C9hTkpybus7H
	 84vkXMx7D58jOuOSjtyIEI5LJOjS3uI12oAR3tE5mwoh7k8WtqSh/DyBQekeLVJIoC
	 DV2kHjjP7E+4/i3VtkcWp6N2EL+0wc7GqLIY6d326MENTaUaazMyRsE6HQm5diwdjq
	 BEn30PSRXgCbw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4WoncjF6h_TX; Tue, 24 Jan 2023 03:15:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E59A141749;
	Tue, 24 Jan 2023 03:15:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E59A141749
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AE47B1BF2A2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 03:15:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9314960C27
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 03:15:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9314960C27
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LNB1AQRJpzQD for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jan 2023 03:15:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B2A57607FE
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B2A57607FE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 03:15:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="305883640"
X-IronPort-AV: E=Sophos;i="5.97,241,1669104000"; d="scan'208";a="305883640"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 19:15:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="804428666"
X-IronPort-AV: E=Sophos;i="5.97,241,1669104000"; d="scan'208";a="804428666"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 23 Jan 2023 19:15:28 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 23 Jan 2023 19:15:28 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 23 Jan 2023 19:15:28 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 23 Jan 2023 19:15:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a8G/xjEFQ2owOeI1Da8SuS+kHTHpN2cgIHJnI02QFwVnLJrLMeb4ZgGb5wRUeZVqirHpqkJmsqTEfIhzr+cE9mNB3GXUXwJVHp5ZJuiHiUndQmHtQPxHq1IQDYisQVeeeJhqxMB+2PyAfK828olrNlj4UyKKTsfpjQiZ8+jJyoiHwxgzbGcjiwcgXdzD3+pns2tctBSPL/y2vhg1jdtySfozp1ja1s9S5bRv2W1eT6hqvN5OD3R4rY73frqBi66k/nrlP8GrxR/GW6SCTTVPWh/ZFhiugOlQ6luwqyLNp0qnA1Y6/69+1SHhDpUcrKexwWlQdTwiSa8YgclCSuttlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DWiOa6nCC99CwiU0qQ7SqUmX5UmSnn7dIh6A6Cy6kz0=;
 b=mh3iyttmdLVBFn8AE/ZIKsUZfc6h0238sqDNIZ/Crl7VSPliMvMDtRiy5wbK1kY79aD/3FwZGbwOA04FVxL0zxwlabGz1ZUKDb13yt5IW8AXDfIp+piTnCjG189u0ZnsC07O3Eau+LqR5VNQ4p8wOUmWJZcLPZIofjOtBFhfACKd7NpVaJ0Tq/QrvVo/E2Io7k99yXqEJowGO0nYZgUHRLd2HsrXewVKQRTuUPT9Pp8QJ0qEKWj7qV1sdQfcBh8tKbJVZV/w9zzDavPw6om7GK+49qtfJKWx6Iq4gT3U88rhY/fZcdx7XaK6hH1mnDsX2oxlF7zgUVmJckR70IVMzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by DM6PR11MB4691.namprd11.prod.outlook.com (2603:10b6:5:2a6::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33; Tue, 24 Jan
 2023 03:15:26 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%4]) with mapi id 15.20.6002.033; Tue, 24 Jan 2023
 03:15:24 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 03/13] ice: refactor VSI
 setup to use parameter structure
Thread-Index: AQHZK6PbKTRxH/0ua0WKbeXlcy3ALq6s7MSw
Date: Tue, 24 Jan 2023 03:15:24 +0000
Message-ID: <BYAPR11MB3367A95D69E0FC77B1E79FC6FCC99@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20230119011653.311675-1-jacob.e.keller@intel.com>
 <20230119011653.311675-4-jacob.e.keller@intel.com>
In-Reply-To: <20230119011653.311675-4-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|DM6PR11MB4691:EE_
x-ms-office365-filtering-correlation-id: 8399a70e-9e48-4769-5cc3-08dafdb93c3d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iitOpnrwi8pNG4DLktmRjPtEaWRqU3pzUIvzOX9YOLU+grw+i0Fj2GjpKs5Etz6QLDs2ye/EVyJuJkseOoMaONAwl6VO5FjvfmxFJJ4gBv+F6NWYI3joKbALAwYPozOQT3jJfA/IxuSSQORlHe6MWMc8YMsLlGH+w5+dt9ZOZYgx+gfIpXwCrbshQE0VeovwTQ0Iwp8bcDqhVibBMnAIgtk/h8R7dEcnhZFICHUhM7XU5mvkWfl/KhLekLB1bcXFTEbmYNG3hcV9yiDSnCMylCIeQVixUS8+vSsBr0MDJI0XGZHq82zWO7Gy0lLLQGxqFfLSVf+llLkY2nHIJXNv21troJDrd/MkXO0csoLVGZRPtrOruLYGr+PygXp3cvoxq84GTvZl7/sGqOrNzwprkSuKpn0qPArM4vkrsrNQtPif5f2LW5koCcmsIV/uwXkhM8wYx6EPL+dRGB47vuZVNDy96kkoAI3o/hMP3vN/eOwI+jF5x0/C77OCyS6E3FNNBbsTuXBps+7V+dK+tzyw1mFFJPj6gS425Wi+sGeZeFRHrYrtu/ew0JKgbszyHyVwQy7/Hrvz1hGhmt5H8G9s16c38RK7zP3P3gjYYyMJBN/CrXSdUjtro2Z9nkDFq1KWmgiigKrqg0Cg7cOE4WCVJvjUAoyKtcHHJDs/L5OmtLH4uv+bpuoiHszWbEqChmV85H8GwNW1Z6y+c25eNBimbw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(39860400002)(366004)(136003)(396003)(376002)(451199015)(86362001)(38070700005)(2906002)(82960400001)(4326008)(52536014)(5660300002)(8936002)(41300700001)(122000001)(83380400001)(33656002)(38100700002)(110136005)(71200400001)(478600001)(7696005)(66446008)(9686003)(8676002)(26005)(6506007)(55016003)(186003)(64756008)(53546011)(76116006)(66556008)(66476007)(66946007)(316002)(107886003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jy6SJh2mlZjJ+ecvSshF0ebnDDTk+sguQhqKeG2uWJwTviZIJA1zCUeRM6Uc?=
 =?us-ascii?Q?d9fbSdG9O9QhzfqeDu8neo4I8hj9/+r/k+sN3QwMHzTpt0Xum2c7rDQrHGVm?=
 =?us-ascii?Q?Ly3cedtdvxaed5EHP4cWUMCqaTeUxxjTYxCvbTQcMljhYZE78gT5CwLprmSy?=
 =?us-ascii?Q?DUdibfGIIHnlH9b+/VRYUQ9KzJFb9lWreQGosQ4+NlXCIX/9papPyoGqFa/c?=
 =?us-ascii?Q?1H/thH+V8f9krZfqBFfvOFUvvlXsWbQMRNaocR08whIpOCpyytBRctapU/Is?=
 =?us-ascii?Q?2JzT7HJi29x0v4HqKHnRenj9KXcSf0z4KmorghOzXW+K30k+RNZRgDq3Seey?=
 =?us-ascii?Q?npSqKMaeSx+EBd1y2PIBSp4f65tcX+cJbfWPQ/jghMae7BEn9AtKi9JT/vKh?=
 =?us-ascii?Q?yuEfQDwvr79enoGR8yUmi3oeFrEztI56KjrJlgz/Jt9fyShkad83F9bg/wI2?=
 =?us-ascii?Q?RxshpM2089BzgyT+RS8K51EVBuJIyTKTIA4+QU17MVwcoug1Y51loM1zk6fs?=
 =?us-ascii?Q?IJaR203lMcQ27UC1KZnV2AdW/ImvOUTo/EEI8eeUIpbyYqS7+UqovaUBAjPk?=
 =?us-ascii?Q?P5drpYfAwn4cx0slcC1kOOLvRqJVFlpnmg36a5y9r1u6O9+cvHuTXX8bkAi9?=
 =?us-ascii?Q?6cpNAskohWr0CdRgKNHbWcUBA23Kh/urkHrzDpIQIq+0IaiOTAM0PLShpI2K?=
 =?us-ascii?Q?qvs/x/+hG22jK9LNGqQcaKWTxZlS3GyXbmjTikB8LIP+rxQ0zDDIZORb/l+4?=
 =?us-ascii?Q?qfFNKnjeiynyVo9l4qMR8+o0nx9YfV8sIT7bCE0O69XPxTZ5N0/nFPXg1nQE?=
 =?us-ascii?Q?iEdGZCYmdVxfHfxHHucQLnHJYLe5tgQQeGMbI6Zd4CdXYgkjUzQMEmh5tb+R?=
 =?us-ascii?Q?iP9d58OzvxXEKp6R08m9v42UQqT2daiRSA+fuYSS/tJckJaX6FTe1SI78Qr6?=
 =?us-ascii?Q?Ki2nht6P0MbhPYmgAyr/qNIrIfMbWOX0UZ8GM7rx/w5baPyTlJKjnJXDW9dC?=
 =?us-ascii?Q?aN4gy6I6lwZqndvOiPI4RoU+LgiFbvMsvM2znlvDUdaNMfR53SmHppikwmz/?=
 =?us-ascii?Q?8py94Hi9qnj28Oql/i1hVPAMcCbL7U+QpV/+KoqX8ma/HwlbuEY8QuBfKolF?=
 =?us-ascii?Q?8vxE/0vUo/2KA7MtuJSp5x+sydsK70F5te8qln4BFDKVvsdEfgUsjjhPG4Xo?=
 =?us-ascii?Q?H5w0yxveoO1OgPJrXBsoUFL6hJq6yNupBUV3bbh5k2BaaoIZhV+qLE26IAlK?=
 =?us-ascii?Q?7zzulMdfiJjTgf8RHIyk2AVnlKk4vI58kP5fB5ekIaq4qpx7KrNX4YPs9gDI?=
 =?us-ascii?Q?iS4VVXnv8BRrxAOQJTIhAjPCq3fPX7iddubF6j487mfspGZYyQUEUHBBcwuu?=
 =?us-ascii?Q?qfUifKlsvCW7G8uw5A8nlS4z3lSTQjc7yiTCv88xk8qh+Hr8+Z8OJ2DtRHZh?=
 =?us-ascii?Q?uD//WA+OKqcaJzN6NXNI+zds3+2/2g3KMXshEpQ48Ehh2c+4Wp2tHj/jeUQQ?=
 =?us-ascii?Q?Di2LtkArYCmuHFRhFJIY7rZpSw15Op1TyGL9ZZRSlSviCKxiZWYX/B/lwcNO?=
 =?us-ascii?Q?WZd9XyTid+OCNViS388L7x9Om0wgk+1442on4yHx?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8399a70e-9e48-4769-5cc3-08dafdb93c3d
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jan 2023 03:15:24.7621 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: e2txis6jAY6SBEwyFHzzeTU8GlSBUlC2+Gp2EAew7dz52zeR1jj6a7TkFuWYymXa7XMkw6IEYu+W4pJJzfVnMg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4691
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674530129; x=1706066129;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8OATQQ26a/F1sTu2FN/XBWLfYLd4N2WvoDYr4rGcfJQ=;
 b=IfFszVREG3gRy0IagdO7HfkS8hTvAsxEt9ae9C1v7gUP/p5cLzLXTz8L
 5KpfAiI/G2VRi8QYLMFaPMFxGZchR6tmyQFnhvyxtzVnt/vckn3lmGDko
 4LRyH9cKYsQKWPAg5kEfkAZZQHk/zCQ4G0ogLeZSES+Lk8UnJSDmAQ5Zo
 9PP/HHwM5I3FA3enjlVNNwMQ/8kcbNOuc60sBUwm1yBwG2MGgxDziZhqu
 b/e56VjnHfB9wMgfxpf0SqC+0MMjKDjR8ixN1BteMb5Ihfpmw257y8+k7
 JaG4aJlpQiWrp7zJgyEtuZMjpx+ae4WlGch0L7Lk0JvVxnpS7EMYgLxFz
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IfFszVRE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 03/13] ice: refactor VSI
 setup to use parameter structure
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
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: Thursday, January 19, 2023 6:47 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v2 03/13] ice: refactor VSI setup
> to use parameter structure
> 
> The ice_vsi_setup function, ice_vsi_alloc, and ice_vsi_cfg functions have
> grown a large number of parameters. These parameters are used to initialize
> a new VSI, as well as re-configure an existing VSI
> 
> Any time we want to add a new parameter to this function chain, even if it
> will usually be unset, we have to change many call sites due to changing the
> function signature.
> 
> A future change is going to refactor ice_vsi_alloc and ice_vsi_cfg to move the
> VSI configuration and initialization all into ice_vsi_cfg.
> 
> Before this, refactor the VSI setup flow to use a new ice_vsi_cfg_params
> structure. This will contain the configuration (mainly pointers) used to
> initialize a VSI.
> 
> Pass this from ice_vsi_setup into the related functions such as ice_vsi_alloc,
> ice_vsi_cfg, and ice_vsi_cfg_def.
> 
> Introduce a helper, ice_vsi_to_params to convert an existing VSI to the
> parameters used to initialize it. This will aid in the flows where we rebuild an
> existing VSI.
> 
> Since we also pass the ICE_VSI_FLAG_INIT to more functions which do not
> need (or cannot yet have) the VSI parameters, lets make this clear by
> renaming the function parameter to vsi_flags and using a u32 instead of a
> signed integer. The name vsi_flags also makes it clear that we may extend
> the flags in the future.
> 
> This change will make it easier to refactor the setup flow in the future, and
> will reduce the complexity required to add a new parameter for
> configuration in the future.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> Changes since v1:
> * New patch to introduce ice_vsi_cfg_params structure
> 
>  drivers/net/ethernet/intel/ice/ice_eswitch.c |  8 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c     | 92 ++++++++++----------
>  drivers/net/ethernet/intel/ice/ice_lib.h     | 52 +++++++++--
>  drivers/net/ethernet/intel/ice/ice_main.c    | 40 +++++++--
>  drivers/net/ethernet/intel/ice/ice_sriov.c   |  9 +-
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c  |  9 +-
>  6 files changed, 147 insertions(+), 63 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
