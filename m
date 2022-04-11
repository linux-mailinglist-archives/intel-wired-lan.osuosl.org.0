Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4875A4FBCEB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Apr 2022 15:20:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E3CEE60FDF;
	Mon, 11 Apr 2022 13:20:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Uq7gti1tGlcM; Mon, 11 Apr 2022 13:20:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D017960FD0;
	Mon, 11 Apr 2022 13:20:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7AD061BF328
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Apr 2022 13:20:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6400D409BA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Apr 2022 13:20:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W89mvFDBhuTj for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Apr 2022 13:20:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A584F409B4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Apr 2022 13:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649683208; x=1681219208;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qoIvAZOSMgcKmMw1KsU+tnmdbkHphNxgr77RQGgGleA=;
 b=edkbcIGooIaUkz2yZOrFLW4frysyjHOi8HMdQeRB0dnKY/ZSnmVm1O5u
 OHBXojjGCz1SkBJlgm0F131Pd0gkdXSiIKJv13tr5Qf9OI10Y7g83AwSM
 KHeVUxJk2u8mPVaRaOkmdicR94uyoI4J2JZDKbfKa06IcIzV9K4he7AW3
 M+7IFRoILSQ5pi4pMq7jFPaLWjuGkd3W/O/WGA86NwVUTYWEvpfZbSzMd
 dXaBpuC3+Wz1pVb27yEXKzNLKkEWlZlnS1ruM1qIUejTp+PfmPbfEiuUX
 XNK+/T5WxcM67IPPUIm31a0qk9FkhHp2XvcAq3CQc6LrAq/7xcMRtLYxY w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10313"; a="259708036"
X-IronPort-AV: E=Sophos;i="5.90,251,1643702400"; d="scan'208";a="259708036"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 06:20:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,251,1643702400"; d="scan'208";a="853921443"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 11 Apr 2022 06:20:07 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 11 Apr 2022 06:20:07 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 11 Apr 2022 06:20:07 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 11 Apr 2022 06:20:07 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 11 Apr 2022 06:20:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FWVrvW3+ZBjo9alVxaGMJmjB9j8vq+vlRnbrD8Nud3MSq/+XUOjGA62Lp4riR2wWQxBqRvu8k0FBEs5qooDgIbcHPiV508tshnjvTfuvwn+iT/YK5C2JXVxpDZRNImezSJwskuCX3mqGrR9pt6OIjUTb6gNenagrjaxZW3bsee5xGvDMQLjU71FkUweI7icrs67WKQp0Y+rgP0VYtOYsR4y87SrmlzD6ZPl8xcWgVivim4uZ5T4gF5vXIWpmnDIzkHDyqw49+mkK5KOTKMuI6CEEK7rWtyFZI2W6mTmv3UIK2Dktu9btqgj0Csd+VxZOEKrMBP6pWH7yAQ3intoKOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AtSGd/ql111cMPHruKF7PvUFbkyDoT3/1xfNvY6Ef+k=;
 b=CQizD6ORLLDTAeuXqzmVp66w2VYULCNnRjAcRSnfHKPxUfzJQrzA1chCNWlrF6lT5MCb9+nGYYvdIYXlxCY/kUfaiasckihZmN71qblDY3/AMvDDPNWXpNRTAmSNI53dsVVXzWAet6AilM26FUlAKV6mxCkmQW8uAqXL9CyFmLEMut0Z3Tucwi/kc4lcP9WFil35ryXDcoDp1TutCk57iaMD9aWHwcNBRnw+pVWooNuc0T/N3XZhSN1yp1yixNndu/sQjfNlfWUAdOg1opXMzbnGMYqqKUK4rL3vks4dv3/PNoiTOIwWTjb0UhMQ37SaPQsoCK4FSpgzjgqSe9gojg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 BYAPR11MB2566.namprd11.prod.outlook.com (2603:10b6:a02:be::29) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5144.29; Mon, 11 Apr 2022 13:20:04 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::acc2:93a7:7fb0:e816]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::acc2:93a7:7fb0:e816%6]) with mapi id 15.20.5144.029; Mon, 11 Apr 2022
 13:20:03 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Maloszewski, Michal" <michal.maloszewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] iavf: Fix error when changing
 ring parameters on ice PF
Thread-Index: AQHYRF3GLx9AoklG70eCUQBw+jm90KzqxOFA
Date: Mon, 11 Apr 2022 13:20:03 +0000
Message-ID: <DM8PR11MB5621FD32D8F77F7477A0B205ABEA9@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20220330195036.1319631-1-michal.maloszewski@intel.com>
In-Reply-To: <20220330195036.1319631-1-michal.maloszewski@intel.com>
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
x-ms-office365-filtering-correlation-id: 1a3e1a47-5973-4864-05b9-08da1bbdfd5e
x-ms-traffictypediagnostic: BYAPR11MB2566:EE_
x-microsoft-antispam-prvs: <BYAPR11MB2566DC3029904A764940F1BEABEA9@BYAPR11MB2566.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DnZ4F0f0132LmdOH6EgD717ymYh9OLneJLEkZoCjAcGSLA7/DnvjsfPY2JUqsPhNoNfGEjEYKIN5i+vVWJiUqVCW3xA2jKNITYWktaBwopGFy7y5jiT1D5PX+OYicXNDX7ryZOuzNo4AoyyEcvK3VF3UaZAOdjYN+Zgjiei71CMiKTtHMVM6NKFMjDT3JMuG1cMhRS+VHUlPUrUVOmP/OSflGLmrfxqrVGeND/yqIEIbjeCJRiiByec/HgnCp+pM5dbks5B5JW1AG2RLWvdvzOHbyVb/aRa7taY/LCIZPwtCLuqZ9CSV30y35+NwnE9mmTTinpVlZEF86AH+1qfy5JmP/BxLEkkkYN0G6oHMWUCdY2T6GWV0jJqy6F3BM9ounbtKt3OfFbW84xOCHJkR2pUysidpXRZrejeZwsSIGzBOmU3PoERTLX7qYPFa9QVdIUhuoLmUamN4EtnPS/LY2XRUXpSe2zB1sxWiQ0KPvGSn5LiS+ZPQA/WMnLdET/kH5iiL7QT5DGOUpSHRYgdHVl3+9xJRcsKm5Nbc3Jd12/F9ZEk6BEkHuOCh1Vt/HbT+3/OMmQ43TLVbW3FgCL1vsg5qaNXbnEpLlnVOyM7wDrxPYl5w3nLUUT/0TBd6XtD5CNte0lXiRa+/h8Rr0Rjc+oYBP320ad4fKckCPx81wL4+U1+defrP20qKard8kI21xmQ85s6EOaRvtgcXstmvbw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(86362001)(122000001)(508600001)(38100700002)(2906002)(9686003)(55016003)(6506007)(7696005)(38070700005)(5660300002)(53546011)(71200400001)(4326008)(110136005)(83380400001)(8676002)(8936002)(316002)(33656002)(82960400001)(52536014)(66556008)(54906003)(186003)(66946007)(64756008)(66476007)(107886003)(26005)(76116006)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RLl/bmVBNpQWg2dBNeunQ1twynhXNZFxJ2nHAeBaebYKRrUbiXGRIB3oUP3L?=
 =?us-ascii?Q?xePekjwDBhGR06/ZSduyUCxrcKmBDM9hef6wMnhNYtTWeAgC1uwrHYJiCpkp?=
 =?us-ascii?Q?XVnXEtdieEba/nCfpUPVS9aZBzWEYezKvSKC7xb5lCadH/dCyQjkZ4Wtsw7D?=
 =?us-ascii?Q?bv/fBQ487VZlqBmq4njsFK3YxGxtt5dk/hp9OBwDVus0PY2dcHxHrC7z3iCa?=
 =?us-ascii?Q?7Wbblby3h/icL5HB5d9OAtW6AkCg8j+g0FAuUqSGKrE5SY12d8tIhE4LOFVM?=
 =?us-ascii?Q?6uEsFBJbwPmF+fJgEPNx0CSFSEjnVGrITjFYGgfmgNXqe78f9ya5C5TYijRx?=
 =?us-ascii?Q?6HAcwZyXCAOgdnNFpaX0+XDp6OzQV7WPW8+czeT+mc57u1urGNr6bQcwlk+X?=
 =?us-ascii?Q?ImvqjoTydx5HILzGN49fRL0ClleDJtXyWrz8h9tkwjlLkXaWhbJt96M8pFDJ?=
 =?us-ascii?Q?dwKUsNQqYvzXNE2eBbRUN93YkKZpIahn9InjZ0OuxLEhCBHmgKhpWHCTvfJt?=
 =?us-ascii?Q?+YTbxbkvI1cuLTbsVz7eY4yT1qc5/q29YQIG1efRUgw5+0mv4gP2Jxm0qORJ?=
 =?us-ascii?Q?f9GjHPTIAirQs+4TTSB4Wtqletf8Je+b750RlQP63TIclqeHnaTk8tuxqhFw?=
 =?us-ascii?Q?CoYihFIUffY96Rws9kPSY0pI4F29C8e/lyHpVjR7I9HmsdpM4nbwVvfkFxs/?=
 =?us-ascii?Q?6IwiwOeHyvVuBPLW5muOWtSvPMuVVRzvJXegv6Ozdw1nv9LGfzJRhzJESiMI?=
 =?us-ascii?Q?vBtgSzq7ziryaNmbKDxmoUyZBf7hJNWnjDIVg3islwhxExhc0tH6SwhaVqUD?=
 =?us-ascii?Q?MtRBbZ7tDGkfSnFZuX3Rdhxrw6EkvyWLnHi8d0eZSN6WpT3JDdid7sSxlZ72?=
 =?us-ascii?Q?wmdGPg4GUvYj+OH/JE5LFjfeTvMJAo2Zy1KaQjdQnAVA6eDJdAv2eUMohlY3?=
 =?us-ascii?Q?/1nChQCJAgFrvYXhfJsv4sPaH+LVaq9Ati00PsvHngoRLRE7YNb+DNvCOv1W?=
 =?us-ascii?Q?F+a3hstP+MN6k+6eeY27oZO9YfLrOdwcujarlQZO3r9UqL2heRUg/KKZEi5O?=
 =?us-ascii?Q?3U60/DCcc+QYH3wuRI9UNH/EUHOlowFKeSCFSInstFij1V94HVBayjYUTyvW?=
 =?us-ascii?Q?jbp9P2xxCp4kUJZ6f+1yuxc5AmZexWsYwzBJVFK+dJ3JuX68592MMv6xYwQD?=
 =?us-ascii?Q?Go4VM091lk5q6InaYxnoqQ52KsAHgwnrH5u1Fg37tJuxQJyfTnQwsDHI3gYf?=
 =?us-ascii?Q?O75ZGt+HpevQgTyVAtKmrVqgj4u/7ALhLR1/aeX6ERrhALeW6anbtnUPHrv0?=
 =?us-ascii?Q?9AP+aCUrvNLhGPe6XlkzcDcqYfvqOQu30rK9gRiLroln2qeGihHI8T72+jPK?=
 =?us-ascii?Q?6BN6esnxsxYlIUorJqTPV/dY8na5O4GD71C+I8YkpTvYzftegOpK/pMz635E?=
 =?us-ascii?Q?kazZtHGU4hfXY+/kkluYPszCHyJxOIj/wAbzq6LFBXxzGHxXsxX24H5agQxZ?=
 =?us-ascii?Q?bqbuDNvGMuD7VvvV3MoZuUVrMsXpEFlFRSHVummhpKflRm8w07MKjChG/2Eh?=
 =?us-ascii?Q?T++MOQxOSKT4VUTZ/kIcAGuxp5Vkc3lDfb0uBwi507z0b+quJA3VWZjViRxX?=
 =?us-ascii?Q?Bq5zvsIaR3Rq4tNI8cSuT6JrrFfL0ksWATfiDqIwIND3fGhFZWxCnmtO7BGZ?=
 =?us-ascii?Q?Vqv2EO0L00LXAEEtI2j03g7x1GLQdNKYqqM/SU7D6CJh2Zh2j7lrN+9Sat5a?=
 =?us-ascii?Q?POIqueY1WRwJpk78RwEIB6reGCM8ToE=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a3e1a47-5973-4864-05b9-08da1bbdfd5e
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Apr 2022 13:20:03.8819 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uFXFayiar6YUt/VgR6ArOpxT9hRd0zyV6dPomF03sY+aEpgO4SmycWk8CegsWDhHqSiXiGrdDmli6mmQGjUc8t4FNm2+u8lxpbTAKVpEHQc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2566
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: Fix error when changing
 ring parameters on ice PF
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>, "Maloszewski,
 Michal" <michal.maloszewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Maloszewski
> Sent: Wednesday, March 30, 2022 9:51 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>; Maloszewski,
> Michal <michal.maloszewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] iavf: Fix error when changing ring
> parameters on ice PF
> 
> Reset is triggered when ring parameters are being changed through ethtool
> and queues are reconfigured for VF's VSI. If ring is changed again
> immediately, then the next reset could be executed before queues could be
> properly reinitialized on VF's VSI. It caused ice PF to mess up the VSI resource
> tree.
> 
> Add a check in iavf_set_ringparam for adapter and VF's queue state. If VF is
> currently resetting or queues are disabled for the VF return with EAGAIN
> error.
> 
> Fixes: d732a1844507 ("i40evf: fix crash when changing ring sizes")
> Title: iavf: Fix error when changing ring parameters on ice PF
> Change-type: DefectResolution
> HSDES-Number: 18021295299
> HSDES-Tenant: server_platf_lan.bug
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Michal Maloszewski <michal.maloszewski@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_ethtool.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> index 3bb56714beb0..762ef6fb5585 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
