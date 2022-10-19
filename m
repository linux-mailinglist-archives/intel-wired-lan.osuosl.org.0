Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EEC8660405C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Oct 2022 11:50:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1732141A41;
	Wed, 19 Oct 2022 09:50:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1732141A41
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666173039;
	bh=oSNxK+IpH2fOvGTRTKBUn2GeoZs/cJZKDgsPvfIRuAU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=R2rfBQlV+mkq66x6pAYF+3eIqb1804fR6j2/LJrk897Dbogy5UR4CdLtQ65o/hgs1
	 JGkIrA7wJ/HOpkb9wlg7QCQ6xbYJ7lSQYDYvCsG0QIKO3uM5Zdc7ikBDgMy+IZcs40
	 /4uboPD+kAb/M/V2rseH+ieb9XJN88K68bbXfD79HiTH2foKQ6uM0VwCX+xEYmYjja
	 4BjHWy8tWaoED+a0YzTPhjdvqNd/aXAIiDjPx+Z/zi57TbFmKxKnS810esmew3NfTs
	 KdUcZrsGHRHxDP9y7ciTRMszhJ1JpkBYrC+P9dk0w37b74jgG7eIX6FtasfwVjSiEl
	 1KM8y6uN0prGw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iV7WBK2zDeOn; Wed, 19 Oct 2022 09:50:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5D66241A19;
	Wed, 19 Oct 2022 09:50:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5D66241A19
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0670D1BF28A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Oct 2022 09:50:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C8BE541A19
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Oct 2022 09:50:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C8BE541A19
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C6cBqYmlhikw for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Oct 2022 09:50:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A99DA41A3F
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A99DA41A3F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Oct 2022 09:50:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="308049908"
X-IronPort-AV: E=Sophos;i="5.95,195,1661842800"; d="scan'208";a="308049908"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 02:50:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="607012644"
X-IronPort-AV: E=Sophos;i="5.95,195,1661842800"; d="scan'208";a="607012644"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 19 Oct 2022 02:50:19 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 19 Oct 2022 02:50:19 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 19 Oct 2022 02:50:18 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 19 Oct 2022 02:50:18 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 19 Oct 2022 02:50:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HHDtNRVD9bXKAAwPRZYr/Q3H6Lz7tCTnYcCcqkIgpYGo8GD8DcfrX48IKED6YXwpX4kxXoStS7mK/tov9dwFCsT8cWwkaWpem0pwahwpWPADGvDcfbYeV+uqn503e0xhnMNSZ78IJZ3/lI9FDCajthQ37bQ1GMdf9dsjj8V3WI9O+g0SSWVpobxeCCKEKHpjnOyIZ7bA+H63YfCA8octuB/WYX/YJ8tA1m4Qs1j6eFR1yQ5lrwZaCQer4RT1EgzM7Rm5GnTTONmtbN5cG+Im68jLL8UUVEFhwH1vcLtTYKJDa5OWyJ32hQnqQKrk2UbRDsukEly2H3cs+hrDozh6fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xYuCKxClGBNjfmGTdZuS3huoiUiBaAv3boMk7gKeGWo=;
 b=ngnwTs4F/i+daRBQX6rPIlhGrDAetUV/Cwgcxbow4gpSklw03Z6m8N6P7afDIuTifaDimV5zfFYADjbg5QsDhcS5bNziPNKkqSNXmi5waviNTPGK9f7USA5kxx1P4XCANIgsM7uLKdLimfaWq/wco6vMqUYFGkrPi+du52NMCIZxjAiI9NK5u+AzP+4O6jAHEmeyfyLB/9MVJUZnfejg1yEN7MMKJfDI6McXBhmVPnWDPM5p6Q8n/Dj4oCjZJSG8ydi0NuZQpw7Tni7bOgHzZlLX4k2m5iBtOBBViRKTjwYbLNcO86ug9mumtiCi7PTYwVpaMMaKXsL95ULaqTrJXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SN7PR11MB6996.namprd11.prod.outlook.com (2603:10b6:806:2af::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.33; Wed, 19 Oct
 2022 09:50:10 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::888:2df7:7c31:e1e5]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::888:2df7:7c31:e1e5%7]) with mapi id 15.20.5723.033; Wed, 19 Oct 2022
 09:50:10 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH next v7] ice: use GNSS subsystem
 instead of TTY
Thread-Index: AQHY4huHV0CeWxyuoEWR9In0WsspZa4Ve5vA
Date: Wed, 19 Oct 2022 09:50:10 +0000
Message-ID: <BYAPR11MB336717CA4272608EECC50115FC2B9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221017112534.73159-1-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20221017112534.73159-1-arkadiusz.kubalewski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|SN7PR11MB6996:EE_
x-ms-office365-filtering-correlation-id: 0872ab65-36cb-45e6-732e-08dab1b74fba
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qxBXJbJDmwA0MaLRawc/Ns2Zypc1yR+nawQdRHoIs5OedQ1XdUNfTCL6YQSwYKeS+2ezHoxKa9VizYb0ne26P9E6w5nq2nKrDyzHmLeahEeItYswRWaoCG+TtS5iBnutuCxtz/g1hXmCE9sAGDacqEk8217tBIJHsPW705UPZl7BRoL35FJORVPL2pdq/2c365MUBCzxI3JbgrdvP07KlAkMHk5guDfmSCvqqE2kaSjsZFrxerQOeAgweGRw90hiO+lGkRfulhrthtuPzKET9bzaInvYS6k/d8YCu1x+AoG8BLM5TjfFwg04zIbbT50X5Z2Sw6aDMPdeS6tHglhgxdRPOUXNkYnPwzJV5fPfR+3eUiWmedmr8dIBL1qxXRkyqw18o41nbQcxS5kP5vMnNpiSmNc70d5+evjehNBvzXmP2i0iOsu7VxpVd0NMIEiOmgps0bgxbvfWMR9sidi+Mp0ljTpAWB7CtrhPwGQ69Ud+6Rj8mMkJLI1mLPZyriJuA7nWu8DRLvuY3k2szM9DZqu33ew1zM2T1fFSIxhYldTNWI+GA2ftS+0nB/yWplnRnz+SJUVfjJYNtRGiNNGJBIe/lsLJwrRR7SF+zZFxDB1BzJ3bnYeHrr+7+PO2TQUed/mmoqVnbI+jc0UXvnUoEhefZ8BuzaBHk0H8C9QHgHIcWh/2nXWWEsxhQrRhY96jXYrADRiD81tdKQi3HcxeeT/yGSjXuTABcBiIVx0AN8XQB1JuzG6uuqqel7bYK1N2tYj8EjTtHTlePotjrYJDhw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(366004)(376002)(346002)(396003)(39860400002)(451199015)(110136005)(82960400001)(316002)(38100700002)(2906002)(186003)(71200400001)(33656002)(122000001)(83380400001)(478600001)(38070700005)(5660300002)(6506007)(9686003)(52536014)(8936002)(41300700001)(53546011)(86362001)(26005)(76116006)(66556008)(7696005)(8676002)(55016003)(107886003)(4326008)(66476007)(66446008)(64756008)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vtYDs1Zfb9Nap9tiLix4jt/et1GhLuVZCHA5K+6tCm+JtHJC1k4zg+GRrql3?=
 =?us-ascii?Q?V30+oii8crG8Jw9opwmo7AQ92UusBOnJDFviBKNgfwDLSJBTSCwhP0XkbVEK?=
 =?us-ascii?Q?fzqfZzVI6IBMWdmUwNRt4LB1FwE6j7p5CNpqy8OeaV83Nc1vdXO9N1CpxMzq?=
 =?us-ascii?Q?1LCp4g2gpoCjuLaDBgyNgXWu516OZebLIbL3WuJzlLPflbH40J1bRJ+y9ZSd?=
 =?us-ascii?Q?YyM6aTcI17euZw5Nsj2NrOxLU8XzfIBvf+gRJJ1zJMnzWvmaKkg7Qupa0Gj/?=
 =?us-ascii?Q?Oa0ZlkJSUePIFCkCIWXd/OiUdTAw8bzUnrjU5P4tIyoHL0FC9/rVUKLqI6B5?=
 =?us-ascii?Q?FXDIOLYr0uPeFN7fpZWidjcXOS2WnQM8rpvpaDqRxXh0+IlLgZpCVQEvP/Fn?=
 =?us-ascii?Q?xAGv5hWrT7F4ePzNUxtkOlT9w6GJDPNeZhB3K8lMsftG4aLtg8rDHrh6HIOT?=
 =?us-ascii?Q?q6ycy4MQL2iV+p+PqPL4pRayTJMolrR0I/uSpiOmBxKB95csronEZu94MZ9E?=
 =?us-ascii?Q?/I6IkoJMt6AVrcsWIT1TxvWNjuINHuPCQaiVTjDfU1exh1qIR2hlzyX5KHSC?=
 =?us-ascii?Q?zrdu6awPV4aSRPx65RphCQexSu5s/OItd5h0vzfYK3HdjZUjQrwmJ1bj26CO?=
 =?us-ascii?Q?bav4ZQBgPSvLFc1rWQWDo3uQ2kEfg74Dafj+f000D1LrFepQ/5JmhGfU+X5J?=
 =?us-ascii?Q?pQEhoxK8aIP/86s1M0+pLrd0rqxdhXOzLuY9cBVtBhJAgs00S+lilARMFbF7?=
 =?us-ascii?Q?SI3UAL99XZJlZWrZ2MmHRxWBSMG2InzfWNSwYpBNQOVpeugZtup6SFoWZpl9?=
 =?us-ascii?Q?foFawdq1L+C0bcibpsCihvUPiawBFbpDilr4wkVSYKLSnUM5RTH7JlKmvdzU?=
 =?us-ascii?Q?m8H7xntCfUyL24oWu3yl4u2hbQMqryY9l2WN5NqnDOZk5LPd+x/Oeu6+GOXG?=
 =?us-ascii?Q?v3S6W0Xs6aidXZLhct3SeE33Wb450lpuWZmslEH6JGzaVUUZ5+w7zbO7NZln?=
 =?us-ascii?Q?fTw/t74JWjBRlRQPlEpYr+YU4fd3SabzsY4JryHbUzmnrlb1qI04V8Nh3Q1P?=
 =?us-ascii?Q?4OVCjU1oxuZ/Q4g18YDQDiu6kJcmuphZkAPGzLjlvvbEvZzz7cL+YIdUgywR?=
 =?us-ascii?Q?egZ7/CW7p8MrcUf72H10EfSSGZ+9jHhGrxlw5WbjM0qSKH+6g0K5vaegWE87?=
 =?us-ascii?Q?WFUmJZTwzpEh+E1KIohOW4O8xr3rW/rxHPYeijAqgwcLp8buZP+SuXz6B4F0?=
 =?us-ascii?Q?Cq8J+Ftu6Zju1WN5u69QuNO4Gkzka4EG4K/XVDjAnoqHhtdKRetdG3u+xnIQ?=
 =?us-ascii?Q?/p8fwucWfXesmrUxsIR7b7OiReYmCdIt1Drisj+eQIXd/09DbacRqv+Li41c?=
 =?us-ascii?Q?xhJshJh7WyxyWAuTYl/kyIkJgsgjYvcVqB6JN5CAL1OH0pCcWqrqCX+orcLd?=
 =?us-ascii?Q?T5VusTHfAFR2nRJRvlXqzQJoyZBLTPRT9LRl8SMzVAj2dU9GOL3zcOHvu/OB?=
 =?us-ascii?Q?JRuASVe67pxjL3qxH5MIIX0jp5jhn5TdjiaoNwNnUZl8LHYGZbEEZBp/jWYQ?=
 =?us-ascii?Q?pfS+Y5eQeN1u6oTKD+SXBXRX3d1zBmeXhdBKej16?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0872ab65-36cb-45e6-732e-08dab1b74fba
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Oct 2022 09:50:10.0941 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hnnHsUDDd6meCICZPTnpStsZAyVTbgXwBjlRdseW/0ibA5o/tIQ4O1NDmpzEvsgbKbq7HHYG6bid+CZ9skXfFA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6996
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666173028; x=1697709028;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8Pu0dpldeBW8kSwR6sebb/h/HT8EQPDLN0lk0Hpi1GI=;
 b=ZbBm45IZrlWy1juqBfldNnGVC/LisfSH+MdvYshhoSX/hdfCfi2Lik2a
 EhG1WZlR28L3y6NOxkeWg2eolBhLjNY+l4wDxUz1LgOdbGTagzgK47PhM
 PQp+LZlYwAvTYWcRn85Et+p40UKpvNaZjAXx18TP+pd+yAItN8HBVBLpp
 agiEAO0KKwMr92ZjrZR+v9SeLU4xUGpOwXzUsDT5thtZtQpJBT8mGO9Dr
 tgQsqwI+cwu6O70KRpcjKPklJ33V884J8HYqRdaHCzQoqbf6BuT+ePbxO
 EAPplX2b0UacTmBljIHH6rOsixSauW0UqJ8UjcsCICp9zWvSjFEa2WXPV
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZbBm45IZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH next v7] ice: use GNSS subsystem
 instead of TTY
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
Cc: "Kolacinski, Karol" <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Arkadiusz Kubalewski
> Sent: Monday, October 17, 2022 4:56 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kolacinski, Karol <karol.kolacinski@intel.com>
> Subject: [Intel-wired-lan] [PATCH next v7] ice: use GNSS subsystem instead
> of TTY
> 
> Previously support for GNSS was implemented as a TTY driver, it allowed to
> access GNSS receiver on /dev/ttyGNSS_<bus><func>.
> 
> Use generic GNSS subsystem API instead of implementing own TTY driver.
> The receiver is accessible on /dev/gnss<id>. In case of multiple receivers in
> the OS, correct device can be found by enumerating either:
> - /sys/class/net/<eth port>/device/gnss/
> - /sys/class/gnss<id>/device/
> 
> User expecting onboard GNSS receiver support is required to enable
> CONFIG_GNSS=y/m in kernel config.
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Michal Michalik <michal.michalik@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
> v7:
> - add blank lines around 'GNSS module' paragraph in ice.rst
> - mark '/dev/gnss<id>' as a code in ice.rst
> 
> v6:
> - enable support for CONFIG_GNSS=m
> - improve commit message
> 
> v5:
> - fix "ifeq" in Makefile (wrong usage of string)
> - fix description in "#endif" to IS_BUILDIN
> 
> v4: change Makefile to build ice_gnss.c only if CONFIG_GNSS is set
> 
> v3:
> - remove unnecessary #include,
> - change the IS_ENABLED to IS_BUILTIN - right now if GNSS kernel subsystem
>   is not enabled, we also won't enable it in our ice driver.
> 
> v2: fix sparse check warning, remove fixes tags, fix commit title
> 
>  .../device_drivers/ethernet/intel/ice.rst     |  16 +-
>  drivers/net/ethernet/intel/ice/Makefile       |   5 +-
>  drivers/net/ethernet/intel/ice/ice.h          |   6 +-
>  drivers/net/ethernet/intel/ice/ice_gnss.c     | 380 +++++++-----------
>  drivers/net/ethernet/intel/ice/ice_gnss.h     |  18 +-
>  5 files changed, 167 insertions(+), 258 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
