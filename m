Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A249E40D2B9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Sep 2021 06:58:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1308A607AF;
	Thu, 16 Sep 2021 04:58:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3-c8aJXJGzNi; Thu, 16 Sep 2021 04:58:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 09CBB6077F;
	Thu, 16 Sep 2021 04:58:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 350321BF3C1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Sep 2021 04:57:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 18866406F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Sep 2021 04:57:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MJB1FHgWPNqn for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Sep 2021 04:57:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D72EF406EF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Sep 2021 04:57:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10108"; a="244859744"
X-IronPort-AV: E=Sophos;i="5.85,297,1624345200"; d="scan'208";a="244859744"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2021 21:57:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,297,1624345200"; d="scan'208";a="516644054"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 15 Sep 2021 21:57:54 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 15 Sep 2021 21:57:53 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 15 Sep 2021 21:57:53 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 15 Sep 2021 21:57:53 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 15 Sep 2021 21:57:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VpGA6hFM7m/TZClRnTV7504iLLgZcGfcKRTqzcOITPOyNT2+vZSTWUxEYeNpSGQvWGPHK++Uan3yfXsiMP29iqyTqEBCkmItlpUd2OgJvA1N50ep9TBtZiW0xOFQ9rRoRE6C/K02RRlaJIFhFD599RZH14PCg9MWoyrFsH823CurFcTDvyyQP721JTny4gvyoMTmWMFP4UosOlgTv9Yj3EgefHFdHCTZ23cyOlCLNrJjk/FJlHNVeiHZqaxelOA3KtZ+eyJb1KQvcxu588b5eyUXnvTehk3dyGBxi1I+mrIgnhYDF7sDi7/qfiv2/Pz+9KSU0KuZeBWih7Kjj8+DMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=aZWaUXM550uZkDyd2aHaoWJhDv1xLrbuTvKJQMcunbQ=;
 b=M/s50XvaN1d8O9Cw7Vey8tf4kjhpTuSOfVEJtQtjbmku6Pf7ULVDNjLRIjt1JoAmrxRWpc6hRN0OkIFzPepQQ4SLtzg/kpHVN7OGj/9kxPPu0gJBR2x8QOueTjjccx8YSYCmOKavjOCci8s5uXglElBvCSKA8lRTP+wPVnzsbomZdQG0RsOJH3c0f9F+8K0zksGZvMugIEfEGXw6SMfguatwZXcW4RSeapAdHMUbm9TqFYmnUu/+Npu5A+z5YUI46dlA7z8Sh+2vmN9K6XZr3OALWmzvoIgCb1sVCb7my80zBeBIv2KYNi5wanQltX+YNSpjXHGOh/i1bgWZ3UqdGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aZWaUXM550uZkDyd2aHaoWJhDv1xLrbuTvKJQMcunbQ=;
 b=WzwV5VzBrR8QOlMiImo+/Zo9vWXywj3+Y3mrjhXZHaLVUGvQxXMloVz0Dgfk0O2IkXEl74HokIyW0w87FoJGnhL5jusP2Xd5F+dBHVgjMlGELzTb3KdKNRHMZJu5DTlqGZd+Wj0UbiT9BB25qqXpkmbtx9TVEaHmueDgsmuk7NQ=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB2696.namprd11.prod.outlook.com (2603:10b6:a02:c5::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14; Thu, 16 Sep
 2021 04:57:52 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::90d0:abd2:bb85:56e2]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::90d0:abd2:bb85:56e2%3]) with mapi id 15.20.4523.014; Thu, 16 Sep 2021
 04:57:52 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next-queue v4 05/13] ice: introduce
 ice_base_incval function
Thread-Index: AQHXmHrc8s6urLd330S9DFDtrSPwZKumPXJA
Date: Thu, 16 Sep 2021 04:57:52 +0000
Message-ID: <BYAPR11MB33672F135EAC0636EF9654D6FCDC9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20210824000158.1928482-1-anthony.l.nguyen@intel.com>
 <20210824000158.1928482-6-anthony.l.nguyen@intel.com>
In-Reply-To: <20210824000158.1928482-6-anthony.l.nguyen@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 513feae9-c40a-4098-88ad-08d978ce8a12
x-ms-traffictypediagnostic: BYAPR11MB2696:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB2696CC095365717EFFB5EE3CFCDC9@BYAPR11MB2696.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BVSH247956Lk0CPANWXH/ZjY5xMxErgZ7HZ5tMGCWpL5pLbyBpDpzKgvzduH1ncrhRrTfXxaekng/xlLCu0i6rnS8OnZq2pzRlgyJJ7PDPuGfg8Nc9rSuyPu1gpB+VZf+NULuqKGuC/mKXgzi5ny+hhbyXuANrMGFzDicgFRyt5seHiDAggsafRm83GKhnzwZPCI767FiqFZ7U/J7yJq8sjwnIfS+euSuLQcecVAwqeA+qDXpGWzV5nIaiyrcd7vKP/4QvvE6QmeZrElbKVYbau9iID6xTTgikxFV9l2sxYqvYhI7t3JNPQ9M1QM07IlFX2JcsKFL/OD85cwxUABd8zTkAtqCokpPM5ckom3gfjN0fdDdCnxyyPIppFYhTV6KuAv2nTDwsaLozS1AmWeiDkZ87G6Ek2naBad/iZj3WtAU1KzA9aIz+vFl+GUZ19RcPX45WhQPCGkv5cgbz1qMZBW+CyCMNPlPgWRzzmonmvLJZ8pWeCw00M3lo+/DSHXdFD3MgKFELtvulUSjiHabqxBKCnZNRfcY1QIh0wLTYoX2Z5PBZe95L6wTWNpU+86ifiHwZaVyCVI2NJIK1r4SJCfCrKAgTKCegD7sEkFczTUZsCp5qmXDb/IP/6TjLrIFA8gRXDGJfYZ3TwLRaf4VLHhJ6yQpNuGqJnf2iTHQVrMHyvN/yKVAlC0KBdJiIAlqUIz77i5nP1YWDrUE5nXCA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(136003)(376002)(39860400002)(346002)(396003)(86362001)(9686003)(316002)(83380400001)(76116006)(33656002)(2906002)(8676002)(66556008)(8936002)(66946007)(7696005)(5660300002)(26005)(66446008)(55016002)(71200400001)(6506007)(53546011)(478600001)(66476007)(4744005)(38100700002)(110136005)(122000001)(186003)(52536014)(64756008)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ge0rBQKLlV0U/hDldPp7vkCSl2dWcCh92x8gX3tqHFBBeBq82XY4Lu236F/U?=
 =?us-ascii?Q?LGevBLmYYjDnNCy0TyRThgcDgaAu/ijpRu9bPGP3ltKPoRL33VtzaLOjYyzv?=
 =?us-ascii?Q?MnD4Rrc9/qq7IIbTMOgXDsXW2PnPRJiB7+6iJueNhZ06uWvbZlW6nr85A1HL?=
 =?us-ascii?Q?QS9i3xAYaF7StnQeRRodY0gXcYG64G2qibZ9aLFFud5gxMbu3ISSKNnTYCn8?=
 =?us-ascii?Q?vep6gPbzuZmaCNm99cz3lgONVDbtqOJgM6C92TDfXerwe1V5TYE7X7XQtdns?=
 =?us-ascii?Q?6UyzT6QpngYWvgH5eN5cq5uBrWarcV1XdLk5/eZV5y/H6hOZsr6rRV3N/woU?=
 =?us-ascii?Q?1vumkKl+HIIEh9j2vkWvfYiXdPsNEHzQpNWUqLmGQo4OJp0j2LNgRkm+HCbF?=
 =?us-ascii?Q?JUgo8LD1HgF2x4Jgsp8QiC2vewCi8fRG+cB6AyKLAkAMnBbKW8YVGKHBl+A5?=
 =?us-ascii?Q?Xs4fDXvnRxT9NoqE0f+YduH39EPb1EH73Ai1Pm9ncMNo5bV58gTNB9DwMcN1?=
 =?us-ascii?Q?BlyRHZHcE9w3Qc1VVvt1LbNHoQBe4mneaSnVVPH6px4O3nduWNVxkCMhxKaD?=
 =?us-ascii?Q?WLnPRnzKHSwHrlzyCLGMY0YFXuStQPqm0iTkxtKZFyQG4Gnl6Bh0oIhVPOPj?=
 =?us-ascii?Q?5+i86lX+FhXBfBqodNgxLBDskG0uKqPy6m49RYNUOAw4s+XFsWPQibsRUY5h?=
 =?us-ascii?Q?C1BL6SywB79ASkGrcphnFzoWu5jJJMiPJXWBoTGJBeGnjWtRalMfXxsg1Ia4?=
 =?us-ascii?Q?cU5fUtDB0AyaKcNddi76idFxs1RTLajHcvVSjFr66K8H2KkLDNGIrclRnDJM?=
 =?us-ascii?Q?R/JA67tmX4ASPSfkVdvwUSVoEVBRuhRAPt4YvuP3hsky9UssJvQfen66Jk9j?=
 =?us-ascii?Q?eYeVVVSBpYGyZxBp+e2W6VOZOhScHIp+ctEEusmGqhXSuSAMaA7cKO3pXGxf?=
 =?us-ascii?Q?K8F505J47hUCmSNqtfEtNVSz0VuzpdglsqWE8yVNqtlc84a9RwYBgeaw5fHJ?=
 =?us-ascii?Q?8HgK4j1sKh90p4zaX+TPp2ZnN2lCEL8l3HA8XRyqcylYVTGJKSNAyGhVPtCN?=
 =?us-ascii?Q?hCEzIbqx/L84aMB9kb9lZ+k2sKIYXI5+G3IxSebjmTvxJ/rycsRFyTEtq0MH?=
 =?us-ascii?Q?bRhayjPhJWsAI23m+7vfQIe+ir8e2ZUio76POooe6cMb2r4zURlR3Z6ZRdth?=
 =?us-ascii?Q?oskydTgiRCTIZPZ2l9YpzEyW+Q11vzZBeh5fvCScno6xK6JQyJvZ1PuqHXGR?=
 =?us-ascii?Q?q8ZNBqfgMNiqYaYSZuZawSmF0EeVlC6iwroCBIUJ/knj2xOd4gbo3WT6+TNm?=
 =?us-ascii?Q?7z8Y/O3RZt3j0daFb6RjIHB5?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 513feae9-c40a-4098-88ad-08d978ce8a12
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2021 04:57:52.3353 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: upOXyfxFgHDSCx3CigWLX3eqhJQksVkQXXy8yOPieA2qRxC5UuooOi+yvyCknLETgRwTs/Yazfj4pTM79XPw/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2696
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [next-queue v4 05/13] ice: introduce
 ice_base_incval function
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
> Sent: Tuesday, August 24, 2021 5:32 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [next-queue v4 05/13] ice: introduce
> ice_base_incval function
> 
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> A future change will add additional possible increment values for the
> E822 device support. To handle this, we want to look up the increment value
> to use instead of hard coding it to the nominal value for E810 devices.
> Introduce ice_base_incval as a function to get the best nominal increment
> value to use.
> 
> For now, it just returns the E810 value, but will be refactored in the future to
> look up the value based on the device type and configured clock frequency.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 18 ++++++++++++++++--
>  1 file changed, 16 insertions(+), 2 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
