Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4828A2965FB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Oct 2020 22:30:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B29B9204A0;
	Thu, 22 Oct 2020 20:30:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q6bm4LP71V46; Thu, 22 Oct 2020 20:30:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0307C204C4;
	Thu, 22 Oct 2020 20:30:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9F4991BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Oct 2020 20:30:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 95DE887843
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Oct 2020 20:30:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 34DZkW86DSw4 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Oct 2020 20:30:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C4406873C5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Oct 2020 20:30:39 +0000 (UTC)
IronPort-SDR: F7iTzLKpPLU+UMFwqvnj++FPTF2W0NazUN5h/cPcRmO70Vw5Ic+ZOaLcjLz96GeUP4+Vn6cE4+
 1kbcUSrpJR2w==
X-IronPort-AV: E=McAfee;i="6000,8403,9782"; a="167713881"
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="167713881"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2020 13:30:38 -0700
IronPort-SDR: +5lWB0pFJxdKG0zXbeR+4G2B2cPlWlAVHXb+DylJRhx8/875qiL3imv8iKkpt4JRE7Mbm/ULVV
 QTIsGwhsk8hQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="321499560"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 22 Oct 2020 13:30:38 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 22 Oct 2020 13:30:38 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 22 Oct 2020 13:30:38 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (104.47.38.52) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Thu, 22 Oct 2020 13:30:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ODHlsZzT6sJobvdfKX3t1Wzcyyoon9I1rxl+WmDsNgV83iYUNunUfTjH4C+sP9VzXgDU8CUy4S2LNrmkSJ2uGh7AZmfV+ayzLRJHvmgk/AcACZNEv8CHk135TmRZyAt/J/oyMyBJNKRKdMmKEavQIKPp/wl0V37uC/QvL3k1BxAoerZ9RamdK8yqIBllsK1iiokn3aFhWEmlIPIoIVBVyRSKcZc5fTZBxlEYD3GbwndO6LN4o0zUOzUxrxZ27h6YGLBUtMGWL+NCcsx9Y2rJxuglxhOvSdrZ3IJVw5JdZ4n7P96U14Ado/pvpc1op84hewPE4R5EDPh/CmOtCSC2LQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NXvw6ETDUa1ujKPupxTtcFMOpAdO4L2MMa13a2XlP/U=;
 b=Pfc6ze1YGo1CZnsFbtizs41j2TfX28Slw6kS9BPjvE3Sz3z4V6alShmdw/fkhWjVMMXKSxWQQfghDIqRnlOBq2cziqu1BlqLf+jDZMHWlL1SdUz6AXCiICI5VjqpPIMC/MffY2QjMDkWQzd7R5e+RUf6fBXGPZrJ4K+Sse9zXO5DKqCoeYuN0QSvMF1Zwi1auD6qBxO89x4opPJ3xnXNdyjj810kcivA6iqhrnQu3fhc/lKgvG6370NhtfcB/ojh6k9qF/UXkiTdwBd8ISKDSXp0xdcX9LwPoR9TLYZVBVmrMqpxZazCKjc/ipKVJESXKU6xZZELkhivJp+/k3JkZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NXvw6ETDUa1ujKPupxTtcFMOpAdO4L2MMa13a2XlP/U=;
 b=WL/8mIBnMkOj6jY/rdsJCVguNhOfAvf1/G8atAuTcQOtibJL5XG7MUbMz5ZUZ6guIOBniShtIEy1OhYBdTWsxwgZL90Ne3W0tvp9+Snzy1uCQBZ885ep+4l3D97qJB/BVpcfwqKO2mTvmhHc0IMwI4Jry/LSeFBwoyZJBoy5M8w=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3819.namprd11.prod.outlook.com (2603:10b6:5:13f::31) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3477.28; Thu, 22 Oct 2020 20:30:32 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::2472:44fe:8b1d:4c6c]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::2472:44fe:8b1d:4c6c%5]) with mapi id 15.20.3477.028; Thu, 22 Oct 2020
 20:30:18 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1 1/1] igc: Add new device ID
Thread-Index: AQHWoFtGETdR9eY/DkK0tj8a5z/3WKmkI3XA
Date: Thu, 22 Oct 2020 20:30:18 +0000
Message-ID: <DM6PR11MB2890F3E5172B7BE485FE13A1BC1D0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20201012054751.1714839-1-sasha.neftin@intel.com>
In-Reply-To: <20201012054751.1714839-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.164.244]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 764aa33a-393d-4c53-5e75-08d876c94a75
x-ms-traffictypediagnostic: DM6PR11MB3819:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3819FD2CE9AF41D7994BB96EBC1D0@DM6PR11MB3819.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nIcmS7xnbxUdP/+XVIVOgEZxwuIF2L9vsuvH2Yj5AEyvcRsbjTboYwCdm6VmJ017Vk3tmv0heSzx9blOezuM41o45fOrS/8ZI3kBuuv8r01Tsfd1jTdiE3aaQqbgLEuqdZalTb/mu/ePFGz79Qc7qN3a7ED044x5sIIaXr/togkitpSBYS8h8xPhpctNKtdBUU7IJ6rmgKBkSUx0Cfuru9cr+CkHf7gETNO3vTKL5VLESdVf9qxKiTBstJFW2DG2zWID+shknOCG3JNKXJ1aUrqZ3CNLEpztQEYp2Aj79zXh2NgAsl6RlJ4WenFo675C
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(366004)(376002)(346002)(396003)(136003)(66446008)(26005)(186003)(7696005)(66556008)(53546011)(71200400001)(6506007)(66946007)(33656002)(9686003)(66476007)(76116006)(478600001)(55016002)(316002)(64756008)(86362001)(52536014)(2906002)(110136005)(4744005)(8676002)(8936002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 55wC5yHbq+FFSXCD5hkZ6cRb2KqiYOfdOLq78Hkl+Dx1wIHjpKFJyuklA/wp0S1W7rqMsoYrmm6NFKLEt91EKFk0zgmQ5QYNeq6LbBUnORKlklJQeAD4kG8q0JdDlrhwWOmn/AkUFoSzreQdca3VNwY9zSSi/wHes8419dwj0dlWQR3dLphFy/YHJT/GOiOE0kRWUbqsjYd6jDKQxAyalfzsabsw3EtSZnw+VV1U73gUuJQYHUdGK0CwSh+X/vdohwmAwC/9+c9jpiGPw7R1IOKMAJjTNgaXIp7a2yV6XR2MsbrnSmvOdN6aCaOexb5LSSM8Y+qhEaYoksRCNh4vhRisZ1n73bnYcQrClFJ8gBpBQLGyQA7Rjiey1WOB2xoRZIdtqG6dcsomRlK+7dsxDUU5qrOLytoP6Wu530Aiy3t1xFm+MtjncMX8avoJIewE06jEZ0sRcgh5C7xdwP9CTS0tYcO3S8nCb9kNNi2XmSEKy9zxfCxDyVfjJchFW9XNNWP/Q4u+8f0WliUBeNerNeRlPRzuA5qYGLg7TlCP5W1gQ8akhcdgaqkPKBCKDPUpdsTyYlOV033TTDukUuzRO1xNk1QlUuBlCmx2eAPWRy9p95YZ8UalJo3ZJViP2DnVV4lrMMRewIfzIU153s+eJA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 764aa33a-393d-4c53-5e75-08d876c94a75
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2020 20:30:18.1365 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9AvZrCCWHe4Jc059NqbEqCtgZwkFwYBy3Uvv9uGkYNtbFf4aK+A/xJP4qmC8FHAO/7ZgChQSVsJrjlcr0JOUMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3819
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Add new device ID
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Sasha Neftin
> Sent: Sunday, October 11, 2020 10:48 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Add new device ID
> 
> Add new device ID for the next step of the silicon and
> reflect the I226_K part.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_base.c | 1 +
>  drivers/net/ethernet/intel/igc/igc_hw.h   | 1 +
>  drivers/net/ethernet/intel/igc/igc_main.c | 1 +
>  3 files changed, 3 insertions(+)

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
