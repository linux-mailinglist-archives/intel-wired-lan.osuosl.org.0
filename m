Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E70D762DA88
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Nov 2022 13:19:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 352BA60B22;
	Thu, 17 Nov 2022 12:19:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 352BA60B22
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668687562;
	bh=Vwf1QNGTfIW1Hokb/jQ60uWzKeuNed9ivF/EKMQuUCQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JBOrnpkqgR7Wvyf/6o0Obr5s5Eu+Bf7WD2/mQ9Q0+RKtEo+Ev/w0U3p9I2EcIb6DT
	 Oa2q8Xz8yELlUffDz4ufR6oKq3nn4KhMHJ2aETBgqwOxxwjnqZYNq+Wwxevve6ji2R
	 CKcpINBn1ftFPucdJt6mqinAc97ZdmA07uarpLD8ocXXuRT1DvPKgde0k3UFnSinEF
	 SOcdR3+ekesWC4zR4cZCyh4vIQuI3dYmG83ivsINegGHO0EOuZUaiYikQTyBCsOG8U
	 TrVygGIui8L0UoeoKXKR/Ip77a34Zpmss5s0Sg+4QJMPK/w8C/iUpQQAfcz+OlN8lE
	 pUf/3ekNKbOvw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 186f_O-b34sq; Thu, 17 Nov 2022 12:19:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4049760A7A;
	Thu, 17 Nov 2022 12:19:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4049760A7A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 471091BF2BF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 12:19:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2033860A7A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 12:19:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2033860A7A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vCvmMRiTgBtD for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Nov 2022 12:19:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0F05860A77
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0F05860A77
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 12:19:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="339660900"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="339660900"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 04:19:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="703311064"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="703311064"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 17 Nov 2022 04:19:13 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 17 Nov 2022 04:19:13 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 17 Nov 2022 04:19:13 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.43) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 17 Nov 2022 04:19:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MiJ4YBNPv+lKDkA3DYQk5qYvSR35+7Vq41T7zDvSJptnGNSuVwcwLai/QXtSdpQGtppkX7kZnf9nNs66fHAPyTXT8/5EAsO2q11LaAIevfrdRqGXE4NoWIxBCKiFcrAh1KdrxDfJVHlKA9TBihr8xdbSQCXpFctrWgSz3kwZBCWikaPRTr9t7H7mA/0oNNT5FZlwb14OCbMmyCBg7/1wB6/IFDq9wHcthBBjNSa5No1sfQ61q7MGdlW3ChrdZ+MoFnbz/ALD/Q0k1/Vsyo7kUHRp+CN5CaDUvILvIidbcrQR01H+n/DdfR40sPa142Zdh8wLR+nJsymEhJcVHfG8qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cO3FLSIyL8frFDZJbMLr8TvoHl4ieCAa6Jb1DuB7jac=;
 b=ekNe2qt/a98PcOagZV5SpaUGxwMclvNUCg3kDOHXRZWV95XWuDBsQLvmZw+dGaCm8O5YhcvVCCxIvw3dY0VPOeAqRMGDj43bvhjJOzugRjwBNvMc1ncssoM1gKnnkU0/lZyNO/6g6XmgCJKoYUCWqcw8cUJr0+RH5nxFM1rf52Mcc9Iky2MTES7y0kfMGQ2XMwJtrJK1F5FPhfTseHa6JKfUTMn1XwGHMkvLJc+biBwcYlnSgGoPdsrOyK3GMeP71QLT6UKfl2crWtdwVRmg4E6CUdZf0SJrrOTe/mMQBfIzKQvNEP906okVZOLt49iVXf6aVQYpRzO1MCvp3Df+jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 LV2PR11MB5999.namprd11.prod.outlook.com (2603:10b6:408:17d::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17; Thu, 17 Nov
 2022 12:19:11 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::5f39:1ef:13a5:38b6]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::5f39:1ef:13a5:38b6%5]) with mapi id 15.20.5813.013; Thu, 17 Nov 2022
 12:19:10 +0000
From: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>
To: "G, GurucharanX" <gurucharanx.g@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 01/15] ice: Use more
 generic names for ice_ptp_tx fields
Thread-Index: AQHY79AYmKnuf+H0302adXzVVq0QQK5DBWCAgAAYI9A=
Date: Thu, 17 Nov 2022 12:19:10 +0000
Message-ID: <DM4PR11MB6117BAEF3336C9182B516DC882069@DM4PR11MB6117.namprd11.prod.outlook.com>
References: <20221103220145.1851114-1-jacob.e.keller@intel.com>
 <20221103220145.1851114-2-jacob.e.keller@intel.com>
 <BYAPR11MB3367FAA6878F5250087F2CE6FC069@BYAPR11MB3367.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB3367FAA6878F5250087F2CE6FC069@BYAPR11MB3367.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6117:EE_|LV2PR11MB5999:EE_
x-ms-office365-filtering-correlation-id: ebe27161-4b79-449c-82bd-08dac895eed7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PBw/PCy87vhNXjU0GQ7GE7cWVDVH0Cr6ursk3YS4ubEH0t2TpUHbl0DIUr7NrojyjYCJOFbpATAX6uWpOO0DY6bx+GnSbC20rn5uaCOqtOe+kiq4lXEQQROG44kEQjA1L8B/zUqa/wSlglRPXnaaLQZvnjlut0W3nm2Llgi2rVOsuoizc2pvQN71kJJBnDhHMY4RVsUXXyEBhF5cu7xxDxHBLMUr1b/YAl3k56iEd5bXA2xFbHdgnFpLQm05MhvxkbFoWdrGGFd2BKoWumsoEZo466WNVHrZgk/cWwa1bZrFT5zZVix7S9z0N3AS7szJJDDbqHRx1LFdgOTqtOy93f4dVzNr6CE3mEnV/+ln5t7cueh6wr6sbsTBvCbqqOH/C9EvPNRFT7+R9Fh8NIYWqccyRp1RT5GaceSWzQjlIu+AY+FgvJ7b73/8NVGLjfQ6dL15zgqf67zCsTJ3V1n/1cp74GnYW5qJdG+d+j0FPa1Wn8fR0gguhwVCL8ss75bcaNPwMP+X7pr+6TWdaI7awiFTM5ifUju8dJWZAFIAZ3HJ9JpASo9gz9yL7lQm/aH767G03t69PUSD1f5Dalf3MgRUjR7MdjribirP49XLPAzyrWbTJ+5pnBrb5dN12qSxDDuTYRxFqAsqYQQUb/fnTI+XyVAQpVhMzKLncqSNzU+0i1kR5LG5++zj3PstasGkbWVVT/aaTAnXSirHJ2Xj0lD+vowyhbDc2OAvrfizEvwvNcTdm1r/vr1MACWuGOZb
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(366004)(396003)(346002)(376002)(39860400002)(451199015)(55016003)(83380400001)(122000001)(8936002)(38100700002)(82960400001)(26005)(186003)(52536014)(5660300002)(2906002)(86362001)(41300700001)(66556008)(33656002)(478600001)(966005)(71200400001)(38070700005)(7696005)(6506007)(66946007)(110136005)(66446008)(9686003)(66476007)(316002)(107886003)(4326008)(76116006)(8676002)(64756008)(41533002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CDhg+aoiH0Fz5gNn4xPLsFxJp+uweIeV3ufEI5oWniK6kxg3bUZleTLyuP4Q?=
 =?us-ascii?Q?cCAlHcR1o2MLQcvRr9rIIcjwyVP6pQEakDusJcPMTCDKNI+EMB3fUdlfx28S?=
 =?us-ascii?Q?Y9cgZXTI7ivimintEy28jRrcBPQLxsafMtGe9QAx8JHtHq5ffaGYricAsyZ8?=
 =?us-ascii?Q?RMeohp46X9BgmvkwcfgqjFYmhc2bg12vJXy4mhJVKmMTPMZ6eg42M41dbGCW?=
 =?us-ascii?Q?J6LRw8dd/E+2W+MDlPOKTi+OhnScGbkZut726Ns+lmO/LymxYsXmWmrWezKt?=
 =?us-ascii?Q?11n0czaPP73XF4eo0Hg3q0QCkXZt+SpVFPOdIVaj13hZfYf42ylrD9nHICqU?=
 =?us-ascii?Q?wBLBXZaXrEh41oF2rRHowsqOYVJVqCjuMryQ2y1wQDkEIMGeO9X+P2hMr5Up?=
 =?us-ascii?Q?/rNUsfo9Q8LR2NDpDbA28ST+KGOpwU0r16NkSEy/kz4D/wElk53fGm2Tabnz?=
 =?us-ascii?Q?ToqTd7xebzS/KC6l0xRQRaTFu3IsiwQ6yfD0DwdWKUkWajXoGMGUKP+4zrRN?=
 =?us-ascii?Q?RtU2JQp1x5Lk+WV96NxGYD/EcEN4dHEAHzo0AbmXcy+VSCjV5BAlo9rqiIeR?=
 =?us-ascii?Q?CzpEvLpJkNuLT4jfF2LzceS70tY/SeaUGkqP0u1nGa7FoULDp9q+DmStwxR4?=
 =?us-ascii?Q?kWGnBVC7cW3HKAFqOczKZVfSq9GH6X2THH5L/oo0IRja72xZ4Iyop1Hd8H5g?=
 =?us-ascii?Q?UPK4FmN1yFtLW1HcLk7s5ONjKqtCEqoVFudjeONwhMOt8yH3/tHpmM2rOpDh?=
 =?us-ascii?Q?yiIFVaqvwuhA3ohq6H1U8yF56B/o3hBbR2EVwlr3UkxN1b2459BuEuCX5ybP?=
 =?us-ascii?Q?AY5N+Buj+tFr6peGkHqZCjSNVb2fmnUd1oLv+AlIN0TRwRP79jPubSJZPGd7?=
 =?us-ascii?Q?8T6VWWJhD1dizLFj2Q5iykmHy9wDf+ujrs7fusEABhrfwhiUd1ANDRhsX0Tf?=
 =?us-ascii?Q?6akMF/etB1fcBN5e/ehBvSHvpzf/nOpixdzS486RQ/h91Xb2xMqJVXXoBcV3?=
 =?us-ascii?Q?5hc1GXqVZu+fcEOuVI5a5oRhe6FgJjNN/mtsKHLQJG/dWIaYDbRRAqffzR21?=
 =?us-ascii?Q?XTAxDCjPFL93lJXt6pF91BXneCk18iXJB7EjxCfxtDcq9DQDXPhm52xHupVw?=
 =?us-ascii?Q?a7oDCV/BPZHIoIpVdLQnNpCrC13Ium5bifGdFU379nmafJmsQJQJOA5LXzIG?=
 =?us-ascii?Q?WmdUqF2MKPt1rES52ls8ACZAfXZ6EPisqRjFijIL5s+exq5Tu6tTNN7ua46k?=
 =?us-ascii?Q?Tzi2sgq2tmtzNIxp+TKHQJIrRwRN8Rx91SbwjkbkuCgf+60g5QEcr2l56c+J?=
 =?us-ascii?Q?6dUsRPaSHvymAflaNhFRke2LddNkLveIoW8+xsTE3LokXqtFAzqg1+fWBqPx?=
 =?us-ascii?Q?b4ykRgTQ7ujejdTNUIttYMoNwgDiYF640SV1ATa0g4A/hAU8UZIvcM4iJxHh?=
 =?us-ascii?Q?y8SbXzO0AQSAO7ByKA5LrqmpjmABKCp9EAIDmxDQyyoy9WulRNoKzzffoqPu?=
 =?us-ascii?Q?zxj8g5tmskbQv8R4rSJZBg6T9O8vN4nkoCmX1GkkIhdToBSGO0dP5jyz4diV?=
 =?us-ascii?Q?foSr00SCK9cYXBzOmoscUXSynaBxV3Ome2So942ixD1HBlqDx0Xg5aLzcCus?=
 =?us-ascii?Q?SA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ebe27161-4b79-449c-82bd-08dac895eed7
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Nov 2022 12:19:10.8505 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DoTlPt2qMRNNAyq1IpDCdyA/evQNFLJwjt2ph8uRu8d+uo5n4liSgZUfGbCt7aUuQ/JqN1aUWmeFo1cVvpJiInxfk5NEwfNrsPdIGxGPd4M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB5999
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668687555; x=1700223555;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WMRn/IHk9tM8N8XMQBAtIip2qIvxNVPoIcTZo8pm61s=;
 b=HnhuD4uHcJSw7lHyHYQvJG2hG97iMus2MaERgQgb2pu+qvLqfb0avARP
 ddICzk2Mw7eCoTC3BTx8eeQqSaVD8CDxuaEDgCGYJXSzhXMDG10XpKAUr
 XMmLXOitnwNrUn0w4R2EPTiFM0q+c598+eis1z3qSExIg5fblYJbOREzA
 LWFsDrS8YWVZjadL3RNI2lLmOxfURbFThexNh5wuy5tKsid2AE0S7nGtn
 7AyLmsAv31s6grks+4ucKYbGk2MQYMjspkw7QVk0VG+P21UfWDYjbHflg
 39/ES2fcsUjBq/11vr9TL89mGb/rdV3akUi7OL9IAp5qcHVM9bsTfwQku
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HnhuD4uH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 01/15] ice: Use more
 generic names for ice_ptp_tx fields
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
Cc: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> >
> > From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> >
> > Some supported devices have per-port timestamp memory blocks while
> > others have shared ones within quads. Rename the struct ice_ptp_tx fields
> > to reflect the block entities it works with
> >
> > Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> > ---
> > Changes since v1
> > * Dropped the ETH56G macro that won't be used until later patches
> >
> >  drivers/net/ethernet/intel/ice/ice_ptp.c | 26 ++++++++++++------------
> > drivers/net/ethernet/intel/ice/ice_ptp.h | 11 +++++-----
> >  2 files changed, 19 insertions(+), 18 deletions(-)
> >
> 
> Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)

Hey Gurucharan,

If you test out whole patchset then it would be more convenient to just respond
to cover letter of series (so patch 0) with your tested-by tag instead of responding
to every other patch.

> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
