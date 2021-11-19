Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF186456F84
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Nov 2021 14:23:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6F9B54092B;
	Fri, 19 Nov 2021 13:23:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NREI1NRJ7caL; Fri, 19 Nov 2021 13:23:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 40D2540128;
	Fri, 19 Nov 2021 13:23:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 094B91BF29A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Nov 2021 13:23:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E30E2400AB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Nov 2021 13:23:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n2WwDkCKzZpN for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Nov 2021 13:23:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C6B9B401B5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Nov 2021 13:23:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10172"; a="297828412"
X-IronPort-AV: E=Sophos;i="5.87,247,1631602800"; d="scan'208";a="297828412"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2021 05:23:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,247,1631602800"; d="scan'208";a="506439855"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga007.fm.intel.com with ESMTP; 19 Nov 2021 05:23:20 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 19 Nov 2021 05:23:20 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 19 Nov 2021 05:23:19 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 19 Nov 2021 05:23:19 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 19 Nov 2021 05:23:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GakeLHfC/kln8pF8f9CG0YLn5a4C5Z9BU69jSxAWJ7X96RwFiPRFbGEEZz5XEEcdMbItC23hisIYAvv+IVV1+vNDMw6wuPd3K1tbVB5WzJXkrInd7ebW8h+rsEMzE3J9TcFYJTyRVLMa8nmQM/6xOCxTb7UJ7Gig0NM+1/pE9gTqF02Hm/f5W90RHF/2IZ69237cvuHLAy54e785toLM60S0+RZaqDXU5/88xlDkYD/7fpE/xqUhWm+0SXHBJBXohI4/7VXHTaE3v424e0hoGk44Si6dChLA/rblHVv+rbAjTkzl3zmtJl2BeUqWIVMr1b0klnFdWRJ6/VPyrzTpYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FNMZjUZSy2JxM+1oMCjnrxCJmyFlaiFm2t3T+VQ6hbE=;
 b=J14kxWUtdWJqihuSxw4OVAwGcq58ZewtQQP/9rDvsHKPFHMSmClbmYf6kTZJxQp7M8Xw6AVi/dgjFEVm4LCWShh2jMpYts3ilx+DcpCPs4/sxuILjWWA0xl8wHwiqrmlqtt71kg18yZI0eps6XosZdwMCZ5JkeL0Avh+qebuBVlZEKcniGnfVWRP0ts2FfP10YcTZBY8en8aQ73awvjIxZ1MgGf2Hl7FoaFkw/FHJ6sL7Lg9FGoqDz1hp/1EjSiPxNqbEh40CXdjqX9ftAO9ICZu0YkXYZ88kd2SiHKmD71pD2CdqnRD3OrxgLRu9PWp2D4TcmN0zYhF2HOki11wXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FNMZjUZSy2JxM+1oMCjnrxCJmyFlaiFm2t3T+VQ6hbE=;
 b=gYk1g+uGJ8a2ZlZLi6MmolFem798l/VWEOXkrtbuvTmVYsHVrklOzfB79vFtu9aADZMH979c27KoR+mj2ZdtXKun6AlyfW8f9IKUyDL62VqnSRCHWuWuiEER6bouWrTU17TjtVbTj3rvga0mX5Rq5uPfMG0uoMioVpKZzUv8U1M=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BY5PR11MB3958.namprd11.prod.outlook.com (2603:10b6:a03:18e::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.18; Fri, 19 Nov
 2021 13:23:18 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d9a0:60c3:b2b2:14ce]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d9a0:60c3:b2b2:14ce%7]) with mapi id 15.20.4690.027; Fri, 19 Nov 2021
 13:23:18 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: Dan Carpenter <dan.carpenter@oracle.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: Remove unnecessary casts
Thread-Index: AQHX1gfA5ZhCu615o0qS94NexuwFcawK5QFg
Date: Fri, 19 Nov 2021 13:23:18 +0000
Message-ID: <BYAPR11MB3367577A68B15DB1FBCC2B9EFC9C9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20211110075023.GC5176@kili>
In-Reply-To: <20211110075023.GC5176@kili>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5ecff972-6efe-4364-3d83-08d9ab5fc034
x-ms-traffictypediagnostic: BY5PR11MB3958:
x-microsoft-antispam-prvs: <BY5PR11MB3958EF80DB5D8172D7B827BDFC9C9@BY5PR11MB3958.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1751;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QUw5hLvCzPjePZ1ZJgIzm6Wz5EasV+rcrbWWIF2GQPC6BAmhMcEMqMesFgUSzSvM/oxP5DzebTqLhIgI8WTB4vXhJUFemnN3KSjxE6pBf45G8AwTilxE3foe9+VeK0UsaFSMV5H1ak4ADSJc9fOuoFTdb82P6uehSKbMbgvGkn99rYHKaPDBec4A0nDitmHK8UV0aPdBEyLSZeosJ6eqDI7qU/8B8GdP16dZgMu1GrK3Eh8WxGiMn6zf/g5J6qKpAoQFSJyD5Lfx2QqoV4Ogf5+GEDoC+ZSxN/0C9/ROxO5z4KI2dyeF+OtYy7WzrIAlLceiniZV/oMKjuqH+F+27T19vzps5x36CZnFCnLdxVfVhGIDCeGvG5LpuXVd6rC15dLFZOl3IRjiPXiw5kVe58sgG0+3/QaV+z3ZHeCENKycQKdzCDkaHf8+0uAqMJvT0ZpyuPk+fz7ODGnhq8Jrf07wh9LDQUTQUl/Fz605GTexGcJPcB66j4UitsChOCFpky7VO+wVUGQTg9+8sv5vLW2tfWGxN264pOLzdXF5sMJrP9mIZISCe53n3AXyfRHmystcFePA15aIn3S8t/ah5Bx9MDTyEa1XqaSOfQYhHoCXsmMVKE2FLFd0jU5CnKmjODh6Qnd+0muwwq6zJm78sKYSYzAUEZnqFYGmJ+wlXQdGutDAGBiVKKzlkWs7845iPsNXHQQBCvkSUaa9c8n9yw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(110136005)(54906003)(71200400001)(86362001)(4326008)(316002)(52536014)(66476007)(66556008)(83380400001)(8936002)(2906002)(6506007)(66946007)(26005)(5660300002)(186003)(6636002)(55016002)(122000001)(33656002)(9686003)(508600001)(76116006)(53546011)(38100700002)(82960400001)(64756008)(66446008)(7696005)(8676002)(4744005)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/2C5TEZSy7qLlDtKR0lxtwx72hRNCqVYlVd2tE+eveUh6+N3+o0PjyruVQAv?=
 =?us-ascii?Q?DG5VbtyN8Wqj8o7wtHYeOcpu1MmpeYwbbVO9AOKrbZXnG8g6hZIeW3RHhEww?=
 =?us-ascii?Q?+MCtVzqxzCryS5rJPtOi4hhXBXQshj8+I42fxyme7ebyf3KgZkqANOvFLr5Y?=
 =?us-ascii?Q?XjtbG7lZtg5ckBqk4/kb4F9DEvM5hM2sIUlW54FGCbc4NHzC1LEI9+kNI64s?=
 =?us-ascii?Q?EL+R4aUlbW2xkjhyPMaS8atzLV6X51yIAj9xBKPMJBZPsodVEvbjwMD2Rey7?=
 =?us-ascii?Q?zvSu263gcgmKbMG575hqmNM26yMcBFUEECO/QOVe487OoLqNJn5IgYJdI1Tp?=
 =?us-ascii?Q?6Z+UF9YA1SHeYGh4c8FcFDlAU7GwtFZztVRabJB8ucSk4q05Dn8JfZPPwdp2?=
 =?us-ascii?Q?BcRYG35fhTuCyKX5cOpSdDd0aQuG26YiqqqQ53Ctobu8ydKKh4xYGfMEvF/A?=
 =?us-ascii?Q?BbF+BqK/5nzWvjuvlpad04/lF0tlMOjobTVtmHFt3CHQ2neTx5xK+Eg8Uwg9?=
 =?us-ascii?Q?tnUgvLlpHdf00nPL7hlTkfKfxvYaxXVNkzO/Q4XvMPTumnRC7xA//E6j7YU9?=
 =?us-ascii?Q?B02IZnnGYdr71v2JwhIbkcr+sl+8YTGh1xPI+ovjmt0/E+Wu6R0IgXTXpAz8?=
 =?us-ascii?Q?6clvaOAoeQzJqItmm2KB9ul4ZNMSk5OzHAw+hkrqVU0fU2z+D+oAB9L4Ii1a?=
 =?us-ascii?Q?u03vdJIKpOfSra6J+TFcBQjcz9dXl4AscNfM3SUW8gr+92N00rO+6QAfPsF9?=
 =?us-ascii?Q?IY75hNc3U00wuhCBtKNlDioAJztl2BOiWYzxkhvQprm6JsROGXNsMeYaFW0J?=
 =?us-ascii?Q?T+7aItRQALGgdR/Z/56oJ9ys8Rkv4QYbPoBahCYoA7GDs2kr0YN3OwiMnYrf?=
 =?us-ascii?Q?nrzq3MjqaYDPF98xbiFQAhn8yfZSSVcYrWY75srqknJbuYXapjEQ076SvvPF?=
 =?us-ascii?Q?MyUH1YLDaI7v/G6gfhYV6zYsObfCDOnk/4b2mSGEeBFp6ZAJNkxzWPLxl62C?=
 =?us-ascii?Q?bze/bxe6PYMBuuIGd6pL+17byUiKoNphZpw4ti9f6swOSfsVW7dxcOy1mhK3?=
 =?us-ascii?Q?ywTINLOy/FqZICt5uKFKQI98LemR+l/8ojNOPYWEpKD/Ixz/yQlR8e6QA0Vh?=
 =?us-ascii?Q?k9b75AmD3sw1aIg7OCElH4VkaeXdc1V/qOqpNhjLiLOuN8OieQwaX1/tok6q?=
 =?us-ascii?Q?sTSpV5DgicyXJAo7dpZhExSotVGMcvO5/gHNdy5V7dwElc5Pr0ZoQ7qZejIF?=
 =?us-ascii?Q?BftiRS1RxxahHpz1diM2HXao+l7yuwYYpzsFGKQKBoeTjdbgoeLRCq/987y7?=
 =?us-ascii?Q?C6M+SLQ9Ao7D5ndMYnrfQASrDpeTJsPv3ecPfDkUdWL9sEclRwvU4OmurH/J?=
 =?us-ascii?Q?Al1zxiJGDm1BYOTZZnJF5PKw6CktHrX+OhBS1Ex8vh0iHt7AqDz9OjG9E4lt?=
 =?us-ascii?Q?bW/N0g6QYqI0Ge1vD5ZTvtrC2ik8HGdz35DEeg1hdWZxDGgPCQbCb44C0MFR?=
 =?us-ascii?Q?8QrimFPPYBJFGWda0rDqqitReTG6HPEgMFcUNJs2hYl16KLQSBc4k3Zs6Sft?=
 =?us-ascii?Q?RawPXyKzOENBpq6REXQ1BFGWL1zSZn+p2GuNgp15df9dJE4g6xx2t36EUeLu?=
 =?us-ascii?Q?4A=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ecff972-6efe-4364-3d83-08d9ab5fc034
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2021 13:23:18.3138 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GsH9+8kOuC/fNX6z9dwdH1EsOWyQBELeb2iKIkBET9epCCwLJsMUNw9bdOvZpomBDAy7BDEXJFX3SrVGQzQG7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB3958
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Remove unnecessary casts
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Dan
> Carpenter
> Sent: Wednesday, November 10, 2021 1:20 PM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Cc: netdev@vger.kernel.org; kernel-janitors@vger.kernel.org; intel-wired-
> lan@lists.osuosl.org; Jakub Kicinski <kuba@kernel.org>; David S. Miller
> <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH net-next] ice: Remove unnecessary casts
> 
> The "bitmap" variable is already an unsigned long so there is no need for this
> cast.
> 
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_sched.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
