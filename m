Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A90157989D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Jul 2022 13:38:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 267ED41556;
	Tue, 19 Jul 2022 11:38:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 267ED41556
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658230696;
	bh=LuRMZm0aJ/1YpmvPLKqrpI+S2flzjlmt2sYIfsc1jpA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eDPnOwDYFRA5vSpkat+nCnpMIjkpnUgEcGfcSXRSf9jEgvpK28uiTpPi37pq87yPR
	 Oo1ZJfjrxeFI4XqUxDyPZk1Amz3nlBcJR2//GmfINf+4fZQRKYrQfPqIFb6kCuA9+x
	 5HH1a8cXWUOtt6H7W3C+r3hqHbpNn1PPyQh8eInhJxHiMbThoOfIoFV+1GNIYM+UdY
	 zMxALMTAzvBo5wTgXBgPVvAaDQHs6UWiyWDmo7fSbblPrELkjTcRJbfRXufTMeL+0I
	 czywHFY56QbGiz2HdaP++7h4Oyf4e0lwznepkmzi/dJqFSpQOQ6OMn/4rrGC7oHZOk
	 7t4VdcGoN7uiA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id woy4dHtjfzoU; Tue, 19 Jul 2022 11:38:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CCD524154F;
	Tue, 19 Jul 2022 11:38:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CCD524154F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A387B1BF8C7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jul 2022 11:38:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8900740186
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jul 2022 11:38:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8900740186
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iRe8nPlsD40j for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Jul 2022 11:38:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 599FF400CE
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 599FF400CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jul 2022 11:38:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10412"; a="287212054"
X-IronPort-AV: E=Sophos;i="5.92,284,1650956400"; d="scan'208";a="287212054"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2022 04:38:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,284,1650956400"; d="scan'208";a="547882465"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga003.jf.intel.com with ESMTP; 19 Jul 2022 04:38:06 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 19 Jul 2022 04:38:06 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 19 Jul 2022 04:38:06 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 19 Jul 2022 04:38:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b+4WqxiIlOWUR50h/PgH+Yfk7HpF2tbtvu8cIkedH9PYa0s032pci1K38DJlw0mekiel1/rH+4YHvhu4tdI0GtTwgmqfzS3ag3JnYngs6dpgTQL0TOUYt9SH+0FCxiWkS2/Man6uKcvDluIlGal7oY3DhtlttW9s4rahUA2GPDCr+zIEgj50jYtEfwNPGDcGwLeweiewAWoudd5gUKMcKXLy2JEOydG5PIUrR3ye4b0MMIIWKq5XpEfKQglxJMVOrDn5hyKTFSCOmVI1TOLv7h002Ssvkl8PtGB4HbKvurohzsqXPO9kegLRJ+kuTZCAwZYUf/2LGQLUeP8Hsvrthw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VjkLwk7pIufQzaxsnfZZh2kR7itSQmpoHxya0ZAzY5k=;
 b=XfBxP+MbSxWaWJWXFy06uzGS3YnvWxU6Fjncx1dQtq0/62/V3J2iur7tNnQUNMX+jnihil7xdlkrrkNsvq2pULoq96iZ16TBCT/q0jsth+yHzxDzF+ObUhxKMRxDpygR7MsqY3MSrUaHTjlq6CF/mSNOdrPFK2h5Xa628RbTK7vOgxIV8ldWtZriy/tHe0n6rL38+QAkah8lbG5rRXudZ2pfGwBQzzpZnpFcokMLnnWAifNbgy3cJMuWYvuTkozZfLj1JDB3fCtoU6pmXV0HyTUaGCuAx4XVj8CtPVHxc4+kELi2h6pI3O5ryewl5larDvkXHUxIPMRGPhfdHQ/3EQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN2PR11MB3614.namprd11.prod.outlook.com (2603:10b6:208:ea::11)
 by BYAPR11MB3430.namprd11.prod.outlook.com (2603:10b6:a03:89::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.21; Tue, 19 Jul
 2022 11:37:58 +0000
Received: from MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::b8b8:2535:3d39:d4e7]) by MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::b8b8:2535:3d39:d4e7%6]) with mapi id 15.20.5438.024; Tue, 19 Jul 2022
 11:37:57 +0000
From: "Sreenivas, Bharathi" <bharathi.sreenivas@intel.com>
To: "Sokolowski, Jan" <jan.sokolowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] i40e: Refactor tc mqprio
 checks
Thread-Index: AQHYey4La6PqxmE7lkulhCusN2+mwq2F0LVA
Date: Tue, 19 Jul 2022 11:37:56 +0000
Message-ID: <MN2PR11MB3614267971A6393B3A9980DC8E8F9@MN2PR11MB3614.namprd11.prod.outlook.com>
References: <20220608115248.403159-1-jan.sokolowski@intel.com>
In-Reply-To: <20220608115248.403159-1-jan.sokolowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1b48c2bf-0063-4c90-524e-08da697b2055
x-ms-traffictypediagnostic: BYAPR11MB3430:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sZ+yOMqAUV7pZzHgA6EMbV0VXvMTUJEUFFqu76oP2aVOFs2O9QFpRXVmmL+bf7s6UN9VObHZ2qfvYTlELXnydJQjiJDTB1mpgsFN5FBDC/uYH11PXB9oGAQ3e6HPgQ+vvLjs5ZBWhA5y4eBgpCDvfDmbcqcuOcxh0qnXbtV/kkfAClarE1YNnG1pP6O2YpGzIBiu6RBiES0wDb2wPoUg2xtzU+seOqyYsrMJaYrG8QziK4F5SGX2MwH13jm7cHs2FWqq5TNgD6G5VVrDUY6tcn7OaIR/GRt6xsxKU225RvXtjEbSqlt2kUVVySEW0/m/eOMSXqB5sDR1jPA/gvusQrJicT663GRwJrG4Bb4IG5BUuArTETyPyXVA+JZm53gcA72nrKqURJXmhpzPqRsQ8tDjBvSLvYnxrfnq97Fl84uTc1mYtfgg0SwRmAbeU9+tXH/Io6gPXS9ix6ExTRYW6tQJ4NDEYaZ7nsjhJdpUF+6Dk9UruMb4xaZUXAcKsOZIVgPCGBmRLBcDDz4eAEKSqvFY29xNrTLziv1D46nxHHevuiJSS9k/kF/qh9KpE8YJIrMeFvRHhOc3YjWloG85H9dNM23OHBmGmFZbz6QBvex74sqYfn3xkh4zEnJDPqNCoZN1bac8xxTdtjkiv+Z7VwdjBb7tpu39zMGnt7B3iKnc+aQC2n5wbKODKNTWBmkiFSVWH82zeHPxmoKfBi/NAuakMiJp2KwpLx+oc208Ec2jRouNXGj1G9gXEdAkN/LNTwb1T8SGwGbaAhctNgtVpoZi0Syceeo5tfbErtlZ4jk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB3614.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(366004)(346002)(396003)(39860400002)(136003)(76116006)(66946007)(66556008)(478600001)(66446008)(66476007)(9686003)(64756008)(83380400001)(8676002)(107886003)(186003)(4326008)(53546011)(33656002)(8936002)(26005)(52536014)(7696005)(41300700001)(6506007)(5660300002)(55016003)(38070700005)(316002)(4744005)(122000001)(82960400001)(71200400001)(2906002)(38100700002)(110136005)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vmpl+xS31YvU4WOGtNcc3KFCL2D1HEB0U4AtI3I7k5c+HFphaIoAPC23KfOd?=
 =?us-ascii?Q?fqycw/s4PTUkM+KKMc5R19kwTXWwTTL+6WvcqcyIi9mUsgtEz3vzyTF1KedA?=
 =?us-ascii?Q?0ymkh81fQNndssW9vcHp3bWipJOUa9/isYMaHNwQwxlP+fTONEWnHWDSdmWX?=
 =?us-ascii?Q?MyOpNO0fyxy7UDfdIHW8Jk2Ss8+whHBgXaeMGsbX8LFFOU204/7wQxdBo71B?=
 =?us-ascii?Q?C0ipPwUwVgDSdcEPsPpxtEEEK5ki616ka8goWzhiynJF23L02S/2vrBK03KE?=
 =?us-ascii?Q?lujSm3uJ39BQC8Uubi4OuhaZ8up1uUuazMNNqzxWzsf6jJ61A3B4RKVPLN+P?=
 =?us-ascii?Q?9WDjv1NeiXj8tHdg8653MWHim3xVsrKChaPAjhI3DAqx2dsKQZIMVLz422E2?=
 =?us-ascii?Q?UdOUnnqoSE68VGutKZSusYHJfMgGEz6yKSJSK+SIZwvpbkJBbEP+z8cY4WPB?=
 =?us-ascii?Q?Y9HTt/XjRvPHm1cUFAORW+hsczogqOPPM7YMnsWx+MaTDSoK8D2cTaF6T/ig?=
 =?us-ascii?Q?LztBETSw9j9PCYSmqUF55EgXkpxuypcvSRiZDScneip959a2GBdEjRaBGPXU?=
 =?us-ascii?Q?djZ0XNIxyVPSItMCopiUjCNJDSvk9gE0fi6TOZAaZfiLbcX8RFo9NFbbwiJ0?=
 =?us-ascii?Q?k4KJEQdVq1KhHEXh5F8MkC3kjETEUop3aE++gQ4Bep3KPHY5Z1VhEZ3gK1eU?=
 =?us-ascii?Q?Pl/Qabnz0geFGSg4Uo8rRIKU2DlkT/Nu/74oyjs2oP3otMYxOZjEET8FuFeJ?=
 =?us-ascii?Q?EsM2TFGAv4tO744IgXBv/697Ldp4ypQp+hpNPxetjr5IVaaOPJ3LqAt6F/Mf?=
 =?us-ascii?Q?Lb5FM/mJMJg2rRX99CcsqXPfQPz8/U35COQQ9drxUHT22w74tpA2Rs0pWQrl?=
 =?us-ascii?Q?0S659RiuxkrYxuvA8aSUwL8ncHX9Rv6GKQdUgInCq5rRfnf+OXc7+XWWVLFJ?=
 =?us-ascii?Q?965VX0gjNiAnBTYtCjF+wBdBasx/s1785x473mYoEkMzLm4R2XbHe1o2rbQb?=
 =?us-ascii?Q?W7NUjYwL8Xq/TNo+64stRzsCoswqew0q6YJEuQ/edZnsnYYHQ77VmOHoNUYP?=
 =?us-ascii?Q?M9gTZxlgOoZg+RJSPE2g/OlZbYxSiDYoqABBwkwAVsz6qY+/JEU3W0pItrGh?=
 =?us-ascii?Q?/5IrxGkw77gxA5CU+pvknqVR2rLh1xNY4XYm8BRa5vO3bpQg+KukhWHbcUvC?=
 =?us-ascii?Q?NFrsFL8xaHdwvrO0fF348d1a5xD6JF6Dr5t9PayewIjT/oLWBVqC9WsJEOu+?=
 =?us-ascii?Q?V26X7qhaJQtexx05gswG8vOiqQp3EoTAduUz9Wb3VtPe9jNwpDM1LjE0ukC+?=
 =?us-ascii?Q?LO4418yz5Eq141ObfFK4fmHpFQVTtGxnCVQSZrlPhGpKcSh9jz7RVEqwRMCH?=
 =?us-ascii?Q?rVhNZx/2j/YqwmYN1i0Z/v9JQSpke/WxH0drUgMhH4K1pSRYQg0Xy2V0D6Ef?=
 =?us-ascii?Q?tq9u3AY9xYg+AGj1mUznyDR5eimIHV0Etg4VdB1k+jaK2bUzKS2cXwUB1srb?=
 =?us-ascii?Q?TyCfNjRMbpnvYS7OyRM43l7HYbWvtR7K+UeBieAzPkI4Z6ToKVm/4Y2t1uCF?=
 =?us-ascii?Q?gwYzHEKLy3kILSKcaxGcQ0+AizHMFGZo0chfE7wWvr9/cqnSWXQe1l8FgUOa?=
 =?us-ascii?Q?cA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB3614.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b48c2bf-0063-4c90-524e-08da697b2055
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jul 2022 11:37:57.0077 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: juYyatlj7MUAtYPUQIk1XazdafUZ+veTDTSoSyOEICgiCgSMmupF/sQHH4Kvr87cdPPiW+/ojT2jfA6GuHZ/7a/rPF5B/ZltLC7+hZn8UKk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3430
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658230687; x=1689766687;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lbwLGVU1LrC3jS/eVV+N7aLyYqIq7Am/KKIhEj6CuvE=;
 b=U0vUGY6nYdnVFj4wVt4/dzEdzwUfVUeoAl+fETZoG8IKz4Ts3R5LdyUC
 BYcqMpq+JvXhkqLZLPpuq7JUTq70+AGJWPuTEa95LyrPpf2nJcFR1LPtG
 icrOBf+Fa+VC3V6rp3CZsnmvSXhq535dVzd+9dXrvLnoCnuY8qa+P/1fe
 Igvewj+UtoK3JL/1G9QBB95m/ycgHYcF6T9rbsWfr4SWtGV/4Mohn1orv
 PpBgbFOPPQq8tKtx26I5LsadVCO8RAZOt2ANb7L3Hz+aV9urJF0y/pEvQ
 GgflCTUdcHFyk6K2HgdshGUpwNF9zZ5QBV+6V3Nrx0NTmqwNysXx1v+QT
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=U0vUGY6n
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] i40e: Refactor tc mqprio
 checks
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
Cc: "Patynowski, PrzemyslawX" <przemyslawx.patynowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jan
> Sokolowski
> Sent: Wednesday, June 8, 2022 5:23 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Patynowski, PrzemyslawX <przemyslawx.patynowski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v1] i40e: Refactor tc mqprio checks
> 
> From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> 
> Refactor bitwise checks for whether TC MQPRIO is enabled into one single
> method for improved readability.
> 
> Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h        | 14 +++++++++++++
>  .../net/ethernet/intel/i40e/i40e_ethtool.c    |  2 +-
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 20 +++++++++----------
>  3 files changed, 25 insertions(+), 11 deletions(-)
> 
Tested-by: Bharathi Sreenivas <bharathi.sreenivas@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
