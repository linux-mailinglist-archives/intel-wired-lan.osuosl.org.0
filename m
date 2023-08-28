Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6972878A98E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Aug 2023 12:04:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A6C0641719;
	Mon, 28 Aug 2023 10:04:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A6C0641719
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693217080;
	bh=UiCddkZHAngYCXZZiUxi8IFTtsSv0gMiq0Vmr+czkyw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zfc6Ass9ok9JEIq636LemjPGp5mbD6HB3coPiiwQaALZq+LJJpSr5Qo6iM5AdqGGM
	 lHXNpLCzlEHGMcQGEOkQH2zzOHAVyG2vLPM9iHaF1pKhzhRmGG+2bxO3usLWrawuOU
	 fqifLGhRPJUFZ13L/0ttKKVwvYnXO2+NXm9NsYm1jCb8KqwzGys4eFHJNHN52msxAJ
	 2IoCWYE1VizgiCuBb0b4WoEHfGwe0q4zT5CDhwtgHtAQuz19yj2NhPwQN/JedIugUu
	 GFtDSnMhUkibSQQXEhENMaRYoPZp13hNZmdFblDmcqBr7jX4TvYtLY8u9Sbjd9yI2K
	 Famp/S87VgOIA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jXoe_m3uyO_9; Mon, 28 Aug 2023 10:04:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6FAF2416DE;
	Mon, 28 Aug 2023 10:04:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6FAF2416DE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A30301BF584
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Aug 2023 10:04:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7A49B60E35
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Aug 2023 10:04:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7A49B60E35
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wIoft2CCGXLx for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Aug 2023 10:04:33 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B667160D71
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Aug 2023 10:04:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B667160D71
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="373955334"
X-IronPort-AV: E=Sophos;i="6.02,207,1688454000"; d="scan'208";a="373955334"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2023 03:04:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="861782467"
X-IronPort-AV: E=Sophos;i="6.02,207,1688454000"; d="scan'208";a="861782467"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 28 Aug 2023 03:04:32 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 28 Aug 2023 03:04:31 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 28 Aug 2023 03:04:30 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 28 Aug 2023 03:04:30 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 28 Aug 2023 03:04:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U6biNiB1j2Czxzvq5XQ7jboObDgF5ppoEcz6lnbNtqWJDr322otzf7EUx6c8Wf0dyYloEi03WPCphokQP4AOeliw3+/kRRcKEwB7iKUKJZizWQavK3V0JJ1aVhc1CPCraOOwqApwWQYcBfmVKHwZ4qu/HBZNIXq0YpPzF9yF2EUVR+FsvpArKZtzrzaIymYUA+x6J2oxsQn3tJiUKAIUkGj3gPavZaTD/2EcPxO8QZtPCgyUUvWb990R+9oiyOg48dpMXTKoSO7oXFVnx79/1KH8ciJQZ7RbKcdp4hKYZGsRyuMYHjTDtqZMvI7rCuZrxNTxI4LhtqvspxYEdKaavg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DV13HjG4afRLEMksGt2OCGl3Jv00yfgymj5XUp8mm20=;
 b=bHeoSc161ul9V/IVfiWDA8+94C0e7ZH+T8QmrPA9zMlxlJaWDMEpyMxnGnkzj6wKJCYEqE/7mgL3i41lJKD76c8OpINi57cRmzS3Wp/f84ptVMOLE6XWvkMT5hlg6biORuvKwMjqsbg75nvZaoBz75b51oE7GyTwqE9jwI+0ConadJas/uODxNcu0qvWBltC1eh69cIPeAgu3nqzw4wPddSlxFhzdMnaJT0j7QpXrdLGU8JGqPzUkzlDPsO8NvrDfFKIv9sikeQu3gcsQr9h9GNQkNZN21jm7WDIgp8hV+GkVvjvwnhvTu3lhm9DttWFeURMjJ5+W9DQaswplp0ipg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3133.namprd11.prod.outlook.com (2603:10b6:805:d2::14)
 by SJ0PR11MB5182.namprd11.prod.outlook.com (2603:10b6:a03:2ae::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.34; Mon, 28 Aug
 2023 10:04:29 +0000
Received: from SN6PR11MB3133.namprd11.prod.outlook.com
 ([fe80::9529:cec2:9640:7f7a]) by SN6PR11MB3133.namprd11.prod.outlook.com
 ([fe80::9529:cec2:9640:7f7a%6]) with mapi id 15.20.6699.034; Mon, 28 Aug 2023
 10:04:29 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Michalik, Michal" <michal.michalik@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3 2/4] ice: Use PTP auxbus
 for all PHYs restart in E822
Thread-Index: AQHZwJK/SJ5bIcMe4EKg4thOwjj3+6//rIbQ
Date: Mon, 28 Aug 2023 10:04:29 +0000
Message-ID: <SN6PR11MB3133041625C511FF43521F13BDE0A@SN6PR11MB3133.namprd11.prod.outlook.com>
References: <20230727135037.28472-1-michal.michalik@intel.com>
 <20230727135037.28472-3-michal.michalik@intel.com>
In-Reply-To: <20230727135037.28472-3-michal.michalik@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN6PR11MB3133:EE_|SJ0PR11MB5182:EE_
x-ms-office365-filtering-correlation-id: aed87e24-cab8-426f-6965-08dba7ae2b18
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +o+Wyr8QPFCc/IHTZZWuHGFtHKbx0Xa2Uj2gaOMjkpIWZ2lIveexnhZ+AfGtdSI5VNEMTWGrwt1+dmjjCnyXABUpRxG2eMVqCGZdmg5UXBLmEGgMOHO5Pv8FFDt5kkWLcYspu29RaXg6LX4s6P2C3uMtGkeE4h6odx5rKUMha+WT9XO1xuNASMl9cXxrMiJCmJX6BXeHeHmV6TuhH/+Qt3LH8NY4F54eUamB4iY0cc8eo2WzRqYycwWBh2jhfFFkWn2xkFaAVzVY91Bt9ZBZ0GA5TQy226IieUocDUEYit31C5uDNHPeY6h4NqqAZ6CGMc/a2cmWcpICNJqRlIhoPJwpuBzg7dLpXC/BfyEfkZbwWNCnmCbfA4HlM66e7X6n3v3fCs01VFFW3D1AjY0lgPl/y0ng2sAR/83qQ7RQYXTLgzOzZFDptLXWf0hRKRMvrsk2JU/ac4zfndvR8kOL4gBkVc6WrKl+1i7xpwwo8QmcGwmR8UCMTTNMy1n528UZWLCWUOo7vDRbnAyX2xDmboj6HVENLfmLDNivZuDELuLMYlRnOZjTdVPHdOLQyltgjrYVXvoIdw1wH21VhvNi2PXSQlfk4h6I59FkB4MvCfIHrvecR3++Tt+/tqoCI6tr
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3133.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(136003)(346002)(39860400002)(376002)(186009)(1800799009)(451199024)(41300700001)(122000001)(38100700002)(38070700005)(86362001)(478600001)(82960400001)(71200400001)(83380400001)(26005)(9686003)(107886003)(7696005)(53546011)(6506007)(4744005)(55016003)(5660300002)(66946007)(76116006)(66476007)(54906003)(110136005)(316002)(2906002)(66556008)(33656002)(66446008)(64756008)(8676002)(4326008)(8936002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dTgsEuZiRORj8MIjY5/Q24FwEIM/Nd5O049japPZfp54A7NeR6kMFRqw3X36?=
 =?us-ascii?Q?L9mEfiVKwH2N2COWXYgi+vbVo8AX+IKQIuCZJmqok4w0jddIyKUrxkchIYdC?=
 =?us-ascii?Q?3dK9oDUFpnD1rGU6VdLpEKN9ydQwyfqXIcfef3HMgp6HYVwOTNtBLakOn5cl?=
 =?us-ascii?Q?gSCSWbr6VzzIlv4xMFlFQk2A2agXUQx3yT6Tp6w7NUHK4kzQLalcIIqBKBiw?=
 =?us-ascii?Q?O2OfCG5epMgwVD0nFxnOk2AfoDLyfD2lTrZQ0vuwEClNZNuytwz5C60POi+o?=
 =?us-ascii?Q?ASLrTQO11+fr4yiXTyx+U5A5ZroNYvR4l1ufjrTunN5fISLihsy1UtteqnFV?=
 =?us-ascii?Q?Zsq9iTxVMiWXs9SfmCiKAp4JiPcgATgrbJLlkN4WaJ9IcyzpSs0H74JYtIYa?=
 =?us-ascii?Q?kyU8rsHqko3b61BM7I9IRic+b5+nLv03TnXdSzEslrebaGKiKV6Q8BCR4JDs?=
 =?us-ascii?Q?CqAL2u9sMowEpCdZbV3mrAAInOObDrYaeJv1l06/kocEYfiF9e6rizgbnmEr?=
 =?us-ascii?Q?BJvL8Yy1sJNG9dg8ctBF82Qo7qutddpoa8vuKeAPzfSDe9oIsMQmMXylqrp+?=
 =?us-ascii?Q?uBtYU4HfZZIQZd3jCQGa9UJbss/+H4zXfSPFTiC5zpJUmauzQjNne/SztDKQ?=
 =?us-ascii?Q?tcxGda7y7RTr27j44dd8p7DbZR+s4+Wo1wuysh6ydQLT14gfRPMWOCSJg1ze?=
 =?us-ascii?Q?M+08eH1doOPMYBhWE6KOJJhVOZ1I6L8dX8/fUqrs1PnaYKkLPLqTTnYH6U7a?=
 =?us-ascii?Q?EMYlgZH4xT1ZMPVNLub5xRuhxWRaY6zgKDbqmjRd8tI84ONd00VFTDAwpp/F?=
 =?us-ascii?Q?HNRBB1X0pnkmjN4k2KLExDH6IjFVnGFhVTk8cuBbWdK6flII/1YyoWZ0UkKn?=
 =?us-ascii?Q?NpdRAPKAjeHyA21Av1UDB8/4te1A2WTnCUEO4Oa2lq01dWrH0uZt8TXfVcHz?=
 =?us-ascii?Q?GiTCfHQYAOpNcO8cBVoc+VRNUYER6AhmmUqMoHKS8855N2sOFbAdHrxahzGP?=
 =?us-ascii?Q?kgwLn8kS3kFOAh4NvOF+cthhWyMg5c+3KkHkzqtzqnyX6OzaeI1bSw063N/d?=
 =?us-ascii?Q?zFcZW2zPhteBfPe3PIsKbAnYQ0/uxm0u8q069cmN3VM5krZmMbQQqtFIxEuT?=
 =?us-ascii?Q?erSE9M0ZzLhgIU7pPMok5Dj5RUW+/hU7+anJRLejI0U+sFf67WMhgj3s1vhW?=
 =?us-ascii?Q?mhFBzAXZ01AjlZlRtGJsyupv5InbJZ9VwQWa6j6ph9xpmhHB7hRpPNOXU9iT?=
 =?us-ascii?Q?rJrHH+LzN/CgqNw9eNwLtTg2rR6v/TYFR2R9Yz0jjG43vn3lWBognFMafLeJ?=
 =?us-ascii?Q?lIjP9eafXDlkR7Ny6qVOfgByDLBsK7rxVXR2XqB5nzAYwiluWsLUPCawD2sk?=
 =?us-ascii?Q?3za6EJqqbd5kNmzhoWBOlG/g+FzgiE6B2vL6IPQ72J1uOdu0zfp3jptz6vjB?=
 =?us-ascii?Q?yTgvbyTFyVj3Eu1i1uHbQJLvcgSAvT/PeWX0A6tw1E5i/aY2giCGzdphcrCr?=
 =?us-ascii?Q?npAYfXTcGwsBlztFqPCQNQ6/pNPEJYIKpe7wXW3fAoBlMdeLIk6hjGDDhUAb?=
 =?us-ascii?Q?NXNyp7HYPqcKhnZMzMwSYuUp6FjVLSZ7kii+rlkvoPvSPlurRrJpp0P3ntrf?=
 =?us-ascii?Q?Bg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3133.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aed87e24-cab8-426f-6965-08dba7ae2b18
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2023 10:04:29.2053 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /YonXx3Inl5N/71Oq/PTqZMuqZzmu+W4ZQPbRZl14ZZ/BmWx9VcC7pgE19ogNrpKkjjMAMeq6OYODbWiu0hj4l75sfQOL+Ak0U6fyVCWlcKGOQBtvkVYbm/UUmJj8+Xb
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5182
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693217073; x=1724753073;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1W0zZ5mLLNXLUVStHAJtiuUuLXLIg9tt1/ippJASIjs=;
 b=CwzVkUICBdwf1Q2TzAMYTotzPtK0p+2KK/DAoUgjjSrDs477UNBnVza+
 uirh2OFvvzlH6pX+NrN1OemBaT9I09veHwEH8PrvjzNRros6wqFsNTS/u
 Yx1LeUNz4G+nYwym920y/5CYmaInlBTMz/vTnGCS5XOAa4dlMQgwEVPGp
 6VbP8Y9TtaUYQi9X1R1eDZofN6VUJCbOswjYjKcvEt2LUAwFZt3V4XOlw
 AnW/BECRUVp/4ZfnJuPrqs624zTI7CzeJDNxp0+WpQ1dccWvPemKdZ+4u
 GxFFtFTg9LWV5/NBAJgIJPEGjMwKOQUUBXPioiwipNqzL3sJLmPM3u9OU
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CwzVkUIC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 2/4] ice: Use PTP auxbus
 for all PHYs restart in E822
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
Cc: "Kolacinski, Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Michal Michalik
> Sent: Thursday, July 27, 2023 7:21 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kolacinski, Karol <karol.kolacinski@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v3 2/4] ice: Use PTP auxbus for all PHYs restart in E822
>
> The E822 (and other devices based on the same PHY) is having issue while
> setting the PHC timer - the PHY timers are drifting from the PHC. After
> such a set all PHYs need to be restarted and resynchronised - do it
> using auxiliary bus.
>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Michal Michalik <michal.michalik@intel.com>
> ---
> v2 -> v3:
> * use phy_model instead of ice_is_e8**
>
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 24 +++++++++++++++++++++---
>  1 file changed, 21 insertions(+), 3 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
