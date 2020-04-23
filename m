Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E65B1B661A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Apr 2020 23:21:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 40D658821D;
	Thu, 23 Apr 2020 21:21:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5CbYdQmPOzRb; Thu, 23 Apr 2020 21:21:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 481B68817F;
	Thu, 23 Apr 2020 21:21:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D7B8B1BF2E5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2020 21:21:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D2ACD87E56
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2020 21:21:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NLQxRf66qIwh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Apr 2020 21:21:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5566787E37
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2020 21:21:38 +0000 (UTC)
IronPort-SDR: D+rzbkPsvrQpk7Ehp4w+Tz42KoRPvokB/4wdZ9A5pNNkrvbRf7XY8dbppddTA2A/WilzWxGlAB
 D+NlE1x8H44Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2020 14:21:36 -0700
IronPort-SDR: G9gbQHALDqFTCVkrya8pn8AV+y7Gk/QB4A17mxa73M6hvNRHk9vNFCMoIGRbwlq8bVVaUYGKS7
 t57So144dEug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,309,1583222400"; d="scan'208";a="292407025"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga008.jf.intel.com with ESMTP; 23 Apr 2020 14:21:36 -0700
Received: from fmsmsx115.amr.corp.intel.com (10.18.116.19) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 23 Apr 2020 14:21:16 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx115.amr.corp.intel.com (10.18.116.19) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 23 Apr 2020 14:21:16 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Thu, 23 Apr 2020 14:21:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kBCPyZQT6s6MLwVljKRmdh0HQqddfcr0wXvLoJ8Z2Tr+Zx/FaFz80uR12zHkp0qHj13CXJb+I2mlvboTXMLWK+X5BGUDJxu5aT5ALR8Hevw5ETMqYGRmqU/U7p2g5NpmOvr2fJYWc2MB9Tx4NVs44lEUPf1Gj83QKEEojTe0i1Jy2qwKQZ5KRqUi9Bb2pTejF+TPsEG9I+Ghlu3XobvT/yoE5TTk8U9DuRrt10TC7ozlBDfMRUesAHDDW6EUjBjuX3nmLuJwmJIFsavN83GmVOn26WWLK0lWSUSrStVWexaydjepSxkI1Rczhr5P2L4z6eZEyHdZim08xjTQJJrlwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GHu0a4Hebmpb1cRkCkCKCD4znfLKR/p0UvbqvWA0G1U=;
 b=gqU7+4xPS0DBdv79b2tQuu+8biNwiwV3f+bKfVMdPhA7VdfOQTCZEGQpYAfX/t04YXlqh9hTcUTf8iGZ0kkvmizSbBqYXp8UMAJym/rrDzhzrgJp3TZ8IoOIdHJULVJiTRKh+oWQ/P4wOPdl2955g/w9/IPeNJA4UPakMOPwwKIGCat3s4ZdOAEvW17dgcK6mMvzIQf5iiZ6rxvlUFf4y8biD3p/GC7LZxvXPpdxx0XoZgZmyPt2eizLfom0+67B91GnjdALYhcfDS93RTRqVeLuajO15jTUxnPiPSyRl6urwszGQIWFSOk+LehSRZ43V1/gwHBpzeUF4lknPHGStg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GHu0a4Hebmpb1cRkCkCKCD4znfLKR/p0UvbqvWA0G1U=;
 b=XnRBM4Ftt1S/nTK6dTJklvaLRJglLnQjhvHlLz2CXzmjOyjkO/3MTE15CvJg+lyl3HJvtX1qU3dUKyCcMP762wNc2KPEiWsPiVbLLekWAt/qRpe1WK7l8hmLE1uTtewXNGTxim/qnGBYeYxKuG4QeyAje+KYb4NCE3vg+Jia1Yo=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB4028.namprd11.prod.outlook.com (2603:10b6:5:195::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.13; Thu, 23 Apr 2020 21:21:15 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2921.030; Thu, 23 Apr 2020
 21:21:15 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 3/4] igc: Add support for source
 address filters in core
Thread-Index: AQHWD5gtI4FcNQJZiUiiEkI+0UrdWaiHSugQ
Date: Thu, 23 Apr 2020 21:21:14 +0000
Message-ID: <DM6PR11MB28909CB45C19E6C9688E4941BCD30@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200411002834.13916-1-andre.guedes@intel.com>
 <20200411002834.13916-4-andre.guedes@intel.com>
In-Reply-To: <20200411002834.13916-4-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aaron.f.brown@intel.com; 
x-originating-ip: [192.55.52.218]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9a2380df-d733-4cf7-f479-08d7e7cc4154
x-ms-traffictypediagnostic: DM6PR11MB4028:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB402885348D1BD93350B98503BCD30@DM6PR11MB4028.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 03827AF76E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(376002)(136003)(396003)(39860400002)(346002)(66476007)(66446008)(26005)(8936002)(9686003)(4744005)(33656002)(8676002)(52536014)(81156014)(66946007)(86362001)(7696005)(55016002)(110136005)(71200400001)(76116006)(5660300002)(316002)(64756008)(186003)(66556008)(2906002)(53546011)(6506007)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QaTbssnV1bErfefzx/pRmowFG28G9//HqPRqx3h2J5R1pqaPdevRbV8hUj09X5vUg+G35cOmy0Pxi3gtaYG4w4Vii0mwpsHDx44sxPeZchlCKbzsvnHcqzBgPtT8ojVVtusys96tlkely1AEXu4RyZ517OMSzWcBbyWXG3zDO17xj7OVsY7HRPjFpr2mzaAFVlup7jRbvn+kyGZLpt0eUEVc/Iyr3GvjyHVkhfSh60cJUwMGNlLDEIb4b8GEF0EErIFY8WB/E0Cf6kCttixcTX+Sa+viQ6r7pAl9pu9tlcOX/cmvzjWb8EQvURIXSRNeUUIdihQA0hdd2yh9LImKkhnisi5zp6RqbPJquCPlEde2mQ/aiiSBJQVFi0Q+nSd/w6ntlkk3u9SjvrI3FxyWzpZglzaILsEUauju1YJ5q8XuAJ1WTAcHGuGclRhR+o8n
x-ms-exchange-antispam-messagedata: a5ehAcohNBnvcCJ+lbb5dWOhl/l7EYQcgGBcLsI/sVoHSBF1KQWckYhSaQ/nbcVTkqOXa4k+nNTCbYRh2pbi8ExIz/PicTPKOyo6MUhpxnj+wsMopG4s7w9wM0DonhusUYBx1b+gx1zrrZod0p2Q/w==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a2380df-d733-4cf7-f479-08d7e7cc4154
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2020 21:21:15.1405 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3TGxtRzCXnLrLS5QlDJfvMrqKvWlU4Seh5PHwhh0rggb2fhUInrMplpp39hrPixlDm6XFhqNaFlHVk/khFxQCQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4028
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 3/4] igc: Add support for source
 address filters in core
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
> Andre Guedes
> Sent: Friday, April 10, 2020 5:29 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 3/4] igc: Add support for source address
> filters in core
> 
> This patch extends MAC address filter internal APIs igc_add_mac_filter()
> and igc_del_mac_filter(), as well as local helpers, to support filters
> based on source address.
> 
> A new parameters 'type' is added to the APIs to indicate if the filter
> type is source or destination. In case it is source type, the RAH
> register is configured accordingly in igc_set_mac_filter_hw().
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h         | 13 ++++--
>  drivers/net/ethernet/intel/igc/igc_defines.h |  2 +
>  drivers/net/ethernet/intel/igc/igc_ethtool.c |  6 ++-
>  drivers/net/ethernet/intel/igc/igc_main.c    | 49 +++++++++++++-------
>  4 files changed, 49 insertions(+), 21 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
