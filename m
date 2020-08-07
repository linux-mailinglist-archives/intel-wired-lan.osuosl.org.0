Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 70C1423E52F
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Aug 2020 02:34:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CC4DF24C4F;
	Fri,  7 Aug 2020 00:34:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N-6xJymyJEFF; Fri,  7 Aug 2020 00:34:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BE4FA2157D;
	Fri,  7 Aug 2020 00:34:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B951E1BF32C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Aug 2020 00:34:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B590888792
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Aug 2020 00:34:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pxMJRE8L12eT for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Aug 2020 00:34:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 10D3D886D9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Aug 2020 00:34:41 +0000 (UTC)
IronPort-SDR: PiSCX9Mk58HWjTtpX6DhOA81XzEtvfoly4yXRzh6vrzFFHXyNj2MlrgJa0GlzDI3wNivuTl0wY
 L20KuG64GDZw==
X-IronPort-AV: E=McAfee;i="6000,8403,9705"; a="150415816"
X-IronPort-AV: E=Sophos;i="5.75,443,1589266800"; d="scan'208";a="150415816"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2020 17:34:40 -0700
IronPort-SDR: WnuSabfqmLvkX9NE+ERflcBmTTp0mHx+WVjci0liZ+USWR6IEgeT1skGuCv/q9wzZOflkZCu6R
 x/KCScViLvJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,443,1589266800"; d="scan'208";a="275234026"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP; 06 Aug 2020 17:34:40 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 6 Aug 2020 17:34:39 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 6 Aug 2020 17:34:39 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Thu, 6 Aug 2020 17:34:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Eni81h+i03Awm3oniNvV9YrI0CRADM0TsUyFDfNdpWwRqLJiYsZWF70OkqspsX+BcVakxaF1+L1Ki3xEnuokcPZNYLDcYjQ8u/eQP1cVSB0h4w6kgM2YLMvVmfuMyekVS7qg8tJQvYnptd2rHfk6iRH9tf8RoAsE6JxPhNUWVtexhl7t5HchSbuHXmA4zsNIjBJPJjoHqBAEKRutEMJVjiwRgPWHXQCJKMWyQ5K+ZSwoFbhx/zIW3SiK10LbepSZuGfUOELkXMNgxwyTLWHKawTdAygEsBqiCfUeHKpX0T/veayj8pQ69H62ng7nIdx9oHngFbEmumGeJFZOy3q9iA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ioZ0XidYfldYGVJc+aXW7m48zzso9oFKyWSokCnf+8Y=;
 b=PeBrHh4lySTp0KoJbKwXvQeT2JCUVw8I5FUICQc3dE81o1cAlmZsAmeV7+wv62ogrOyYXax2oucKVI7MlstfNMuGm0iaeOwRrwyrsrIsdhZdN0DUTXf66Tlh3/dBF3JPgPGGglPuc2pG2mSpIk7dbvl2EDUGZI0g19rDcoWi1kJbSg7c7eqSXMZ4mAhPD5HyDula0gx0v38Z1HBYpSFUG/yLypTNdRSjGfVXPCysZnNdBUFlQ6MMCz87hqpyjyuPsvmHxTiK5qJUqF2+6Sda8QEO6+ztprZ6tHTKT/HVv0LIhrpKv4OrPLgoIfylIo6scFU5Oot9Uj6VvYzx/ydZ4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ioZ0XidYfldYGVJc+aXW7m48zzso9oFKyWSokCnf+8Y=;
 b=eMrt/Y4X1/IzGYIaerjJ0emaxodfnHmUrGfT0fYPjNByQBmk/c+SeRH0eetauqfK3lI9UqHSgiB1NB6qmJ0MNkNWYYSAXviF5fGHP30PTxsDdO5u9/rBNZKNsJcrukZA+JjFDkrOjL8D39NpaKHF3qrubTiTBaZBgfWUHdvUAzY=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1620.namprd11.prod.outlook.com
 (2603:10b6:405:e::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3261.15; Fri, 7 Aug
 2020 00:34:38 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::3c1b:6500:3edf:eaf0]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::3c1b:6500:3edf:eaf0%12]) with mapi id 15.20.3261.019; Fri, 7 Aug 2020
 00:34:38 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] i40e: Set RX_ONLY mode for unicast
 promiscuous on VLAN
Thread-Index: AQHWa/fni0uFGt+Md0mcyKSpr9FWo6krzQvg
Date: Fri, 7 Aug 2020 00:34:38 +0000
Message-ID: <BN6PR1101MB2145D57B0F71AC3E9E577C6A8C490@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200806134059.11058-1-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20200806134059.11058-1-arkadiusz.kubalewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0b990f31-4f20-49f9-864b-08d83a69ab05
x-ms-traffictypediagnostic: BN6PR11MB1620:
x-microsoft-antispam-prvs: <BN6PR11MB16201332367BF4D48BFF00A08C490@BN6PR11MB1620.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2657;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: O1l4gBFurGfA4Eq9MwGhPzHnnoF+5OXiY1jE2lCdOg1LbsWecIMfJJZIQxQhrxrfdpOOse2DaoQKMKEqlrRvFSPMbSkdhTzC9xhYqnK6CuvFs7gr73kt6gI2NzgtC66p84JTx/ekT9aQF6TwatBHpCM/Md3RpTK0qL15M1ipcwSxpjjTpgrT1wFSIVxee8axdRUQ+b5KYVYyCle42Zd9UoBF0QfBaAR2cbxsYzwny6AyPGO0+I97FATDWlRF2RpolalOHkCea/Dnoh+dwDP26BypPj39GYesjLfaKpqLsRGfgnDfILUaF5fXISsCl8Fu
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(39860400002)(396003)(376002)(346002)(366004)(76116006)(9686003)(8936002)(5660300002)(66946007)(7696005)(52536014)(86362001)(55016002)(8676002)(6916009)(478600001)(64756008)(6506007)(66556008)(66476007)(33656002)(26005)(316002)(53546011)(186003)(66446008)(83380400001)(71200400001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: I9daHd42My/sC2i11dlT3vkoBO8lqc5XzKHAtZlllyXfjJxwZhOyte3GjDA5j/QjneSnvf1G9Zv9ucNaTQ3rJhc0mLY0JgG1PzNnFXCI1xw0ZTGuCfGySErmS3N89iAO2I8JDPILdEQLQtLSc0B0m1SQ224rXWYGjTDUyCR4h1Cd7ROtIe9Vp58DwtFFVATY6rbgYnNd3UGI3Cz1QdHfnO13uZYbLqFI3wo7g/07qGJWK7SQZ86DSRpiSmYINmyLb1/Kh/ARBU/CvXvkHUfpkwlwkmZgQOkph1bbj6vWNTEG00VJp8v5i0i1B5weWWoRCwZSwtnq/EjnaTCg2YHB5T9DILDIn+sde+ajPx7dDul/igwojINs1gEGi3bBwiVrkAvC+mFWLpNmgHYwpHOBJcGHU4rLAex9RlHUmsNS0kdFF4/tlIZL1E5R9rTXcoVU+DpzDXQJkusi+6VW5heWjr+vJ8AKP3cTyYP6hLwBZbP9k2H75fyCdfj7HmpXKtayeojwyJjc76npRRs4aPcANenxrzhGGkY6Hh67g4+5OXsxD2z3JXg83hpWil53TXkvvjb4rqtw0E7M/A/8SgXJtfKmhpGEQ9atdmHJyaH22Jl4KwBXgbOT2pvBXES0KV/B/Y7JoIWt71XvdnM1fOaqdg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b990f31-4f20-49f9-864b-08d83a69ab05
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2020 00:34:38.5959 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xABvS9iVNQvwH3f3KuXJnwPHi7pGESUaFdzIwaRyn27n77cyIhLjEMJk470bjtrRrwke78bdmvA4mFsVyCFLwR5Lja1usk6vEwzHx2NNOxc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1620
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] i40e: Set RX_ONLY mode for unicast
 promiscuous on VLAN
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
> Arkadiusz Kubalewski
> Sent: Thursday, August 6, 2020 6:41 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Patynowski,
> PrzemyslawX <przemyslawx.patynowski@intel.com>
> Subject: [Intel-wired-lan] [PATCH] i40e: Set RX_ONLY mode for unicast
> promiscuous on VLAN
> 
> From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> 
> Trusted VF with unicast promiscuous mode set, could listen to TX traffic of
> other VFs.
> Set unicast promiscuous mode to rx traffic, if VSI has port VLAN configured.
> Rename misleading I40E_AQC_SET_VSI_PROMISC_TX bit to
> I40E_AQC_SET_VSI_PROMISC_RX_ONLY. Aligned unicast promiscuous with
> VLAN to the one without VLAN.
> Previously, other trusted VFs with port VLAN could listen to unicast tx traffic
> of other VFs.
> 
> Signed-off-by: Przemyslaw Patynowski
> <przemyslawx.patynowski@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
>  .../net/ethernet/intel/i40e/i40e_adminq_cmd.h |  2 +-
> drivers/net/ethernet/intel/i40e/i40e_common.c | 35 ++++++++++++++-----
>  2 files changed, 28 insertions(+), 9 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
