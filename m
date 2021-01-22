Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D886E300B4E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Jan 2021 19:33:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8AF4386925;
	Fri, 22 Jan 2021 18:33:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fey4yIlo_AUu; Fri, 22 Jan 2021 18:33:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8538686A2F;
	Fri, 22 Jan 2021 18:33:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A3F7F1BF47F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jan 2021 18:33:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 86C228737E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jan 2021 18:33:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5Xs2FkB8VTcu for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Jan 2021 18:33:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BB910873A0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jan 2021 18:33:38 +0000 (UTC)
IronPort-SDR: MzrpoyQxFsqN+XnXJWNVHy+HN7Li1xakpmXZYtTP+AK4tBV2SYkGucbkGmGaqfaP+BiOSd89kZ
 UFfMhziTbHIg==
X-IronPort-AV: E=McAfee;i="6000,8403,9872"; a="176913341"
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="176913341"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 10:33:37 -0800
IronPort-SDR: 9c2GjsQu+W00wLDtUpU243M0p3kGoQydGs9Hut90F1wZFq6GpUrkyCeo/0LI5mChWNbEaunq0D
 9Q0kiT9d8baA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="503131637"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga004.jf.intel.com with ESMTP; 22 Jan 2021 10:33:37 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 22 Jan 2021 10:33:36 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 22 Jan 2021 10:33:36 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Fri, 22 Jan 2021 10:33:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a1own3pijWXpWxzkNhPLAZzUqUmao4jfBbeBKXRRCraEmPmzeMdn7Vo2t3EVq3Fkv2CCaZZCWp8b9b5lxP8nczBO5Ww10m3DuTyLxPC+jOF+ctzcFNL64Ah0TchOk9t0P+xp60WH+7rqEYUKfvib7P2JC0F0z8oi1lHdGorx59lrSW/nyent4C0lHaMXvV1Da6gKFvYj6M73ArW1vnWYQRl3tB4GCGbYWa7C+MP9Z61fr6ZORmHjgwi6b1AjZQqGHY+ZK9hro4Zd4QEX43vvYxpa/FfxS7LhV4P0gKGNxDj7moh1xc3+HOkpaCIFKZ4RwGLVRgCrK8CBWSG8Hwsugg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mRB9mloH7Mj9GeteA2RCXoG4yZDIZ+kd2mcudmElbbg=;
 b=iAgV2dNpqctWGyic9vN4qK4TNFoRgNfMM/EHkNpR8YnQaIAINh2dUTkbQu0CCvoT/qxDlELIJPVgE+J++r9UdR7rtR4+QXQCK8qY45+iFDuKOv5cNO+h/hZW0Rawz6gw1m/QjJyiv3UZFCarg353L1nqP/4fhlaoIpuPYKK+J+Y1PzMmAPiwtL9DHFkni7xizIFoOExPuRykLiNPEDmwZwlruwbSz2+QuvpAfNgkoqMQvOjaSJ+AJA6K5eOGQiul99zJiuBAUY5wU6Upu8/z8EGfg7MXTrjB+bqAlImpOu65hMhZzOXyQhWoKQ1dIAKdvG/nen8KChVGw58XwWgpWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mRB9mloH7Mj9GeteA2RCXoG4yZDIZ+kd2mcudmElbbg=;
 b=zE596gg/RWF1vFsq5JsF7GJZ+/ZQkt3Z2dVqZKYDCLGUppkwbDqzVDFBOeKgXx8sNOhK2zWUd7Kn/Ki9hfWYqltp5mak764d54Y1OvlP/km+3mTVMPNIj3yEkEh5myeeNCdnvFlg9Vx+4q8NHKHSZ5/6huZdn68BMghOla3UxPs=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR11MB1389.namprd11.prod.outlook.com (2603:10b6:300:26::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.12; Fri, 22 Jan
 2021 18:33:35 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc66:dd19:b156:7090]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc66:dd19:b156:7090%6]) with mapi id 15.20.3784.015; Fri, 22 Jan 2021
 18:33:35 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Creeley, Brett" <brett.creeley@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net 1/2] ice: Don't allow more channels
 than LAN MSI-X available
Thread-Index: AQHW8CTWa13OP4ibkUec+Be/UI2L6Koz+ZSw
Date: Fri, 22 Jan 2021 18:33:35 +0000
Message-ID: <CO1PR11MB510587057BC9603577D272CBFAA09@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210121183806.23030-1-brett.creeley@intel.com>
In-Reply-To: <20210121183806.23030-1-brett.creeley@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [71.236.132.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9b6ed39b-35fb-48c2-4be8-08d8bf043aab
x-ms-traffictypediagnostic: MWHPR11MB1389:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB138958FA67EC8C73B06C0897FAA00@MWHPR11MB1389.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1013;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oU6ujXLJFE4ZddP7hgGghEMjrSx2UwW8Kphiw7LKFXO2W3PCWXJGGRiojEzoGRX2aN0ToBP/WR0EyoHrL/t/f+jqbnbZGrGS/qwGG6DWgzxsIpKLAZ564/wiPWjzygAmGeK3m5lsczqwmEZSDwG8uKitYypcMU+J3h+q1yvVZ83RFV3vLkbEwRiQYavIw0rGMxnsICuCVXq1UwclPnzinJYY5p/ejYo/H0w3QRpONTLOLOyjcB0beUVI3EbqmbaDUTBy3RyZ7QDazNFGLo7LcZtRqwJQIVH0GjZcYchwhtxmZAK0JwD6e1+/uBUoPFJjzmGAufxGypb3Tg77zzwitpPMvoZm+sC9wzUrZeIBoQbSpKtm8wb7ep3N8YLAmHnd6KI0x8Kv8fibjKyUeRrKBQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(136003)(396003)(366004)(39860400002)(376002)(316002)(64756008)(26005)(110136005)(33656002)(66476007)(8676002)(66946007)(53546011)(55016002)(66446008)(66556008)(86362001)(71200400001)(5660300002)(83380400001)(186003)(478600001)(76116006)(2906002)(6506007)(52536014)(9686003)(8936002)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?g9TCR2SxTEAViuRjchd7zOJ6rsxcFGdLhuGcMMzBh1sDA+lK3exl0bug8umf?=
 =?us-ascii?Q?PsaAHBD1mRyZ/8WCzJxuvNGli342BJ6MPUwn5TGLQh4VzxcmguR51aT6paDv?=
 =?us-ascii?Q?abJl6R6RVz7Ho5AiV65kcc9QNmlv/lZNg87F490mTSVFtvVrwvpm03PfKHGB?=
 =?us-ascii?Q?mkGcyLVReYN1XRiid+fiQkzMCO3MLUGTefnGrdoctanUKEdIPWs+qjSFcaZu?=
 =?us-ascii?Q?UNJb83xAbUu52pTKdzVap+u3Yhw8dwCbDASTF1hL1kja41nMyuttQtpi6UAi?=
 =?us-ascii?Q?y1rxNmSdWqyhDy1gzBEvWZ348t/kjPQ6Z0nJQnnsGEqFDlJvv+8uGcdkq4+j?=
 =?us-ascii?Q?iF2S6AONvk8Ak6TrwoXpe7wQClAzr73XfT6LEPweEssEhd7ZD4jk4cmm9d5/?=
 =?us-ascii?Q?eHLZ+aOqjD1PrVONLKGrhQt73jlAwE9kXxQ0oJTFOLmfL3TEtPLp1sJQpoOx?=
 =?us-ascii?Q?qkxz7Uj9R66vgVBUmOcq6PUY5Tgk4VF+T6gEQutaAJiY2zQlPVHlijW3lR9y?=
 =?us-ascii?Q?SklisXyebzKihGt313oDpMblQW2Dg887sYDlbtx19ceXLAY1cqMfPaeW/Ty4?=
 =?us-ascii?Q?unhTkHDkOgjgW4k/Nw54b2DqVSaMdEEUCXKaC9C4Z/v0+urzC8+7mfy6JJ0B?=
 =?us-ascii?Q?Gjx84ewqRQqbUJJ4lkesBPPcZs1jHss6Bpx38EZfp4zaegNL+TAm3mZpXI2f?=
 =?us-ascii?Q?8aEYC5ebNxhepmjwVdO1KO/mlCEkqkGBzq4GtfE2/NcuCMLQZHukE6uRkT14?=
 =?us-ascii?Q?UGqPWlKD4/yw8hLXpK74koLRI6VSRE8HUZXs0s4AuIADo6SSbpgaEkOaSSZb?=
 =?us-ascii?Q?VrJLsceLnaueXF3dGZLEhQIU0sjNtuYs2EpxoZQi4KMA/FBWCrqMPagv2KJz?=
 =?us-ascii?Q?nwyk7gPin6uc1xtOcx4BGwmub7yU8prqkKoS99ozhGU8wtWnt0SZ6irgOMX7?=
 =?us-ascii?Q?lvpzyS41ciX06gHacmAAK8dacw/NLs9Hxtzppe/9+RE=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b6ed39b-35fb-48c2-4be8-08d8bf043aab
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jan 2021 18:33:35.7078 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mDn+ZCdoCbZCce5sNZDWq8qe4CF77HgRxy1pw6ucCQTjL68qlR8zaRurxCyE2ar/mK1c6rQDGqjxSwtU/4D6mDKPyagCdXNplQyzYySrxb8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1389
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net 1/2] ice: Don't allow more
 channels than LAN MSI-X available
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

-----Original Message-----
From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Brett Creeley
Sent: Thursday, January 21, 2021 10:38 AM
To: intel-wired-lan@lists.osuosl.org
Subject: [Intel-wired-lan] [PATCH net 1/2] ice: Don't allow more channels than LAN MSI-X available

Currently users could create more channels than LAN MSI-X available.
This is happening because there is no check against pf->num_lan_msix when checking the max allowed channels and will cause performance issues if multiple Tx and Rx queues are tied to a single MSI-X. Fix this by not allowing more channels than LAN MSI-X available in pf->num_lan_msix.

Fixes: 87324e747fde ("ice: Implement ethtool ops for channels")
Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 41427302332c..aebebd2102da 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
