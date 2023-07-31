Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 24A0D768D1B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 31 Jul 2023 09:06:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B869461026;
	Mon, 31 Jul 2023 07:06:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B869461026
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690787210;
	bh=UvC7MDMZpyA8PXxdycEjyz9dCILi5hrXt2gc/3r15rY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mWmtFnhW0hhJGBKG/hKaiEljYSMAHUnIW9hwNkASVytkkPILDm+ZXcmmKv310hccR
	 Fb0/8af3IV+TPYRd+t879r73h9fLbLxgcN6ndAfoPcqqrUlf+R/aJVrSTyCnADqUcb
	 fHgxxYeCbMMxg/6GucaVYniupMZ7VzxcoQIzxEHgmtmqzcIR2PX+w9EMkBxmwxppSC
	 8TRB7KEL0ovQSJsJ8ZXNDzeEAofSP5RtNladKgcG6oVf0j+8KZj3TKY0MeTYYdfHAT
	 OJkGpwovnW7+D7canUBDoZdcmy+hQuCuWwBrP1eWJujQN9O6Sgm3U+Y+/7ARp4exqk
	 fN2CD28/5KPbQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1tvtbzHDUqxA; Mon, 31 Jul 2023 07:06:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A4F8D60B32;
	Mon, 31 Jul 2023 07:06:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A4F8D60B32
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0ABC11BF3A6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jul 2023 07:06:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E2B4A402DC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jul 2023 07:06:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E2B4A402DC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TTLX9BpD-jPC for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Jul 2023 07:06:43 +0000 (UTC)
Received: from mgamail.intel.com (unknown [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 32A9C400D1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jul 2023 07:06:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 32A9C400D1
X-IronPort-AV: E=McAfee;i="6600,9927,10787"; a="455312342"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="455312342"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2023 00:06:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10787"; a="728197660"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="728197660"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP; 31 Jul 2023 00:06:41 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 31 Jul 2023 00:06:41 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 31 Jul 2023 00:06:41 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 31 Jul 2023 00:06:41 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 31 Jul 2023 00:06:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Kmz+pEudDmFKab04L0O9Uf3yxV/BGi2ewHoMbbtwUa5Vqm01OlyEH3ml/4evXOAffgu20v8PakuTs9DXnjp8/eoOXXJC6Hvc/glECHw3Qxmv1G0DG9KX/8+IJzbl9qypkTPuubqYgbuGLqxCpfrsC8oMAk4/FF9lKzwgOjbo29EoRJXYMPPcRytImGg6LEPBfPcZY5nv32/KyU5mHrWmPN45MI+ydzUl3EihJhl05Zw4yF9P3mNXHt8skQOh6VGmZ0vFTSYQ0nxkqN55ob/ZjVhlLTlxVF0eYZuIAtmdyeQ5RP28urzqOlxbMSCwp8e3J3Va4g+7Bya3tmdYhfRKww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xaoF4mFnWquFw+cjUVx7i75Xux7JwPRZjKPoJyrivfk=;
 b=hj8zkdmAfDmBjZfCQ4x+rXXILEMlgPoEzaQFjceZsRmFp8DrNWS8XFUA2IN0zOauqX7zfSLqjBpSFDdOZ6xCJc71nYADJxC+7Ypvzxy60vWajKN28mKvjfi1q+l7f+Ej7hDrPybDLFTS706Yh/xJMvq0fPcTr6FDR8wx2fPLs3jCGHYAfcTnaaIvR5HY0W0c+WbbYNg9ocKC1P47ybv/WDdsSwrIfPqsPrYHWeQ50TTO83M3l1HOgnYcvTv9twZD7M+d0EzXIumjLWIgtmkVPJxKTvtSc+PwsvfUcUBeg2KoqKymesNVewm8niSBzM9VriNorM/wW84xlwHoQqoOoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by CY5PR11MB6318.namprd11.prod.outlook.com (2603:10b6:930:3e::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.43; Mon, 31 Jul
 2023 07:06:39 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::f04:5042:e271:9eec]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::f04:5042:e271:9eec%7]) with mapi id 15.20.6631.039; Mon, 31 Jul 2023
 07:06:37 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: Alessio Igor Bogani <alessio.bogani@elettra.eu>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] igb: Stop PTP related workqueues if
 aren't necessary
Thread-Index: AQHZvkMI1acuXDvKOE+8EBQazjkwVa/TfgAA
Date: Mon, 31 Jul 2023 07:06:37 +0000
Message-ID: <BL0PR11MB31220A405221F3E484EBE864BD05A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230723113752.995-1-alessio.bogani@elettra.eu>
In-Reply-To: <20230723113752.995-1-alessio.bogani@elettra.eu>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|CY5PR11MB6318:EE_
x-ms-office365-filtering-correlation-id: 119df22e-c7b2-4c5d-b166-08db9194ae71
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9YctzBxCdYkcuDUuLLTYY7Wvy0fJSk9UlAj9bceHMG6p8We1dAaQnN5mK8f7Hvw8dJoplgBK0brZ6EK7X07VshCP5vVR/D3aG0MzBTIZlbZe9/wkhdSDKb49uL/J58Su5WFx/8sw7QYy/U1YtoWNPPLIqPn8hQDdZduWvAT0IHBvTpq+JhK3lRYEHxylkjz2dR4lfPS0VzJvNMGxfWWfrvqc+iR9nepib/yfpRftUQow+OaK+bYnZU0cOzCrUeGFuXF4apCqKhWGbyeoWjSncjnkbQ13f5ksUuurtqODld6E6MX9dnHDnrqeJlyii9ur598rh/BP0CgDX+ZGO8i0i7A/Q+Bv7W2kMq0aXTPij0vvDaGD/+87PDzSYHN987Jj0ykf4u9Y45D2w/F6ntNP2CoW4p6/QK2Dbowpp4/kpucrNAs53dj3JJCt45hXI5QwklxAB+zzG7pE0jHHy0HupLhkTu2mL+83W6VW6h5NyKIqHokBOcEFl707G21720eL/rL2Njd+gx1SVuQeUcUwdp42yxr2avPrDC73sNA5y1TfT3/3FNydEAb15o8lDYSGIS8XBVDxZ6wbsvwDuODj01+hkdMrjB0sQ/GBVMkefzDvZUjqlBanpYef58+5+MZl
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(346002)(366004)(396003)(136003)(39860400002)(451199021)(38100700002)(82960400001)(122000001)(55016003)(86362001)(38070700005)(33656002)(9686003)(71200400001)(478600001)(7696005)(55236004)(53546011)(186003)(26005)(6506007)(8936002)(8676002)(52536014)(5660300002)(76116006)(66946007)(66556008)(66476007)(110136005)(2906002)(64756008)(41300700001)(66446008)(4744005)(316002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?75jbLBdWqaYvddWkQCgLIf6l6FX7YhVeUlGxsBNXjXfrSZ6v7Yle75MXSQdl?=
 =?us-ascii?Q?pMiJIThjE4BhhkOHsynA6o/cPpEolIuRFJHCIXMtUFFXvhcfElAOjgxw5/ao?=
 =?us-ascii?Q?lpNDmAFxldoM6jPIIYNBiyYa/bfnrJgCLuBB6kbPI3uzFMOwDeawCkaT5a4Y?=
 =?us-ascii?Q?dnrsgQLb9bMRdhwMJeKSZx/7J+qoqm9FnbPti7b9LyKkJoA6k71mH0dbjoCX?=
 =?us-ascii?Q?AE2JILJvvpd6EWDHpko4KsBNYpy2QNrZKpvgdxR7hq5YXtNRg3MeO66SqTLg?=
 =?us-ascii?Q?MpuljhxwHLVMmVpi7wA5HSXaRw/ZzfFX88WX+kkwNTV/EBXviMd26q+CXSla?=
 =?us-ascii?Q?E3hOItlvY0nZXLebnWMhyXYr4iIER9PM/S7wlRmQxbRKxbGLNMja4yZX5q7N?=
 =?us-ascii?Q?ODSl0Y+vpRFyjElyri1dl2Qo1CfwqSOyBwfX4V3+J1txJCzfzPiUT3LsZgk9?=
 =?us-ascii?Q?FLbhqX6hR+FemGZZiQ5eiJHwlf200sXIKsLXjX1JBNHoFU/dC2AepXEAZaC5?=
 =?us-ascii?Q?J7D8/2/laAi682lVN/dXYf6JAUiXTzwt1+yQnTn9iUytnI5Z1bRDIQxEtN1r?=
 =?us-ascii?Q?PlBGQDpfPR+evUEcREw7/aifxVim1unhwa0XVKhxmTKaIHOIcAWSgbfvpklt?=
 =?us-ascii?Q?lIYBmUE1t00mUlAxSjP+vgeV3Rh/ChprkRWEhv0gC8T2/kR3OvmffrrMywE9?=
 =?us-ascii?Q?nG1GDvuEs9Ef0zOa0+3XeS3GMhkx3HDe1To0llZK0QoIulDtN0RlPHNROt/z?=
 =?us-ascii?Q?H7kUXtBobQXFfxKpxcZcwa8ecqIhQLFvwynJHhm5RoU4hztR/ZMKO7WLNmbF?=
 =?us-ascii?Q?XoGw7ljBRNlPC7u80YxQu+Aq170oG/vtT2H51w4Z+DvVCkbD0Bu8TCd9KqEP?=
 =?us-ascii?Q?hJqemhVF9tic/J+at/EdRlIVt4dWpVZohK+cKwkT3CSPvNligUVj4+PUFHcy?=
 =?us-ascii?Q?iTJQ/lKmcKL92iB+nb2gv+IefhhskfvDXDsNn5hCfE0zT++GpPSC6VG0vEPB?=
 =?us-ascii?Q?Kv1OuPiUABbAIbxew860rkmIUyHmuSuVTig3fnuKb1R/vTAvaH8Vg6Dx+y+q?=
 =?us-ascii?Q?7RM4d6RLO7b12eeJmNwf8jB4e9xQBlIfZmllON6ST6LmS+jBuyKFjY2IFp6b?=
 =?us-ascii?Q?hO1PE0jFHmwa157s9OLukZcP73sZsKKSqp/ZCcOVAav2ISONeyF4hqwiRg1z?=
 =?us-ascii?Q?EOri+5noaYsew7yoAyrZ41aCRIz9oPLSejD4KxlRyOGZDrrv++rR0hHUz/Mt?=
 =?us-ascii?Q?ACodPIpVoT+K2qPXN2KXAipysWhClQFi+6Mkpmy3tHOgoNu8MsXfeP8iB0hm?=
 =?us-ascii?Q?CDJEo4aal8A1Sw65TiiuTaazxQ+156ccm5v/KLXvoZcrMyeqnYv2yV2EO2gY?=
 =?us-ascii?Q?qe0+ck+BKhaWpIvwpyLagnNX/lCWJvrXiu1PCeo2pDXVTdrZxv7RDbPFmXud?=
 =?us-ascii?Q?BFHgRjnG2D0+5T44zpREQp687iEBg0DqNN9aoCAGdcGfTIYx8rP+GrwiA+2A?=
 =?us-ascii?Q?J7we+EGqn5I0x+l9nkScYW775+BxV3waP8cvUT5aZIlQaweRDAnKVwZHiofg?=
 =?us-ascii?Q?PzmACzyc9kLPNyiASwAAe2SE8l4VgTwf2ik8DZGVXVuv23sGeVcV6+VQBCun?=
 =?us-ascii?Q?yw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 119df22e-c7b2-4c5d-b166-08db9194ae71
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2023 07:06:37.0698 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GyP7WTBOHBnEdsaid7nLG5m6NYwGC5JJPRaLMtD5V2UWHfm1hwJettlnX+jCTQtSr76T7yceWrIrNErjiou3oGze1fJo5rwMctb04l5rOhcUbcCDZB5OyvjqF91HPKrS
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6318
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690787203; x=1722323203;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=4nwzjpE5a4dyJY8VBf5gHg1mqKpFSy8U4Z18scV8MWk=;
 b=avUndDuhb1vwNy4zO1ANhR5XrGqBgMEAlVAT0flMOJuQu+fhsCxNOb+T
 PIr+WfeJd4x9Xf6LBm401E5ehHDkCCysPb8PQIIfKqmSNuD2gJWxcY1ZY
 +29L3xywPZtbQvqV4TvdoR0KRomfKAnU0ZC77pq4jfiqUMHzLW18og9de
 iLURQ1fjw6/LKJQFmTZfQimHKi281ECBq3gbzH2Vk+bOCdpU+sQYL5/nW
 BPK5lHynPS5OegiSmlDzrMTCCAvuSnY5JtHycGrj6tLdzBQNlWasZEas2
 xvd4iGQnPZAlnN7ItuaTjxJipECtzwpq8ODJ/e5q5cFM549GNVn1lX+KE
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=avUndDuh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] igb: Stop PTP related workqueues if
 aren't necessary
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Alessio Igor Bogani
> Sent: Sunday, July 23, 2023 5:08 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Alessio Igor Bogani <alessio.bogani@elettra.eu>
> Subject: [Intel-wired-lan] [PATCH] igb: Stop PTP related workqueues if aren't necessary
>
> The workqueues ptp_tx_work and ptp_overflow_work are unconditionally allocated by igb_ptp_init(). Stop them if aren't necessary (ptp_clock_register() fails and CONFIG_PTP is disabled).
>
> Signed-off-by: Alessio Igor Bogani <alessio.bogani@elettra.eu>
> ---
>  drivers/net/ethernet/intel/igb/igb_ptp.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
