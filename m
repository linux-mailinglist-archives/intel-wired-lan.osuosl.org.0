Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6811737EA84
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 May 2021 00:02:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6829940F87;
	Wed, 12 May 2021 22:02:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FndbsrIsCU_r; Wed, 12 May 2021 22:02:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2F14C40F2A;
	Wed, 12 May 2021 22:02:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C5E011C1178
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 May 2021 22:01:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C015440F2A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 May 2021 22:01:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9cXMzhUZcWyR for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 May 2021 22:01:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 673AA4054F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 May 2021 22:01:55 +0000 (UTC)
IronPort-SDR: 4MaEJ5IILo8pFgKEn3rbLwo89XYiT5iyvpr11KtdYL/U2wg0uaBr3w88FHBA8Mrrbd5VwmDpb7
 GS5JrO4zCEmw==
X-IronPort-AV: E=McAfee;i="6200,9189,9982"; a="261064391"
X-IronPort-AV: E=Sophos;i="5.82,295,1613462400"; d="scan'208";a="261064391"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2021 15:01:54 -0700
IronPort-SDR: ijGjm3R9klOaoebMaGvBUnjVX2s0jq13vAxy1hZcObFwPsd8QwGpmpX145WW3drHquvzAFPh6d
 EWXiuR3vl0vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,295,1613462400"; d="scan'208";a="400562901"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 12 May 2021 15:01:54 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 12 May 2021 15:01:53 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 12 May 2021 15:01:53 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 12 May 2021 15:01:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GM6VrzULA118p30j94+l5uxtWnWS0ZYk1cteOhuCTsnq6pDX9JN0yt4d726Dso+xKoCry1AyZ1fHfRxnlRO+ewtAhW+8NZOoh2oS++dF9IVpYdZrQV1q/fPdLbR8fNmEuZqc7qiU7PpB5bersTKUpHqIetkqTQ5P/VvPgV/r3Hz1b3eC0LVrH/+ZUOhH07iAT0twLvhOwt9kxL7VSTnTGWNcWKCoZNLlbjvJVUDfsARYz2b6uwh42yxY6JCm1vRRW8ZIGcoOnjnryF4jJnhNwGeqhajjACZFIvVdvnYj8Abts5h1HkGNwINJ4z0b8hgHxmEd3SvU0EieUrGT3XHLeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ijjWySr1UrnicCB75ZYx2rMzBBQyCVxm11NR01GDNbU=;
 b=eJWvJ5LemlWEccp6wO29MZqnnGcWhXlh82MXeovbZhOm/mlbAtolGS1+dwYBUTyDFtfF++LHNlPXg7pvaiBHNgEhcnz97ghA1Lm7kpH4C+N86lBG37zNMCFVQbLt65UFNIa7eJGtXjsWOmMURGgq1KPoP/iaC8a+7lhVZ8nfZWIiMIcBJqyHkU1vLjrf0nJww2oGfRKeEBsg4W8Ve+VUccdpUkqHYNAJATi4is529qKlFvhaC11XorDi9/CsAWDELKC9zpca6EHpZHTqe358+MSspk6L0f7f5KrNlBKSOodZ231audMSWE0LqHnUOq0WlDFDK40WZYCfYI/xcn0+5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ijjWySr1UrnicCB75ZYx2rMzBBQyCVxm11NR01GDNbU=;
 b=pn6VhvcOWpwNoRH2XPMAn4I7vBtPllLNnQSJfWlkteRYUJ8WksqKvbj653UWPfSkSaSuOqfeSZQv66YDa4mcPY5/efKtcbyD0JoxWPXGP82U1hhzCFUElGzHzqjFghAqgu6auCU2GfeqhiU0WlkfqZzJo57XmdlIVgJijAnAo5M=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR11MB0015.namprd11.prod.outlook.com (2603:10b6:301:66::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.26; Wed, 12 May
 2021 22:01:52 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43%7]) with mapi id 15.20.4108.031; Wed, 12 May 2021
 22:01:52 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S59 10/13] ice: mark PTYPE 2 as reserved
Thread-Index: AQHXQo+99qZWv1xKm0elHOZs6dXp0Krgb6IQ
Date: Wed, 12 May 2021 22:01:51 +0000
Message-ID: <CO1PR11MB51059EC2292E3D16D6C2D49DFA529@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210506154008.12880-1-anthony.l.nguyen@intel.com>
 <20210506154008.12880-10-anthony.l.nguyen@intel.com>
In-Reply-To: <20210506154008.12880-10-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [71.236.132.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a0be46fa-3004-40fa-fcb8-08d915918c76
x-ms-traffictypediagnostic: MWHPR11MB0015:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB0015B243E686B397FD1D3410FA529@MWHPR11MB0015.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3276;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hSOa9w4Pzty7rzNCo4/2GdkaGzinn/MF112AHfli4rQ72/8axCAbWfB+KQ1sgcXvnyfvbB2tgb5bOAv35BEqn/Onts4If/1w5/88JBJCWwW9ghpVC72SWBDZPLmgAT4qsxG2Ki17jVrnqb0yFI/go/0sT9h7FNMQLOobkcoA2Prc8Vg5KVFcxXn6r/phhakf838ksBzmm5RQaA+7mnfRZ0aptdoPkMkczCV0pGKKBwZiDR6qYUHtRv2LTVD/Nn9lZWhPXPF3QptCYm7T1uKL5C2jjT6PupLBEA57IvFBuHwtyNCai/yKu2eYi9medh2aLcp5SllLzHTVU2jxhsB1pO7viZlHccadaI2HHTH5xmvb5kvOX5sfqesBHfCwSYvQkk7hKEnPmVnsdp6XUWFVOxkbhpw1HmkF7Hn74J5PI64iteaaZlCSMM8elqD/bvYk5qIg7LDaHz4kaAOu9RQKzWKiV0kAPlhpueBfmSjGUt8BRrD41KMBXW7rFJeYNlF2T+DftK+tz6hdQkW5DH1LzeIvRcA11lhqNFS9dGAvynJT525NAzWwRA6D+q3DxUOdD+qlKecNo73064qAlI/VDoPsiY/rCpB2L0sorYc1K18=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(346002)(39860400002)(136003)(366004)(376002)(83380400001)(66946007)(76116006)(2906002)(316002)(7696005)(122000001)(52536014)(8936002)(110136005)(86362001)(71200400001)(186003)(5660300002)(53546011)(55016002)(8676002)(6506007)(478600001)(26005)(4744005)(38100700002)(66556008)(66476007)(66446008)(64756008)(33656002)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?huYmdBtg9edu+YaV4P3pfhKBtqzYXDXtckm/XUq42aZM9JBK5kMGVsVvuUkK?=
 =?us-ascii?Q?WKI/+C69yzV3KNeZDzyis+CtLocp28ZDxSrfZ4TQphSyaOzzBWcxIt7Kc3RY?=
 =?us-ascii?Q?+ID01WoGlYIBSkwHngh7H4kT4P0SEL38D9Pc2iIFjPUnH5iPh6wuidN5IMSR?=
 =?us-ascii?Q?dZyNLBPpRVvBPk0+c3aIZDDuBf0yGnsMJe01P/nKHJE4FDbQXgZuPl7hOsgA?=
 =?us-ascii?Q?rcKaJYfZoN8MNzv+nGMlvGIiEFrDfQvD5x8PFaqeRkjNlnFuhgxPqonB26FG?=
 =?us-ascii?Q?b7GHG0Nzu1uNACFusMeQual56szKXiXGthNcUPSoevvN0rrxMaa2l201T2Q1?=
 =?us-ascii?Q?Za1DYuh1fW7/9oG2a2T99Txyp06Ve1kSIYshSkDR3GbQ20avX0tL50Oq1Iml?=
 =?us-ascii?Q?9ZMiERvM5jC/iX10QH619yH024/faLBceBhXmSVD4fTWqLP1a9ntfpuy9FE8?=
 =?us-ascii?Q?atM9pPLrCx5pX0xjGUf4O+thSMrS9+twlUyX65VnLRFZspIQoJgBIKNQuQkY?=
 =?us-ascii?Q?EB3mjh6kN/3bRM13/7DQhEeXLPe8tqnvd0P+LMPXTGBk8qwO7fhWe0qoeZEi?=
 =?us-ascii?Q?V+N2Bz+d3TuW01xnCeadh6Q/R5YEvYC/gwFkWGRxb7Lw/9GOPKbHo26XAO4Z?=
 =?us-ascii?Q?Er2Jx5SdLryDLxU2F+Rfdt/EcLnTUxY6Alq0Yxf0ezacjtjF3upPMbp7ytZH?=
 =?us-ascii?Q?IK+sc7H/f7X1S5Ic010xuwq+j1GT/A7gAPIKJos77Bv27QP/F82XfXap8iPo?=
 =?us-ascii?Q?5NkTO9UQnz1bFBD8AButp+HoOkSgyIuc3ai0HNyadKRikktOjnMwhsTOSOgQ?=
 =?us-ascii?Q?i51GGHJySDFk8ThtekRivHC+58ptoz+sLOW3Jv2WbckftlQSd0QF24YttPtg?=
 =?us-ascii?Q?FHcpCweUa4FNJeQLXffPIrQuuzrbZ54WVeiPJMCI9qoHqCNUsD5cHgg8q0KQ?=
 =?us-ascii?Q?ZSqEcL0VcByBI5ks+Yl0U7j+Gd+ZfprhRasmlBT6Me6Whw9S5kps8M4sxqeP?=
 =?us-ascii?Q?pAD6we8Qy3IjChcxZgSsmdU9pN1owIV4k1FPZODa0Cw7xKNWBUSwyhRqOVKE?=
 =?us-ascii?Q?s2uq4mgI/c7b8niYgwgKMKVB8xin5i8ouO3KoFhfPiW4LxZzjuanxhCkR4J7?=
 =?us-ascii?Q?GAE+V36YTF7AUUnY7eN8TMLU1iCFSRGaW2JZz/a/JDQMB/lZNT4EzlfjFqfy?=
 =?us-ascii?Q?bDdePAXpLId95+YnmiHoaWtOPeos96RnMow9TJvH+mT2JEZ3Ma5YfDkIDvwN?=
 =?us-ascii?Q?xAdDA+dHvca+wJNjqclE26aMwl3C7McnsXNiujnSinZxq5BhHpxfTugk+PEv?=
 =?us-ascii?Q?74zKk7IjzCJ5U0BtOCPEBb/G?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a0be46fa-3004-40fa-fcb8-08d915918c76
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2021 22:01:51.9371 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lnOKAboWqhcD3pjWgQDTtE19sclFzVCT1tMBGKjWkWlN6+StQWtXu4M8KTXB6Ci9CJIiQ0LTVKGwmpf0IWy9JvO5DU4UgsfJKV0t/cuLwLA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB0015
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S59 10/13] ice: mark PTYPE 2 as
 reserved
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
> Sent: Thursday, May 6, 2021 8:40 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S59 10/13] ice: mark PTYPE 2 as reserved
> 
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> The entry for PTYPE 2 in the ice_ptype_lkup table incorrectly states that this
> is an L2 packet with no payload. According to the datasheet, this PTYPE is
> actually unused and reserved.
> 
> Fix the lookup entry to indicate this is an unused entry that is reserved.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
