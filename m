Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6B65FBAAC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Oct 2022 20:47:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3E57F61050;
	Tue, 11 Oct 2022 18:47:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3E57F61050
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665514027;
	bh=eXVLeSHuC2ofMYTRvNu8ix8gkNUnCsXT0dh0W98lDN0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yFh80NY9CT+Z5d9kuw4dOzqBEv8+SitffNvQKX8dBADioNyo8bgpB+8pC0LtJh31v
	 5UMy95jzBMCH8bUiwljkhBFmDFoVzbsr6zSxqB1gd+kBwW422Rz4xIz+vFKb/75Wa1
	 sjGZtm8fxE69J0PoCx5NxlXl5Kc1CpB0uEVRl2hyFwr+DHlowICvsqYOdIt+pWafDV
	 6tqDzXngYUGTF+UvcSsVzzaUlkzoEWkv3HLyG90MOdg1M/nDiJszoAytmuO2PGD5jK
	 GpHAFxVBtWgujTjycYN9zZ4Zg5l8tnPA6kJGVVzkE3TwtBffD5qZByhBu/yfCsUyAa
	 zmhHHcoQ7Qouw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rABwZfTYkpnH; Tue, 11 Oct 2022 18:47:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 25ED2600C4;
	Tue, 11 Oct 2022 18:47:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 25ED2600C4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 26D741BF239
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Oct 2022 18:47:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0ABC740524
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Oct 2022 18:47:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0ABC740524
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x0z7xFQnzuYn for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Oct 2022 18:46:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ADE4940514
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ADE4940514
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Oct 2022 18:46:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="366594884"
X-IronPort-AV: E=Sophos;i="5.95,177,1661842800"; d="scan'208";a="366594884"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 11:46:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="626477055"
X-IronPort-AV: E=Sophos;i="5.95,177,1661842800"; d="scan'208";a="626477055"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 11 Oct 2022 11:46:27 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 11 Oct 2022 11:46:27 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 11 Oct 2022 11:46:27 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 11 Oct 2022 11:46:27 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 11 Oct 2022 11:46:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W97x81yOqsVJYuyrnlwCKSKxwkZ48sZY52p74RlWHggQaa/dQkgj5eAd2SQswwhhOJ5AM/BPD+ur6M6v0nWeWr+CVd4yyrCL22waejvNBu8P0VIZ2iljnk6GDTHn+RyHCwh/nhlgbmwKntPn6DYR2Hbn0FAkURiqb5FcKlpUwLQJ22PV26QRIDWnXDV1z1v2kLDXNa8C6TZlC7L/FUrQajWRqtinLJ/enyGvRb+mwQMVplq76jZCDwidwyJAFdfVU2lwCh9XLThQCnfLmurpUHuh0X4/dpP2H9jOsNsxxFv1LIxY1fY+cDtTVfHwjSplDOH6xXPi4LEipe+lC/uMlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NgIUyZshAMxkwMjYTwSJv4pnACt447exHJmA96KWMvE=;
 b=FZetweEe4Ux3ruhPfg8x7lPu+SUwleSfQzB7KL07Gaxyrr7YME5PhjoZ9sIM5spZSovcjZF74533SCJ5fEGPU8sCi7qMBO6u9me31TXkYa3Q+jRFms4ODvpJWPxboGJYraAUZ17CzYGTnqXTFzI6UZrEXm/XDq1GQHPTDMGkdsAt0iNQp3gcVextPgqIqjgzl6LlZ4RUsu3N4U19uwfy8F+alhqptm0YYw3KN0ltaa59Dgfp5+DY71+Bo3jkekVoMM2xnjEW0hFFUpNeeQflLqEDzPWSt9Y/piBRpKuIJPRkAxcXtE8fiP0ZbHom4phRdFBpvdmT/9SDVhsi7RJ3vQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DS7PR11MB6078.namprd11.prod.outlook.com (2603:10b6:8:86::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5612.22; Tue, 11 Oct 2022 18:46:24 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::47f1:9875:725a:9150]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::47f1:9875:725a:9150%8]) with mapi id 15.20.5709.015; Tue, 11 Oct 2022
 18:46:24 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v6] i40e: Fix DMA mappings leak
Thread-Index: AQHY3VpWA1ghjCSgzEGqhsDjksFWgq4Jh3QA
Date: Tue, 11 Oct 2022 18:46:24 +0000
Message-ID: <CO1PR11MB50898872680FDAB00D62D8E8D6239@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20221011101248.683540-1-mateusz.palczewski@intel.com>
In-Reply-To: <20221011101248.683540-1-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|DS7PR11MB6078:EE_
x-ms-office365-filtering-correlation-id: 008d30a2-54d2-4a56-4f45-08daabb8e5d2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: k6D1nmrfre0TMQf/QPE479rcHZ2JUbBKy0Ubu5sSW6NJgSX+yrsHtMSqr8DuSQwUVNLBiWmgWoKrWpr9+/6bMP5hV68pgYDc7QVLwluFagbuIb9xT+jVlzDl1Cu2SORBa7Hh9SG9txuZ3h3UR0rS6F5d0JITPjpRKDDKSBMel6LJDiRU+w3ibEAJevfDfkoILHuZfiwb8tc4hNrsX1K+cztvb3tEILm6dII7tK5XIdgj8Yf3jdTcsoSIeLiOuU2IMExN6ADiYyrsAOro78UMHOlQMCAsXukeWj7j0fi6XuE9AvmDolIOIEqRGxj5Rkbel7IySRxwc9PPtKOThK7DCQMj0q19vo6JjVL/NZ7LoQFtd3Z7io9Oh5u3CChE+6tRtLYw8S/qNN8QCubzpvnYRnHkcujqyNOFHtTK1+3W8sBJTTEMCxV5rKtPXKybnYsXEqmnCwQK2I+kpzeYQwOAHPZ7JYH0D0SUK5LsxUbyh+go+Y9xXj41QhOJcJcRmYYQ0r+DZmS1/P5QWQBmQUYNLoz9BZUVIHkmUhfSZR2YryGCO84k1tYrIz6wR4ki52KMS9XzF8qeFB3d9LPVchaAAsUKKX6qDKSQKJlVkLlesDf9l4s/EQdEdcRSB00O13P96NSQ9dtmRSYidzs3YN/Gjetb/ctG99Vn7NbgwZWuVgkCajYirZjiS2r5p3VTcjoWvfKDWM55C/KEjQeRDYhH0AnLTAdK7oduXpNq5/2XtO22E1JKXBmdBMPrcqgv0Bo+kC0VcvxodDvbsN0PxGPqXA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(346002)(39850400004)(376002)(396003)(136003)(451199015)(122000001)(86362001)(55016003)(9686003)(41300700001)(6506007)(26005)(71200400001)(2906002)(107886003)(7696005)(186003)(8676002)(5660300002)(76116006)(316002)(478600001)(64756008)(66946007)(8936002)(66476007)(53546011)(52536014)(110136005)(4326008)(38070700005)(38100700002)(66446008)(66556008)(83380400001)(82960400001)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zNfpcsVsCT22I1N2GEPPcqKCGhMvmOk+DtciXpmPghWgbC3pU0EHqzppriLk?=
 =?us-ascii?Q?x/cKjBQjQvksyfMuhKnLmFwFlrwjEY4BpK0gqAVnrflaA6Ru2+T/KWZ1kWPr?=
 =?us-ascii?Q?04JCWZDSkQq2haZxMLs2HAdbbkrGnnR7FC99pZZUoYZ8djMvBDKgaGdDpUUm?=
 =?us-ascii?Q?xfxG+/J1FEajZuibdyYH6G29mdRcBALZ7ZHV1WkdVXqXT8WE1up8dsrvbFWA?=
 =?us-ascii?Q?tTQcj96dUXnAZKIE1adlMIWolaqCcuFR/6NnRX7XJpfUIQDtUcYQdren7i41?=
 =?us-ascii?Q?NwNGS/lbrcBX1NDNkIQUR1aPtIqd27dc2Q95RBuD8uj9AiZG3UAYpXpMMGMx?=
 =?us-ascii?Q?4+KomizuWzwcomqRHoXhmstJ1u49DRAG+bKg2Xcx8fn0GmrgAr5gFMH2G87T?=
 =?us-ascii?Q?6xxnmyoQjUoVIw4b9UfgvpOvYyUQ1+VPUz9wVapndzx/nrSSlssGa9GWtWvp?=
 =?us-ascii?Q?y03OANYW8yxACMCPgm8K7qMsaW9p9bL4nRUEXdX+5Y9GigXb+H3zLr/tVewU?=
 =?us-ascii?Q?xYYLhOSVD1WY9ySh3pqAQSxXYfYKBYqWGQCIni8qGmkfw1GY8yLhx1o6qF38?=
 =?us-ascii?Q?SOa48cL3wiQ6MbGAM6NGPw2t8dvBKHfevDXoJtrFIbCtplEex3tgdWRgei+1?=
 =?us-ascii?Q?ukglA1xdevwIz7410SpIiYY9ox/0U/8OCxwjwMtIIS6x5lCBsCSl3xJWdNZM?=
 =?us-ascii?Q?TURSu+j+6rEd1vZ//khAuq0MRuoXiTErvjWPssRmMHqyndnPtDg4suxxkLOT?=
 =?us-ascii?Q?XZfB7s6Dg/khaoAC9hRYMDvJET3DdL2sNBMk7vaAf21StDjnl/75DI/yxN/R?=
 =?us-ascii?Q?akcinSwM1gGEaDot4xebIKjLU8JmecfChkuJ803zCR5sXuLMJtyzzRsrYVYU?=
 =?us-ascii?Q?jtn3I3YwjnDKUMmF5U7rGFCSu5crxrhkYSE98Dk8blTfaFfY52tISt6mSHCQ?=
 =?us-ascii?Q?BddAN9Ct4Nhvz4TP/XqVKpbXpWumnBI5k/tCBmmtVlbwv+rsrlSw6s8zBnH/?=
 =?us-ascii?Q?VEYq8OXe1SsZtCFVLzbCfGgUdktwl6VPUWUrFCswQ1HCBG2PkzM7Kz6FtgiY?=
 =?us-ascii?Q?xKEjkF1+7TAUuj2cUwlvYbq6uYOqyWR1iR0fKp5U0Y5aY6MDvuKo55blhd6+?=
 =?us-ascii?Q?+e7eJeKPWwQjS0fOle+whA5pT1sTbOAzMfEmP0/WYbteKxZrKJcLvUAQlcCD?=
 =?us-ascii?Q?fFvb3XpUCX9LSGbF6QW+TWvnxAuPg5vkwzKvgOw2tQyaavqnrVAJubNCxsAD?=
 =?us-ascii?Q?trSSiBoBIRRyssT/j9FwbOgVpqu3CSPlw7YBl3k2bDEczdimPaGmVW4SsaLr?=
 =?us-ascii?Q?jjqJqUgc4dU9xX0s/kOtlzOZdi8DToP8EzXqWD9V9xZLJluZ39tNNqzOh8YX?=
 =?us-ascii?Q?IAcERk0klaAkE3fnxle3wzjIvmipHa5W6j42L8pEQrcYJV29WWWQfJjJZp7R?=
 =?us-ascii?Q?784NK5FUxk81g1TQGs7SyrygaZNlUKPt+jIc/beE64Xc1yB+pzl4iijVW0gO?=
 =?us-ascii?Q?+sNB4eBlysek2CTa2P8ANJP4JERrLIulCBKQIvYMXorm60dMekBl7Q1/BSFp?=
 =?us-ascii?Q?FmQAs9BMtFBg31BKCdBxgpMYR+wm2CBlPVbyXGjv?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 008d30a2-54d2-4a56-4f45-08daabb8e5d2
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Oct 2022 18:46:24.4131 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: imlavfeF1a4G5/y2iGThzq9lD0E3bWuN9m8a0Cse4R/Eug8PK3P9YrH6u46yAp2c01U9to/6I5WvAozKoFZr39XXwZynHtfX3Ca/W4RHXc4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6078
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665514019; x=1697050019;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=W6nFQZuskdi4eVn2vgznj+N1XOh6Y9rmuBzrIKOGhZA=;
 b=hWS3cxl0ILhPyrc+fOpVTGwtA7+msa4ztiY9fL5SuJpH0xwCdmqe3cFf
 1mUZLIHWYLg9Rj2+oBSUAnExPZ6kJ2wZSuY6gcQSqOVPzy0l9i07QU1Y2
 ugFUha5L9qdp+lEEGPun+gfzE7ZFnvHjexQhzOMNZrWhDSM6EQeYLPAq8
 h2YikLviwQa5DCUvOkK/Xhndd6WFVLV1VKUxgsdch7iI97MxBtETmnlu2
 q34blnW8gtlDseZSjG68H3jcqQDbvkCxs8rp432ZaPaouyoUvzW5Dz+zT
 d4hee5LPL9WjKtUkoMBrVlpcRR6lfXi/Z1TRyg5pK4E4sFV10sJyjkkH0
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hWS3cxl0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v6] i40e: Fix DMA mappings leak
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
Cc: "Rout, ChandanX" <chandanx.rout@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: Tuesday, October 11, 2022 3:13 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Rout, ChandanX <chandanx.rout@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v6] i40e: Fix DMA mappings leak
> 
> From: Jan Sokolowski <jan.sokolowski@intel.com>

I noticed an issue while looking into applying this to IWL dev-queue:

<snip>

> +	if (!i40e_enabled_xdp_vsi(vsi) && prog)
> +		if (i40e_realloc_rx_bi_zc(vsi, true))
> +			return -ENOMEM;
> +	else if (i40e_enabled_xdp_vsi(vsi) && !prog)
> +		if (i40e_realloc_rx_bi_zc(vsi, false))
> +			return -ENOMEM;


This hunk results in the following warning from GCC:

../drivers/net/ethernet/intel/i40e/i40e_main.c:13292:5: warning: suggest explicit braces to avoid ambiguous 'else' [-Wdangling-else]
  if (!i40e_enabled_xdp_vsi(vsi) && prog)
     ^

This is both potentially ambiguous to parse, as the following else block could theoretically be applied to either the first if or second if statement. Additionally, its a bit difficult to process because there are multiple lines inside the if statement.

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
