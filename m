Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 45D9A3A078B
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Jun 2021 01:08:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8FC7A83AA7;
	Tue,  8 Jun 2021 23:08:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S6xBWrPnERNQ; Tue,  8 Jun 2021 23:08:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 95DD783A73;
	Tue,  8 Jun 2021 23:08:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 073B51BF414
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jun 2021 23:08:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E906583A79
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jun 2021 23:08:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WG6qy8KJY0ZO for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Jun 2021 23:08:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BEC0083A6E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jun 2021 23:08:18 +0000 (UTC)
IronPort-SDR: N/brgx5kaclTc/hkYo4AEpXU5EDql9N0xjdNKa+xDWb8wl1UgLxYO7NEk9EOg0Z4kfsg2XKdix
 ZxKgkYM7PGMQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10009"; a="204928614"
X-IronPort-AV: E=Sophos;i="5.83,259,1616482800"; d="scan'208";a="204928614"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 16:08:11 -0700
IronPort-SDR: WOWMKKsilX3WSkJN+P2f6uzBn5oaQg8ag7LsX3+NiOOmVNJWqGLiOxpRofldDRihV1KRrT+hUv
 kFu8fCbDcA6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,259,1616482800"; d="scan'208";a="402237795"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 08 Jun 2021 16:08:11 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 8 Jun 2021 16:08:11 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 8 Jun 2021 16:08:10 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Tue, 8 Jun 2021 16:08:10 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Tue, 8 Jun 2021 16:08:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mnPvyuWjcl8sEgDIwOGI8qJWBEUT4P3bUnnmBuRNeyuHt7lp2CaunfFk7R88x7t8W0bNV7ShcDZ6DiBqqCldr8OUctktwe+YCuA3KTQqpEbVUXlD8YXVWhi3NzwHEhphpeNeEIiP3P/F18+xry1k1dchcsn9rYELRwECwWp/yFE2ZgUBZv0JRmTP7b4DzIZyLceuA6LNxna1d0Uz/zsFK4epjTP/EPRFfXwVWTjv345YZncqZJ2b6hzLKKPkYGDkpqYAUgSLJLjwiO8b3J7+5drOjh8TjJTtASWZD43hfJ1e1Tthb2RI4tb36bbpZtDPmpyhvasOdMQDGsXnQaxEoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zur+Sknpndor1QQDVxTxWcwSoZJfoook/kzIIMgGHNw=;
 b=HdguOwSZ0lcaDE1CwzzUJhOCRPdliB0LmbQIjyHbDh/JZsvy88uv3a4ZxHPv2uYVe1BR8PUl/GvKHojnZcCS4xNl/rYfM2Iq+qUExCvWMziYGG+2Qt0leywvPDdFbbs3eyfYE7+NY40jL5CWRezFbNGg5mSDceuHhwDENgqbvufwQ96KPwa71yC5x0AgIOtcOL3IYQm45uonr1l0pMz68QAscHQQM2plo+DwgXYu/8Lx69kGNv1eFHdMHsVv4mrAkXKUjZKOEktrtZZBRrQKoXpLhEpLFd8CbzDVXNKl5Z5WBzSrlyOpw2I/W68pemEJH/kjqpZu5tZ3CMmZhClUIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zur+Sknpndor1QQDVxTxWcwSoZJfoook/kzIIMgGHNw=;
 b=JMh3WhG362Nk52IO691Ad4F3kkGhg95faU/6S2IkJ8Wg+EiX+AKhRKjxuJgETQIBwlRt6z6rm2FnMI24cSA0IvlFCcCyNBulfvmPxZsqbB4AQyF6ByofBwyBtGqGOW05BZrj7AvZHIdMEdeAD1DfroaTbsPzCmGeJd6YTpr/4gU=
Received: from BYAPR11MB3224.namprd11.prod.outlook.com (2603:10b6:a03:77::24)
 by BY5PR11MB4258.namprd11.prod.outlook.com (2603:10b6:a03:1c2::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.21; Tue, 8 Jun
 2021 23:08:08 +0000
Received: from BYAPR11MB3224.namprd11.prod.outlook.com
 ([fe80::816a:83b8:7e41:5cb]) by BYAPR11MB3224.namprd11.prod.outlook.com
 ([fe80::816a:83b8:7e41:5cb%6]) with mapi id 15.20.4195.030; Tue, 8 Jun 2021
 23:08:08 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2] ice: add tracepoints
Thread-Index: AQHXU2PhU5Z21Tb1DkegacyKKoh9DasKX3SAgABwygA=
Date: Tue, 8 Jun 2021 23:08:08 +0000
Message-ID: <1e972693734fc6c19fc03b74cb3037b0a4f42852.camel@intel.com>
References: <20210528014943.3036054-1-jesse.brandeburg@intel.com>
 <20210608092705.00005761@intel.com>
In-Reply-To: <20210608092705.00005761@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 42a67f59-1929-439b-421b-08d92ad247bd
x-ms-traffictypediagnostic: BY5PR11MB4258:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB425835642E17F96F1D25AD69C6379@BY5PR11MB4258.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rQbJuq29TvxdQ6xMkPur5VnjDnmis360yhwS4aBZOWrlT7KsCpfUb4x9ya1c41lHG9LjQiyMJDpRGgf4tYp94fzrlcyiVj4XUOHJvA9Udk6ROu/3s65Prigx/MlyiZIG+ho5SLjoC2d+UD+B8TMUUNOwhfcQng2zemwhniXDadLegZBPACcp042gx1mnaxytQ/uq6Hbo9Y2WVKsrN7U7mtFKvsdM28Bm5AaZzK/BzQzo7EG3Atx2P+oinfU42tIA3aiffswjcs1Ogf3dV1KS7Z/xtinCEpkeyUezGSLvRZ7Hpmven41o6p9Ywj1a1ZppGZojO0Mz52M9j9vcKB+nGWqyS0YF0kuFwzXwit3YNr3ApflAwM9iJZx70wGjzxLAFWyIpsHLP0nYRc93cppcLgeffZHaJxlgFr28zQLP9VsAZsfLhWKaot0OhQHzthXo61dlR3qUMPdbmI3K3DRA3E/U/nJy4gcOdTgwmzFlObUxTthX0wmKQWJd7g9UbB3EN1LzA5SMxSUj8y/ZewSe8Vhg0pe9sFkIPYISZ7MrR/Gc122w4uDpvIEdK+wulTPv13CZDjwtPvuX1T5ikLlxj/1t71oW17S5655WUP3CzAnhfAseR5BE75jt/nfcKbbvecVh1yDvDoLqkmFZEReAIZb5stC9EAxY23ffUqAaLahGvJjj8a75LkahL1n6hnl0P28PZP+YqH4y3mIlTNLp4KCembwg7UhMUgYCArNugDg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(366004)(39860400002)(346002)(136003)(396003)(186003)(66556008)(6512007)(66446008)(64756008)(66476007)(66946007)(71200400001)(5660300002)(6506007)(2906002)(6486002)(26005)(36756003)(8936002)(76116006)(110136005)(107886003)(478600001)(4326008)(8676002)(38100700002)(316002)(966005)(122000001)(86362001)(2616005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?U1BnK0orclpGY0RVcWdUVHRiY0RWOXI2b240bVVmOUttK0xaSkhlK1pSbWZ0?=
 =?utf-8?B?amRDZk91dXR6Y2JON0czdDBDNlZJdW4weW1Qd2dRWGZZbXRZanBrWFBiL3Zt?=
 =?utf-8?B?SS85a1FmSk4xaUtwOTJCdy8zeVlkOU0zQWNFNVRwMlZwYmF0aHdvMG5lM1Iw?=
 =?utf-8?B?K1NPZlNtWnRwVWpmT29pYlFkTWhhUnlWUlZGRjR6OEpKZlI5MEhHSmJEM2Z3?=
 =?utf-8?B?VU5sK3dyNkViTWw3dE52MURVajlucHVBUm9SQTd6azhlUGJza2s5dmVNOUdZ?=
 =?utf-8?B?VS9US0hGKzRMQTRwZ0owUDc3VlV2ZVU4N3dhT25hM1BwM0pnYStXVmRTSCsz?=
 =?utf-8?B?dUNVOThyMDdGeVErOWhRUXR4OTVNOWNpaTJqaTMrMk1KeitIbXB0NkZFSFVp?=
 =?utf-8?B?QUFHSjJUN0xkZnZjVjkxSnJkWGNCdzl5UThtS2Q4ZytwT1dCUjBiQXNCdkhm?=
 =?utf-8?B?TnRiQ2xKLzN2Rm0vdWh4NkFFR0dyMnFLQ3Zyc3FTbXVhakQ1YzJkMmRGS1Y5?=
 =?utf-8?B?bWlnM04xU1pRTWhGOTBOa0VvUlJuOFZmbDFFUEt4VlZ3RVdpVTh0TUVjczVo?=
 =?utf-8?B?eE5kakhySXQwUFVNUUJCY1EyeHBDMU1ETDg2WVRYVHo4aGFnampSZlEwaExH?=
 =?utf-8?B?eHQwbkJsRkx0RGszclJXOWhzbUVrRG40Qno4Q0svS3MzSEtPR0VMTTdHOGRw?=
 =?utf-8?B?N1NlbUJqL1NQaVVEeW1Eb3d4Z3VUMERFS2ZiMmdnZXZCN3d1K2VDcW96SEtC?=
 =?utf-8?B?Qkdja2N1WS80VnladWNPQVU1RGNIaFE0bm94RTIzYUpFWlpXMk1ZbVpBaFlq?=
 =?utf-8?B?L2o1TmNJRVhNWFRFUUQ4QVRyNSsxZEV2aThDd0pJTGpGeFhlTG1NMExzZXRL?=
 =?utf-8?B?SDBPUE81alRITGovMXp3eGI1VzJxY2lBend6R002c3Z5bUdQU3VMQk5rbEpa?=
 =?utf-8?B?eUc1TzRncGNOUm5QbVhaeWNXYkFSOXVCYTgwSHdxREJLS2xaMW8vcHlWVTVZ?=
 =?utf-8?B?NDJDUVJLSGIvV01vY2ZaSjFlWmhXdG5RZXRDR0NTNHVwV2RMcm9qWnBhT0Fo?=
 =?utf-8?B?WjZCa2JJZ3lQeXo5N3ROY0VCSndoWE1oUkwyQi9hUVpIZG9VN01nZTlpWTRW?=
 =?utf-8?B?TmlQam1GOGFtbjVmY2k1VWtjOGdTVG42eGJtSDcyZEwxU3V0ak5CczRTeEZz?=
 =?utf-8?B?Y3Rmbit0ZXUwbWwxZ1VZN0EveVZOTUxnMTE1NGd5QStndXNVUlBsR2UxVU5u?=
 =?utf-8?B?V0sxMHIrWVlYdHpMcW1JYyt5dUZhZEdicXRjV2FLRVZrcDNkajJGaGxiQkpz?=
 =?utf-8?B?aVlTcFNJTHdtVW44Q3l2eG8zKytDcEZDeXl0VVVqZzlabHkyM2d3TndwK1Ew?=
 =?utf-8?B?RjFCOEZkeU5pSjlsNDl0eEVXVnlsM05MdHJzT3NObTl2UU1VL01hOWhzMCsx?=
 =?utf-8?B?Q0s5TXljV0Q0bWQ5NWh2VzVTcEtiak1EOWFISWhiNGJHNlE3aXVPcEdCU3Zp?=
 =?utf-8?B?NkRJVG1jV2l5b1FOWEx5OFl0ejJEMytkS2JheExZblRoZXBCZDkzUzVvUVRS?=
 =?utf-8?B?NjJXQ2RJdFQxbTd4dFRraWdIbTRBL3JqVVFTNDdNRzBTTmpQcVJ3akM0RzhU?=
 =?utf-8?B?SWFBOEk5STlWZXc4MG94R0R0ZCtRaEZtUFA5RjZmQVJvMkRuQ1Z6RTh5Slkr?=
 =?utf-8?B?NFNjZEZzRTZZcU1xbXFRUWROQi92SUZxNExWZ0YxK3NuakhrY2lVN0pGcEhI?=
 =?utf-8?B?bWNSWkVWT1FENWVlcWJTMG1PdnN5bHduL0FyMXJ6ZzUxTTZ4RXlrZTZkbWVZ?=
 =?utf-8?B?T1BBTXZOeCswd3NrdWtHQT09?=
Content-ID: <340DFED60D2D774ABE388F082C9C7D5E@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 42a67f59-1929-439b-421b-08d92ad247bd
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2021 23:08:08.3210 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZjT7k2u6pP2WzYYe9DvjQ2gYVQ5SmNdYMz95Oa+yDPraWy9AGZY1ap7BZoEjryE5SCAnWWxez7phPMDhQCWJ+q9/58dx9i98Ao+29md+gfE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4258
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ice: add tracepoints
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
Cc: "Shelton, Benjamin H" <benjamin.h.shelton@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 2021-06-08 at 09:27 -0700, Jesse Brandeburg wrote:
> Jesse Brandeburg wrote:
> 
> > This patch is modeled after one by Scott Peterson for i40e.
> 
> I found a little bug in the code, Tony do you want to correct it or
> have me send a v3?

A v3 would be preferable.

Thanks,
Tony

> > +DECLARE_EVENT_CLASS(ice_tx_dim_template,
> > +		    TP_PROTO(struct ice_q_vector *q_vector, struct dim
> > *dim),
> > +		    TP_ARGS(q_vector, dim),
> > +		    TP_STRUCT__entry(__field(struct ice_q_vector *,
> > q_vector)
> > +				     __field(struct dim *, dim)
> > +				     __string(devname, q_vector-
> > >tx.ring->netdev->name)),
> > +
> > +		    TP_fast_assign(__entry->q_vector = q_vector;
> > +				   __entry->dim = dim;
> > +				   __assign_str(devname, q_vector-
> > >tx.ring->netdev->name);),
> > +
> > +		    TP_printk("netdev: %s Tx-Q: %d dim-state: %d dim-
> > profile: %d dim-tune: %d dim-st-right: %d dim-st-left: %d dim-
> > tired: %d",
> > +			      __get_str(devname),
> > +			      __entry->q_vector->rx.ring->q_index,
> 
> should be:                                       tx.ring
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
