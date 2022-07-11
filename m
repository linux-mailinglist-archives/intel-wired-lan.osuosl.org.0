Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 63FE156FED7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Jul 2022 12:26:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CC56141602;
	Mon, 11 Jul 2022 10:26:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CC56141602
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657535194;
	bh=462sOX8xXQkYZIYhwRDMpfFWf3muBFtlvEwlzVWFf8A=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=U18H8tEUX8Kweg4VR3pw4BVsY0kks2kIAcMluirHlHI7av/DNYYkjHocKaPxWdTxu
	 hXXqE85VXpKFcb8TY3yzdrfpqDCye6nix9cesX+JrvsXz6b7ZGY54MDY86QC9igfU4
	 g296qT5akBCXom5GHtPFcOVignVkxsUX4jS98WlZjzMsXNzZm8fWtraOljuyOMY4aq
	 sbmrs461+FL17VXdqixnZWMk7wq86ICgZ+VBbkTtrWs2jBTNiV0fYwuxxACCfYQUMN
	 DGzBDetZkGHRAaN8Oha6QtFt8hEQV1l1om6SBz77riDUK/lxtJl6Rg6MKjnwnJLArw
	 Gh+kZfUQ4dfuA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nCyQypI01Gx2; Mon, 11 Jul 2022 10:26:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0D10E415F8;
	Mon, 11 Jul 2022 10:26:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D10E415F8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D8A691BF30C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Jul 2022 10:26:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B0AB460BE7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Jul 2022 10:26:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B0AB460BE7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KMDCilN1GsmT for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Jul 2022 10:26:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5129C60AD0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5129C60AD0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Jul 2022 10:26:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10404"; a="285369562"
X-IronPort-AV: E=Sophos;i="5.92,262,1650956400"; d="scan'208";a="285369562"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2022 03:26:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,262,1650956400"; d="scan'208";a="652400756"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 11 Jul 2022 03:26:24 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 11 Jul 2022 03:26:24 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 11 Jul 2022 03:26:23 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 11 Jul 2022 03:26:23 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 11 Jul 2022 03:26:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FymWCk+ehkdV6+v0wJi5ujnTaKsJlPw9fnChlbiD3rfWC8k2DfxKbzvtAG9J2HD/kiDsrw29xv05MPI744cmYPL0LAcyqMBiVQdLNedaxn/yr0NRWVnbFCIaMRWL0pE1TrZcC1zIvfiLijeEmXCocoFf3T9cH4/BINPTbif+xXAKtF1OHN6q09gW+Ett0G5hQub7u5wxtlch+SEgv6woWkmgTUGkx+H2B9h860XO65ADM5Hxzrc3t0tJyYmjqd0vRxqdINNa1pnYHBxGxLkJBx4KwU0E3XWrlMn2tTK3rGnD1avOJ+ego5u7CRTxqVYZVdIAyEqfFIK9arCGEoQFnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8+MRsnsJ0FufK6clB117BKcSboW3Z/uSxlB9cFZm5J0=;
 b=fv/SGEffsiJx44hVhTWpYaSiPTRUXHBEs0GXA9RCDhQM6wgv8J+/nSVF62rfmKPDEGUNLn5X2KqWwzoirDXYZBaNB3EBYG2j2D+d7z6idu0p9KeekC+N2ppwQxM1F34tmpE1ssboswAy5k4fPjeZdpqdN/GJzp8YbLAAtqJVYSFPBHDbaZSQCTGsyjrAEvu9dQjBaOYsBW5iEnq0b8Mrtz9X35Q+lJzS7N039DkOIzItMmp85KCA4w/750oNrkIxmetuLwcaY4d+3duCj/Yc4mWZmQuw/Sj0kiFQHMxN6E1iA8eN1wJltjoxXnQKD+o57rkHl1fMktON42bEfvMeyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by SN6PR11MB3504.namprd11.prod.outlook.com (2603:10b6:805:d0::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.16; Mon, 11 Jul
 2022 10:26:21 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::9eb:1dcb:baf2:a46c]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::9eb:1dcb:baf2:a46c%3]) with mapi id 15.20.5395.021; Mon, 11 Jul 2022
 10:26:21 +0000
From: "Drewek, Wojciech" <wojciech.drewek@intel.com>
To: Guillaume Nault <gnault@redhat.com>, Marcin Szycik
 <marcin.szycik@linux.intel.com>
Thread-Topic: [RFC PATCH net-next v4 2/4] net/sched: flower: Add PPPoE filter
Thread-Index: AQHYksXJqrq+szQLGEKenHEPzMd5aK102rGAgAQgaeA=
Date: Mon, 11 Jul 2022 10:26:21 +0000
Message-ID: <MW4PR11MB57763D75A50EF9CF369C0EDAFD879@MW4PR11MB5776.namprd11.prod.outlook.com>
References: <20220708122421.19309-1-marcin.szycik@linux.intel.com>
 <20220708122421.19309-3-marcin.szycik@linux.intel.com>
 <20220708192253.GC3166@debian.home>
In-Reply-To: <20220708192253.GC3166@debian.home>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9c434c55-2cab-4e06-0eff-08da6327ccac
x-ms-traffictypediagnostic: SN6PR11MB3504:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dE/1ASSGl7B73m38D5x0x1G+gnoM1zdTLO9zRhdfjJ0Q2e8XmSk3VOun7XPRT9tG8L1GoALtoYgL8sKJXdDB7AMmLcuempPmsktmi1wlCwPvN1kcKG/Z/n+uO3+lM1REpEhDzfC6XRgG3o54fR0jqhO+ovCjrOY1iHbRtt13SiLI+sRoXX9FmOd5l9dT8TN6LtlfiQB8m612JR7gUrdTOUQVbPOWPAASfx5R/LR4eok/IbhEp695BTM57I9xzpOcP8w83Bxcxu6Pp4xYPOWZI5VoEzUNmkA9ACgmhcpfdSPzYvE0zkSPZa1tC32Fyqfl2deQKh+FsGw/85fk087a7T2ftumiKX4zkJFEpoMep+CJhwrS45mXfxFy649NK+OY1JCVGJ/WrliARwr4R3lPSvJsfmH6lv8z4MtaDrs07z6TGMOcVffJV3/MijXkXdx6QWAyq/bf5AFHrQNobt0YCedh7j6HoxjyW6ZtKu+US+j8kN+8ZegbtzNH1TdVR39ZCk1vOKXS34np2g7LH69ydilDhA32TqL3WXBVH/2YWiFL8VUElhojcqGpWaxGScpSl6nr/0rJqIJTGnQSOhaPbHvfD2mWp6QGTserRHB/9hH9ZNmUj9vblhF9Z0K0dCIrNcFaVzKIdCOg4iY54m/qJB17hLzI84b7Y4eT85l1RDhGqesKsjY+tAtEqeEdYJpnNwjOEJPpyuXxfoBSA4eQfpw7COGgnZtjav6lZY4EoRxvsEY+tjY8Uwc3zSbHdHFX8Qz8+1qUjA2hlZdbEfYu4lFpgu/DIFJ3klBGEnAEY+qpiFd9a4NCrzfaxW26wHvA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(396003)(366004)(376002)(346002)(136003)(86362001)(478600001)(6506007)(2906002)(26005)(9686003)(41300700001)(53546011)(38100700002)(7696005)(52536014)(8936002)(33656002)(7416002)(5660300002)(38070700005)(66574015)(83380400001)(186003)(82960400001)(55016003)(54906003)(110136005)(122000001)(8676002)(71200400001)(76116006)(4326008)(66446008)(66556008)(66476007)(66946007)(316002)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?AAwsNTFBYgwvyyb+fghxuxWczgiuAUP/TAokHggKXjw6FjO4Hw2HSzKhn+?=
 =?iso-8859-2?Q?W+Bv/mzNMFOxbPFG5uzjo/PkBzcxy9jtTK0e+9EXR10wyfSIFw5WG2qoYK?=
 =?iso-8859-2?Q?fb94Zynw3rpPTW0KKa1SqoVw6DhFENYdvs+dKTjjjLOEVas7ZoM6dKkjTX?=
 =?iso-8859-2?Q?RMcqeW4W9poOGIQPiq10QKKP5tiog1u6H/DhvkEEAG6EF9grq2S5GcDgGH?=
 =?iso-8859-2?Q?jHkdddRyXzk6OrOyCwrekFz/hGFQEvO6MCqPH4uM1pC1sheqmPS/x8e4tG?=
 =?iso-8859-2?Q?z9NBOKxmQe26YSjcL1If39LM7HTKxPKYFQ2HOW2wO337Ijxw1eu58oXSu8?=
 =?iso-8859-2?Q?QempBVy8uyRoyzR3eei4JC9GUcEmKns7FCkvyJZDGA70U7eb8AH733vieh?=
 =?iso-8859-2?Q?G1POhWc2/Vx6HvM3y/FGGu5al22BVpX/xYFH91Nl+e1aYKxPT5EF3HpXBW?=
 =?iso-8859-2?Q?rh0kEwWoHlPYnasyEZnKA+FIRHSXaw+7XJYBuw7CFLpH2EJdllv8K0zb7D?=
 =?iso-8859-2?Q?+Si82meB/pkRnhLXsoQY6b/+Iq6QTJU7CBlLqWa4EUoT6O13YsDu0bjeHR?=
 =?iso-8859-2?Q?9zDqCyVWkoDVqYSLt1X0vIc4MAexDu3KCJbKCN/irK/3mZnYLlrfB++Ycy?=
 =?iso-8859-2?Q?7GMFqLD4jTq31L+2kAcKrj9hAvNYQektiNIIjXeudrYtuEi7F1CS7tM6Jp?=
 =?iso-8859-2?Q?C8puGNJqKRJbvqQE1Ekiu3SFFdNMs8/IsegwrhH44Nz93AetNVeOlFFOBH?=
 =?iso-8859-2?Q?F+23Ghoo3D7rOzBy1jy3iYptILD9drqlUvu4GmcT0HJu5tVqzmozmmk6SS?=
 =?iso-8859-2?Q?zQFS/gYVvzE3pv+25LlnQwX3gMkiNqCcAY4au/Ao9N7m+rxA5KvdofYF6r?=
 =?iso-8859-2?Q?y/vUuX9mC5IaXyScMdKfXXO2siurS1/yG9g+4yraeeDr8BBtAo/5tOWPKu?=
 =?iso-8859-2?Q?RP7bQzWQ4Q6V4x0xX+wJd3fEGhPAC+1OO13Y2If3qbHdjZ95xVkWAqi6L2?=
 =?iso-8859-2?Q?BhL8f/79c2cMvNS/jFgqaooXVG2Nm5INd8G1DMSDKdm1fr/ssnP5AfVzuL?=
 =?iso-8859-2?Q?l3QzMM7BNosr6426mUNgge7oSM/OHnQmsCLuVnbdgP0odJWcPo9Dyp3rcT?=
 =?iso-8859-2?Q?vlX8OfKYcgDDgRk2MyVztfWIQfzZczXb2M02OGlbcV3SkgtxdaICUSFGsx?=
 =?iso-8859-2?Q?28sUX85GIl4qJK9aq+nolR8uuJuYp2GjUJsLFCAO5EAEcIBLNjJHSo421W?=
 =?iso-8859-2?Q?AopQGJhHT/vyJ5Gtb2UxGNT2yi7M/p39qvvhbf92bJ+RU/Z4NffR246dZS?=
 =?iso-8859-2?Q?4g1agLOOhmdgHiXLSgjzXNt6jrLc2HiQOTSTObcm0idsaImVwFygJHSSyk?=
 =?iso-8859-2?Q?+cyyivTxejpvJU515xCvTfwtjbkVveJw0+PEDoAmnzT1OmiOEB/4G0HVQJ?=
 =?iso-8859-2?Q?11M2/SY8K24RueOZM2HjAvU1GO5C5Xra0S0NPzLIjLOFglgMza5BTubkTq?=
 =?iso-8859-2?Q?ppSzlg86WMsXPlY6rNamsR46/pmXrCmUbdAjpazEe0JzKurvMHQDORbnvX?=
 =?iso-8859-2?Q?U+5gHQM9RMSqTLlTspeATe/RN8aJ5V5nM5Z0/ojqcCcoztOXmXmBz352xj?=
 =?iso-8859-2?Q?jbtzry3bvC4ct8hMDql2wTKRz/JqQophB+?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c434c55-2cab-4e06-0eff-08da6327ccac
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jul 2022 10:26:21.4424 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nnwEuA2waLXUThRIqPFraqg0nGmH8P9Rh4vKw3woyCQTF1rtiIQ0aqgM2tv47dZBq+S/xoSfvbK/X3/oTqUtEzqcNeMPVV/nS9O+hsE///o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3504
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657535186; x=1689071186;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tmKGD8UXBOccTszX3ZLIuzaRxXlYc6QQF1o25P0xExw=;
 b=K5q4o10eA6yqCTHkyd+c+GxlwQO9g7jTmx74pBwJunPGrCqev+tDE11z
 kqAnnJkRrYQ/De6S6iStE2nLeQ8JzHlZTwL6nqqVI4fIfQOD8v+0VA6S1
 qvjoG+oiqWI+pDjnyaX1qOiPkxOsxTAjJfVYhpYeXxYohK1/P8Db505w6
 UlGPzl0BZdRbIvmPcz072PqcsJm9Eg85WjTnVqHaSzaLC6bxuwdAIr79b
 Zng/uC/oPyoWwEd+K6F2UG9LPjCJ864YEi193pxGZ8YIR64BBtXI6aHFJ
 SmhB3ew+3/PeqVlwDVcIp92bzyKV/JZ2q5oDX40FBcCTWsPhEdJdMopsj
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=K5q4o10e
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v4 2/4] net/sched:
 flower: Add PPPoE filter
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
 "kurt@linutronix.de" <kurt@linutronix.de>,
 "paulb@nvidia.com" <paulb@nvidia.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "boris.sukholitko@broadcom.com" <boris.sukholitko@broadcom.com>,
 "paulus@samba.org" <paulus@samba.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "zhangkaiheb@126.com" <zhangkaiheb@126.com>,
 "pablo@netfilter.org" <pablo@netfilter.org>,
 "baowen.zheng@corigine.com" <baowen.zheng@corigine.com>,
 "jiri@resnulli.us" <jiri@resnulli.us>,
 "komachi.yoshiki@gmail.com" <komachi.yoshiki@gmail.com>,
 "jhs@mojatatu.com" <jhs@mojatatu.com>,
 "mostrows@earthlink.net" <mostrows@earthlink.net>,
 "xiyou.wangcong@gmail.com" <xiyou.wangcong@gmail.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "gustavoars@kernel.org" <gustavoars@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Guillaume Nault <gnault@redhat.com>
> Sent: pi=B1tek, 8 lipca 2022 21:23
> To: Marcin Szycik <marcin.szycik@linux.intel.com>
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com=
>; davem@davemloft.net;
> xiyou.wangcong@gmail.com; Brandeburg, Jesse <jesse.brandeburg@intel.com>;=
 gustavoars@kernel.org;
> baowen.zheng@corigine.com; boris.sukholitko@broadcom.com; edumazet@google=
.com; kuba@kernel.org; jhs@mojatatu.com;
> jiri@resnulli.us; kurt@linutronix.de; pablo@netfilter.org; pabeni@redhat.=
com; paulb@nvidia.com; simon.horman@corigine.com;
> komachi.yoshiki@gmail.com; zhangkaiheb@126.com; intel-wired-lan@lists.osu=
osl.org; michal.swiatkowski@linux.intel.com; Drewek,
> Wojciech <wojciech.drewek@intel.com>; Lobakin, Alexandr <alexandr.lobakin=
@intel.com>; mostrows@earthlink.net;
> paulus@samba.org
> Subject: Re: [RFC PATCH net-next v4 2/4] net/sched: flower: Add PPPoE fil=
ter
> =

> On Fri, Jul 08, 2022 at 02:24:19PM +0200, Marcin Szycik wrote:
> > From: Wojciech Drewek <wojciech.drewek@intel.com>
> >
> > Add support for PPPoE specific fields for tc-flower.
> > Those fields can be provided only when protocol was set
> > to ETH_P_PPP_SES. Defines, dump, load and set are being done here.
> >
> > Overwrite basic.n_proto only in case of PPP_IP and PPP_IPV6,
> =

> ... and PPP_MPLS_UC/PPP_MPLS_MC in this new patch version.
> =

> > otherwise leave it as ETH_P_PPP_SES.
> >
> > Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> > ---
> > v4:
> >   * support of MPLS inner fields
> >   * session_id stored in __be16
> >
> >  include/uapi/linux/pkt_cls.h |  3 ++
> >  net/sched/cls_flower.c       | 61 ++++++++++++++++++++++++++++++++++++
> >  2 files changed, 64 insertions(+)
> >
> > diff --git a/include/uapi/linux/pkt_cls.h b/include/uapi/linux/pkt_cls.h
> > index 9a2ee1e39fad..c142c0f8ed8a 100644
> > --- a/include/uapi/linux/pkt_cls.h
> > +++ b/include/uapi/linux/pkt_cls.h
> > @@ -589,6 +589,9 @@ enum {
> >
> >  	TCA_FLOWER_KEY_NUM_OF_VLANS,    /* u8 */
> >
> > +	TCA_FLOWER_KEY_PPPOE_SID,	/* be16 */
> > +	TCA_FLOWER_KEY_PPP_PROTO,	/* be16 */
> > +
> >  	__TCA_FLOWER_MAX,
> >  };
> >
> > diff --git a/net/sched/cls_flower.c b/net/sched/cls_flower.c
> > index dcca70144dff..2a0ebad0e61c 100644
> > --- a/net/sched/cls_flower.c
> > +++ b/net/sched/cls_flower.c
> > @@ -16,6 +16,7 @@
> >  #include <linux/in6.h>
> >  #include <linux/ip.h>
> >  #include <linux/mpls.h>
> > +#include <linux/ppp_defs.h>
> >
> >  #include <net/sch_generic.h>
> >  #include <net/pkt_cls.h>
> > @@ -73,6 +74,7 @@ struct fl_flow_key {
> >  	struct flow_dissector_key_ct ct;
> >  	struct flow_dissector_key_hash hash;
> >  	struct flow_dissector_key_num_of_vlans num_of_vlans;
> > +	struct flow_dissector_key_pppoe pppoe;
> >  } __aligned(BITS_PER_LONG / 8); /* Ensure that we can do comparisons a=
s longs. */
> >
> >  struct fl_flow_mask_range {
> > @@ -714,6 +716,8 @@ static const struct nla_policy fl_policy[TCA_FLOWER=
_MAX + 1] =3D {
> >  	[TCA_FLOWER_KEY_HASH]		=3D { .type =3D NLA_U32 },
> >  	[TCA_FLOWER_KEY_HASH_MASK]	=3D { .type =3D NLA_U32 },
> >  	[TCA_FLOWER_KEY_NUM_OF_VLANS]	=3D { .type =3D NLA_U8 },
> > +	[TCA_FLOWER_KEY_PPPOE_SID]	=3D { .type =3D NLA_U16 },
> > +	[TCA_FLOWER_KEY_PPP_PROTO]	=3D { .type =3D NLA_U16 },
> >
> >  };
> >
> > @@ -1041,6 +1045,50 @@ static void fl_set_key_vlan(struct nlattr **tb,
> >  	}
> >  }
> >
> > +static void fl_set_key_pppoe(struct nlattr **tb,
> > +			     struct flow_dissector_key_pppoe *key_val,
> > +			     struct flow_dissector_key_pppoe *key_mask,
> > +			     struct fl_flow_key *key,
> > +			     struct fl_flow_key *mask)
> > +{
> > +	/* key_val::type must be set to ETH_P_PPP_SES
> > +	 * because ETH_P_PPP_SES was stored in basic.n_proto
> > +	 * which might get overwritten by ppp_proto
> > +	 * or might be set to 0, the role of key_val::type
> > +	 * is simmilar to vlan_key::tpid
> =

> Didn't you mean "vlan_tpid"?

Yes, is vlan_key::tpid not clear/valid?

> =

> > +	 */
> > +	key_val->type =3D htons(ETH_P_PPP_SES);
> > +	key_mask->type =3D cpu_to_be16(~0);
> > +
> > +	if (tb[TCA_FLOWER_KEY_PPPOE_SID]) {
> > +		key_val->session_id =3D
> > +			nla_get_be16(tb[TCA_FLOWER_KEY_PPPOE_SID]);
> > +		key_mask->session_id =3D cpu_to_be16(~0);
> > +	}
> > +	if (tb[TCA_FLOWER_KEY_PPP_PROTO]) {
> > +		key_val->ppp_proto =3D
> > +			nla_get_be16(tb[TCA_FLOWER_KEY_PPP_PROTO]);
> > +		key_mask->ppp_proto =3D cpu_to_be16(~0);
> > +
> > +		if (key_val->ppp_proto =3D=3D htons(PPP_IP)) {
> > +			key->basic.n_proto =3D htons(ETH_P_IP);
> > +			mask->basic.n_proto =3D cpu_to_be16(~0);
> > +		} else if (key_val->ppp_proto =3D=3D htons(PPP_IPV6)) {
> > +			key->basic.n_proto =3D htons(ETH_P_IPV6);
> > +			mask->basic.n_proto =3D cpu_to_be16(~0);
> > +		} else if (key_val->ppp_proto =3D=3D htons(PPP_MPLS_UC)) {
> > +			key->basic.n_proto =3D htons(ETH_P_MPLS_UC);
> > +			mask->basic.n_proto =3D cpu_to_be16(~0);
> > +		} else if (key_val->ppp_proto =3D=3D htons(PPP_MPLS_MC)) {
> > +			key->basic.n_proto =3D htons(ETH_P_MPLS_MC);
> > +			mask->basic.n_proto =3D cpu_to_be16(~0);
> > +		}
> > +	} else {
> > +		key->basic.n_proto =3D 0;
> > +		mask->basic.n_proto =3D cpu_to_be16(0);
> > +	}
> > +}
> > +
> >  static void fl_set_key_flag(u32 flower_key, u32 flower_mask,
> >  			    u32 *dissector_key, u32 *dissector_mask,
> >  			    u32 flower_flag_bit, u32 dissector_flag_bit)
> > @@ -1651,6 +1699,9 @@ static int fl_set_key(struct net *net, struct nla=
ttr **tb,
> >  		}
> >  	}
> >
> > +	if (key->basic.n_proto =3D=3D htons(ETH_P_PPP_SES))
> > +		fl_set_key_pppoe(tb, &key->pppoe, &mask->pppoe, key, mask);
> > +
> >  	if (key->basic.n_proto =3D=3D htons(ETH_P_IP) ||
> >  	    key->basic.n_proto =3D=3D htons(ETH_P_IPV6)) {
> >  		fl_set_key_val(tb, &key->basic.ip_proto, TCA_FLOWER_KEY_IP_PROTO,
> > @@ -1923,6 +1974,8 @@ static void fl_init_dissector(struct flow_dissect=
or *dissector,
> >  			     FLOW_DISSECTOR_KEY_HASH, hash);
> >  	FL_KEY_SET_IF_MASKED(mask, keys, cnt,
> >  			     FLOW_DISSECTOR_KEY_NUM_OF_VLANS, num_of_vlans);
> > +	FL_KEY_SET_IF_MASKED(mask, keys, cnt,
> > +			     FLOW_DISSECTOR_KEY_PPPOE, pppoe);
> >
> >  	skb_flow_dissector_init(dissector, keys, cnt);
> >  }
> > @@ -3051,6 +3104,14 @@ static int fl_dump_key(struct sk_buff *skb, stru=
ct net *net,
> >  	    fl_dump_key_ip(skb, false, &key->ip, &mask->ip)))
> >  		goto nla_put_failure;
> >
> > +	if (mask->pppoe.session_id &&
> > +	    nla_put_be16(skb, TCA_FLOWER_KEY_PPPOE_SID, key->pppoe.session_id=
))
> > +		goto nla_put_failure;
> > +
> > +	if (mask->basic.n_proto && mask->pppoe.ppp_proto &&
> > +	    nla_put_be16(skb, TCA_FLOWER_KEY_PPP_PROTO, key->pppoe.ppp_proto))
> > +		goto nla_put_failure;
> > +
> >  	if (key->control.addr_type =3D=3D FLOW_DISSECTOR_KEY_IPV4_ADDRS &&
> >  	    (fl_dump_key_val(skb, &key->ipv4.src, TCA_FLOWER_KEY_IPV4_SRC,
> >  			     &mask->ipv4.src, TCA_FLOWER_KEY_IPV4_SRC_MASK,
> > --
> > 2.35.1
> >

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
