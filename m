Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E9122971C3C
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Sep 2024 16:16:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8F5B2607D4;
	Mon,  9 Sep 2024 14:16:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gGK2WhvKzTcZ; Mon,  9 Sep 2024 14:16:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9EB08607D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725891385;
	bh=CYz+p3cyMbSihUcSFYyjjWKf0fi+aTyPURKZGmRB+KM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LMvKZOdf1juunVjp27tKglJfqFzFOT9pyYG7sLI74eEFa4JtxqQ7LVtZIOHSJ6CqG
	 AndxL9k/LVYJVow2rG8fANq/hc5G7R6V2BRwXz5KZfPLXmYj2GYBy1RxTclcbYuqNV
	 Ud1BIWFR8V8T9wbwk6bYqz1vwT7Y/1T2xrrBbx2LgNa3kErN0yLGufF7v+/YQMSp11
	 N3WIAkZWIVUsi5iSUOs333NlP3DkKi6XBmh3R57qU0qmvGLNbcg1H7V4UuJ9V4raV5
	 WXx5C1U5vQbMttMCvKkRGKMoejm8UKAiS6+bhqoGed6Zslb7ctxor507zBOmG3Ywt9
	 I5Pl24tgVfWxg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9EB08607D6;
	Mon,  9 Sep 2024 14:16:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 109F51BF304
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2024 14:16:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F04DA40249
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2024 14:16:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id abpnnxawWfkH for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Sep 2024 14:16:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6BF4F4023E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6BF4F4023E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6BF4F4023E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2024 14:16:20 +0000 (UTC)
X-CSE-ConnectionGUID: aCtb8GWTSlOBYSi+1HOQ8g==
X-CSE-MsgGUID: e72EaWiaQXeiJQ2o89wn7g==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="28333211"
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="28333211"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 07:16:19 -0700
X-CSE-ConnectionGUID: PFhuVTdcS9enIw7I7xiTHw==
X-CSE-MsgGUID: VQhKrx2eRK2y12IU7St/4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="66692749"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Sep 2024 07:16:19 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 9 Sep 2024 07:16:19 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 9 Sep 2024 07:16:18 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 9 Sep 2024 07:16:18 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.49) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 9 Sep 2024 07:16:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h7HRCiDDrG8gqga7WvxR1c/sckZFW9IPsP9Leu/Mpf51LPfuTRgvXN326sp+C21bVPFKYCQsYAa9mFjKi3fIgdEny7nrBLdBrB8JBu0RRteX327+jrv9j+7W5wI0meNGlQwaNKnGiV/I3PYgCH9BDMHadV4IrNwNJhp/0Q/XQ+/vMOd0I5Hi2Y9l1lfR7JqVDJ4jSA3IYh+1Y9q0obRi4qx1c5nSsy3kdSjo9cmA8mSkeoTkpzAVJeEe/t3xVOYYaKhZwOcNWze6bRzHC4rPFFq+MhR/aFf1irAk4uzBv7x6/r7cotmOfnFj2lM9KHOvQ9akX5i89fzurh9uIaKswQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CYz+p3cyMbSihUcSFYyjjWKf0fi+aTyPURKZGmRB+KM=;
 b=wvCB1olhOv0Hir4dUZ6tTE4aGZeRIqAfYwZZyz5RZzou3YION1Oyk+YYS1/qqZZwIW7+SH9jTEm40eWxC8IQyiK2/rREkew+p5a6azY+v+oOMzB5Ak0PQq07tdM1DFHDRAB1GAETypTea9TaGO7ZtIkjl2MvtQ044ngetshG/+t6ke953P7jiHDF/rci0QOA3u4D4s7fd/lI7KCZKxSqxcOE9y4NFLWWsFlTyOcEv3QijOW/7OYE8HqEk5IBzfrp3UysfXvPEd3qOWtDM1fuv3xRQl9BYYNlMsNouvC3flD3RcPNWfMUH7pEpRpL+EKZbjpo7bM1bfHAspYMCLDnJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by DS7PR11MB6175.namprd11.prod.outlook.com (2603:10b6:8:99::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.28; Mon, 9 Sep
 2024 14:16:15 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.7918.024; Mon, 9 Sep 2024
 14:16:15 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Greg KH <gregkh@linuxfoundation.org>, Markus Elfring
 <Markus.Elfring@web.de>
Thread-Topic: [Intel-wired-lan] [PATCH v2] ice: Fix improper handling of
 refcount in ice_sriov_set_msix_vec_count()
Thread-Index: AQHa/hKB/rQWGgHfwE2/dzvkaD+eWrJMSgEAgAAaEgCAAyU+8A==
Date: Mon, 9 Sep 2024 14:16:15 +0000
Message-ID: <SJ0PR11MB5865B0D051DF526BB9806C008F992@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <SY8P300MB0460D0263B2105307C444520C0932@SY8P300MB0460.AUSP300.PROD.OUTLOOK.COM>
 <99a2d643-9004-41c8-8585-6c5c86fab599@web.de>
 <2024090715-grief-uneasily-4aa6@gregkh>
In-Reply-To: <2024090715-grief-uneasily-4aa6@gregkh>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|DS7PR11MB6175:EE_
x-ms-office365-filtering-correlation-id: da0dc46d-79a6-4729-a4fe-08dcd0d9f745
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?SE5XekkycG8yWEdpTlloK1YzUWo1NkZ6TE9sSDZQVm5tY1ZUM0w0bFhmRHd6?=
 =?utf-8?B?Mk1SUjJXaE03bnV2UGEzK3M2cUxTdEFaUWU5YXQvVm13UWVicGFINmdDN1d5?=
 =?utf-8?B?MWZrbHFNSzBUaHRNdnRPVWZEUmVZcTVzdktMY1RDVXREaml0Q2JHSUtDbGcx?=
 =?utf-8?B?eUw2S1NIMVhUQ1dZMXl1eWw2SHJ6L2luOUZBSVRGVFNmUWppZ2lpM3VKRVF0?=
 =?utf-8?B?bXBmRUJka0hkK09Wa2FXYkY1VC9WNno4OThIQnYraVJxeDUvaVUvOXpaUlkw?=
 =?utf-8?B?RTl1bEJjRk1FcThaeEYwYkZmRTNOME5NV3ZySStib3pWbGhkTWtlRGpnbnc1?=
 =?utf-8?B?Rmp6T1lLWlB5b0NJZ2s2MjBJR1ZKTTVBK3ZXU1dZbWF2STQxTjBWRWVkMlZj?=
 =?utf-8?B?SDBOUmdOOHBMOE5idUlVdjkxaThkSDNOVFhOS0x4Q1JEczRBTXV1S2tWLzQ1?=
 =?utf-8?B?VCtwT0RRaUc2RmtiWjYrL3lnY2FmTFNNR29JN21EZXZYUW1RODlNTUpjMTFR?=
 =?utf-8?B?SDI4N0FKN2NQSVIyUE1nUzJvRzFXZmNSdzNhUFBJVFpGODNDcCtENDVoWEZi?=
 =?utf-8?B?QUcxOFRzSktpdCtUMGwvVFJCMXE1RHl5ZE9mcTA3U2lEbmZtNDRzQk51SDdz?=
 =?utf-8?B?VWpBWWh2UXhGME5XYyszaHhqRmtQYWRVb0tiYkJMZnFUQXZFcGxVYi9aR0xr?=
 =?utf-8?B?eGJSTElLdHc4SURGVzhIQVlsMFZOek0rM0g0WjdjL1FRN29vci9iUEkwSmNW?=
 =?utf-8?B?SHI4OTFWQmxZQXpabjk1OG9aQ3E5WFVXeXg2aGcvOHpTVmN4VktjdnVmeXhU?=
 =?utf-8?B?Q2lLZHhkYm5NMWg1VWVpSXh3MzdmU01XV01QMWphL1pxcE1XelNKdFBMQTFn?=
 =?utf-8?B?Z0thRi9heE40cUpIVlZkenJXRFJIODQvRTY3enNGVjBHNDNGVncvNHBjTFNv?=
 =?utf-8?B?M0dLcmRLMElQUk44S3R5TDEwb1g3ZklHbTAvb0J3ZHhuV0M4VjNIendETTBn?=
 =?utf-8?B?UjlQbExJQWl4eG9IUXU0b0ptNld2T1NMMkJvNjllVVhWcWRZTVJQUERNSlNx?=
 =?utf-8?B?cnQrakRnMSt5WkEwejlqNVpRUHpkRTdKdDkxZ1BRL3FCUVlMMmxzZ0ZKVDEv?=
 =?utf-8?B?SHkrTy80NDJSN3E2RnFxQ2MrRDVQbCtTbzk2M0VKak9MN002RkZCZU5YWmRj?=
 =?utf-8?B?K1AzM1FOeXo2TktTZllxZnI5eDV1bDN4eHZwNEhvSFJjWnJNLys0clBnV1Mz?=
 =?utf-8?B?NDYyL1VnSnhQVWpwWFdiUEo4cnhXUVYzcFk1NFNhcXZwOWtTZWpVZFNJMUJ4?=
 =?utf-8?B?OWlVSDBjRW5YVWlkdTFJazl0TDlrOFFFSHZmaVpwY29FeEFuUHBpWWNrU1hX?=
 =?utf-8?B?VlZ6SHlyRXNlUTF5Y2V3MGZZM2ZsbUNCanNIMSsyd0dpQnJmbFRQUFFlSlRE?=
 =?utf-8?B?aGpNdUhBdTNxeWNmOXVTcGZidmVEU3I2alVQcnFXQWRGTU96UTlvQ21OUGZT?=
 =?utf-8?B?MENObTZSWUpBZTJuOHNkaHNnaC8wNm1QeTJPc0xTRkszTitZbUg4eDY3eitt?=
 =?utf-8?B?eWRDTUsrMXlMTzBNb0YyeHpHOWc4TE9oRndKemJ0cllDcFYxRmI3dWxIaDc0?=
 =?utf-8?B?Z3FoNmZSOHZTNW1QQmhIOXpmYThmWWY4dVBNakN4cHcyNk9BY2V5Zi9UR2Uv?=
 =?utf-8?B?TTFpeTVCbmNhay9kbDdrLzl6MEYreDVKQWhHZEhlcVY3Q1Bwc3JjTG9rWEM0?=
 =?utf-8?B?MmhNbGpiRC8xRXZ3RmdQKzR5Sk8ydzlRcHEvSk1VTTlGSXBOMmM2ejlIWkcz?=
 =?utf-8?B?alB2ZzVSQWx2RG12QTNSQlRKZFMyN3VodGpka054amVmeHJpWktpQ0xYeXY3?=
 =?utf-8?B?TXZzYjg0ektsRDNheVdwZnRaSmVaV0p2UnpjU2FmRHA2SWc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Uy9yZmQzSzJlZjRYTjREN3dMMUlxR2pZMDlIc3lPakU1NWphV2M1YlptRHZu?=
 =?utf-8?B?aFluLzhpZVVpcjY4VCtNREY3YlU2TjZFemhrVDFsMG9GbzRKVUlkaEhoNmFz?=
 =?utf-8?B?UUZlU0lscm4xSnhRSzErMXZHallSOG1aa0dMbnZES21xdTEwQUFEbTlzQUd3?=
 =?utf-8?B?Z3ZYUllXRTAraktkcm9Ka1lLUlBGNGpVTVg1S04zQTd0SGlTUjEzS3k4bCtX?=
 =?utf-8?B?eUJkajQvQm9KSU1Cazh3bEZxSUswekNGMHhDSkt1cmMwUWl2TEhqbWlGemha?=
 =?utf-8?B?UG05T2d5Snl2UXFBRWNtQ1ZldnJndnZGc0NnSWpjS0QyYVlwSitMQkZUY2xQ?=
 =?utf-8?B?TXNxZkU3QzhYT0U4KzZHVTFjYXB4TEJmZ1dmeWlydVl2VWJlZFQ3STJoNHE5?=
 =?utf-8?B?NHg0U0VIc3VOK1k2VStnM2dQZkZ2dGJoWkUrWkpKRmR3clhoTGFsUHVTOGkz?=
 =?utf-8?B?dEw2Zzh2SmozYXpoOG1aOUhGK29Hd3dlWDgyWm96NUd6OTFsR1hZQ3d6MUpx?=
 =?utf-8?B?U29nUVB1L2liYUJuMExLajBuUFV2eFp6U0ovYnFyN2liZkh6VDFnc3BsRGJn?=
 =?utf-8?B?T0d0WENEaUhBMWtORzNqazUyWEpjc21PeEh6WnBvVTZFbVVNUFZHZ2FQNWkx?=
 =?utf-8?B?MFpCeWFXaFRTdVhHbi82TldhZkYxYmNqSHVLQkpHbWw0enFPNXVDb1dRYWMw?=
 =?utf-8?B?LzN1WTlCcUhPMmVXR0xJc1I3VERKWGFBQnJzcG5oSzc2TDAzUjFoNEFOeFBh?=
 =?utf-8?B?bVNscmNpa2luaVhFODFPVHVZSFZFZzBFd3J2ZjA5V29SM29EN1Zlcnl6eEFT?=
 =?utf-8?B?U0kyaGJUbUpWSWZWU2k1TEltbG5ZNFVSUG9oblJSUysxbDBaTnE3c1pRNzA3?=
 =?utf-8?B?R2lNSnBsVFJSZFBHQ0pNQzRacXZXMkljOVF2SWM5VXhqYTJ4ZmRrdnF4Mmlq?=
 =?utf-8?B?TEw0aG5MQ0NXZ1l1WU9iYjd0eHM0T3hjWDZyNFEwaElUaGtVY3h5YUovMkFP?=
 =?utf-8?B?TU9lL052SWEwa1RRWTdUdE55bkpMU0JOU0UvV2Z4Yld3b0pDOEZCZXBDRDhn?=
 =?utf-8?B?MW5ZYnRXWVNaK0xKa0J5S0ZQaTdrVjROSzhnT2JOQm01OFZiMDBmdkhtYVh3?=
 =?utf-8?B?bjhHZzllT3BTOUdzWkFnSTB4bUJrSFdBakVMd0xjYVdUdFphNGtCNzdDM2JP?=
 =?utf-8?B?dm5kZjRkdE9PY0w3aXdweEx6cnYrK1VMU2pMSGVlV2FLQno5cVBNYk5Ec2Iv?=
 =?utf-8?B?bEVVSyswbkhLR2E5M2QwWFZ0V3FsQ0lSMWRydmJGbllkLzZPbFRHV2lnbyt0?=
 =?utf-8?B?MGM0NkdPTjd0UXRHVms0ZldWd0JBd1F2dzdLcFg4R3JIalQ4Sm1mWEc0bmdY?=
 =?utf-8?B?V1FLODV6TVAzK2VVL0hMMlVLSGNEazJTWDVuVkV5NmdFbGx5VVJFdzJTWDZ4?=
 =?utf-8?B?UzdoY2NUdThRcG9FNEtFMUlqNjllV0k2Mk9USUFpelRtdE9VcTc4bGdkVDVa?=
 =?utf-8?B?Nzhmam5uanpGRnN3bXdWaHZydlpUYmlRL3J3TUw5RjhBbFgvTUpsTjRsckcv?=
 =?utf-8?B?cXlJQmh1WVVFd3dyQ2x0Vlo4NmtoeEZodXpGaUpMS2RqNkhVWk5VeWJybVJw?=
 =?utf-8?B?dk1FOThqQTRVRGJkMm03NDBvaUsvb2s0VDM5MUZMWC91VVlRODkxVEtGd3pm?=
 =?utf-8?B?SklidnlQU3lDTFpNYWFjSTJzald6YXAwWm1EalVEU0ZWZ1NDb1V0WHVQZTMy?=
 =?utf-8?B?RlZaWkpTM0lhMVpjNzE5ckN0MlpFUlQ5ZEp1NUo5MVNFY1Z2c0lOQUYvbXRk?=
 =?utf-8?B?ZCs2VDZINGppZTVqRUE4SkloLzlWSjlXbWhlUE4wa2NadHU1V2VRM2JROWlU?=
 =?utf-8?B?SU9nQ1RUbHVLLzlTOHRuV2tWVHRydktlMVVvak1VbHl3eDd5ai9oZmpMTXk4?=
 =?utf-8?B?MmlRQmtpTFpPcE5RVWtId2hCSVZra284anIxZFVaV25SMUxub0U3bFovakt1?=
 =?utf-8?B?blpWUStOMVRNNzdkREh5bW9nVEhkc1RrTUtVMUE3Z044aXJ1Z1ZuUnhIL3NE?=
 =?utf-8?B?VENMY0hRNzFaeWZrY2IrRXpZcFJBM0RBVzFpMkRGaHNOZ1FRR1RlcnJBTnRh?=
 =?utf-8?B?K2txOUxuSERsZzJWT0NmclVVblpwTmJERXVvUDNLMHNwc3RWL0kwVVlGME05?=
 =?utf-8?B?MHc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da0dc46d-79a6-4729-a4fe-08dcd0d9f745
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Sep 2024 14:16:15.4165 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Fr9MVFL0rY30rJA0dXcLrcqYHnvP9uMS8sB/TlmFeF/sPAudBT+iK5Y8kRrXbgqKqgXZzrjVEG3BsMKh2pV/CZ5PdzkJy2qbnV7d3n/yyY0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6175
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725891381; x=1757427381;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CYz+p3cyMbSihUcSFYyjjWKf0fi+aTyPURKZGmRB+KM=;
 b=kshaGRFuo2H8oaATXWevBqwiahXLATcovI/Eu9W60AFrAY2UKWFxMphH
 Xyey8ed8DIrPF1fVd7Lk6sLsG59FN+RZ4QSLWUGiPr+vW9N253hKxGnBS
 PPI+0lzNmC+9YWIoOsm+6eKUb/pVhdqExZBvWfoJDafXnil8Xa/P6yb6y
 aBz4HmrI+ILOaeAXcmIVyIBz3JrHBeVvioITqEIV30Xbzsxr8m+bdoe/u
 yKmlgIJoWDXS3ES9m6n1NqvO6DFLjf3+T2I3dw0g1vWgy8d4al8gJxWu6
 ycrStxvPWG8zl0nD55bh5XkoWX3ekj7W3dX+C1BMFAghig6b/bLzj8612
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kshaGRFu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2] ice: Fix improper handling of
 refcount in ice_sriov_set_msix_vec_count()
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
Cc: "Tyda, Piotr" <piotr.tyda@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 Gui-Dong Han <hanguidong02@outlook.com>, Jia-Ju Bai <baijiaju1990@gmail.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBHcmVnDQo+IEtI
DQo+IFNlbnQ6IFNhdHVyZGF5LCBTZXB0ZW1iZXIgNywgMjAyNCA0OjEzIFBNDQo+IFRvOiBNYXJr
dXMgRWxmcmluZyA8TWFya3VzLkVsZnJpbmdAd2ViLmRlPg0KPiBDYzogTmd1eWVuLCBBbnRob255
IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsN
Cj4gRXJpYyBEdW1hemV0IDxlZHVtYXpldEBnb29nbGUuY29tPjsgc3RhYmxlQHZnZXIua2VybmVs
Lm9yZzsgTEtNTCA8bGludXgtDQo+IGtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc+OyBHdWktRG9uZyBI
YW4gPGhhbmd1aWRvbmcwMkBvdXRsb29rLmNvbT47IEppYS1KdQ0KPiBCYWkgPGJhaWppYWp1MTk5
MEBnbWFpbC5jb20+OyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgU2ltb24gSG9y
bWFuDQo+IDxob3Jtc0BrZXJuZWwub3JnPjsgS2l0c3plbCwgUHJ6ZW15c2xhdyA8cHJ6ZW15c2xh
dy5raXRzemVsQGludGVsLmNvbT47DQo+IEpha3ViIEtpY2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+
OyBQYW9sbyBBYmVuaSA8cGFiZW5pQHJlZGhhdC5jb20+OyBEYXZpZCBTLg0KPiBNaWxsZXIgPGRh
dmVtQGRhdmVtbG9mdC5uZXQ+DQo+IFN1YmplY3Q6IFJlOiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFU
Q0ggdjJdIGljZTogRml4IGltcHJvcGVyIGhhbmRsaW5nIG9mIHJlZmNvdW50IGluDQo+IGljZV9z
cmlvdl9zZXRfbXNpeF92ZWNfY291bnQoKQ0KPiANCj4gT24gU2F0LCBTZXAgMDcsIDIwMjQgYXQg
MDI6NDA6MTBQTSArMDIwMCwgTWFya3VzIEVsZnJpbmcgd3JvdGU6DQo+ID4g4oCmDQo+ID4gPiAr
KysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3NyaW92LmMNCj4gPiA+IEBA
IC0xMDk2LDggKzEwOTYsMTAgQEAgaW50IGljZV9zcmlvdl9zZXRfbXNpeF92ZWNfY291bnQoc3Ry
dWN0IHBjaV9kZXYNCj4gKnZmX2RldiwgaW50IG1zaXhfdmVjX2NvdW50KQ0KPiA+ID4gIAkJcmV0
dXJuIC1FTk9FTlQ7DQo+ID4gPg0KPiA+ID4gIAl2c2kgPSBpY2VfZ2V0X3ZmX3ZzaSh2Zik7DQo+
ID4gPiAtCWlmICghdnNpKQ0KPiA+ID4gKwlpZiAoIXZzaSkgew0KPiA+ID4gKwkJaWNlX3B1dF92
Zih2Zik7DQo+ID4gPiAgCQlyZXR1cm4gLUVOT0VOVDsNCj4gPiA+ICsJfQ0KPiA+ID4NCj4gPiA+
ICAJcHJldl9tc2l4ID0gdmYtPm51bV9tc2l4Ow0KPiA+ID4gIAlwcmV2X3F1ZXVlcyA9IHZmLT5u
dW1fdmZfcXM7DQo+ID4gPiBAQCAtMTE0Miw4ICsxMTQ0LDEwIEBAIGludCBpY2Vfc3Jpb3Zfc2V0
X21zaXhfdmVjX2NvdW50KHN0cnVjdCBwY2lfZGV2DQo+ICp2Zl9kZXYsIGludCBtc2l4X3ZlY19j
b3VudCkNCj4gPiA+ICAJdmYtPm51bV9tc2l4ID0gcHJldl9tc2l4Ow0KPiA+ID4gIAl2Zi0+bnVt
X3ZmX3FzID0gcHJldl9xdWV1ZXM7DQo+ID4gPiAgCXZmLT5maXJzdF92ZWN0b3JfaWR4ID0gaWNl
X3NyaW92X2dldF9pcnFzKHBmLCB2Zi0+bnVtX21zaXgpOw0KPiA+ID4gLQlpZiAodmYtPmZpcnN0
X3ZlY3Rvcl9pZHggPCAwKQ0KPiA+ID4gKwlpZiAodmYtPmZpcnN0X3ZlY3Rvcl9pZHggPCAwKSB7
DQo+ID4gPiArCQlpY2VfcHV0X3ZmKHZmKTsNCj4gPiA+ICAJCXJldHVybiAtRUlOVkFMOw0KPiA+
ID4gKwl9DQo+ID4gPg0KPiA+ID4gIAlpZiAobmVlZHNfcmVidWlsZCkgew0KPiA+ID4gIAkJaWNl
X3ZmX3JlY29uZmlnX3ZzaSh2Zik7DQo+ID4NCj4gPiBXb3VsZCB5b3UgbGlrZSB0byBjb2xsYWJv
cmF0ZSB3aXRoIGFueSBnb3RvIGNoYWlucyBhY2NvcmRpbmcgdG8gdGhlDQo+ID4gZGVzaXJlZCBj
b21wbGV0aW9uIG9mIGV4Y2VwdGlvbiBoYW5kbGluZz8NCj4gPg0KPiA+IFJlZ2FyZHMsDQo+ID4g
TWFya3VzDQo+ID4NCj4gDQo+IA0KPiBIaSwNCj4gDQo+IFRoaXMgaXMgdGhlIHNlbWktZnJpZW5k
bHkgcGF0Y2gtYm90IG9mIEdyZWcgS3JvYWgtSGFydG1hbi4NCj4gDQo+IE1hcmt1cywgeW91IHNl
ZW0gdG8gaGF2ZSBzZW50IGEgbm9uc2Vuc2ljYWwgb3Igb3RoZXJ3aXNlIHBvaW50bGVzcyByZXZp
ZXcNCj4gY29tbWVudCB0byBhIHBhdGNoIHN1Ym1pc3Npb24gb24gYSBMaW51eCBrZXJuZWwgZGV2
ZWxvcGVyIG1haWxpbmcgbGlzdC4gIEkNCj4gc3Ryb25nbHkgc3VnZ2VzdCB0aGF0IHlvdSBub3Qg
ZG8gdGhpcyBhbnltb3JlLiAgUGxlYXNlIGRvIG5vdCBib3RoZXIgZGV2ZWxvcGVycw0KPiB3aG8g
YXJlIGFjdGl2ZWx5IHdvcmtpbmcgdG8gcHJvZHVjZSBwYXRjaGVzIGFuZCBmZWF0dXJlcyB3aXRo
IGNvbW1lbnRzIHRoYXQsIGluDQo+IHRoZSBlbmQsIGFyZSBhIHdhc3RlIG9mIHRpbWUuDQo+IA0K
PiBQYXRjaCBzdWJtaXR0ZXIsIHBsZWFzZSBpZ25vcmUgTWFya3VzJ3Mgc3VnZ2VzdGlvbjsgeW91
IGRvIG5vdCBuZWVkIHRvIGZvbGxvdyBpdA0KPiBhdCBhbGwuICBUaGUgcGVyc29uL2JvdC9BSSB0
aGF0IHNlbnQgaXQgaXMgYmVpbmcgaWdub3JlZCBieSBhbG1vc3QgYWxsIExpbnV4IGtlcm5lbA0K
PiBtYWludGFpbmVycyBmb3IgaGF2aW5nIGEgcGVyc2lzdGVudCBwYXR0ZXJuIG9mIGJlaGF2aW9y
IG9mIHByb2R1Y2luZyBkaXN0cmFjdGluZw0KPiBhbmQgcG9pbnRsZXNzIGNvbW1lbnRhcnksIGFu
ZCBpbmFiaWxpdHkgdG8gYWRhcHQgdG8gZmVlZGJhY2suICBQbGVhc2UgZmVlbCBmcmVlIHRvDQo+
IGFsc28gaWdub3JlIGVtYWlscyBmcm9tIHRoZW0uDQo+IA0KPiB0aGFua3MsDQo+IA0KPiBncmVn
IGstaCdzIHBhdGNoIGVtYWlsIGJvdA0KDQoNClRlc3RlZC1ieTogUmFmYWwgUm9tYW5vd3NraSA8
cmFmYWwucm9tYW5vd3NraUBpbnRlbC5jb20+DQoNCg0KDQo=
