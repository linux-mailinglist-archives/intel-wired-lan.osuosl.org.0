Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E77F86E9DA9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Apr 2023 23:07:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6EE5440AB0;
	Thu, 20 Apr 2023 21:07:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6EE5440AB0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682024836;
	bh=xQ6bI+hPGDGnSPtt4S3IfwJFq6wYJg2DQvmp+I7IH4I=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uuJ39zuPnnyPDZEvSOnM+KO3SvascXg0AR3SHFyzJXWWKwI/lZXvaYhWF8QEgsrWi
	 /2PlqVe6gh3WA+dtVI+2ZA/I0IJllZlbo3WYr1b5i4S9MzmmnnQDloxcEUrYU9kMY9
	 y9xQ0NeMghFZ3r9QFi9VtC8ym2cInAD5HNXHPNFdD3I06V1ep7frWxnzypo3O4oq3w
	 30wYc39RzhAOgl5oZz2RL+8KpGD6Ex8O8OWP2c8gOJBgz2AiPoiAdvUDPgtXypwVKZ
	 Dphx5BehjDBy3UVcZTtPe1zLEwn+GfVtnkjueKrKZ1KkW0y/w2B2Ll1fBDxtBSeMA+
	 l4009o9FbPs1w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gyH6OdNg6Vql; Thu, 20 Apr 2023 21:07:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5F2AF409D7;
	Thu, 20 Apr 2023 21:07:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5F2AF409D7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 50C331C115D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 21:07:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 23398409D7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 21:07:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 23398409D7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J-gVw9n5UxCy for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Apr 2023 21:07:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 60A6640134
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 60A6640134
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 21:07:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="344605900"
X-IronPort-AV: E=Sophos;i="5.99,213,1677571200"; d="scan'208";a="344605900"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 14:07:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="669493900"
X-IronPort-AV: E=Sophos;i="5.99,213,1677571200"; d="scan'208";a="669493900"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 20 Apr 2023 14:07:08 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 20 Apr 2023 14:07:08 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 20 Apr 2023 14:07:08 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 20 Apr 2023 14:07:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JYwGPtjsuT0vZ7pQOejwkwR3e5muww0DLGhTN6C3cICCyH97ratJGEhXpNXy0ByQIO4Oa27H7VB1iZ2RMt+Hw+M4gwvk1Gk90EA7OufQw88tB7hotUhgDRaWCUx+6LoYXu2Vefkh6nNAG8CZW0iKEybGoHhG9U6qiYKS52H+R6ludy6vlqGyeH0wbeZMixLFi7VDZ8DyTJeIr6lRI37tHQ/3FyqK+oPfEoWUvXskzGl4TRSD6zS5Z/5zlY48Rqbn+Xx5ko3eGKyeHPeXjqO4uInwSwePwHlzPiFJhf10UVSk+Kqa9om8JXGUiQ5yt2qHG/jHQZvsSeqZJLI3blYaRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bSCnj9HcCQfYU5/9SnwbRSJoFLv2pQopyvIUFdw9oQg=;
 b=AHHoB/F+lROM5LHXqGeSWwb51BvKhMTyqeOOOMY4xMM0CG9pda1Uh+PTFKAjhQXVTL7bu/B7ECofQhVEwzLq7qvnple6/qurVc1bu+IK5K/rM7/FF/w/OGZDT2CkW1nHLIcPM/b6oshZGb7S73KNjhbnYo+NG+SKjMVYXkuI6Y4pisBa5Eccnb/qZgKZObbGe2AWG3Bf4h2DC0vRBanYzJxCpGPVWP62BSWbkLUGtgCQghmEwUkmb0CSLOFQiljC7KkVBoWHcdJn11No1nxdESdltn09+CLnDZZpu2IDi7jp7jOSIwuW8Amt03P0WmX3tb1OAKUXSRyKL+pE4AVJ9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5028.namprd11.prod.outlook.com (2603:10b6:303:9a::12)
 by MN2PR11MB4598.namprd11.prod.outlook.com (2603:10b6:208:26f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.20; Thu, 20 Apr
 2023 21:07:05 +0000
Received: from CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::bf74:c4e3:c731:b8c7]) by CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::bf74:c4e3:c731:b8c7%6]) with mapi id 15.20.6319.020; Thu, 20 Apr 2023
 21:07:05 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: mschmidt <mschmidt@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 4/6] ice: sleep, don't
 busy-wait, for ICE_CTL_Q_SQ_CMD_TIMEOUT
Thread-Index: AQHZbRe1U2n4ii9WXkCZ1iVdRCmIDK80vQFg
Date: Thu, 20 Apr 2023 21:07:05 +0000
Message-ID: <CO1PR11MB50285AE9636CAAD36AE695C4A0639@CO1PR11MB5028.namprd11.prod.outlook.com>
References: <20230412081929.173220-1-mschmidt@redhat.com>
 <20230412081929.173220-5-mschmidt@redhat.com>
In-Reply-To: <20230412081929.173220-5-mschmidt@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5028:EE_|MN2PR11MB4598:EE_
x-ms-office365-filtering-correlation-id: 8070d4fe-c4ec-4fd9-2906-08db41e331df
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wWLTyz9Vgyl6dafCllOojzbKPf+WXheSbwhXdpsawtxcGm/BARFiLb3mf/zDh5ecb4fbf5V0INOfTmZ/z5qzu6K93t+rXk5XGieZYOXeoAS1Gi0lEzGkDxNT35Syd2m79lOjUAStBsWgKu9Yyt6a4b1eePGCjcSN87uY51o/Ye7AULsxHSxfoEWV0eUviFXSKm/YHZzDpGdMWVlBpEPBDcXLBEU4XojopDAjjto5OjL+FH6K10al75VysoM0UXsLkmFp9sciJI384lBxqs0MNcBquLt/m3T5lknzALb+V9F0a6fC27y8FJ1XO7zhqANmvPC2Q0l7hUiXMu5WyyZqiYA4vu+V03bDHV5imu0lTuCYRXD5GlRLFgTeWBD7tC21/bkDNCc1Ovd+DmMdsrJZnlI4PSuQdHw7hRfjP46NPXn7uxUpuHJB5f+KB80jyWeRWszZ6MvkoDJeID+vGXvCnkl9s5rnrcUNr7XdYGIWcilgN8xYH1cdgYJr2cK8Pi9f3FogESEjbGhC0LPbnwcvjb4OYWNHH3EYACBWI3PS519PcjQfO8caBAFq6ePY7X4hx6EmZKZBxuFnfQ5QbSlrgljjyLoQbILdCxnTsu+zmLv3GhJ3iJWYs4F9rPWvfYvw
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5028.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(346002)(366004)(396003)(136003)(376002)(451199021)(122000001)(110136005)(54906003)(316002)(66446008)(66556008)(66476007)(66946007)(64756008)(4326008)(186003)(76116006)(6506007)(26005)(53546011)(9686003)(83380400001)(38100700002)(41300700001)(5660300002)(55016003)(8676002)(7696005)(478600001)(71200400001)(8936002)(52536014)(86362001)(38070700005)(82960400001)(2906002)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QXdBdnRuekxYdzA5ZmM4c3pTM3lqbGdmT0pubHJJZ0lUajNHOGtUN0NhbFhi?=
 =?utf-8?B?NVIvMjNBTVNPUm81TDZuRWRHdVBSVElvOUZja3pzK3JRQWxvSDB4dWg5K2cx?=
 =?utf-8?B?RFZ1UmpnZnEyb1lkRWQ3RWIwWmNGdzJwTEVGdE5qM2xjQjB3c2luODFBUENZ?=
 =?utf-8?B?L044c09SWklubHVBZThhNDVPY3IyMHBjcGdLZ0ZONjFlOG5rVTU2Wm1PMHUy?=
 =?utf-8?B?RSt2WE1RUDRnMnpFTGlQL0VnU1hxd1RHUGtHdzI2WmZ2UTk3Q2ZKWWFBcmR3?=
 =?utf-8?B?Vk5iL2VLdDcrbk1pUm9ZTC9hQTYzRlY3Q0IvSlhtMyttSVlmUlVBUXdjUGhy?=
 =?utf-8?B?ci9iTDlWRWxFTSs2bkVkcXMrcjhxTy96eXdEczNlTzlFL3lDSXBFK1didVp0?=
 =?utf-8?B?Y0ZiTUg1RE9YaU1KVXV4ZzdGcXpQeStRQjltS1BGVFk2dG9hc1hoanBuYTMw?=
 =?utf-8?B?NnVVT3lIYmt4Vkc4Y2p3UHM1cHFSc2dlMy9HQm1ySFNvdjJvZjdiTEZKbHV5?=
 =?utf-8?B?WWxQQUhwam5TOHJubjFQQ3BhYlhEdE5ZWkVyb1hKdGk4bWNXd2R0eVNaazl4?=
 =?utf-8?B?clIrOENNSlFNbm0yRmswcVl6cTlDRE5xNU51NW1udlFxZStsR1R0eFRvcmQ1?=
 =?utf-8?B?VFRhUHNOTUtGVTdOem9qQ2pkK1J1ZVVyZXdlS0M2alZZcUkzcXlsZWJEY00w?=
 =?utf-8?B?VGxUVkg4RGFSaWVSemJUV3ZLQkRQRTczTHd2dFBBWDdLVVphUmlPU2pjL0ww?=
 =?utf-8?B?Zk5JeHZOdGVrYlZWdCtLbGdPRU9Jd3loL0VjSGVhTW9MbTM5NXh3ZWtpNlZq?=
 =?utf-8?B?MStFUkJTQjBtTlRSMXQzZWxMOG5ibVBuQVcyRGEwdHg0NkZObDdmeENkU1dS?=
 =?utf-8?B?aVp4ZkRGL0lFZCtrSWwwUW00RGQzK29LZXhTRHY2UXJnNWtMc1o5RUczeEtq?=
 =?utf-8?B?Y1NjY3Z0QnkzUG02dm9SZDcxRWRJbFhpWXU0QkRNRFZhMmFrRzlKN2R6WFcy?=
 =?utf-8?B?RUV3R0wxZ1lPb2NWRXIwRFZycVkxS25Yc0JnVzhJaTFyWk5odWpaR1lNRWlz?=
 =?utf-8?B?dVRwenBqV04zWnpJUlV3REFYU0xWRy9hRGtmWTBUNGRpTXh0anpyejlEUEhN?=
 =?utf-8?B?Rm9NUko0MFc2ZFRFOHRPRWtHNUNCVWpEUllIQjBmNE04a0drTmtLSEtTUE94?=
 =?utf-8?B?VWNzbEFIU2IrTmV3RGprSkNnUzdvUlVDcTdyZ1hINFVUUFFJcldSRTNmL3pS?=
 =?utf-8?B?ZEZxVkUvbXF1UHFhSFR5c3ovR2JzRk5GcEFQWE5aeG5kYURHTUpUZWF6TkRK?=
 =?utf-8?B?cDhEUjR3TGx0L2lKekFrM3hGank5c3M0N1o4Tkx1ckVtb2Z5clBGMHhXdHAv?=
 =?utf-8?B?bmpRRndPVHZTR1ltUXFwVjZuY0ZDczNTS01oVVZSa25iNjJvcnZhU2IxbDc0?=
 =?utf-8?B?bGR5MzZTUnlxcVV0ZlNJalArRklNUGhhNjRTWkhsR3EvOVl3eWtKQ2VuZ3Nt?=
 =?utf-8?B?YUNuZnkxRTk3bCtuREg2N2cxNGI3MjFJT1g0NFJnRzNlc0o5ajM3TzNiblhz?=
 =?utf-8?B?Ry9Da1dOaUEwMVBOUHJGeUlYQTlkeW96M21NY0lvNFo3dkZ0Y2NPNFBkQTB2?=
 =?utf-8?B?ZUZYY0lVWmhSU0oyZmM4d1dSRzloYXM4TGpzRlhtV1ZDSjIyRU1zVUpKSnlB?=
 =?utf-8?B?WDZ5ckZiWmVBSC9VK1lNemZXbzM4MW1DaVU0YkM1TGdDcndrRlY0WXc1clJh?=
 =?utf-8?B?UjkySGt5NHQyWUZQZnR2VmRJeXExTTZjamc1bGIvcGd6cTVRaHhUcXpkV3R1?=
 =?utf-8?B?ZTN1NFdxQWZSamhuNUM2UTZvbE1ZY2c0bUt4Wm1iUWJ6aTVQRXdGTGZYNU5K?=
 =?utf-8?B?cmhoSzFpNHltMXhwVHlEK2dCb0cxQ2I5cjk3TmRKVFZhcDcrT3JPUlRzdnZ1?=
 =?utf-8?B?QTRUM2o2b21WS1M2MDJ3TXhpdEhnVGNGdG9SOHpuNlFzaHJhejI1UHRGL0Q0?=
 =?utf-8?B?YS94aTE1aTJiM2ZWdjU1cDM2aXRCRUlzcU95cDh3WWFKb1RlK1VzM1d2RzV1?=
 =?utf-8?B?L3FIQTMxRWZIbElSUmxJVUxGeXhpMmhRWFFBTWlzcGJNUHAwNVRYSmNQT1hH?=
 =?utf-8?B?MEZMb3FJcWxYRTZGM25DVVYzN0JuYzZSd3ZwT0tmYnNKb3J2WnJzeVgzVWJL?=
 =?utf-8?B?UEE9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5028.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8070d4fe-c4ec-4fd9-2906-08db41e331df
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2023 21:07:05.2716 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1PlPwD50TIct8NfD83NslJ22/HHaK+AA2gL+seIZHH0ZMYdc4GzZaZsVs0YEqVtiYUsf91qNtzNnk4hJ91WjFoeH0TV1MsjEx0RmBXsO5P4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4598
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682024830; x=1713560830;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bSCnj9HcCQfYU5/9SnwbRSJoFLv2pQopyvIUFdw9oQg=;
 b=EeGGjogS042f9zxm1opBh5OTv6EYbiJeDivwayecyiwn6k54jpWP9US7
 c0rJBS7zLueoz7vG4bcGQjkO1ho1V7kms5lixvlqiug1titGf92r8aM8L
 nJuhnwN0mnx+B2OthKNyD2Bhk0UGgc97U8OJpyPoCQ6k1DMqsLToy43pH
 Kir3U8L4ldvMpEiHNZ4PMeaqs+VN+WU2X9gNXOqKWfgwBX6tvLTG8p4Bq
 FMTSs/MthbEQ9FAii444U0I+q/Vqx1oWL7RG3djD7PA3FRl6yvfhtpqRU
 NmBNgfeyqF8TsulR2R+C3tCoRx2ukZAYtOP4nyPBmWVB+5ZMjU5Fu8oiW
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EeGGjogS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 4/6] ice: sleep,
 don't busy-wait, for ICE_CTL_Q_SQ_CMD_TIMEOUT
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
Cc: Brent Rowsell <browsell@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 Simon Horman <simon.horman@corigine.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBNaWNoYWwgU2No
bWlkdA0KPiBTZW50OiBXZWRuZXNkYXksIEFwcmlsIDEyLCAyMDIzIDE6MTkgQU0NCj4gVG86IGlu
dGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnDQo+IENjOiBCcmVudCBSb3dzZWxsIDxicm93
c2VsbEByZWRoYXQuY29tPjsgQW5kcmV3IEx1bm4gPGFuZHJld0BsdW5uLmNoPjsgbmV0ZGV2QHZn
ZXIua2VybmVsLm9yZzsgQnJhbmRlYnVyZywgSmVzc2UgPGplc3NlLmJyYW5kZWJ1cmdAaW50ZWwu
Y29tPjsgS29sYWNpbnNraSwgS2Fyb2wgPGthcm9sLmtvbGFjaW5za2lAaW50ZWwuY29tPjsgTmd1
eWVuLCBBbnRob255IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgU2ltb24gSG9ybWFu
IDxzaW1vbi5ob3JtYW5AY29yaWdpbmUuY29tPg0KPiBTdWJqZWN0OiBbSW50ZWwtd2lyZWQtbGFu
XSBbUEFUQ0ggbmV0LW5leHQgdjIgNC82XSBpY2U6IHNsZWVwLCBkb24ndCBidXN5LXdhaXQsIGZv
ciBJQ0VfQ1RMX1FfU1FfQ01EX1RJTUVPVVQNCj4NCj4gVGhlIGRyaXZlciBwb2xscyBmb3IgaWNl
X3NxX2RvbmUoKSB3aXRoIGEgMTAwIMK1cyBwZXJpb2QgZm9yIHVwIHRvIDEgcyBhbmQgaXQgdXNl
cyB1ZGVsYXkgdG8gZG8gdGhhdC4NCj4NCj4gTGV0J3MgdXNlIHVzbGVlcF9yYW5nZSBpbnN0ZWFk
LiBXZSBrbm93IHNsZWVwaW5nIGlzIGFsbG93ZWQgaGVyZSwgYmVjYXVzZSB3ZSdyZSBob2xkaW5n
IGEgbXV0ZXggKGNxLT5zcV9sb2NrKS4gVG8gcHJlc2VydmUgdGhlIHRvdGFsIG1heCB3YWl0aW5n
IHRpbWUsIG1lYXN1cmUgdGhlIHRpbWVvdXQgaW4gamlmZmllcy4NCj4NCj4gSUNFX0NUTF9RX1NR
X0NNRF9USU1FT1VUIGlzIHVzZWQgYWxzbyBpbiBpY2VfcmVsZWFzZV9yZXMoKSwgYnV0IHRoZXJl
IHRoZSBwb2xsaW5nIHBlcmlvZCBpcyAxIG1zIChpLmUuIDEwIHRpbWVzIGxvbmdlcikuIFNpbmNl
IHRoZSB0aW1lb3V0IHdhcyBleHByZXNzZWQgaW4gdGVybXMgb2YgdGhlIG51bWJlciBvZiBsb29w
cywgdGhlIHRvdGFsIHRpbWVvdXQgaW4gdGhpcyBmdW5jdGlvbiBpcyAxMCBzLiBJIGRvIG5vdCBr
bm93IGlmIHRoaXMgaXMgaW50ZW50aW9uYWwuIFRoaXMgcGF0Y2gga2VlcHMgaXQuDQo+DQo+IFRo
ZSBwYXRjaCBsb3dlcnMgdGhlIENQVSB1c2FnZSBvZiB0aGUgaWNlLWduc3MtPGRldl9uYW1lPiBr
ZXJuZWwgdGhyZWFkIG9uIG15IHN5c3RlbSBmcm9tIH44ICUgdG8gbGVzcyB0aGFuIDEgJS4NCj4N
Cj4gSSByZWNlaXZlZCBhIHJlcG9ydCBvZiBoaWdoIENQVSB1c2FnZSB3aXRoIHB0cDRsIHdoZXJl
IHRoZSBidXN5LXdhaXRpbmcgaW4gaWNlX3NxX3NlbmRfY21kIGRvbWluYXRlZCB0aGUgcHJvZmls
ZS4gVGhpcyBwYXRjaCBoYXMgYmVlbiB0ZXN0ZWQgaW4gdGhhdCB1c2VjYXNlIHRvbyBhbmQgaXQg
bWFkZSBhIGh1Z2UgaW1wcm92ZW1lbnQgdGhlcmUuDQo+DQo+IFRlc3RlZC1ieTogQnJlbnQgUm93
c2VsbCA8YnJvd3NlbGxAcmVkaGF0LmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogTWljaGFsIFNjaG1p
ZHQgPG1zY2htaWR0QHJlZGhhdC5jb20+DQo+IC0tLQ0KID4gZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV9jb21tb24uYyAgIHwgMTQgKysrKysrKy0tLS0tLS0NCiA+IGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29udHJvbHEuYyB8ICA5ICsrKysrLS0tLSAgZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb250cm9scS5oIHwgIDIgKy0NCiA+IDMg
ZmlsZXMgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pDQo+IA0KVGVz
dGVkLWJ5OiBTdW5pdGhhIE1la2FsYSA8c3VuaXRoYXguZC5tZWthbGFAaW50ZWwuY29tPiAoQSBD
b250aW5nZW50IHdvcmtlciBhdCBJbnRlbCkNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2ly
ZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtd2lyZWQtbGFuCg==
