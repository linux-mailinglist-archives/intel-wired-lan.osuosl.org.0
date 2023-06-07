Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 791C1725467
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Jun 2023 08:37:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C21EB82081;
	Wed,  7 Jun 2023 06:37:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C21EB82081
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686119870;
	bh=DoYYKqnrog6ap8P0ls7k4vVYvZ6jtQh7CQCSJJ6PtT0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TzvTm80KODZMBkQ1n2l3TkbIQdaxzVNksN+BT2QN6KjnaGgRvZ6QyeQEfEMMWNG6c
	 gmG/RpnUVKxtsj3Kp47pOzawrSh3QjtvIWL+0sgKFV/ERBeAn3VTjj/Z4NbKMoNxZJ
	 iv63EMp4jNpT5ZArFQqTPpQ5+R7TO5gYzpxQsCeriLkGWtJO608jF0GNS2nUZbvSnj
	 lNzTVWbKetgCOxzZDrdNN70QxGdq3MHq8HK6UIE6Kl2KJjN8uHbAFoWlmajkfDKUe7
	 V3a1glm7ne7lJKOn8P56zgx1oDEbb3hs9QhJrwGzBz5YIIfDSscgZdEX6535rNiU9P
	 nTWYwRYa03K+g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7MMnvDbKRIS6; Wed,  7 Jun 2023 06:37:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 870188206D;
	Wed,  7 Jun 2023 06:37:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 870188206D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8696A1BF3E5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 06:37:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5CC74408B7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 06:37:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5CC74408B7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i4SQ_Icntubl for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jun 2023 06:37:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1FB3B40589
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1FB3B40589
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 06:37:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="360226826"
X-IronPort-AV: E=Sophos;i="6.00,223,1681196400"; d="scan'208";a="360226826"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 23:37:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="883618267"
X-IronPort-AV: E=Sophos;i="6.00,223,1681196400"; d="scan'208";a="883618267"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP; 06 Jun 2023 23:37:39 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 6 Jun 2023 23:37:39 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 6 Jun 2023 23:37:39 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 6 Jun 2023 23:37:39 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 6 Jun 2023 23:37:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nXpwC2GONfsL3Iu107XrcPfQZd2DGULcV+MsdWXGLt58wApEU0wQYeQr9Yc9mPiZhoX56+gQ9KWugRKDYTiROfdkSeanclVjymDDrCffQkfd71kSsMUyHZtIGBrAKXmycubJaiLSZb0z2XTKHuGRpEaVtoJMq4U2vo6Mi95vBL8szLrLeGgkcuRdWTv7BZbY4QL7mKgvu2QODsglLMlNtugzptDZzbyIRAnanqO1Le7JNWKMW//PFRUEMvgFo1VYXTxy0WeQ679Sfx2zy85CsgPLh2sEavMzzRSzYK1/Gd8UyVMNqCBCQP4IR8Go3RfFr1M96m99N0Mli+4mbUQdSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KrgnF5ejCROPEWv62tVp/M06v5DEWmW5thKljQQpOsA=;
 b=HrfekOrIXn/FADs2sLhM9SqCNQfBt1AVfZXAgO8d3AGZbtuomz/hYB7x4Htfnpkk2WNbinSiXnC2omMVuxSGjXTcKXPDArTaeg66sTr3Uhh3Up+8Xx2QKk5Fhq1itenNwxbcaTLUUuwaJdgYtrKt+vWM8mfwOsv7X3Bi3FSgnWL8PvrjcD266nd+nauI5hfeNuMXEYUICNHS0V7HkRh2cTwRNzGKj2LMA/bmYyFyLDLJ+c1nUWAm5ec+avke7BxB8nO3kKdwAg6ePgjk4GVpYr9TviBhDMZufn/DhHPmKbt9lujj0SWlefysdkfY7WL8hfg2tmslBrrp+kuTvp8D5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by PH0PR11MB4822.namprd11.prod.outlook.com (2603:10b6:510:39::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.33; Wed, 7 Jun
 2023 06:37:31 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::fcef:c262:ba36:c42f]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::fcef:c262:ba36:c42f%4]) with mapi id 15.20.6455.030; Wed, 7 Jun 2023
 06:37:31 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 12/13] ice: implement
 static version of ageing
Thread-Index: AQHZjjq0j7VrOBT3X0OTAyYOj+n4B69++HpQ
Date: Wed, 7 Jun 2023 06:37:31 +0000
Message-ID: <PH0PR11MB5013EA27C4AF752CE52A16739653A@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20230524122121.15012-1-wojciech.drewek@intel.com>
 <20230524122121.15012-13-wojciech.drewek@intel.com>
In-Reply-To: <20230524122121.15012-13-wojciech.drewek@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|PH0PR11MB4822:EE_
x-ms-office365-filtering-correlation-id: 4df9870e-0332-42da-623f-08db6721abaa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vdZ6Y028osfQUy7/hQBFF8ZcmLgHWB8lHcqTLQ72mdzIlzjHRnxmWbQMsIXrIxt4G+CLo5EtB4xIIMphRPKTs1RgWX2tDk+m8Kp8tAmf/uTEmPGI1L4g1J65RIDmC1kozVxIy+uU4x5mc5v9f0xSVV2AI9GENBwyTr383qh1tqDw6Z22ZdxPcHLcjyx7y8KP2KKvNdYUcVfYJcjbVfJ8MCK3MT/9NM6Zhwl+ktBtr8qansLpJ4AJgv8OezHRpsE/NS+h8QCTxMdew1P7QHpv271cFFDL8I3qvd0kUPOfwxglLWmlmYbT0pHtYnZF2+qwpyDWOErMDFAEPZRMksfa7g7DlwSG2WjXrajxRAbHLTaKhf+YtSuhu+5ZdmiDrZA6obi5qJ+m63UYRc+IsfQJw4aDgy2GwEeX5oj4bzP3DZ6s4lFb7Fg1ncXHeSUwWBgUxRglrDGsf9UNRv4ztNnioxSjvJ71fK73q4ahZvqRJ5v2VTNrTRBZV1SCnhAZlGPRt7SsdSL19CCiAF0XgRGq1b2LcOKSZ36mGGZ+8JS3E18vUDJIK26Y9BR3U6SxHI8GN+Uj87t5JED5Gzjj0UEL/TupnCCB0fVSFxZElgiwonLB0EI2OXVseC11M15QGs8S
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(366004)(396003)(376002)(136003)(39860400002)(451199021)(55016003)(54906003)(7696005)(110136005)(478600001)(82960400001)(316002)(8676002)(8936002)(41300700001)(66446008)(76116006)(64756008)(38100700002)(66946007)(4326008)(66476007)(122000001)(66556008)(186003)(71200400001)(83380400001)(26005)(6506007)(53546011)(9686003)(86362001)(52536014)(5660300002)(38070700005)(2906002)(4744005)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4Q+GeHV15sHU2feEsKTpF+Yb2kfeUwXcp8V3CENFyFSiSJdRim2dsj4oEEl1?=
 =?us-ascii?Q?NBrhS1bjnK69FWAOf+5CXiLcxs9qF354n4kHitJ6/cr2dMqebPL2w9ezdLfY?=
 =?us-ascii?Q?KaZCTWyEuvQJmpiKrGeEnVOM6QyK/0cxIzAs5gnCRSdw4ZjtPmxRZJcUryU0?=
 =?us-ascii?Q?NEuQoQzpPVuzJSXnxl7TVG1hTGNIez8NQwJnp0Ffj57L2DFcV/yJLoa11T4A?=
 =?us-ascii?Q?Za67vcyMjLoI4R3HOJWB9E8w+BYqGIRbLFnWpBIMFMre4L18KndzD3naBXpY?=
 =?us-ascii?Q?qlY7fIdLyL0Q4uhxaFofCW1sUHlII994+OSBA8uHD9rX23lnAnCXXTg/yrYI?=
 =?us-ascii?Q?ZApQEGEtYNjbyB6bTwIxZWQghC2hqq8kSi0ckZSqCWpEYr8bVvUSyDMSa0Go?=
 =?us-ascii?Q?UhGd9tL1Kgr3JIhR9O6Uxlm0a130Bb4itopRDZbdrmR6EPZp1APpKMVVgUU8?=
 =?us-ascii?Q?1PWwgS6eqFpun8KYCxPbfZ15SDmS0g1gBWsJc630W2eNvE1OWQnzbLvHQpYo?=
 =?us-ascii?Q?clAyiNj+kofSZfULBEi5+kHVG24TqwftPlfAvbz8H1PHS1QeGJ9iX40O1KS8?=
 =?us-ascii?Q?T7XTeY8hCYeGc+qJWa2AuE0D/8hR1HJJKFKAushipIr97OkgnSL0yoVkpeEN?=
 =?us-ascii?Q?GkqdMQRZbB0nPRbenOOgtaRjGdklI5eV2h2vI7O1CkLDRTF/7QmQN20OQgcv?=
 =?us-ascii?Q?LOuIyQqLnGcmIE2gZxpNhAZ1KGB9+HpH6hQnpdpkasA/HKypZ9JoVsF2Z7Mm?=
 =?us-ascii?Q?K5L4PUhlDIdmG93hCPuzRASRR3sF/lge30iO+CyYHF5VvVOYSQxOFGfRhRuf?=
 =?us-ascii?Q?NIqFl+enlnCiZOrcoth7JaWCIRhp4WIQigXVVGPuVuTzE9VHJghHK9fiz712?=
 =?us-ascii?Q?4x56aMXnDi8F4+Rb0SZFqFPyf26hcykfTnhOWhjCyBEmoG8DCV/vwE7xv75h?=
 =?us-ascii?Q?PzsCTzuY+xXvqRnHKW7fHIcn6RW7DKubMupzN77GS7g2ZxbIG+F2Xd8hyiFt?=
 =?us-ascii?Q?+SCToSPhBpF/Om4HbQcVf7g4tCvwpo/Qr/I6I39zESxZo5TGUDHGIEeFOQRo?=
 =?us-ascii?Q?wLASwSp7VBERmNOVaoMt+ieQCRJmxJpz5NxeVRP0fKvCNSMpoHeZCyrvm3kF?=
 =?us-ascii?Q?j50PRoPP9pf5LZhdWmpoRvajT34ZTmT7IG9ZpR4YQr9XVT3LEEjDzttVn0rJ?=
 =?us-ascii?Q?ELEtZJodoE2nXZd5rbPATGxNePNgX09TkHZ59qB7ebpkqcpC8XUiFszhz6Js?=
 =?us-ascii?Q?2iSkAafjKC2eRuLLNJ30p6JynB7zMET7T4viw5cQdT3QQ7NIeLIB4g0cg8P2?=
 =?us-ascii?Q?dO2mAZIU/jS+d7u5wCZI7hEpzjWcZe8YvI1pC3jAlBCA7G7xN5rwcx7NOei/?=
 =?us-ascii?Q?O0vOSNsxTTtEypMw6ubKxYmWGdO+xdN8QyKtAySU3am013rSObCjEXy91Gri?=
 =?us-ascii?Q?03BaNNDHHVxmqDrlTcUGfd3FGwBpRvJQQImWpi2EuDMY74GfMc1ZLU/vfc1e?=
 =?us-ascii?Q?6S9eSmDpxMY//Q+mK8w3tlVcUra/XuQ3/Ho0SuXbQ1q3FO39Uh5L6WpGfLm5?=
 =?us-ascii?Q?MkxSoRL7LimxY65SMGcIR6Ga9dA3TFBu/f1zKstWLDMjKHyw66IWIuREjDNL?=
 =?us-ascii?Q?oA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4df9870e-0332-42da-623f-08db6721abaa
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2023 06:37:31.4589 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YZCvgdLAYNPmT7rWGxA/BJA/2EE5MgLCQ+cPSfCKXzTElZvYDgRWllZzCvDFYl915iRvXraqQRJ8fsFJ/Z2folAW7SLMkvQcWt44sCKZwys=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4822
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686119863; x=1717655863;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bWpRBOS0Vc8MqLq9bpZAgl0i7T+WLXodUM33MdpBEsw=;
 b=NouvDLkcUgxe1ANkLwb0ASAZIaw+sguBjqr8hhfwEw0dMd0rVvXhPP5p
 xfWJ6k+MIh2WYmj11mLGuY4VHwHRUTtVRacqRf6rsmWkownwWzuscek/i
 YBIrAs7hAUYgaQlZ6ZXug0JkxFq2qQ+DiIGNCTzEhwEkJpYJoR1n8bSwo
 l2rZotwxCvZZfdYIhgSK89qGUEVIgE0fsfnxEf1E+AYzJaO4qSrpf1Oai
 pO7hEq2q+3FMxF445Udg3y+mNG3uTVKSUs3RpznqPjYHLAhnfZu6FCPsj
 hx73LUq6TT90KYnJmEBkb1qlBPTC5aZsWzre8TL4DWWS7jo4rbHg2HTO7
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NouvDLkc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 12/13] ice: implement
 static version of ageing
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
Cc: "simon.horman@corigine.com" <simon.horman@corigine.com>,
 "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "dan.carpenter@linaro.org" <dan.carpenter@linaro.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Wojciech Drewek
> Sent: Wednesday, May 24, 2023 5:51 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: pmenzel@molgen.mpg.de; netdev@vger.kernel.org;
> simon.horman@corigine.com; dan.carpenter@linaro.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v4 12/13] ice: implement static
> version of ageing
> 
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> 
> Remove fdb entries always when ageing time expired.
> 
> Allow user to set ageing time using port object attribute.
> 
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
> v2: use msecs_to_jiffies upon definition of
>     ICE_ESW_BRIDGE_UPDATE_INTERVAL
> ---
>  .../net/ethernet/intel/ice/ice_eswitch_br.c   | 48 +++++++++++++++++++
>  .../net/ethernet/intel/ice/ice_eswitch_br.h   | 10 ++++
>  2 files changed, 58 insertions(+)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
