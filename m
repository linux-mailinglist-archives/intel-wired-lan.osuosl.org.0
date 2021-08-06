Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CD6A3E2962
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Aug 2021 13:19:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 07B48826FF;
	Fri,  6 Aug 2021 11:19:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dhd3-rYHau73; Fri,  6 Aug 2021 11:19:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0C9AC825CA;
	Fri,  6 Aug 2021 11:19:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5370E1BF421
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 11:19:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4C9E5600B5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 11:19:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kbZEycfIFg-Y for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Aug 2021 11:19:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 162D9605B1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 11:19:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10067"; a="236329852"
X-IronPort-AV: E=Sophos;i="5.84,300,1620716400"; d="scan'208";a="236329852"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2021 04:19:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,300,1620716400"; d="scan'208";a="420700554"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 06 Aug 2021 04:19:40 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 6 Aug 2021 04:19:40 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 6 Aug 2021 04:19:39 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Fri, 6 Aug 2021 04:19:39 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 6 Aug 2021 04:19:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EACk8T0SSmrWG1r5V7CsemVD58OeQT6TyFo35qpoREn6TR3sRIAJMBQCCqw3WfyUcaSFCSReqhrTl+NzDh0AAL88YoI+/9tzIAF336m1zyZvvmtj9H8CIS9GsnI/wcmHoo6BMqUgBz5MlGX7vjjjttTtbWOqbT+nuyeJzj8J6iiKs2nJ47rQLhF+ZLGIUeQx8pBk7YVhm5r2dBPWuZgUGqRuhRxFPN61NLJOnUA3rFOj2OwjttEvoMUcC1YQ2ZHrldE5AwUb1fartF2tI5ayzylXlwZojTvZhL0NbpKQZQvjo71NsVVuEYZYoKUzfuqp57E2GHa3nPBd03/aldF4GQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pXAQ9Mia8gj66SRPO3EucFVQVG+6Zslvt/TjvmviidM=;
 b=K7Qr8kKC0QJkLd6teSHNEoXW5M7FNr1dNpLfzEu3NULORAS71Y60UzN5jabqQuSXg7x0z+8on5u3ioX8tr0C+1+0d/6dMI2rtHoJuPVCL1JX1k1exKSbuSoHaqaiZcRHZDgFi0c9k89g5oTfSsMqqmHzzpe8naF7x8JZyT6MdnNjJaN+g8umr+MRqu9tcSxxqF3RuhFsq1A6Is62zKxgvdYtbF1SQ/zKx7jLgYTE+Ht8grKKVPpLQV9z1uamvUfRRWomaPISfs/3tNG5YSLbMITvHdJyqUQmaUugK356ID/v9jXfng4n1F05gFolDfmB/wXAqxC6WK1mfNcr0051Og==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pXAQ9Mia8gj66SRPO3EucFVQVG+6Zslvt/TjvmviidM=;
 b=q8hhMb9bcbPLomdZiTVLRXzRCCmGds5hv+Z8og1+OUPHjo0UlUhOeMwk2udkkBpq1lNVkk2SaOiqFCJSdAyU1Dbr1otqfD3e8bwJsYz9W9Kbf/x1+C+61HEV5N6OJAUFDpYe54t9nJC4Kx2NAbdWr0TdCfh9XU+aEd9XdPtwVX0=
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.16; Fri, 6 Aug
 2021 11:19:37 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::2436:49f3:6552:681c]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::2436:49f3:6552:681c%7]) with mapi id 15.20.4394.017; Fri, 6 Aug 2021
 11:19:37 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "G, GurucharanX" <gurucharanx.g@intel.com>, "Venkataramanan, Anirudh"
 <anirudh.venkataramanan@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: Prevent probing virtual
 functions
Thread-Index: AQHXg+oarwmhqt1MpUW+HHmtsm2Eu6tmDrQAgABTK7A=
Date: Fri, 6 Aug 2021 11:19:37 +0000
Message-ID: <SJ0PR11MB5629B347F3514438C1D6C7F7ABF39@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20210728193910.644656-1-anirudh.venkataramanan@intel.com>
 <BYAPR11MB3367B5404EC9C3C9708E7E93FCF39@BYAPR11MB3367.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB3367B5404EC9C3C9708E7E93FCF39@BYAPR11MB3367.namprd11.prod.outlook.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4776801a-e83c-48a7-f744-08d958cc13df
x-ms-traffictypediagnostic: SJ0PR11MB5629:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SJ0PR11MB562984BBC7D7D2EA4D81C116ABF39@SJ0PR11MB5629.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hB6Nkg/HVKVTTfJ0HLz90tbhud9W/mIRjtWD65Cd9W8Oi0da32ZCRvzr3ke6y51YwCNf/QP/aRLj9CvqKxsMS0FG7tzwcDtWlCKtcX6Mnf0tOf2XLfoIdwqovO+qs0GBCSNPRTw7ZfIvvpiWho9GxmGUemX0D+6hoEjYPIm6BtUoe7W86jckT8tAC+U06gFENbI6Abffe6xw8hsvt0j+yKAyFGDoaE9jOHdzqah54Vnk1YniTiSrjg4e8vXJmkf42Mmcga9ieoc4Zb1RcnHWDwVWEMMVIcNV6gC0sfNe3zUIfCo9omNhkxmXV3ey5t1CkXT8M3RCjaryX/Bp5HbClPerTm3Puyy2txPwbeiZ4hvjgQo7281yIWkMcHHnpt2c3R1tV5x4QPWEDlVL+2+ro3OF2U+Ao6X7DWUD60P08G9jjkx+vE0VVXCGW8sVJLo+6OPNrreLukwYXB/jFMyf2cSylomvDTiHXAJ0jlz8j3GkKMNTOrnH/OvXBJdZXz+LuDBJq5G9YoLV+2IXPhG5xJDE2/ZDsUzQerYCbLzMB85M4cfUuu44m7cWdfYVlkdjIUR/oURRIkzYB14dWhbEQychm27rlLlC384p8+Mr1DvrZ80tdfbtDVJ5cCiuaLphRSflgOgUS6gdWNTYdMQVjGzKQA8dwCqFIRQJGiRldmVVHwPqnd+lpTBSPqWmM4i1KY+h2A7XLrbMSiz7gsc/NQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(346002)(396003)(39860400002)(376002)(366004)(55016002)(66476007)(64756008)(66556008)(66446008)(76116006)(9686003)(38070700005)(2906002)(7696005)(66946007)(186003)(52536014)(6506007)(110136005)(53546011)(26005)(316002)(8676002)(8936002)(71200400001)(5660300002)(83380400001)(86362001)(33656002)(38100700002)(122000001)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ETbvr1ct0goQxRg9vq5qVauslWAqdaISw8JMTTo50NGX1ODHuI6g0uYxZCfj?=
 =?us-ascii?Q?/IrAJS3yktmUtGS6tIEQe9OpES7Ojruy5FPDnZlp+hkAPJvlG47AUtBxAXf7?=
 =?us-ascii?Q?3oyQjAR3F/V9ZIQ5Uea83HjNFiK6e4MI8y7OJ20uAI2tCwLQU+NfDInWgV5V?=
 =?us-ascii?Q?REqYiAnVtzHjy2HR4PGkeNQswwZ4U0mMMfliUEM66HkqbvLfb5oQVYVj2xw9?=
 =?us-ascii?Q?Q9it83eD3s+dro+gM7eDam9h/qROCtc6FpbxohqaWJDnwpCpMXVOcEKx/YZT?=
 =?us-ascii?Q?op9MZTJij6x7GqkxEIoj/pQEK7PjfYciyDEhAStHEhjrexBSCL3AwSD862cT?=
 =?us-ascii?Q?2Nui4uQTXF7PGJIsCvh1bZlw+hDG7HtNVa/b0xADate18df6+oFCz9cSyXiF?=
 =?us-ascii?Q?ykl2RUiHREZKtyj2d81ujt5Lx2SNCqLKA/rjQU+w2rRuISha5pzTsIo+/aua?=
 =?us-ascii?Q?pBBpLLuNDOwNwBGAgQXQ8FV+isuLUCp481R86yMoaBK8JExuNAaVbWWZ7+pJ?=
 =?us-ascii?Q?JenBrf1tINs6zpmu08mvBEceQCLwIdAYrf0DEzCM2MFDX8HW343JPJUC0KVL?=
 =?us-ascii?Q?3PDvUcTd0oBFjf7PLrXgdqymArzrw3X6mKTqYyfI2SBwtPXSriQsBj4wTP2w?=
 =?us-ascii?Q?WaN0WVJZtqz1i3STcGaGIzGS8G8j0+QmwvVXMLeBQCiUi9gZ+5nypESiCAjb?=
 =?us-ascii?Q?j+vk8OW0i6sxQp7Aq4ENQllOsmRb8kq5wptmVzYvb4I+FNIMarSPpB+uivmv?=
 =?us-ascii?Q?WD2AjLO0DyfVI/gduo5u3jSyjp2yNC4B9xDF/JRs+SH97pWtpsoknNZlf4qU?=
 =?us-ascii?Q?x7557jAnaAQQBC56deo6yFz7OcUQlQg+uR+FOZezi2FXTf8fVNJCOrTsvwFH?=
 =?us-ascii?Q?GaNiTp1Thb87rpofxpLQH6+ap9V5JyCGUkLrFhmclctISG3z8BtSU9df6eqp?=
 =?us-ascii?Q?+LKy28r54FJfO6x1rBLvHRR7CJy1Ef4vGJeg8qHnu+SsZ7z0INjuspY2EOHk?=
 =?us-ascii?Q?2NC2lphDR08S1ghxGN8vIbEPcGObK/Yb+8sfnexEXPLM9CA3UWuV/4nM7Qh8?=
 =?us-ascii?Q?SyC6bpLWtEuMWnkeHTasMaSPMhUCsSmhBv4sHtIkp7ZyVJUwni9ZPi72lwmG?=
 =?us-ascii?Q?xtATNA643gCzu+QS4WyNK284WSl+x16ulDS3LGGE0ib6WSQ81vGl3bP5/rFE?=
 =?us-ascii?Q?LozSDcwHinExzU61xsCbnT3pYtaCpjTRAt7Gh/o8L9E2ISiNBo6mJafjPqji?=
 =?us-ascii?Q?bnwZ25YJn3PqEkLNOQEAuwTcSxT0h8Q2Qszgv8x0MTnSybRsRYGWuwS1J3za?=
 =?us-ascii?Q?Kus5OcpJmvBs5K7hKRfTI1d8?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4776801a-e83c-48a7-f744-08d958cc13df
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2021 11:19:37.8548 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +Yeqm1pKkAscqiCeETgtG0+HKnSRU6/ElGHZ3XPj1tymakR5bNcbxygQuODgRk4bKp0Ygft8n3x4c6Wd1NzVriFN3wN+kph7NkMXiAURJLY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5629
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Prevent probing virtual
 functions
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

> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Anirudh Venkataramanan
> > Sent: Thursday, July 29, 2021 1:09 AM
> > To: intel-wired-lan@lists.osuosl.org
> > Subject: [Intel-wired-lan] [PATCH net] ice: Prevent probing virtual
> > functions
> >
> > The userspace utility "driverctl" can be used to change/override the
> > system's default driver choices. This is useful in some situations
> > (buggy driver, old driver missing a device ID, trying a workaround,
> > etc.) where the user needs to load a different driver.
> >
> > However, this is also prone to user error, where a driver is mapped to
> > a device it's not designed to drive. For example, if the ice driver is
> > mapped to driver iavf devices, the ice driver crashes.
> >
> > Add a check to return an error if the ice driver is being used to
> > probe a virtual function.
> >
> > Fixes: 837f08fdecbe ("ice: Add basic driver framework for Intel(R)
> > E800
> > Series")
> > Signed-off-by: Anirudh Venkataramanan
> > <anirudh.venkataramanan@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_main.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> >
> 
> Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker
> at Intel) _______________________________________________

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
