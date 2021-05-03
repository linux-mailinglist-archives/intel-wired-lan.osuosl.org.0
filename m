Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB349372207
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 May 2021 22:51:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 355D3400DB;
	Mon,  3 May 2021 20:51:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R33TcLauGT1l; Mon,  3 May 2021 20:51:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 33B5B400C8;
	Mon,  3 May 2021 20:51:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 14A7F1BF288
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 May 2021 20:51:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1029284311
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 May 2021 20:51:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xH9XjLgbmuri for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 May 2021 20:51:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C43D68430B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 May 2021 20:51:04 +0000 (UTC)
IronPort-SDR: h9XKCegu2/W5zKNYcprjn9rnzgOm+dUBgyTscEXDAImzgIRGbcEG6Yflwyvya7WYyPibdcAzQY
 5ysi99Dd23OA==
X-IronPort-AV: E=McAfee;i="6200,9189,9973"; a="218630269"
X-IronPort-AV: E=Sophos;i="5.82,271,1613462400"; d="scan'208";a="218630269"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2021 13:51:02 -0700
IronPort-SDR: PsSgbsgHjyDijV8gFjtEvC44IfDR4C8gpI6DLA9FpmpGKmqJCNWvUlbkI25dgcqsCtVofEqnN5
 W9O1kbjD/png==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,271,1613462400"; d="scan'208";a="405823189"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga002.jf.intel.com with ESMTP; 03 May 2021 13:51:02 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 3 May 2021 13:51:02 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 3 May 2021 13:51:01 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 3 May 2021 13:51:01 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 3 May 2021 13:51:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q6XvZFSg1ncndoR7rAokp6z+1/N5svqQVyZAJ4FNNsPE8mcemB/WA8qy+No/ZDwI2SROfn8dyXNeu+FFhOPivCPmp+7jHv71d0w2NecBkxLaVhJlNaczBMiBz11MlviFmWTJG/RFvb58ubPmQW8paJkmXny3qfjf+VB08Z/ATS8ciT4x4MFfPlfkkI52KKAePJPae3UeOqaCzskP8XfpybZ1X/5EuUpvm9mwlZGpFfgnqklA1Xl01KiAb6nhpK8/6pPhFBAdjL7ua2V9RqODMnXZDuzzBhiSEueLKCDpm+OfQdErQ4w47yu1EvRX7ntSwmoo+tiHI/gnzrezjy4bWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5dUVJ6keGIWJc4q6QiGcb7eilId8WcsjgoHJKFXSeIQ=;
 b=bcK0l5GczG1r10ND69pYElMpcdoJYySSKKO1gLH9N3xgU9nmsjox+smffsQrWY4oUXfFn/fcVaurpGVEqbhMx+6oWIvpDCTWcFQQAess5itEAI1+NRQAxTccH7o1iHjkz7/M/Tq5IAA4fpdkT46XdElHYM1Bw9BXlVPgzoJahXlkp5aEXBNxidJeQvgU+267HibbECT6dcF0yO0dCtma5mDJgYgKM9dq9Rbktzax9nnplvZkizM+tMdeLfT3kRLLU4RhvN7nd5BQwEJ7eJFRiDpkw/oOmululdnWfa2J8yZoAU4OVLiSskwbMews3gg2AU/NpyF0f+cHnFqCNVSmMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5dUVJ6keGIWJc4q6QiGcb7eilId8WcsjgoHJKFXSeIQ=;
 b=hZ0fbIZDglyr3Iin1XlOHP2ZCFWC/jD8AwVmf3klUfbcR2pgXiS27/PZfxk+r8cxbGIexRACrI7XKzh111feiIcOMwlTARtbAHbQOXkF8Ct9x6Btc5+aTor14hIrsmd/iCZ2V7KZbo4wNxjKHCTcR+mHAurjvvCz9TVxqOQSVXA=
Received: from MW3PR11MB4748.namprd11.prod.outlook.com (2603:10b6:303:2e::9)
 by MWHPR11MB1246.namprd11.prod.outlook.com (2603:10b6:300:29::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4087.38; Mon, 3 May
 2021 20:51:00 +0000
Received: from MW3PR11MB4748.namprd11.prod.outlook.com
 ([fe80::a995:ea7a:29cf:d212]) by MW3PR11MB4748.namprd11.prod.outlook.com
 ([fe80::a995:ea7a:29cf:d212%5]) with mapi id 15.20.4087.044; Mon, 3 May 2021
 20:51:00 +0000
From: "Switzer, David" <david.switzer@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] i40e: fix the restart
 auto-negotiation after FEC modified
Thread-Index: AQHXMHAitMFyrXANL0aZaJVkohg6aarSVpzA
Date: Mon, 3 May 2021 20:51:00 +0000
Message-ID: <MW3PR11MB474809C402E7B8363FFCC36AEB5B9@MW3PR11MB4748.namprd11.prod.outlook.com>
References: <20210413141940.3456-1-mateusz.palczewski@intel.com>
In-Reply-To: <20210413141940.3456-1-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [50.38.40.205]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6c809ccb-2816-469a-b4a1-08d90e75289a
x-ms-traffictypediagnostic: MWHPR11MB1246:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB12466793DC9D8670FDC4E11CEB5B9@MWHPR11MB1246.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2043;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 88zXYTF2277TEBzF2V6d+Z6moJItM8ozJw1E+O8x0VBuhGYu0aXeHPqI7mnCI+ePtIIMxgolCjBT8N4KkoBYMUzW7Q2BLOYMg+b9MmJjFp39Cw0qAEdxUVC7lScmSStVGlY+QyKJdWzQ5Z6/YEG7P7SUa9gmwHgUq/PlZGeYsuwockTQ4Azmk5dgIQNl/kybkJtB25r4wFlI62Jf7iGtzzqZi1TJ2PMIjY9n3MvBsqkYNr8crGn0cCqEpG/4/2DiI6OdE2TLC3w3jJM/rRZsaaztDamvHJ9W0C/tBAGJe5Ruz0qo3Af3Hu0nj2qyJEVlgiwftD1L3kGLHBG8ByXm1WprUR3MwGCL3g5+ky7LbfCPoMjxo1puIifCCTGgVU4wztizg8US2POkrQ8TLuGh0vUd8/AzsNSxaXfTaOtx+JZnmYSUh6/lXVrIDbc5Hl2wMGLo4J9PPYiUkS8Iyx3whkmJtGnWYy3rZzHB8iqPOE6dV0+v44eNAQrDxfgH62fbf3THjyll7JhfPIssXTIHDSJEdX+8IK6F/fWyb3SH9nggSzzWKTMZJkhhMSAupVRnNYmnUaX7CfuEAtI7JT3tFsuTkd4IsQwd+hMMghAo8NI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4748.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(136003)(376002)(396003)(366004)(39860400002)(66446008)(71200400001)(38100700002)(83380400001)(2906002)(54906003)(9686003)(86362001)(316002)(7696005)(8936002)(64756008)(33656002)(66946007)(76116006)(66556008)(8676002)(107886003)(110136005)(186003)(122000001)(55016002)(4326008)(52536014)(478600001)(6506007)(5660300002)(66476007)(4744005)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?RCYt54yYsODoY6qtEptn8e60EJx2s2yGkes00lUs8WTS+KcVJcDlyeS5Z0Tk?=
 =?us-ascii?Q?MbbqaqicaEjp9c4k75lE91nCnEOCmQGBsJ4Lje7ynMcVmdAh8HHuekArOBHZ?=
 =?us-ascii?Q?NvCLPyWljsh+j1wVVA7KnIDMSOWR7pE06/oC1okuL377Ra23DSWS/RYqjbOQ?=
 =?us-ascii?Q?/1MPI1OvqdG/fJi6cHRV5aOm1ujN1clfMKFNZhhUt405tIEo85W9m5IZ2so6?=
 =?us-ascii?Q?HGfKYk5D8lFPTiUvTJZSW8yfjPcWFOA6amTHdUJURISIhMBojJdqjFyTQlu/?=
 =?us-ascii?Q?09Cqkt4Gj6gC5uP5WTum0JFUJdopU75U08Pk/beXhJpO+Jsx9g0ADQ1vBFQo?=
 =?us-ascii?Q?HarEWekKrBLRMBa4vC8SkeBxIuWXUVchpS5xnkuC1pVqvpX6Jf/GOJfbX+Js?=
 =?us-ascii?Q?wNnYYSeOzKI92+meGYGJQ219wl+PnjsM+E4WO1qNtT+AvZZUZAW72qNlcnHe?=
 =?us-ascii?Q?OgnXTxTTjFaQXzSIitcFanJdniPUCtIlUNo5Ty8lXsQ4aL3B2e/h9ijEH7/F?=
 =?us-ascii?Q?KnxEziu/ZRUyY81bgWZxFOHhlGl9p0VHMqlZJxtbEN2c/vXGrK8nmSDi4wgB?=
 =?us-ascii?Q?aYE0L2DLYuKRkghypBxuZNDc+/M9B8MTsV44x9IdU0A8AYTbFejylj+SnVCB?=
 =?us-ascii?Q?V2q/vTjJIsRAL6vl4G+xEwbAN/opnVRTfzymuWY/fAG0KzcA0PcZz2OKXxFi?=
 =?us-ascii?Q?2qi6SnXL5bsB4kIsFqLtcZN72/Fk2LIWewE78EZq/ZNuFzIdP1M4S0fTbK1x?=
 =?us-ascii?Q?Xt6fOLq/WGCaI8kVhripUZALhoBmhhDVpuseFVMB5oQ0c439b267oKzaLkRL?=
 =?us-ascii?Q?du+WRJjNY9PBwkxsnTWubMl7RveehOJ6ZwmK4AkNHiN926UKG04NW5S5g4fT?=
 =?us-ascii?Q?Gce6XEQ9QF/gcbdqgZDIVwsyd0enZBAu0TYj4Hns+alSScHDLxcdYkPxF6GV?=
 =?us-ascii?Q?ZYjKy/qp3O/XH42et0dnCE1hOm/V7PCOzO8S2lM7O7PFk7fMc7CnJiy5Kel8?=
 =?us-ascii?Q?4PvLPoho9afQLa0CkR3EAjuMo3baxoCyalMGkuiKhvEZrW/DzKv34WAg0Bvt?=
 =?us-ascii?Q?zidWfPPQnzu6/1EhODhGlpMRODGjOOK5kzCP//ql2wid58UD6N9ILopPUXDE?=
 =?us-ascii?Q?8lTbKLZDORRCcoyg7q8tfEVAROeY53Onf4ymFLIEYda9uOTyGTnrkwPBsAHo?=
 =?us-ascii?Q?HcVoOIPbOXOJUKmuxmMsTqDpHyZWGrp0tLqTzABllLsIhnAV3INNW0bJqP9x?=
 =?us-ascii?Q?SMXJGUAAB+mdZHWXK1B0al0V7/qn7BykX1TUQrQJJKRFSKsdP7pm0KEhtmJF?=
 =?us-ascii?Q?VAY=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4748.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c809ccb-2816-469a-b4a1-08d90e75289a
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2021 20:51:00.4517 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xpYu4vkxwL1G/u3aLUva6F4m86SkLpwxcf400PRee94K0XTh1/GzXpUrQRsjjjOOYw06m3E24UIhIXYY+0Usng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1246
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: fix the restart
 auto-negotiation after FEC modified
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
Cc: "Gawin, JaroslawX" <jaroslawx.gawin@intel.com>, "Palczewski,
 Mateusz" <mateusz.palczewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Mateusz Palczewski
>Sent: Tuesday, April 13, 2021 7:20 AM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Gawin, JaroslawX <jaroslawx.gawin@intel.com>; Palczewski, Mateusz
><mateusz.palczewski@intel.com>
>Subject: [Intel-wired-lan] [PATCH net v2] i40e: fix the restart auto-negotiation
>after FEC modified
>
>From: Jaroslaw Gawin <jaroslawx.gawin@intel.com>
>
>When FEC mode was changed the link didn't know it because the link was not
>reset and new parameters were not negotiated.
>Set a flag 'I40E_AQ_PHY_ENABLE_ATOMIC_LINK' in 'abilities'
>to restart the link and make it run with the new settings.
>
>Fixes: 1d96340196f1 ("i40e: Add support FEC configuration for Fortville
>25G")
>Signed-off-by: Jaroslaw Gawin <jaroslawx.gawin@intel.com>
>Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
>---
> v2: Fixed fixes tag
>---
> drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 3 ++-
> 1 file changed, 2 insertions(+), 1 deletion(-)
>
Tested-by: Dave Switzer <david.switzer@intel.com> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
