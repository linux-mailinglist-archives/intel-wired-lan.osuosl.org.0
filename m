Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D97766E2960
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Apr 2023 19:29:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9F7256FFDB;
	Fri, 14 Apr 2023 17:29:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9F7256FFDB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681493380;
	bh=Bedp73ntq6ciacVbKZHpxwULTAgBhgl+jXLa1jSiXoI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6aPMAJqbni+ZLmrxLSl+ji6kuAlHXO1slLiD2uJ5Ny/TolGFIvrClmPVaMkSSNSuY
	 CuDou7syDOr5NZQTGUJfNQvy8Nso9Y1nUbj5ZHhyoAJZtBWSgKC0lZyy+3Lbd3NQW+
	 p71e/248jEbrt0ZYj2l6XAPLdfDVpXSdHgE601xX0jfEZYIRlV8xSifH55ltylZV/C
	 CdWOFdFauHEW2KrBtTvSeme0tDeSL/WXNBIagbnEN4Ds9odbQVFN8PBBWewTQTuRgP
	 6ze7brleAAGXr6q4w7gEge+Md93gu3rLXhYz12hzfjrQAYMUeJcNrpp3Nejn4UqP/o
	 55BRDGz/6MY2w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mVidVGmXXurF; Fri, 14 Apr 2023 17:29:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9FAB860B0F;
	Fri, 14 Apr 2023 17:29:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9FAB860B0F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7C6DB1C3D4D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 17:29:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BD68940502
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 17:29:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BD68940502
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s3pwVB1RQylq for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Apr 2023 17:29:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D3590429C0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D3590429C0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 17:29:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10680"; a="372388267"
X-IronPort-AV: E=Sophos;i="5.99,197,1677571200"; d="scan'208";a="372388267"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 10:29:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10680"; a="720357616"
X-IronPort-AV: E=Sophos;i="5.99,197,1677571200"; d="scan'208";a="720357616"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 14 Apr 2023 10:29:09 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 14 Apr 2023 10:29:09 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 14 Apr 2023 10:29:09 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 14 Apr 2023 10:29:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b2ttlxylky7ucIz4F5f8mpEyjfs/emCArSpawxUaC+BrIxT2BFEAobjCq7RVlWGydC5UShfxeaNq9jOCL9q3zeH4Sxo9Y9x2wN1S7mvYWU4Ln7AVY5jrh99WNkylgyvBoAc9dCAfLT3XdeUSbUQT3w2dOEaa6PHkz3PPndHtervdvdI01xZImGRwqPUv25a+GnRNzDmR6sVP1PpnYKvDh5NF1FlNuttMKes0ibbGPr+N0xsws1gEsyUpO5WNBFqqPEiy+IYTm0QopK2hOlBG0iRWjadVi2lialeCUQBS+N5yEQwxBrUgoM3IZ3dd91CsBwtSvlIf/SjiZb0E4q1Kdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vtuUZaNX3m6bBsntSKOPRDnAd82pezJMClQK7RCpHQM=;
 b=L8OqoXHSk+Pf39xo4W46AgEqAewC/N11B+lcJgTsOYlJUV+Jpue53V4kQiTc6PzSEruTldO+sDAzEnNYEESFqk6VV4Kq50HCR+EQmSzlOJnXPLCXCMJylgCB0vcYDW23JSD2YNdho147xYE0zomMP5W+8raT/AbqMtRH++fzAIQe5Cb+rfDdyQecIZ+Ha842UmMr7275cHgp0tetVq6BXBb8ThELSTTBvmq1USvU2SUAo4I9nzxYrzuL1hO4LS4eDsyA9Qs+JOYNlf3gpcIKn+nPRcqZfSQmr+VXrSHobAhnJV8m88XWbizu3Cr9VRoCuYRfzEQs2KrSxVhdKYhjNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 DM4PR11MB6454.namprd11.prod.outlook.com (2603:10b6:8:b8::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6156.28; Fri, 14 Apr 2023 17:29:02 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::f829:c44d:af33:e2c8]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::f829:c44d:af33:e2c8%4]) with mapi id 15.20.6298.030; Fri, 14 Apr 2023
 17:29:02 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: mschmidt <mschmidt@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH net-next v2 6/6] ice: sleep, don't busy-wait, in the SQ
 send retry loop
Thread-Index: AQHZbReh8wXIVEASREmT+LFNnigQ3a8q5UhA
Date: Fri, 14 Apr 2023 17:29:02 +0000
Message-ID: <DM6PR11MB4657687C0CF338B52353DB119B999@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20230412081929.173220-1-mschmidt@redhat.com>
 <20230412081929.173220-7-mschmidt@redhat.com>
In-Reply-To: <20230412081929.173220-7-mschmidt@redhat.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|DM4PR11MB6454:EE_
x-ms-office365-filtering-correlation-id: 9ed3ab1c-8ace-4654-1d99-08db3d0dbd97
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(376002)(366004)(346002)(136003)(451199021)(38070700005)(7696005)(71200400001)(41300700001)(55016003)(86362001)(8936002)(26005)(2906002)(186003)(52536014)(33656002)(6506007)(5660300002)(76116006)(478600001)(66946007)(66446008)(64756008)(66556008)(4326008)(8676002)(9686003)(66476007)(110136005)(54906003)(82960400001)(38100700002)(122000001)(316002)(83380400001);
 DIR:OUT; SFP:1102; 
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ed3ab1c-8ace-4654-1d99-08db3d0dbd97
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2023 17:29:02.7443 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: U5Kn1iMvqw2uA4LaTyb/v8z3lFL24hJag028FcE0Nsh96bc8I9fUQmFUaa8/SVZAWH+uhT88GnGPOHC4h/PUw9meEjGaCjUSdIryocg3JaE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6454
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681493369; x=1713029369;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZapUBqB4abj3LW2lWWycoWR4Zka3O8rauRMLqIBcs4s=;
 b=NjLfo07JO6DI/2Mh66njXjY15dXuaKHSaqLgMxkMUfeQEMC30iVUPnwS
 b95qkilOd5NktrN58uZGZBKCGUUzOjOQ+KtPD8PRqNfTWewQ9RfHt1epW
 DB3xD/IVeoU/sPKGAXjOU7PGelOsAgAjNrhHYAbwxlZBXRSGjuCVKr1VG
 RRGW2ScibE1UJUS0Zxkmsyw3HuH/JaHG2CrOXOh4AljP1bCA6VSbt6BIf
 9yEiPdnk5sDAuI4mbIZFLuB5zvIPnSP0KAjsIFTx89wvoKJEZzusqpGQs
 GGDcXM7DnEMfwkpc8X+PJc9aOczYOYZ8WdLCD8ORUl5o/YcK+na4dwUOm
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NjLfo07J
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 6/6] ice: sleep,
 don't busy-wait, in the SQ send retry loop
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 Simon Horman <simon.horman@corigine.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>From: Michal Schmidt <mschmidt@redhat.com>
>Sent: Wednesday, April 12, 2023 10:19 AM
>
>10 ms is a lot of time to spend busy-waiting. Sleeping is clearly
>allowed here, because we have just returned from ice_sq_send_cmd(),
>which takes a mutex.
>
>On kernels with HZ=100, this msleep may be twice as long, but I don't
>think it matters.
>I did not actually observe any retries happening here.
>
>Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
>---
> drivers/net/ethernet/intel/ice/ice_common.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/drivers/net/ethernet/intel/ice/ice_common.c
>b/drivers/net/ethernet/intel/ice/ice_common.c
>index c6200564304e..0157f6e98d3e 100644
>--- a/drivers/net/ethernet/intel/ice/ice_common.c
>+++ b/drivers/net/ethernet/intel/ice/ice_common.c
>@@ -1643,7 +1643,7 @@ ice_sq_send_cmd_retry(struct ice_hw *hw, struct
>ice_ctl_q_info *cq,
>
> 		memcpy(desc, &desc_cpy, sizeof(desc_cpy));
>
>-		mdelay(ICE_SQ_SEND_DELAY_TIME_MS);
>+		msleep(ICE_SQ_SEND_DELAY_TIME_MS);
>
> 	} while (++idx < ICE_SQ_SEND_MAX_EXECUTE);
>
>--
>2.39.2

Looks good, thank you Michal!

Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
