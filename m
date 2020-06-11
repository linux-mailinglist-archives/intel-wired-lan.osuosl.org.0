Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 80CDA1F6B44
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jun 2020 17:43:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2E21924991;
	Thu, 11 Jun 2020 15:43:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BEbFFN3iD8Bg; Thu, 11 Jun 2020 15:43:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EA1C9227D1;
	Thu, 11 Jun 2020 15:43:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 78F581BF3AF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2020 15:43:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6F0C020513
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2020 15:43:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HLmSowBjenkL for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Jun 2020 15:43:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id 889F72042C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2020 15:43:10 +0000 (UTC)
IronPort-SDR: sLRPKirO4G1z0teY1yJyXDpBwH+SFNMc/004ew99FU0ZLJKw6IKj8m5W37jws4rayBFchGcDHJ
 ouYydL32Z40A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2020 08:43:10 -0700
IronPort-SDR: vFbijfOPuZ+2QdbvA3CYEP6lYuwbORuh3JAspTVC4Mw7nBwENppZsB7TbVoN4ckYZAgswkh7nU
 OTGS+mSYLGQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,499,1583222400"; d="scan'208";a="306961156"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by orsmga008.jf.intel.com with ESMTP; 11 Jun 2020 08:43:10 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 11 Jun 2020 08:43:09 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (104.47.46.52) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Thu, 11 Jun 2020 08:43:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XQcDqEJq6Wsh8NrJ3mLS5zyHO5A8zYf01ZjdaV80rMC6QAMAeUL0goN+BaKZD/A2RNg3lGOTzysY9hgAoh65uFztIV5/iyvsqcx/zAkpi+zvfarlLfFHmyAajApgWgKsxJia+xsI/IZXXyVJULoc8UxwXJ7mc/MDitLfHTp9bYBUZzcFUijMYpH70hUen7+wzxMUw1+IikHqJyPqPzCvcHv+3QNeDpWHhUxJCtI5g+/fT8mxyfMJGADUzyk2lkXwxvq515RlpDh/kHUEFMg5DupsocqjFObO2JvrPZamwWWLB6CMJ9d9ymJOgW25JqR0fHK+JcS9tahf0xDyCvCFfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5ZoMEAy21O2QQyWMAO/QAWkaRxil6ICGrCMsCV+Ia74=;
 b=G55qsVgkGeMBaQySjdgS+iw3oeh8XbcMnJwD5m6SR2cylC5tH/RfYE58wS1NJqO/EhZ3IOaKfv22/Zw7SSj25INEnCk9XY8vs+1Ol4iqFaFogmZQmnc9UpxF1j868UwTV5C58jHL17YlUuhLa0XbRAFS4fhKye8L3nMbUbIT/PY25MeYshQ3ewCeiBnimGUkL8reuCrFLHMxlDkrK/ica/26UCDDLz+oUoyDV8642iGufJOeYNs1gZwQXcb3LiHMotvjZw8Vt1KDml3M+rNVUvjyk20jjv6uwBzXJPwS0rPYvRdINhgy5+hCbDKV2cRFfqAAcVuptirQibULBJdxhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5ZoMEAy21O2QQyWMAO/QAWkaRxil6ICGrCMsCV+Ia74=;
 b=K7oQfPfNSqjOdMnncLtjOVQosGGEj5eBCbgjePQJjiTkV3rg96T5rapcJnULYgw0jC2wFqWA0v3vblm6yjbgHFTZDCjPzXyyjmoWWfytwb4dvW9PVnNNNes60O7+aR105POXPKRiYtNmnE8Dg/xYsU1dLyd5ohbyOJRCkBavXoM=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB4066.namprd11.prod.outlook.com
 (2603:10b6:405:82::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.19; Thu, 11 Jun
 2020 15:43:08 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362%9]) with mapi id 15.20.3066.023; Thu, 11 Jun 2020
 15:43:08 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net 2/3] i40e: protect ring accesses
 with READ- and WRITE_ONCE
Thread-Index: AQHWPmOiqtBT4DUYrE6KqsM8jz+Be6jTkSGQ
Date: Thu, 11 Jun 2020 15:43:07 +0000
Message-ID: <BN6PR1101MB21458B086C094226CC9128C38C800@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200609131945.18373-1-ciara.loftus@intel.com>
 <20200609131945.18373-2-ciara.loftus@intel.com>
In-Reply-To: <20200609131945.18373-2-ciara.loftus@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 95b1ce63-a11a-44a2-44be-08d80e1e238f
x-ms-traffictypediagnostic: BN6PR11MB4066:
x-microsoft-antispam-prvs: <BN6PR11MB406620EA7F866BA045708F348C800@BN6PR11MB4066.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:792;
x-forefront-prvs: 0431F981D8
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lTnNg/9fWOpVsEFCkL4eMzSj6rqPSYYaJ8ZnPvnyqoX5vW97vhgSRCwMqbWnEF75BlNsrDnNGqvwLEJl7cex4S+kNoMNMrSK8Bk03fQwbnXWUCxoTAwM+rlcno10vVyaWQ8d+cvjILaI+gUlJxY8noqwMhwrO4z/hIfb9AJaPjNd/CwRgZ4woiHLZsN6jHjq2OBDb0KVkeyWxI8Y68KM3mVwiYalTdWF0Cef/cxsBRXoKa2PokktIDCucHzcelpZPXlG9PPnlGBiShbTfk2D9y+x0D0XiHlKwjF1wJrYzr0cMy8rN88xoWC4XpieEHN9YI5GG5wAfmCt4yPYdjaofQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(366004)(346002)(136003)(376002)(396003)(8936002)(4744005)(83380400001)(71200400001)(33656002)(8676002)(26005)(6506007)(478600001)(64756008)(2906002)(76116006)(5660300002)(7696005)(66556008)(66946007)(66446008)(66476007)(55016002)(9686003)(4326008)(186003)(52536014)(53546011)(316002)(6916009)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 9jKH4KxRmh8gXL6IYq8ao1lA1u7ObVHvjR2N4ub9lP8G/FFBrwd7qNUPaMdHVx/ZTzWuK3AFfBQ6wMuTk6Fq+m1NH0sqMQk2P2wUelMokBO0bOu+6PyZiAjsA9U4r505Thb7ep+Fs+FL/VnPpJ3Y9v757m4MfTbJGA/jyw5HDVM8gRW7PgL8lHguTboQefXuCkkgX3ufym8hhLTOZ0sU4NMnwaBgW8zg8f9Xh1xaakEoVDx6iHtWNv84i6R7dnXhkBdLRLHRcTypfnGJh8zWRV6j12EMiHYdxZmVAgSk9Ic0pfHL+YJBakfIDZPE23lyQh167uFICOQk1QMlUUqxCDAic1n0G+KkeEugfAGJEEgA8dfoCchIeA+GnfThbjFQ5HGwnKznpK0c5UIc1+92s7hPoSwV9ihToZ228bRNNkJPqzrWU7Iu6h0dLGeRzxBUKNqyM/FGvz5ERblXIRKVDiH+Ub9QEV4NjaVJtEZxRT0=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 95b1ce63-a11a-44a2-44be-08d80e1e238f
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2020 15:43:07.9175 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eFGZEHr5gVQ35M/ScYdDLPU6T5bOLV0AEnL3lkQCuQlVf3e5mv6x53z2YNPcNutCxQz3p0YGKFmgbziWLFXKMjZxVAD7cPSPgx4y6K3EYjs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB4066
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net 2/3] i40e: protect ring accesses
 with READ- and WRITE_ONCE
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Ciara Loftus
> Sent: Tuesday, June 9, 2020 6:20 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Topel, Bjorn <bjorn.topel@intel.com>;
> Karlsson, Magnus <magnus.karlsson@intel.com>
> Subject: [Intel-wired-lan] [PATCH net 2/3] i40e: protect ring accesses with
> READ- and WRITE_ONCE
> 
> READ_ONCE should be used when reading rings prior to accessing the
> statistics pointer. Introduce this as well as the corresponding WRITE_ONCE
> usage when allocating and freeing the rings, to ensure protected access.
> 
> Signed-off-by: Ciara Loftus <ciara.loftus@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 29 ++++++++++++++-------
>  1 file changed, 19 insertions(+), 10 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
